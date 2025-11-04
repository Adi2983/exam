.class final Lorg/apache/xerces/parsers/DOMParserImpl$AbortHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/xerces/xni/XMLDocumentHandler;
.implements Lorg/apache/xerces/xni/XMLDTDHandler;
.implements Lorg/apache/xerces/xni/XMLDTDContentModelHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/parsers/DOMParserImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AbortHandler"
.end annotation


# instance fields
.field private documentSource:Lorg/apache/xerces/xni/parser/XMLDocumentSource;

.field private dtdContentSource:Lorg/apache/xerces/xni/parser/XMLDTDContentModelSource;

.field private dtdSource:Lorg/apache/xerces/xni/parser/XMLDTDSource;


# direct methods
.method private constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lorg/apache/xerces/parsers/DOMParserImpl$1;)V
    .locals 3

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Lorg/apache/xerces/parsers/DOMParserImpl$AbortHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public any(Lorg/apache/xerces/xni/Augmentations;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    sget-object v2, Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;->INSTANCE:Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;

    throw v2
.end method

.method public attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    sget-object v9, Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;->INSTANCE:Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;

    throw v9
.end method

.method public characters(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    sget-object v3, Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;->INSTANCE:Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;

    throw v3
.end method

.method public comment(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    sget-object v3, Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;->INSTANCE:Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;

    throw v3
.end method

.method public doctypeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    sget-object v5, Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;->INSTANCE:Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;

    throw v5
.end method

.method public element(Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    sget-object v3, Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;->INSTANCE:Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;

    throw v3
.end method

.method public elementDecl(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    sget-object v4, Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;->INSTANCE:Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;

    throw v4
.end method

.method public empty(Lorg/apache/xerces/xni/Augmentations;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    sget-object v2, Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;->INSTANCE:Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;

    throw v2
.end method

.method public emptyElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    sget-object v4, Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;->INSTANCE:Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;

    throw v4
.end method

.method public endAttlist(Lorg/apache/xerces/xni/Augmentations;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    sget-object v2, Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;->INSTANCE:Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;

    throw v2
.end method

.method public endCDATA(Lorg/apache/xerces/xni/Augmentations;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    sget-object v2, Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;->INSTANCE:Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;

    throw v2
.end method

.method public endConditional(Lorg/apache/xerces/xni/Augmentations;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    sget-object v2, Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;->INSTANCE:Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;

    throw v2
.end method

.method public endContentModel(Lorg/apache/xerces/xni/Augmentations;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    sget-object v2, Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;->INSTANCE:Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;

    throw v2
.end method

.method public endDTD(Lorg/apache/xerces/xni/Augmentations;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    sget-object v2, Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;->INSTANCE:Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;

    throw v2
.end method

.method public endDocument(Lorg/apache/xerces/xni/Augmentations;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    sget-object v2, Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;->INSTANCE:Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;

    throw v2
.end method

.method public endElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    sget-object v3, Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;->INSTANCE:Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;

    throw v3
.end method

.method public endExternalSubset(Lorg/apache/xerces/xni/Augmentations;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    sget-object v2, Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;->INSTANCE:Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;

    throw v2
.end method

.method public endGeneralEntity(Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    sget-object v3, Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;->INSTANCE:Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;

    throw v3
.end method

.method public endGroup(Lorg/apache/xerces/xni/Augmentations;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    sget-object v2, Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;->INSTANCE:Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;

    throw v2
.end method

.method public endParameterEntity(Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    sget-object v3, Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;->INSTANCE:Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;

    throw v3
.end method

.method public externalEntityDecl(Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    sget-object v4, Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;->INSTANCE:Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;

    throw v4
.end method

.method public getDTDContentModelSource()Lorg/apache/xerces/xni/parser/XMLDTDContentModelSource;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/DOMParserImpl$AbortHandler;->dtdContentSource:Lorg/apache/xerces/xni/parser/XMLDTDContentModelSource;

    move-object v0, v1

    return-object v0
.end method

.method public getDTDSource()Lorg/apache/xerces/xni/parser/XMLDTDSource;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/DOMParserImpl$AbortHandler;->dtdSource:Lorg/apache/xerces/xni/parser/XMLDTDSource;

    move-object v0, v1

    return-object v0
.end method

.method public getDocumentSource()Lorg/apache/xerces/xni/parser/XMLDocumentSource;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/DOMParserImpl$AbortHandler;->documentSource:Lorg/apache/xerces/xni/parser/XMLDocumentSource;

    move-object v0, v1

    return-object v0
.end method

.method public ignorableWhitespace(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    sget-object v3, Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;->INSTANCE:Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;

    throw v3
.end method

.method public ignoredCharacters(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    sget-object v3, Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;->INSTANCE:Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;

    throw v3
.end method

.method public internalEntityDecl(Ljava/lang/String;Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    sget-object v5, Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;->INSTANCE:Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;

    throw v5
.end method

.method public notationDecl(Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    sget-object v4, Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;->INSTANCE:Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;

    throw v4
.end method

.method public occurrence(SLorg/apache/xerces/xni/Augmentations;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    sget-object v3, Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;->INSTANCE:Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;

    throw v3
.end method

.method public pcdata(Lorg/apache/xerces/xni/Augmentations;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    sget-object v2, Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;->INSTANCE:Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;

    throw v2
.end method

.method public processingInstruction(Ljava/lang/String;Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    sget-object v4, Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;->INSTANCE:Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;

    throw v4
.end method

.method public separator(SLorg/apache/xerces/xni/Augmentations;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    sget-object v3, Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;->INSTANCE:Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;

    throw v3
.end method

.method public setDTDContentModelSource(Lorg/apache/xerces/xni/parser/XMLDTDContentModelSource;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/parsers/DOMParserImpl$AbortHandler;->dtdContentSource:Lorg/apache/xerces/xni/parser/XMLDTDContentModelSource;

    return-void
.end method

.method public setDTDSource(Lorg/apache/xerces/xni/parser/XMLDTDSource;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/parsers/DOMParserImpl$AbortHandler;->dtdSource:Lorg/apache/xerces/xni/parser/XMLDTDSource;

    return-void
.end method

.method public setDocumentSource(Lorg/apache/xerces/xni/parser/XMLDocumentSource;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/parsers/DOMParserImpl$AbortHandler;->documentSource:Lorg/apache/xerces/xni/parser/XMLDocumentSource;

    return-void
.end method

.method public startAttlist(Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    sget-object v3, Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;->INSTANCE:Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;

    throw v3
.end method

.method public startCDATA(Lorg/apache/xerces/xni/Augmentations;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    sget-object v2, Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;->INSTANCE:Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;

    throw v2
.end method

.method public startConditional(SLorg/apache/xerces/xni/Augmentations;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    sget-object v3, Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;->INSTANCE:Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;

    throw v3
.end method

.method public startContentModel(Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    sget-object v3, Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;->INSTANCE:Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;

    throw v3
.end method

.method public startDTD(Lorg/apache/xerces/xni/XMLLocator;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    sget-object v3, Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;->INSTANCE:Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;

    throw v3
.end method

.method public startDocument(Lorg/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lorg/apache/xerces/xni/NamespaceContext;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    sget-object v5, Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;->INSTANCE:Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;

    throw v5
.end method

.method public startElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    sget-object v4, Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;->INSTANCE:Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;

    throw v4
.end method

.method public startExternalSubset(Lorg/apache/xerces/xni/XMLResourceIdentifier;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    sget-object v3, Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;->INSTANCE:Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;

    throw v3
.end method

.method public startGeneralEntity(Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    sget-object v5, Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;->INSTANCE:Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;

    throw v5
.end method

.method public startGroup(Lorg/apache/xerces/xni/Augmentations;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    sget-object v2, Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;->INSTANCE:Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;

    throw v2
.end method

.method public startParameterEntity(Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    sget-object v5, Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;->INSTANCE:Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;

    throw v5
.end method

.method public textDecl(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    sget-object v4, Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;->INSTANCE:Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;

    throw v4
.end method

.method public unparsedEntityDecl(Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    sget-object v5, Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;->INSTANCE:Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;

    throw v5
.end method

.method public xmlDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    sget-object v5, Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;->INSTANCE:Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;

    throw v5
.end method
