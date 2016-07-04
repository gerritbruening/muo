# Plan of action

* [ ] convert FFF markup to custom XML in a way that is applicable only to the muo case (see https://github.com/gerritbruening/TXSTEP#fff2xmlxml)
* [X] transform custom XML to TEI (see about [muo.xpl](#muoxpl))
* [ ] build a generic FFF parser (--> WUE)
* [ ] build a pipeline to transform the XML output of this parser to project specific XML and or TEI (--> WUE)

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

# muo.xpl
Pipeline for transformation from WF's custom XML to TEI to reduced TEI

1. run muo.xpl
2. add `xmlns="http://www.tei-c.org/ns/1.0"` to root element `<TEI>`
3. use OxGarage for conversion to docx