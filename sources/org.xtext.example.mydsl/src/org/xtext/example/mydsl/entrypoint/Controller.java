package org.xtext.example.mydsl.entrypoint;

import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.xtext.resource.XtextResource;
import org.eclipse.xtext.resource.XtextResourceSet;
import org.xtext.example.mydsl.MyDslStandaloneSetup;
import org.xtext.example.mydsl.myDsl.Greeting;
import org.xtext.example.mydsl.myDsl.Model;

import com.google.inject.Injector;

public class Controller {

	public static void main(String[] args) {
			String platformURI = "../../../../Work_Related/runtime-EclipseXtext/";
			XtextResourceSet resourceSet;		
			new org.eclipse.emf.mwe.utils.StandaloneSetup().setPlatformUri(platformURI);
			Injector injector = new MyDslStandaloneSetup().createInjectorAndDoEMFRegistration();
			resourceSet = injector.getInstance(XtextResourceSet.class);
			resourceSet.addLoadOption(XtextResource.OPTION_RESOLVE_ALL, Boolean.TRUE);
			Resource resource = resourceSet.getResource(URI.createURI("platform:/resource/mydsl.example/src/four.mydsl"), true);
		
			
		/**
		 * platformURI default value='../../runtime-EclipseApplication/'
		 * dslCodeURI default value='platform:/resource/qdsl.trial/src/example.rdsl'
		 * @param platformURI
		 * @param dslCodeURI
		 * @return Resource (from org.eclipse.xtext.resource.Resource
		 */

		Model model = (Model) resource.getContents().get(0);
		for(Greeting g : model.getGreetings()){
//			g.getImportURI();
			System.out.println(g.getName());
		}
	}
}
