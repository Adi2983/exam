.class public Lorg/apache/xerces/parsers/XMLDocumentParser;
.super Lorg/apache/xerces/parsers/AbstractXMLDocumentParser;


# direct methods
.method public constructor <init>()V
    .locals 4

    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "org.apache.xerces.xni.parser.XMLParserConfiguration"

    const-string/jumbo v3, "org.apache.xerces.parsers.XIncludeAwareParserConfiguration"

    invoke-static {v2, v3}, Lorg/apache/xerces/parsers/ObjectFactory;->createObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-direct {v1, v2}, Lorg/apache/xerces/parsers/AbstractXMLDocumentParser;-><init>(Lorg/apache/xerces/xni/parser/XMLParserConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/util/SymbolTable;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "org.apache.xerces.xni.parser.XMLParserConfiguration"

    const-string/jumbo v4, "org.apache.xerces.parsers.XIncludeAwareParserConfiguration"

    invoke-static {v3, v4}, Lorg/apache/xerces/parsers/ObjectFactory;->createObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-direct {v2, v3}, Lorg/apache/xerces/parsers/AbstractXMLDocumentParser;-><init>(Lorg/apache/xerces/xni/parser/XMLParserConfiguration;)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XMLDocumentParser;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v3, "http://apache.org/xml/properties/internal/symbol-table"

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    const-string/jumbo v4, "org.apache.xerces.xni.parser.XMLParserConfiguration"

    const-string/jumbo v5, "org.apache.xerces.parsers.XIncludeAwareParserConfiguration"

    invoke-static {v4, v5}, Lorg/apache/xerces/parsers/ObjectFactory;->createObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-direct {v3, v4}, Lorg/apache/xerces/parsers/AbstractXMLDocumentParser;-><init>(Lorg/apache/xerces/xni/parser/XMLParserConfiguration;)V

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XMLDocumentParser;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v4, "http://apache.org/xml/properties/internal/symbol-table"

    move-object v5, v1

    invoke-interface {v3, v4, v5}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XMLDocumentParser;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v4, "http://apache.org/xml/properties/internal/grammar-pool"

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/xni/parser/XMLParserConfiguration;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lorg/apache/xerces/parsers/AbstractXMLDocumentParser;-><init>(Lorg/apache/xerces/xni/parser/XMLParserConfiguration;)V

    return-void
.end method
