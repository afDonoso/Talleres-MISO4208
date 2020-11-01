package edu.uniandes.tsdl.mutapk.helper;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

import org.antlr.runtime.CommonTokenStream;
import org.antlr.runtime.RecognitionException;
import org.antlr.runtime.TokenSource;
import org.antlr.runtime.tree.CommonTree;

import edu.uniandes.tsdl.smali.LexerErrorInterface;
import edu.uniandes.tsdl.antlr.smaliParser;
import edu.uniandes.tsdl.jflex.smaliFlexLexer;
import edu.uniandes.tsdl.mutapk.detectors.code.visitors.APICallVO;
import edu.uniandes.tsdl.mutapk.detectors.code.visitors.TreeVisitorInstance;
import edu.uniandes.tsdl.mutapk.model.CallGraphNode;
import edu.uniandes.tsdl.mutapk.model.MutationType;
import edu.uniandes.tsdl.mutapk.model.SmaliAST;
import edu.uniandes.tsdl.mutapk.model.location.ASTMutationLocation;
import edu.uniandes.tsdl.mutapk.model.location.MutationLocation;
import edu.uniandes.tsdl.mutapk.operators.OperatorBundle;

public class ASTHelper {

	public static CommonTree getAST(String sourcePath) throws UnsupportedEncodingException, FileNotFoundException, RecognitionException {

		FileInputStream fis = null;
		File smaliFile = new File(sourcePath);
		CommonTree t = null;
		fis = new FileInputStream(smaliFile);
		InputStreamReader reader = new InputStreamReader(fis, "UTF-8");

		LexerErrorInterface lexer = new smaliFlexLexer(reader);
		((smaliFlexLexer) lexer).setSourceFile(smaliFile);
		// System.out.println(((smaliFlexLexer)lexer).nextToken().getText());
		CommonTokenStream tokens = new CommonTokenStream((TokenSource) lexer);
		tokens.getTokens();
		smaliParser parser = new smaliParser(tokens);
		// parser.setVerboseErrors(options.verboseErrors);
		// parser.setAllowOdex(options.allowOdexOpcodes);
		// parser.setApiLevel(options.apiLevel);

		smaliParser.smali_file_return result = parser.smali_file();
		t = result.getTree();
		return t;
	}

	public static CommonTree getFirstUncleNamedOfType(int type, String name, CommonTree t) {
		CommonTree parent = (CommonTree) t.getParent();
		List<CommonTree> uncles = (List<CommonTree>) ((CommonTree) parent.getParent()).getChildren();
		for (int i = parent.getChildIndex() + 1; i < uncles.size(); i++) {
			CommonTree tempUncle = (CommonTree) uncles.get(i);
			if (tempUncle.getType() == type && tempUncle.getChild(0).toStringTree().equals(name)) {
				return tempUncle;
			}
		}
		return null;
	}

	public static CommonTree getFirstBackUncleNamedOfType(int type, String name, CommonTree t) {
		CommonTree parent = (CommonTree) t.getParent();
		List<CommonTree> uncles = (List<CommonTree>) ((CommonTree) parent.getParent()).getChildren();
		for (int i = parent.getChildIndex(); i > -1; i--) {
			CommonTree tempUncle = (CommonTree) uncles.get(i);
			if (tempUncle.getType() == type && tempUncle.getChild(0).toStringTree().equals(name)) {
				return tempUncle;
			}
		}
		return null;
	}

	public static CommonTree getFirstBrotherNamedOfType(int type, String name, CommonTree t) {
		CommonTree parent = (CommonTree) t.getParent();
		List<CommonTree> brothers = (List<CommonTree>) parent.getChildren();
		for (int i = t.getChildIndex() + 1; i < brothers.size(); i++) {
			CommonTree tempBrother = (CommonTree) brothers.get(i);
			if (tempBrother.getType() == type && tempBrother.getChild(0).toStringTree().equals(name)) {
				return tempBrother;
			}
		}
		return null;
	}

