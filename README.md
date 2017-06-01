# Plan of action

* [ ] convert FFF markup to TEI-XML
* [ ] transform ouput of the built-in oXygen conversion of docx (pseudo-TEI) to canonical TEI 

# FFF
For reports, see
* Karl Eibl et al., [Der junge Goethe in neuer Ausgabe, p. 77, note 16](https://books.google.de/books?id=l93oI-BtDeIC&lpg=PP1&hl=de&pg=PA77#v=onepage&q&f=false). (scripts not extant)
* [LII Working Document 94-4: MOVING HYPERTEXT DOCUMENTS FROM FOLIO VIEWS TO HTML -- THE PROMISE, SOME PROBLEMS, AND A BRIEF OUTLINE OF THE LII's PROCESS](https://www.law.cornell.edu/papers/lii/fffhtml.htm)

Possibilities / documentations:
* [SP. An SGML System Conforming to International Standard ISO 8879 -- Standard Generalized Markup Language](http://www.jclark.com/sp/). [SPAM](http://www.jclark.com/sp/spam.htm) may be useful, e.g. to add omitted end tags.
* another approach is s&r to creat empty tags and reconstruct hierarchy via xsl:for-each-group ([J. Cummings](https://listserv.brown.edu/archives/cgi-bin/wa?A2=TEI-L;8396b55d.1605))
* ask the enterprise for a possible documentation?
* https://github.com/imazen/folioxml/blob/master/indexing.txt
* from the same person: http://folio.wikidot.com/
* apply TUSTEP's `#kopiere` (= https://github.com/gerritbruening/TXSTEP/blob/master/fff2xml.xml)

# docx transformation to TEI
Current routine (to be refactored):
1. open docx file in oXygen
2. browse "word" and open `document.xml`
3. run built-in transformation scenario "DOCX TEI P5".
4. run [pseu2tei.xpl](https://github.com/gerritbruening/muo/blob/master/pseu2tei.xpl) 
5. run [raw2tei.xml](https://github.com/gerritbruening/TXSTEP/blob/master/raw2tei.xml) (this is basically a [`#kopiere`](https://tustep.wikispaces.com/TUSTEP+-+Kopieren) written in [TXSTEP](https://tustep.wikispaces.com/Kopieren+mit+TXSTEP) by which the `&lt;...&gt;` are transformed into `<...>` , i.e., XML tags. Additionally, some typos in the source data are emended.)
6. run [cust2tei.xpl](https://github.com/gerritbruening/muo/blob/master/cust2tei.xpl)

Note that the described routine was taylored to the output from http://www.tei-c.org/oxgarage/ which is different from the output of oXygen which seems to be preferable.

TODOs:
1. replace or refactor `pseu2tei.xpl` and suit it to oXygen output
2. replace, if at all possible, `raw2tei.xml` by an xsl and integrate it into `pseu2tei.xpl`
3. replace or refactor the xslts in `cust2tei.xpl` and integrate them into `pseu2tei.xpl`

# muo.xpl (deprecated)
Pipeline for transformation from WF's custom XML (deprecated) to TEI to reduced TEI

1. run muo.xpl
2. add `xmlns="http://www.tei-c.org/ns/1.0"` to root element `<TEI>`
3. use OxGarage for conversion to docx