.class public Ljavax/xml/bind/helpers/ValidationEventLocatorImpl;
.super Ljava/lang/Object;
.source "ValidationEventLocatorImpl.java"

# interfaces
.implements Ljavax/xml/bind/ValidationEventLocator;


# instance fields
.field private columnNumber:I

.field private lineNumber:I

.field private node:Lorg/w3c/dom/Node;

.field private object:Ljava/lang/Object;

.field private offset:I

.field private url:Ljava/net/URL;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/ValidationEventLocatorImpl;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 134
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavax/xml/bind/helpers/ValidationEventLocatorImpl;->url:Ljava/net/URL;

    .line 135
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Ljavax/xml/bind/helpers/ValidationEventLocatorImpl;->offset:I

    .line 136
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Ljavax/xml/bind/helpers/ValidationEventLocatorImpl;->lineNumber:I

    .line 137
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Ljavax/xml/bind/helpers/ValidationEventLocatorImpl;->columnNumber:I

    .line 138
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavax/xml/bind/helpers/ValidationEventLocatorImpl;->object:Ljava/lang/Object;

    .line 139
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavax/xml/bind/helpers/ValidationEventLocatorImpl;->node:Lorg/w3c/dom/Node;

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/ValidationEventLocatorImpl;
    move-object v1, p1

    .local v1, "_object":Ljava/lang/Object;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 134
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavax/xml/bind/helpers/ValidationEventLocatorImpl;->url:Ljava/net/URL;

    .line 135
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Ljavax/xml/bind/helpers/ValidationEventLocatorImpl;->offset:I

    .line 136
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Ljavax/xml/bind/helpers/ValidationEventLocatorImpl;->lineNumber:I

    .line 137
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Ljavax/xml/bind/helpers/ValidationEventLocatorImpl;->columnNumber:I

    .line 138
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavax/xml/bind/helpers/ValidationEventLocatorImpl;->object:Ljava/lang/Object;

    .line 139
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavax/xml/bind/helpers/ValidationEventLocatorImpl;->node:Lorg/w3c/dom/Node;

    .line 116
    move-object v2, v1

    if-nez v2, :cond_0

    .line 117
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string/jumbo v4, "Shared.MustNotBeNull"

    const-string/jumbo v5, "_object"

    invoke-static {v4, v5}, Ljavax/xml/bind/helpers/Messages;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 121
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavax/xml/bind/helpers/ValidationEventLocatorImpl;->object:Ljava/lang/Object;

    .line 122
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .locals 7

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/ValidationEventLocatorImpl;
    move-object v1, p1

    .local v1, "_node":Lorg/w3c/dom/Node;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 134
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavax/xml/bind/helpers/ValidationEventLocatorImpl;->url:Ljava/net/URL;

    .line 135
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Ljavax/xml/bind/helpers/ValidationEventLocatorImpl;->offset:I

    .line 136
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Ljavax/xml/bind/helpers/ValidationEventLocatorImpl;->lineNumber:I

    .line 137
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Ljavax/xml/bind/helpers/ValidationEventLocatorImpl;->columnNumber:I

    .line 138
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavax/xml/bind/helpers/ValidationEventLocatorImpl;->object:Ljava/lang/Object;

    .line 139
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavax/xml/bind/helpers/ValidationEventLocatorImpl;->node:Lorg/w3c/dom/Node;

    .line 97
    move-object v2, v1

    if-nez v2, :cond_0

    .line 98
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string/jumbo v4, "Shared.MustNotBeNull"

    const-string/jumbo v5, "_node"

    invoke-static {v4, v5}, Ljavax/xml/bind/helpers/Messages;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 102
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavax/xml/bind/helpers/ValidationEventLocatorImpl;->node:Lorg/w3c/dom/Node;

    .line 103
    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/Locator;)V
    .locals 7

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/ValidationEventLocatorImpl;
    move-object v1, p1

    .local v1, "loc":Lorg/xml/sax/Locator;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 134
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavax/xml/bind/helpers/ValidationEventLocatorImpl;->url:Ljava/net/URL;

    .line 135
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Ljavax/xml/bind/helpers/ValidationEventLocatorImpl;->offset:I

    .line 136
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Ljavax/xml/bind/helpers/ValidationEventLocatorImpl;->lineNumber:I

    .line 137
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Ljavax/xml/bind/helpers/ValidationEventLocatorImpl;->columnNumber:I

    .line 138
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavax/xml/bind/helpers/ValidationEventLocatorImpl;->object:Ljava/lang/Object;

    .line 139
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavax/xml/bind/helpers/ValidationEventLocatorImpl;->node:Lorg/w3c/dom/Node;

    .line 53
    move-object v2, v1

    if-nez v2, :cond_0

    .line 54
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string/jumbo v4, "Shared.MustNotBeNull"

    const-string/jumbo v5, "loc"

    invoke-static {v4, v5}, Ljavax/xml/bind/helpers/Messages;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 58
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lorg/xml/sax/Locator;->getSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljavax/xml/bind/helpers/ValidationEventLocatorImpl;->toURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3

    iput-object v3, v2, Ljavax/xml/bind/helpers/ValidationEventLocatorImpl;->url:Ljava/net/URL;

    .line 59
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lorg/xml/sax/Locator;->getColumnNumber()I

    move-result v3

    iput v3, v2, Ljavax/xml/bind/helpers/ValidationEventLocatorImpl;->columnNumber:I

    .line 60
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lorg/xml/sax/Locator;->getLineNumber()I

    move-result v3

    iput v3, v2, Ljavax/xml/bind/helpers/ValidationEventLocatorImpl;->lineNumber:I

    .line 61
    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/SAXParseException;)V
    .locals 7

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/ValidationEventLocatorImpl;
    move-object v1, p1

    .local v1, "e":Lorg/xml/sax/SAXParseException;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 134
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavax/xml/bind/helpers/ValidationEventLocatorImpl;->url:Ljava/net/URL;

    .line 135
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Ljavax/xml/bind/helpers/ValidationEventLocatorImpl;->offset:I

    .line 136
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Ljavax/xml/bind/helpers/ValidationEventLocatorImpl;->lineNumber:I

    .line 137
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Ljavax/xml/bind/helpers/ValidationEventLocatorImpl;->columnNumber:I

    .line 138
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavax/xml/bind/helpers/ValidationEventLocatorImpl;->object:Ljava/lang/Object;

    .line 139
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavax/xml/bind/helpers/ValidationEventLocatorImpl;->node:Lorg/w3c/dom/Node;

    .line 76
    move-object v2, v1

    if-nez v2, :cond_0

    .line 77
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string/jumbo v4, "Shared.MustNotBeNull"

    const-string/jumbo v5, "e"

    invoke-static {v4, v5}, Ljavax/xml/bind/helpers/Messages;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 81
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lorg/xml/sax/SAXParseException;->getSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljavax/xml/bind/helpers/ValidationEventLocatorImpl;->toURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3

    iput-object v3, v2, Ljavax/xml/bind/helpers/ValidationEventLocatorImpl;->url:Ljava/net/URL;

    .line 82
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lorg/xml/sax/SAXParseException;->getColumnNumber()I

    move-result v3

    iput v3, v2, Ljavax/xml/bind/helpers/ValidationEventLocatorImpl;->columnNumber:I

    .line 83
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lorg/xml/sax/SAXParseException;->getLineNumber()I

    move-result v3

    iput v3, v2, Ljavax/xml/bind/helpers/ValidationEventLocatorImpl;->lineNumber:I

    .line 84
    return-void
