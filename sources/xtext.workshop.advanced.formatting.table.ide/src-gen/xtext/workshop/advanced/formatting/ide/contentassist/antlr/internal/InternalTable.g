/*
 * generated by Xtext 2.10.0
 */
grammar InternalTable;

options {
	superClass=AbstractInternalContentAssistParser;
}

@lexer::header {
package xtext.workshop.advanced.formatting.ide.contentassist.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.ide.editor.contentassist.antlr.internal.Lexer;
}

@parser::header {
package xtext.workshop.advanced.formatting.ide.contentassist.antlr.internal;

import java.io.InputStream;
import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.ide.editor.contentassist.antlr.internal.AbstractInternalContentAssistParser;
import org.eclipse.xtext.ide.editor.contentassist.antlr.internal.DFA;
import xtext.workshop.advanced.formatting.services.TableGrammarAccess;

}
@parser::members {
	private TableGrammarAccess grammarAccess;

	public void setGrammarAccess(TableGrammarAccess grammarAccess) {
		this.grammarAccess = grammarAccess;
	}

	@Override
	protected Grammar getGrammar() {
		return grammarAccess.getGrammar();
	}

	@Override
	protected String getValueForTokenName(String tokenName) {
		return tokenName;
	}
}

// Entry rule entryRuleDocument
entryRuleDocument
:
{ before(grammarAccess.getDocumentRule()); }
	 ruleDocument
{ after(grammarAccess.getDocumentRule()); } 
	 EOF 
;

