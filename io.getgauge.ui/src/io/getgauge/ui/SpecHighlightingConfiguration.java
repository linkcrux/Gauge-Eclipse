package io.getgauge.ui;

import org.eclipse.swt.SWT;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.xtext.ui.editor.syntaxcoloring.IHighlightingConfiguration;
import org.eclipse.xtext.ui.editor.syntaxcoloring.IHighlightingConfigurationAcceptor;
import org.eclipse.xtext.ui.editor.utils.TextStyle;

public class SpecHighlightingConfiguration implements IHighlightingConfiguration{

	public static final String SPEC = "Spec";
	public static final String SCENARIO = "Scenario";
	public static final String STEP = "Step";
	public static final String STATIC_PARAM = "StaticParam";
	public static final String DYNAMIC_PARAM = "DynamicParam";
	public static final String DEFAULT = "Default";

	@Override
	public void configure(IHighlightingConfigurationAcceptor acceptor) {
		acceptor.acceptDefaultHighlighting(SPEC, SPEC , getSpecStyle());
		acceptor.acceptDefaultHighlighting(SCENARIO, SCENARIO, getScenarioStyle());
		acceptor.acceptDefaultHighlighting(STEP, STEP , getStepStyle());
		acceptor.acceptDefaultHighlighting(STATIC_PARAM, STATIC_PARAM, getStaticParamStyle());
		acceptor.acceptDefaultHighlighting(DYNAMIC_PARAM, DYNAMIC_PARAM, getDynamicParamStyle());
		acceptor.acceptDefaultHighlighting(DEFAULT, DEFAULT , getDefaultStyle());
	}

	private TextStyle getStepStyle() {
		TextStyle textStyle = new TextStyle();
		textStyle.setColor(new RGB(0,0,255));
		return textStyle;
	}

	private TextStyle getScenarioStyle() {
		TextStyle textStyle = new TextStyle();
		textStyle.setColor(new RGB(255,0,0));
		textStyle.setStyle(SWT.BOLD);
		return textStyle;
	}

	private TextStyle getSpecStyle() {
		TextStyle textStyle = new TextStyle();
		textStyle.setColor(new RGB(0, 255, 0));
		textStyle.setStyle(SWT.BOLD);
		return textStyle;
	}

	private TextStyle getStaticParamStyle() {
		TextStyle textStyle = new TextStyle();
		textStyle.setColor(new RGB(0, 255, 0));
		textStyle.setStyle(SWT.ITALIC);
		return textStyle;
	}

	private TextStyle getDynamicParamStyle() {
		TextStyle textStyle = new TextStyle();
		textStyle.setColor(new RGB(255, 255, 0));
		textStyle.setStyle(SWT.ITALIC);
		return textStyle;
	}

	private TextStyle getDefaultStyle() {
		return new TextStyle();
	}
}
