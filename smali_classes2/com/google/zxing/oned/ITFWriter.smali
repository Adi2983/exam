.class public final Lcom/google/zxing/oned/ITFWriter;
.super Lcom/google/zxing/oned/OneDimensionalCodeWriter;
.source "ITFWriter.java"


# static fields
.field private static final END_PATTERN:[I

.field private static final START_PATTERN:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/oned/ITFWriter;->START_PATTERN:[I

    .line 34
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/zxing/oned/ITFWriter;->END_PATTERN:[I

    return-void

    .line 33
    nop

    :array_0
    .array-data 4
        0x1
        0x1
        0x1
        0x1
    .end array-data

    .line 34
    :array_1
    .array-data 4
        0x3
        0x1
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/ITFWriter;
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;-><init>()V

    return-void
.end method


# virtual methods
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
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/ITFWriter;
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

    sget-object v7, Lcom/google/zxing/BarcodeFormat;->ITF:Lcom/google/zxing/BarcodeFormat;

    if-eq v6, v7, :cond_0

    .line 43
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Can only encode ITF, but got "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 46
    :cond_0
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move v9, v3

    move v10, v4

    move-object v11, v5

    invoke-super/range {v6 .. v11}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "this":Lcom/google/zxing/oned/ITFWriter;
    return-object v0
.end method

.method public encode(Ljava/lang/String;)[Z
    .locals 16

    .prologue
    .line 51
    move-object/from16 v0, p0

    .local v0, "this":Lcom/google/zxing/oned/ITFWriter;
    move-object/from16 v1, p1

    .local v1, "contents":Ljava/lang/String;
    move-object v10, v1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    move v2, v10

    .line 52
    .local v2, "length":I
    move v10, v2

    const/4 v11, 0x2

    rem-int/lit8 v10, v10, 0x2

    if-eqz v10, :cond_0

    .line 53
    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const-string/jumbo v12, "The lenght of the input should be even"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 55
    :cond_0
    move v10, v2

    const/16 v11, 0x50

    if-le v10, v11, :cond_1

    .line 56
    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    new-instance v12, Ljava/lang/StringBuilder;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Requested contents should be less than 80 digits long, but got "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move v13, v2

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 59
    :cond_1
    const/16 v10, 0x9

    const/16 v11, 0x9

    move v12, v2

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    new-array v10, v10, [Z

    move-object v3, v10

    .line 60
    .local v3, "result":[Z
    move-object v10, v3

    const/4 v11, 0x0

    sget-object v12, Lcom/google/zxing/oned/ITFWriter;->START_PATTERN:[I

    const/4 v13, 0x1

    invoke-static {v10, v11, v12, v13}, Lcom/google/zxing/oned/ITFWriter;->appendPattern([ZI[IZ)I

    move-result v10

    move v4, v10

    .line 61
    .local v4, "pos":I
    const/4 v10, 0x0

    move v5, v10

    .local v5, "i":I
    :goto_0
    move v10, v5

    move v11, v2

    if-ge v10, v11, :cond_3

    .line 62
    move-object v10, v1

    move v11, v5

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0xa

    invoke-static {v10, v11}, Ljava/lang/Character;->digit(CI)I

    move-result v10

    move v6, v10

    .line 63
    .local v6, "one":I
    move-object v10, v1

    move v11, v5

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0xa

    invoke-static {v10, v11}, Ljava/lang/Character;->digit(CI)I

    move-result v10

    move v7, v10

    .line 64
    .local v7, "two":I
    const/16 v10, 0x12

    new-array v10, v10, [I

    move-object v8, v10

    .line 65
    .local v8, "encoding":[I
    const/4 v10, 0x0

    move v9, v10

    .local v9, "j":I
    :goto_1
    move v10, v9

    const/4 v11, 0x5

    if-ge v10, v11, :cond_2

    .line 66
    move-object v10, v8

    move v11, v9

    const/4 v12, 0x1

    shl-int/lit8 v11, v11, 0x1

    sget-object v12, Lcom/google/zxing/oned/ITFReader;->PATTERNS:[[I

    move v13, v6

    aget-object v12, v12, v13

    move v13, v9

    aget v12, v12, v13

    aput v12, v10, v11

    .line 67
    move-object v10, v8

    move v11, v9

    const/4 v12, 0x1

    shl-int/lit8 v11, v11, 0x1

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    sget-object v12, Lcom/google/zxing/oned/ITFReader;->PATTERNS:[[I

    move v13, v7

    aget-object v12, v12, v13

    move v13, v9

    aget v12, v12, v13

    aput v12, v10, v11

    .line 65
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 69
    :cond_2
    move v10, v4

    move-object v11, v3

    move v12, v4

    move-object v13, v8

    const/4 v14, 0x1

    invoke-static {v11, v12, v13, v14}, Lcom/google/zxing/oned/ITFWriter;->appendPattern([ZI[IZ)I

    move-result v11

    add-int/2addr v10, v11

    move v4, v10

    .line 61
    add-int/lit8 v5, v5, 0x2

    goto :goto_0

    .line 71
    .end local v6    # "one":I
    .end local v7    # "two":I
    .end local v8    # "encoding":[I
    .end local v9    # "j":I
    :cond_3
    move-object v10, v3

    move v11, v4

    sget-object v12, Lcom/google/zxing/oned/ITFWriter;->END_PATTERN:[I

    const/4 v13, 0x1

    invoke-static {v10, v11, v12, v13}, Lcom/google/zxing/oned/ITFWriter;->appendPattern([ZI[IZ)I

    move-result v10

    .line 73
    move-object v10, v3

    move-object v0, v10

    .end local v0    # "this":Lcom/google/zxing/oned/ITFWriter;
    return-object v0
.end method
