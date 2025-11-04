.class final Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;
.super Ljava/lang/Object;
.source "GeneralAppIdDecoder.java"


# instance fields
.field private final buffer:Ljava/lang/StringBuilder;

.field private final current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

.field private final information:Lcom/google/zxing/common/BitArray;


# direct methods
.method constructor <init>(Lcom/google/zxing/common/BitArray;)V
    .locals 6

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;
    move-object v1, p1

    .local v1, "information":Lcom/google/zxing/common/BitArray;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 39
    move-object v2, v0

    new-instance v3, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;-><init>()V

    iput-object v3, v2, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    .line 40
    move-object v2, v0

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v3, v2, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->buffer:Ljava/lang/StringBuilder;

    .line 43
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    .line 44
    return-void
.end method

.method private decodeAlphanumeric(I)Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;
    .locals 11

    .prologue
    .line 388
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;
    move v1, p1

    .local v1, "pos":I
    move-object v5, v0

    move v6, v1

    const/4 v7, 0x5

    invoke-virtual {v5, v6, v7}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I

    move-result v5

    move v2, v5

    .line 389
    .local v2, "fiveBitValue":I
    move v5, v2

    const/16 v6, 0xf

    if-ne v5, v6, :cond_0

    .line 390
    new-instance v5, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move v7, v1

    const/4 v8, 0x5

    add-int/lit8 v7, v7, 0x5

    const/16 v8, 0x24

    invoke-direct {v6, v7, v8}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;-><init>(IC)V

    move-object v0, v5

    .line 423
    .end local v0    # "this":Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;
    :goto_0
    return-object v0

    .line 393
    .restart local v0    # "this":Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;
    :cond_0
    move v5, v2

    const/4 v6, 0x5

    if-lt v5, v6, :cond_1

    move v5, v2

    const/16 v6, 0xf

    if-ge v5, v6, :cond_1

    .line 394
    new-instance v5, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move v7, v1

    const/4 v8, 0x5

    add-int/lit8 v7, v7, 0x5

    const/16 v8, 0x30

    move v9, v2

    add-int/2addr v8, v9

    const/4 v9, 0x5

    add-int/lit8 v8, v8, -0x5

    int-to-char v8, v8

    invoke-direct {v6, v7, v8}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;-><init>(IC)V

    move-object v0, v5

    goto :goto_0

    .line 397
    :cond_1
    move-object v5, v0

    move v6, v1

    const/4 v7, 0x6

    invoke-virtual {v5, v6, v7}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I

    move-result v5

    move v3, v5

    .line 399
    .local v3, "sixBitValue":I
    move v5, v3

    const/16 v6, 0x20

    if-lt v5, v6, :cond_2

    move v5, v3

    const/16 v6, 0x3a

    if-ge v5, v6, :cond_2

    .line 400
    new-instance v5, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move v7, v1

    const/4 v8, 0x6

    add-int/lit8 v7, v7, 0x6

    move v8, v3

    const/16 v9, 0x21

    add-int/lit8 v8, v8, 0x21

    int-to-char v8, v8

    invoke-direct {v6, v7, v8}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;-><init>(IC)V

    move-object v0, v5

    goto :goto_0

    .line 404
    :cond_2
    move v5, v3

    packed-switch v5, :pswitch_data_0

    .line 421
    new-instance v5, Ljava/lang/IllegalStateException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Decoding invalid alphanumeric value: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 406
    :pswitch_0
    const/16 v5, 0x2a

    move v4, v5

    .line 423
    .local v4, "c":C
    :goto_1
    new-instance v5, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move v7, v1

    const/4 v8, 0x6

    add-int/lit8 v7, v7, 0x6

    move v8, v4

    invoke-direct {v6, v7, v8}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;-><init>(IC)V

    move-object v0, v5

    goto :goto_0

    .line 409
    .end local v4    # "c":C
    :pswitch_1
    const/16 v5, 0x2c

    move v4, v5

    .line 410
    .restart local v4    # "c":C
    goto :goto_1

    .line 412
    .end local v4    # "c":C
    :pswitch_2
    const/16 v5, 0x2d

    move v4, v5

    .line 413
    .restart local v4    # "c":C
    goto :goto_1

    .line 415
    .end local v4    # "c":C
    :pswitch_3
    const/16 v5, 0x2e

    move v4, v5

    .line 416
    .restart local v4    # "c":C
    goto :goto_1

    .line 418
    .end local v4    # "c":C
    :pswitch_4
    const/16 v5, 0x2f

    move v4, v5

    .line 419
    .restart local v4    # "c":C
    goto :goto_1

    .line 404
    nop

    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private decodeIsoIec646(I)Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;
    .locals 12

    .prologue
    .line 277
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;
    move v1, p1

    .local v1, "pos":I
    move-object v6, v0

    move v7, v1

    const/4 v8, 0x5

    invoke-virtual {v6, v7, v8}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I

    move-result v6

    move v2, v6

    .line 278
    .local v2, "fiveBitValue":I
    move v6, v2

    const/16 v7, 0xf

    if-ne v6, v7, :cond_0

    .line 279
    new-instance v6, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move v8, v1

    const/4 v9, 0x5

    add-int/lit8 v8, v8, 0x5

    const/16 v9, 0x24

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;-><init>(IC)V

    move-object v0, v6

    .line 365
    .end local v0    # "this":Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;
    :goto_0
    return-object v0

    .line 282
    .restart local v0    # "this":Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;
    :cond_0
    move v6, v2

    const/4 v7, 0x5

    if-lt v6, v7, :cond_1

    move v6, v2

    const/16 v7, 0xf

    if-ge v6, v7, :cond_1

    .line 283
    new-instance v6, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move v8, v1

    const/4 v9, 0x5

    add-int/lit8 v8, v8, 0x5

    const/16 v9, 0x30

    move v10, v2

    add-int/2addr v9, v10

    const/4 v10, 0x5

    add-int/lit8 v9, v9, -0x5

    int-to-char v9, v9

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;-><init>(IC)V

    move-object v0, v6

    goto :goto_0

    .line 286
    :cond_1
    move-object v6, v0

    move v7, v1

    const/4 v8, 0x7

    invoke-virtual {v6, v7, v8}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I

    move-result v6

    move v3, v6

    .line 288
    .local v3, "sevenBitValue":I
    move v6, v3

    const/16 v7, 0x40

    if-lt v6, v7, :cond_2

    move v6, v3

    const/16 v7, 0x5a

    if-ge v6, v7, :cond_2

    .line 289
    new-instance v6, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move v8, v1

    const/4 v9, 0x7

    add-int/lit8 v8, v8, 0x7

    move v9, v3

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    int-to-char v9, v9

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;-><init>(IC)V

    move-object v0, v6

    goto :goto_0

    .line 292
    :cond_2
    move v6, v3

    const/16 v7, 0x5a

    if-lt v6, v7, :cond_3

    move v6, v3

    const/16 v7, 0x74

    if-ge v6, v7, :cond_3

    .line 293
    new-instance v6, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move v8, v1

    const/4 v9, 0x7

    add-int/lit8 v8, v8, 0x7

    move v9, v3

    const/4 v10, 0x7

    add-int/lit8 v9, v9, 0x7

    int-to-char v9, v9

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;-><init>(IC)V

    move-object v0, v6

    goto :goto_0

    .line 296
    :cond_3
    move-object v6, v0

    move v7, v1

    const/16 v8, 0x8

    invoke-virtual {v6, v7, v8}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I

    move-result v6

    move v4, v6

    .line 298
    .local v4, "eightBitValue":I
    move v6, v4

    packed-switch v6, :pswitch_data_0

    .line 363
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Decoding invalid ISO/IEC 646 value: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move v9, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 300
    :pswitch_0
    const/16 v6, 0x21

    move v5, v6

    .line 365
    .local v5, "c":C
    :goto_1
    new-instance v6, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move v8, v1

    const/16 v9, 0x8

    add-int/lit8 v8, v8, 0x8

    move v9, v5

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;-><init>(IC)V

    move-object v0, v6

    goto/16 :goto_0

    .line 303
    .end local v5    # "c":C
    :pswitch_1
    const/16 v6, 0x22

    move v5, v6

    .line 304
    .restart local v5    # "c":C
    goto :goto_1

    .line 306
    .end local v5    # "c":C
    :pswitch_2
    const/16 v6, 0x25

    move v5, v6

    .line 307
    .restart local v5    # "c":C
    goto :goto_1

    .line 309
    .end local v5    # "c":C
    :pswitch_3
    const/16 v6, 0x26

    move v5, v6

    .line 310
    .restart local v5    # "c":C
    goto :goto_1

    .line 312
    .end local v5    # "c":C
    :pswitch_4
    const/16 v6, 0x27

    move v5, v6

    .line 313
    .restart local v5    # "c":C
    goto :goto_1

    .line 315
    .end local v5    # "c":C
    :pswitch_5
    const/16 v6, 0x28

    move v5, v6

    .line 316
    .restart local v5    # "c":C
    goto :goto_1

    .line 318
    .end local v5    # "c":C
    :pswitch_6
    const/16 v6, 0x29

    move v5, v6

    .line 319
    .restart local v5    # "c":C
    goto :goto_1

    .line 321
    .end local v5    # "c":C
    :pswitch_7
    const/16 v6, 0x2a

    move v5, v6

    .line 322
    .restart local v5    # "c":C
    goto :goto_1

    .line 324
    .end local v5    # "c":C
    :pswitch_8
    const/16 v6, 0x2b

    move v5, v6

    .line 325
    .restart local v5    # "c":C
    goto :goto_1

    .line 327
    .end local v5    # "c":C
    :pswitch_9
    const/16 v6, 0x2c

    move v5, v6

    .line 328
    .restart local v5    # "c":C
    goto :goto_1

    .line 330
    .end local v5    # "c":C
    :pswitch_a
    const/16 v6, 0x2d

    move v5, v6

    .line 331
    .restart local v5    # "c":C
    goto :goto_1

    .line 333
    .end local v5    # "c":C
    :pswitch_b
    const/16 v6, 0x2e

    move v5, v6

    .line 334
    .restart local v5    # "c":C
    goto :goto_1

    .line 336
    .end local v5    # "c":C
    :pswitch_c
    const/16 v6, 0x2f

    move v5, v6

    .line 337
    .restart local v5    # "c":C
    goto :goto_1

    .line 339
    .end local v5    # "c":C
    :pswitch_d
    const/16 v6, 0x3a

    move v5, v6

    .line 340
    .restart local v5    # "c":C
    goto :goto_1

    .line 342
    .end local v5    # "c":C
    :pswitch_e
    const/16 v6, 0x3b

    move v5, v6

    .line 343
    .restart local v5    # "c":C
    goto :goto_1

    .line 345
    .end local v5    # "c":C
    :pswitch_f
    const/16 v6, 0x3c

    move v5, v6

    .line 346
    .restart local v5    # "c":C
    goto :goto_1

    .line 348
    .end local v5    # "c":C
    :pswitch_10
    const/16 v6, 0x3d

    move v5, v6

    .line 349
    .restart local v5    # "c":C
    goto :goto_1

    .line 351
    .end local v5    # "c":C
    :pswitch_11
    const/16 v6, 0x3e

    move v5, v6

    .line 352
    .restart local v5    # "c":C
    goto :goto_1

    .line 354
    .end local v5    # "c":C
    :pswitch_12
    const/16 v6, 0x3f

    move v5, v6

    .line 355
    .restart local v5    # "c":C
    goto :goto_1

    .line 357
    .end local v5    # "c":C
    :pswitch_13
    const/16 v6, 0x5f

    move v5, v6

    .line 358
    .restart local v5    # "c":C
    goto :goto_1

    .line 360
    .end local v5    # "c":C
    :pswitch_14
    const/16 v6, 0x20

    move v5, v6

    .line 361
    .restart local v5    # "c":C
    goto :goto_1

    .line 298
    :pswitch_data_0
    .packed-switch 0xe8
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
    .end packed-switch
