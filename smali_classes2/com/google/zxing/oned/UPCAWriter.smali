.class public final Lcom/google/zxing/oned/UPCAWriter;
.super Ljava/lang/Object;
.source "UPCAWriter.java"

# interfaces
.implements Lcom/google/zxing/Writer;


# instance fields
.field private final subWriter:Lcom/google/zxing/oned/EAN13Writer;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/UPCAWriter;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 34
    move-object v1, v0

    new-instance v2, Lcom/google/zxing/oned/EAN13Writer;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/google/zxing/oned/EAN13Writer;-><init>()V

    iput-object v2, v1, Lcom/google/zxing/oned/UPCAWriter;->subWriter:Lcom/google/zxing/oned/EAN13Writer;

    return-void
.end method

.method private static preencode(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "contents":Ljava/lang/String;
    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    move v1, v4

    .line 60
    .local v1, "length":I
    move v4, v1

    const/16 v5, 0xb

    if-ne v4, v5, :cond_3

    .line 62
    const/4 v4, 0x0

    move v2, v4

    .line 63
    .local v2, "sum":I
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    const/16 v5, 0xb

    if-ge v4, v5, :cond_1

    .line 64
    move v4, v2

    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x30

    add-int/lit8 v5, v5, -0x30

    move v6, v3

    const/4 v7, 0x2

    rem-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_0

    const/4 v6, 0x3

    :goto_1
    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    move v2, v4

    .line 63
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 64
    :cond_0
    const/4 v6, 0x1

    goto :goto_1

    .line 66
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x3e8

    move v6, v2

    rsub-int v5, v6, 0x3e8

    const/16 v6, 0xa

    rem-int/lit8 v5, v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 71
    .end local v2    # "sum":I
    .end local v3    # "i":I
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x30

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "contents":Ljava/lang/String;
    return-object v0

    .line 67
    .restart local v0    # "contents":Ljava/lang/String;
    :cond_3
    move v4, v1

    const/16 v5, 0xc

    if-eq v4, v5, :cond_2

    .line 68
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Requested contents should be 11 or 12 digits long, but got "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method


# virtual methods
.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Lcom/google/zxing/common/BitMatrix;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/UPCAWriter;
    move-object v1, p1

    .local v1, "contents":Ljava/lang/String;
    move-object v2, p2

    .local v2, "format":Lcom/google/zxing/BarcodeFormat;
    move v3, p3

    .local v3, "width":I
    move v4, p4

    .local v4, "height":I
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    move v9, v4

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/google/zxing/oned/UPCAWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Lcom/google/zxing/oned/UPCAWriter;
    return-object v0
.end method

.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/zxing/BarcodeFormat;",
            "II",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/EncodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/BitMatrix;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/UPCAWriter;
    move-object v1, p1

    .local v1, "contents":Ljava/lang/String;
    move-object v2, p2

    .local v2, "format":Lcom/google/zxing/BarcodeFormat;
    move/from16 v3, p3

    .local v3, "width":I
    move/from16 v4, p4

    .local v4, "height":I
    move-object/from16 v5, p5

    .local v5, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;*>;"
    move-object v6, v2

    sget-object v7, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    if-eq v6, v7, :cond_0

    .line 49
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Can only encode UPC-A, but got "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 51
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lcom/google/zxing/oned/UPCAWriter;->subWriter:Lcom/google/zxing/oned/EAN13Writer;

    move-object v7, v1

    invoke-static {v7}, Lcom/google/zxing/oned/UPCAWriter;->preencode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    move v9, v3

    move v10, v4

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Lcom/google/zxing/oned/EAN13Writer;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "this":Lcom/google/zxing/oned/UPCAWriter;
    return-object v0
.end method