	public static CommonTree hasIPutAndIGet(CommonTree t) {
		CommonTree iput = getFirstUncleNamedOfType(smaliParser.I_STATEMENT_FORMAT22c_FIELD, "iput-object", t);
		if (iput != null && iput.getLine() - t.getLine() < 7) {
			List<CommonTree> cousins = (List<CommonTree>) iput.getChildren();
			String varName = cousins.get(4).toStringTree();
			CommonTree iget = getFirstBrotherNamedOfType(smaliParser.I_STATEMENT_FORMAT22c_FIELD, "iget-object", iput);
			while (iget != null) {
				List<CommonTree> cousinss = (List<CommonTree>) iget.getChildren();
				if (cousinss.get(4).toStringTree().equals(varName)) {
					return iget;
				} else {
					iget = getFirstBrotherNamedOfType(smaliParser.I_STATEMENT_FORMAT22c_FIELD, "iget-object", iget);
				}
			}
		}
		return null;
	}

	public static int[] isValidLocation(CommonTree t) {

		if (t.getType() == smaliParser.I_STATEMENT_FORMAT35c_METHOD) {
			ArrayList<Integer> resp = new ArrayList<Integer>();
			if (t.getFirstChildWithType(smaliParser.I_REGISTER_LIST).getChildCount() == 3
					&& t.getFirstChildWithType(smaliParser.CLASS_DESCRIPTOR).toString()
							.equals("Landroid/content/Intent;")
					&& t.getFirstChildWithType(smaliParser.SIMPLE_NAME).toString().equals("<init>")) {
				resp.add(2);
				resp.add(6);
			} else if (t.getChild(2).toStringTree().equals("Ljava/io/File;") && t.getChild(4).getChild(1) != null
					&& t.getChild(4).getChild(1).toStringTree().equals("Ljava/lang/String;")) {
				resp.add(32);
			} else if (t.getChild(2).toStringTree().equals("Ljava/net/URI;")
					&& t.getChild(3).toStringTree().equals("<init>")) {
				resp.add(17);
			} else if (t.getChild(1).getChildCount() > 1 && t.getChild(2).toStringTree().equals("Ljava/util/Date;")
					&& t.getChild(3).toStringTree().equals("<init>")) {
				resp.add(19);
			} else if (t.getChild(2).toStringTree().equals("Landroid/bluetooth/BluetoothAdapter;")
					&& t.getChild(3).toStringTree().equals("getDefaultAdapter") && t.getChild(4).getChild(0).getChild(0)
							.toStringTree().equals("Landroid/bluetooth/BluetoothAdapter;")) {
				resp.add(16);
			} else if (t.getChild(2).toStringTree().equals("Lorg/apache/http/params/HttpConnectionParams;")
					&& t.getChild(3).toStringTree().equals("setConnectionTimeout")) {
				resp.add(14);
			} else if (isNullBackendServiceReturn(t)) {
				resp.add(20);
			} else if (t.getChild(2).toStringTree().equals("Landroid/graphics/Bitmap;")
					&& t.getChild(3).toStringTree().equals("createScaledBitmap")) {
				resp.add(35);
			} else if (t.getChild(2).toStringTree().equals("Landroid/database/sqlite/SQLiteDatabase;")
					&& t.getChild(3).toStringTree().equals("rawQuery")) {
				resp.add(24);
				resp.add(25);
			} else if (t.getChild(2).toStringTree().equals("Landroid/database/Cursor;")
					&& t.getChild(3).toStringTree().equals("close")) {
				resp.add(23);
			} else if (isNullInputStream(t)) {
				resp.add(33);
			} else if (isNullOutputStream(t)) {
				resp.add(37);
			}

			if (t.getChild(1).getChildCount() > 1) {
				resp.add(22);
			}

			if (resp.size() > 0) {
				int[] ret = new int[resp.size()];
				for (int i = 0; i < ret.length; i++) {
					ret[i] = resp.get(i).intValue();
				}
				return ret;
			}

		} else if (t.getType() == 191) {
			if (t.getText().equals("putExtra")) { // InvalidKeyIntentPutExtra && NullValueIntentPutExtra
				return new int[] { 4, 7 };
			} else if (t.getText().equals("findViewById")) {
				ArrayList<Integer> resp = new ArrayList<Integer>();
				resp.add(27);
				resp.add(31);
				if (hasIPutAndIGet(t) != null) {
					resp.add(26);
					resp.add(29);
				}
				int[] ret = new int[resp.size()];
				for (int i = 0; i < ret.length; i++) {
					ret[i] = resp.get(i).intValue();
				}
				return ret;
			}
		} else if (t.getType() == 161) {
			if (t.getChild(2).toStringTree().equals("Landroid/bluetooth/BluetoothAdapter;")
					&& t.getChild(3).toStringTree().equals("isEnabled")
					&& getFirstBrotherNamedOfType(smaliParser.I_STATEMENT_FORMAT21t, "if-eqz", t) != null
					&& getFirstBrotherNamedOfType(smaliParser.I_STATEMENT_FORMAT21t, "if-eqz", t)
							.getLine() < (t.getLine() + 5)) {
				return new int[] { 15 };
			}
		} else if (t.getType() == smaliParser.I_LOCAL) {
			if (t.getChild(2).toString().equals("Landroid/location/Location;")) {
				return new int[] { 18 };
			} else if (t.getChild(2).toString().equals("Lorg/apache/http/HttpResponse;")) {
				return new int[] { 13, 20 };
			}
		} else if (t.getType() == smaliParser.I_METHOD) {
			if (isOnCreateMethod(t)) {
				return new int[] { 38 };
			} else if (isOnClickMethod(t)) {
				return new int[] { 36 };
			}
		}

		return new int[] { -1 };
	}