.end method

.method private static toURL(Ljava/lang/String;)Ljava/net/URL;
    .locals 6

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "systemId":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/net/URL;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 130
    .end local v0    # "systemId":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 128
    .restart local v0    # "systemId":Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 130
    .local v1, "e":Ljava/net/MalformedURLException;
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method


# virtual methods
.method public getColumnNumber()I
    .locals 2

    .prologue
    .line 194
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/ValidationEventLocatorImpl;
    move-object v1, v0

    iget v1, v1, Ljavax/xml/bind/helpers/ValidationEventLocatorImpl;->columnNumber:I

    move v0, v1

    .end local v0    # "this":Ljavax/xml/bind/helpers/ValidationEventLocatorImpl;
    return v0
.end method

.method public getLineNumber()I
    .locals 2

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/ValidationEventLocatorImpl;
    move-object v1, v0

    iget v1, v1, Ljavax/xml/bind/helpers/ValidationEventLocatorImpl;->lineNumber:I

    move v0, v1

    .end local v0    # "this":Ljavax/xml/bind/helpers/ValidationEventLocatorImpl;
    return v0
.end method

.method public getNode()Lorg/w3c/dom/Node;
    .locals 2

    .prologue
    .line 226
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/ValidationEventLocatorImpl;
    move-object v1, v0

    iget-object v1, v1, Ljavax/xml/bind/helpers/ValidationEventLocatorImpl;->node:Lorg/w3c/dom/Node;

    move-object v0, v1

    .end local v0    # "this":Ljavax/xml/bind/helpers/ValidationEventLocatorImpl;
    return-object v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 210
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/ValidationEventLocatorImpl;
    move-object v1, v0

    iget-object v1, v1, Ljavax/xml/bind/helpers/ValidationEventLocatorImpl;->object:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Ljavax/xml/bind/helpers/ValidationEventLocatorImpl;
    return-object v0
