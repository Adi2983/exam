.class public abstract Lorg/apache/xerces/parsers/XMLGrammarParser;
.super Lorg/apache/xerces/parsers/XMLParser;


# instance fields
.field protected fDatatypeValidatorFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;


# direct methods
.method protected constructor <init>(Lorg/apache/xerces/util/SymbolTable;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "org.apache.xerces.xni.parser.XMLParserConfiguration"

    const-string/jumbo v4, "org.apache.xerces.parsers.XIncludeAwareParserConfiguration"

    invoke-static {v3, v4}, Lorg/apache/xerces/parsers/ObjectFactory;->createObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-direct {v2, v3}, Lorg/apache/xerces/parsers/XMLParser;-><init>(Lorg/apache/xerces/xni/parser/XMLParserConfiguration;)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XMLGrammarParser;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v3, "http://apache.org/xml/properties/internal/symbol-table"

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
