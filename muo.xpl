<?xml version="1.0" encoding="UTF-8"?>
<p:declare-step xmlns:p="http://www.w3.org/ns/xproc"
  xmlns:c="http://www.w3.org/ns/xproc-step" version="1.0">
  <p:input port="source" primary="true"/>
  <p:output port="tei-print" primary="true"/>
  <p:output port="tei-version">
    <p:pipe port="result" step="tei-version"/>
  </p:output>
  
  <p:documentation>WF-XML to TEI-XML to reduced TEI-XML for
    docx-conversion in OxGarage</p:documentation>
  <p:xslt>
    <p:input port="stylesheet">
      <p:document href="wf2tei.xsl"/>
    </p:input>
    <p:input port="parameters">
      <p:empty/>
    </p:input>
  </p:xslt>
  <p:xslt>
    <p:input port="stylesheet">
      <p:document href="split-div.xsl"/>
    </p:input>
    <p:input port="parameters">
      <p:empty/>
    </p:input>
  </p:xslt>
  <p:xslt>
    <p:input port="stylesheet">
      <p:document href="remove-pseudodiv.xsl"/>
    </p:input>
    <p:input port="parameters">
      <p:empty/>
    </p:input>
  </p:xslt>
  <p:identity name="tei-version"/>
  <p:xslt>
    <p:input port="source">
      <p:pipe port="result" step="tei-version"/>
    </p:input>
    <p:input port="stylesheet">
      <p:document href="tei-reduce.xsl"/>
    </p:input>
    <p:input port="parameters">
      <p:empty/>
    </p:input>
  </p:xslt>
</p:declare-step>