.end method

.method private decodeNumeric(I)Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;
    .locals 11

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;
    move v1, p1

    .local v1, "pos":I
    move v5, v1

    const/4 v6, 0x7

    add-int/lit8 v5, v5, 0x7

    move-object v6, v0

    iget-object v6, v6, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v6}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v6

    if-le v5, v6, :cond_1

    .line 88
    move-object v5, v0

    move v6, v1

    const/4 v7, 0x4

    invoke-virtual {v5, v6, v7}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I

    move-result v5

    move v2, v5

    .line 89
    .local v2, "numeric":I
    move v5, v2

    if-nez v5, :cond_0

    .line 90
    new-instance v5, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    iget-object v7, v7, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v7}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v7

    const/16 v8, 0xa

    const/16 v9, 0xa

    invoke-direct {v6, v7, v8, v9}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;-><init>(III)V

    move-object v0, v5

    .line 99
    .end local v0    # "this":Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;
    :goto_0
    return-object v0

    .line 92
    .restart local v0    # "this":Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;
    :cond_0
    new-instance v5, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    iget-object v7, v7, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v7}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v7

    move v8, v2

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    const/16 v9, 0xa

    invoke-direct {v6, v7, v8, v9}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;-><init>(III)V

    move-object v0, v5

    goto :goto_0

    .line 94
    .end local v2    # "numeric":I
    :cond_1
    move-object v5, v0

    move v6, v1

    const/4 v7, 0x7

    invoke-virtual {v5, v6, v7}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I

    move-result v5

    move v2, v5

    .line 96
    .restart local v2    # "numeric":I
    move v5, v2

    const/16 v6, 0x8

    add-int/lit8 v5, v5, -0x8

    const/16 v6, 0xb

    div-int/lit8 v5, v5, 0xb

    move v3, v5

    .line 97
    .local v3, "digit1":I
    move v5, v2

    const/16 v6, 0x8

    add-int/lit8 v5, v5, -0x8

    const/16 v6, 0xb

    rem-int/lit8 v5, v5, 0xb

    move v4, v5

    .line 99
    .local v4, "digit2":I
    new-instance v5, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move v7, v1

    const/4 v8, 0x7

    add-int/lit8 v7, v7, 0x7

    move v8, v3

    move v9, v4

    invoke-direct {v6, v7, v8, v9}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;-><init>(III)V

    move-object v0, v5

    goto :goto_0
