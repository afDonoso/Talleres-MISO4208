package edu.uniandes.tsdl.mutapk.operators.data.general;

import java.io.BufferedWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.antlr.runtime.tree.CommonTree;

import edu.uniandes.tsdl.mutapk.helper.ASTHelper;
import edu.uniandes.tsdl.mutapk.helper.FileHelper;
import edu.uniandes.tsdl.mutapk.helper.Helper;
import edu.uniandes.tsdl.mutapk.model.location.ASTMutationLocation;
import edu.uniandes.tsdl.mutapk.model.location.MutationLocation;
import edu.uniandes.tsdl.mutapk.operators.MutationOperator;
import edu.uniandes.tsdl.antlr.smaliParser;

public class NullBackEndServiceReturn implements MutationOperator {

	@Override
	public boolean performMutation(MutationLocation location, BufferedWriter writer, int mutantIndex) throws IOException {

		ASTMutationLocation mLocation = (ASTMutationLocation) location;
		CommonTree tree = mLocation.getTree();
		List<String> newLines = new ArrayList<String>();
		List<String> lines = FileHelper.readLines(location.getFilePath());
		
		if(tree.getType()==smaliParser.I_STATEMENT_FORMAT35c_METHOD) {
			performMutationParam(tree, location, newLines, lines);
		} else {
			performMutationVariable(tree, location, newLines, lines);
		}
		
		Helper.mutationSuccess(mutantIndex);
		Helper.writeBasicLogInfo(mutantIndex, location.getFilePath(), location.getType().getName(), new int[] {mLocation.getLine()}, writer);
		writer.write("	For mutant "+mutantIndex+" HttpResponse object has been set to null");
		writer.newLine();
		writer.flush();
		return true;
	}

	private void performMutationVariable(CommonTree tree, MutationLocation location, List<String> newLines, List<String> lines) throws IOException {
		
		String varName = tree.getChild(0).toString();
		
		for(int i=0; i < tree.getParent().getChild(tree.getChildIndex()-1).getLine(); i++){
			newLines.add(lines.get(i));
		}
		
//		//Apply mutation
		newLines.add("    const/4 "+varName+", 0x0");
		newLines.add("");
		
		for(int i=tree.getLine()-1; i < lines.size() ; i++){
			newLines.add(lines.get(i));
		}
		FileHelper.writeLines(location.getFilePath(), newLines);
	}

	private void performMutationParam(CommonTree tree, MutationLocation location, List<String> newLines, List<String> lines) throws IOException {
		
		CommonTree brother = ASTHelper.getFirstBrotherNamedOfType(smaliParser.I_STATEMENT_FORMAT11x, "move-result-object", tree);
		String varName = brother.getChild(1).toString();
		
		
		for(int i=0; i < brother.getLine(); i++){
			newLines.add(lines.get(i));
		}
		
//		//Apply mutation
		newLines.add("");
		newLines.add("    const/4 "+varName+", 0x0");
		
		for(int i=brother.getLine(); i < lines.size() ; i++){
			newLines.add(lines.get(i));
		}
		FileHelper.writeLines(location.getFilePath(), newLines);
		
	}

}
