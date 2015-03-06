/*
* generated by Xtext
*/
grammar InternalSpec;

options {
	superClass=AbstractInternalAntlrParser;
	
}

@lexer::header {
package io.getgauge.parser.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.parser.antlr.Lexer;
}

@parser::header {
package io.getgauge.parser.antlr.internal; 

import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.parser.antlr.AbstractInternalAntlrParser;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.parser.antlr.AntlrDatatypeRuleToken;
import io.getgauge.services.SpecGrammarAccess;

}

@parser::members {

 	private SpecGrammarAccess grammarAccess;
 	
    public InternalSpecParser(TokenStream input, SpecGrammarAccess grammarAccess) {
        this(input);
        this.grammarAccess = grammarAccess;
        registerRules(grammarAccess.getGrammar());
    }
    
    @Override
    protected String getFirstRuleName() {
    	return "Model";	
   	}
   	
   	@Override
   	protected SpecGrammarAccess getGrammarAccess() {
   		return grammarAccess;
   	}
}

@rulecatch { 
    catch (RecognitionException re) { 
        recover(input,re); 
        appendSkippedTokens();
    } 
}




// Entry rule entryRuleModel
entryRuleModel returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getModelRule()); }
	 iv_ruleModel=ruleModel 
	 { $current=$iv_ruleModel.current; } 
	 EOF 
;

// Rule Model
ruleModel returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(
(
		{ 
	        newCompositeNode(grammarAccess.getModelAccess().getDefinitionsAbstractEntityParserRuleCall_0()); 
	    }
		lv_definitions_0_0=ruleAbstractEntity		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getModelRule());
	        }
       		add(
       			$current, 
       			"definitions",
        		lv_definitions_0_0, 
        		"AbstractEntity");
	        afterParserOrEnumRuleCall();
	    }

)
)*
;





// Entry rule entryRuleAbstractEntity
entryRuleAbstractEntity returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getAbstractEntityRule()); }
	 iv_ruleAbstractEntity=ruleAbstractEntity 
	 { $current=$iv_ruleAbstractEntity.current; } 
	 EOF 
;

// Rule AbstractEntity
ruleAbstractEntity returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(
    { 
        newCompositeNode(grammarAccess.getAbstractEntityAccess().getSpecParserRuleCall_0()); 
    }
    this_Spec_0=ruleSpec
    { 
        $current = $this_Spec_0.current; 
        afterParserOrEnumRuleCall();
    }

    |
    { 
        newCompositeNode(grammarAccess.getAbstractEntityAccess().getScenarioParserRuleCall_1()); 
    }
    this_Scenario_1=ruleScenario
    { 
        $current = $this_Scenario_1.current; 
        afterParserOrEnumRuleCall();
    }

    |
    { 
        newCompositeNode(grammarAccess.getAbstractEntityAccess().getStepParserRuleCall_2()); 
    }
    this_Step_2=ruleStep
    { 
        $current = $this_Step_2.current; 
        afterParserOrEnumRuleCall();
    }

    |
    { 
        newCompositeNode(grammarAccess.getAbstractEntityAccess().getCommentParserRuleCall_3()); 
    }
    this_Comment_3=ruleComment
    { 
        $current = $this_Comment_3.current; 
        afterParserOrEnumRuleCall();
    }

    |
    { 
        newCompositeNode(grammarAccess.getAbstractEntityAccess().getBlankLineParserRuleCall_4()); 
    }
    this_BlankLine_4=ruleBlankLine
    { 
        $current = $this_BlankLine_4.current; 
        afterParserOrEnumRuleCall();
    }
)
;





// Entry rule entryRuleSpec
entryRuleSpec returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getSpecRule()); }
	 iv_ruleSpec=ruleSpec 
	 { $current=$iv_ruleSpec.current; } 
	 EOF 
;

// Rule Spec
ruleSpec returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(	otherlv_0='# ' 
    {
    	newLeafNode(otherlv_0, grammarAccess.getSpecAccess().getNumberSignSpaceKeyword_0());
    }
(
(
		lv_name_1_0=RULE_LINE_TEXT
		{
			newLeafNode(lv_name_1_0, grammarAccess.getSpecAccess().getNameLINE_TEXTTerminalRuleCall_1_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getSpecRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"name",
        		lv_name_1_0, 
        		"LINE_TEXT");
	    }

)
))
;





// Entry rule entryRuleScenario
entryRuleScenario returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getScenarioRule()); }
	 iv_ruleScenario=ruleScenario 
	 { $current=$iv_ruleScenario.current; } 
	 EOF 
;

// Rule Scenario
ruleScenario returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(	otherlv_0='## ' 
    {
    	newLeafNode(otherlv_0, grammarAccess.getScenarioAccess().getNumberSignNumberSignSpaceKeyword_0());
    }
(
(
		lv_name_1_0=RULE_LINE_TEXT
		{
			newLeafNode(lv_name_1_0, grammarAccess.getScenarioAccess().getNameLINE_TEXTTerminalRuleCall_1_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getScenarioRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"name",
        		lv_name_1_0, 
        		"LINE_TEXT");
	    }

)
))
;





// Entry rule entryRuleStep
entryRuleStep returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getStepRule()); }
	 iv_ruleStep=ruleStep 
	 { $current=$iv_ruleStep.current; } 
	 EOF 
;

// Rule Step
ruleStep returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(	otherlv_0='* ' 
    {
    	newLeafNode(otherlv_0, grammarAccess.getStepAccess().getAsteriskSpaceKeyword_0());
    }
(
(
		lv_name_1_0=RULE_LINE_TEXT
		{
			newLeafNode(lv_name_1_0, grammarAccess.getStepAccess().getNameLINE_TEXTTerminalRuleCall_1_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getStepRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"name",
        		lv_name_1_0, 
        		"LINE_TEXT");
	    }

)
))
;





// Entry rule entryRuleComment
entryRuleComment returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getCommentRule()); }
	 iv_ruleComment=ruleComment 
	 { $current=$iv_ruleComment.current; } 
	 EOF 
;

// Rule Comment
ruleComment returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(
(
		lv_text_0_0=RULE_LINE_TEXT
		{
			newLeafNode(lv_text_0_0, grammarAccess.getCommentAccess().getTextLINE_TEXTTerminalRuleCall_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getCommentRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"text",
        		lv_text_0_0, 
        		"LINE_TEXT");
	    }

)
)
;





// Entry rule entryRuleBlankLine
entryRuleBlankLine returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getBlankLineRule()); }
	 iv_ruleBlankLine=ruleBlankLine 
	 { $current=$iv_ruleBlankLine.current; } 
	 EOF 
;

// Rule BlankLine
ruleBlankLine returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(
(
(
		lv_text_0_1=RULE_SINGLE_NL
		{
			newLeafNode(lv_text_0_1, grammarAccess.getBlankLineAccess().getTextSINGLE_NLTerminalRuleCall_0_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getBlankLineRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"text",
        		lv_text_0_1, 
        		"SINGLE_NL");
	    }

    |		lv_text_0_2=RULE_MULTI_NL
		{
			newLeafNode(lv_text_0_2, grammarAccess.getBlankLineAccess().getTextMULTI_NLTerminalRuleCall_0_1()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getBlankLineRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"text",
        		lv_text_0_2, 
        		"MULTI_NL");
	    }

)

)
)
;





RULE_MULTI_NL : RULE_SINGLE_NL RULE_SINGLE_NL+;

RULE_SINGLE_NL : '\r'? '\n';

RULE_LINE_TEXT : ~(('#'|'*')) ( options {greedy=false;} : . )*RULE_SINGLE_NL;