.end method

.method static extractNumericValueFromBitArray(Lcom/google/zxing/common/BitArray;II)I
    .locals 10

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "information":Lcom/google/zxing/common/BitArray;
    move v1, p1

    .local v1, "pos":I
    move v2, p2

    .local v2, "bits":I
    move v5, v2

    const/16 v6, 0x20

    if-le v5, v6, :cond_0

    .line 108
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string/jumbo v7, "extractNumberValueFromBitArray can\'t handle more than 32 bits"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 111
    :cond_0
    const/4 v5, 0x0

    move v3, v5

    .line 112
    .local v3, "value":I
    const/4 v5, 0x0

    move v4, v5

    .local v4, "i":I
    :goto_0
    move v5, v4

    move v6, v2

    if-ge v5, v6, :cond_2

    .line 113
    move-object v5, v0

    move v6, v1

    move v7, v4

    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 114
    move v5, v3

    const/4 v6, 0x1

    move v7, v2

    move v8, v4

    sub-int/2addr v7, v8

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    shl-int/2addr v6, v7

    or-int/2addr v5, v6

    move v3, v5

    .line 112
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 118
    :cond_2
    move v5, v3

    move v0, v5

    .end local v0    # "information":Lcom/google/zxing/common/BitArray;
    return v0
.end method

