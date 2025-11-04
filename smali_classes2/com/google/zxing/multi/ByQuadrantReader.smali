.class public final Lcom/google/zxing/multi/ByQuadrantReader;
.super Ljava/lang/Object;
.source "ByQuadrantReader.java"

# interfaces
.implements Lcom/google/zxing/Reader;


# instance fields
.field private final delegate:Lcom/google/zxing/Reader;


# direct methods
.method public constructor <init>(Lcom/google/zxing/Reader;)V
    .locals 4

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/multi/ByQuadrantReader;
    move-object v1, p1

    .local v1, "delegate":Lcom/google/zxing/Reader;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 43
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/zxing/multi/ByQuadrantReader;->delegate:Lcom/google/zxing/Reader;

    .line 44
    return-void
.end method


# virtual methods
.method public decode(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/multi/ByQuadrantReader;
    move-object v1, p1

    .local v1, "image":Lcom/google/zxing/BinaryBitmap;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/google/zxing/multi/ByQuadrantReader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/google/zxing/multi/ByQuadrantReader;
    return-object v0
.end method

.method public decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/BinaryBitmap;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 56
    move-object/from16 v0, p0

    .local v0, "this":Lcom/google/zxing/multi/ByQuadrantReader;
    move-object/from16 v1, p1

    .local v1, "image":Lcom/google/zxing/BinaryBitmap;
    move-object/from16 v2, p2

    .local v2, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    move-object v14, v1

    invoke-virtual {v14}, Lcom/google/zxing/BinaryBitmap;->getWidth()I

    move-result v14

    move v3, v14

    .line 57
    .local v3, "width":I
    move-object v14, v1

    invoke-virtual {v14}, Lcom/google/zxing/BinaryBitmap;->getHeight()I

    move-result v14

    move v4, v14

    .line 58
    .local v4, "height":I
    move v14, v3

    const/4 v15, 0x2

    div-int/lit8 v14, v14, 0x2

    move v5, v14

    .line 59
    .local v5, "halfWidth":I
    move v14, v4

    const/4 v15, 0x2

    div-int/lit8 v14, v14, 0x2

    move v6, v14

    .line 61
    .local v6, "halfHeight":I
    move-object v14, v1

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v17, v5

    move/from16 v18, v6

    invoke-virtual/range {v14 .. v18}, Lcom/google/zxing/BinaryBitmap;->crop(IIII)Lcom/google/zxing/BinaryBitmap;

    move-result-object v14

    move-object v7, v14

    .line 63
    .local v7, "topLeft":Lcom/google/zxing/BinaryBitmap;
    move-object v14, v0

    :try_start_0
    iget-object v14, v14, Lcom/google/zxing/multi/ByQuadrantReader;->delegate:Lcom/google/zxing/Reader;

    move-object v15, v7

    move-object/from16 v16, v2

    invoke-interface/range {v14 .. v16}, Lcom/google/zxing/Reader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    move-object v0, v14

    .line 92
    .end local v0    # "this":Lcom/google/zxing/multi/ByQuadrantReader;
    :goto_0
    return-object v0

    .line 64
    .restart local v0    # "this":Lcom/google/zxing/multi/ByQuadrantReader;
    :catch_0
    move-exception v14

    move-object v8, v14

    .line 68
    move-object v14, v1

    move v15, v5

    const/16 v16, 0x0

    move/from16 v17, v5

    move/from16 v18, v6

    invoke-virtual/range {v14 .. v18}, Lcom/google/zxing/BinaryBitmap;->crop(IIII)Lcom/google/zxing/BinaryBitmap;

    move-result-object v14

    move-object v8, v14

    .line 70
    .local v8, "topRight":Lcom/google/zxing/BinaryBitmap;
    move-object v14, v0

    :try_start_1
    iget-object v14, v14, Lcom/google/zxing/multi/ByQuadrantReader;->delegate:Lcom/google/zxing/Reader;

    move-object v15, v8

    move-object/from16 v16, v2

    invoke-interface/range {v14 .. v16}, Lcom/google/zxing/Reader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;
    :try_end_1
    .catch Lcom/google/zxing/NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v14

    move-object v0, v14

    goto :goto_0

    .line 71
    :catch_1
    move-exception v14

    move-object v9, v14

    .line 75
    move-object v14, v1

    const/4 v15, 0x0

    move/from16 v16, v6

    move/from16 v17, v5

    move/from16 v18, v6

    invoke-virtual/range {v14 .. v18}, Lcom/google/zxing/BinaryBitmap;->crop(IIII)Lcom/google/zxing/BinaryBitmap;

    move-result-object v14

    move-object v9, v14

    .line 77
    .local v9, "bottomLeft":Lcom/google/zxing/BinaryBitmap;
    move-object v14, v0

    :try_start_2
    iget-object v14, v14, Lcom/google/zxing/multi/ByQuadrantReader;->delegate:Lcom/google/zxing/Reader;

    move-object v15, v9

    move-object/from16 v16, v2

    invoke-interface/range {v14 .. v16}, Lcom/google/zxing/Reader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;
    :try_end_2
    .catch Lcom/google/zxing/NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v14

    move-object v0, v14

    goto :goto_0

    .line 78
    :catch_2
    move-exception v14

    move-object v10, v14

    .line 82
    move-object v14, v1

    move v15, v5

    move/from16 v16, v6

    move/from16 v17, v5

    move/from16 v18, v6

    invoke-virtual/range {v14 .. v18}, Lcom/google/zxing/BinaryBitmap;->crop(IIII)Lcom/google/zxing/BinaryBitmap;

    move-result-object v14

    move-object v10, v14

    .line 84
    .local v10, "bottomRight":Lcom/google/zxing/BinaryBitmap;
    move-object v14, v0

    :try_start_3
    iget-object v14, v14, Lcom/google/zxing/multi/ByQuadrantReader;->delegate:Lcom/google/zxing/Reader;

    move-object v15, v10

    move-object/from16 v16, v2

    invoke-interface/range {v14 .. v16}, Lcom/google/zxing/Reader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;
    :try_end_3
    .catch Lcom/google/zxing/NotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v14

    move-object v0, v14

    goto :goto_0

    .line 85
    :catch_3
    move-exception v14

    move-object v11, v14

    .line 89
    move v14, v5

    const/4 v15, 0x2

    div-int/lit8 v14, v14, 0x2

    move v11, v14

    .line 90
    .local v11, "quarterWidth":I
    move v14, v6

    const/4 v15, 0x2

    div-int/lit8 v14, v14, 0x2

    move v12, v14

    .line 91
    .local v12, "quarterHeight":I
    move-object v14, v1

    move v15, v11

    move/from16 v16, v12

    move/from16 v17, v5

    move/from16 v18, v6

    invoke-virtual/range {v14 .. v18}, Lcom/google/zxing/BinaryBitmap;->crop(IIII)Lcom/google/zxing/BinaryBitmap;

    move-result-object v14

    move-object v13, v14

    .line 92
    .local v13, "center":Lcom/google/zxing/BinaryBitmap;
    move-object v14, v0

    iget-object v14, v14, Lcom/google/zxing/multi/ByQuadrantReader;->delegate:Lcom/google/zxing/Reader;

    move-object v15, v13

    move-object/from16 v16, v2

    invoke-interface/range {v14 .. v16}, Lcom/google/zxing/Reader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v14

    move-object v0, v14

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/multi/ByQuadrantReader;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/multi/ByQuadrantReader;->delegate:Lcom/google/zxing/Reader;

    invoke-interface {v1}, Lcom/google/zxing/Reader;->reset()V

    .line 98
    return-void
.end method
