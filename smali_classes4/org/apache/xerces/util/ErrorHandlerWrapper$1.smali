.class Lorg/apache/xerces/util/ErrorHandlerWrapper$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/xerces/xni/XMLLocator;


# instance fields
.field private final val$fColumnNumber:I

.field private final val$fExpandedSystemId:Ljava/lang/String;

.field private final val$fLineNumber:I

.field private final val$fPublicId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lorg/apache/xerces/util/ErrorHandlerWrapper$1;->val$fPublicId:Ljava/lang/String;

    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lorg/apache/xerces/util/ErrorHandlerWrapper$1;->val$fExpandedSystemId:Ljava/lang/String;

    move-object v5, v0

    move v6, v3

    iput v6, v5, Lorg/apache/xerces/util/ErrorHandlerWrapper$1;->val$fColumnNumber:I

    move-object v5, v0

    move v6, v4

    iput v6, v5, Lorg/apache/xerces/util/ErrorHandlerWrapper$1;->val$fLineNumber:I

    return-void
.end method


# virtual methods
.method public getBaseSystemId()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    const/4 v1, 0x0

    move-object v0, v1

    return-object v0
.end method

.method public getCharacterOffset()I
    .locals 2

    move-object v0, p0

    const/4 v1, -0x1

    move v0, v1

    return v0
.end method

.method public getColumnNumber()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/util/ErrorHandlerWrapper$1;->val$fColumnNumber:I

    move v0, v1

    return v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    const/4 v1, 0x0

    move-object v0, v1

    return-object v0
.end method

.method public getExpandedSystemId()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/util/ErrorHandlerWrapper$1;->val$fExpandedSystemId:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getLineNumber()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/util/ErrorHandlerWrapper$1;->val$fLineNumber:I

    move v0, v1

    return v0
.end method

.method public getLiteralSystemId()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    const/4 v1, 0x0

    move-object v0, v1

    return-object v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/util/ErrorHandlerWrapper$1;->val$fPublicId:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getXMLVersion()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    const/4 v1, 0x0

    move-object v0, v1

    return-object v0
.end method
