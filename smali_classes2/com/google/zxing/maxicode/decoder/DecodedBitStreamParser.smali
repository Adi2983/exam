.class final Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;
.super Ljava/lang/Object;
.source "DecodedBitStreamParser.java"


# static fields
.field private static final ECI:C = '\ufffa'

.field private static final FS:C = '\u001c'

.field private static final GS:C = '\u001d'

.field private static final LATCHA:C = '\ufff7'

.field private static final LATCHB:C = '\ufff8'

.field private static final LOCK:C = '\ufff9'

.field private static final NINE_DIGITS:Ljava/text/NumberFormat;

.field private static final NS:C = '\ufffb'

.field private static final PAD:C = '\ufffc'

.field private static final RS:C = '\u001e'

.field private static final SETS:[Ljava/lang/String;

.field private static final SHIFTA:C = '\ufff0'

.field private static final SHIFTB:C = '\ufff1'

.field private static final SHIFTC:C = '\ufff2'

.field private static final SHIFTD:C = '\ufff3'

.field private static final SHIFTE:C = '\ufff4'

.field private static final THREESHIFTA:C = '\ufff6'

.field private static final THREE_DIGITS:Ljava/text/NumberFormat;

.field private static final TWOSHIFTA:C = '\ufff5'


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 48
    new-instance v0, Ljava/text/DecimalFormat;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "000000000"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->NINE_DIGITS:Ljava/text/NumberFormat;

    .line 49
    new-instance v0, Ljava/text/DecimalFormat;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "000"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->THREE_DIGITS:Ljava/text/NumberFormat;

    .line 51
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string/jumbo v3, "\nABCDEFGHIJKLMNOPQRSTUVWXYZ\ufffa\u001c\u001d\u001e\ufffb \ufffc\"#$%&\'()*+,-./0123456789:\ufff1\ufff2\ufff3\ufff4\ufff8"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const-string/jumbo v3, "`abcdefghijklmnopqrstuvwxyz\ufffa\u001c\u001d\u001e\ufffb{\ufffc}~\u007f;<=>?[\\]^_ ,./:@!|\ufffc\ufff5\ufff6\ufffc\ufff0\ufff2\ufff3\ufff4\ufff7"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    const-string/jumbo v3, "\u00c0\u00c1\u00c2\u00c3\u00c4\u00c5\u00c6\u00c7\u00c8\u00c9\u00ca\u00cb\u00cc\u00cd\u00ce\u00cf\u00d0\u00d1\u00d2\u00d3\u00d4\u00d5\u00d6\u00d7\u00d8\u00d9\u00da\ufffa\u001c\u001d\u001e\u00db\u00dc\u00dd\u00de\u00df\u00aa\u00ac\u00b1\u00b2\u00b3\u00b5\u00b9\u00ba\u00bc\u00bd\u00be\u0080\u0081\u0082\u0083\u0084\u0085\u0086\u0087\u0088\u0089\ufff7 \ufff9\ufff3\ufff4\ufff8"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    const-string/jumbo v3, "\u00e0\u00e1\u00e2\u00e3\u00e4\u00e5\u00e6\u00e7\u00e8\u00e9\u00ea\u00eb\u00ec\u00ed\u00ee\u00ef\u00f0\u00f1\u00f2\u00f3\u00f4\u00f5\u00f6\u00f7\u00f8\u00f9\u00fa\ufffa\u001c\u001d\u001e\ufffb\u00fb\u00fc\u00fd\u00fe\u00ff\u00a1\u00a8\u00ab\u00af\u00b0\u00b4\u00b7\u00b8\u00bb\u00bf\u008a\u008b\u008c\u008d\u008e\u008f\u0090\u0091\u0092\u0093\u0094\ufff7 \ufff2\ufff9\ufff4\ufff8"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    const-string/jumbo v3, "\u0000\u0001\u0002\u0003\u0004\u0005\u0006\u0007\u0008\t\n\u000b\u000c\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\ufffa\ufffc\ufffc\u001b\ufffb\u001c\u001d\u001e\u001f\u009f\u00a0\u00a2\u00a3\u00a4\u00a5\u00a6\u00a7\u00a9\u00ad\u00ae\u00b6\u0095\u0096\u0097\u0098\u0099\u009a\u009b\u009c\u009d\u009e\ufff7 \ufff2\ufff3\ufff9\ufff8"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x5

    const-string/jumbo v3, "\u0000\u0001\u0002\u0003\u0004\u0005\u0006\u0007\u0008\t\n\u000b\u000c\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f !\"#$%&\'()*+,-./0123456789:;<=>?"

    aput-object v3, v1, v2

    sput-object v0, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->SETS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method

.method static decode([BI)Lcom/google/zxing/common/DecoderResult;
    .locals 14

    .prologue
    .line 64
    move-object v1, p0

    .local v1, "bytes":[B
    move v2, p1

    .local v2, "mode":I
    new-instance v7, Ljava/lang/StringBuilder;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const/16 v9, 0x90

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v3, v7

    .line 65
    .local v3, "result":Ljava/lang/StringBuilder;
    move v7, v2

    packed-switch v7, :pswitch_data_0

    .line 92
    :goto_0
    new-instance v7, Lcom/google/zxing/common/DecoderResult;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v1

    move-object v10, v3

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    move v12, v2

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    move-object v1, v7

    .end local v1    # "bytes":[B
    return-object v1

    .line 69
    .restart local v1    # "bytes":[B
    :pswitch_0
    move v7, v2

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 70
    move-object v7, v1

    invoke-static {v7}, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->getPostCode2([B)I

    move-result v7

    move v5, v7

    .line 71
    .local v5, "pc":I
    new-instance v7, Ljava/text/DecimalFormat;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const-string/jumbo v9, "0000000000"

    const/4 v10, 0x0

    move-object v11, v1

    invoke-static {v11}, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->getPostCode2Length([B)I

    move-result v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    move-object v6, v7

    .line 72
    .local v6, "df":Ljava/text/NumberFormat;
    move-object v7, v6

    move v8, v5

    int-to-long v8, v8

    invoke-virtual {v7, v8, v9}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    .line 76
    .end local v5    # "pc":I
    .end local v6    # "df":Ljava/text/NumberFormat;
    .local v4, "postcode":Ljava/lang/String;
    :goto_1
    sget-object v7, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->THREE_DIGITS:Ljava/text/NumberFormat;

    move-object v8, v1

    invoke-static {v8}, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->getCountry([B)I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v7, v8, v9}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 77
    .local v5, "country":Ljava/lang/String;
    sget-object v7, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->THREE_DIGITS:Ljava/text/NumberFormat;

    move-object v8, v1

    invoke-static {v8}, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->getServiceClass([B)I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v7, v8, v9}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 78
    .local v6, "service":Ljava/lang/String;
    move-object v7, v3

    move-object v8, v1

    const/16 v9, 0xa

    const/16 v10, 0x54

    invoke-static {v8, v9, v10}, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->getMessage([BII)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 79
    move-object v7, v3

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "[)>\u001e01\u001d"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 80
    move-object v7, v3

    const/16 v8, 0x9

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x1d

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x1d

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x1d

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    goto/16 :goto_0

    .line 74
    .end local v4    # "postcode":Ljava/lang/String;
    .end local v5    # "country":Ljava/lang/String;
    .end local v6    # "service":Ljava/lang/String;
    :cond_0
    move-object v7, v1

    invoke-static {v7}, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->getPostCode3([B)Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    .restart local v4    # "postcode":Ljava/lang/String;
    goto :goto_1

    .line 82
    .restart local v5    # "country":Ljava/lang/String;
    .restart local v6    # "service":Ljava/lang/String;
    :cond_1
    move-object v7, v3

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x1d

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x1d

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x1d

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 84
    goto/16 :goto_0

    .line 86
    .end local v4    # "postcode":Ljava/lang/String;
    .end local v5    # "country":Ljava/lang/String;
    .end local v6    # "service":Ljava/lang/String;
    :pswitch_1
    move-object v7, v3

    move-object v8, v1

    const/4 v9, 0x1

    const/16 v10, 0x5d

    invoke-static {v8, v9, v10}, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->getMessage([BII)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 87
    goto/16 :goto_0

    .line 89
    :pswitch_2
    move-object v7, v3

    move-object v8, v1

    const/4 v9, 0x1

    const/16 v10, 0x4d

    invoke-static {v8, v9, v10}, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->getMessage([BII)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    goto/16 :goto_0

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static getBit(I[B)I
    .locals 7

    .prologue
    .line 96
    move v0, p0

    .local v0, "bit":I
    move-object v1, p1

    .local v1, "bytes":[B
    add-int/lit8 v0, v0, -0x1

    .line 97
    move-object v2, v1

    move v3, v0

    const/4 v4, 0x6

    div-int/lit8 v3, v3, 0x6

    aget-byte v2, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x5

    move v5, v0

    const/4 v6, 0x6

    rem-int/lit8 v5, v5, 0x6

    rsub-int/lit8 v4, v5, 0x5

    shl-int/2addr v3, v4

    and-int/2addr v2, v3

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    move v0, v2

    .end local v0    # "bit":I
    return v0

    .restart local v0    # "bit":I
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private static getCountry([B)I
    .locals 3

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "bytes":[B
    move-object v1, v0

    const/16 v2, 0xa

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    invoke-static {v1, v2}, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->getInt([B[B)I

    move-result v1

    move v0, v1

    .end local v0    # "bytes":[B
    return v0

    nop

    :array_0
    .array-data 1
        0x35t
        0x36t
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x25t
        0x26t
    .end array-data
.end method

.method private static getInt([B[B)I
    .locals 8

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "bytes":[B
    move-object v1, p1

    .local v1, "x":[B
    const/4 v4, 0x0

    move v2, v4

    .line 102
    .local v2, "val":I
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move-object v5, v1

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 103
    move v4, v2

    move-object v5, v1

    move v6, v3

    aget-byte v5, v5, v6

    move-object v6, v0

    invoke-static {v5, v6}, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->getBit(I[B)I

    move-result v5

    move-object v6, v1

    array-length v6, v6

    move v7, v3

    sub-int/2addr v6, v7

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    shl-int/2addr v5, v6

    add-int/2addr v4, v5

    move v2, v4

    .line 102
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 105
    :cond_0
    move v4, v2

    move v0, v4

    .end local v0    # "bytes":[B
    return v0
.end method

.method private static getMessage([BII)Ljava/lang/String;
    .locals 15

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "bytes":[B
    move/from16 v1, p1

    .local v1, "start":I
    move/from16 v2, p2

    .local v2, "len":I
    new-instance v10, Ljava/lang/StringBuilder;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v10

    .line 140
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v10, -0x1

    move v4, v10

    .line 141
    .local v4, "shift":I
    const/4 v10, 0x0

    move v5, v10

    .line 142
    .local v5, "set":I
    const/4 v10, 0x0

    move v6, v10

    .line 143
    .local v6, "lastset":I
    move v10, v1

    move v7, v10

    .local v7, "i":I
    :goto_0
    move v10, v7

    move v11, v1

    move v12, v2

    add-int/2addr v11, v12

    if-ge v10, v11, :cond_1

    .line 144
    sget-object v10, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->SETS:[Ljava/lang/String;

    move v11, v5

    aget-object v10, v10, v11

    move-object v11, v0

    move v12, v7

    aget-byte v11, v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    move v8, v10

    .line 145
    .local v8, "c":C
    move v10, v8

    packed-switch v10, :pswitch_data_0

    .line 181
    :pswitch_0
    move-object v10, v3

    move v11, v8

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 183
    :goto_1
    move v10, v4

    add-int/lit8 v4, v4, -0x1

    if-nez v10, :cond_0

    .line 184
    move v10, v6

    move v5, v10

    .line 143
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 147
    :pswitch_1
    const/4 v10, 0x0

    move v5, v10

    .line 148
    const/4 v10, -0x1

    move v4, v10

    .line 149
    goto :goto_1

    .line 151
    :pswitch_2
    const/4 v10, 0x1

    move v5, v10

    .line 152
    const/4 v10, -0x1

    move v4, v10

    .line 153
    goto :goto_1

    .line 159
    :pswitch_3
    move v10, v5

    move v6, v10

    .line 160
    move v10, v8

    const v11, 0xfff0

    sub-int/2addr v10, v11

    move v5, v10

    .line 161
    const/4 v10, 0x1

    move v4, v10

    .line 162
    goto :goto_1

    .line 164
    :pswitch_4
    move v10, v5

    move v6, v10

    .line 165
    const/4 v10, 0x0

    move v5, v10

    .line 166
    const/4 v10, 0x2

    move v4, v10

    .line 167
    goto :goto_1

    .line 169
    :pswitch_5
    move v10, v5

    move v6, v10

    .line 170
    const/4 v10, 0x0

    move v5, v10

    .line 171
    const/4 v10, 0x3

    move v4, v10

    .line 172
    goto :goto_1

    .line 174
    :pswitch_6
    move-object v10, v0

    add-int/lit8 v7, v7, 0x1

    move v11, v7

    aget-byte v10, v10, v11

    const/16 v11, 0x18

    shl-int/lit8 v10, v10, 0x18

    move-object v11, v0

    add-int/lit8 v7, v7, 0x1

    move v12, v7

    aget-byte v11, v11, v12

    const/16 v12, 0x12

    shl-int/lit8 v11, v11, 0x12

    add-int/2addr v10, v11

    move-object v11, v0

    add-int/lit8 v7, v7, 0x1

    move v12, v7

    aget-byte v11, v11, v12

    const/16 v12, 0xc

    shl-int/lit8 v11, v11, 0xc

    add-int/2addr v10, v11

    move-object v11, v0

    add-int/lit8 v7, v7, 0x1

    move v12, v7

    aget-byte v11, v11, v12

    const/4 v12, 0x6

    shl-int/lit8 v11, v11, 0x6

    add-int/2addr v10, v11

    move-object v11, v0

    add-int/lit8 v7, v7, 0x1

    move v12, v7

    aget-byte v11, v11, v12

    add-int/2addr v10, v11

    move v9, v10

    .line 175
    .local v9, "nsval":I
    move-object v10, v3

    sget-object v11, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->NINE_DIGITS:Ljava/text/NumberFormat;

    move v12, v9

    int-to-long v12, v12

    invoke-virtual {v11, v12, v13}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 176
    goto :goto_1

    .line 178
    .end local v9    # "nsval":I
    :pswitch_7
    const/4 v10, -0x1

    move v4, v10

    .line 179
    goto :goto_1

    .line 187
    .end local v8    # "c":C
    :cond_1
    :goto_2
    move-object v10, v3

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_2

    move-object v10, v3

    move-object v11, v3

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v10

    const v11, 0xfffc

    if-ne v10, v11, :cond_2

    .line 188
    move-object v10, v3

    move-object v11, v3

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_2

    .line 190
    :cond_2
    move-object v10, v3

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v0, v10

    .end local v0    # "bytes":[B
    return-object v0

    .line 145
    nop

    :pswitch_data_0
    .packed-switch 0xfff0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_2
        :pswitch_7
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method private static getPostCode2([B)I
    .locals 3

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "bytes":[B
    move-object v1, v0

    const/16 v2, 0x1e

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    invoke-static {v1, v2}, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->getInt([B[B)I

    move-result v1

    move v0, v1

    .end local v0    # "bytes":[B
    return v0

    nop

    :array_0
    .array-data 1
        0x21t
        0x22t
        0x23t
        0x24t
        0x19t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0x1t
        0x2t
    .end array-data
.end method

.method private static getPostCode2Length([B)I
    .locals 3

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "bytes":[B
    move-object v1, v0

    const/4 v2, 0x6

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    invoke-static {v1, v2}, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->getInt([B[B)I

    move-result v1

    move v0, v1

    .end local v0    # "bytes":[B
    return v0

    :array_0
    .array-data 1
        0x27t
        0x28t
        0x29t
        0x2at
        0x1ft
        0x20t
    .end array-data
.end method

.method private static getPostCode3([B)Ljava/lang/String;
    .locals 11

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "bytes":[B
    const/4 v1, 0x6

    new-array v1, v1, [C

    move-object v10, v1

    move-object v1, v10

    move-object v2, v10

    const/4 v3, 0x0

    sget-object v4, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->SETS:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    move-object v5, v0

    const/4 v6, 0x6

    new-array v6, v6, [B

    fill-array-data v6, :array_0

    invoke-static {v5, v6}, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->getInt([B[B)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aput-char v4, v2, v3

    move-object v10, v1

    move-object v1, v10

    move-object v2, v10

    const/4 v3, 0x1

    sget-object v4, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->SETS:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    move-object v5, v0

    const/4 v6, 0x6

    new-array v6, v6, [B

    fill-array-data v6, :array_1

    invoke-static {v5, v6}, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->getInt([B[B)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aput-char v4, v2, v3

    move-object v10, v1

    move-object v1, v10

    move-object v2, v10

    const/4 v3, 0x2

    sget-object v4, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->SETS:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    move-object v5, v0

    const/4 v6, 0x6

    new-array v6, v6, [B

    fill-array-data v6, :array_2

    invoke-static {v5, v6}, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->getInt([B[B)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aput-char v4, v2, v3

    move-object v10, v1

    move-object v1, v10

    move-object v2, v10

    const/4 v3, 0x3

    sget-object v4, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->SETS:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    move-object v5, v0

    const/4 v6, 0x6

    new-array v6, v6, [B

    fill-array-data v6, :array_3

    invoke-static {v5, v6}, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->getInt([B[B)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aput-char v4, v2, v3

    move-object v10, v1

    move-object v1, v10

    move-object v2, v10

    const/4 v3, 0x4

    sget-object v4, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->SETS:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    move-object v5, v0

    const/4 v6, 0x6

    new-array v6, v6, [B

    fill-array-data v6, :array_4

    invoke-static {v5, v6}, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->getInt([B[B)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aput-char v4, v2, v3

    move-object v10, v1

    move-object v1, v10

    move-object v2, v10

    const/4 v3, 0x5

    sget-object v4, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->SETS:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    move-object v5, v0

    const/4 v6, 0x6

    new-array v6, v6, [B

    fill-array-data v6, :array_5

    invoke-static {v5, v6}, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->getInt([B[B)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aput-char v4, v2, v3

    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "bytes":[B
    return-object v0

    :array_0
    .array-data 1
        0x27t
        0x28t
        0x29t
        0x2at
        0x1ft
        0x20t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x21t
        0x22t
        0x23t
        0x24t
        0x19t
        0x1at
    .end array-data

    nop

    :array_2
    .array-data 1
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x13t
        0x14t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x15t
        0x16t
        0x17t
        0x18t
        0xdt
        0xet
    .end array-data

    nop

    :array_4
    .array-data 1
        0xft
        0x10t
        0x11t
        0x12t
        0x7t
        0x8t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x9t
        0xat
        0xbt
        0xct
        0x1t
        0x2t
    .end array-data
.end method

.method private static getServiceClass([B)I
    .locals 3

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "bytes":[B
    move-object v1, v0

    const/16 v2, 0xa

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    invoke-static {v1, v2}, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->getInt([B[B)I

    move-result v1

    move v0, v1

    .end local v0    # "bytes":[B
    return v0

    nop

    :array_0
    .array-data 1
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x31t
        0x32t
        0x33t
        0x34t
    .end array-data
.end method
