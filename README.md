# Plan of action

1. determine FFF markup that is relevant for the printed edition

2. convert this markup to a more or less custom XML

3. transform custom XML to TEI

4. determine FFF markup that is relevant for online features

6. convert this markup to a more or less custom XML

# muo.xpl
Pipeline for transformation from WF's custom XML to TEI to reduced TEI

1. run muo.xpl
2. add `xmlns="http://www.tei-c.org/ns/1.0"` to root element `<TEI>`
3. use OxGarage for conversion to docx