.method private isAlphaOr646ToNumericLatch(I)Z
    .locals 6

    .prologue
    .line 446
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;
    move v1, p1

    .local v1, "pos":I
    move v3, v1

    const/4 v4, 0x3

    add-int/lit8 v3, v3, 0x3

    move-object v4, v0

    iget-object v4, v4, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v4}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v4

    if-le v3, v4, :cond_0

    .line 447
    const/4 v3, 0x0

    move v0, v3

    .line 455
    .end local v0    # "this":Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;
    :goto_0
    return v0

    .line 450
    .restart local v0    # "this":Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;
    :cond_0
    move v3, v1

    move v2, v3

    .local v2, "i":I
    :goto_1
    move v3, v2

    move v4, v1

    const/4 v5, 0x3

    add-int/lit8 v4, v4, 0x3

    if-ge v3, v4, :cond_2

    .line 451
    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    move v4, v2

    invoke-virtual {v3, v4}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 452
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 450
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 455
    :cond_2
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0
.end method

.method private isAlphaTo646ToAlphaLatch(I)Z
    .locals 6

    .prologue
    .line 427
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;
    move v1, p1

    .local v1, "pos":I
    move v3, v1

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v4}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v4

    if-le v3, v4, :cond_0

    .line 428
    const/4 v3, 0x0

    move v0, v3

    .line 441
    .end local v0    # "this":Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;
    :goto_0
    return v0

    .line 431
    .restart local v0    # "this":Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;
    :cond_0
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_1
    move v3, v2

    const/4 v4, 0x5

    if-ge v3, v4, :cond_3

    move v3, v2

    move v4, v1

    add-int/2addr v3, v4

    move-object v4, v0

    iget-object v4, v4, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v4}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 432
    move v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 433
    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    move v4, v1

    const/4 v5, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v3, v4}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 434
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 436
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    move v4, v1

    move v5, v2

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 437
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 431
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 441
    :cond_3
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0
.end method

.method private isNumericToAlphaNumericLatch(I)Z
    .locals 6

    .prologue
    .line 461
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;
    move v1, p1

    .local v1, "pos":I
    move v3, v1

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v4}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v4

    if-le v3, v4, :cond_0

    .line 462
    const/4 v3, 0x0

    move v0, v3

    .line 470
    .end local v0    # "this":Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;
    :goto_0
    return v0

    .line 465
    .restart local v0    # "this":Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;
    :cond_0
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_1
    move v3, v2

    const/4 v4, 0x4

    if-ge v3, v4, :cond_2

    move v3, v2

    move v4, v1

    add-int/2addr v3, v4

    move-object v4, v0

    iget-object v4, v4, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v4}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 466
    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    move v4, v1

    move v5, v2

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 467
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 465
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 470
    :cond_2
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0
.end method