	private static boolean isNullOutputStream(CommonTree t) {
		String apis = "#Ljava/io/OutputStream;" + "#Ljava/io/ByteArrayOutputStream;" + "#Ljava/io/FileOutputStream;"
				+ "#Ljava/io/FilterOutputStream;" + "#Ljava/io/ObjectOutputStream;" + "#Ljava/io/PipedOutputStream;"
				+ "#Ljava/io/BufferedOutputStream;" + "#Ljava/io/PrintStream;" + "#Ljava/io/DataOutputStream;";
		if (apis.contains(t.getChild(2).toStringTree()) && t.getChild(3).toStringTree().equals("close")) {
			return true;
		}
		return false;
	}

	private static boolean isNullInputStream(CommonTree t) {
		String apis = "#Ljava/nio/channels/FileChannel;" + "#Ljava/io/InputStream;" + "#Ljava/io/BufferedInputStream;"
				+ "#Ljava/io/ByteArrayInputStream;" + "#Ljava/io/DataInputStream;" + "#Ljava/io/FilterInputStream;"
				+ "#Ljava/io/ObjectInputStream;" + "#Ljava/io/PipedInputStream;" + "#Ljava/io/SequenceInputStream;"
				+ "#Ljava/io/StringBufferInputStream;";
		if (apis.contains("#" + t.getChild(2).toStringTree() + "#") && t.getChild(3).toStringTree().equals("close")) {
			return true;
		}
		return false;
	}

	private static boolean isNullBackendServiceReturn(CommonTree t) {
		CommonTree tree = (CommonTree) t.getFirstChildWithType(smaliParser.I_METHOD_PROTOTYPE);
		CommonTree treee = (CommonTree) tree.getFirstChildWithType(smaliParser.I_METHOD_RETURN_TYPE);
		String classs = treee.getChild(0).toString();
		return classs.equals("Lorg/apache/http/HttpResponse;");
	}

	private static boolean isOnCreateMethod(CommonTree t) {
		boolean resp = t.getChild(0).toString().equals("onCreate");
		if (resp) {
			CommonTree mProt = (CommonTree) t.getFirstChildWithType(smaliParser.I_METHOD_PROTOTYPE);
			resp = (mProt.getChildCount() == 2);
			if (resp) {
				resp = mProt.getChild(1).toString().equals("Landroid/os/Bundle;");
			}
		}
		return resp;
	}

