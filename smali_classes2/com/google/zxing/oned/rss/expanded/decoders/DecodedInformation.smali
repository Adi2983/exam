.class final Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;
.super Lcom/google/zxing/oned/rss/expanded/decoders/DecodedObject;
.source "DecodedInformation.java"


# instance fields
.field private final newString:Ljava/lang/String;

.field private final remaining:Z

.field private final remainingValue:I


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 5

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;
    move v1, p1

    .local v1, "newPosition":I
    move-object v2, p2

    .local v2, "newString":Ljava/lang/String;
    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedObject;-><init>(I)V

    .line 41
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;->newString:Ljava/lang/String;

    .line 42
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;->remaining:Z

    .line 43
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;->remainingValue:I

    .line 44
    return-void
.end method

.method constructor <init>(ILjava/lang/String;I)V
    .locals 6

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;
    move v1, p1

    .local v1, "newPosition":I
    move-object v2, p2

    .local v2, "newString":Ljava/lang/String;
    move v3, p3

    .local v3, "remainingValue":I
    move-object v4, v0

    move v5, v1

    invoke-direct {v4, v5}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedObject;-><init>(I)V

    .line 48
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;->remaining:Z

    .line 49
    move-object v4, v0

    move v5, v3

    iput v5, v4, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;->remainingValue:I

    .line 50
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;->newString:Ljava/lang/String;

    .line 51
    return-void
.end method


# virtual methods
.method getNewString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;->newString:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;
    return-object v0
.end method

.method getRemainingValue()I
    .locals 2

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;
    move-object v1, v0

    iget v1, v1, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;->remainingValue:I

    move v0, v1

    .end local v0    # "this":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;
    return v0
.end method

.method isRemaining()Z
    .locals 2

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;->remaining:Z

    move v0, v1

    .end local v0    # "this":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;
    return v0
.end method
