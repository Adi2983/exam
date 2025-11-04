.class public Lorg/apache/xerces/xni/parser/XMLParseException;
.super Lorg/apache/xerces/xni/XNIException;


# static fields
.field static final serialVersionUID:J = 0x180cb55b161e8a4fL


# instance fields
.field protected fBaseSystemId:Ljava/lang/String;

.field protected fCharacterOffset:I

.field protected fColumnNumber:I

.field protected fExpandedSystemId:Ljava/lang/String;

.field protected fLineNumber:I

.field protected fLiteralSystemId:Ljava/lang/String;

.field protected fPublicId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/xerces/xni/XMLLocator;Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Lorg/apache/xerces/xni/XNIException;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Lorg/apache/xerces/xni/parser/XMLParseException;->fLineNumber:I

    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Lorg/apache/xerces/xni/parser/XMLParseException;->fColumnNumber:I

    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Lorg/apache/xerces/xni/parser/XMLParseException;->fCharacterOffset:I

    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v0

    move-object v4, v1

    invoke-interface {v4}, Lorg/apache/xerces/xni/XMLLocator;->getPublicId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lorg/apache/xerces/xni/parser/XMLParseException;->fPublicId:Ljava/lang/String;

    move-object v3, v0

    move-object v4, v1

    invoke-interface {v4}, Lorg/apache/xerces/xni/XMLLocator;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lorg/apache/xerces/xni/parser/XMLParseException;->fLiteralSystemId:Ljava/lang/String;

    move-object v3, v0

    move-object v4, v1

    invoke-interface {v4}, Lorg/apache/xerces/xni/XMLLocator;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lorg/apache/xerces/xni/parser/XMLParseException;->fExpandedSystemId:Ljava/lang/String;

    move-object v3, v0

    move-object v4, v1

    invoke-interface {v4}, Lorg/apache/xerces/xni/XMLLocator;->getBaseSystemId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lorg/apache/xerces/xni/parser/XMLParseException;->fBaseSystemId:Ljava/lang/String;

    move-object v3, v0

    move-object v4, v1

    invoke-interface {v4}, Lorg/apache/xerces/xni/XMLLocator;->getLineNumber()I

    move-result v4

    iput v4, v3, Lorg/apache/xerces/xni/parser/XMLParseException;->fLineNumber:I

    move-object v3, v0

    move-object v4, v1

    invoke-interface {v4}, Lorg/apache/xerces/xni/XMLLocator;->getColumnNumber()I

    move-result v4

    iput v4, v3, Lorg/apache/xerces/xni/parser/XMLParseException;->fColumnNumber:I

    move-object v3, v0

    move-object v4, v1

    invoke-interface {v4}, Lorg/apache/xerces/xni/XMLLocator;->getCharacterOffset()I

    move-result v4

    iput v4, v3, Lorg/apache/xerces/xni/parser/XMLParseException;->fCharacterOffset:I

    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/xni/XMLLocator;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-direct {v4, v5, v6}, Lorg/apache/xerces/xni/XNIException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    move-object v4, v0

    const/4 v5, -0x1

    iput v5, v4, Lorg/apache/xerces/xni/parser/XMLParseException;->fLineNumber:I

    move-object v4, v0

    const/4 v5, -0x1

    iput v5, v4, Lorg/apache/xerces/xni/parser/XMLParseException;->fColumnNumber:I

    move-object v4, v0

    const/4 v5, -0x1

    iput v5, v4, Lorg/apache/xerces/xni/parser/XMLParseException;->fCharacterOffset:I

    move-object v4, v1

    if-eqz v4, :cond_0

    move-object v4, v0

    move-object v5, v1

    invoke-interface {v5}, Lorg/apache/xerces/xni/XMLLocator;->getPublicId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lorg/apache/xerces/xni/parser/XMLParseException;->fPublicId:Ljava/lang/String;

    move-object v4, v0

    move-object v5, v1

    invoke-interface {v5}, Lorg/apache/xerces/xni/XMLLocator;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lorg/apache/xerces/xni/parser/XMLParseException;->fLiteralSystemId:Ljava/lang/String;

    move-object v4, v0

    move-object v5, v1

    invoke-interface {v5}, Lorg/apache/xerces/xni/XMLLocator;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lorg/apache/xerces/xni/parser/XMLParseException;->fExpandedSystemId:Ljava/lang/String;

    move-object v4, v0

    move-object v5, v1

    invoke-interface {v5}, Lorg/apache/xerces/xni/XMLLocator;->getBaseSystemId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lorg/apache/xerces/xni/parser/XMLParseException;->fBaseSystemId:Ljava/lang/String;

    move-object v4, v0

    move-object v5, v1

    invoke-interface {v5}, Lorg/apache/xerces/xni/XMLLocator;->getLineNumber()I

    move-result v5

    iput v5, v4, Lorg/apache/xerces/xni/parser/XMLParseException;->fLineNumber:I

    move-object v4, v0

    move-object v5, v1

    invoke-interface {v5}, Lorg/apache/xerces/xni/XMLLocator;->getColumnNumber()I

    move-result v5

    iput v5, v4, Lorg/apache/xerces/xni/parser/XMLParseException;->fColumnNumber:I

    move-object v4, v0

    move-object v5, v1

    invoke-interface {v5}, Lorg/apache/xerces/xni/XMLLocator;->getCharacterOffset()I

    move-result v5

    iput v5, v4, Lorg/apache/xerces/xni/parser/XMLParseException;->fCharacterOffset:I

    :cond_0
    return-void
