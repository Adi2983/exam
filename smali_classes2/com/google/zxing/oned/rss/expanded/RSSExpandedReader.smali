.class public final Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;
.super Lcom/google/zxing/oned/rss/AbstractRSSReader;
.source "RSSExpandedReader.java"


# static fields
.field private static final EVEN_TOTAL_SUBSET:[I

.field private static final FINDER_PATTERNS:[[I

.field private static final FINDER_PATTERN_SEQUENCES:[[I

.field private static final FINDER_PAT_A:I = 0x0

.field private static final FINDER_PAT_B:I = 0x1

.field private static final FINDER_PAT_C:I = 0x2

.field private static final FINDER_PAT_D:I = 0x3

.field private static final FINDER_PAT_E:I = 0x4

.field private static final FINDER_PAT_F:I = 0x5

.field private static final GSUM:[I

.field private static final LONGEST_SEQUENCE_SIZE:I

.field private static final MAX_PAIRS:I = 0xb

.field private static final SYMBOL_WIDEST:[I

.field private static final WEIGHTS:[[I


# instance fields
.field private final currentSequence:[I

.field private final pairs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;"
        }
    .end annotation
.end field

.field private final startEnd:[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 51
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->SYMBOL_WIDEST:[I

    .line 52
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->EVEN_TOTAL_SUBSET:[I

    .line 53
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->GSUM:[I

    .line 55
    const/4 v0, 0x6

    new-array v0, v0, [[I

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x0

    const/4 v3, 0x4

    new-array v3, v3, [I

    fill-array-data v3, :array_3

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x1

    const/4 v3, 0x4

    new-array v3, v3, [I

    fill-array-data v3, :array_4

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x2

    const/4 v3, 0x4

    new-array v3, v3, [I

    fill-array-data v3, :array_5

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x3

    const/4 v3, 0x4

    new-array v3, v3, [I

    fill-array-data v3, :array_6

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x4

    const/4 v3, 0x4

    new-array v3, v3, [I

    fill-array-data v3, :array_7

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x5

    const/4 v3, 0x4

    new-array v3, v3, [I

    fill-array-data v3, :array_8

    aput-object v3, v1, v2

    sput-object v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->FINDER_PATTERNS:[[I

    .line 64
    const/16 v0, 0x17

    new-array v0, v0, [[I

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x0

    const/16 v3, 0x8

    new-array v3, v3, [I

    fill-array-data v3, :array_9

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x1

    const/16 v3, 0x8

    new-array v3, v3, [I

    fill-array-data v3, :array_a

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x2

    const/16 v3, 0x8

    new-array v3, v3, [I

    fill-array-data v3, :array_b

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x3

    const/16 v3, 0x8

    new-array v3, v3, [I

    fill-array-data v3, :array_c

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x4

    const/16 v3, 0x8

    new-array v3, v3, [I

    fill-array-data v3, :array_d

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x5

    const/16 v3, 0x8

    new-array v3, v3, [I

    fill-array-data v3, :array_e

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x6

    const/16 v3, 0x8

    new-array v3, v3, [I

    fill-array-data v3, :array_f

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x7

    const/16 v3, 0x8

    new-array v3, v3, [I

    fill-array-data v3, :array_10

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x8

    const/16 v3, 0x8

    new-array v3, v3, [I

    fill-array-data v3, :array_11

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x9

    const/16 v3, 0x8

    new-array v3, v3, [I

    fill-array-data v3, :array_12

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0xa

    const/16 v3, 0x8

    new-array v3, v3, [I

    fill-array-data v3, :array_13

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0xb

    const/16 v3, 0x8

    new-array v3, v3, [I

    fill-array-data v3, :array_14

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0xc

    const/16 v3, 0x8

    new-array v3, v3, [I

    fill-array-data v3, :array_15

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0xd

    const/16 v3, 0x8

    new-array v3, v3, [I

    fill-array-data v3, :array_16

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0xe

    const/16 v3, 0x8

    new-array v3, v3, [I

    fill-array-data v3, :array_17

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0xf

    const/16 v3, 0x8

    new-array v3, v3, [I

    fill-array-data v3, :array_18

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x10

    const/16 v3, 0x8

    new-array v3, v3, [I

    fill-array-data v3, :array_19

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x11

    const/16 v3, 0x8

    new-array v3, v3, [I

    fill-array-data v3, :array_1a

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x12

    const/16 v3, 0x8

    new-array v3, v3, [I

    fill-array-data v3, :array_1b

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x13

    const/16 v3, 0x8

    new-array v3, v3, [I

    fill-array-data v3, :array_1c

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x14

    const/16 v3, 0x8

    new-array v3, v3, [I

    fill-array-data v3, :array_1d

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x15

    const/16 v3, 0x8

    new-array v3, v3, [I

    fill-array-data v3, :array_1e

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x16

    const/16 v3, 0x8

    new-array v3, v3, [I

    fill-array-data v3, :array_1f

    aput-object v3, v1, v2

    sput-object v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->WEIGHTS:[[I

    .line 97
    const/16 v0, 0xa

    new-array v0, v0, [[I

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_20

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x1

    const/4 v3, 0x3

    new-array v3, v3, [I

    fill-array-data v3, :array_21

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x2

    const/4 v3, 0x4

    new-array v3, v3, [I

    fill-array-data v3, :array_22

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x3

    const/4 v3, 0x5

    new-array v3, v3, [I

    fill-array-data v3, :array_23

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x4

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_24

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x5

    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_25

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x6

    const/16 v3, 0x8

    new-array v3, v3, [I

    fill-array-data v3, :array_26

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x7

    const/16 v3, 0x9

    new-array v3, v3, [I

    fill-array-data v3, :array_27

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x8

    const/16 v3, 0xa

    new-array v3, v3, [I

    fill-array-data v3, :array_28

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x9

    const/16 v3, 0xb

    new-array v3, v3, [I

    fill-array-data v3, :array_29

    aput-object v3, v1, v2

    sput-object v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->FINDER_PATTERN_SEQUENCES:[[I

    .line 110
    sget-object v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->FINDER_PATTERN_SEQUENCES:[[I

    sget-object v1, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->FINDER_PATTERN_SEQUENCES:[[I

    array-length v1, v1

    const/4 v2, 0x1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    array-length v0, v0

    sput v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->LONGEST_SEQUENCE_SIZE:I

    return-void

    .line 51
    nop

    :array_0
    .array-data 4
        0x7
        0x5
        0x4
        0x3
        0x1
    .end array-data

    .line 52
    :array_1
    .array-data 4
        0x4
        0x14
        0x34
        0x68
        0xcc
    .end array-data

    .line 53
    :array_2
    .array-data 4
        0x0
        0x15c
        0x56c
        0xb84
        0xf94
    .end array-data

    .line 55
    :array_3
    .array-data 4
        0x1
        0x8
        0x4
        0x1
    .end array-data

    :array_4
    .array-data 4
        0x3
        0x6
        0x4
        0x1
    .end array-data

    :array_5
    .array-data 4
        0x3
        0x4
        0x6
        0x1
    .end array-data

    :array_6
    .array-data 4
        0x3
        0x2
        0x8
        0x1
    .end array-data

    :array_7
    .array-data 4
        0x2
        0x6
        0x5
        0x1
    .end array-data

    :array_8
    .array-data 4
        0x2
        0x2
        0x9
        0x1
    .end array-data

    .line 64
    :array_9
    .array-data 4
        0x1
        0x3
        0x9
        0x1b
        0x51
        0x20
        0x60
        0x4d
    .end array-data

    :array_a
    .array-data 4
        0x14
        0x3c
        0xb4
        0x76
        0x8f
        0x7
        0x15
        0x3f
    .end array-data

    :array_b
    .array-data 4
        0xbd
        0x91
        0xd
        0x27
        0x75
        0x8c
        0xd1
        0xcd
    .end array-data

    :array_c
    .array-data 4
        0xc1
        0x9d
        0x31
        0x93
        0x13
        0x39
        0xab
        0x5b
    .end array-data

    :array_d
    .array-data 4
        0x3e
        0xba
        0x88
        0xc5
        0xa9
        0x55
        0x2c
        0x84
    .end array-data

    :array_e
    .array-data 4
        0xb9
        0x85
        0xbc
        0x8e
        0x4
        0xc
        0x24
        0x6c
    .end array-data

    :array_f
    .array-data 4
        0x71
        0x80
        0xad
        0x61
        0x50
        0x1d
        0x57
        0x32
    .end array-data

    :array_10
    .array-data 4
        0x96
        0x1c
        0x54
        0x29
        0x7b
        0x9e
        0x34
        0x9c
    .end array-data

    :array_11
    .array-data 4
        0x2e
        0x8a
        0xcb
        0xbb
        0x8b
        0xce
        0xc4
        0xa6
    .end array-data

    :array_12
    .array-data 4
        0x4c
        0x11
        0x33
        0x99
        0x25
        0x6f
        0x7a
        0x9b
    .end array-data

    :array_13
    .array-data 4
        0x2b
        0x81
        0xb0
        0x6a
        0x6b
        0x6e
        0x77
        0x92
    .end array-data

    :array_14
    .array-data 4
        0x10
        0x30
        0x90
        0xa
        0x1e
        0x5a
        0x3b
        0xb1
    .end array-data

    :array_15
    .array-data 4
        0x6d
        0x74
        0x89
        0xc8
        0xb2
        0x70
        0x7d
        0xa4
    .end array-data

    :array_16
    .array-data 4
        0x46
        0xd2
        0xd0
        0xca
        0xb8
        0x82
        0xb3
        0x73
    .end array-data

    :array_17
    .array-data 4
        0x86
        0xbf
        0x97
        0x1f
        0x5d
        0x44
        0xcc
        0xbe
    .end array-data

    :array_18
    .array-data 4
        0x94
        0x16
        0x42
        0xc6
        0xac
        0x5e
        0x47
        0x2
    .end array-data

    :array_19
    .array-data 4
        0x6
        0x12
        0x36
        0xa2
        0x40
        0xc0
        0x9a
        0x28
    .end array-data

    :array_1a
    .array-data 4
        0x78
        0x95
        0x19
        0x4b
        0xe
        0x2a
        0x7e
        0xa7
    .end array-data

    :array_1b
    .array-data 4
        0x4f
        0x1a
        0x4e
        0x17
        0x45
        0xcf
        0xc7
        0xaf
    .end array-data

    :array_1c
    .array-data 4
        0x67
        0x62
        0x53
        0x26
        0x72
        0x83
        0xb6
        0x7c
    .end array-data

    :array_1d
    .array-data 4
        0xa1
        0x3d
        0xb7
        0x7f
        0xaa
        0x58
        0x35
        0x9f
    .end array-data

    :array_1e
    .array-data 4
        0x37
        0xa5
        0x49
        0x8
        0x18
        0x48
        0x5
        0xf
    .end array-data

    :array_1f
    .array-data 4
        0x2d
        0x87
        0xc2
        0xa0
        0x3a
        0xae
        0x64
        0x59
    .end array-data

    .line 97
    :array_20
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_21
    .array-data 4
        0x0
        0x1
        0x1
    .end array-data

    :array_22
    .array-data 4
        0x0
        0x2
        0x1
        0x3
    .end array-data

    :array_23
    .array-data 4
        0x0
        0x4
        0x1
        0x3
        0x2
    .end array-data

    :array_24
    .array-data 4
        0x0
        0x4
        0x1
        0x3
        0x3
        0x5
    .end array-data

    :array_25
    .array-data 4
        0x0
        0x4
        0x1
        0x3
        0x4
        0x5
        0x5
    .end array-data

    :array_26
    .array-data 4
        0x0
        0x0
        0x1
        0x1
        0x2
        0x2
        0x3
        0x3
    .end array-data

    :array_27
    .array-data 4
        0x0
        0x0
        0x1
        0x1
        0x2
        0x2
        0x3
        0x4
        0x4
    .end array-data

    :array_28
    .array-data 4
        0x0
        0x0
        0x1
        0x1
        0x2
        0x2
        0x3
        0x4
        0x5
        0x5
    .end array-data

    :array_29
    .array-data 4
        0x0
        0x0
        0x1
        0x1
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
        0x5
    .end array-data
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/zxing/oned/rss/AbstractRSSReader;-><init>()V

    .line 114
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/16 v4, 0xb

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v1, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    .line 115
    move-object v1, v0

    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, v1, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    .line 116
    move-object v1, v0

    sget v2, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->LONGEST_SEQUENCE_SIZE:I

    new-array v2, v2, [I

    iput-object v2, v1, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->currentSequence:[I

    return-void
.end method

.method private adjustOddEvenCounts(I)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 489
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;
    move v1, p1

    .local v1, "numModules":I
    move-object v11, v0

    invoke-virtual {v11}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getOddCounts()[I

    move-result-object v11

    invoke-static {v11}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->count([I)I

    move-result v11

    move v2, v11

    .line 490
    .local v2, "oddSum":I
    move-object v11, v0

    invoke-virtual {v11}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getEvenCounts()[I

    move-result-object v11

    invoke-static {v11}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->count([I)I

    move-result v11

    move v3, v11

    .line 491
    .local v3, "evenSum":I
    move v11, v2

    move v12, v3

    add-int/2addr v11, v12

    move v12, v1

    sub-int/2addr v11, v12

    move v4, v11

    .line 492
    .local v4, "mismatch":I
    move v11, v2

    const/4 v12, 0x1

    and-int/lit8 v11, v11, 0x1

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2

    const/4 v11, 0x1

    :goto_0
    move v5, v11

    .line 493
    .local v5, "oddParityBad":Z
    move v11, v3

    const/4 v12, 0x1

    and-int/lit8 v11, v11, 0x1

    if-nez v11, :cond_3

    const/4 v11, 0x1

    :goto_1
    move v6, v11

    .line 495
    .local v6, "evenParityBad":Z
    const/4 v11, 0x0

    move v7, v11

    .line 496
    .local v7, "incrementOdd":Z
    const/4 v11, 0x0

    move v8, v11

    .line 498
    .local v8, "decrementOdd":Z
    move v11, v2

    const/16 v12, 0xd

    if-le v11, v12, :cond_4

    .line 499
    const/4 v11, 0x1

    move v8, v11

    .line 503
    :cond_0
    :goto_2
    const/4 v11, 0x0

    move v9, v11

    .line 504
    .local v9, "incrementEven":Z
    const/4 v11, 0x0

    move v10, v11

    .line 505
    .local v10, "decrementEven":Z
    move v11, v3

    const/16 v12, 0xd

    if-le v11, v12, :cond_5

    .line 506
    const/4 v11, 0x1

    move v10, v11

    .line 511
    :cond_1
    :goto_3
    move v11, v4

    const/4 v12, 0x1

    if-ne v11, v12, :cond_a

    .line 512
    move v11, v5

    if-eqz v11, :cond_8

    .line 513
    move v11, v6

    if-eqz v11, :cond_6

    .line 514
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v11

    throw v11

    .line 492
    .end local v5    # "oddParityBad":Z
    .end local v6    # "evenParityBad":Z
    .end local v7    # "incrementOdd":Z
    .end local v8    # "decrementOdd":Z
    .end local v9    # "incrementEven":Z
    .end local v10    # "decrementEven":Z
    :cond_2
    const/4 v11, 0x0

    goto :goto_0

    .line 493
    .restart local v5    # "oddParityBad":Z
    :cond_3
    const/4 v11, 0x0

    goto :goto_1

    .line 500
    .restart local v6    # "evenParityBad":Z
    .restart local v7    # "incrementOdd":Z
    .restart local v8    # "decrementOdd":Z
    :cond_4
    move v11, v2

    const/4 v12, 0x4

    if-ge v11, v12, :cond_0

    .line 501
    const/4 v11, 0x1

    move v7, v11

    goto :goto_2

    .line 507
    .restart local v9    # "incrementEven":Z
    .restart local v10    # "decrementEven":Z
    :cond_5
    move v11, v3

    const/4 v12, 0x4

    if-ge v11, v12, :cond_1

    .line 508
    const/4 v11, 0x1

    move v9, v11

    goto :goto_3

    .line 516
    :cond_6
    const/4 v11, 0x1

    move v8, v11

    .line 558
    :cond_7
    :goto_4
    move v11, v7

    if-eqz v11, :cond_14

    .line 559
    move v11, v8

    if-eqz v11, :cond_13

    .line 560
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v11

    throw v11

    .line 518
    :cond_8
    move v11, v6

    if-nez v11, :cond_9

    .line 519
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v11

    throw v11

    .line 521
    :cond_9
    const/4 v11, 0x1

    move v10, v11

    goto :goto_4

    .line 523
    :cond_a
    move v11, v4

    const/4 v12, -0x1

    if-ne v11, v12, :cond_e

    .line 524
    move v11, v5

    if-eqz v11, :cond_c

    .line 525
    move v11, v6

    if-eqz v11, :cond_b

    .line 526
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v11

    throw v11

    .line 528
    :cond_b
    const/4 v11, 0x1

    move v7, v11

    goto :goto_4

    .line 530
    :cond_c
    move v11, v6

    if-nez v11, :cond_d

    .line 531
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v11

    throw v11

    .line 533
    :cond_d
    const/4 v11, 0x1

    move v9, v11

    goto :goto_4

    .line 535
    :cond_e
    move v11, v4

    if-nez v11, :cond_12

    .line 536
    move v11, v5

    if-eqz v11, :cond_11

    .line 537
    move v11, v6

    if-nez v11, :cond_f

    .line 538
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v11

    throw v11

    .line 541
    :cond_f
    move v11, v2

    move v12, v3

    if-ge v11, v12, :cond_10

    .line 542
    const/4 v11, 0x1

    move v7, v11

    .line 543
    const/4 v11, 0x1

    move v10, v11

    goto :goto_4

    .line 545
    :cond_10
    const/4 v11, 0x1

    move v8, v11

    .line 546
    const/4 v11, 0x1

    move v9, v11

    goto :goto_4

    .line 549
    :cond_11
    move v11, v6

    if-eqz v11, :cond_7

    .line 550
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v11

    throw v11

    .line 555
    :cond_12
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v11

    throw v11

    .line 562
    :cond_13
    move-object v11, v0

    invoke-virtual {v11}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getOddCounts()[I

    move-result-object v11

    move-object v12, v0

    invoke-virtual {v12}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getOddRoundingErrors()[F

    move-result-object v12

    invoke-static {v11, v12}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->increment([I[F)V

    .line 564
    :cond_14
    move v11, v8

    if-eqz v11, :cond_15

    .line 565
    move-object v11, v0

    invoke-virtual {v11}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getOddCounts()[I

    move-result-object v11

    move-object v12, v0

    invoke-virtual {v12}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getOddRoundingErrors()[F

    move-result-object v12

    invoke-static {v11, v12}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->decrement([I[F)V

    .line 567
    :cond_15
    move v11, v9

    if-eqz v11, :cond_17

    .line 568
    move v11, v10

    if-eqz v11, :cond_16

    .line 569
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v11

    throw v11

    .line 571
    :cond_16
    move-object v11, v0

    invoke-virtual {v11}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getEvenCounts()[I

    move-result-object v11

    move-object v12, v0

    invoke-virtual {v12}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getOddRoundingErrors()[F

    move-result-object v12

    invoke-static {v11, v12}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->increment([I[F)V

    .line 573
    :cond_17
    move v11, v10

    if-eqz v11, :cond_18

    .line 574
    move-object v11, v0

    invoke-virtual {v11}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getEvenCounts()[I

    move-result-object v11

    move-object v12, v0

    invoke-virtual {v12}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getEvenRoundingErrors()[F

    move-result-object v12

    invoke-static {v11, v12}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->decrement([I[F)V

    .line 576
    :cond_18
    return-void
.end method

.method private checkChecksum()Z
    .locals 12

    .prologue
    .line 167
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;
    move-object v9, v0

    iget-object v9, v9, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    move-object v1, v9

    .line 168
    .local v1, "firstPair":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    move-object v9, v1

    invoke-virtual {v9}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getLeftChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v9

    move-object v2, v9

    .line 169
    .local v2, "checkCharacter":Lcom/google/zxing/oned/rss/DataCharacter;
    move-object v9, v1

    invoke-virtual {v9}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getRightChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v9

    move-object v3, v9

    .line 171
    .local v3, "firstCharacter":Lcom/google/zxing/oned/rss/DataCharacter;
    move-object v9, v3

    invoke-virtual {v9}, Lcom/google/zxing/oned/rss/DataCharacter;->getChecksumPortion()I

    move-result v9

    move v4, v9

    .line 172
    .local v4, "checksum":I
    const/4 v9, 0x2

    move v5, v9

    .line 174
    .local v5, "s":I
    const/4 v9, 0x1

    move v6, v9

    .local v6, "i":I
    :goto_0
    move v9, v6

    move-object v10, v0

    iget-object v10, v10, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_1

    .line 175
    move-object v9, v0

    iget-object v9, v9, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    move v10, v6

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    move-object v7, v9

    .line 176
    .local v7, "currentPair":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    move v9, v4

    move-object v10, v7

    invoke-virtual {v10}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getLeftChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/zxing/oned/rss/DataCharacter;->getChecksumPortion()I

    move-result v10

    add-int/2addr v9, v10

    move v4, v9

    .line 177
    add-int/lit8 v5, v5, 0x1

    .line 178
    move-object v9, v7

    invoke-virtual {v9}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getRightChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v9

    move-object v8, v9

    .line 179
    .local v8, "currentRightChar":Lcom/google/zxing/oned/rss/DataCharacter;
    move-object v9, v8

    if-eqz v9, :cond_0

    .line 180
    move v9, v4

    move-object v10, v8

    invoke-virtual {v10}, Lcom/google/zxing/oned/rss/DataCharacter;->getChecksumPortion()I

    move-result v10

    add-int/2addr v9, v10

    move v4, v9

    .line 181
    add-int/lit8 v5, v5, 0x1

    .line 174
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 185
    .end local v7    # "currentPair":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    .end local v8    # "currentRightChar":Lcom/google/zxing/oned/rss/DataCharacter;
    :cond_1
    move v9, v4

    const/16 v10, 0xd3

    rem-int/lit16 v9, v9, 0xd3

    move v4, v9

    .line 187
    const/16 v9, 0xd3

    move v10, v5

    const/4 v11, 0x4

    add-int/lit8 v10, v10, -0x4

    mul-int/2addr v9, v10

    move v10, v4

    add-int/2addr v9, v10

    move v6, v9

    .line 189
    .local v6, "checkCharacterValue":I
    move v9, v6

    move-object v10, v2

    invoke-virtual {v10}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    move-result v10

    if-ne v9, v10, :cond_2

    const/4 v9, 0x1

    :goto_1
    move v0, v9

    .end local v0    # "this":Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;
    return v0

    .restart local v0    # "this":Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;
    :cond_2
    const/4 v9, 0x0

    goto :goto_1
.end method

.method private checkPairSequence(Ljava/util/List;Lcom/google/zxing/oned/rss/FinderPattern;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;",
            "Lcom/google/zxing/oned/rss/FinderPattern;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 241
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;
    move-object v1, p1

    .local v1, "previousPairs":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedPair;>;"
    move-object/from16 v2, p2

    .local v2, "pattern":Lcom/google/zxing/oned/rss/FinderPattern;
    move-object v10, v1

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    move v3, v10

    .line 242
    .local v3, "currentSequenceLength":I
    move v10, v3

    move-object v11, v0

    iget-object v11, v11, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->currentSequence:[I

    array-length v11, v11

    if-le v10, v11, :cond_0

    .line 243
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v10

    throw v10

    .line 246
    :cond_0
    const/4 v10, 0x0

    move v4, v10

    .local v4, "pos":I
    :goto_0
    move v10, v4

    move-object v11, v1

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_1

    .line 247
    move-object v10, v0

    iget-object v10, v10, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->currentSequence:[I

    move v11, v4

    move-object v12, v1

    move v13, v4

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    invoke-virtual {v12}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    move-result v12

    aput v12, v10, v11

    .line 246
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 250
    :cond_1
    move-object v10, v0

    iget-object v10, v10, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->currentSequence:[I

    move v11, v3

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    move-object v12, v2

    invoke-virtual {v12}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    move-result v12

    aput v12, v10, v11

    .line 252
    sget-object v10, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->FINDER_PATTERN_SEQUENCES:[[I

    move-object v4, v10

    .local v4, "arr$":[[I
    move-object v10, v4

    array-length v10, v10

    move v5, v10

    .local v5, "len$":I
    const/4 v10, 0x0

    move v6, v10

    .local v6, "i$":I
    :goto_1
    move v10, v6

    move v11, v5

    if-ge v10, v11, :cond_6

    move-object v10, v4

    move v11, v6

    aget-object v10, v10, v11

    move-object v7, v10

    .line 253
    .local v7, "validSequence":[I
    move-object v10, v7

    array-length v10, v10

    move v11, v3

    if-lt v10, v11, :cond_5

    .line 254
    const/4 v10, 0x1

    move v8, v10

    .line 255
    .local v8, "valid":Z
    const/4 v10, 0x0

    move v9, v10

    .local v9, "pos":I
    :goto_2
    move v10, v9

    move v11, v3

    if-ge v10, v11, :cond_2

    .line 256
    move-object v10, v0

    iget-object v10, v10, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->currentSequence:[I

    move v11, v9

    aget v10, v10, v11

    move-object v11, v7

    move v12, v9

    aget v11, v11, v12

    if-eq v10, v11, :cond_3

    .line 257
    const/4 v10, 0x0

    move v8, v10

    .line 262
    :cond_2
    move v10, v8

    if-eqz v10, :cond_5

    .line 263
    move v10, v3

    move-object v11, v7

    array-length v11, v11

    if-ne v10, v11, :cond_4

    const/4 v10, 0x1

    :goto_3
    move v0, v10

    .end local v0    # "this":Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;
    return v0

    .line 255
    .restart local v0    # "this":Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 263
    :cond_4
    const/4 v10, 0x0

    goto :goto_3

    .line 252
    .end local v8    # "valid":Z
    .end local v9    # "pos":I
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 268
    .end local v7    # "validSequence":[I
    :cond_6
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v10

    throw v10
.end method

.method private static constructResult(Ljava/util/List;)Lcom/google/zxing/Result;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 150
    move-object/from16 v0, p0

    .local v0, "pairs":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedPair;>;"
    move-object v6, v0

    invoke-static {v6}, Lcom/google/zxing/oned/rss/expanded/BitArrayBuilder;->buildBitArray(Ljava/util/List;)Lcom/google/zxing/common/BitArray;

    move-result-object v6

    move-object v1, v6

    .line 152
    .local v1, "binary":Lcom/google/zxing/common/BitArray;
    move-object v6, v1

    invoke-static {v6}, Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;->createDecoder(Lcom/google/zxing/common/BitArray;)Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;

    move-result-object v6

    move-object v2, v6

    .line 153
    .local v2, "decoder":Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;
    move-object v6, v2

    invoke-virtual {v6}, Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;->parseInformation()Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 155
    .local v3, "resultingString":Ljava/lang/String;
    move-object v6, v0

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    invoke-virtual {v6}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/zxing/oned/rss/FinderPattern;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v6

    move-object v4, v6

    .line 156
    .local v4, "firstPoints":[Lcom/google/zxing/ResultPoint;
    move-object v6, v0

    move-object v7, v0

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    invoke-virtual {v6}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/zxing/oned/rss/FinderPattern;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v6

    move-object v5, v6

    .line 158
    .local v5, "lastPoints":[Lcom/google/zxing/ResultPoint;
    new-instance v6, Lcom/google/zxing/Result;

    move-object v15, v6

    move-object v6, v15

    move-object v7, v15

    move-object v8, v3

    const/4 v9, 0x0

    const/4 v10, 0x4

    new-array v10, v10, [Lcom/google/zxing/ResultPoint;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const/4 v12, 0x0

    move-object v13, v4

    const/4 v14, 0x0

    aget-object v13, v13, v14

    aput-object v13, v11, v12

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const/4 v12, 0x1

    move-object v13, v4

    const/4 v14, 0x1

    aget-object v13, v13, v14

    aput-object v13, v11, v12

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const/4 v12, 0x2

    move-object v13, v5

    const/4 v14, 0x0

    aget-object v13, v13, v14

    aput-object v13, v11, v12

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const/4 v12, 0x3

    move-object v13, v5

    const/4 v14, 0x1

    aget-object v13, v13, v14

    aput-object v13, v11, v12

    sget-object v11, Lcom/google/zxing/BarcodeFormat;->RSS_EXPANDED:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    move-object v0, v6

    .end local v0    # "pairs":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedPair;>;"
    return-object v0
.end method

.method private findNextPair(Lcom/google/zxing/common/BitArray;Ljava/util/List;I)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 273
    move-object/from16 v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;
    move-object/from16 v1, p1

    .local v1, "row":Lcom/google/zxing/common/BitArray;
    move-object/from16 v2, p2

    .local v2, "previousPairs":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedPair;>;"
    move/from16 v3, p3

    .local v3, "forcedOffset":I
    move-object v12, v0

    invoke-virtual {v12}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getDecodeFinderCounters()[I

    move-result-object v12

    move-object v4, v12

    .line 274
    .local v4, "counters":[I
    move-object v12, v4

    const/4 v13, 0x0

    const/4 v14, 0x0

    aput v14, v12, v13

    .line 275
    move-object v12, v4

    const/4 v13, 0x1

    const/4 v14, 0x0

    aput v14, v12, v13

    .line 276
    move-object v12, v4

    const/4 v13, 0x2

    const/4 v14, 0x0

    aput v14, v12, v13

    .line 277
    move-object v12, v4

    const/4 v13, 0x3

    const/4 v14, 0x0

    aput v14, v12, v13

    .line 279
    move-object v12, v1

    invoke-virtual {v12}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v12

    move v5, v12

    .line 282
    .local v5, "width":I
    move v12, v3

    if-ltz v12, :cond_1

    .line 283
    move v12, v3

    move v6, v12

    .line 290
    .local v6, "rowOffset":I
    :goto_0
    move-object v12, v2

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x2

    rem-int/lit8 v12, v12, 0x2

    if-eqz v12, :cond_3

    const/4 v12, 0x1

    :goto_1
    move v7, v12

    .line 292
    .local v7, "searchingEvenPair":Z
    const/4 v12, 0x0

    move v8, v12

    .line 293
    .local v8, "isWhite":Z
    :goto_2
    move v12, v6

    move v13, v5

    if-ge v12, v13, :cond_0

    .line 294
    move-object v12, v1

    move v13, v6

    invoke-virtual {v12, v13}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v12

    if-nez v12, :cond_4

    const/4 v12, 0x1

    :goto_3
    move v8, v12

    .line 295
    move v12, v8

    if-nez v12, :cond_5

    .line 296
    .line 301
    :cond_0
    const/4 v12, 0x0

    move v9, v12

    .line 302
    .local v9, "counterPosition":I
    move v12, v6

    move v10, v12

    .line 303
    .local v10, "patternStart":I
    move v12, v6

    move v11, v12

    .local v11, "x":I
    :goto_4
    move v12, v11

    move v13, v5

    if-ge v12, v13, :cond_c

    .line 304
    move-object v12, v1

    move v13, v11

    invoke-virtual {v12, v13}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v12

    move v13, v8

    xor-int/2addr v12, v13

    if-eqz v12, :cond_6

    .line 305
    move-object v12, v4

    move v13, v9

    move-object/from16 v16, v12

    move/from16 v17, v13

    move-object/from16 v12, v16

    move/from16 v13, v17

    move-object/from16 v14, v16

    move/from16 v15, v17

    aget v14, v14, v15

    const/4 v15, 0x1

    add-int/lit8 v14, v14, 0x1

    aput v14, v12, v13

    .line 303
    :goto_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 284
    .end local v6    # "rowOffset":I
    .end local v7    # "searchingEvenPair":Z
    .end local v8    # "isWhite":Z
    .end local v9    # "counterPosition":I
    .end local v10    # "patternStart":I
    .end local v11    # "x":I
    :cond_1
    move-object v12, v2

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 285
    const/4 v12, 0x0

    move v6, v12

    .restart local v6    # "rowOffset":I
    goto :goto_0

    .line 287
    .end local v6    # "rowOffset":I
    :cond_2
    move-object v12, v2

    move-object v13, v2

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x1

    add-int/lit8 v13, v13, -0x1

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    move-object v7, v12

    .line 288
    .local v7, "lastPair":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    move-object v12, v7

    invoke-virtual {v12}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v12

    const/4 v13, 0x1

    aget v12, v12, v13

    move v6, v12

    .restart local v6    # "rowOffset":I
    goto :goto_0

    .line 290
    .end local v7    # "lastPair":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    :cond_3
    const/4 v12, 0x0

    goto :goto_1

    .line 294
    .local v7, "searchingEvenPair":Z
    .restart local v8    # "isWhite":Z
    :cond_4
    const/4 v12, 0x0

    goto :goto_3

    .line 298
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 307
    .restart local v9    # "counterPosition":I
    .restart local v10    # "patternStart":I
    .restart local v11    # "x":I
    :cond_6
    move v12, v9

    const/4 v13, 0x3

    if-ne v12, v13, :cond_a

    .line 308
    move v12, v7

    if-eqz v12, :cond_7

    .line 309
    move-object v12, v4

    invoke-static {v12}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->reverseCounters([I)V

    .line 312
    :cond_7
    move-object v12, v4

    invoke-static {v12}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->isFinderPattern([I)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 313
    move-object v12, v0

    iget-object v12, v12, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    const/4 v13, 0x0

    move v14, v10

    aput v14, v12, v13

    .line 314
    move-object v12, v0

    iget-object v12, v12, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    const/4 v13, 0x1

    move v14, v11

    aput v14, v12, v13

    .line 315
    return-void

    .line 318
    :cond_8
    move v12, v7

    if-eqz v12, :cond_9

    .line 319
    move-object v12, v4

    invoke-static {v12}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->reverseCounters([I)V

    .line 322
    :cond_9
    move v12, v10

    move-object v13, v4

    const/4 v14, 0x0

    aget v13, v13, v14

    move-object v14, v4

    const/4 v15, 0x1

    aget v14, v14, v15

    add-int/2addr v13, v14

    add-int/2addr v12, v13

    move v10, v12

    .line 323
    move-object v12, v4

    const/4 v13, 0x0

    move-object v14, v4

    const/4 v15, 0x2

    aget v14, v14, v15

    aput v14, v12, v13

    .line 324
    move-object v12, v4

    const/4 v13, 0x1

    move-object v14, v4

    const/4 v15, 0x3

    aget v14, v14, v15

    aput v14, v12, v13

    .line 325
    move-object v12, v4

    const/4 v13, 0x2

    const/4 v14, 0x0

    aput v14, v12, v13

    .line 326
    move-object v12, v4

    const/4 v13, 0x3

    const/4 v14, 0x0

    aput v14, v12, v13

    .line 327
    add-int/lit8 v9, v9, -0x1

    .line 331
    :goto_6
    move-object v12, v4

    move v13, v9

    const/4 v14, 0x1

    aput v14, v12, v13

    .line 332
    move v12, v8

    if-nez v12, :cond_b

    const/4 v12, 0x1

    :goto_7
    move v8, v12

    goto/16 :goto_5

    .line 329
    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 332
    :cond_b
    const/4 v12, 0x0

    goto :goto_7

    .line 335
    :cond_c
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v12

    throw v12
.end method

.method private static getNextSecondBar(Lcom/google/zxing/common/BitArray;I)I
    .locals 5

    .prologue
    .line 194
    move-object v0, p0

    .local v0, "row":Lcom/google/zxing/common/BitArray;
    move v1, p1

    .local v1, "initialPos":I
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 195
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Lcom/google/zxing/common/BitArray;->getNextUnset(I)I

    move-result v3

    move v2, v3

    .line 196
    .local v2, "currentPos":I
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v3

    move v2, v3

    .line 201
    :goto_0
    move v3, v2

    move v0, v3

    .end local v0    # "row":Lcom/google/zxing/common/BitArray;
    return v0

    .line 198
    .end local v2    # "currentPos":I
    .restart local v0    # "row":Lcom/google/zxing/common/BitArray;
    :cond_0
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v3

    move v2, v3

    .line 199
    .restart local v2    # "currentPos":I
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Lcom/google/zxing/common/BitArray;->getNextUnset(I)I

    move-result v3

    move v2, v3

    goto :goto_0
.end method

.method private static isNotA1left(Lcom/google/zxing/oned/rss/FinderPattern;ZZ)Z
    .locals 4

    .prologue
    .line 484
    move-object v0, p0

    .local v0, "pattern":Lcom/google/zxing/oned/rss/FinderPattern;
    move v1, p1

    .local v1, "isOddPattern":Z
    move v2, p2

    .local v2, "leftChar":Z
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    move-result v3

    if-nez v3, :cond_0

    move v3, v1

    if-eqz v3, :cond_0

    move v3, v2

    if-nez v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .end local v0    # "pattern":Lcom/google/zxing/oned/rss/FinderPattern;
    return v0

    .restart local v0    # "pattern":Lcom/google/zxing/oned/rss/FinderPattern;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private parseFoundFinderPattern(Lcom/google/zxing/common/BitArray;IZ)Lcom/google/zxing/oned/rss/FinderPattern;
    .locals 18

    .prologue
    .line 353
    move-object/from16 v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;
    move-object/from16 v1, p1

    .local v1, "row":Lcom/google/zxing/common/BitArray;
    move/from16 v2, p2

    .local v2, "rowNumber":I
    move/from16 v3, p3

    .local v3, "oddPattern":Z
    move v10, v3

    if-eqz v10, :cond_1

    .line 356
    move-object v10, v0

    iget-object v10, v10, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    move v7, v10

    .line 358
    .local v7, "firstElementStart":I
    :goto_0
    move v10, v7

    if-ltz v10, :cond_0

    move-object v10, v1

    move v11, v7

    invoke-virtual {v10, v11}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v10

    if-nez v10, :cond_0

    .line 359
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 362
    :cond_0
    add-int/lit8 v7, v7, 0x1

    .line 363
    move-object v10, v0

    iget-object v10, v10, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    move v11, v7

    sub-int/2addr v10, v11

    move v4, v10

    .line 364
    .local v4, "firstCounter":I
    move v10, v7

    move v5, v10

    .line 365
    .local v5, "start":I
    move-object v10, v0

    iget-object v10, v10, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    move v6, v10

    .line 377
    .end local v7    # "firstElementStart":I
    .local v6, "end":I
    :goto_1
    move-object v10, v0

    invoke-virtual {v10}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getDecodeFinderCounters()[I

    move-result-object v10

    move-object v7, v10

    .line 378
    .local v7, "counters":[I
    move-object v10, v7

    const/4 v11, 0x0

    move-object v12, v7

    const/4 v13, 0x1

    move-object v14, v7

    array-length v14, v14

    const/4 v15, 0x1

    add-int/lit8 v14, v14, -0x1

    invoke-static {v10, v11, v12, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 380
    move-object v10, v7

    const/4 v11, 0x0

    move v12, v4

    aput v12, v10, v11

    .line 383
    move-object v10, v7

    :try_start_0
    sget-object v11, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->FINDER_PATTERNS:[[I

    invoke-static {v10, v11}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->parseFinderValue([I[[I)I
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    move v8, v10

    .line 386
    .line 387
    .local v8, "value":I
    new-instance v10, Lcom/google/zxing/oned/rss/FinderPattern;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    move v12, v8

    const/4 v13, 0x2

    new-array v13, v13, [I

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    const/4 v15, 0x0

    move/from16 v16, v5

    aput v16, v14, v15

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    const/4 v15, 0x1

    move/from16 v16, v6

    aput v16, v14, v15

    move v14, v5

    move v15, v6

    move/from16 v16, v2

    invoke-direct/range {v11 .. v16}, Lcom/google/zxing/oned/rss/FinderPattern;-><init>(I[IIII)V

    move-object v0, v10

    .end local v0    # "this":Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;
    .end local v8    # "value":I
    :goto_2
    return-object v0

    .line 370
    .end local v4    # "firstCounter":I
    .end local v5    # "start":I
    .end local v6    # "end":I
    .end local v7    # "counters":[I
    .restart local v0    # "this":Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;
    :cond_1
    move-object v10, v0

    iget-object v10, v10, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    move v5, v10

    .line 372
    .restart local v5    # "start":I
    move-object v10, v1

    move-object v11, v0

    iget-object v11, v11, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v10, v11}, Lcom/google/zxing/common/BitArray;->getNextUnset(I)I

    move-result v10

    move v6, v10

    .line 373
    .restart local v6    # "end":I
    move v10, v6

    move-object v11, v0

    iget-object v11, v11, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    sub-int/2addr v10, v11

    move v4, v10

    .restart local v4    # "firstCounter":I
    goto :goto_1

    .line 384
    .restart local v7    # "counters":[I
    :catch_0
    move-exception v10

    move-object v9, v10

    .line 385
    .local v9, "nfe":Lcom/google/zxing/NotFoundException;
    const/4 v10, 0x0

    move-object v0, v10

    goto :goto_2
.end method

.method private static reverseCounters([I)V
    .locals 9

    .prologue
    .line 339
    move-object v0, p0

    .local v0, "counters":[I
    move-object v4, v0

    array-length v4, v4

    move v1, v4

    .line 340
    .local v1, "length":I
    const/4 v4, 0x0

    move v2, v4

    .local v2, "i":I
    :goto_0
    move v4, v2

    move v5, v1

    const/4 v6, 0x2

    div-int/lit8 v5, v5, 0x2

    if-ge v4, v5, :cond_0

    .line 341
    move-object v4, v0

    move v5, v2

    aget v4, v4, v5

    move v3, v4

    .line 342
    .local v3, "tmp":I
    move-object v4, v0

    move v5, v2

    move-object v6, v0

    move v7, v1

    move v8, v2

    sub-int/2addr v7, v8

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    aget v6, v6, v7

    aput v6, v4, v5

    .line 343
    move-object v4, v0

    move v5, v1

    move v6, v2

    sub-int/2addr v5, v6

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v6, v3

    aput v6, v4, v5

    .line 340
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 345
    .end local v3    # "tmp":I
    :cond_0
    return-void
.end method


# virtual methods
.method decodeDataCharacter(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/oned/rss/FinderPattern;ZZ)Lcom/google/zxing/oned/rss/DataCharacter;
    .locals 33
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 394
    move-object/from16 v2, p0

    .local v2, "this":Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;
    move-object/from16 v3, p1

    .local v3, "row":Lcom/google/zxing/common/BitArray;
    move-object/from16 v4, p2

    .local v4, "pattern":Lcom/google/zxing/oned/rss/FinderPattern;
    move/from16 v5, p3

    .local v5, "isOddPattern":Z
    move/from16 v6, p4

    .local v6, "leftChar":Z
    move-object/from16 v28, v2

    invoke-virtual/range {v28 .. v28}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getDataCharacterCounters()[I

    move-result-object v28

    move-object/from16 v7, v28

    .line 395
    .local v7, "counters":[I
    move-object/from16 v28, v7

    const/16 v29, 0x0

    const/16 v30, 0x0

    aput v30, v28, v29

    .line 396
    move-object/from16 v28, v7

    const/16 v29, 0x1

    const/16 v30, 0x0

    aput v30, v28, v29

    .line 397
    move-object/from16 v28, v7

    const/16 v29, 0x2

    const/16 v30, 0x0

    aput v30, v28, v29

    .line 398
    move-object/from16 v28, v7

    const/16 v29, 0x3

    const/16 v30, 0x0

    aput v30, v28, v29

    .line 399
    move-object/from16 v28, v7

    const/16 v29, 0x4

    const/16 v30, 0x0

    aput v30, v28, v29

    .line 400
    move-object/from16 v28, v7

    const/16 v29, 0x5

    const/16 v30, 0x0

    aput v30, v28, v29

    .line 401
    move-object/from16 v28, v7

    const/16 v29, 0x6

    const/16 v30, 0x0

    aput v30, v28, v29

    .line 402
    move-object/from16 v28, v7

    const/16 v29, 0x7

    const/16 v30, 0x0

    aput v30, v28, v29

    .line 404
    move/from16 v28, v6

    if-eqz v28, :cond_2

    .line 405
    move-object/from16 v28, v3

    move-object/from16 v29, v4

    invoke-virtual/range {v29 .. v29}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v29

    const/16 v30, 0x0

    aget v29, v29, v30

    move-object/from16 v30, v7

    invoke-static/range {v28 .. v30}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->recordPatternInReverse(Lcom/google/zxing/common/BitArray;I[I)V

    .line 416
    :cond_0
    const/16 v28, 0x11

    move/from16 v8, v28

    .line 417
    .local v8, "numModules":I
    move-object/from16 v28, v7

    invoke-static/range {v28 .. v28}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->count([I)I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move/from16 v29, v8

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    div-float v28, v28, v29

    move/from16 v9, v28

    .line 419
    .local v9, "elementWidth":F
    move-object/from16 v28, v2

    invoke-virtual/range {v28 .. v28}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getOddCounts()[I

    move-result-object v28

    move-object/from16 v10, v28

    .line 420
    .local v10, "oddCounts":[I
    move-object/from16 v28, v2

    invoke-virtual/range {v28 .. v28}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getEvenCounts()[I

    move-result-object v28

    move-object/from16 v11, v28

    .line 421
    .local v11, "evenCounts":[I
    move-object/from16 v28, v2

    invoke-virtual/range {v28 .. v28}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getOddRoundingErrors()[F

    move-result-object v28

    move-object/from16 v12, v28

    .line 422
    .local v12, "oddRoundingErrors":[F
    move-object/from16 v28, v2

    invoke-virtual/range {v28 .. v28}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getEvenRoundingErrors()[F

    move-result-object v28

    move-object/from16 v13, v28

    .line 424
    .local v13, "evenRoundingErrors":[F
    const/16 v28, 0x0

    move/from16 v14, v28

    .local v14, "i":I
    :goto_0
    move/from16 v28, v14

    move-object/from16 v29, v7

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_5

    .line 425
    const/high16 v28, 0x3f800000    # 1.0f

    move-object/from16 v29, v7

    move/from16 v30, v14

    aget v29, v29, v30

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    mul-float v28, v28, v29

    move/from16 v29, v9

    div-float v28, v28, v29

    move/from16 v15, v28

    .line 426
    .local v15, "value":F
    move/from16 v28, v15

    const/high16 v29, 0x3f000000    # 0.5f

    add-float v28, v28, v29

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    move/from16 v16, v28

    .line 427
    .local v16, "count":I
    move/from16 v28, v16

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_3

    .line 428
    const/16 v28, 0x1

    move/from16 v16, v28

    .line 432
    :cond_1
    :goto_1
    move/from16 v28, v14

    const/16 v29, 0x1

    shr-int/lit8 v28, v28, 0x1

    move/from16 v17, v28

    .line 433
    .local v17, "offset":I
    move/from16 v28, v14

    const/16 v29, 0x1

    and-int/lit8 v28, v28, 0x1

    if-nez v28, :cond_4

    .line 434
    move-object/from16 v28, v10

    move/from16 v29, v17

    move/from16 v30, v16

    aput v30, v28, v29

    .line 435
    move-object/from16 v28, v12

    move/from16 v29, v17

    move/from16 v30, v15

    move/from16 v31, v16

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    sub-float v30, v30, v31

    aput v30, v28, v29

    .line 424
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 407
    .end local v8    # "numModules":I
    .end local v9    # "elementWidth":F
    .end local v10    # "oddCounts":[I
    .end local v11    # "evenCounts":[I
    .end local v12    # "oddRoundingErrors":[F
    .end local v13    # "evenRoundingErrors":[F
    .end local v14    # "i":I
    .end local v15    # "value":F
    .end local v16    # "count":I
    .end local v17    # "offset":I
    :cond_2
    move-object/from16 v28, v3

    move-object/from16 v29, v4

    invoke-virtual/range {v29 .. v29}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v29

    const/16 v30, 0x1

    aget v29, v29, v30

    const/16 v30, 0x1

    add-int/lit8 v29, v29, 0x1

    move-object/from16 v30, v7

    invoke-static/range {v28 .. v30}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    .line 409
    const/16 v28, 0x0

    move/from16 v8, v28

    .local v8, "i":I
    move-object/from16 v28, v7

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v28, v0

    const/16 v29, 0x1

    add-int/lit8 v28, v28, -0x1

    move/from16 v9, v28

    .local v9, "j":I
    :goto_3
    move/from16 v28, v8

    move/from16 v29, v9

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_0

    .line 410
    move-object/from16 v28, v7

    move/from16 v29, v8

    aget v28, v28, v29

    move/from16 v10, v28

    .line 411
    .local v10, "temp":I
    move-object/from16 v28, v7

    move/from16 v29, v8

    move-object/from16 v30, v7

    move/from16 v31, v9

    aget v30, v30, v31

    aput v30, v28, v29

    .line 412
    move-object/from16 v28, v7

    move/from16 v29, v9

    move/from16 v30, v10

    aput v30, v28, v29

    .line 409
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v9, v9, -0x1

    goto :goto_3

    .line 429
    .local v8, "numModules":I
    .local v9, "elementWidth":F
    .local v10, "oddCounts":[I
    .restart local v11    # "evenCounts":[I
    .restart local v12    # "oddRoundingErrors":[F
    .restart local v13    # "evenRoundingErrors":[F
    .restart local v14    # "i":I
    .restart local v15    # "value":F
    .restart local v16    # "count":I
    :cond_3
    move/from16 v28, v16

    const/16 v29, 0x8

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_1

    .line 430
    const/16 v28, 0x8

    move/from16 v16, v28

    goto/16 :goto_1

    .line 437
    .restart local v17    # "offset":I
    :cond_4
    move-object/from16 v28, v11

    move/from16 v29, v17

    move/from16 v30, v16

    aput v30, v28, v29

    .line 438
    move-object/from16 v28, v13

    move/from16 v29, v17

    move/from16 v30, v15

    move/from16 v31, v16

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    sub-float v30, v30, v31

    aput v30, v28, v29

    goto :goto_2

    .line 442
    .end local v15    # "value":F
    .end local v16    # "count":I
    .end local v17    # "offset":I
    :cond_5
    move-object/from16 v28, v2

    move/from16 v29, v8

    invoke-direct/range {v28 .. v29}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->adjustOddEvenCounts(I)V

    .line 444
    const/16 v28, 0x4

    move-object/from16 v29, v4

    invoke-virtual/range {v29 .. v29}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    move-result v29

    mul-int v28, v28, v29

    move/from16 v29, v5

    if-eqz v29, :cond_7

    const/16 v29, 0x0

    :goto_4
    add-int v28, v28, v29

    move/from16 v29, v6

    if-eqz v29, :cond_8

    const/16 v29, 0x0

    :goto_5
    add-int v28, v28, v29

    const/16 v29, 0x1

    add-int/lit8 v28, v28, -0x1

    move/from16 v14, v28

    .line 446
    .local v14, "weightRowNumber":I
    const/16 v28, 0x0

    move/from16 v15, v28

    .line 447
    .local v15, "oddSum":I
    const/16 v28, 0x0

    move/from16 v16, v28

    .line 448
    .local v16, "oddChecksumPortion":I
    move-object/from16 v28, v10

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v28, v0

    const/16 v29, 0x1

    add-int/lit8 v28, v28, -0x1

    move/from16 v17, v28

    .local v17, "i":I
    :goto_6
    move/from16 v28, v17

    if-ltz v28, :cond_9

    .line 449
    move-object/from16 v28, v4

    move/from16 v29, v5

    move/from16 v30, v6

    invoke-static/range {v28 .. v30}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->isNotA1left(Lcom/google/zxing/oned/rss/FinderPattern;ZZ)Z

    move-result v28

    if-eqz v28, :cond_6

    .line 450
    sget-object v28, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->WEIGHTS:[[I

    move/from16 v29, v14

    aget-object v28, v28, v29

    const/16 v29, 0x2

    move/from16 v30, v17

    mul-int v29, v29, v30

    aget v28, v28, v29

    move/from16 v18, v28

    .line 451
    .local v18, "weight":I
    move/from16 v28, v16

    move-object/from16 v29, v10

    move/from16 v30, v17

    aget v29, v29, v30

    move/from16 v30, v18

    mul-int v29, v29, v30

    add-int v28, v28, v29

    move/from16 v16, v28

    .line 453
    .end local v18    # "weight":I
    :cond_6
    move/from16 v28, v15

    move-object/from16 v29, v10

    move/from16 v30, v17

    aget v29, v29, v30

    add-int v28, v28, v29

    move/from16 v15, v28

    .line 448
    add-int/lit8 v17, v17, -0x1

    goto :goto_6

    .line 444
    .end local v15    # "oddSum":I
    .end local v16    # "oddChecksumPortion":I
    .end local v17    # "i":I
    .local v14, "i":I
    :cond_7
    const/16 v29, 0x2

    goto :goto_4

    :cond_8
    const/16 v29, 0x1

    goto :goto_5

    .line 455
    .local v14, "weightRowNumber":I
    .restart local v15    # "oddSum":I
    .restart local v16    # "oddChecksumPortion":I
    .restart local v17    # "i":I
    :cond_9
    const/16 v28, 0x0

    move/from16 v17, v28

    .line 456
    .local v17, "evenChecksumPortion":I
    const/16 v28, 0x0

    move/from16 v18, v28

    .line 457
    .local v18, "evenSum":I
    move-object/from16 v28, v11

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v28, v0

    const/16 v29, 0x1

    add-int/lit8 v28, v28, -0x1

    move/from16 v19, v28

    .local v19, "i":I
    :goto_7
    move/from16 v28, v19

    if-ltz v28, :cond_b

    .line 458
    move-object/from16 v28, v4

    move/from16 v29, v5

    move/from16 v30, v6

    invoke-static/range {v28 .. v30}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->isNotA1left(Lcom/google/zxing/oned/rss/FinderPattern;ZZ)Z

    move-result v28

    if-eqz v28, :cond_a

    .line 459
    sget-object v28, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->WEIGHTS:[[I

    move/from16 v29, v14

    aget-object v28, v28, v29

    const/16 v29, 0x2

    move/from16 v30, v19

    mul-int v29, v29, v30

    const/16 v30, 0x1

    add-int/lit8 v29, v29, 0x1

    aget v28, v28, v29

    move/from16 v20, v28

    .line 460
    .local v20, "weight":I
    move/from16 v28, v17

    move-object/from16 v29, v11

    move/from16 v30, v19

    aget v29, v29, v30

    move/from16 v30, v20

    mul-int v29, v29, v30

    add-int v28, v28, v29

    move/from16 v17, v28

    .line 462
    .end local v20    # "weight":I
    :cond_a
    move/from16 v28, v18

    move-object/from16 v29, v11

    move/from16 v30, v19

    aget v29, v29, v30

    add-int v28, v28, v29

    move/from16 v18, v28

    .line 457
    add-int/lit8 v19, v19, -0x1

    goto :goto_7

    .line 464
    :cond_b
    move/from16 v28, v16

    move/from16 v29, v17

    add-int v28, v28, v29

    move/from16 v19, v28

    .line 466
    .local v19, "checksumPortion":I
    move/from16 v28, v15

    const/16 v29, 0x1

    and-int/lit8 v28, v28, 0x1

    if-nez v28, :cond_c

    move/from16 v28, v15

    const/16 v29, 0xd

    move/from16 v0, v28

    move/from16 v1, v29

    if-gt v0, v1, :cond_c

    move/from16 v28, v15

    const/16 v29, 0x4

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_d

    .line 467
    :cond_c
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v28

    throw v28

    .line 470
    :cond_d
    const/16 v28, 0xd

    move/from16 v29, v15

    rsub-int/lit8 v28, v29, 0xd

    const/16 v29, 0x2

    div-int/lit8 v28, v28, 0x2

    move/from16 v20, v28

    .line 471
    .local v20, "group":I
    sget-object v28, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->SYMBOL_WIDEST:[I

    move/from16 v29, v20

    aget v28, v28, v29

    move/from16 v21, v28

    .line 472
    .local v21, "oddWidest":I
    const/16 v28, 0x9

    move/from16 v29, v21

    rsub-int/lit8 v28, v29, 0x9

    move/from16 v22, v28

    .line 473
    .local v22, "evenWidest":I
    move-object/from16 v28, v10

    move/from16 v29, v21

    const/16 v30, 0x1

    invoke-static/range {v28 .. v30}, Lcom/google/zxing/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    move-result v28

    move/from16 v23, v28

    .line 474
    .local v23, "vOdd":I
    move-object/from16 v28, v11

    move/from16 v29, v22

    const/16 v30, 0x0

    invoke-static/range {v28 .. v30}, Lcom/google/zxing/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    move-result v28

    move/from16 v24, v28

    .line 475
    .local v24, "vEven":I
    sget-object v28, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->EVEN_TOTAL_SUBSET:[I

    move/from16 v29, v20

    aget v28, v28, v29

    move/from16 v25, v28

    .line 476
    .local v25, "tEven":I
    sget-object v28, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->GSUM:[I

    move/from16 v29, v20

    aget v28, v28, v29

    move/from16 v26, v28

    .line 477
    .local v26, "gSum":I
    move/from16 v28, v23

    move/from16 v29, v25

    mul-int v28, v28, v29

    move/from16 v29, v24

    add-int v28, v28, v29

    move/from16 v29, v26

    add-int v28, v28, v29

    move/from16 v27, v28

    .line 479
    .local v27, "value":I
    new-instance v28, Lcom/google/zxing/oned/rss/DataCharacter;

    move-object/from16 v32, v28

    move-object/from16 v28, v32

    move-object/from16 v29, v32

    move/from16 v30, v27

    move/from16 v31, v19

    invoke-direct/range {v29 .. v31}, Lcom/google/zxing/oned/rss/DataCharacter;-><init>(II)V

    move-object/from16 v2, v28

    .end local v2    # "this":Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;
    return-object v2
.end method

.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;
    move v1, p1

    .local v1, "rowNumber":I
    move-object v2, p2

    .local v2, "row":Lcom/google/zxing/common/BitArray;
    move-object v3, p3

    .local v3, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->reset()V

    .line 123
    move-object v4, v0

    move v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->decodeRow2pairs(ILcom/google/zxing/common/BitArray;)Ljava/util/List;

    move-result-object v4

    .line 124
    move-object v4, v0

    iget-object v4, v4, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-static {v4}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->constructResult(Ljava/util/List;)Lcom/google/zxing/Result;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;
    return-object v0
.end method

.method decodeRow2pairs(ILcom/google/zxing/common/BitArray;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;
    move v1, p1

    .local v1, "rowNumber":I
    move-object v2, p2

    .local v2, "row":Lcom/google/zxing/common/BitArray;
    :goto_0
    move-object v4, v0

    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    move v7, v1

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->retrieveNextPair(Lcom/google/zxing/common/BitArray;Ljava/util/List;I)Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    move-result-object v4

    move-object v3, v4

    .line 136
    .local v3, "nextPair":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    move-object v4, v0

    iget-object v4, v4, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    move-object v5, v3

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 138
    move-object v4, v3

    invoke-virtual {v4}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->mayBeLast()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 139
    move-object v4, v0

    invoke-direct {v4}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->checkChecksum()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 140
    move-object v4, v0

    iget-object v4, v4, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    move-object v0, v4

    .end local v0    # "this":Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;
    return-object v0

    .line 142
    .restart local v0    # "this":Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;
    :cond_0
    move-object v4, v3

    invoke-virtual {v4}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->mustBeLast()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 143
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v4

    throw v4

    .line 146
    :cond_1
    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 130
    return-void
.end method

.method retrieveNextPair(Lcom/google/zxing/common/BitArray;Ljava/util/List;I)Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;I)",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 207
    move-object/from16 v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;
    move-object/from16 v1, p1

    .local v1, "row":Lcom/google/zxing/common/BitArray;
    move-object/from16 v2, p2

    .local v2, "previousPairs":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedPair;>;"
    move/from16 v3, p3

    .local v3, "rowNumber":I
    move-object v12, v2

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x2

    rem-int/lit8 v12, v12, 0x2

    if-nez v12, :cond_1

    const/4 v12, 0x1

    :goto_0
    move v4, v12

    .line 211
    .local v4, "isOddPattern":Z
    const/4 v12, 0x1

    move v6, v12

    .line 212
    .local v6, "keepFinding":Z
    const/4 v12, -0x1

    move v7, v12

    .line 214
    .local v7, "forcedOffset":I
    :cond_0
    move-object v12, v0

    move-object v13, v1

    move-object v14, v2

    move v15, v7

    invoke-direct {v12, v13, v14, v15}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->findNextPair(Lcom/google/zxing/common/BitArray;Ljava/util/List;I)V

    .line 215
    move-object v12, v0

    move-object v13, v1

    move v14, v3

    move v15, v4

    invoke-direct {v12, v13, v14, v15}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->parseFoundFinderPattern(Lcom/google/zxing/common/BitArray;IZ)Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v12

    move-object v5, v12

    .line 216
    .local v5, "pattern":Lcom/google/zxing/oned/rss/FinderPattern;
    move-object v12, v5

    if-nez v12, :cond_2

    .line 217
    move-object v12, v1

    move-object v13, v0

    iget-object v13, v13, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    invoke-static {v12, v13}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getNextSecondBar(Lcom/google/zxing/common/BitArray;I)I

    move-result v12

    move v7, v12

    .line 221
    :goto_1
    move v12, v6

    if-nez v12, :cond_0

    .line 223
    move-object v12, v0

    move-object v13, v2

    move-object v14, v5

    invoke-direct {v12, v13, v14}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->checkPairSequence(Ljava/util/List;Lcom/google/zxing/oned/rss/FinderPattern;)Z

    move-result v12

    move v8, v12

    .line 225
    .local v8, "mayBeLast":Z
    move-object v12, v0

    move-object v13, v1

    move-object v14, v5

    move v15, v4

    const/16 v16, 0x1

    invoke-virtual/range {v12 .. v16}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->decodeDataCharacter(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/oned/rss/FinderPattern;ZZ)Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v12

    move-object v9, v12

    .line 228
    .local v9, "leftChar":Lcom/google/zxing/oned/rss/DataCharacter;
    move-object v12, v0

    move-object v13, v1

    move-object v14, v5

    move v15, v4

    const/16 v16, 0x0

    :try_start_0
    invoke-virtual/range {v12 .. v16}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->decodeDataCharacter(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/oned/rss/FinderPattern;ZZ)Lcom/google/zxing/oned/rss/DataCharacter;
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    move-object v10, v12

    .line 235
    .line 236
    .local v10, "rightChar":Lcom/google/zxing/oned/rss/DataCharacter;
    :goto_2
    new-instance v12, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    move-object v14, v9

    move-object v15, v10

    move-object/from16 v16, v5

    move/from16 v17, v8

    invoke-direct/range {v13 .. v17}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;-><init>(Lcom/google/zxing/oned/rss/DataCharacter;Lcom/google/zxing/oned/rss/DataCharacter;Lcom/google/zxing/oned/rss/FinderPattern;Z)V

    move-object v0, v12

    .end local v0    # "this":Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;
    return-object v0

    .line 207
    .end local v4    # "isOddPattern":Z
    .end local v5    # "pattern":Lcom/google/zxing/oned/rss/FinderPattern;
    .end local v6    # "keepFinding":Z
    .end local v7    # "forcedOffset":I
    .end local v8    # "mayBeLast":Z
    .end local v9    # "leftChar":Lcom/google/zxing/oned/rss/DataCharacter;
    .end local v10    # "rightChar":Lcom/google/zxing/oned/rss/DataCharacter;
    .restart local v0    # "this":Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;
    :cond_1
    const/4 v12, 0x0

    goto :goto_0

    .line 219
    .restart local v4    # "isOddPattern":Z
    .restart local v5    # "pattern":Lcom/google/zxing/oned/rss/FinderPattern;
    .restart local v6    # "keepFinding":Z
    .restart local v7    # "forcedOffset":I
    :cond_2
    const/4 v12, 0x0

    move v6, v12

    goto :goto_1

    .line 229
    .restart local v8    # "mayBeLast":Z
    .restart local v9    # "leftChar":Lcom/google/zxing/oned/rss/DataCharacter;
    :catch_0
    move-exception v12

    move-object v11, v12

    .line 230
    .local v11, "nfe":Lcom/google/zxing/NotFoundException;
    move v12, v8

    if-eqz v12, :cond_3

    .line 231
    const/4 v12, 0x0

    move-object v10, v12

    .restart local v10    # "rightChar":Lcom/google/zxing/oned/rss/DataCharacter;
    goto :goto_2

    .line 233
    .end local v10    # "rightChar":Lcom/google/zxing/oned/rss/DataCharacter;
    :cond_3
    move-object v12, v11

    throw v12
.end method
