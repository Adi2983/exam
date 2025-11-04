.class final Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;
.super Ljava/lang/Object;
.source "DecodedBitStreamParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$1;,
        Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;
    }
.end annotation


# static fields
.field private static final C40_BASIC_SET_CHARS:[C

.field private static final C40_SHIFT2_SET_CHARS:[C

.field private static final TEXT_BASIC_SET_CHARS:[C

.field private static final TEXT_SHIFT3_SET_CHARS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/16 v0, 0x28

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->C40_BASIC_SET_CHARS:[C

    .line 59
    const/16 v0, 0x1b

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->C40_SHIFT2_SET_CHARS:[C

    .line 68
    const/16 v0, 0x28

    new-array v0, v0, [C

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->TEXT_BASIC_SET_CHARS:[C

    .line 74
    const/16 v0, 0x20

    new-array v0, v0, [C

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->TEXT_SHIFT3_SET_CHARS:[C

    return-void

    .line 53
    nop

    :array_0
    .array-data 2
        0x2as
        0x2as
        0x2as
        0x20s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
    .end array-data

    .line 59
    :array_1
    .array-data 2
        0x21s
        0x22s
        0x23s
        0x24s
        0x25s
        0x26s
        0x27s
        0x28s
        0x29s
        0x2as
        0x2bs
        0x2cs
        0x2ds
        0x2es
        0x2fs
        0x3as
        0x3bs
        0x3cs
        0x3ds
        0x3es
        0x3fs
        0x40s
        0x5bs
        0x5cs
        0x5ds
        0x5es
        0x5fs
    .end array-data

    .line 68
    nop

    :array_2
    .array-data 2
        0x2as
        0x2as
        0x2as
        0x20s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
    .end array-data

    .line 74
    :array_3
    .array-data 2
        0x27s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x7bs
        0x7cs
        0x7ds
        0x7es
        0x7fs
    .end array-data
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 80
    return-void
.end method

.method static decode([B)Lcom/google/zxing/common/DecoderResult;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "bytes":[B
    new-instance v6, Lcom/google/zxing/common/BitSource;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v0

    invoke-direct {v7, v8}, Lcom/google/zxing/common/BitSource;-><init>([B)V

    move-object v1, v6

    .line 84
    .local v1, "bits":Lcom/google/zxing/common/BitSource;
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/16 v8, 0x64

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v2, v6

    .line 85
    .local v2, "result":Ljava/lang/StringBuilder;
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v3, v6

    .line 86
    .local v3, "resultTrailer":Ljava/lang/StringBuilder;
    new-instance v6, Ljava/util/ArrayList;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    move-object v4, v6

    .line 87
    .local v4, "byteSegments":Ljava/util/List;, "Ljava/util/List<[B>;"
    sget-object v6, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->ASCII_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    move-object v5, v6

    .line 89
    .local v5, "mode":Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;
    :cond_0
    move-object v6, v5

    sget-object v7, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->ASCII_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    if-ne v6, v7, :cond_3

    .line 90
    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-static {v6, v7, v8}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->decodeAsciiSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    move-result-object v6

    move-object v5, v6

    .line 113
    :goto_0
    move-object v6, v5

    sget-object v7, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->PAD_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    if-eq v6, v7, :cond_1

    move-object v6, v1

    invoke-virtual {v6}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v6

    if-gtz v6, :cond_0

    .line 114
    :cond_1
    move-object v6, v3

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 115
    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 117
    :cond_2
    new-instance v6, Lcom/google/zxing/common/DecoderResult;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v0

    move-object v9, v2

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v10, v4

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_4

    const/4 v10, 0x0

    :goto_1
    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    move-object v0, v6

    .end local v0    # "bytes":[B
    return-object v0

    .line 92
    .restart local v0    # "bytes":[B
    :cond_3
    sget-object v6, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$1;->$SwitchMap$com$google$zxing$datamatrix$decoder$DecodedBitStreamParser$Mode:[I

    move-object v7, v5

    invoke-virtual {v7}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 109
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6

    .line 94
    :pswitch_0
    move-object v6, v1

    move-object v7, v2

    invoke-static {v6, v7}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->decodeC40Segment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;)V

    .line 95
    .line 111
    :goto_2
    sget-object v6, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->ASCII_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    move-object v5, v6

    goto :goto_0

    .line 97
    :pswitch_1
    move-object v6, v1

    move-object v7, v2

    invoke-static {v6, v7}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->decodeTextSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;)V

    .line 98
    goto :goto_2

    .line 100
    :pswitch_2
    move-object v6, v1

    move-object v7, v2

    invoke-static {v6, v7}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->decodeAnsiX12Segment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;)V

    .line 101
    goto :goto_2

    .line 103
    :pswitch_3
    move-object v6, v1

    move-object v7, v2

    invoke-static {v6, v7}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->decodeEdifactSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;)V

    .line 104
    goto :goto_2

    .line 106
    :pswitch_4
    move-object v6, v1

    move-object v7, v2

    move-object v8, v4

    invoke-static {v6, v7, v8}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->decodeBase256Segment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;Ljava/util/Collection;)V

    .line 107
    goto :goto_2

    .line 117
    :cond_4
    move-object v10, v4

    goto :goto_1

    .line 92
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static decodeAnsiX12Segment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 368
    move-object v0, p0

    .local v0, "bits":Lcom/google/zxing/common/BitSource;
    move-object v1, p1

    .local v1, "result":Ljava/lang/StringBuilder;
    const/4 v6, 0x3

    new-array v6, v6, [I

    move-object v2, v6

    .line 371
    .local v2, "cValues":[I
    :cond_0
    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_1

    .line 372
    .line 400
    :goto_0
    return-void

    .line 374
    :cond_1
    move-object v6, v0

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v6

    move v3, v6

    .line 375
    .local v3, "firstByte":I
    move v6, v3

    const/16 v7, 0xfe

    if-ne v6, v7, :cond_2

    .line 376
    goto :goto_0

    .line 379
    :cond_2
    move v6, v3

    move-object v7, v0

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v7

    move-object v8, v2

    invoke-static {v6, v7, v8}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->parseTwoBytes(II[I)V

    .line 381
    const/4 v6, 0x0

    move v4, v6

    .local v4, "i":I
    :goto_1
    move v6, v4

    const/4 v7, 0x3

    if-ge v6, v7, :cond_9

    .line 382
    move-object v6, v2

    move v7, v4

    aget v6, v6, v7

    move v5, v6

    .line 383
    .local v5, "cValue":I
    move v6, v5

    if-nez v6, :cond_3

    .line 384
    move-object v6, v1

    const/16 v7, 0xd

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 381
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 385
    :cond_3
    move v6, v5

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    .line 386
    move-object v6, v1

    const/16 v7, 0x2a

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    goto :goto_2

    .line 387
    :cond_4
    move v6, v5

    const/4 v7, 0x2

    if-ne v6, v7, :cond_5

    .line 388
    move-object v6, v1

    const/16 v7, 0x3e

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    goto :goto_2

    .line 389
    :cond_5
    move v6, v5

    const/4 v7, 0x3

    if-ne v6, v7, :cond_6

    .line 390
    move-object v6, v1

    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    goto :goto_2

    .line 391
    :cond_6
    move v6, v5

    const/16 v7, 0xe

    if-ge v6, v7, :cond_7

    .line 392
    move-object v6, v1

    move v7, v5

    const/16 v8, 0x2c

    add-int/lit8 v7, v7, 0x2c

    int-to-char v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    goto :goto_2

    .line 393
    :cond_7
    move v6, v5

    const/16 v7, 0x28

    if-ge v6, v7, :cond_8

    .line 394
    move-object v6, v1

    move v7, v5

    const/16 v8, 0x33

    add-int/lit8 v7, v7, 0x33

    int-to-char v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    goto :goto_2

    .line 396
    :cond_8
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6

    .line 399
    .end local v5    # "cValue":I
    :cond_9
    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v6

    if-gtz v6, :cond_0

    .line 400
    goto/16 :goto_0
.end method

.method private static decodeAsciiSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "bits":Lcom/google/zxing/common/BitSource;
    move-object v1, p1

    .local v1, "result":Ljava/lang/StringBuilder;
    move-object v2, p2

    .local v2, "resultTrailer":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    move v3, v6

    .line 128
    .local v3, "upperShift":Z
    :cond_0
    move-object v6, v0

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v6

    move v4, v6

    .line 129
    .local v4, "oneByte":I
    move v6, v4

    if-nez v6, :cond_1

    .line 130
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6

    .line 131
    :cond_1
    move v6, v4

    const/16 v7, 0x80

    if-gt v6, v7, :cond_3

    .line 132
    move v6, v3

    if-eqz v6, :cond_2

    .line 133
    add-int/lit16 v4, v4, 0x80

    .line 136
    :cond_2
    move-object v6, v1

    move v7, v4

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    int-to-char v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 137
    sget-object v6, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->ASCII_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    move-object v0, v6

    .line 182
    .end local v0    # "bits":Lcom/google/zxing/common/BitSource;
    :goto_0
    return-object v0

    .line 138
    .restart local v0    # "bits":Lcom/google/zxing/common/BitSource;
    :cond_3
    move v6, v4

    const/16 v7, 0x81

    if-ne v6, v7, :cond_4

    .line 139
    sget-object v6, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->PAD_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    move-object v0, v6

    goto :goto_0

    .line 140
    :cond_4
    move v6, v4

    const/16 v7, 0xe5

    if-gt v6, v7, :cond_7

    .line 141
    move v6, v4

    const/16 v7, 0x82

    add-int/lit16 v6, v6, -0x82

    move v5, v6

    .line 142
    .local v5, "value":I
    move v6, v5

    const/16 v7, 0xa

    if-ge v6, v7, :cond_5

    .line 143
    move-object v6, v1

    const/16 v7, 0x30

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 145
    :cond_5
    move-object v6, v1

    move v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 146
    .line 181
    .end local v5    # "value":I
    :cond_6
    :goto_1
    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v6

    if-gtz v6, :cond_0

    .line 182
    sget-object v6, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->ASCII_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    move-object v0, v6

    goto :goto_0

    .line 146
    :cond_7
    move v6, v4

    const/16 v7, 0xe6

    if-ne v6, v7, :cond_8

    .line 147
    sget-object v6, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->C40_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    move-object v0, v6

    goto :goto_0

    .line 148
    :cond_8
    move v6, v4

    const/16 v7, 0xe7

    if-ne v6, v7, :cond_9

    .line 149
    sget-object v6, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->BASE256_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    move-object v0, v6

    goto :goto_0

    .line 150
    :cond_9
    move v6, v4

    const/16 v7, 0xe8

    if-ne v6, v7, :cond_a

    .line 152
    move-object v6, v1

    const/16 v7, 0x1d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    goto :goto_1

    .line 153
    :cond_a
    move v6, v4

    const/16 v7, 0xe9

    if-eq v6, v7, :cond_6

    move v6, v4

    const/16 v7, 0xea

    if-ne v6, v7, :cond_b

    goto :goto_1

    .line 157
    :cond_b
    move v6, v4

    const/16 v7, 0xeb

    if-ne v6, v7, :cond_c

    .line 158
    const/4 v6, 0x1

    move v3, v6

    goto :goto_1

    .line 159
    :cond_c
    move v6, v4

    const/16 v7, 0xec

    if-ne v6, v7, :cond_d

    .line 160
    move-object v6, v1

    const-string/jumbo v7, "[)>\u001e05\u001d"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 161
    move-object v6, v2

    const/4 v7, 0x0

    const-string/jumbo v8, "\u001e\u0004"

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    goto :goto_1

    .line 162
    :cond_d
    move v6, v4

    const/16 v7, 0xed

    if-ne v6, v7, :cond_e

    .line 163
    move-object v6, v1

    const-string/jumbo v7, "[)>\u001e06\u001d"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 164
    move-object v6, v2

    const/4 v7, 0x0

    const-string/jumbo v8, "\u001e\u0004"

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    goto :goto_1

    .line 165
    :cond_e
    move v6, v4

    const/16 v7, 0xee

    if-ne v6, v7, :cond_f

    .line 166
    sget-object v6, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->ANSIX12_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    move-object v0, v6

    goto/16 :goto_0

    .line 167
    :cond_f
    move v6, v4

    const/16 v7, 0xef

    if-ne v6, v7, :cond_10

    .line 168
    sget-object v6, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->TEXT_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    move-object v0, v6

    goto/16 :goto_0

    .line 169
    :cond_10
    move v6, v4

    const/16 v7, 0xf0

    if-ne v6, v7, :cond_11

    .line 170
    sget-object v6, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->EDIFACT_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    move-object v0, v6

    goto/16 :goto_0

    .line 171
    :cond_11
    move v6, v4

    const/16 v7, 0xf1

    if-ne v6, v7, :cond_12

    goto/16 :goto_1

    .line 175
    :cond_12
    move v6, v4

    const/16 v7, 0xf2

    if-lt v6, v7, :cond_6

    .line 177
    move v6, v4

    const/16 v7, 0xfe

    if-ne v6, v7, :cond_13

    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v6

    if-eqz v6, :cond_6

    .line 178
    :cond_13
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6
.end method

.method private static decodeBase256Segment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;Ljava/util/Collection;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/common/BitSource;",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Collection",
            "<[B>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 451
    move-object v0, p0

    .local v0, "bits":Lcom/google/zxing/common/BitSource;
    move-object v1, p1

    .local v1, "result":Ljava/lang/StringBuilder;
    move-object/from16 v2, p2

    .local v2, "byteSegments":Ljava/util/Collection;, "Ljava/util/Collection<[B>;"
    const/4 v8, 0x1

    move-object v9, v0

    invoke-virtual {v9}, Lcom/google/zxing/common/BitSource;->getByteOffset()I

    move-result v9

    add-int/2addr v8, v9

    move v3, v8

    .line 452
    .local v3, "codewordPosition":I
    move-object v8, v0

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v8

    move v9, v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v8, v9}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->unrandomize255State(II)I

    move-result v8

    move v4, v8

    .line 454
    .local v4, "d1":I
    move v8, v4

    if-nez v8, :cond_0

    .line 455
    move-object v8, v0

    invoke-virtual {v8}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v8

    const/16 v9, 0x8

    div-int/lit8 v8, v8, 0x8

    move v5, v8

    .line 463
    .local v5, "count":I
    :goto_0
    move v8, v5

    if-gez v8, :cond_2

    .line 464
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v8

    throw v8

    .line 456
    .end local v5    # "count":I
    :cond_0
    move v8, v4

    const/16 v9, 0xfa

    if-ge v8, v9, :cond_1

    .line 457
    move v8, v4

    move v5, v8

    .restart local v5    # "count":I
    goto :goto_0

    .line 459
    .end local v5    # "count":I
    :cond_1
    const/16 v8, 0xfa

    move v9, v4

    const/16 v10, 0xf9

    add-int/lit16 v9, v9, -0xf9

    mul-int/2addr v8, v9

    move-object v9, v0

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v9

    move v10, v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v9, v10}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->unrandomize255State(II)I

    move-result v9

    add-int/2addr v8, v9

    move v5, v8

    .restart local v5    # "count":I
    goto :goto_0

    .line 467
    :cond_2
    move v8, v5

    new-array v8, v8, [B

    move-object v6, v8

    .line 468
    .local v6, "bytes":[B
    const/4 v8, 0x0

    move v7, v8

    .local v7, "i":I
    :goto_1
    move v8, v7

    move v9, v5

    if-ge v8, v9, :cond_4

    .line 471
    move-object v8, v0

    invoke-virtual {v8}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v8

    const/16 v9, 0x8

    if-ge v8, v9, :cond_3

    .line 472
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v8

    throw v8

    .line 474
    :cond_3
    move-object v8, v6

    move v9, v7

    move-object v10, v0

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v10

    move v11, v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v10, v11}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->unrandomize255State(II)I

    move-result v10

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    .line 468
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 476
    :cond_4
    move-object v8, v2

    move-object v9, v6

    invoke-interface {v8, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 478
    move-object v8, v1

    :try_start_0
    new-instance v9, Ljava/lang/String;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v6

    const-string/jumbo v12, "ISO8859_1"

    invoke-direct {v10, v11, v12}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 481
    .line 482
    return-void

    .line 479
    :catch_0
    move-exception v8

    move-object v7, v8

    .line 480
    .local v7, "uee":Ljava/io/UnsupportedEncodingException;
    new-instance v8, Ljava/lang/IllegalStateException;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Platform does not support required encoding: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v7

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method private static decodeC40Segment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 192
    move-object v0, p0

    .local v0, "bits":Lcom/google/zxing/common/BitSource;
    move-object v1, p1

    .local v1, "result":Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    move v2, v9

    .line 194
    .local v2, "upperShift":Z
    const/4 v9, 0x3

    new-array v9, v9, [I

    move-object v3, v9

    .line 195
    .local v3, "cValues":[I
    const/4 v9, 0x0

    move v4, v9

    .line 199
    .local v4, "shift":I
    :cond_0
    move-object v9, v0

    invoke-virtual {v9}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_1

    .line 200
    .line 268
    :goto_0
    return-void

    .line 202
    :cond_1
    move-object v9, v0

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v9

    move v5, v9

    .line 203
    .local v5, "firstByte":I
    move v9, v5

    const/16 v10, 0xfe

    if-ne v9, v10, :cond_2

    .line 204
    goto :goto_0

    .line 207
    :cond_2
    move v9, v5

    move-object v10, v0

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v10

    move-object v11, v3

    invoke-static {v9, v10, v11}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->parseTwoBytes(II[I)V

    .line 209
    const/4 v9, 0x0

    move v6, v9

    .local v6, "i":I
    :goto_1
    move v9, v6

    const/4 v10, 0x3

    if-ge v9, v10, :cond_c

    .line 210
    move-object v9, v3

    move v10, v6

    aget v9, v9, v10

    move v7, v9

    .line 211
    .local v7, "cValue":I
    move v9, v4

    packed-switch v9, :pswitch_data_0

    .line 264
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v9

    throw v9

    .line 213
    :pswitch_0
    move v9, v7

    const/4 v10, 0x3

    if-ge v9, v10, :cond_3

    .line 214
    move v9, v7

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    move v4, v9

    .line 209
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 215
    :cond_3
    move v9, v7

    sget-object v10, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->C40_BASIC_SET_CHARS:[C

    array-length v10, v10

    if-ge v9, v10, :cond_5

    .line 216
    sget-object v9, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->C40_BASIC_SET_CHARS:[C

    move v10, v7

    aget-char v9, v9, v10

    move v8, v9

    .line 217
    .local v8, "c40char":C
    move v9, v2

    if-eqz v9, :cond_4

    .line 218
    move-object v9, v1

    move v10, v8

    const/16 v11, 0x80

    add-int/lit16 v10, v10, 0x80

    int-to-char v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 219
    const/4 v9, 0x0

    move v2, v9

    .line 223
    :goto_3
    goto :goto_2

    .line 221
    :cond_4
    move-object v9, v1

    move v10, v8

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    goto :goto_3

    .line 224
    .end local v8    # "c40char":C
    :cond_5
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v9

    throw v9

    .line 228
    :pswitch_1
    move v9, v2

    if-eqz v9, :cond_6

    .line 229
    move-object v9, v1

    move v10, v7

    const/16 v11, 0x80

    add-int/lit16 v10, v10, 0x80

    int-to-char v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 230
    const/4 v9, 0x0

    move v2, v9

    .line 234
    :goto_4
    const/4 v9, 0x0

    move v4, v9

    .line 235
    goto :goto_2

    .line 232
    :cond_6
    move-object v9, v1

    move v10, v7

    int-to-char v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    goto :goto_4

    .line 237
    :pswitch_2
    move v9, v7

    sget-object v10, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->C40_SHIFT2_SET_CHARS:[C

    array-length v10, v10

    if-ge v9, v10, :cond_8

    .line 238
    sget-object v9, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->C40_SHIFT2_SET_CHARS:[C

    move v10, v7

    aget-char v9, v9, v10

    move v8, v9

    .line 239
    .restart local v8    # "c40char":C
    move v9, v2

    if-eqz v9, :cond_7

    .line 240
    move-object v9, v1

    move v10, v8

    const/16 v11, 0x80

    add-int/lit16 v10, v10, 0x80

    int-to-char v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 241
    const/4 v9, 0x0

    move v2, v9

    .line 245
    .line 252
    .end local v8    # "c40char":C
    :goto_5
    const/4 v9, 0x0

    move v4, v9

    .line 253
    goto :goto_2

    .line 243
    .restart local v8    # "c40char":C
    :cond_7
    move-object v9, v1

    move v10, v8

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    goto :goto_5

    .line 245
    .end local v8    # "c40char":C
    :cond_8
    move v9, v7

    const/16 v10, 0x1b

    if-ne v9, v10, :cond_9

    .line 246
    move-object v9, v1

    const/16 v10, 0x1d

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    goto :goto_5

    .line 247
    :cond_9
    move v9, v7

    const/16 v10, 0x1e

    if-ne v9, v10, :cond_a

    .line 248
    const/4 v9, 0x1

    move v2, v9

    goto :goto_5

    .line 250
    :cond_a
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v9

    throw v9

    .line 255
    :pswitch_3
    move v9, v2

    if-eqz v9, :cond_b

    .line 256
    move-object v9, v1

    move v10, v7

    const/16 v11, 0xe0

    add-int/lit16 v10, v10, 0xe0

    int-to-char v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 257
    const/4 v9, 0x0

    move v2, v9

    .line 261
    :goto_6
    const/4 v9, 0x0

    move v4, v9

    .line 262
    goto/16 :goto_2

    .line 259
    :cond_b
    move-object v9, v1

    move v10, v7

    const/16 v11, 0x60

    add-int/lit8 v10, v10, 0x60

    int-to-char v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    goto :goto_6

    .line 267
    .end local v7    # "cValue":I
    :cond_c
    move-object v9, v0

    invoke-virtual {v9}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v9

    if-gtz v9, :cond_0

    .line 268
    goto/16 :goto_0

    .line 211
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static decodeEdifactSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;)V
    .locals 7

    .prologue
    .line 418
    move-object v0, p0

    .local v0, "bits":Lcom/google/zxing/common/BitSource;
    move-object v1, p1

    .local v1, "result":Ljava/lang/StringBuilder;
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v5

    const/16 v6, 0x10

    if-gt v5, v6, :cond_1

    .line 419
    .line 441
    :goto_0
    return-void

    .line 422
    :cond_1
    const/4 v5, 0x0

    move v2, v5

    .local v2, "i":I
    :goto_1
    move v5, v2

    const/4 v6, 0x4

    if-ge v5, v6, :cond_5

    .line 423
    move-object v5, v0

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v5

    move v3, v5

    .line 426
    .local v3, "edifactValue":I
    move v5, v3

    const/16 v6, 0x1f

    if-ne v5, v6, :cond_3

    .line 428
    const/16 v5, 0x8

    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/zxing/common/BitSource;->getBitOffset()I

    move-result v6

    rsub-int/lit8 v5, v6, 0x8

    move v4, v5

    .line 429
    .local v4, "bitsLeft":I
    move v5, v4

    const/16 v6, 0x8

    if-eq v5, v6, :cond_2

    .line 430
    move-object v5, v0

    move v6, v4

    invoke-virtual {v5, v6}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v5

    .line 432
    :cond_2
    goto :goto_0

    .line 435
    .end local v4    # "bitsLeft":I
    :cond_3
    move v5, v3

    const/16 v6, 0x20

    and-int/lit8 v5, v5, 0x20

    if-nez v5, :cond_4

    .line 436
    move v5, v3

    const/16 v6, 0x40

    or-int/lit8 v5, v5, 0x40

    move v3, v5

    .line 438
    :cond_4
    move-object v5, v1

    move v6, v3

    int-to-char v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 422
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 440
    .end local v3    # "edifactValue":I
    :cond_5
    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v5

    if-gtz v5, :cond_0

    .line 441
    goto :goto_0
.end method

.method private static decodeTextSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 277
    move-object v0, p0

    .local v0, "bits":Lcom/google/zxing/common/BitSource;
    move-object v1, p1

    .local v1, "result":Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    move v2, v9

    .line 279
    .local v2, "upperShift":Z
    const/4 v9, 0x3

    new-array v9, v9, [I

    move-object v3, v9

    .line 280
    .local v3, "cValues":[I
    const/4 v9, 0x0

    move v4, v9

    .line 283
    .local v4, "shift":I
    :cond_0
    move-object v9, v0

    invoke-virtual {v9}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_1

    .line 284
    .line 358
    :goto_0
    return-void

    .line 286
    :cond_1
    move-object v9, v0

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v9

    move v5, v9

    .line 287
    .local v5, "firstByte":I
    move v9, v5

    const/16 v10, 0xfe

    if-ne v9, v10, :cond_2

    .line 288
    goto :goto_0

    .line 291
    :cond_2
    move v9, v5

    move-object v10, v0

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v10

    move-object v11, v3

    invoke-static {v9, v10, v11}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->parseTwoBytes(II[I)V

    .line 293
    const/4 v9, 0x0

    move v6, v9

    .local v6, "i":I
    :goto_1
    move v9, v6

    const/4 v10, 0x3

    if-ge v9, v10, :cond_d

    .line 294
    move-object v9, v3

    move v10, v6

    aget v9, v9, v10

    move v7, v9

    .line 295
    .local v7, "cValue":I
    move v9, v4

    packed-switch v9, :pswitch_data_0

    .line 354
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v9

    throw v9

    .line 297
    :pswitch_0
    move v9, v7

    const/4 v10, 0x3

    if-ge v9, v10, :cond_3

    .line 298
    move v9, v7

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    move v4, v9

    .line 293
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 299
    :cond_3
    move v9, v7

    sget-object v10, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->TEXT_BASIC_SET_CHARS:[C

    array-length v10, v10

    if-ge v9, v10, :cond_5

    .line 300
    sget-object v9, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->TEXT_BASIC_SET_CHARS:[C

    move v10, v7

    aget-char v9, v9, v10

    move v8, v9

    .line 301
    .local v8, "textChar":C
    move v9, v2

    if-eqz v9, :cond_4

    .line 302
    move-object v9, v1

    move v10, v8

    const/16 v11, 0x80

    add-int/lit16 v10, v10, 0x80

    int-to-char v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 303
    const/4 v9, 0x0

    move v2, v9

    .line 307
    :goto_3
    goto :goto_2

    .line 305
    :cond_4
    move-object v9, v1

    move v10, v8

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    goto :goto_3

    .line 308
    .end local v8    # "textChar":C
    :cond_5
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v9

    throw v9

    .line 312
    :pswitch_1
    move v9, v2

    if-eqz v9, :cond_6

    .line 313
    move-object v9, v1

    move v10, v7

    const/16 v11, 0x80

    add-int/lit16 v10, v10, 0x80

    int-to-char v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 314
    const/4 v9, 0x0

    move v2, v9

    .line 318
    :goto_4
    const/4 v9, 0x0

    move v4, v9

    .line 319
    goto :goto_2

    .line 316
    :cond_6
    move-object v9, v1

    move v10, v7

    int-to-char v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    goto :goto_4

    .line 322
    :pswitch_2
    move v9, v7

    sget-object v10, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->C40_SHIFT2_SET_CHARS:[C

    array-length v10, v10

    if-ge v9, v10, :cond_8

    .line 323
    sget-object v9, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->C40_SHIFT2_SET_CHARS:[C

    move v10, v7

    aget-char v9, v9, v10

    move v8, v9

    .line 324
    .local v8, "c40char":C
    move v9, v2

    if-eqz v9, :cond_7

    .line 325
    move-object v9, v1

    move v10, v8

    const/16 v11, 0x80

    add-int/lit16 v10, v10, 0x80

    int-to-char v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 326
    const/4 v9, 0x0

    move v2, v9

    .line 330
    .line 337
    .end local v8    # "c40char":C
    :goto_5
    const/4 v9, 0x0

    move v4, v9

    .line 338
    goto :goto_2

    .line 328
    .restart local v8    # "c40char":C
    :cond_7
    move-object v9, v1

    move v10, v8

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    goto :goto_5

    .line 330
    .end local v8    # "c40char":C
    :cond_8
    move v9, v7

    const/16 v10, 0x1b

    if-ne v9, v10, :cond_9

    .line 331
    move-object v9, v1

    const/16 v10, 0x1d

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    goto :goto_5

    .line 332
    :cond_9
    move v9, v7

    const/16 v10, 0x1e

    if-ne v9, v10, :cond_a

    .line 333
    const/4 v9, 0x1

    move v2, v9

    goto :goto_5

    .line 335
    :cond_a
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v9

    throw v9

    .line 340
    :pswitch_3
    move v9, v7

    sget-object v10, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->TEXT_SHIFT3_SET_CHARS:[C

    array-length v10, v10

    if-ge v9, v10, :cond_c

    .line 341
    sget-object v9, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->TEXT_SHIFT3_SET_CHARS:[C

    move v10, v7

    aget-char v9, v9, v10

    move v8, v9

    .line 342
    .local v8, "textChar":C
    move v9, v2

    if-eqz v9, :cond_b

    .line 343
    move-object v9, v1

    move v10, v8

    const/16 v11, 0x80

    add-int/lit16 v10, v10, 0x80

    int-to-char v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 344
    const/4 v9, 0x0

    move v2, v9

    .line 348
    :goto_6
    const/4 v9, 0x0

    move v4, v9

    .line 349
    goto/16 :goto_2

    .line 346
    :cond_b
    move-object v9, v1

    move v10, v8

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    goto :goto_6

    .line 350
    .end local v8    # "textChar":C
    :cond_c
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v9

    throw v9

    .line 357
    .end local v7    # "cValue":I
    :cond_d
    move-object v9, v0

    invoke-virtual {v9}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v9

    if-gtz v9, :cond_0

    .line 358
    goto/16 :goto_0

    .line 295
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static parseTwoBytes(II[I)V
    .locals 10

    .prologue
    .line 403
    move v0, p0

    .local v0, "firstByte":I
    move v1, p1

    .local v1, "secondByte":I
    move-object v2, p2

    .local v2, "result":[I
    move v5, v0

    const/16 v6, 0x8

    shl-int/lit8 v5, v5, 0x8

    move v6, v1

    add-int/2addr v5, v6

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v3, v5

    .line 404
    .local v3, "fullBitValue":I
    move v5, v3

    const/16 v6, 0x640

    div-int/lit16 v5, v5, 0x640

    move v4, v5

    .line 405
    .local v4, "temp":I
    move-object v5, v2

    const/4 v6, 0x0

    move v7, v4

    aput v7, v5, v6

    .line 406
    move v5, v3

    move v6, v4

    const/16 v7, 0x640

    mul-int/lit16 v6, v6, 0x640

    sub-int/2addr v5, v6

    move v3, v5

    .line 407
    move v5, v3

    const/16 v6, 0x28

    div-int/lit8 v5, v5, 0x28

    move v4, v5

    .line 408
    move-object v5, v2

    const/4 v6, 0x1

    move v7, v4

    aput v7, v5, v6

    .line 409
    move-object v5, v2

    const/4 v6, 0x2

    move v7, v3

    move v8, v4

    const/16 v9, 0x28

    mul-int/lit8 v8, v8, 0x28

    sub-int/2addr v7, v8

    aput v7, v5, v6

    .line 410
    return-void
.end method

.method private static unrandomize255State(II)I
    .locals 6

    .prologue
    .line 489
    move v0, p0

    .local v0, "randomizedBase256Codeword":I
    move v1, p1

    .local v1, "base256CodewordPosition":I
    const/16 v4, 0x95

    move v5, v1

    mul-int/2addr v4, v5

    const/16 v5, 0xff

    rem-int/lit16 v4, v4, 0xff

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move v2, v4

    .line 490
    .local v2, "pseudoRandomNumber":I
    move v4, v0

    move v5, v2

    sub-int/2addr v4, v5

    move v3, v4

    .line 491
    .local v3, "tempVariable":I
    move v4, v3

    if-ltz v4, :cond_0

    move v4, v3

    :goto_0
    move v0, v4

    .end local v0    # "randomizedBase256Codeword":I
    return v0

    .restart local v0    # "randomizedBase256Codeword":I
    :cond_0
    move v4, v3

    const/16 v5, 0x100

    add-int/lit16 v4, v4, 0x100

    goto :goto_0
.end method
