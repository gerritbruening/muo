# Plan of action

1. determine FFF markup that is relevant for the printed edition

2. convert this markup to a more or less custom XML

3. transform custom XML to TEI (see about [muo.xpl](#muoxpl))

4. determine FFF markup that is relevant for online features

6. convert this markup to a more or less custom XML

7. same as (3)

# FFF
For reports, see
* Karl Eibl et al., [Der junge Goethe in neuer Ausgabe, p. 77, note 16](https://books.google.de/books?id=l93oI-BtDeIC&lpg=PP1&hl=de&pg=PA77#v=onepage&q&f=false).
* [LII Working Document 94-4: MOVING HYPERTEXT DOCUMENTS FROM FOLIO VIEWS TO HTML -- THE PROMISE, SOME PROBLEMS, AND A BRIEF OUTLINE OF THE LII's PROCESS](https://www.law.cornell.edu/papers/lii/fffhtml.htm)
Possible tools:
* [SP. An SGML System Conforming to International Standard ISO 8879 -- Standard Generalized Markup Language](http://www.jclark.com/sp/). [SPAM](http://www.jclark.com/sp/spam.htm) may be useful, e.g. to add omitted end tags.
* another approach is s&r to creat empty tags and reconstruct hierarchy via xsl:for-each-group ([J. Cummings](https://listserv.brown.edu/archives/cgi-bin/wa?A2=TEI-L;8396b55d.1605))

# muo.xpl
Pipeline for transformation from WF's custom XML to TEI to reduced TEI

1. run muo.xpl
2. add `xmlns="http://www.tei-c.org/ns/1.0"` to root element `<TEI>`
3. use OxGarage for conversion to docx