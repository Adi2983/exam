.class final Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;
.super Ljava/lang/Object;
.source "BlockParsedResult.java"


# instance fields
.field private final decodedInformation:Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;

.field private final finished:Z


# direct methods
.method constructor <init>(Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;Z)V
    .locals 5

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;
    move-object v1, p1

    .local v1, "information":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;
    move v2, p2

    .local v2, "finished":Z
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 43
    move-object v3, v0

    move v4, v2

    iput-boolean v4, v3, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;->finished:Z

    .line 44
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;->decodedInformation:Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;

    .line 45
    return-void
.end method

.method constructor <init>(Z)V
    .locals 5

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;
    move v1, p1

    .local v1, "finished":Z
    move-object v2, v0

    const/4 v3, 0x0

    move v4, v1

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;-><init>(Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;Z)V

    .line 40
    return-void
.end method


# virtual methods
.method getDecodedInformation()Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;
    .locals 2

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;->decodedInformation:Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;
    return-object v0
.end method

.method isFinished()Z
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;->finished:Z

    move v0, v1

    .end local v0    # "this":Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;
    return v0
.end method
