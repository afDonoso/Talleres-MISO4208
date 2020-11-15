package edu.uniandes.tsdl.mutapk.detectors.xml;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.xml.parsers.ParserConfigurationException;

import org.xml.sax.SAXException;

import edu.uniandes.tsdl.mutapk.detectors.TextBasedDetector;
import edu.uniandes.tsdl.mutapk.helper.Helper;
import edu.uniandes.tsdl.mutapk.model.MutationType;
import edu.uniandes.tsdl.mutapk.model.location.MutationLocation;

public class InvalidActivityNameDetector extends TextBasedDetector {

	public InvalidActivityNameDetector() {
		this.type = MutationType.INVALID_ACTIVITY_PATH;
	}

	@Override
	public List<MutationLocation> analyzeApp(String rootPath) throws ParserConfigurationException, SAXException, IOException {
		List<MutationLocation> locations = new ArrayList<MutationLocation>();
		String path = rootPath + File.separator + Helper.MANIFEST;
		List<String> activityNames = Helper.getInstance().getActivities();

		// Read Source Code
		BufferedReader reader = new BufferedReader(new FileReader(
				new File(path)));
		String line = null;
		int startLine = 0;
		int startCol = 0;
		int endCol = 0;
		int lineNum = 0;
		boolean isActivityTag = false;
		int currentLine = 0;
		boolean found = false;
		while ((line = reader.readLine()) != null) {

			if (line.contains("<activity")) {
				startLine = currentLine;
				isActivityTag = true;
			}
			if (isActivityTag) {
				for(String name : activityNames){
					if(line.contains("android:name") && line.contains(name)){
						startCol = line.indexOf("\""+name)+1;
						endCol = startCol+name.length();
						lineNum = currentLine;
						found = true;
					}
				}
				if (line.contains(">")) {
					if(found){
						locations.add(MutationLocation.buildLocation(path, startLine, currentLine, startCol, endCol, lineNum, -1, this.getType()));
						found = false;
					}
					isActivityTag = false;
				}
			}

			currentLine++;
		}
		reader.close();

		return locations;
	}

}