// Rule Document
ruleDocument 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getDocumentAccess().getElementsAssignment()); }
		(rule__Document__ElementsAssignment)*
		{ after(grammarAccess.getDocumentAccess().getElementsAssignment()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleTable
entryRuleTable
:
{ before(grammarAccess.getTableRule()); }
	 ruleTable
{ after(grammarAccess.getTableRule()); } 
	 EOF 
;

// Rule Table
ruleTable 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getTableAccess().getGroup()); }
		(rule__Table__Group__0)
		{ after(grammarAccess.getTableAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleCaption
entryRuleCaption
:
{ before(grammarAccess.getCaptionRule()); }
	 ruleCaption
{ after(grammarAccess.getCaptionRule()); } 
	 EOF 
;

// Rule Caption
ruleCaption 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getCaptionAccess().getGroup()); }
		(rule__Caption__Group__0)
		{ after(grammarAccess.getCaptionAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleRow
entryRuleRow
:
{ before(grammarAccess.getRowRule()); }
	 ruleRow
{ after(grammarAccess.getRowRule()); } 
	 EOF 
;

// Rule Row
ruleRow 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getRowAccess().getGroup()); }
		(rule__Row__Group__0)
		{ after(grammarAccess.getRowAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleCell
entryRuleCell
:
{ before(grammarAccess.getCellRule()); }
	 ruleCell
{ after(grammarAccess.getCellRule()); } 
	 EOF 
;

// Rule Cell
ruleCell 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getCellAccess().getAlternatives()); }
		(rule__Cell__Alternatives)
		{ after(grammarAccess.getCellAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleHeaderCell
entryRuleHeaderCell
:
{ before(grammarAccess.getHeaderCellRule()); }
	 ruleHeaderCell
{ after(grammarAccess.getHeaderCellRule()); } 
	 EOF 
;

// Rule HeaderCell
ruleHeaderCell 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getHeaderCellAccess().getGroup()); }
		(rule__HeaderCell__Group__0)
		{ after(grammarAccess.getHeaderCellAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleDataCell
entryRuleDataCell
:
{ before(grammarAccess.getDataCellRule()); }
	 ruleDataCell
{ after(grammarAccess.getDataCellRule()); } 
	 EOF 
;

// Rule DataCell
ruleDataCell 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getDataCellAccess().getGroup()); }
		(rule__DataCell__Group__0)
		{ after(grammarAccess.getDataCellAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleLabel
entryRuleLabel
:
{ before(grammarAccess.getLabelRule()); }
	 ruleLabel
{ after(grammarAccess.getLabelRule()); } 
	 EOF 
;

// Rule Label
ruleLabel 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getLabelAccess().getAlternatives()); }
		(rule__Label__Alternatives)*
		{ after(grammarAccess.getLabelAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Cell__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getCellAccess().getHeaderCellParserRuleCall_0()); }
		ruleHeaderCell
		{ after(grammarAccess.getCellAccess().getHeaderCellParserRuleCall_0()); }
	)
	|
	(
		{ before(grammarAccess.getCellAccess().getDataCellParserRuleCall_1()); }
		ruleDataCell
		{ after(grammarAccess.getCellAccess().getDataCellParserRuleCall_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Label__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getLabelAccess().getIDTerminalRuleCall_0()); }
		RULE_ID
		{ after(grammarAccess.getLabelAccess().getIDTerminalRuleCall_0()); }
	)
	|
	(
		{ before(grammarAccess.getLabelAccess().getSTRINGTerminalRuleCall_1()); }
		RULE_STRING
		{ after(grammarAccess.getLabelAccess().getSTRINGTerminalRuleCall_1()); }
	)
	|
	(
		{ before(grammarAccess.getLabelAccess().getINTTerminalRuleCall_2()); }
		RULE_INT
		{ after(grammarAccess.getLabelAccess().getINTTerminalRuleCall_2()); }
	)
	|
	(
		{ before(grammarAccess.getLabelAccess().getWSTerminalRuleCall_3()); }
		RULE_WS
		{ after(grammarAccess.getLabelAccess().getWSTerminalRuleCall_3()); }
	)
	|
	(
		{ before(grammarAccess.getLabelAccess().getANY_OTHERTerminalRuleCall_4()); }
		RULE_ANY_OTHER
		{ after(grammarAccess.getLabelAccess().getANY_OTHERTerminalRuleCall_4()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Table__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Table__Group__0__Impl
	rule__Table__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Table__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTableAccess().getTableAction_0()); }
	()
	{ after(grammarAccess.getTableAccess().getTableAction_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Table__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Table__Group__1__Impl
	rule__Table__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Table__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTableAccess().getLeftCurlyBracketVerticalLineKeyword_1()); }
	'{|'
	{ after(grammarAccess.getTableAccess().getLeftCurlyBracketVerticalLineKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Table__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Table__Group__2__Impl
	rule__Table__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Table__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTableAccess().getCaptionAssignment_2()); }
	(rule__Table__CaptionAssignment_2)?
	{ after(grammarAccess.getTableAccess().getCaptionAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Table__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Table__Group__3__Impl
	rule__Table__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__Table__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTableAccess().getRowsAssignment_3()); }
	(rule__Table__RowsAssignment_3)*
	{ after(grammarAccess.getTableAccess().getRowsAssignment_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Table__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Table__Group__4__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Table__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTableAccess().getVerticalLineRightCurlyBracketKeyword_4()); }
	'|}'
	{ after(grammarAccess.getTableAccess().getVerticalLineRightCurlyBracketKeyword_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Caption__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Caption__Group__0__Impl
	rule__Caption__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Caption__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getCaptionAccess().getVerticalLinePlusSignKeyword_0()); }
	'|+'
	{ after(grammarAccess.getCaptionAccess().getVerticalLinePlusSignKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Caption__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Caption__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Caption__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getCaptionAccess().getLabelAssignment_1()); }
	(rule__Caption__LabelAssignment_1)
	{ after(grammarAccess.getCaptionAccess().getLabelAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Row__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Row__Group__0__Impl
	rule__Row__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Row__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRowAccess().getRowAction_0()); }
	()
	{ after(grammarAccess.getRowAccess().getRowAction_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Row__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Row__Group__1__Impl
	rule__Row__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Row__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRowAccess().getVerticalLineHyphenMinusKeyword_1()); }
	'|-'
	{ after(grammarAccess.getRowAccess().getVerticalLineHyphenMinusKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Row__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Row__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Row__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRowAccess().getCellsAssignment_2()); }
	(rule__Row__CellsAssignment_2)*
	{ after(grammarAccess.getRowAccess().getCellsAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__HeaderCell__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__HeaderCell__Group__0__Impl
	rule__HeaderCell__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__HeaderCell__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getHeaderCellAccess().getExclamationMarkKeyword_0()); }
	'!'
	{ after(grammarAccess.getHeaderCellAccess().getExclamationMarkKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__HeaderCell__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__HeaderCell__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__HeaderCell__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getHeaderCellAccess().getTextAssignment_1()); }
	(rule__HeaderCell__TextAssignment_1)
	{ after(grammarAccess.getHeaderCellAccess().getTextAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__DataCell__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__DataCell__Group__0__Impl
	rule__DataCell__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__DataCell__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDataCellAccess().getVerticalLineKeyword_0()); }
	'|'
	{ after(grammarAccess.getDataCellAccess().getVerticalLineKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__DataCell__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__DataCell__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__DataCell__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getDataCellAccess().getTextAssignment_1()); }
	(rule__DataCell__TextAssignment_1)
	{ after(grammarAccess.getDataCellAccess().getTextAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Document__ElementsAssignment
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getDocumentAccess().getElementsTableParserRuleCall_0()); }
		ruleTable
		{ after(grammarAccess.getDocumentAccess().getElementsTableParserRuleCall_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Table__CaptionAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getTableAccess().getCaptionCaptionParserRuleCall_2_0()); }
		ruleCaption
		{ after(grammarAccess.getTableAccess().getCaptionCaptionParserRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Table__RowsAssignment_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getTableAccess().getRowsRowParserRuleCall_3_0()); }
		ruleRow
		{ after(grammarAccess.getTableAccess().getRowsRowParserRuleCall_3_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Caption__LabelAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getCaptionAccess().getLabelLabelParserRuleCall_1_0()); }
		ruleLabel
		{ after(grammarAccess.getCaptionAccess().getLabelLabelParserRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Row__CellsAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getRowAccess().getCellsCellParserRuleCall_2_0()); }
		ruleCell
		{ after(grammarAccess.getRowAccess().getCellsCellParserRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__HeaderCell__TextAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getHeaderCellAccess().getTextLabelParserRuleCall_1_0()); }
		ruleLabel
		{ after(grammarAccess.getHeaderCellAccess().getTextLabelParserRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__DataCell__TextAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getDataCellAccess().getTextLabelParserRuleCall_1_0()); }
		ruleLabel
		{ after(grammarAccess.getDataCellAccess().getTextLabelParserRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' .|~(('\\'|'"')))* '"'|'\'' ('\\' .|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;
