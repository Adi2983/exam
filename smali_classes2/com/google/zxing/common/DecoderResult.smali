.class public final Lcom/google/zxing/common/DecoderResult;
.super Ljava/lang/Object;
.source "DecoderResult.java"


# instance fields
.field private final byteSegments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field private final ecLevel:Ljava/lang/String;

.field private final rawBytes:[B

.field private final text:Ljava/lang/String;


# direct methods
.method public constructor <init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<[B>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/common/DecoderResult;
    move-object v1, p1

    .local v1, "rawBytes":[B
    move-object v2, p2

    .local v2, "text":Ljava/lang/String;
    move-object v3, p3

    .local v3, "byteSegments":Ljava/util/List;, "Ljava/util/List<[B>;"
    move-object v4, p4

    .local v4, "ecLevel":Ljava/lang/String;
    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 39
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/google/zxing/common/DecoderResult;->rawBytes:[B

    .line 40
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lcom/google/zxing/common/DecoderResult;->text:Ljava/lang/String;

    .line 41
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lcom/google/zxing/common/DecoderResult;->byteSegments:Ljava/util/List;

    .line 42
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lcom/google/zxing/common/DecoderResult;->ecLevel:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public getByteSegments()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/common/DecoderResult;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/common/DecoderResult;->byteSegments:Ljava/util/List;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/common/DecoderResult;
    return-object v0
.end method

.method public getECLevel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/common/DecoderResult;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/common/DecoderResult;->ecLevel:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/common/DecoderResult;
    return-object v0
.end method

.method public getRawBytes()[B
    .locals 2

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/common/DecoderResult;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/common/DecoderResult;->rawBytes:[B

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/common/DecoderResult;
    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/common/DecoderResult;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/common/DecoderResult;->text:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/common/DecoderResult;
    return-object v0
.end method
