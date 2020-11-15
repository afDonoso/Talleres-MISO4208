package edu.uniandes.tsdl.mutapk.operators.gui.android;

import java.io.BufferedWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.antlr.runtime.tree.CommonTree;

import edu.uniandes.tsdl.mutapk.helper.ASTHelper;
import edu.uniandes.tsdl.mutapk.helper.FileHelper;
import edu.uniandes.tsdl.mutapk.helper.Helper;
import edu.uniandes.tsdl.mutapk.helper.HexadecimalGenerator;
import edu.uniandes.tsdl.mutapk.model.location.ASTMutationLocation;
import edu.uniandes.tsdl.mutapk.model.location.MutationLocation;
import edu.uniandes.tsdl.mutapk.operators.MutationOperator;
import edu.uniandes.tsdl.antlr.smaliParser;

public class InvalidIDFindView implements MutationOperator {

	@Override
	public boolean performMutation(MutationLocation location, BufferedWriter writer, int mutantIndex) throws IOException {

		ASTMutationLocation mLocation = (ASTMutationLocation) location;
		CommonTree parent = (CommonTree) mLocation.getTree().getParent();
		boolean isParam = false;
		String constVarName = "";
		int linee = -1;
		CommonTree uncle = ASTHelper.getFirstBackUncleNamedOfType(smaliParser.I_STATEMENT_FORMAT31i, "const", mLocation.getTree());
		if (uncle == null) {
			uncle = ASTHelper.getFirstBackUncleNamedOfType(smaliParser.I_STATEMENT_FORMAT21ih, "const/high16", mLocation.getTree());
			if (uncle == null && parent.getChild(1).getChild(1).getText().startsWith("p")) {
				isParam=true;
				constVarName = parent.getChild(1).getChild(1).getText();
				linee = parent.getLine();
			}
		}

		if (uncle != null && !isParam) {
			constVarName = uncle.getChild(1).getText();
			linee = uncle.getLine();
		} else if (uncle == null) {
			constVarName = parent.getChild(1).getChild(1).getText(); 
			linee = parent.getLine();
		}


		List<String> newLines = new ArrayList<String>();
		List<String> lines = FileHelper.readLines(location.getFilePath());

		//Add lines before the MutationLocation
		for(int i=0; i < linee-1; i++){
			newLines.add(lines.get(i));
		}

		//Apply mutation
		newLines.add("");
		newLines.add("    const "+constVarName+", 0x"+HexadecimalGenerator.generateRandomHexa());
		newLines.add("");
		if(isParam) {
			newLines.add(lines.get(linee-1));
		}

		for(int i=linee; i < lines.size() ; i++){
			newLines.add(lines.get(i));
		}

		FileHelper.writeLines(location.getFilePath(), newLines);
		Helper.mutationSuccess(mutantIndex);
		Helper.writeBasicLogInfo(mutantIndex, location.getFilePath(), location.getType().getName(), new int[] {linee}, writer);
		writer.write("	For mutant "+mutantIndex+" the id of the element retrieved at line "+location.getStartLine()+" has been set to a random value");
		writer.newLine();
		writer.flush();
		return true;
	}
}
