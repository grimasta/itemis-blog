/*
 * generated by Xtext 2.10.0
 */
package xtext.workshop.advanced.formatting.tests

import com.google.inject.Inject
import org.eclipse.xtext.junit4.InjectWith
import org.eclipse.xtext.junit4.XtextRunner
import org.eclipse.xtext.junit4.util.ParseHelper
import org.junit.Assert
import org.junit.Test
import org.junit.runner.RunWith
import xtext.workshop.advanced.formatting.table.Document

@RunWith(XtextRunner)
@InjectWith(TableInjectorProvider)
class TableParsingTest{

	@Inject
	ParseHelper<Document> parseHelper

	@Test 
	def void loadModel() {
		val result = parseHelper.parse('''
			Hello Xtext!
		''')
		Assert.assertNotNull(result)
	}

}