.method private isStillAlpha(I)Z
    .locals 7

    .prologue
    .line 369
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;
    move v1, p1

    .local v1, "pos":I
    move v4, v1

    const/4 v5, 0x5

    add-int/lit8 v4, v4, 0x5

    move-object v5, v0

    iget-object v5, v5, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v5}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v5

    if-le v4, v5, :cond_0

    .line 370
    const/4 v4, 0x0

    move v0, v4

    .line 384
    .end local v0    # "this":Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;
    :goto_0
    return v0

    .line 374
    .restart local v0    # "this":Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;
    :cond_0
    move-object v4, v0

    move v5, v1

    const/4 v6, 0x5

    invoke-virtual {v4, v5, v6}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I

    move-result v4

    move v2, v4

    .line 375
    .local v2, "fiveBitValue":I
    move v4, v2

    const/4 v5, 0x5

    if-lt v4, v5, :cond_1

    move v4, v2

    const/16 v5, 0x10

    if-ge v4, v5, :cond_1

    .line 376
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    .line 379
    :cond_1
    move v4, v1

    const/4 v5, 0x6

    add-int/lit8 v4, v4, 0x6

    move-object v5, v0

    iget-object v5, v5, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v5}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v5

    if-le v4, v5, :cond_2

    .line 380
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 383
    :cond_2
    move-object v4, v0

    move v5, v1

    const/4 v6, 0x6

    invoke-virtual {v4, v5, v6}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I

    move-result v4

    move v3, v4

    .line 384
    .local v3, "sixBitValue":I
    move v4, v3

    const/16 v5, 0x10

    if-lt v4, v5, :cond_3

    move v4, v3

    const/16 v5, 0x3f

    if-ge v4, v5, :cond_3

    const/4 v4, 0x1

    :goto_1
    move v0, v4

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private isStillIsoIec646(I)Z
    .locals 8

    .prologue
    .line 249
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;
    move v1, p1

    .local v1, "pos":I
    move v5, v1

    const/4 v6, 0x5

    add-int/lit8 v5, v5, 0x5

    move-object v6, v0

    iget-object v6, v6, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v6}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v6

    if-le v5, v6, :cond_0

    .line 250
    const/4 v5, 0x0

    move v0, v5

    .line 272
    .end local v0    # "this":Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;
    :goto_0
    return v0

    .line 253
    .restart local v0    # "this":Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;
    :cond_0
    move-object v5, v0

    move v6, v1

    const/4 v7, 0x5

    invoke-virtual {v5, v6, v7}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I

    move-result v5

    move v2, v5

    .line 254
    .local v2, "fiveBitValue":I
    move v5, v2

    const/4 v6, 0x5

    if-lt v5, v6, :cond_1

    move v5, v2

    const/16 v6, 0x10

    if-ge v5, v6, :cond_1

    .line 255
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0

    .line 258
    :cond_1
    move v5, v1

    const/4 v6, 0x7

    add-int/lit8 v5, v5, 0x7

    move-object v6, v0

    iget-object v6, v6, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v6}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v6

    if-le v5, v6, :cond_2

    .line 259
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 262
    :cond_2
    move-object v5, v0

    move v6, v1

    const/4 v7, 0x7

    invoke-virtual {v5, v6, v7}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I

    move-result v5

    move v3, v5

    .line 263
    .local v3, "sevenBitValue":I
    move v5, v3

    const/16 v6, 0x40

    if-lt v5, v6, :cond_3

    move v5, v3

    const/16 v6, 0x74

    if-ge v5, v6, :cond_3

    .line 264
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0

    .line 267
    :cond_3
    move v5, v1

    const/16 v6, 0x8

    add-int/lit8 v5, v5, 0x8

    move-object v6, v0

    iget-object v6, v6, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v6}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v6

    if-le v5, v6, :cond_4

    .line 268
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 271
    :cond_4
    move-object v5, v0

    move v6, v1

    const/16 v7, 0x8

    invoke-virtual {v5, v6, v7}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I

    move-result v5

    move v4, v5

    .line 272
    .local v4, "eightBitValue":I
    move v5, v4

    const/16 v6, 0xe8

    if-lt v5, v6, :cond_5

    move v5, v4

    const/16 v6, 0xfd

    if-ge v5, v6, :cond_5

    const/4 v5, 0x1

    :goto_1
    move v0, v5

    goto :goto_0

    :cond_5
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private isStillNumeric(I)Z
    .locals 6

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;
    move v1, p1

    .local v1, "pos":I
    move v3, v1

    const/4 v4, 0x7

    add-int/lit8 v3, v3, 0x7

    move-object v4, v0

    iget-object v4, v4, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v4}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v4

    if-le v3, v4, :cond_1

    .line 74
    move v3, v1

    const/4 v4, 0x4

    add-int/lit8 v3, v3, 0x4

    move-object v4, v0

    iget-object v4, v4, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v4}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v4

    if-gt v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .line 83
    .end local v0    # "this":Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;
    :goto_1
    return v0

    .line 74
    .restart local v0    # "this":Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 77
    :cond_1
    move v3, v1

    move v2, v3

    .local v2, "i":I
    :goto_2
    move v3, v2

    move v4, v1

    const/4 v5, 0x3

    add-int/lit8 v4, v4, 0x3

    if-ge v3, v4, :cond_3

    .line 78
    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    move v4, v2

    invoke-virtual {v3, v4}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 79
    const/4 v3, 0x1

    move v0, v3

    goto :goto_1

    .line 77
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 83
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    move v4, v1

    const/4 v5, 0x3

    add-int/lit8 v4, v4, 0x3

    invoke-virtual {v3, v4}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    move v0, v3

    goto :goto_1
