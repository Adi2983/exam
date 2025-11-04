.class public final Lcom/google/zxing/datamatrix/decoder/Version;
.super Ljava/lang/Object;
.source "Version.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/datamatrix/decoder/Version$1;,
        Lcom/google/zxing/datamatrix/decoder/Version$ECB;,
        Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;
    }
.end annotation


# static fields
.field private static final VERSIONS:[Lcom/google/zxing/datamatrix/decoder/Version;


# instance fields
.field private final dataRegionSizeColumns:I

.field private final dataRegionSizeRows:I

.field private final ecBlocks:Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

.field private final symbolSizeColumns:I

.field private final symbolSizeRows:I

.field private final totalCodewords:I

.field private final versionNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Lcom/google/zxing/datamatrix/decoder/Version;->buildVersions()[Lcom/google/zxing/datamatrix/decoder/Version;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/datamatrix/decoder/Version;->VERSIONS:[Lcom/google/zxing/datamatrix/decoder/Version;

    return-void
.end method

.method private constructor <init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V
    .locals 18

    .prologue
    .line 44
    move-object/from16 v0, p0

    .local v0, "this":Lcom/google/zxing/datamatrix/decoder/Version;
    move/from16 v1, p1

    .local v1, "versionNumber":I
    move/from16 v2, p2

    .local v2, "symbolSizeRows":I
    move/from16 v3, p3

    .local v3, "symbolSizeColumns":I
    move/from16 v4, p4

    .local v4, "dataRegionSizeRows":I
    move/from16 v5, p5

    .local v5, "dataRegionSizeColumns":I
    move-object/from16 v6, p6

    .local v6, "ecBlocks":Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;
    move-object v14, v0

    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    .line 45
    move-object v14, v0

    move v15, v1

    iput v15, v14, Lcom/google/zxing/datamatrix/decoder/Version;->versionNumber:I

    .line 46
    move-object v14, v0

    move v15, v2

    iput v15, v14, Lcom/google/zxing/datamatrix/decoder/Version;->symbolSizeRows:I

    .line 47
    move-object v14, v0

    move v15, v3

    iput v15, v14, Lcom/google/zxing/datamatrix/decoder/Version;->symbolSizeColumns:I

    .line 48
    move-object v14, v0

    move v15, v4

    iput v15, v14, Lcom/google/zxing/datamatrix/decoder/Version;->dataRegionSizeRows:I

    .line 49
    move-object v14, v0

    move v15, v5

    iput v15, v14, Lcom/google/zxing/datamatrix/decoder/Version;->dataRegionSizeColumns:I

    .line 50
    move-object v14, v0

    move-object v15, v6

    iput-object v15, v14, Lcom/google/zxing/datamatrix/decoder/Version;->ecBlocks:Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    .line 53
    const/4 v14, 0x0

    move v7, v14

    .line 54
    .local v7, "total":I
    move-object v14, v6

    invoke-virtual {v14}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;->getECCodewords()I

    move-result v14

    move v8, v14

    .line 55
    .local v8, "ecCodewords":I
    move-object v14, v6

    invoke-virtual {v14}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;->getECBlocks()[Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    move-result-object v14

    move-object v9, v14

    .line 56
    .local v9, "ecbArray":[Lcom/google/zxing/datamatrix/decoder/Version$ECB;
    move-object v14, v9

    move-object v10, v14

    .local v10, "arr$":[Lcom/google/zxing/datamatrix/decoder/Version$ECB;
    move-object v14, v10

    array-length v14, v14

    move v11, v14

    .local v11, "len$":I
    const/4 v14, 0x0

    move v12, v14

    .local v12, "i$":I
    :goto_0
    move v14, v12

    move v15, v11

    if-ge v14, v15, :cond_0

    move-object v14, v10

    move v15, v12

    aget-object v14, v14, v15

    move-object v13, v14

    .line 57
    .local v13, "ecBlock":Lcom/google/zxing/datamatrix/decoder/Version$ECB;
    move v14, v7

    move-object v15, v13

    invoke-virtual {v15}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;->getCount()I

    move-result v15

    move-object/from16 v16, v13

    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;->getDataCodewords()I

    move-result v16

    move/from16 v17, v8

    add-int v16, v16, v17

    mul-int v15, v15, v16

    add-int/2addr v14, v15

    move v7, v14

    .line 56
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 59
    .end local v13    # "ecBlock":Lcom/google/zxing/datamatrix/decoder/Version$ECB;
    :cond_0
    move-object v14, v0

    move v15, v7

    iput v15, v14, Lcom/google/zxing/datamatrix/decoder/Version;->totalCodewords:I

    .line 60
    return-void
.end method

.method private static buildVersions()[Lcom/google/zxing/datamatrix/decoder/Version;
    .locals 20

    .prologue
    .line 173
    const/16 v0, 0x1e

    new-array v0, v0, [Lcom/google/zxing/datamatrix/decoder/Version;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v19

    const/4 v2, 0x0

    new-instance v3, Lcom/google/zxing/datamatrix/decoder/Version;

    move-object/from16 v19, v3

    move-object/from16 v3, v19

    move-object/from16 v4, v19

    const/4 v5, 0x1

    const/16 v6, 0xa

    const/16 v7, 0xa

    const/16 v8, 0x8

    const/16 v9, 0x8

    new-instance v10, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    move-object/from16 v19, v10

    move-object/from16 v10, v19

    move-object/from16 v11, v19

    const/4 v12, 0x5

    new-instance v13, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    const/4 v15, 0x1

    const/16 v16, 0x3

    const/16 v17, 0x0

    invoke-direct/range {v14 .. v17}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$1;)V

    const/4 v14, 0x0

    invoke-direct {v11, v12, v13, v14}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$1;)V

    invoke-direct/range {v4 .. v10}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    aput-object v3, v1, v2

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v19

    const/4 v2, 0x1

    new-instance v3, Lcom/google/zxing/datamatrix/decoder/Version;

    move-object/from16 v19, v3

    move-object/from16 v3, v19

    move-object/from16 v4, v19

    const/4 v5, 0x2

    const/16 v6, 0xc

    const/16 v7, 0xc

    const/16 v8, 0xa

    const/16 v9, 0xa

    new-instance v10, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    move-object/from16 v19, v10

    move-object/from16 v10, v19

    move-object/from16 v11, v19

    const/4 v12, 0x7

    new-instance v13, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    const/4 v15, 0x1

    const/16 v16, 0x5

    const/16 v17, 0x0

    invoke-direct/range {v14 .. v17}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$1;)V

    const/4 v14, 0x0

    invoke-direct {v11, v12, v13, v14}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$1;)V

    invoke-direct/range {v4 .. v10}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    aput-object v3, v1, v2

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v19

    const/4 v2, 0x2

    new-instance v3, Lcom/google/zxing/datamatrix/decoder/Version;

    move-object/from16 v19, v3

    move-object/from16 v3, v19

    move-object/from16 v4, v19

    const/4 v5, 0x3

    const/16 v6, 0xe

    const/16 v7, 0xe

    const/16 v8, 0xc

    const/16 v9, 0xc

    new-instance v10, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    move-object/from16 v19, v10

    move-object/from16 v10, v19

    move-object/from16 v11, v19

    const/16 v12, 0xa

    new-instance v13, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    const/4 v15, 0x1

    const/16 v16, 0x8

    const/16 v17, 0x0

    invoke-direct/range {v14 .. v17}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$1;)V

    const/4 v14, 0x0

    invoke-direct {v11, v12, v13, v14}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$1;)V

    invoke-direct/range {v4 .. v10}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    aput-object v3, v1, v2

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v19

    const/4 v2, 0x3

    new-instance v3, Lcom/google/zxing/datamatrix/decoder/Version;

    move-object/from16 v19, v3

    move-object/from16 v3, v19

    move-object/from16 v4, v19

    const/4 v5, 0x4

    const/16 v6, 0x10

    const/16 v7, 0x10

    const/16 v8, 0xe

    const/16 v9, 0xe

    new-instance v10, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    move-object/from16 v19, v10

    move-object/from16 v10, v19

    move-object/from16 v11, v19

    const/16 v12, 0xc

    new-instance v13, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    const/4 v15, 0x1

    const/16 v16, 0xc

    const/16 v17, 0x0

    invoke-direct/range {v14 .. v17}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$1;)V

    const/4 v14, 0x0

    invoke-direct {v11, v12, v13, v14}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$1;)V

    invoke-direct/range {v4 .. v10}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    aput-object v3, v1, v2

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v19

    const/4 v2, 0x4

    new-instance v3, Lcom/google/zxing/datamatrix/decoder/Version;

    move-object/from16 v19, v3

    move-object/from16 v3, v19

    move-object/from16 v4, v19

    const/4 v5, 0x5

    const/16 v6, 0x12

    const/16 v7, 0x12

    const/16 v8, 0x10

    const/16 v9, 0x10

    new-instance v10, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    move-object/from16 v19, v10

    move-object/from16 v10, v19

    move-object/from16 v11, v19

    const/16 v12, 0xe

    new-instance v13, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    const/4 v15, 0x1

    const/16 v16, 0x12

    const/16 v17, 0x0

    invoke-direct/range {v14 .. v17}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$1;)V

    const/4 v14, 0x0

    invoke-direct {v11, v12, v13, v14}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$1;)V

    invoke-direct/range {v4 .. v10}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    aput-object v3, v1, v2

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v19

    const/4 v2, 0x5

    new-instance v3, Lcom/google/zxing/datamatrix/decoder/Version;

    move-object/from16 v19, v3

    move-object/from16 v3, v19

    move-object/from16 v4, v19

    const/4 v5, 0x6

    const/16 v6, 0x14

    const/16 v7, 0x14

    const/16 v8, 0x12

    const/16 v9, 0x12

    new-instance v10, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    move-object/from16 v19, v10

    move-object/from16 v10, v19

    move-object/from16 v11, v19

    const/16 v12, 0x12

    new-instance v13, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    const/4 v15, 0x1

    const/16 v16, 0x16

    const/16 v17, 0x0

    invoke-direct/range {v14 .. v17}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$1;)V

    const/4 v14, 0x0

    invoke-direct {v11, v12, v13, v14}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$1;)V

    invoke-direct/range {v4 .. v10}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    aput-object v3, v1, v2

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v19

    const/4 v2, 0x6

    new-instance v3, Lcom/google/zxing/datamatrix/decoder/Version;

    move-object/from16 v19, v3

    move-object/from16 v3, v19

    move-object/from16 v4, v19

    const/4 v5, 0x7

    const/16 v6, 0x16

    const/16 v7, 0x16

    const/16 v8, 0x14

    const/16 v9, 0x14

    new-instance v10, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    move-object/from16 v19, v10

    move-object/from16 v10, v19

    move-object/from16 v11, v19

    const/16 v12, 0x14

    new-instance v13, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    const/4 v15, 0x1

    const/16 v16, 0x1e

    const/16 v17, 0x0

    invoke-direct/range {v14 .. v17}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$1;)V

    const/4 v14, 0x0

    invoke-direct {v11, v12, v13, v14}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$1;)V

    invoke-direct/range {v4 .. v10}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    aput-object v3, v1, v2

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v19

    const/4 v2, 0x7

    new-instance v3, Lcom/google/zxing/datamatrix/decoder/Version;

    move-object/from16 v19, v3

    move-object/from16 v3, v19

    move-object/from16 v4, v19

    const/16 v5, 0x8

    const/16 v6, 0x18

    const/16 v7, 0x18

    const/16 v8, 0x16

    const/16 v9, 0x16

    new-instance v10, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    move-object/from16 v19, v10

    move-object/from16 v10, v19

    move-object/from16 v11, v19

    const/16 v12, 0x18

    new-instance v13, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    const/4 v15, 0x1

    const/16 v16, 0x24

    const/16 v17, 0x0

    invoke-direct/range {v14 .. v17}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$1;)V

    const/4 v14, 0x0

    invoke-direct {v11, v12, v13, v14}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$1;)V

    invoke-direct/range {v4 .. v10}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    aput-object v3, v1, v2

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v19

    const/16 v2, 0x8

    new-instance v3, Lcom/google/zxing/datamatrix/decoder/Version;

    move-object/from16 v19, v3

    move-object/from16 v3, v19

    move-object/from16 v4, v19

    const/16 v5, 0x9

    const/16 v6, 0x1a

    const/16 v7, 0x1a

    const/16 v8, 0x18

    const/16 v9, 0x18

    new-instance v10, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    move-object/from16 v19, v10

    move-object/from16 v10, v19

    move-object/from16 v11, v19

    const/16 v12, 0x1c

    new-instance v13, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    const/4 v15, 0x1

    const/16 v16, 0x2c

    const/16 v17, 0x0

    invoke-direct/range {v14 .. v17}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$1;)V

    const/4 v14, 0x0

    invoke-direct {v11, v12, v13, v14}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$1;)V

    invoke-direct/range {v4 .. v10}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    aput-object v3, v1, v2

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v19

    const/16 v2, 0x9

    new-instance v3, Lcom/google/zxing/datamatrix/decoder/Version;

    move-object/from16 v19, v3

    move-object/from16 v3, v19

    move-object/from16 v4, v19

    const/16 v5, 0xa

    const/16 v6, 0x20

    const/16 v7, 0x20

    const/16 v8, 0xe

    const/16 v9, 0xe

    new-instance v10, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    move-object/from16 v19, v10

    move-object/from16 v10, v19

    move-object/from16 v11, v19

    const/16 v12, 0x24

    new-instance v13, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    const/4 v15, 0x1

    const/16 v16, 0x3e

    const/16 v17, 0x0

    invoke-direct/range {v14 .. v17}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$1;)V

    const/4 v14, 0x0

    invoke-direct {v11, v12, v13, v14}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$1;)V

    invoke-direct/range {v4 .. v10}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    aput-object v3, v1, v2

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v19

    const/16 v2, 0xa

    new-instance v3, Lcom/google/zxing/datamatrix/decoder/Version;

    move-object/from16 v19, v3

    move-object/from16 v3, v19

    move-object/from16 v4, v19

    const/16 v5, 0xb

    const/16 v6, 0x24

    const/16 v7, 0x24

    const/16 v8, 0x10

    const/16 v9, 0x10

    new-instance v10, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    move-object/from16 v19, v10

    move-object/from16 v10, v19

    move-object/from16 v11, v19

    const/16 v12, 0x2a

    new-instance v13, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    const/4 v15, 0x1

    const/16 v16, 0x56

    const/16 v17, 0x0

    invoke-direct/range {v14 .. v17}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$1;)V

    const/4 v14, 0x0

    invoke-direct {v11, v12, v13, v14}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$1;)V

    invoke-direct/range {v4 .. v10}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    aput-object v3, v1, v2

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v19

    const/16 v2, 0xb

    new-instance v3, Lcom/google/zxing/datamatrix/decoder/Version;

    move-object/from16 v19, v3

    move-object/from16 v3, v19

    move-object/from16 v4, v19

    const/16 v5, 0xc

    const/16 v6, 0x28

    const/16 v7, 0x28

    const/16 v8, 0x12

    const/16 v9, 0x12

    new-instance v10, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    move-object/from16 v19, v10

    move-object/from16 v10, v19

    move-object/from16 v11, v19

    const/16 v12, 0x30

    new-instance v13, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    const/4 v15, 0x1

    const/16 v16, 0x72

    const/16 v17, 0x0

    invoke-direct/range {v14 .. v17}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$1;)V

    const/4 v14, 0x0

    invoke-direct {v11, v12, v13, v14}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$1;)V

    invoke-direct/range {v4 .. v10}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    aput-object v3, v1, v2

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v19

    const/16 v2, 0xc

    new-instance v3, Lcom/google/zxing/datamatrix/decoder/Version;

    move-object/from16 v19, v3

    move-object/from16 v3, v19

    move-object/from16 v4, v19

    const/16 v5, 0xd

    const/16 v6, 0x2c

    const/16 v7, 0x2c

    const/16 v8, 0x14

    const/16 v9, 0x14

    new-instance v10, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    move-object/from16 v19, v10

    move-object/from16 v10, v19

    move-object/from16 v11, v19

    const/16 v12, 0x38

    new-instance v13, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    const/4 v15, 0x1

    const/16 v16, 0x90

    const/16 v17, 0x0

    invoke-direct/range {v14 .. v17}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$1;)V

    const/4 v14, 0x0

    invoke-direct {v11, v12, v13, v14}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$1;)V

    invoke-direct/range {v4 .. v10}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    aput-object v3, v1, v2

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v19

    const/16 v2, 0xd

    new-instance v3, Lcom/google/zxing/datamatrix/decoder/Version;

    move-object/from16 v19, v3

    move-object/from16 v3, v19

    move-object/from16 v4, v19

    const/16 v5, 0xe

    const/16 v6, 0x30

    const/16 v7, 0x30

    const/16 v8, 0x16

    const/16 v9, 0x16

    new-instance v10, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    move-object/from16 v19, v10

    move-object/from16 v10, v19

    move-object/from16 v11, v19

    const/16 v12, 0x44

    new-instance v13, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    const/4 v15, 0x1

    const/16 v16, 0xae

    const/16 v17, 0x0

    invoke-direct/range {v14 .. v17}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$1;)V

    const/4 v14, 0x0

    invoke-direct {v11, v12, v13, v14}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$1;)V

    invoke-direct/range {v4 .. v10}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    aput-object v3, v1, v2

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v19

    const/16 v2, 0xe

    new-instance v3, Lcom/google/zxing/datamatrix/decoder/Version;

    move-object/from16 v19, v3

    move-object/from16 v3, v19

    move-object/from16 v4, v19

    const/16 v5, 0xf

    const/16 v6, 0x34

    const/16 v7, 0x34

    const/16 v8, 0x18

    const/16 v9, 0x18

    new-instance v10, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    move-object/from16 v19, v10

    move-object/from16 v10, v19

    move-object/from16 v11, v19

    const/16 v12, 0x2a

    new-instance v13, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    const/4 v15, 0x2

    const/16 v16, 0x66

    const/16 v17, 0x0

    invoke-direct/range {v14 .. v17}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$1;)V

    const/4 v14, 0x0

    invoke-direct {v11, v12, v13, v14}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$1;)V

    invoke-direct/range {v4 .. v10}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    aput-object v3, v1, v2

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v19

    const/16 v2, 0xf

    new-instance v3, Lcom/google/zxing/datamatrix/decoder/Version;

    move-object/from16 v19, v3

    move-object/from16 v3, v19

    move-object/from16 v4, v19

    const/16 v5, 0x10

    const/16 v6, 0x40

    const/16 v7, 0x40

    const/16 v8, 0xe

    const/16 v9, 0xe

    new-instance v10, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    move-object/from16 v19, v10

    move-object/from16 v10, v19

    move-object/from16 v11, v19

    const/16 v12, 0x38

    new-instance v13, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    const/4 v15, 0x2

    const/16 v16, 0x8c

    const/16 v17, 0x0

    invoke-direct/range {v14 .. v17}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$1;)V

    const/4 v14, 0x0

    invoke-direct {v11, v12, v13, v14}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$1;)V

    invoke-direct/range {v4 .. v10}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    aput-object v3, v1, v2

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v19

    const/16 v2, 0x10

    new-instance v3, Lcom/google/zxing/datamatrix/decoder/Version;

    move-object/from16 v19, v3

    move-object/from16 v3, v19

    move-object/from16 v4, v19

    const/16 v5, 0x11

    const/16 v6, 0x48

    const/16 v7, 0x48

    const/16 v8, 0x10

    const/16 v9, 0x10

    new-instance v10, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    move-object/from16 v19, v10

    move-object/from16 v10, v19

    move-object/from16 v11, v19

    const/16 v12, 0x24

    new-instance v13, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    const/4 v15, 0x4

    const/16 v16, 0x5c

    const/16 v17, 0x0

    invoke-direct/range {v14 .. v17}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$1;)V

    const/4 v14, 0x0

    invoke-direct {v11, v12, v13, v14}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$1;)V

    invoke-direct/range {v4 .. v10}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    aput-object v3, v1, v2

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v19

    const/16 v2, 0x11

    new-instance v3, Lcom/google/zxing/datamatrix/decoder/Version;

    move-object/from16 v19, v3

    move-object/from16 v3, v19

    move-object/from16 v4, v19

    const/16 v5, 0x12

    const/16 v6, 0x50

    const/16 v7, 0x50

    const/16 v8, 0x12

    const/16 v9, 0x12

    new-instance v10, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    move-object/from16 v19, v10

    move-object/from16 v10, v19

    move-object/from16 v11, v19

    const/16 v12, 0x30

    new-instance v13, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    const/4 v15, 0x4

    const/16 v16, 0x72

    const/16 v17, 0x0

    invoke-direct/range {v14 .. v17}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$1;)V

    const/4 v14, 0x0

    invoke-direct {v11, v12, v13, v14}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$1;)V

    invoke-direct/range {v4 .. v10}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    aput-object v3, v1, v2

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v19

    const/16 v2, 0x12

    new-instance v3, Lcom/google/zxing/datamatrix/decoder/Version;

    move-object/from16 v19, v3

    move-object/from16 v3, v19

    move-object/from16 v4, v19

    const/16 v5, 0x13

    const/16 v6, 0x58

    const/16 v7, 0x58

    const/16 v8, 0x14

    const/16 v9, 0x14

    new-instance v10, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    move-object/from16 v19, v10

    move-object/from16 v10, v19

    move-object/from16 v11, v19

    const/16 v12, 0x38

    new-instance v13, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    const/4 v15, 0x4

    const/16 v16, 0x90

    const/16 v17, 0x0

    invoke-direct/range {v14 .. v17}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$1;)V

    const/4 v14, 0x0

    invoke-direct {v11, v12, v13, v14}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$1;)V

    invoke-direct/range {v4 .. v10}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    aput-object v3, v1, v2

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v19

    const/16 v2, 0x13

    new-instance v3, Lcom/google/zxing/datamatrix/decoder/Version;

    move-object/from16 v19, v3

    move-object/from16 v3, v19

    move-object/from16 v4, v19

    const/16 v5, 0x14

    const/16 v6, 0x60

    const/16 v7, 0x60

    const/16 v8, 0x16

    const/16 v9, 0x16

    new-instance v10, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    move-object/from16 v19, v10

    move-object/from16 v10, v19

    move-object/from16 v11, v19

    const/16 v12, 0x44

    new-instance v13, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    const/4 v15, 0x4

    const/16 v16, 0xae

    const/16 v17, 0x0

    invoke-direct/range {v14 .. v17}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$1;)V

    const/4 v14, 0x0

    invoke-direct {v11, v12, v13, v14}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$1;)V

    invoke-direct/range {v4 .. v10}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    aput-object v3, v1, v2

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v19

    const/16 v2, 0x14

    new-instance v3, Lcom/google/zxing/datamatrix/decoder/Version;

    move-object/from16 v19, v3

    move-object/from16 v3, v19

    move-object/from16 v4, v19

    const/16 v5, 0x15

    const/16 v6, 0x68

    const/16 v7, 0x68

    const/16 v8, 0x18

    const/16 v9, 0x18

    new-instance v10, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    move-object/from16 v19, v10

    move-object/from16 v10, v19

    move-object/from16 v11, v19

    const/16 v12, 0x38

    new-instance v13, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    const/4 v15, 0x6

    const/16 v16, 0x88

    const/16 v17, 0x0

    invoke-direct/range {v14 .. v17}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$1;)V

    const/4 v14, 0x0

    invoke-direct {v11, v12, v13, v14}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$1;)V

    invoke-direct/range {v4 .. v10}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    aput-object v3, v1, v2

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v19

    const/16 v2, 0x15

    new-instance v3, Lcom/google/zxing/datamatrix/decoder/Version;

    move-object/from16 v19, v3

    move-object/from16 v3, v19

    move-object/from16 v4, v19

    const/16 v5, 0x16

    const/16 v6, 0x78

    const/16 v7, 0x78

    const/16 v8, 0x12

    const/16 v9, 0x12

    new-instance v10, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    move-object/from16 v19, v10

    move-object/from16 v10, v19

    move-object/from16 v11, v19

    const/16 v12, 0x44

    new-instance v13, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    const/4 v15, 0x6

    const/16 v16, 0xaf

    const/16 v17, 0x0

    invoke-direct/range {v14 .. v17}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$1;)V

    const/4 v14, 0x0

    invoke-direct {v11, v12, v13, v14}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$1;)V

    invoke-direct/range {v4 .. v10}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    aput-object v3, v1, v2

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v19

    const/16 v2, 0x16

    new-instance v3, Lcom/google/zxing/datamatrix/decoder/Version;

    move-object/from16 v19, v3

    move-object/from16 v3, v19

    move-object/from16 v4, v19

    const/16 v5, 0x17

    const/16 v6, 0x84

    const/16 v7, 0x84

    const/16 v8, 0x14

    const/16 v9, 0x14

    new-instance v10, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    move-object/from16 v19, v10

    move-object/from16 v10, v19

    move-object/from16 v11, v19

    const/16 v12, 0x3e

    new-instance v13, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    const/16 v15, 0x8

    const/16 v16, 0xa3

    const/16 v17, 0x0

    invoke-direct/range {v14 .. v17}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$1;)V

    const/4 v14, 0x0

    invoke-direct {v11, v12, v13, v14}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$1;)V

    invoke-direct/range {v4 .. v10}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    aput-object v3, v1, v2

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v19

    const/16 v2, 0x17

    new-instance v3, Lcom/google/zxing/datamatrix/decoder/Version;

    move-object/from16 v19, v3

    move-object/from16 v3, v19

    move-object/from16 v4, v19

    const/16 v5, 0x18

    const/16 v6, 0x90

    const/16 v7, 0x90

    const/16 v8, 0x16

    const/16 v9, 0x16

    new-instance v10, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    move-object/from16 v19, v10

    move-object/from16 v10, v19

    move-object/from16 v11, v19

    const/16 v12, 0x3e

    new-instance v13, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    const/16 v15, 0x8

    const/16 v16, 0x9c

    const/16 v17, 0x0

    invoke-direct/range {v14 .. v17}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$1;)V

    new-instance v14, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    const/16 v16, 0x2

    const/16 v17, 0x9b

    const/16 v18, 0x0

    invoke-direct/range {v15 .. v18}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$1;)V

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$1;)V

    invoke-direct/range {v4 .. v10}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    aput-object v3, v1, v2

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v19

    const/16 v2, 0x18

    new-instance v3, Lcom/google/zxing/datamatrix/decoder/Version;

    move-object/from16 v19, v3

    move-object/from16 v3, v19

    move-object/from16 v4, v19

    const/16 v5, 0x19

    const/16 v6, 0x8

    const/16 v7, 0x12

    const/4 v8, 0x6

    const/16 v9, 0x10

    new-instance v10, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    move-object/from16 v19, v10

    move-object/from16 v10, v19

    move-object/from16 v11, v19

    const/4 v12, 0x7

    new-instance v13, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    const/4 v15, 0x1

    const/16 v16, 0x5

    const/16 v17, 0x0

    invoke-direct/range {v14 .. v17}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$1;)V

    const/4 v14, 0x0

    invoke-direct {v11, v12, v13, v14}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$1;)V

    invoke-direct/range {v4 .. v10}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    aput-object v3, v1, v2

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v19

    const/16 v2, 0x19

    new-instance v3, Lcom/google/zxing/datamatrix/decoder/Version;

    move-object/from16 v19, v3

    move-object/from16 v3, v19

    move-object/from16 v4, v19

    const/16 v5, 0x1a

    const/16 v6, 0x8

    const/16 v7, 0x20

    const/4 v8, 0x6

    const/16 v9, 0xe

    new-instance v10, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    move-object/from16 v19, v10

    move-object/from16 v10, v19

    move-object/from16 v11, v19

    const/16 v12, 0xb

    new-instance v13, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    const/4 v15, 0x1

    const/16 v16, 0xa

    const/16 v17, 0x0

    invoke-direct/range {v14 .. v17}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$1;)V

    const/4 v14, 0x0

    invoke-direct {v11, v12, v13, v14}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$1;)V

    invoke-direct/range {v4 .. v10}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    aput-object v3, v1, v2

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v19

    const/16 v2, 0x1a

    new-instance v3, Lcom/google/zxing/datamatrix/decoder/Version;

    move-object/from16 v19, v3

    move-object/from16 v3, v19

    move-object/from16 v4, v19

    const/16 v5, 0x1b

    const/16 v6, 0xc

    const/16 v7, 0x1a

    const/16 v8, 0xa

    const/16 v9, 0x18

    new-instance v10, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    move-object/from16 v19, v10

    move-object/from16 v10, v19

    move-object/from16 v11, v19

    const/16 v12, 0xe

    new-instance v13, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    const/4 v15, 0x1

    const/16 v16, 0x10

    const/16 v17, 0x0

    invoke-direct/range {v14 .. v17}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$1;)V

    const/4 v14, 0x0

    invoke-direct {v11, v12, v13, v14}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$1;)V

    invoke-direct/range {v4 .. v10}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    aput-object v3, v1, v2

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v19

    const/16 v2, 0x1b

    new-instance v3, Lcom/google/zxing/datamatrix/decoder/Version;

    move-object/from16 v19, v3

    move-object/from16 v3, v19

    move-object/from16 v4, v19

    const/16 v5, 0x1c

    const/16 v6, 0xc

    const/16 v7, 0x24

    const/16 v8, 0xa

    const/16 v9, 0x10

    new-instance v10, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    move-object/from16 v19, v10

    move-object/from16 v10, v19

    move-object/from16 v11, v19

    const/16 v12, 0x12

    new-instance v13, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    const/4 v15, 0x1

    const/16 v16, 0x16

    const/16 v17, 0x0

    invoke-direct/range {v14 .. v17}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$1;)V

    const/4 v14, 0x0

    invoke-direct {v11, v12, v13, v14}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$1;)V

    invoke-direct/range {v4 .. v10}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    aput-object v3, v1, v2

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v19

    const/16 v2, 0x1c

    new-instance v3, Lcom/google/zxing/datamatrix/decoder/Version;

    move-object/from16 v19, v3

    move-object/from16 v3, v19

    move-object/from16 v4, v19

    const/16 v5, 0x1d

    const/16 v6, 0x10

    const/16 v7, 0x24

    const/16 v8, 0xe

    const/16 v9, 0x10

    new-instance v10, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    move-object/from16 v19, v10

    move-object/from16 v10, v19

    move-object/from16 v11, v19

    const/16 v12, 0x18

    new-instance v13, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    const/4 v15, 0x1

    const/16 v16, 0x20

    const/16 v17, 0x0

    invoke-direct/range {v14 .. v17}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$1;)V

    const/4 v14, 0x0

    invoke-direct {v11, v12, v13, v14}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$1;)V

    invoke-direct/range {v4 .. v10}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    aput-object v3, v1, v2

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v19

    const/16 v2, 0x1d

    new-instance v3, Lcom/google/zxing/datamatrix/decoder/Version;

    move-object/from16 v19, v3

    move-object/from16 v3, v19

    move-object/from16 v4, v19

    const/16 v5, 0x1e

    const/16 v6, 0x10

    const/16 v7, 0x30

    const/16 v8, 0xe

    const/16 v9, 0x16

    new-instance v10, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    move-object/from16 v19, v10

    move-object/from16 v10, v19

    move-object/from16 v11, v19

    const/16 v12, 0x1c

    new-instance v13, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    const/4 v15, 0x1

    const/16 v16, 0x31

    const/16 v17, 0x0

    invoke-direct/range {v14 .. v17}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$1;)V

    const/4 v14, 0x0

    invoke-direct {v11, v12, v13, v14}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$1;)V

    invoke-direct/range {v4 .. v10}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    aput-object v3, v1, v2

    return-object v0