	private static boolean isOnClickMethod(CommonTree t) {
		boolean resp = t.getChild(0).toString().equals("onClick");
		if (resp) {
			CommonTree mProt = (CommonTree) t.getFirstChildWithType(smaliParser.I_METHOD_PROTOTYPE);
			resp = (mProt.getChildCount() == 2);
			if (resp) {
				resp = mProt.getChild(1).toString().equals("Landroid/view/View;");
			}
		}
		return resp;
	}
	

	public static HashMap<MutationType, List<MutationLocation>> findLocations(SmaliAST smaliAST, OperatorBundle operatorBundle) {
		
		HashMap<MutationType, List<MutationLocation>> mutationLocations = new HashMap<>();
		
		MutationLocation location= null;
		MutationType muType = null;
		
		String filePath = smaliAST.getFilePath();
		CommonTree cu = smaliAST.getAst();
		
		TreeVisitorInstance ttv = new TreeVisitorInstance();
		ttv.visit(cu, null);

		HashSet<APICallVO> calls = ttv.getCalls();

		Iterator<APICallVO> a = calls.iterator();
		while(a.hasNext()){
			APICallVO b = a.next();
			int[] c = b.getMuTypes();
			for (int i = 0; i < c.length; i++) {
				if(operatorBundle.isOperatorSelected(""+c[i])){
					muType = MutationType.valueOf(c[i]);
//					System.out.println(muType+" - "+b.getFilePath());
					if(muType.getId()==MutationType.NULL_METHOD_CALL_ARGUMENT.getId()) {
						CommonTree tree = b.getTree();
						int childs = tree.getChild(1).getChildCount();
						for (int j = 1; j < childs; j++) {
							location = ASTMutationLocation.buildLocation(filePath, b.getLine(), -1, j, -1, b.getLine(), -1, muType, tree);
							if(!mutationLocations.containsKey(muType)){
								mutationLocations.put(muType, new ArrayList<MutationLocation>());
							}
							mutationLocations.get(muType).add(location);
						}
					} else {
						location = ASTMutationLocation.buildLocation(filePath, b.getLine(), -1, -1, -1, b.getLine(), -1, muType, b.getTree());
						if(!mutationLocations.containsKey(muType)){
							mutationLocations.put(muType, new ArrayList<MutationLocation>());
						}
						mutationLocations.get(muType).add(location);
					}
				}
			}
		}
		
		return mutationLocations;
		
	}

	public static SmaliAST pruneAST(SmaliAST smaliASTNode, HashMap<String, CallGraphNode> deadCodeMethods) {
		
		CommonTree smaliAST = smaliASTNode.getAst();

		CommonTree methodsElem = (CommonTree) smaliAST.getFirstChildWithType(smaliParser.I_METHODS);
		List<CommonTree> methods = (List<CommonTree>) methodsElem.getChildren();
		if( methods != null ) {
			for (int i = methods.size()-1; i>=0; i--) {
				CommonTree t = methods.get(i);

				String methodName = t.getFirstChildWithType(smaliParser.SIMPLE_NAME).getText();

				CommonTree methodPrototype = (CommonTree) t.getFirstChildWithType(smaliParser.I_METHOD_PROTOTYPE);
				List<CommonTree> parameters = (List<CommonTree>) methodPrototype.getChildren();

				String returnType = methodPrototype.getFirstChildWithType(smaliParser.I_METHOD_RETURN_TYPE).getChild(0).getText();

				String params = "(";
				for (Iterator<CommonTree> iterator2 = parameters.iterator(); iterator2.hasNext();) {
					CommonTree commonTree = (CommonTree) iterator2.next();

					if (commonTree.getType() != smaliParser.I_METHOD_RETURN_TYPE) {
						params += commonTree.getText();
					}
				}
				params += ")";

				String methodID = methodName+params+returnType;
				
				if(deadCodeMethods.get(methodID)!=null) {
					methodsElem.deleteChild(t.getChildIndex());
				}
			}
		}
		smaliASTNode.setAst(smaliAST);
		return smaliASTNode;
	}

}