.end method

.method private parseAlphaBlock()Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;
    .locals 8

    .prologue
    .line 221
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;
    :goto_0
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v4}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->isStillAlpha(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 222
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v4}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->decodeAlphanumeric(I)Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;

    move-result-object v3

    move-object v1, v3

    .line 223
    .local v1, "alpha":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;
    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    move-object v4, v1

    invoke-virtual {v4}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;->getNewPosition()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->setPosition(I)V

    .line 225
    move-object v3, v1

    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;->isFNC1()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 226
    new-instance v3, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    iget-object v5, v5, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v5}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v5

    move-object v6, v0

    iget-object v6, v6, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;-><init>(ILjava/lang/String;)V

    move-object v2, v3

    .line 227
    .local v2, "information":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;
    new-instance v3, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v2

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;-><init>(Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;Z)V

    move-object v0, v3

    .line 245
    .end local v0    # "this":Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;
    .end local v1    # "alpha":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;
    .end local v2    # "information":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;
    :goto_1
    return-object v0

    .line 230
    .restart local v0    # "this":Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;
    .restart local v1    # "alpha":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->buffer:Ljava/lang/StringBuilder;

    move-object v4, v1

    invoke-virtual {v4}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;->getValue()C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 231
    goto :goto_0

    .line 233
    .end local v1    # "alpha":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;
    :cond_1
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v4}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->isAlphaOr646ToNumericLatch(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 234
    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->incrementPosition(I)V

    .line 235
    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->setNumeric()V

    .line 245
    :cond_2
    :goto_2
    new-instance v3, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;-><init>(Z)V

    move-object v0, v3

    goto :goto_1

    .line 236
    :cond_3
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v4}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->isAlphaTo646ToAlphaLatch(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 237
    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v3

    const/4 v4, 0x5

    add-int/lit8 v3, v3, 0x5

    move-object v4, v0

    iget-object v4, v4, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v4}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 238
    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->incrementPosition(I)V

    .line 243
    :goto_3
    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->setIsoIec646()V

    goto :goto_2

    .line 240
    :cond_4
    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v4}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->setPosition(I)V

    goto :goto_3
.end method

.method private parseBlocks()Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;
    .locals 7

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v5}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v5

    move v3, v5

    .line 143
    .local v3, "initialPosition":I
    move-object v5, v0

    iget-object v5, v5, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v5}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->isAlpha()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 144
    move-object v5, v0

    invoke-direct {v5}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->parseAlphaBlock()Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;

    move-result-object v5

    move-object v2, v5

    .line 145
    .local v2, "result":Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;
    move-object v5, v2

    invoke-virtual {v5}, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;->isFinished()Z

    move-result v5

    move v1, v5

    .line 154
    .local v1, "isFinished":Z
    :goto_0
    move v5, v3

    move-object v6, v0

    iget-object v6, v6, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v6}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v6

    if-eq v5, v6, :cond_3

    const/4 v5, 0x1

    :goto_1
    move v4, v5

    .line 155
    .local v4, "positionChanged":Z
    move v5, v4

    if-nez v5, :cond_4

    move v5, v1

    if-nez v5, :cond_4

    .line 156
    .line 160
    :goto_2
    move-object v5, v2

    invoke-virtual {v5}, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;->getDecodedInformation()Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;
    return-object v0

    .line 146
    .end local v1    # "isFinished":Z
    .end local v2    # "result":Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;
    .end local v4    # "positionChanged":Z
    .restart local v0    # "this":Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v5}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->isIsoIec646()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 147
    move-object v5, v0

    invoke-direct {v5}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->parseIsoIec646Block()Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;

    move-result-object v5

    move-object v2, v5

    .line 148
    .restart local v2    # "result":Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;
    move-object v5, v2

    invoke-virtual {v5}, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;->isFinished()Z

    move-result v5

    move v1, v5

    .restart local v1    # "isFinished":Z
    goto :goto_0

    .line 150
    .end local v1    # "isFinished":Z
    .end local v2    # "result":Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;
    :cond_2
    move-object v5, v0

    invoke-direct {v5}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->parseNumericBlock()Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;

    move-result-object v5

    move-object v2, v5

    .line 151
    .restart local v2    # "result":Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;
    move-object v5, v2

    invoke-virtual {v5}, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;->isFinished()Z

    move-result v5

    move v1, v5

    .restart local v1    # "isFinished":Z
    goto :goto_0

    .line 154
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 158
    .restart local v4    # "positionChanged":Z
    :cond_4
    move v5, v1

    if-eqz v5, :cond_0

    goto :goto_2
