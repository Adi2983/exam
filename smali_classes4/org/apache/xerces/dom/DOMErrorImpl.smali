.class public Lorg/apache/xerces/dom/DOMErrorImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/w3c/dom/DOMError;


# instance fields
.field public fException:Ljava/lang/Exception;

.field public fLocator:Lorg/apache/xerces/dom/DOMLocatorImpl;

.field public fMessage:Ljava/lang/String;

.field public fRelatedData:Ljava/lang/Object;

.field public fSeverity:S

.field public fType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 5

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    move-object v1, v0

    const/4 v2, 0x1

    iput-short v2, v1, Lorg/apache/xerces/dom/DOMErrorImpl;->fSeverity:S

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/dom/DOMErrorImpl;->fMessage:Ljava/lang/String;

    move-object v1, v0

    new-instance v2, Lorg/apache/xerces/dom/DOMLocatorImpl;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lorg/apache/xerces/dom/DOMLocatorImpl;-><init>()V

    iput-object v2, v1, Lorg/apache/xerces/dom/DOMErrorImpl;->fLocator:Lorg/apache/xerces/dom/DOMLocatorImpl;

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/dom/DOMErrorImpl;->fException:Ljava/lang/Exception;

    return-void
.end method

.method public constructor <init>(SLorg/apache/xerces/xni/parser/XMLParseException;)V
    .locals 7

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    const/4 v4, 0x1

    iput-short v4, v3, Lorg/apache/xerces/dom/DOMErrorImpl;->fSeverity:S

    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lorg/apache/xerces/dom/DOMErrorImpl;->fMessage:Ljava/lang/String;

    move-object v3, v0

    new-instance v4, Lorg/apache/xerces/dom/DOMLocatorImpl;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Lorg/apache/xerces/dom/DOMLocatorImpl;-><init>()V

    iput-object v4, v3, Lorg/apache/xerces/dom/DOMErrorImpl;->fLocator:Lorg/apache/xerces/dom/DOMLocatorImpl;

    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lorg/apache/xerces/dom/DOMErrorImpl;->fException:Ljava/lang/Exception;

    move-object v3, v0

    move v4, v1

    iput-short v4, v3, Lorg/apache/xerces/dom/DOMErrorImpl;->fSeverity:S

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lorg/apache/xerces/dom/DOMErrorImpl;->fException:Ljava/lang/Exception;

    move-object v3, v0

    move-object v4, v0

    move-object v5, v2

    invoke-direct {v4, v5}, Lorg/apache/xerces/dom/DOMErrorImpl;->createDOMLocator(Lorg/apache/xerces/xni/parser/XMLParseException;)Lorg/apache/xerces/dom/DOMLocatorImpl;

    move-result-object v4

    iput-object v4, v3, Lorg/apache/xerces/dom/DOMErrorImpl;->fLocator:Lorg/apache/xerces/dom/DOMLocatorImpl;

    return-void
.end method

.method private createDOMLocator(Lorg/apache/xerces/xni/parser/XMLParseException;)Lorg/apache/xerces/dom/DOMLocatorImpl;
    .locals 9

    move-object v0, p0

    move-object v1, p1

    new-instance v2, Lorg/apache/xerces/dom/DOMLocatorImpl;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v1

    invoke-virtual {v4}, Lorg/apache/xerces/xni/parser/XMLParseException;->getLineNumber()I

    move-result v4

    move-object v5, v1

    invoke-virtual {v5}, Lorg/apache/xerces/xni/parser/XMLParseException;->getColumnNumber()I

    move-result v5

    move-object v6, v1

    invoke-virtual {v6}, Lorg/apache/xerces/xni/parser/XMLParseException;->getCharacterOffset()I

    move-result v6

    move-object v7, v1

    invoke-virtual {v7}, Lorg/apache/xerces/xni/parser/XMLParseException;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/apache/xerces/dom/DOMLocatorImpl;-><init>(IIILjava/lang/String;)V

    move-object v0, v2

    return-object v0
.end method


# virtual methods
.method public getLocation()Lorg/w3c/dom/DOMLocator;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/DOMErrorImpl;->fLocator:Lorg/apache/xerces/dom/DOMLocatorImpl;

    move-object v0, v1

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/DOMErrorImpl;->fMessage:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getRelatedData()Ljava/lang/Object;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/DOMErrorImpl;->fRelatedData:Ljava/lang/Object;

    move-object v0, v1

    return-object v0
.end method

.method public getRelatedException()Ljava/lang/Object;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/DOMErrorImpl;->fException:Ljava/lang/Exception;

    move-object v0, v1

    return-object v0
.end method

.method public getSeverity()S
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-short v1, v1, Lorg/apache/xerces/dom/DOMErrorImpl;->fSeverity:S

    move v0, v1

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/DOMErrorImpl;->fType:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public reset()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    iput-short v2, v1, Lorg/apache/xerces/dom/DOMErrorImpl;->fSeverity:S

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/dom/DOMErrorImpl;->fException:Ljava/lang/Exception;

    return-void
.end method
