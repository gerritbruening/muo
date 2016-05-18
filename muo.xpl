<?xml version="1.0" encoding="UTF-8"?>
<p:declare-step xmlns:p="http://www.w3.org/ns/xproc"
  xmlns:c="http://www.w3.org/ns/xproc-step" version="1.0">
  <p:input port="source" primary="true"/>
  <!--<p:output port="tei" primary="true"/>-->
  <p:output port="tei-print" primary="true"/>

  <p:documentation>WF-XML to TEI-XML to reduced TEI-XML for
    docx</p:documentation>
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
  <p:xslt>
    <p:input port="stylesheet">
      <p:document href="tei-reduce.xsl"/>
    </p:input>
    <p:input port="parameters">
      <p:empty/>
    </p:input>
  </p:xslt>
</p:declare-step>