.end method

.method private parseIsoIec646Block()Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;
    .locals 8

    .prologue
    .line 194
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;
    :goto_0
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v4}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->isStillIsoIec646(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 195
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v4}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->decodeIsoIec646(I)Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;

    move-result-object v3

    move-object v1, v3

    .line 196
    .local v1, "iso":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;
    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    move-object v4, v1

    invoke-virtual {v4}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;->getNewPosition()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->setPosition(I)V

    .line 198
    move-object v3, v1

    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;->isFNC1()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 199
    new-instance v3, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    iget-object v5, v5, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v5}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v5

    move-object v6, v0

    iget-object v6, v6, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;-><init>(ILjava/lang/String;)V

    move-object v2, v3

    .line 200
    .local v2, "information":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;
    new-instance v3, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v2

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;-><init>(Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;Z)V

    move-object v0, v3

    .line 217
    .end local v0    # "this":Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;
    .end local v1    # "iso":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;
    .end local v2    # "information":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;
    :goto_1
    return-object v0

    .line 202
    .restart local v0    # "this":Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;
    .restart local v1    # "iso":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->buffer:Ljava/lang/StringBuilder;

    move-object v4, v1

    invoke-virtual {v4}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;->getValue()C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 203
    goto :goto_0

    .line 205
    .end local v1    # "iso":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;
    :cond_1
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v4}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->isAlphaOr646ToNumericLatch(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 206
    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->incrementPosition(I)V

    .line 207
    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->setNumeric()V

    .line 217
    :cond_2
    :goto_2
    new-instance v3, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;-><init>(Z)V

    move-object v0, v3

    goto :goto_1

    .line 208
    :cond_3
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v4}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->isAlphaTo646ToAlphaLatch(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 209
    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v3

    const/4 v4, 0x5

    add-int/lit8 v3, v3, 0x5

    move-object v4, v0

    iget-object v4, v4, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v4}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 210
    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->incrementPosition(I)V

    .line 215
    :goto_3
    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->setAlpha()V

    goto :goto_2

    .line 212
    :cond_4
    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    invoke-virtual {v4}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->setPosition(I)V

    goto :goto_3
.end method