.end method

.method public getOffset()I
    .locals 2

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/ValidationEventLocatorImpl;
    move-object v1, v0

    iget v1, v1, Ljavax/xml/bind/helpers/ValidationEventLocatorImpl;->offset:I

    move v0, v1

    .end local v0    # "this":Ljavax/xml/bind/helpers/ValidationEventLocatorImpl;
    return v0
.end method

.method public getURL()Ljava/net/URL;
    .locals 2

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/ValidationEventLocatorImpl;
    move-object v1, v0

    iget-object v1, v1, Ljavax/xml/bind/helpers/ValidationEventLocatorImpl;->url:Ljava/net/URL;

    move-object v0, v1

    .end local v0    # "this":Ljavax/xml/bind/helpers/ValidationEventLocatorImpl;
    return-object v0
.end method

.method public setColumnNumber(I)V
    .locals 4

    .prologue
    .line 203
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/ValidationEventLocatorImpl;
    move v1, p1

    .local v1, "_columnNumber":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Ljavax/xml/bind/helpers/ValidationEventLocatorImpl;->columnNumber:I

    .line 204
    return-void
.end method

.method public setLineNumber(I)V
    .locals 4

    .prologue
    .line 187
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/ValidationEventLocatorImpl;
    move v1, p1

    .local v1, "_lineNumber":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Ljavax/xml/bind/helpers/ValidationEventLocatorImpl;->lineNumber:I

    .line 188
    return-void
.end method

.method public setNode(Lorg/w3c/dom/Node;)V
    .locals 4

    .prologue
    .line 235
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/ValidationEventLocatorImpl;
    move-object v1, p1

    .local v1, "_node":Lorg/w3c/dom/Node;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavax/xml/bind/helpers/ValidationEventLocatorImpl;->node:Lorg/w3c/dom/Node;

    .line 236
    return-void
.end method

.method public setObject(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 219
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/ValidationEventLocatorImpl;
    move-object v1, p1

    .local v1, "_object":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavax/xml/bind/helpers/ValidationEventLocatorImpl;->object:Ljava/lang/Object;

    .line 220
    return-void
.end method

.method public setOffset(I)V
    .locals 4

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/ValidationEventLocatorImpl;
    move v1, p1

    .local v1, "_offset":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Ljavax/xml/bind/helpers/ValidationEventLocatorImpl;->offset:I

    .line 172
    return-void
.end method

.method public setURL(Ljava/net/URL;)V
    .locals 4

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/ValidationEventLocatorImpl;
    move-object v1, p1

    .local v1, "_url":Ljava/net/URL;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavax/xml/bind/helpers/ValidationEventLocatorImpl;->url:Ljava/net/URL;

    .line 156
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 245
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/ValidationEventLocatorImpl;
    const-string/jumbo v1, "[node={0},object={1},url={2},line={3},col={4},offset={5}]"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    move-object v5, v0

    invoke-virtual {v5}, Ljavax/xml/bind/helpers/ValidationEventLocatorImpl;->getNode()Lorg/w3c/dom/Node;

    move-result-object v5

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x1

    move-object v5, v0

    invoke-virtual {v5}, Ljavax/xml/bind/helpers/ValidationEventLocatorImpl;->getObject()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x2

    move-object v5, v0

    invoke-virtual {v5}, Ljavax/xml/bind/helpers/ValidationEventLocatorImpl;->getURL()Ljava/net/URL;

    move-result-object v5

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x3

    move-object v5, v0

    invoke-virtual {v5}, Ljavax/xml/bind/helpers/ValidationEventLocatorImpl;->getLineNumber()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x4

    move-object v5, v0

    invoke-virtual {v5}, Ljavax/xml/bind/helpers/ValidationEventLocatorImpl;->getColumnNumber()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x5

    move-object v5, v0

    invoke-virtual {v5}, Ljavax/xml/bind/helpers/ValidationEventLocatorImpl;->getOffset()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavax/xml/bind/helpers/ValidationEventLocatorImpl;
    return-object v0
.end method
