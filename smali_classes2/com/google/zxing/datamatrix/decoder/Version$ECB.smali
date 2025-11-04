.class final Lcom/google/zxing/datamatrix/decoder/Version$ECB;
.super Ljava/lang/Object;
.source "Version.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/datamatrix/decoder/Version;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ECB"
.end annotation


# instance fields
.field private final count:I

.field private final dataCodewords:I


# direct methods
.method private constructor <init>(II)V
    .locals 5

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/datamatrix/decoder/Version$ECB;
    move v1, p1

    .local v1, "count":I
    move v2, p2

    .local v2, "dataCodewords":I
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 151
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/google/zxing/datamatrix/decoder/Version$ECB;->count:I

    .line 152
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/google/zxing/datamatrix/decoder/Version$ECB;->dataCodewords:I

    .line 153
    return-void
.end method

.method synthetic constructor <init>(IILcom/google/zxing/datamatrix/decoder/Version$1;)V
    .locals 7

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/datamatrix/decoder/Version$ECB;
    move v1, p1

    .local v1, "x0":I
    move v2, p2

    .local v2, "x1":I
    move-object v3, p3

    .local v3, "x2":Lcom/google/zxing/datamatrix/decoder/Version$1;
    move-object v4, v0

    move v5, v1

    move v6, v2

    invoke-direct {v4, v5, v6}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(II)V

    return-void
.end method


# virtual methods
.method getCount()I
    .locals 2

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/datamatrix/decoder/Version$ECB;
    move-object v1, v0

    iget v1, v1, Lcom/google/zxing/datamatrix/decoder/Version$ECB;->count:I

    move v0, v1

    .end local v0    # "this":Lcom/google/zxing/datamatrix/decoder/Version$ECB;
    return v0
.end method

.method getDataCodewords()I
    .locals 2

    .prologue
    .line 160
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/datamatrix/decoder/Version$ECB;
    move-object v1, v0

    iget v1, v1, Lcom/google/zxing/datamatrix/decoder/Version$ECB;->dataCodewords:I

    move v0, v1

    .end local v0    # "this":Lcom/google/zxing/datamatrix/decoder/Version$ECB;
    return v0
.end method