.end method

.method public static getVersionForDimensions(II)Lcom/google/zxing/datamatrix/decoder/Version;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 99
    move v0, p0

    .local v0, "numRows":I
    move v1, p1

    .local v1, "numColumns":I
    move v6, v0

    const/4 v7, 0x1

    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_0

    move v6, v1

    const/4 v7, 0x1

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_1

    .line 100
    :cond_0
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6

    .line 103
    :cond_1
    sget-object v6, Lcom/google/zxing/datamatrix/decoder/Version;->VERSIONS:[Lcom/google/zxing/datamatrix/decoder/Version;

    move-object v2, v6

    .local v2, "arr$":[Lcom/google/zxing/datamatrix/decoder/Version;
    move-object v6, v2

    array-length v6, v6

    move v3, v6

    .local v3, "len$":I
    const/4 v6, 0x0

    move v4, v6

    .local v4, "i$":I
    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_3

    move-object v6, v2

    move v7, v4

    aget-object v6, v6, v7

    move-object v5, v6

    .line 104
    .local v5, "version":Lcom/google/zxing/datamatrix/decoder/Version;
    move-object v6, v5

    iget v6, v6, Lcom/google/zxing/datamatrix/decoder/Version;->symbolSizeRows:I

    move v7, v0

    if-ne v6, v7, :cond_2

    move-object v6, v5

    iget v6, v6, Lcom/google/zxing/datamatrix/decoder/Version;->symbolSizeColumns:I

    move v7, v1

    if-ne v6, v7, :cond_2

    .line 105
    move-object v6, v5

    move-object v0, v6

    .end local v0    # "numRows":I
    return-object v0

    .line 103
    .restart local v0    # "numRows":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 109
    .end local v5    # "version":Lcom/google/zxing/datamatrix/decoder/Version;
    :cond_3
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6
.end method


# virtual methods
.method public getDataRegionSizeColumns()I
    .locals 2

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/datamatrix/decoder/Version;
    move-object v1, v0

    iget v1, v1, Lcom/google/zxing/datamatrix/decoder/Version;->dataRegionSizeColumns:I

    move v0, v1

    .end local v0    # "this":Lcom/google/zxing/datamatrix/decoder/Version;
    return v0
.end method

.method public getDataRegionSizeRows()I
    .locals 2

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/datamatrix/decoder/Version;
    move-object v1, v0

    iget v1, v1, Lcom/google/zxing/datamatrix/decoder/Version;->dataRegionSizeRows:I

    move v0, v1

    .end local v0    # "this":Lcom/google/zxing/datamatrix/decoder/Version;
    return v0
.end method

.method getECBlocks()Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;
    .locals 2

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/datamatrix/decoder/Version;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/datamatrix/decoder/Version;->ecBlocks:Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/datamatrix/decoder/Version;
    return-object v0
.end method

.method public getSymbolSizeColumns()I
    .locals 2

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/datamatrix/decoder/Version;
    move-object v1, v0

    iget v1, v1, Lcom/google/zxing/datamatrix/decoder/Version;->symbolSizeColumns:I

    move v0, v1

    .end local v0    # "this":Lcom/google/zxing/datamatrix/decoder/Version;
    return v0
.end method

.method public getSymbolSizeRows()I
    .locals 2

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/datamatrix/decoder/Version;
    move-object v1, v0

    iget v1, v1, Lcom/google/zxing/datamatrix/decoder/Version;->symbolSizeRows:I

    move v0, v1

    .end local v0    # "this":Lcom/google/zxing/datamatrix/decoder/Version;
    return v0
.end method

.method public getTotalCodewords()I
    .locals 2

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/datamatrix/decoder/Version;
    move-object v1, v0

    iget v1, v1, Lcom/google/zxing/datamatrix/decoder/Version;->totalCodewords:I

    move v0, v1

    .end local v0    # "this":Lcom/google/zxing/datamatrix/decoder/Version;
    return v0
.end method

.method public getVersionNumber()I
    .locals 2

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/datamatrix/decoder/Version;
    move-object v1, v0

    iget v1, v1, Lcom/google/zxing/datamatrix/decoder/Version;->versionNumber:I

    move v0, v1

    .end local v0    # "this":Lcom/google/zxing/datamatrix/decoder/Version;
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/datamatrix/decoder/Version;
    move-object v1, v0

    iget v1, v1, Lcom/google/zxing/datamatrix/decoder/Version;->versionNumber:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/datamatrix/decoder/Version;
    return-object v0
.end method
