/*
 * generated by Xtext 2.9.1-SNAPSHOT
 */
package org.eclipse.xtext.example.homeautomation.ui

import org.eclipse.xtend.lib.annotations.FinalFieldsConstructor
import org.eclipse.xtext.example.homeautomation.ui.editor.RuleEngineEditorEx
import org.eclipse.xtext.ui.editor.XtextEditor

/**
 * Use this class to register components to be used within the Eclipse IDE.
 */
@FinalFieldsConstructor
class RuleEngineUiModule extends AbstractRuleEngineUiModule {
	
	override Class<? extends XtextEditor> bindXtextEditor() {
		RuleEngineEditorEx
	}
}