.end method


# virtual methods
.method public getBaseSystemId()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/xni/parser/XMLParseException;->fBaseSystemId:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getCharacterOffset()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/xni/parser/XMLParseException;->fCharacterOffset:I

    move v0, v1

    return v0
.end method

.method public getColumnNumber()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/xni/parser/XMLParseException;->fColumnNumber:I

    move v0, v1

    return v0
.end method

.method public getExpandedSystemId()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/xni/parser/XMLParseException;->fExpandedSystemId:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getLineNumber()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/xni/parser/XMLParseException;->fLineNumber:I

    move v0, v1

    return v0
.end method

.method public getLiteralSystemId()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/xni/parser/XMLParseException;->fLiteralSystemId:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/xni/parser/XMLParseException;->fPublicId:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    move-object v0, p0

    new-instance v4, Ljava/lang/StringBuffer;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    move-object v1, v4

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/xni/parser/XMLParseException;->fPublicId:Ljava/lang/String;

    if-eqz v4, :cond_0

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/xni/parser/XMLParseException;->fPublicId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    :cond_0
    move-object v4, v1

    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/xni/parser/XMLParseException;->fLiteralSystemId:Ljava/lang/String;

    if-eqz v4, :cond_1

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/xni/parser/XMLParseException;->fLiteralSystemId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    :cond_1
    move-object v4, v1

    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/xni/parser/XMLParseException;->fExpandedSystemId:Ljava/lang/String;

    if-eqz v4, :cond_2

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/xni/parser/XMLParseException;->fExpandedSystemId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    :cond_2
    move-object v4, v1

    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/xni/parser/XMLParseException;->fBaseSystemId:Ljava/lang/String;

    if-eqz v4, :cond_3

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/xni/parser/XMLParseException;->fBaseSystemId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    :cond_3
    move-object v4, v1

    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    move-object v4, v1

    move-object v5, v0

    iget v5, v5, Lorg/apache/xerces/xni/parser/XMLParseException;->fLineNumber:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    move-object v4, v1

    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    move-object v4, v1

    move-object v5, v0

    iget v5, v5, Lorg/apache/xerces/xni/parser/XMLParseException;->fColumnNumber:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    move-object v4, v1

    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    move-object v4, v1

    move-object v5, v0

    iget v5, v5, Lorg/apache/xerces/xni/parser/XMLParseException;->fCharacterOffset:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    move-object v4, v1

    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/xerces/xni/parser/XMLParseException;->getMessage()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    move-object v4, v2

    if-nez v4, :cond_4

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/xerces/xni/parser/XMLParseException;->getException()Ljava/lang/Exception;

    move-result-object v4

    move-object v3, v4

    move-object v4, v3

    if-eqz v4, :cond_4

    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    :cond_4
    move-object v4, v2

    if-eqz v4, :cond_5

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    :cond_5
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method
