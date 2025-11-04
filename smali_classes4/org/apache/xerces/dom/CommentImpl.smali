.class public Lorg/apache/xerces/dom/CommentImpl;
.super Lorg/apache/xerces/dom/CharacterDataImpl;

# interfaces
.implements Lorg/w3c/dom/CharacterData;
.implements Lorg/w3c/dom/Comment;


# static fields
.field static final serialVersionUID:J = -0x2545a76b9b796b9cL


# direct methods
.method public constructor <init>(Lorg/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lorg/apache/xerces/dom/CharacterDataImpl;-><init>(Lorg/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getNodeName()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    const-string/jumbo v1, "#comment"

    move-object v0, v1

    return-object v0
.end method

.method public getNodeType()S
    .locals 2

    move-object v0, p0

    const/16 v1, 0x8

    move v0, v1

    return v0
.end method
