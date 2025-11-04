.class public final Lcom/google/zxing/qrcode/decoder/Version;
.super Ljava/lang/Object;
.source "Version.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/qrcode/decoder/Version$ECB;,
        Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;
    }
.end annotation


# static fields
.field private static final VERSIONS:[Lcom/google/zxing/qrcode/decoder/Version;

.field private static final VERSION_DECODE_INFO:[I


# instance fields
.field private final alignmentPatternCenters:[I

.field private final ecBlocks:[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

.field private final totalCodewords:I

.field private final versionNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/16 v0, 0x22

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/qrcode/decoder/Version;->VERSION_DECODE_INFO:[I

    .line 43
    invoke-static {}, Lcom/google/zxing/qrcode/decoder/Version;->buildVersions()[Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/qrcode/decoder/Version;->VERSIONS:[Lcom/google/zxing/qrcode/decoder/Version;

    return-void

    .line 33
    :array_0
    .array-data 4
        0x7c94
        0x85bc
        0x9a99
        0xa4d3
        0xbbf6
        0xc762
        0xd847
        0xe60d
        0xf928
        0x10b78
        0x1145d
        0x12a17
        0x13532
        0x149a6
        0x15683
        0x168c9
        0x177ec
        0x18ec4
        0x191e1
        0x1afab
        0x1b08e
        0x1cc1a
        0x1d33f
        0x1ed75
        0x1f250
        0x209d5
        0x216f0
        0x228ba
        0x2379f
        0x24b0b
        0x2542e
        0x26a64
        0x27541
        0x28c69
    .end array-data
.end method

.method private varargs constructor <init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V
    .locals 15

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/decoder/Version;
    move/from16 v1, p1

    .local v1, "versionNumber":I
    move-object/from16 v2, p2

    .local v2, "alignmentPatternCenters":[I
    move-object/from16 v3, p3

    .local v3, "ecBlocks":[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;
    move-object v11, v0

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 53
    move-object v11, v0

    move v12, v1

    iput v12, v11, Lcom/google/zxing/qrcode/decoder/Version;->versionNumber:I

    .line 54
    move-object v11, v0

    move-object v12, v2

    iput-object v12, v11, Lcom/google/zxing/qrcode/decoder/Version;->alignmentPatternCenters:[I

    .line 55
    move-object v11, v0

    move-object v12, v3

    iput-object v12, v11, Lcom/google/zxing/qrcode/decoder/Version;->ecBlocks:[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    .line 56
    const/4 v11, 0x0

    move v4, v11

    .line 57
    .local v4, "total":I
    move-object v11, v3

    const/4 v12, 0x0

    aget-object v11, v11, v12

    invoke-virtual {v11}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getECCodewordsPerBlock()I

    move-result v11

    move v5, v11

    .line 58
    .local v5, "ecCodewords":I
    move-object v11, v3

    const/4 v12, 0x0

    aget-object v11, v11, v12

    invoke-virtual {v11}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getECBlocks()[Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v11

    move-object v6, v11

    .line 59
    .local v6, "ecbArray":[Lcom/google/zxing/qrcode/decoder/Version$ECB;
    move-object v11, v6

    move-object v7, v11

    .local v7, "arr$":[Lcom/google/zxing/qrcode/decoder/Version$ECB;
    move-object v11, v7

    array-length v11, v11

    move v8, v11

    .local v8, "len$":I
    const/4 v11, 0x0

    move v9, v11

    .local v9, "i$":I
    :goto_0
    move v11, v9

    move v12, v8

    if-ge v11, v12, :cond_0

    move-object v11, v7

    move v12, v9

    aget-object v11, v11, v12

    move-object v10, v11

    .line 60
    .local v10, "ecBlock":Lcom/google/zxing/qrcode/decoder/Version$ECB;
    move v11, v4

    move-object v12, v10

    invoke-virtual {v12}, Lcom/google/zxing/qrcode/decoder/Version$ECB;->getCount()I

    move-result v12

    move-object v13, v10

    invoke-virtual {v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;->getDataCodewords()I

    move-result v13

    move v14, v5

    add-int/2addr v13, v14

    mul-int/2addr v12, v13

    add-int/2addr v11, v12

    move v4, v11

    .line 59
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 62
    .end local v10    # "ecBlock":Lcom/google/zxing/qrcode/decoder/Version$ECB;
    :cond_0
    move-object v11, v0

    move v12, v4

    iput v12, v11, Lcom/google/zxing/qrcode/decoder/Version;->totalCodewords:I

    .line 63
    return-void
.end method

.method private static buildVersions()[Lcom/google/zxing/qrcode/decoder/Version;
    .locals 21

    .prologue
    .line 246
    const/16 v0, 0x28

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v20

    const/4 v2, 0x0

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version;

    move-object/from16 v20, v3

    move-object/from16 v3, v20

    move-object/from16 v4, v20

    const/4 v5, 0x1

    const/4 v6, 0x0

    new-array v6, v6, [I

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x0

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/4 v12, 0x7

    const/4 v13, 0x1

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x1

    const/16 v19, 0x13

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x1

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0xa

    const/4 v13, 0x1

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x1

    const/16 v19, 0x10

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x2

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0xd

    const/4 v13, 0x1

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x1

    const/16 v19, 0xd

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x3

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x11

    const/4 v13, 0x1

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x1

    const/16 v19, 0x9

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    invoke-direct {v4, v5, v6, v7}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v3, v1, v2

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v20

    const/4 v2, 0x1

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version;

    move-object/from16 v20, v3

    move-object/from16 v3, v20

    move-object/from16 v4, v20

    const/4 v5, 0x2

    const/4 v6, 0x2

    new-array v6, v6, [I

    fill-array-data v6, :array_0

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x0

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0xa

    const/4 v13, 0x1

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x1

    const/16 v19, 0x22

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x1

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x10

    const/4 v13, 0x1

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x1

    const/16 v19, 0x1c

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x2

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x16

    const/4 v13, 0x1

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x1

    const/16 v19, 0x16

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x3

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1c

    const/4 v13, 0x1

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x1

    const/16 v19, 0x10

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    invoke-direct {v4, v5, v6, v7}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v3, v1, v2

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v20

    const/4 v2, 0x2

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version;

    move-object/from16 v20, v3

    move-object/from16 v3, v20

    move-object/from16 v4, v20

    const/4 v5, 0x3

    const/4 v6, 0x2

    new-array v6, v6, [I

    fill-array-data v6, :array_1

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x0

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0xf

    const/4 v13, 0x1

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x1

    const/16 v19, 0x37

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x1

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1a

    const/4 v13, 0x1

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x1

    const/16 v19, 0x2c

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x2

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x12

    const/4 v13, 0x1

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x2

    const/16 v19, 0x11

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x3

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x16

    const/4 v13, 0x1

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x2

    const/16 v19, 0xd

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    invoke-direct {v4, v5, v6, v7}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v3, v1, v2

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v20

    const/4 v2, 0x3

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version;

    move-object/from16 v20, v3

    move-object/from16 v3, v20

    move-object/from16 v4, v20

    const/4 v5, 0x4

    const/4 v6, 0x2

    new-array v6, v6, [I

    fill-array-data v6, :array_2

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x0

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x14

    const/4 v13, 0x1

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x1

    const/16 v19, 0x50

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x1

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x12

    const/4 v13, 0x1

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x2

    const/16 v19, 0x20

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x2

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1a

    const/4 v13, 0x1

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x2

    const/16 v19, 0x18

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x3

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x10

    const/4 v13, 0x1

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x4

    const/16 v19, 0x9

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    invoke-direct {v4, v5, v6, v7}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v3, v1, v2

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v20

    const/4 v2, 0x4

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version;

    move-object/from16 v20, v3

    move-object/from16 v3, v20

    move-object/from16 v4, v20

    const/4 v5, 0x5

    const/4 v6, 0x2

    new-array v6, v6, [I

    fill-array-data v6, :array_3

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x0

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1a

    const/4 v13, 0x1

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x1

    const/16 v19, 0x6c

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x1

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x18

    const/4 v13, 0x1

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x2

    const/16 v19, 0x2b

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x2

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x12

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x2

    const/16 v19, 0xf

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x2

    const/16 v19, 0x10

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x3

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x16

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x2

    const/16 v19, 0xb

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x2

    const/16 v19, 0xc

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    invoke-direct {v4, v5, v6, v7}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v3, v1, v2

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v20

    const/4 v2, 0x5

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version;

    move-object/from16 v20, v3

    move-object/from16 v3, v20

    move-object/from16 v4, v20

    const/4 v5, 0x6

    const/4 v6, 0x2

    new-array v6, v6, [I

    fill-array-data v6, :array_4

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x0

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x12

    const/4 v13, 0x1

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x2

    const/16 v19, 0x44

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x1

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x10

    const/4 v13, 0x1

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x4

    const/16 v19, 0x1b

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x2

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x18

    const/4 v13, 0x1

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x4

    const/16 v19, 0x13

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x3

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1c

    const/4 v13, 0x1

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x4

    const/16 v19, 0xf

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    invoke-direct {v4, v5, v6, v7}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v3, v1, v2

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v20

    const/4 v2, 0x6

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version;

    move-object/from16 v20, v3

    move-object/from16 v3, v20

    move-object/from16 v4, v20

    const/4 v5, 0x7

    const/4 v6, 0x3

    new-array v6, v6, [I

    fill-array-data v6, :array_5

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x0

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x14

    const/4 v13, 0x1

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x2

    const/16 v19, 0x4e

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x1

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x12

    const/4 v13, 0x1

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x4

    const/16 v19, 0x1f

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x2

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x12

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x2

    const/16 v19, 0xe

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x4

    const/16 v19, 0xf

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x3

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1a

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x4

    const/16 v19, 0xd

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x1

    const/16 v19, 0xe

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    invoke-direct {v4, v5, v6, v7}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v3, v1, v2

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v20

    const/4 v2, 0x7

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version;

    move-object/from16 v20, v3

    move-object/from16 v3, v20

    move-object/from16 v4, v20

    const/16 v5, 0x8

    const/4 v6, 0x3

    new-array v6, v6, [I

    fill-array-data v6, :array_6

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x0

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x18

    const/4 v13, 0x1

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x2

    const/16 v19, 0x61

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x1

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x16

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x2

    const/16 v19, 0x26

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x2

    const/16 v19, 0x27

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x2

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x16

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x4

    const/16 v19, 0x12

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x2

    const/16 v19, 0x13

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x3

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1a

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x4

    const/16 v19, 0xe

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x2

    const/16 v19, 0xf

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    invoke-direct {v4, v5, v6, v7}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v3, v1, v2

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v20

    const/16 v2, 0x8

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version;

    move-object/from16 v20, v3

    move-object/from16 v3, v20

    move-object/from16 v4, v20

    const/16 v5, 0x9

    const/4 v6, 0x3

    new-array v6, v6, [I

    fill-array-data v6, :array_7

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x0

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1e

    const/4 v13, 0x1

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x2

    const/16 v19, 0x74

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x1

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x16

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x3

    const/16 v19, 0x24

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x2

    const/16 v19, 0x25

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x2

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x14

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x4

    const/16 v19, 0x10

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x4

    const/16 v19, 0x11

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x3

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x18

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x4

    const/16 v19, 0xc

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x4

    const/16 v19, 0xd

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    invoke-direct {v4, v5, v6, v7}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v3, v1, v2

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v20

    const/16 v2, 0x9

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version;

    move-object/from16 v20, v3

    move-object/from16 v3, v20

    move-object/from16 v4, v20

    const/16 v5, 0xa

    const/4 v6, 0x3

    new-array v6, v6, [I

    fill-array-data v6, :array_8

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x0

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x12

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x2

    const/16 v19, 0x44

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x2

    const/16 v19, 0x45

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x1

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1a

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x4

    const/16 v19, 0x2b

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x1

    const/16 v19, 0x2c

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x2

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x18

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x6

    const/16 v19, 0x13

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x2

    const/16 v19, 0x14

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x3

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1c

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x6

    const/16 v19, 0xf

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x2

    const/16 v19, 0x10

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    invoke-direct {v4, v5, v6, v7}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v3, v1, v2

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v20

    const/16 v2, 0xa

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version;

    move-object/from16 v20, v3

    move-object/from16 v3, v20

    move-object/from16 v4, v20

    const/16 v5, 0xb

    const/4 v6, 0x3

    new-array v6, v6, [I

    fill-array-data v6, :array_9

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x0

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x14

    const/4 v13, 0x1

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x4

    const/16 v19, 0x51

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x1

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1e

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x1

    const/16 v19, 0x32

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x4

    const/16 v19, 0x33

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x2

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1c

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x4

    const/16 v19, 0x16

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x4

    const/16 v19, 0x17

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x3

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x18

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x3

    const/16 v19, 0xc

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x8

    const/16 v19, 0xd

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    invoke-direct {v4, v5, v6, v7}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v3, v1, v2

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v20

    const/16 v2, 0xb

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version;

    move-object/from16 v20, v3

    move-object/from16 v3, v20

    move-object/from16 v4, v20

    const/16 v5, 0xc

    const/4 v6, 0x3

    new-array v6, v6, [I

    fill-array-data v6, :array_a

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x0

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x18

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x2

    const/16 v19, 0x5c

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x2

    const/16 v19, 0x5d

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x1

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x16

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x6

    const/16 v19, 0x24

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x2

    const/16 v19, 0x25

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x2

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1a

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x4

    const/16 v19, 0x14

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x6

    const/16 v19, 0x15

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x3

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1c

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x7

    const/16 v19, 0xe

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x4

    const/16 v19, 0xf

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    invoke-direct {v4, v5, v6, v7}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v3, v1, v2

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v20

    const/16 v2, 0xc

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version;

    move-object/from16 v20, v3

    move-object/from16 v3, v20

    move-object/from16 v4, v20

    const/16 v5, 0xd

    const/4 v6, 0x3

    new-array v6, v6, [I

    fill-array-data v6, :array_b

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x0

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1a

    const/4 v13, 0x1

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x4

    const/16 v19, 0x6b

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x1

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x16

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x8

    const/16 v19, 0x25

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x1

    const/16 v19, 0x26

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x2

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x18

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x8

    const/16 v19, 0x14

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x4

    const/16 v19, 0x15

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x3

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x16

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0xc

    const/16 v19, 0xb

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x4

    const/16 v19, 0xc

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    invoke-direct {v4, v5, v6, v7}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v3, v1, v2

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v20

    const/16 v2, 0xd

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version;

    move-object/from16 v20, v3

    move-object/from16 v3, v20

    move-object/from16 v4, v20

    const/16 v5, 0xe

    const/4 v6, 0x4

    new-array v6, v6, [I

    fill-array-data v6, :array_c

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x0

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1e

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x3

    const/16 v19, 0x73

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x1

    const/16 v19, 0x74

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x1

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x18

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x4

    const/16 v19, 0x28

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x5

    const/16 v19, 0x29

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x2

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x14

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0xb

    const/16 v19, 0x10

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x5

    const/16 v19, 0x11

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x3

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x18

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0xb

    const/16 v19, 0xc

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x5

    const/16 v19, 0xd

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    invoke-direct {v4, v5, v6, v7}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v3, v1, v2

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v20

    const/16 v2, 0xe

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version;

    move-object/from16 v20, v3

    move-object/from16 v3, v20

    move-object/from16 v4, v20

    const/16 v5, 0xf

    const/4 v6, 0x4

    new-array v6, v6, [I

    fill-array-data v6, :array_d

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x0

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x16

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x5

    const/16 v19, 0x57

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x1

    const/16 v19, 0x58

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x1

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x18

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x5

    const/16 v19, 0x29

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x5

    const/16 v19, 0x2a

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x2

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1e

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x5

    const/16 v19, 0x18

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x7

    const/16 v19, 0x19

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x3

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x18

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0xb

    const/16 v19, 0xc

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x7

    const/16 v19, 0xd

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    invoke-direct {v4, v5, v6, v7}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v3, v1, v2

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v20

    const/16 v2, 0xf

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version;

    move-object/from16 v20, v3

    move-object/from16 v3, v20

    move-object/from16 v4, v20

    const/16 v5, 0x10

    const/4 v6, 0x4

    new-array v6, v6, [I

    fill-array-data v6, :array_e

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x0

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x18

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x5

    const/16 v19, 0x62

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x1

    const/16 v19, 0x63

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x1

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1c

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x7

    const/16 v19, 0x2d

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x3

    const/16 v19, 0x2e

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x2

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x18

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0xf

    const/16 v19, 0x13

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x2

    const/16 v19, 0x14

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x3

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1e

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x3

    const/16 v19, 0xf

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0xd

    const/16 v19, 0x10

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    invoke-direct {v4, v5, v6, v7}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v3, v1, v2

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v20

    const/16 v2, 0x10

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version;

    move-object/from16 v20, v3

    move-object/from16 v3, v20

    move-object/from16 v4, v20

    const/16 v5, 0x11

    const/4 v6, 0x4

    new-array v6, v6, [I

    fill-array-data v6, :array_f

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x0

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1c

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x1

    const/16 v19, 0x6b

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x5

    const/16 v19, 0x6c

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x1

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1c

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0xa

    const/16 v19, 0x2e

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x1

    const/16 v19, 0x2f

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x2

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1c

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x1

    const/16 v19, 0x16

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0xf

    const/16 v19, 0x17

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x3

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1c

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x2

    const/16 v19, 0xe

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x11

    const/16 v19, 0xf

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    invoke-direct {v4, v5, v6, v7}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v3, v1, v2

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v20

    const/16 v2, 0x11

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version;

    move-object/from16 v20, v3

    move-object/from16 v3, v20

    move-object/from16 v4, v20

    const/16 v5, 0x12

    const/4 v6, 0x4

    new-array v6, v6, [I

    fill-array-data v6, :array_10

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x0

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1e

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x5

    const/16 v19, 0x78

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x1

    const/16 v19, 0x79

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x1

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1a

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x9

    const/16 v19, 0x2b

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x4

    const/16 v19, 0x2c

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x2

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1c

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x11

    const/16 v19, 0x16

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x1

    const/16 v19, 0x17

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x3

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1c

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x2

    const/16 v19, 0xe

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x13

    const/16 v19, 0xf

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    invoke-direct {v4, v5, v6, v7}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v3, v1, v2

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v20

    const/16 v2, 0x12

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version;

    move-object/from16 v20, v3

    move-object/from16 v3, v20

    move-object/from16 v4, v20

    const/16 v5, 0x13

    const/4 v6, 0x4

    new-array v6, v6, [I

    fill-array-data v6, :array_11

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x0

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1c

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x3

    const/16 v19, 0x71

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x4

    const/16 v19, 0x72

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x1

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1a

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x3

    const/16 v19, 0x2c

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0xb

    const/16 v19, 0x2d

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x2

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1a

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x11

    const/16 v19, 0x15

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x4

    const/16 v19, 0x16

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x3

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1a

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x9

    const/16 v19, 0xd

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x10

    const/16 v19, 0xe

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    invoke-direct {v4, v5, v6, v7}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v3, v1, v2

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v20

    const/16 v2, 0x13

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version;

    move-object/from16 v20, v3

    move-object/from16 v3, v20

    move-object/from16 v4, v20

    const/16 v5, 0x14

    const/4 v6, 0x4

    new-array v6, v6, [I

    fill-array-data v6, :array_12

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x0

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1c

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x3

    const/16 v19, 0x6b

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x5

    const/16 v19, 0x6c

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x1

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1a

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x3

    const/16 v19, 0x29

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0xd

    const/16 v19, 0x2a

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x2

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1e

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0xf

    const/16 v19, 0x18

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x5

    const/16 v19, 0x19

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x3

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1c

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0xf

    const/16 v19, 0xf

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0xa

    const/16 v19, 0x10

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    invoke-direct {v4, v5, v6, v7}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v3, v1, v2

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v20

    const/16 v2, 0x14

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version;

    move-object/from16 v20, v3

    move-object/from16 v3, v20

    move-object/from16 v4, v20

    const/16 v5, 0x15

    const/4 v6, 0x5

    new-array v6, v6, [I

    fill-array-data v6, :array_13

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x0

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1c

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x4

    const/16 v19, 0x74

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x4

    const/16 v19, 0x75

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x1

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1a

    const/4 v13, 0x1

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x11

    const/16 v19, 0x2a

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x2

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1c

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x11

    const/16 v19, 0x16

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x6

    const/16 v19, 0x17

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x3

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1e

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x13

    const/16 v19, 0x10

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x6

    const/16 v19, 0x11

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    invoke-direct {v4, v5, v6, v7}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v3, v1, v2

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v20

    const/16 v2, 0x15

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version;

    move-object/from16 v20, v3

    move-object/from16 v3, v20

    move-object/from16 v4, v20

    const/16 v5, 0x16

    const/4 v6, 0x5

    new-array v6, v6, [I

    fill-array-data v6, :array_14

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x0

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1c

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x2

    const/16 v19, 0x6f

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x7

    const/16 v19, 0x70

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x1

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1c

    const/4 v13, 0x1

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x11

    const/16 v19, 0x2e

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x2

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1e

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x7

    const/16 v19, 0x18

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x10

    const/16 v19, 0x19

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x3

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x18

    const/4 v13, 0x1

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x22

    const/16 v19, 0xd

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    invoke-direct {v4, v5, v6, v7}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v3, v1, v2

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v20

    const/16 v2, 0x16

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version;

    move-object/from16 v20, v3

    move-object/from16 v3, v20

    move-object/from16 v4, v20

    const/16 v5, 0x17

    const/4 v6, 0x5

    new-array v6, v6, [I

    fill-array-data v6, :array_15

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x0

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1e

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x4

    const/16 v19, 0x79

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x5

    const/16 v19, 0x7a

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x1

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1c

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x4

    const/16 v19, 0x2f

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0xe

    const/16 v19, 0x30

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x2

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1e

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0xb

    const/16 v19, 0x18

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0xe

    const/16 v19, 0x19

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x3

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1e

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x10

    const/16 v19, 0xf

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0xe

    const/16 v19, 0x10

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    invoke-direct {v4, v5, v6, v7}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v3, v1, v2

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v20

    const/16 v2, 0x17

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version;

    move-object/from16 v20, v3

    move-object/from16 v3, v20

    move-object/from16 v4, v20

    const/16 v5, 0x18

    const/4 v6, 0x5

    new-array v6, v6, [I

    fill-array-data v6, :array_16

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x0

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1e

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x6

    const/16 v19, 0x75

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x4

    const/16 v19, 0x76

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x1

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1c

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x6

    const/16 v19, 0x2d

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0xe

    const/16 v19, 0x2e

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x2

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1e

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0xb

    const/16 v19, 0x18

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x10

    const/16 v19, 0x19

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x3

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1e

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x1e

    const/16 v19, 0x10

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x2

    const/16 v19, 0x11

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    invoke-direct {v4, v5, v6, v7}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v3, v1, v2

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v20

    const/16 v2, 0x18

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version;

    move-object/from16 v20, v3

    move-object/from16 v3, v20

    move-object/from16 v4, v20

    const/16 v5, 0x19

    const/4 v6, 0x5

    new-array v6, v6, [I

    fill-array-data v6, :array_17

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x0

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1a

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x8

    const/16 v19, 0x6a

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x4

    const/16 v19, 0x6b

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x1

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1c

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x8

    const/16 v19, 0x2f

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0xd

    const/16 v19, 0x30

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x2

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1e

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x7

    const/16 v19, 0x18

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x16

    const/16 v19, 0x19

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x3

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1e

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x16

    const/16 v19, 0xf

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0xd

    const/16 v19, 0x10

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    invoke-direct {v4, v5, v6, v7}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v3, v1, v2

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v20

    const/16 v2, 0x19

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version;

    move-object/from16 v20, v3

    move-object/from16 v3, v20

    move-object/from16 v4, v20

    const/16 v5, 0x1a

    const/4 v6, 0x5

    new-array v6, v6, [I

    fill-array-data v6, :array_18

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x0

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1c

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0xa

    const/16 v19, 0x72

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x2

    const/16 v19, 0x73

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x1

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1c

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x13

    const/16 v19, 0x2e

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x4

    const/16 v19, 0x2f

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x2

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1c

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x1c

    const/16 v19, 0x16

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x6

    const/16 v19, 0x17

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x3

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1e

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x21

    const/16 v19, 0x10

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x4

    const/16 v19, 0x11

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    invoke-direct {v4, v5, v6, v7}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v3, v1, v2

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v20

    const/16 v2, 0x1a

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version;

    move-object/from16 v20, v3

    move-object/from16 v3, v20

    move-object/from16 v4, v20

    const/16 v5, 0x1b

    const/4 v6, 0x5

    new-array v6, v6, [I

    fill-array-data v6, :array_19

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x0

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1e

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x8

    const/16 v19, 0x7a

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x4

    const/16 v19, 0x7b

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x1

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1c

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x16

    const/16 v19, 0x2d

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x3

    const/16 v19, 0x2e

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x2

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1e

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x8

    const/16 v19, 0x17

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x1a

    const/16 v19, 0x18

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x3

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1e

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0xc

    const/16 v19, 0xf

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x1c

    const/16 v19, 0x10

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    invoke-direct {v4, v5, v6, v7}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v3, v1, v2

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v20

    const/16 v2, 0x1b

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version;

    move-object/from16 v20, v3

    move-object/from16 v3, v20

    move-object/from16 v4, v20

    const/16 v5, 0x1c

    const/4 v6, 0x6

    new-array v6, v6, [I

    fill-array-data v6, :array_1a

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x0

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1e

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x3

    const/16 v19, 0x75

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0xa

    const/16 v19, 0x76

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x1

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1c

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x3

    const/16 v19, 0x2d

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x17

    const/16 v19, 0x2e

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x2

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1e

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x4

    const/16 v19, 0x18

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x1f

    const/16 v19, 0x19

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x3

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1e

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0xb

    const/16 v19, 0xf

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x1f

    const/16 v19, 0x10

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    invoke-direct {v4, v5, v6, v7}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v3, v1, v2

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v20

    const/16 v2, 0x1c

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version;

    move-object/from16 v20, v3

    move-object/from16 v3, v20

    move-object/from16 v4, v20

    const/16 v5, 0x1d

    const/4 v6, 0x6

    new-array v6, v6, [I

    fill-array-data v6, :array_1b

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x0

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1e

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x7

    const/16 v19, 0x74

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x7

    const/16 v19, 0x75

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x1

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1c

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x15

    const/16 v19, 0x2d

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x7

    const/16 v19, 0x2e

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x2

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1e

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x1

    const/16 v19, 0x17

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x25

    const/16 v19, 0x18

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x3

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1e

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x13

    const/16 v19, 0xf

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x1a

    const/16 v19, 0x10

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    invoke-direct {v4, v5, v6, v7}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v3, v1, v2

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v20

    const/16 v2, 0x1d

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version;

    move-object/from16 v20, v3

    move-object/from16 v3, v20

    move-object/from16 v4, v20

    const/16 v5, 0x1e

    const/4 v6, 0x6

    new-array v6, v6, [I

    fill-array-data v6, :array_1c

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x0

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1e

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x5

    const/16 v19, 0x73

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0xa

    const/16 v19, 0x74

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x1

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1c

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x13

    const/16 v19, 0x2f

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0xa

    const/16 v19, 0x30

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x2

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1e

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0xf

    const/16 v19, 0x18

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x19

    const/16 v19, 0x19

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x3

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1e

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x17

    const/16 v19, 0xf

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x19

    const/16 v19, 0x10

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    invoke-direct {v4, v5, v6, v7}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v3, v1, v2

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v20

    const/16 v2, 0x1e

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version;

    move-object/from16 v20, v3

    move-object/from16 v3, v20

    move-object/from16 v4, v20

    const/16 v5, 0x1f

    const/4 v6, 0x6

    new-array v6, v6, [I

    fill-array-data v6, :array_1d

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x0

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1e

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0xd

    const/16 v19, 0x73

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x3

    const/16 v19, 0x74

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x1

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1c

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x2

    const/16 v19, 0x2e

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x1d

    const/16 v19, 0x2f

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x2

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1e

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x2a

    const/16 v19, 0x18

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x1

    const/16 v19, 0x19

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x3

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1e

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x17

    const/16 v19, 0xf

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x1c

    const/16 v19, 0x10

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    invoke-direct {v4, v5, v6, v7}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v3, v1, v2

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v20

    const/16 v2, 0x1f

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version;

    move-object/from16 v20, v3

    move-object/from16 v3, v20

    move-object/from16 v4, v20

    const/16 v5, 0x20

    const/4 v6, 0x6

    new-array v6, v6, [I

    fill-array-data v6, :array_1e

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x0

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1e

    const/4 v13, 0x1

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x11

    const/16 v19, 0x73

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x1

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1c

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0xa

    const/16 v19, 0x2e

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x17

    const/16 v19, 0x2f

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x2

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1e

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0xa

    const/16 v19, 0x18

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x23

    const/16 v19, 0x19

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x3

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1e

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x13

    const/16 v19, 0xf

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x23

    const/16 v19, 0x10

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    invoke-direct {v4, v5, v6, v7}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v3, v1, v2

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v20

    const/16 v2, 0x20

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version;

    move-object/from16 v20, v3

    move-object/from16 v3, v20

    move-object/from16 v4, v20

    const/16 v5, 0x21

    const/4 v6, 0x6

    new-array v6, v6, [I

    fill-array-data v6, :array_1f

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x0

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1e

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x11

    const/16 v19, 0x73

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x1

    const/16 v19, 0x74

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x1

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1c

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0xe

    const/16 v19, 0x2e

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x15

    const/16 v19, 0x2f

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x2

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1e

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x1d

    const/16 v19, 0x18

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x13

    const/16 v19, 0x19

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x3

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1e

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0xb

    const/16 v19, 0xf

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x2e

    const/16 v19, 0x10

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    invoke-direct {v4, v5, v6, v7}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v3, v1, v2

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v20

    const/16 v2, 0x21

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version;

    move-object/from16 v20, v3

    move-object/from16 v3, v20

    move-object/from16 v4, v20

    const/16 v5, 0x22

    const/4 v6, 0x6

    new-array v6, v6, [I

    fill-array-data v6, :array_20

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x0

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1e

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0xd

    const/16 v19, 0x73

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x6

    const/16 v19, 0x74

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x1

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1c

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0xe

    const/16 v19, 0x2e

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x17

    const/16 v19, 0x2f

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x2

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1e

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x2c

    const/16 v19, 0x18

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x7

    const/16 v19, 0x19

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x3

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1e

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x3b

    const/16 v19, 0x10

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x1

    const/16 v19, 0x11

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    invoke-direct {v4, v5, v6, v7}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v3, v1, v2

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v20

    const/16 v2, 0x22

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version;

    move-object/from16 v20, v3

    move-object/from16 v3, v20

    move-object/from16 v4, v20

    const/16 v5, 0x23

    const/4 v6, 0x7

    new-array v6, v6, [I

    fill-array-data v6, :array_21

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x0

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1e

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0xc

    const/16 v19, 0x79

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x7

    const/16 v19, 0x7a

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x1

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1c

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0xc

    const/16 v19, 0x2f

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x1a

    const/16 v19, 0x30

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x2

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1e

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x27

    const/16 v19, 0x18

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0xe

    const/16 v19, 0x19

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x3

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1e

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x16

    const/16 v19, 0xf

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x29

    const/16 v19, 0x10

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    invoke-direct {v4, v5, v6, v7}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v3, v1, v2

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v20

    const/16 v2, 0x23

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version;

    move-object/from16 v20, v3

    move-object/from16 v3, v20

    move-object/from16 v4, v20

    const/16 v5, 0x24

    const/4 v6, 0x7

    new-array v6, v6, [I

    fill-array-data v6, :array_22

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x0

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1e

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x6

    const/16 v19, 0x79

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0xe

    const/16 v19, 0x7a

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x1

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1c

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x6

    const/16 v19, 0x2f

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x22

    const/16 v19, 0x30

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x2

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1e

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x2e

    const/16 v19, 0x18

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0xa

    const/16 v19, 0x19

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x3

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1e

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x2

    const/16 v19, 0xf

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x40

    const/16 v19, 0x10

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    invoke-direct {v4, v5, v6, v7}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v3, v1, v2

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v20

    const/16 v2, 0x24

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version;

    move-object/from16 v20, v3

    move-object/from16 v3, v20

    move-object/from16 v4, v20

    const/16 v5, 0x25

    const/4 v6, 0x7

    new-array v6, v6, [I

    fill-array-data v6, :array_23

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x0

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1e

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x11

    const/16 v19, 0x7a

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x4

    const/16 v19, 0x7b

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x1

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1c

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x1d

    const/16 v19, 0x2e

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0xe

    const/16 v19, 0x2f

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x2

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1e

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x31

    const/16 v19, 0x18

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0xa

    const/16 v19, 0x19

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x3

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1e

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x18

    const/16 v19, 0xf

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x2e

    const/16 v19, 0x10

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    invoke-direct {v4, v5, v6, v7}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v3, v1, v2

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v20

    const/16 v2, 0x25

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version;

    move-object/from16 v20, v3

    move-object/from16 v3, v20

    move-object/from16 v4, v20

    const/16 v5, 0x26

    const/4 v6, 0x7

    new-array v6, v6, [I

    fill-array-data v6, :array_24

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x0

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1e

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x4

    const/16 v19, 0x7a

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x12

    const/16 v19, 0x7b

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x1

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1c

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0xd

    const/16 v19, 0x2e

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x20

    const/16 v19, 0x2f

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x2

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1e

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x30

    const/16 v19, 0x18

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0xe

    const/16 v19, 0x19

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x3

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1e

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x2a

    const/16 v19, 0xf

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x20

    const/16 v19, 0x10

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    invoke-direct {v4, v5, v6, v7}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v3, v1, v2

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v20

    const/16 v2, 0x26

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version;

    move-object/from16 v20, v3

    move-object/from16 v3, v20

    move-object/from16 v4, v20

    const/16 v5, 0x27

    const/4 v6, 0x7

    new-array v6, v6, [I

    fill-array-data v6, :array_25

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x0

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1e

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x14

    const/16 v19, 0x75

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x4

    const/16 v19, 0x76

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x1

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1c

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x28

    const/16 v19, 0x2f

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x7

    const/16 v19, 0x30

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x2

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1e

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x2b

    const/16 v19, 0x18

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x16

    const/16 v19, 0x19

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x3

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1e

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0xa

    const/16 v19, 0xf

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x43

    const/16 v19, 0x10

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    invoke-direct {v4, v5, v6, v7}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v3, v1, v2

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v20

    const/16 v2, 0x27

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version;

    move-object/from16 v20, v3

    move-object/from16 v3, v20

    move-object/from16 v4, v20

    const/16 v5, 0x28

    const/4 v6, 0x7

    new-array v6, v6, [I

    fill-array-data v6, :array_26

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x0

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1e

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x13

    const/16 v19, 0x76

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x6

    const/16 v19, 0x77

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x1

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1c

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x12

    const/16 v19, 0x2f

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x1f

    const/16 v19, 0x30

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x2

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1e

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x22

    const/16 v19, 0x18

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x22

    const/16 v19, 0x19

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v20

    const/4 v9, 0x3

    new-instance v10, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/16 v12, 0x1e

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x14

    const/16 v19, 0xf

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x3d

    const/16 v19, 0x10

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v16, v14, v15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v8, v9

    invoke-direct {v4, v5, v6, v7}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v3, v1, v2

    return-object v0

    :array_0
    .array-data 4
        0x6
        0x12
    .end array-data

    :array_1
    .array-data 4
        0x6
        0x16
    .end array-data

    :array_2
    .array-data 4
        0x6
        0x1a
    .end array-data

    :array_3
    .array-data 4
        0x6
        0x1e
    .end array-data

    :array_4
    .array-data 4
        0x6
        0x22
    .end array-data

    :array_5
    .array-data 4
        0x6
        0x16
        0x26
    .end array-data

    :array_6
    .array-data 4
        0x6
        0x18
        0x2a
    .end array-data

    :array_7
    .array-data 4
        0x6
        0x1a
        0x2e
    .end array-data

    :array_8
    .array-data 4
        0x6
        0x1c
        0x32
    .end array-data

    :array_9
    .array-data 4
        0x6
        0x1e
        0x36
    .end array-data

    :array_a
    .array-data 4
        0x6
        0x20
        0x3a
    .end array-data

    :array_b
    .array-data 4
        0x6
        0x22
        0x3e
    .end array-data

    :array_c
    .array-data 4
        0x6
        0x1a
        0x2e
        0x42
    .end array-data

    :array_d
    .array-data 4
        0x6
        0x1a
        0x30
        0x46
    .end array-data

    :array_e
    .array-data 4
        0x6
        0x1a
        0x32
        0x4a
    .end array-data

    :array_f
    .array-data 4
        0x6
        0x1e
        0x36
        0x4e
    .end array-data

    :array_10
    .array-data 4
        0x6
        0x1e
        0x38
        0x52
    .end array-data

    :array_11
    .array-data 4
        0x6
        0x1e
        0x3a
        0x56
    .end array-data

    :array_12
    .array-data 4
        0x6
        0x22
        0x3e
        0x5a
    .end array-data

    :array_13
    .array-data 4
        0x6
        0x1c
        0x32
        0x48
        0x5e
    .end array-data

    :array_14
    .array-data 4
        0x6
        0x1a
        0x32
        0x4a
        0x62
    .end array-data

    :array_15
    .array-data 4
        0x6
        0x1e
        0x36
        0x4e
        0x66
    .end array-data

    :array_16
    .array-data 4
        0x6
        0x1c
        0x36
        0x50
        0x6a
    .end array-data

    :array_17
    .array-data 4
        0x6
        0x20
        0x3a
        0x54
        0x6e
    .end array-data

    :array_18
    .array-data 4
        0x6
        0x1e
        0x3a
        0x56
        0x72
    .end array-data

    :array_19
    .array-data 4
        0x6
        0x22
        0x3e
        0x5a
        0x76
    .end array-data

    :array_1a
    .array-data 4
        0x6
        0x1a
        0x32
        0x4a
        0x62
        0x7a
    .end array-data

    :array_1b
    .array-data 4
        0x6
        0x1e
        0x36
        0x4e
        0x66
        0x7e
    .end array-data

    :array_1c
    .array-data 4
        0x6
        0x1a
        0x34
        0x4e
        0x68
        0x82
    .end array-data

    :array_1d
    .array-data 4
        0x6
        0x1e
        0x38
        0x52
        0x6c
        0x86
    .end array-data

    :array_1e
    .array-data 4
        0x6
        0x22
        0x3c
        0x56
        0x70
        0x8a
    .end array-data

    :array_1f
    .array-data 4
        0x6
        0x1e
        0x3a
        0x56
        0x72
        0x8e
    .end array-data

    :array_20
    .array-data 4
        0x6
        0x22
        0x3e
        0x5a
        0x76
        0x92
    .end array-data

    :array_21
    .array-data 4
        0x6
        0x1e
        0x36
        0x4e
        0x66
        0x7e
        0x96
    .end array-data

    :array_22
    .array-data 4
        0x6
        0x18
        0x32
        0x4c
        0x66
        0x80
        0x9a
    .end array-data

    :array_23
    .array-data 4
        0x6
        0x1c
        0x36
        0x50
        0x6a
        0x84
        0x9e
    .end array-data

    :array_24
    .array-data 4
        0x6
        0x20
        0x3a
        0x54
        0x6e
        0x88
        0xa2
    .end array-data

    :array_25
    .array-data 4
        0x6
        0x1a
        0x36
        0x52
        0x6e
        0x8a
        0xa6
    .end array-data

    :array_26
    .array-data 4
        0x6
        0x1e
        0x3a
        0x56
        0x72
        0x8e
        0xaa
    .end array-data
.end method

.method static decodeVersionInformation(I)Lcom/google/zxing/qrcode/decoder/Version;
    .locals 8

    .prologue
    .line 111
    move v0, p0

    .local v0, "versionBits":I
    const v6, 0x7fffffff

    move v1, v6

    .line 112
    .local v1, "bestDifference":I
    const/4 v6, 0x0

    move v2, v6

    .line 113
    .local v2, "bestVersion":I
    const/4 v6, 0x0

    move v3, v6

    .local v3, "i":I
    :goto_0
    move v6, v3

    sget-object v7, Lcom/google/zxing/qrcode/decoder/Version;->VERSION_DECODE_INFO:[I

    array-length v7, v7

    if-ge v6, v7, :cond_2

    .line 114
    sget-object v6, Lcom/google/zxing/qrcode/decoder/Version;->VERSION_DECODE_INFO:[I

    move v7, v3

    aget v6, v6, v7

    move v4, v6

    .line 116
    .local v4, "targetVersion":I
    move v6, v4

    move v7, v0

    if-ne v6, v7, :cond_0

    .line 117
    move v6, v3

    const/4 v7, 0x7

    add-int/lit8 v6, v6, 0x7

    invoke-static {v6}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v6

    move-object v0, v6

    .line 133
    .end local v0    # "versionBits":I
    .end local v4    # "targetVersion":I
    :goto_1
    return-object v0

    .line 121
    .restart local v0    # "versionBits":I
    .restart local v4    # "targetVersion":I
    :cond_0
    move v6, v0

    move v7, v4

    invoke-static {v6, v7}, Lcom/google/zxing/qrcode/decoder/FormatInformation;->numBitsDiffering(II)I

    move-result v6

    move v5, v6

    .line 122
    .local v5, "bitsDifference":I
    move v6, v5

    move v7, v1

    if-ge v6, v7, :cond_1

    .line 123
    move v6, v3

    const/4 v7, 0x7

    add-int/lit8 v6, v6, 0x7

    move v2, v6

    .line 124
    move v6, v5

    move v1, v6

    .line 113
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 129
    .end local v4    # "targetVersion":I
    .end local v5    # "bitsDifference":I
    :cond_2
    move v6, v1

    const/4 v7, 0x3

    if-gt v6, v7, :cond_3

    .line 130
    move v6, v2

    invoke-static {v6}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v6

    move-object v0, v6

    goto :goto_1

    .line 133
    :cond_3
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_1
.end method

.method public static getProvisionalVersionForDimension(I)Lcom/google/zxing/qrcode/decoder/Version;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 93
    move v0, p0

    .local v0, "dimension":I
    move v2, v0

    const/4 v3, 0x4

    rem-int/lit8 v2, v2, 0x4

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 94
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v2

    throw v2

    .line 97
    :cond_0
    move v2, v0

    const/16 v3, 0x11

    add-int/lit8 v2, v2, -0x11

    const/4 v3, 0x2

    shr-int/lit8 v2, v2, 0x2

    :try_start_0
    invoke-static {v2}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v0, v2

    .end local v0    # "dimension":I
    return-object v0

    .line 98
    .restart local v0    # "dimension":I
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 99
    .local v1, "iae":Ljava/lang/IllegalArgumentException;
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v2

    throw v2
.end method

.method public static getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;
    .locals 5

    .prologue
    .line 104
    move v0, p0

    .local v0, "versionNumber":I
    move v1, v0

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    move v1, v0

    const/16 v2, 0x28

    if-le v1, v2, :cond_1

    .line 105
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 107
    :cond_1
    sget-object v1, Lcom/google/zxing/qrcode/decoder/Version;->VERSIONS:[Lcom/google/zxing/qrcode/decoder/Version;

    move v2, v0

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    move-object v0, v1

    .end local v0    # "versionNumber":I
    return-object v0
.end method


# virtual methods
.method buildFunctionPattern()Lcom/google/zxing/common/BitMatrix;
    .locals 14

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/decoder/Version;
    move-object v7, v0

    invoke-virtual {v7}, Lcom/google/zxing/qrcode/decoder/Version;->getDimensionForVersion()I

    move-result v7

    move v1, v7

    .line 141
    .local v1, "dimension":I
    new-instance v7, Lcom/google/zxing/common/BitMatrix;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move v9, v1

    invoke-direct {v8, v9}, Lcom/google/zxing/common/BitMatrix;-><init>(I)V

    move-object v2, v7

    .line 144
    .local v2, "bitMatrix":Lcom/google/zxing/common/BitMatrix;
    move-object v7, v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x9

    const/16 v11, 0x9

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V

    .line 146
    move-object v7, v2

    move v8, v1

    const/16 v9, 0x8

    add-int/lit8 v8, v8, -0x8

    const/4 v9, 0x0

    const/16 v10, 0x8

    const/16 v11, 0x9

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V

    .line 148
    move-object v7, v2

    const/4 v8, 0x0

    move v9, v1

    const/16 v10, 0x8

    add-int/lit8 v9, v9, -0x8

    const/16 v10, 0x9

    const/16 v11, 0x8

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V

    .line 151
    move-object v7, v0

    iget-object v7, v7, Lcom/google/zxing/qrcode/decoder/Version;->alignmentPatternCenters:[I

    array-length v7, v7

    move v3, v7

    .line 152
    .local v3, "max":I
    const/4 v7, 0x0

    move v4, v7

    .local v4, "x":I
    :goto_0
    move v7, v4

    move v8, v3

    if-ge v7, v8, :cond_4

    .line 153
    move-object v7, v0

    iget-object v7, v7, Lcom/google/zxing/qrcode/decoder/Version;->alignmentPatternCenters:[I

    move v8, v4

    aget v7, v7, v8

    const/4 v8, 0x2

    add-int/lit8 v7, v7, -0x2

    move v5, v7

    .line 154
    .local v5, "i":I
    const/4 v7, 0x0

    move v6, v7

    .local v6, "y":I
    :goto_1
    move v7, v6

    move v8, v3

    if-ge v7, v8, :cond_3

    .line 155
    move v7, v4

    if-nez v7, :cond_0

    move v7, v6

    if-eqz v7, :cond_1

    move v7, v6

    move v8, v3

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    if-eq v7, v8, :cond_1

    :cond_0
    move v7, v4

    move v8, v3

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    if-ne v7, v8, :cond_2

    move v7, v6

    if-nez v7, :cond_2

    .line 157
    .line 154
    :cond_1
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 159
    :cond_2
    move-object v7, v2

    move-object v8, v0

    iget-object v8, v8, Lcom/google/zxing/qrcode/decoder/Version;->alignmentPatternCenters:[I

    move v9, v6

    aget v8, v8, v9

    const/4 v9, 0x2

    add-int/lit8 v8, v8, -0x2

    move v9, v5

    const/4 v10, 0x5

    const/4 v11, 0x5

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V

    goto :goto_2

    .line 152
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 164
    .end local v5    # "i":I
    .end local v6    # "y":I
    :cond_4
    move-object v7, v2

    const/4 v8, 0x6

    const/16 v9, 0x9

    const/4 v10, 0x1

    move v11, v1

    const/16 v12, 0x11

    add-int/lit8 v11, v11, -0x11

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V

    .line 166
    move-object v7, v2

    const/16 v8, 0x9

    const/4 v9, 0x6

    move v10, v1

    const/16 v11, 0x11

    add-int/lit8 v10, v10, -0x11

    const/4 v11, 0x1

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V

    .line 168
    move-object v7, v0

    iget v7, v7, Lcom/google/zxing/qrcode/decoder/Version;->versionNumber:I

    const/4 v8, 0x6

    if-le v7, v8, :cond_5

    .line 170
    move-object v7, v2

    move v8, v1

    const/16 v9, 0xb

    add-int/lit8 v8, v8, -0xb

    const/4 v9, 0x0

    const/4 v10, 0x3

    const/4 v11, 0x6

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V

    .line 172
    move-object v7, v2

    const/4 v8, 0x0

    move v9, v1

    const/16 v10, 0xb

    add-int/lit8 v9, v9, -0xb

    const/4 v10, 0x6

    const/4 v11, 0x3

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V

    .line 175
    :cond_5
    move-object v7, v2

    move-object v0, v7

    .end local v0    # "this":Lcom/google/zxing/qrcode/decoder/Version;
    return-object v0
.end method

.method public getAlignmentPatternCenters()[I
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/decoder/Version;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/qrcode/decoder/Version;->alignmentPatternCenters:[I

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/qrcode/decoder/Version;
    return-object v0
.end method

.method public getDimensionForVersion()I
    .locals 4

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/decoder/Version;
    const/16 v1, 0x11

    const/4 v2, 0x4

    move-object v3, v0

    iget v3, v3, Lcom/google/zxing/qrcode/decoder/Version;->versionNumber:I

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Lcom/google/zxing/qrcode/decoder/Version;
    return v0
.end method

.method public getECBlocksForLevel(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;
    .locals 4

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/decoder/Version;
    move-object v1, p1

    .local v1, "ecLevel":Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/zxing/qrcode/decoder/Version;->ecBlocks:[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-object v3, v1

    invoke-virtual {v3}, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->ordinal()I

    move-result v3

    aget-object v2, v2, v3

    move-object v0, v2

    .end local v0    # "this":Lcom/google/zxing/qrcode/decoder/Version;
    return-object v0
.end method

.method public getTotalCodewords()I
    .locals 2

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/decoder/Version;
    move-object v1, v0

    iget v1, v1, Lcom/google/zxing/qrcode/decoder/Version;->totalCodewords:I

    move v0, v1

    .end local v0    # "this":Lcom/google/zxing/qrcode/decoder/Version;
    return v0
.end method

.method public getVersionNumber()I
    .locals 2

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/decoder/Version;
    move-object v1, v0

    iget v1, v1, Lcom/google/zxing/qrcode/decoder/Version;->versionNumber:I

    move v0, v1

    .end local v0    # "this":Lcom/google/zxing/qrcode/decoder/Version;
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 239
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/decoder/Version;
    move-object v1, v0

    iget v1, v1, Lcom/google/zxing/qrcode/decoder/Version;->versionNumber:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/qrcode/decoder/Version;
    return-object v0
.end method