.method private parseNumericBlock()Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;
    .locals 9

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;
    :goto_0
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v4}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->isStillNumeric(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 165
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v4}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->decodeNumeric(I)Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;

    move-result-object v3

    move-object v1, v3

    .line 166
    .local v1, "numeric":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;
    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    move-object v4, v1

    invoke-virtual {v4}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;->getNewPosition()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->setPosition(I)V

    .line 168
    move-object v3, v1

    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;->isFirstDigitFNC1()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 170
    move-object v3, v1

    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;->isSecondDigitFNC1()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 171
    new-instance v3, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    iget-object v5, v5, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v5}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v5

    move-object v6, v0

    iget-object v6, v6, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;-><init>(ILjava/lang/String;)V

    move-object v2, v3

    .line 175
    .local v2, "information":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;
    :goto_1
    new-instance v3, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v2

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;-><init>(Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;Z)V

    move-object v0, v3

    .line 190
    .end local v0    # "this":Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;
    .end local v1    # "numeric":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;
    .end local v2    # "information":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;
    :goto_2
    return-object v0

    .line 173
    .restart local v0    # "this":Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;
    .restart local v1    # "numeric":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;
    :cond_0
    new-instance v3, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    iget-object v5, v5, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v5}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v5

    move-object v6, v0

    iget-object v6, v6, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v7}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;->getSecondDigit()I

    move-result v7

    invoke-direct {v4, v5, v6, v7}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;-><init>(ILjava/lang/String;I)V

    move-object v2, v3

    .restart local v2    # "information":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;
    goto :goto_1

    .line 177
    .end local v2    # "information":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->buffer:Ljava/lang/StringBuilder;

    move-object v4, v1

    invoke-virtual {v4}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;->getFirstDigit()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 179
    move-object v3, v1

    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;->isSecondDigitFNC1()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 180
    new-instance v3, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    iget-object v5, v5, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v5}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v5

    move-object v6, v0

    iget-object v6, v6, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;-><init>(ILjava/lang/String;)V

    move-object v2, v3

    .line 181
    .restart local v2    # "information":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;
    new-instance v3, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v2

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;-><init>(Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;Z)V

    move-object v0, v3

    goto :goto_2

    .line 183
    .end local v2    # "information":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->buffer:Ljava/lang/StringBuilder;

    move-object v4, v1

    invoke-virtual {v4}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;->getSecondDigit()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 184
    goto/16 :goto_0

    .line 186
    .end local v1    # "numeric":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;
    :cond_3
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v4}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->isNumericToAlphaNumericLatch(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 187
    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->setAlpha()V

    .line 188
    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->incrementPosition(I)V

    .line 190
    :cond_4
    new-instance v3, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;-><init>(Z)V

    move-object v0, v3

    goto/16 :goto_2
.end method


# virtual methods
.method decodeAllCodes(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;
    move-object v1, p1

    .local v1, "buff":Ljava/lang/StringBuilder;
    move v2, p2

    .local v2, "initialPosition":I
    move v7, v2

    move v3, v7

    .line 48
    .local v3, "currentPosition":I
    const/4 v7, 0x0

    move-object v4, v7

    .line 50
    .local v4, "remaining":Ljava/lang/String;
    :goto_0
    move-object v7, v0

    move v8, v3

    move-object v9, v4

    invoke-virtual {v7, v8, v9}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->decodeGeneralPurposeField(ILjava/lang/String;)Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;

    move-result-object v7

    move-object v5, v7

    .line 51
    .local v5, "info":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;
    move-object v7, v5

    invoke-virtual {v7}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;->getNewString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->parseFieldsInGeneralPurpose(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 52
    .local v6, "parsedFields":Ljava/lang/String;
    move-object v7, v6

    if-eqz v7, :cond_0

    .line 53
    move-object v7, v1

    move-object v8, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 55
    :cond_0
    move-object v7, v5

    invoke-virtual {v7}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;->isRemaining()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 56
    move-object v7, v5

    invoke-virtual {v7}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;->getRemainingValue()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    .line 61
    :goto_1
    move v7, v3

    move-object v8, v5

    invoke-virtual {v8}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;->getNewPosition()I

    move-result v8

    if-ne v7, v8, :cond_2

    .line 62
    .line 67
    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    .end local v0    # "this":Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;
    return-object v0

    .line 58
    .restart local v0    # "this":Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;
    :cond_1
    const/4 v7, 0x0

    move-object v4, v7

    goto :goto_1

    .line 64
    :cond_2
    move-object v7, v5

    invoke-virtual {v7}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;->getNewPosition()I

    move-result v7

    move v3, v7

    .line 65
    goto :goto_0
.end method

.method decodeGeneralPurposeField(ILjava/lang/String;)Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;
    .locals 10

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;
    move v1, p1

    .local v1, "pos":I
    move-object v2, p2

    .local v2, "remaining":Ljava/lang/String;
    move-object v4, v0

    iget-object v4, v4, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->buffer:Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 124
    move-object v4, v2

    if-eqz v4, :cond_0

    .line 125
    move-object v4, v0

    iget-object v4, v4, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->buffer:Ljava/lang/StringBuilder;

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 128
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    move v5, v1

    invoke-virtual {v4, v5}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->setPosition(I)V

    .line 130
    move-object v4, v0

    invoke-direct {v4}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->parseBlocks()Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;

    move-result-object v4

    move-object v3, v4

    .line 131
    .local v3, "lastDecoded":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;
    move-object v4, v3

    if-eqz v4, :cond_1

    move-object v4, v3

    invoke-virtual {v4}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;->isRemaining()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 132
    new-instance v4, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    iget-object v6, v6, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v6}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v6

    move-object v7, v0

    iget-object v7, v7, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v8, v3

    invoke-virtual {v8}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;->getRemainingValue()I

    move-result v8

    invoke-direct {v5, v6, v7, v8}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;-><init>(ILjava/lang/String;I)V

    move-object v0, v4

    .line 134
    .end local v0    # "this":Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;
    :cond_1
    new-instance v4, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    iget-object v6, v6, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v6}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v6

    move-object v7, v0

    iget-object v7, v7, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;-><init>(ILjava/lang/String;)V

    move-object v0, v4

    goto :goto_0
.end method

.method extractNumericValueFromBitArray(II)I
    .locals 6

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;
    move v1, p1

    .local v1, "pos":I
    move v2, p2

    .local v2, "bits":I
    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    move v4, v1

    move v5, v2

    invoke-static {v3, v4, v5}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(Lcom/google/zxing/common/BitArray;II)I

    move-result v3

    move v0, v3

    .end local v0    # "this":Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;
    return v0
.end method
