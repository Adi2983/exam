.class public final Lcom/google/zxing/aztec/decoder/Decoder;
.super Ljava/lang/Object;
.source "Decoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/aztec/decoder/Decoder$1;,
        Lcom/google/zxing/aztec/decoder/Decoder$Table;
    }
.end annotation


# static fields
.field private static final DIGIT_TABLE:[Ljava/lang/String;

.field private static final LOWER_TABLE:[Ljava/lang/String;

.field private static final MIXED_TABLE:[Ljava/lang/String;

.field private static final NB_BITS:[I

.field private static final NB_BITS_COMPACT:[I

.field private static final NB_DATABLOCK:[I

.field private static final NB_DATABLOCK_COMPACT:[I

.field private static final PUNCT_TABLE:[Ljava/lang/String;

.field private static final UPPER_TABLE:[Ljava/lang/String;


# instance fields
.field private codewordSize:I

.field private ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

.field private invertedBitCount:I

.field private numCodewords:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 44
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->NB_BITS_COMPACT:[I

    .line 48
    const/16 v0, 0x21

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->NB_BITS:[I

    .line 53
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->NB_DATABLOCK_COMPACT:[I

    .line 57
    const/16 v0, 0x21

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->NB_DATABLOCK:[I

    .line 62
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string/jumbo v3, "CTRL_PS"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const-string/jumbo v3, " "

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    const-string/jumbo v3, "A"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    const-string/jumbo v3, "B"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    const-string/jumbo v3, "C"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x5

    const-string/jumbo v3, "D"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x6

    const-string/jumbo v3, "E"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x7

    const-string/jumbo v3, "F"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x8

    const-string/jumbo v3, "G"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x9

    const-string/jumbo v3, "H"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xa

    const-string/jumbo v3, "I"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xb

    const-string/jumbo v3, "J"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xc

    const-string/jumbo v3, "K"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xd

    const-string/jumbo v3, "L"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xe

    const-string/jumbo v3, "M"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xf

    const-string/jumbo v3, "N"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x10

    const-string/jumbo v3, "O"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x11

    const-string/jumbo v3, "P"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x12

    const-string/jumbo v3, "Q"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x13

    const-string/jumbo v3, "R"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x14

    const-string/jumbo v3, "S"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x15

    const-string/jumbo v3, "T"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x16

    const-string/jumbo v3, "U"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x17

    const-string/jumbo v3, "V"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x18

    const-string/jumbo v3, "W"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x19

    const-string/jumbo v3, "X"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x1a

    const-string/jumbo v3, "Y"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x1b

    const-string/jumbo v3, "Z"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x1c

    const-string/jumbo v3, "CTRL_LL"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x1d

    const-string/jumbo v3, "CTRL_ML"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x1e

    const-string/jumbo v3, "CTRL_DL"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x1f

    const-string/jumbo v3, "CTRL_BS"

    aput-object v3, v1, v2

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->UPPER_TABLE:[Ljava/lang/String;

    .line 67
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string/jumbo v3, "CTRL_PS"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const-string/jumbo v3, " "

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    const-string/jumbo v3, "a"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    const-string/jumbo v3, "b"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    const-string/jumbo v3, "c"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x5

    const-string/jumbo v3, "d"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x6

    const-string/jumbo v3, "e"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x7

    const-string/jumbo v3, "f"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x8

    const-string/jumbo v3, "g"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x9

    const-string/jumbo v3, "h"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xa

    const-string/jumbo v3, "i"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xb

    const-string/jumbo v3, "j"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xc

    const-string/jumbo v3, "k"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xd

    const-string/jumbo v3, "l"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xe

    const-string/jumbo v3, "m"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xf

    const-string/jumbo v3, "n"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x10

    const-string/jumbo v3, "o"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x11

    const-string/jumbo v3, "p"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x12

    const-string/jumbo v3, "q"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x13

    const-string/jumbo v3, "r"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x14

    const-string/jumbo v3, "s"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x15

    const-string/jumbo v3, "t"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x16

    const-string/jumbo v3, "u"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x17

    const-string/jumbo v3, "v"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x18

    const-string/jumbo v3, "w"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x19

    const-string/jumbo v3, "x"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x1a

    const-string/jumbo v3, "y"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x1b

    const-string/jumbo v3, "z"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x1c

    const-string/jumbo v3, "CTRL_US"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x1d

    const-string/jumbo v3, "CTRL_ML"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x1e

    const-string/jumbo v3, "CTRL_DL"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x1f

    const-string/jumbo v3, "CTRL_BS"

    aput-object v3, v1, v2

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->LOWER_TABLE:[Ljava/lang/String;

    .line 72
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string/jumbo v3, "CTRL_PS"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const-string/jumbo v3, " "

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    const-string/jumbo v3, "\u0001"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    const-string/jumbo v3, "\u0002"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    const-string/jumbo v3, "\u0003"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x5

    const-string/jumbo v3, "\u0004"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x6

    const-string/jumbo v3, "\u0005"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x7

    const-string/jumbo v3, "\u0006"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x8

    const-string/jumbo v3, "\u0007"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x9

    const-string/jumbo v3, "\u0008"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xa

    const-string/jumbo v3, "\t"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xb

    const-string/jumbo v3, "\n"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xc

    const-string/jumbo v3, "\u000b"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xd

    const-string/jumbo v3, "\u000c"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xe

    const-string/jumbo v3, "\r"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xf

    const-string/jumbo v3, "\u001b"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x10

    const-string/jumbo v3, "\u001c"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x11

    const-string/jumbo v3, "\u001d"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x12

    const-string/jumbo v3, "\u001e"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x13

    const-string/jumbo v3, "\u001f"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x14

    const-string/jumbo v3, "@"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x15

    const-string/jumbo v3, "\\"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x16

    const-string/jumbo v3, "^"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x17

    const-string/jumbo v3, "_"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x18

    const-string/jumbo v3, "`"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x19

    const-string/jumbo v3, "|"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x1a

    const-string/jumbo v3, "~"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x1b

    const-string/jumbo v3, "\u007f"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x1c

    const-string/jumbo v3, "CTRL_LL"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x1d

    const-string/jumbo v3, "CTRL_UL"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x1e

    const-string/jumbo v3, "CTRL_PL"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x1f

    const-string/jumbo v3, "CTRL_BS"

    aput-object v3, v1, v2

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->MIXED_TABLE:[Ljava/lang/String;

    .line 78
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string/jumbo v3, ""

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const-string/jumbo v3, "\r"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    const-string/jumbo v3, "\r\n"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    const-string/jumbo v3, ". "

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    const-string/jumbo v3, ", "

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x5

    const-string/jumbo v3, ": "

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x6

    const-string/jumbo v3, "!"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x7

    const-string/jumbo v3, "\""

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x8

    const-string/jumbo v3, "#"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x9

    const-string/jumbo v3, "$"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xa

    const-string/jumbo v3, "%"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xb

    const-string/jumbo v3, "&"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xc

    const-string/jumbo v3, "\'"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xd

    const-string/jumbo v3, "("

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xe

    const-string/jumbo v3, ")"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xf

    const-string/jumbo v3, "*"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x10

    const-string/jumbo v3, "+"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x11

    const-string/jumbo v3, ","

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x12

    const-string/jumbo v3, "-"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x13

    const-string/jumbo v3, "."

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x14

    const-string/jumbo v3, "/"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x15

    const-string/jumbo v3, ":"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x16

    const-string/jumbo v3, ";"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x17

    const-string/jumbo v3, "<"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x18

    const-string/jumbo v3, "="

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x19

    const-string/jumbo v3, ">"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x1a

    const-string/jumbo v3, "?"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x1b

    const-string/jumbo v3, "["

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x1c

    const-string/jumbo v3, "]"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x1d

    const-string/jumbo v3, "{"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x1e

    const-string/jumbo v3, "}"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x1f

    const-string/jumbo v3, "CTRL_UL"

    aput-object v3, v1, v2

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->PUNCT_TABLE:[Ljava/lang/String;

    .line 83
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string/jumbo v3, "CTRL_PS"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const-string/jumbo v3, " "

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    const-string/jumbo v3, "0"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    const-string/jumbo v3, "1"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    const-string/jumbo v3, "2"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x5

    const-string/jumbo v3, "3"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x6

    const-string/jumbo v3, "4"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x7

    const-string/jumbo v3, "5"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x8

    const-string/jumbo v3, "6"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x9

    const-string/jumbo v3, "7"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xa

    const-string/jumbo v3, "8"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xb

    const-string/jumbo v3, "9"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xc

    const-string/jumbo v3, ","

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xd

    const-string/jumbo v3, "."

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xe

    const-string/jumbo v3, "CTRL_UL"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xf

    const-string/jumbo v3, "CTRL_US"

    aput-object v3, v1, v2

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->DIGIT_TABLE:[Ljava/lang/String;

    return-void

    .line 44
    nop

    :array_0
    .array-data 4
        0x0
        0x68
        0xf0
        0x198
        0x260
    .end array-data

    .line 48
    :array_1
    .array-data 4
        0x0
        0x80
        0x120
        0x1e0
        0x2c0
        0x3c0
        0x4e0
        0x620
        0x780
        0x900
        0xaa0
        0xc60
        0xe40
        0x1040
        0x1260
        0x14a0
        0x1700
        0x1980
        0x1c20
        0x1ee0
        0x21c0
        0x24c0
        0x27e0
        0x2b20
        0x2e80
        0x3200
        0x35a0
        0x3960
        0x3d40
        0x4140
        0x4560
        0x49a0
        0x4e00
    .end array-data

    .line 53
    :array_2
    .array-data 4
        0x0
        0x11
        0x28
        0x33
        0x4c
    .end array-data

    .line 57
    :array_3
    .array-data 4
        0x0
        0x15
        0x30
        0x3c
        0x58
        0x78
        0x9c
        0xc4
        0xf0
        0xe6
        0x110
        0x13c
        0x16c
        0x1a0
        0x1d6
        0x210
        0x24c
        0x28c
        0x2d0
        0x316
        0x360
        0x3ac
        0x3fc
        0x398
        0x3e0
        0x42a
        0x478
        0x4c8
        0x51a
        0x570
        0x5c8
        0x622
        0x680
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/aztec/decoder/Decoder;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method private correctBits([Z)[Z
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 275
    move-object/from16 v1, p0

    .local v1, "this":Lcom/google/zxing/aztec/decoder/Decoder;
    move-object/from16 v2, p1

    .local v2, "rawbits":[Z
    move-object v15, v1

    iget-object v15, v15, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v15}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v15

    const/16 v16, 0x2

    move/from16 v0, v16

    if-gt v15, v0, :cond_1

    .line 276
    move-object v15, v1

    const/16 v16, 0x6

    move/from16 v0, v16

    iput v0, v15, Lcom/google/zxing/aztec/decoder/Decoder;->codewordSize:I

    .line 277
    sget-object v15, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_6:Lcom/google/zxing/common/reedsolomon/GenericGF;

    move-object v3, v15

    .line 289
    .local v3, "gf":Lcom/google/zxing/common/reedsolomon/GenericGF;
    :goto_0
    move-object v15, v1

    iget-object v15, v15, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v15}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbDatablocks()I

    move-result v15

    move v4, v15

    .line 293
    .local v4, "numDataCodewords":I
    move-object v15, v1

    iget-object v15, v15, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v15}, Lcom/google/zxing/aztec/AztecDetectorResult;->isCompact()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 294
    sget-object v15, Lcom/google/zxing/aztec/decoder/Decoder;->NB_BITS_COMPACT:[I

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v16

    aget v15, v15, v16

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget v0, v0, Lcom/google/zxing/aztec/decoder/Decoder;->numCodewords:I

    move/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget v0, v0, Lcom/google/zxing/aztec/decoder/Decoder;->codewordSize:I

    move/from16 v17, v0

    mul-int v16, v16, v17

    sub-int v15, v15, v16

    move v6, v15

    .line 295
    .local v6, "offset":I
    sget-object v15, Lcom/google/zxing/aztec/decoder/Decoder;->NB_DATABLOCK_COMPACT:[I

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v16

    aget v15, v15, v16

    move/from16 v16, v4

    sub-int v15, v15, v16

    move v5, v15

    .line 301
    .local v5, "numECCodewords":I
    :goto_1
    move-object v15, v1

    iget v15, v15, Lcom/google/zxing/aztec/decoder/Decoder;->numCodewords:I

    new-array v15, v15, [I

    move-object v7, v15

    .line 302
    .local v7, "dataWords":[I
    const/4 v15, 0x0

    move v8, v15

    .local v8, "i":I
    :goto_2
    move v15, v8

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget v0, v0, Lcom/google/zxing/aztec/decoder/Decoder;->numCodewords:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v15, v0, :cond_6

    .line 303
    const/4 v15, 0x1

    move v9, v15

    .line 304
    .local v9, "flag":I
    const/4 v15, 0x1

    move v10, v15

    .local v10, "j":I
    :goto_3
    move v15, v10

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget v0, v0, Lcom/google/zxing/aztec/decoder/Decoder;->codewordSize:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-gt v15, v0, :cond_5

    .line 305
    move-object v15, v2

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget v0, v0, Lcom/google/zxing/aztec/decoder/Decoder;->codewordSize:I

    move/from16 v16, v0

    move/from16 v17, v8

    mul-int v16, v16, v17

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget v0, v0, Lcom/google/zxing/aztec/decoder/Decoder;->codewordSize:I

    move/from16 v17, v0

    add-int v16, v16, v17

    move/from16 v17, v10

    sub-int v16, v16, v17

    move/from16 v17, v6

    add-int v16, v16, v17

    aget-boolean v15, v15, v16

    if-eqz v15, :cond_0

    .line 306
    move-object v15, v7

    move/from16 v16, v8

    move-object/from16 v19, v15

    move/from16 v20, v16

    move-object/from16 v15, v19

    move/from16 v16, v20

    move-object/from16 v17, v19

    move/from16 v18, v20

    aget v17, v17, v18

    move/from16 v18, v9

    add-int v17, v17, v18

    aput v17, v15, v16

    .line 308
    :cond_0
    move v15, v9

    const/16 v16, 0x1

    shl-int/lit8 v15, v15, 0x1

    move v9, v15

    .line 304
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 278
    .end local v3    # "gf":Lcom/google/zxing/common/reedsolomon/GenericGF;
    .end local v4    # "numDataCodewords":I
    .end local v5    # "numECCodewords":I
    .end local v6    # "offset":I
    .end local v7    # "dataWords":[I
    .end local v8    # "i":I
    .end local v9    # "flag":I
    .end local v10    # "j":I
    :cond_1
    move-object v15, v1

    iget-object v15, v15, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v15}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v15

    const/16 v16, 0x8

    move/from16 v0, v16

    if-gt v15, v0, :cond_2

    .line 279
    move-object v15, v1

    const/16 v16, 0x8

    move/from16 v0, v16

    iput v0, v15, Lcom/google/zxing/aztec/decoder/Decoder;->codewordSize:I

    .line 280
    sget-object v15, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_8:Lcom/google/zxing/common/reedsolomon/GenericGF;

    move-object v3, v15

    .restart local v3    # "gf":Lcom/google/zxing/common/reedsolomon/GenericGF;
    goto/16 :goto_0

    .line 281
    .end local v3    # "gf":Lcom/google/zxing/common/reedsolomon/GenericGF;
    :cond_2
    move-object v15, v1

    iget-object v15, v15, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v15}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v15

    const/16 v16, 0x16

    move/from16 v0, v16

    if-gt v15, v0, :cond_3

    .line 282
    move-object v15, v1

    const/16 v16, 0xa

    move/from16 v0, v16

    iput v0, v15, Lcom/google/zxing/aztec/decoder/Decoder;->codewordSize:I

    .line 283
    sget-object v15, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_10:Lcom/google/zxing/common/reedsolomon/GenericGF;

    move-object v3, v15

    .restart local v3    # "gf":Lcom/google/zxing/common/reedsolomon/GenericGF;
    goto/16 :goto_0

    .line 285
    .end local v3    # "gf":Lcom/google/zxing/common/reedsolomon/GenericGF;
    :cond_3
    move-object v15, v1

    const/16 v16, 0xc

    move/from16 v0, v16

    iput v0, v15, Lcom/google/zxing/aztec/decoder/Decoder;->codewordSize:I

    .line 286
    sget-object v15, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_12:Lcom/google/zxing/common/reedsolomon/GenericGF;

    move-object v3, v15

    .restart local v3    # "gf":Lcom/google/zxing/common/reedsolomon/GenericGF;
    goto/16 :goto_0

    .line 297
    .restart local v4    # "numDataCodewords":I
    :cond_4
    sget-object v15, Lcom/google/zxing/aztec/decoder/Decoder;->NB_BITS:[I

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v16

    aget v15, v15, v16

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget v0, v0, Lcom/google/zxing/aztec/decoder/Decoder;->numCodewords:I

    move/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget v0, v0, Lcom/google/zxing/aztec/decoder/Decoder;->codewordSize:I

    move/from16 v17, v0

    mul-int v16, v16, v17

    sub-int v15, v15, v16

    move v6, v15

    .line 298
    .restart local v6    # "offset":I
    sget-object v15, Lcom/google/zxing/aztec/decoder/Decoder;->NB_DATABLOCK:[I

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v16

    aget v15, v15, v16

    move/from16 v16, v4

    sub-int v15, v15, v16

    move v5, v15

    .restart local v5    # "numECCodewords":I
    goto/16 :goto_1

    .line 302
    .restart local v7    # "dataWords":[I
    .restart local v8    # "i":I
    .restart local v9    # "flag":I
    .restart local v10    # "j":I
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 317
    .end local v9    # "flag":I
    .end local v10    # "j":I
    :cond_6
    :try_start_0
    new-instance v15, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    move-object/from16 v17, v3

    invoke-direct/range {v16 .. v17}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    move-object v8, v15

    .line 318
    .local v8, "rsDecoder":Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;
    move-object v15, v8

    move-object/from16 v16, v7

    move/from16 v17, v5

    invoke-virtual/range {v15 .. v17}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->decode([II)V
    :try_end_0
    .catch Lcom/google/zxing/common/reedsolomon/ReedSolomonException; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    .line 323
    const/4 v15, 0x0

    move v6, v15

    .line 324
    move-object v15, v1

    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v15, Lcom/google/zxing/aztec/decoder/Decoder;->invertedBitCount:I

    .line 326
    move v15, v4

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget v0, v0, Lcom/google/zxing/aztec/decoder/Decoder;->codewordSize:I

    move/from16 v16, v0

    mul-int v15, v15, v16

    new-array v15, v15, [Z

    move-object v8, v15

    .line 327
    .local v8, "correctedBits":[Z
    const/4 v15, 0x0

    move v9, v15

    .local v9, "i":I
    :goto_4
    move v15, v9

    move/from16 v16, v4

    move/from16 v0, v16

    if-ge v15, v0, :cond_c

    .line 329
    const/4 v15, 0x0

    move v10, v15

    .line 330
    .local v10, "seriesColor":Z
    const/4 v15, 0x0

    move v11, v15

    .line 331
    .local v11, "seriesCount":I
    const/4 v15, 0x1

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget v0, v0, Lcom/google/zxing/aztec/decoder/Decoder;->codewordSize:I

    move/from16 v16, v0

    const/16 v17, 0x1

    add-int/lit8 v16, v16, -0x1

    shl-int v15, v15, v16

    move v12, v15

    .line 333
    .local v12, "flag":I
    const/4 v15, 0x0

    move v13, v15

    .local v13, "j":I
    :goto_5
    move v15, v13

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget v0, v0, Lcom/google/zxing/aztec/decoder/Decoder;->codewordSize:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v15, v0, :cond_b

    .line 335
    move-object v15, v7

    move/from16 v16, v9

    aget v15, v15, v16

    move/from16 v16, v12

    and-int v15, v15, v16

    move/from16 v16, v12

    move/from16 v0, v16

    if-ne v15, v0, :cond_7

    const/4 v15, 0x1

    :goto_6
    move v14, v15

    .line 337
    .local v14, "color":Z
    move v15, v11

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget v0, v0, Lcom/google/zxing/aztec/decoder/Decoder;->codewordSize:I

    move/from16 v16, v0

    const/16 v17, 0x1

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_9

    .line 339
    move v15, v14

    move/from16 v16, v10

    move/from16 v0, v16

    if-ne v15, v0, :cond_8

    .line 341
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v15

    throw v15

    .line 319
    .end local v8    # "correctedBits":[Z
    .end local v9    # "i":I
    .end local v10    # "seriesColor":Z
    .end local v11    # "seriesCount":I
    .end local v12    # "flag":I
    .end local v13    # "j":I
    .end local v14    # "color":Z
    :catch_0
    move-exception v15

    move-object v8, v15

    .line 320
    .local v8, "rse":Lcom/google/zxing/common/reedsolomon/ReedSolomonException;
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v15

    throw v15

    .line 335
    .local v8, "correctedBits":[Z
    .restart local v9    # "i":I
    .restart local v10    # "seriesColor":Z
    .restart local v11    # "seriesCount":I
    .restart local v12    # "flag":I
    .restart local v13    # "j":I
    :cond_7
    const/4 v15, 0x0

    goto :goto_6

    .line 344
    .restart local v14    # "color":Z
    :cond_8
    const/4 v15, 0x0

    move v10, v15

    .line 345
    const/4 v15, 0x0

    move v11, v15

    .line 346
    add-int/lit8 v6, v6, 0x1

    .line 347
    move-object v15, v1

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    move-object/from16 v0, v16

    iget v0, v0, Lcom/google/zxing/aztec/decoder/Decoder;->invertedBitCount:I

    move/from16 v16, v0

    const/16 v17, 0x1

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    iput v0, v15, Lcom/google/zxing/aztec/decoder/Decoder;->invertedBitCount:I

    .line 361
    :goto_7
    move v15, v12

    const/16 v16, 0x1

    ushr-int/lit8 v15, v15, 0x1

    move v12, v15

    .line 333
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 350
    :cond_9
    move v15, v10

    move/from16 v16, v14

    move/from16 v0, v16

    if-ne v15, v0, :cond_a

    .line 351
    add-int/lit8 v11, v11, 0x1

    .line 357
    :goto_8
    move-object v15, v8

    move/from16 v16, v9

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget v0, v0, Lcom/google/zxing/aztec/decoder/Decoder;->codewordSize:I

    move/from16 v17, v0

    mul-int v16, v16, v17

    move/from16 v17, v13

    add-int v16, v16, v17

    move/from16 v17, v6

    sub-int v16, v16, v17

    move/from16 v17, v14

    aput-boolean v17, v15, v16

    goto :goto_7

    .line 353
    :cond_a
    const/4 v15, 0x1

    move v11, v15

    .line 354
    move v15, v14

    move v10, v15

    goto :goto_8

    .line 327
    .end local v14    # "color":Z
    :cond_b
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_4

    .line 365
    .end local v10    # "seriesColor":Z
    .end local v11    # "seriesCount":I
    .end local v12    # "flag":I
    .end local v13    # "j":I
    :cond_c
    move-object v15, v8

    move-object v1, v15

    .end local v1    # "this":Lcom/google/zxing/aztec/decoder/Decoder;
    return-object v1
.end method

.method private extractBits(Lcom/google/zxing/common/BitMatrix;)[Z
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 377
    move-object/from16 v0, p0

    .local v0, "this":Lcom/google/zxing/aztec/decoder/Decoder;
    move-object/from16 v1, p1

    .local v1, "matrix":Lcom/google/zxing/common/BitMatrix;
    move-object v9, v0

    iget-object v9, v9, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v9}, Lcom/google/zxing/aztec/AztecDetectorResult;->isCompact()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 378
    move-object v9, v0

    iget-object v9, v9, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v9}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v9

    sget-object v10, Lcom/google/zxing/aztec/decoder/Decoder;->NB_BITS_COMPACT:[I

    array-length v10, v10

    if-le v9, v10, :cond_0

    .line 379
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v9

    throw v9

    .line 381
    :cond_0
    sget-object v9, Lcom/google/zxing/aztec/decoder/Decoder;->NB_BITS_COMPACT:[I

    move-object v10, v0

    iget-object v10, v10, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v10}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v10

    aget v9, v9, v10

    new-array v9, v9, [Z

    move-object v2, v9

    .line 382
    .local v2, "rawbits":[Z
    move-object v9, v0

    sget-object v10, Lcom/google/zxing/aztec/decoder/Decoder;->NB_DATABLOCK_COMPACT:[I

    move-object v11, v0

    iget-object v11, v11, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v11}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v11

    aget v10, v10, v11

    iput v10, v9, Lcom/google/zxing/aztec/decoder/Decoder;->numCodewords:I

    .line 391
    :goto_0
    move-object v9, v0

    iget-object v9, v9, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v9}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v9

    move v3, v9

    .line 392
    .local v3, "layer":I
    move-object v9, v1

    invoke-virtual {v9}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v9

    move v4, v9

    .line 393
    .local v4, "size":I
    const/4 v9, 0x0

    move v5, v9

    .line 394
    .local v5, "rawbitsOffset":I
    const/4 v9, 0x0

    move v6, v9

    .line 396
    .local v6, "matrixOffset":I
    :goto_1
    move v9, v3

    if-eqz v9, :cond_5

    .line 398
    const/4 v9, 0x0

    move v7, v9

    .line 399
    .local v7, "flip":I
    const/4 v9, 0x0

    move v8, v9

    .local v8, "i":I
    :goto_2
    move v9, v8

    const/4 v10, 0x2

    move v11, v4

    mul-int/2addr v10, v11

    const/4 v11, 0x4

    add-int/lit8 v10, v10, -0x4

    if-ge v9, v10, :cond_3

    .line 400
    move-object v9, v2

    move v10, v5

    move v11, v8

    add-int/2addr v10, v11

    move-object v11, v1

    move v12, v6

    move v13, v7

    add-int/2addr v12, v13

    move v13, v6

    move v14, v8

    const/4 v15, 0x2

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    invoke-virtual {v11, v12, v13}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v11

    aput-boolean v11, v9, v10

    .line 401
    move-object v9, v2

    move v10, v5

    const/4 v11, 0x2

    move v12, v4

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    const/4 v11, 0x4

    add-int/lit8 v10, v10, -0x4

    move v11, v8

    add-int/2addr v10, v11

    move-object v11, v1

    move v12, v6

    move v13, v8

    const/4 v14, 0x2

    div-int/lit8 v13, v13, 0x2

    add-int/2addr v12, v13

    move v13, v6

    move v14, v4

    add-int/2addr v13, v14

    const/4 v14, 0x1

    add-int/lit8 v13, v13, -0x1

    move v14, v7

    sub-int/2addr v13, v14

    invoke-virtual {v11, v12, v13}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v11

    aput-boolean v11, v9, v10

    .line 402
    move v9, v7

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    const/4 v10, 0x2

    rem-int/lit8 v9, v9, 0x2

    move v7, v9

    .line 399
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 384
    .end local v2    # "rawbits":[Z
    .end local v3    # "layer":I
    .end local v4    # "size":I
    .end local v5    # "rawbitsOffset":I
    .end local v6    # "matrixOffset":I
    .end local v7    # "flip":I
    .end local v8    # "i":I
    :cond_1
    move-object v9, v0

    iget-object v9, v9, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v9}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v9

    sget-object v10, Lcom/google/zxing/aztec/decoder/Decoder;->NB_BITS:[I

    array-length v10, v10

    if-le v9, v10, :cond_2

    .line 385
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v9

    throw v9

    .line 387
    :cond_2
    sget-object v9, Lcom/google/zxing/aztec/decoder/Decoder;->NB_BITS:[I

    move-object v10, v0

    iget-object v10, v10, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v10}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v10

    aget v9, v9, v10

    new-array v9, v9, [Z

    move-object v2, v9

    .line 388
    .restart local v2    # "rawbits":[Z
    move-object v9, v0

    sget-object v10, Lcom/google/zxing/aztec/decoder/Decoder;->NB_DATABLOCK:[I

    move-object v11, v0

    iget-object v11, v11, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v11}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v11

    aget v10, v10, v11

    iput v10, v9, Lcom/google/zxing/aztec/decoder/Decoder;->numCodewords:I

    goto/16 :goto_0

    .line 405
    .restart local v3    # "layer":I
    .restart local v4    # "size":I
    .restart local v5    # "rawbitsOffset":I
    .restart local v6    # "matrixOffset":I
    .restart local v7    # "flip":I
    .restart local v8    # "i":I
    :cond_3
    const/4 v9, 0x0

    move v7, v9

    .line 406
    const/4 v9, 0x2

    move v10, v4

    mul-int/2addr v9, v10

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    move v8, v9

    :goto_3
    move v9, v8

    const/4 v10, 0x5

    if-le v9, v10, :cond_4

    .line 407
    move-object v9, v2

    move v10, v5

    const/4 v11, 0x4

    move v12, v4

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    const/16 v11, 0x8

    add-int/lit8 v10, v10, -0x8

    const/4 v11, 0x2

    move v12, v4

    mul-int/2addr v11, v12

    move v12, v8

    sub-int/2addr v11, v12

    add-int/2addr v10, v11

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    move-object v11, v1

    move v12, v6

    move v13, v4

    add-int/2addr v12, v13

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    move v13, v7

    sub-int/2addr v12, v13

    move v13, v6

    move v14, v8

    const/4 v15, 0x2

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    const/4 v14, 0x1

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v11, v12, v13}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v11

    aput-boolean v11, v9, v10

    .line 409
    move-object v9, v2

    move v10, v5

    const/4 v11, 0x6

    move v12, v4

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    const/16 v11, 0xc

    add-int/lit8 v10, v10, -0xc

    const/4 v11, 0x2

    move v12, v4

    mul-int/2addr v11, v12

    move v12, v8

    sub-int/2addr v11, v12

    add-int/2addr v10, v11

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    move-object v11, v1

    move v12, v6

    move v13, v8

    const/4 v14, 0x2

    div-int/lit8 v13, v13, 0x2

    add-int/2addr v12, v13

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    move v13, v6

    move v14, v7

    add-int/2addr v13, v14

    invoke-virtual {v11, v12, v13}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v11

    aput-boolean v11, v9, v10

    .line 411
    move v9, v7

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    const/4 v10, 0x2

    rem-int/lit8 v9, v9, 0x2

    move v7, v9

    .line 406
    add-int/lit8 v8, v8, -0x1

    goto :goto_3

    .line 414
    :cond_4
    add-int/lit8 v6, v6, 0x2

    .line 415
    move v9, v5

    const/16 v10, 0x8

    move v11, v4

    mul-int/2addr v10, v11

    const/16 v11, 0x10

    add-int/lit8 v10, v10, -0x10

    add-int/2addr v9, v10

    move v5, v9

    .line 416
    add-int/lit8 v3, v3, -0x1

    .line 417
    add-int/lit8 v4, v4, -0x4

    .line 418
    goto/16 :goto_1

    .line 420
    .end local v7    # "flip":I
    .end local v8    # "i":I
    :cond_5
    move-object v9, v2

    move-object v0, v9

    .end local v0    # "this":Lcom/google/zxing/aztec/decoder/Decoder;
    return-object v0
.end method

.method private static getCharacter(Lcom/google/zxing/aztec/decoder/Decoder$Table;I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 250
    move-object v0, p0

    .local v0, "table":Lcom/google/zxing/aztec/decoder/Decoder$Table;
    move v1, p1

    .local v1, "code":I
    sget-object v2, Lcom/google/zxing/aztec/decoder/Decoder$1;->$SwitchMap$com$google$zxing$aztec$decoder$Decoder$Table:[I

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/zxing/aztec/decoder/Decoder$Table;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 262
    const-string/jumbo v2, ""

    move-object v0, v2

    .end local v0    # "table":Lcom/google/zxing/aztec/decoder/Decoder$Table;
    :goto_0
    return-object v0

    .line 252
    .restart local v0    # "table":Lcom/google/zxing/aztec/decoder/Decoder$Table;
    :pswitch_0
    sget-object v2, Lcom/google/zxing/aztec/decoder/Decoder;->UPPER_TABLE:[Ljava/lang/String;

    move v3, v1

    aget-object v2, v2, v3

    move-object v0, v2

    goto :goto_0

    .line 254
    :pswitch_1
    sget-object v2, Lcom/google/zxing/aztec/decoder/Decoder;->LOWER_TABLE:[Ljava/lang/String;

    move v3, v1

    aget-object v2, v2, v3

    move-object v0, v2

    goto :goto_0

    .line 256
    :pswitch_2
    sget-object v2, Lcom/google/zxing/aztec/decoder/Decoder;->MIXED_TABLE:[Ljava/lang/String;

    move v3, v1

    aget-object v2, v2, v3

    move-object v0, v2

    goto :goto_0

    .line 258
    :pswitch_3
    sget-object v2, Lcom/google/zxing/aztec/decoder/Decoder;->PUNCT_TABLE:[Ljava/lang/String;

    move v3, v1

    aget-object v2, v2, v3

    move-object v0, v2

    goto :goto_0

    .line 260
    :pswitch_4
    sget-object v2, Lcom/google/zxing/aztec/decoder/Decoder;->DIGIT_TABLE:[Ljava/lang/String;

    move v3, v1

    aget-object v2, v2, v3

    move-object v0, v2

    goto :goto_0

    .line 250
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getEncodedData([Z)Ljava/lang/String;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 117
    move-object/from16 v0, p0

    .local v0, "this":Lcom/google/zxing/aztec/decoder/Decoder;
    move-object/from16 v1, p1

    .local v1, "correctedBits":[Z
    move-object v14, v0

    iget v14, v14, Lcom/google/zxing/aztec/decoder/Decoder;->codewordSize:I

    move-object v15, v0

    iget-object v15, v15, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v15}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbDatablocks()I

    move-result v15

    mul-int/2addr v14, v15

    move-object v15, v0

    iget v15, v15, Lcom/google/zxing/aztec/decoder/Decoder;->invertedBitCount:I

    sub-int/2addr v14, v15

    move v2, v14

    .line 118
    .local v2, "endIndex":I
    move v14, v2

    move-object v15, v1

    array-length v15, v15

    if-le v14, v15, :cond_0

    .line 119
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v14

    throw v14

    .line 122
    :cond_0
    sget-object v14, Lcom/google/zxing/aztec/decoder/Decoder$Table;->UPPER:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    move-object v3, v14

    .line 123
    .local v3, "lastTable":Lcom/google/zxing/aztec/decoder/Decoder$Table;
    sget-object v14, Lcom/google/zxing/aztec/decoder/Decoder$Table;->UPPER:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    move-object v4, v14

    .line 124
    .local v4, "table":Lcom/google/zxing/aztec/decoder/Decoder$Table;
    const/4 v14, 0x0

    move v5, v14

    .line 125
    .local v5, "startIndex":I
    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v17, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v17

    const/16 v16, 0x14

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v6, v14

    .line 126
    .local v6, "result":Ljava/lang/StringBuilder;
    const/4 v14, 0x0

    move v7, v14

    .line 127
    .local v7, "end":Z
    const/4 v14, 0x0

    move v8, v14

    .line 128
    .local v8, "shift":Z
    const/4 v14, 0x0

    move v9, v14

    .line 129
    .local v9, "switchShift":Z
    const/4 v14, 0x0

    move v10, v14

    .line 131
    .local v10, "binaryShift":Z
    :cond_1
    :goto_0
    move v14, v7

    if-nez v14, :cond_2

    .line 133
    move v14, v8

    if-eqz v14, :cond_3

    .line 135
    const/4 v14, 0x1

    move v9, v14

    .line 142
    :goto_1
    move v14, v10

    if-eqz v14, :cond_a

    .line 143
    move v14, v2

    move v15, v5

    sub-int/2addr v14, v15

    const/4 v15, 0x5

    if-ge v14, v15, :cond_4

    .line 144
    .line 218
    :cond_2
    :goto_2
    move-object v14, v6

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object v0, v14

    .end local v0    # "this":Lcom/google/zxing/aztec/decoder/Decoder;
    return-object v0

    .line 138
    .restart local v0    # "this":Lcom/google/zxing/aztec/decoder/Decoder;
    :cond_3
    move-object v14, v4

    move-object v3, v14

    goto :goto_1

    .line 147
    :cond_4
    move-object v14, v1

    move v15, v5

    const/16 v16, 0x5

    invoke-static/range {v14 .. v16}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v14

    move v12, v14

    .line 148
    .local v12, "length":I
    add-int/lit8 v5, v5, 0x5

    .line 149
    move v14, v12

    if-nez v14, :cond_6

    .line 150
    move v14, v2

    move v15, v5

    sub-int/2addr v14, v15

    const/16 v15, 0xb

    if-ge v14, v15, :cond_5

    .line 151
    goto :goto_2

    .line 154
    :cond_5
    move-object v14, v1

    move v15, v5

    const/16 v16, 0xb

    invoke-static/range {v14 .. v16}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v14

    const/16 v15, 0x1f

    add-int/lit8 v14, v14, 0x1f

    move v12, v14

    .line 155
    add-int/lit8 v5, v5, 0xb

    .line 157
    :cond_6
    const/4 v14, 0x0

    move v13, v14

    .local v13, "charCount":I
    :goto_3
    move v14, v13

    move v15, v12

    if-ge v14, v15, :cond_7

    .line 158
    move v14, v2

    move v15, v5

    sub-int/2addr v14, v15

    const/16 v15, 0x8

    if-ge v14, v15, :cond_9

    .line 159
    const/4 v14, 0x1

    move v7, v14

    .line 167
    :cond_7
    const/4 v14, 0x0

    move v10, v14

    .line 211
    .end local v12    # "length":I
    .end local v13    # "charCount":I
    :cond_8
    :goto_4
    move v14, v9

    if-eqz v14, :cond_1

    .line 212
    move-object v14, v3

    move-object v4, v14

    .line 213
    const/4 v14, 0x0

    move v8, v14

    .line 214
    const/4 v14, 0x0

    move v9, v14

    goto :goto_0

    .line 163
    .restart local v12    # "length":I
    .restart local v13    # "charCount":I
    :cond_9
    move-object v14, v1

    move v15, v5

    const/16 v16, 0x8

    invoke-static/range {v14 .. v16}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v14

    move v11, v14

    .line 164
    .local v11, "code":I
    move-object v14, v6

    move v15, v11

    int-to-char v15, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 165
    add-int/lit8 v5, v5, 0x8

    .line 157
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 169
    .end local v11    # "code":I
    .end local v12    # "length":I
    .end local v13    # "charCount":I
    :cond_a
    move-object v14, v4

    sget-object v15, Lcom/google/zxing/aztec/decoder/Decoder$Table;->BINARY:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    if-ne v14, v15, :cond_c

    .line 170
    move v14, v2

    move v15, v5

    sub-int/2addr v14, v15

    const/16 v15, 0x8

    if-ge v14, v15, :cond_b

    .line 171
    goto :goto_2

    .line 173
    :cond_b
    move-object v14, v1

    move v15, v5

    const/16 v16, 0x8

    invoke-static/range {v14 .. v16}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v14

    move v11, v14

    .line 174
    .restart local v11    # "code":I
    add-int/lit8 v5, v5, 0x8

    .line 176
    move-object v14, v6

    move v15, v11

    int-to-char v15, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    goto :goto_4

    .line 179
    .end local v11    # "code":I
    :cond_c
    const/4 v14, 0x5

    move v12, v14

    .line 181
    .local v12, "size":I
    move-object v14, v4

    sget-object v15, Lcom/google/zxing/aztec/decoder/Decoder$Table;->DIGIT:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    if-ne v14, v15, :cond_d

    .line 182
    const/4 v14, 0x4

    move v12, v14

    .line 185
    :cond_d
    move v14, v2

    move v15, v5

    sub-int/2addr v14, v15

    move v15, v12

    if-ge v14, v15, :cond_e

    .line 186
    goto/16 :goto_2

    .line 189
    :cond_e
    move-object v14, v1

    move v15, v5

    move/from16 v16, v12

    invoke-static/range {v14 .. v16}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v14

    move v11, v14

    .line 190
    .restart local v11    # "code":I
    move v14, v5

    move v15, v12

    add-int/2addr v14, v15

    move v5, v14

    .line 192
    move-object v14, v4

    move v15, v11

    invoke-static {v14, v15}, Lcom/google/zxing/aztec/decoder/Decoder;->getCharacter(Lcom/google/zxing/aztec/decoder/Decoder$Table;I)Ljava/lang/String;

    move-result-object v14

    move-object v13, v14

    .line 193
    .local v13, "str":Ljava/lang/String;
    move-object v14, v13

    const-string/jumbo v15, "CTRL_"

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_f

    .line 195
    move-object v14, v13

    const/4 v15, 0x5

    invoke-virtual {v14, v15}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-static {v14}, Lcom/google/zxing/aztec/decoder/Decoder;->getTable(C)Lcom/google/zxing/aztec/decoder/Decoder$Table;

    move-result-object v14

    move-object v4, v14

    .line 197
    move-object v14, v13

    const/4 v15, 0x6

    invoke-virtual {v14, v15}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x53

    if-ne v14, v15, :cond_8

    .line 198
    const/4 v14, 0x1

    move v8, v14

    .line 199
    move-object v14, v13

    const/4 v15, 0x5

    invoke-virtual {v14, v15}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x42

    if-ne v14, v15, :cond_8

    .line 200
    const/4 v14, 0x1

    move v10, v14

    goto/16 :goto_4

    .line 204
    :cond_f
    move-object v14, v6

    move-object v15, v13

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    goto/16 :goto_4
.end method

.method private static getTable(C)Lcom/google/zxing/aztec/decoder/Decoder$Table;
    .locals 2

    .prologue
    .line 226
    move v0, p0

    .local v0, "t":C
    move v1, v0

    sparse-switch v1, :sswitch_data_0

    .line 239
    sget-object v1, Lcom/google/zxing/aztec/decoder/Decoder$Table;->UPPER:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    move-object v0, v1

    .end local v0    # "t":C
    :goto_0
    return-object v0

    .line 228
    .restart local v0    # "t":C
    :sswitch_0
    sget-object v1, Lcom/google/zxing/aztec/decoder/Decoder$Table;->LOWER:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    move-object v0, v1

    goto :goto_0

    .line 230
    :sswitch_1
    sget-object v1, Lcom/google/zxing/aztec/decoder/Decoder$Table;->PUNCT:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    move-object v0, v1

    goto :goto_0

    .line 232
    :sswitch_2
    sget-object v1, Lcom/google/zxing/aztec/decoder/Decoder$Table;->MIXED:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    move-object v0, v1

    goto :goto_0

    .line 234
    :sswitch_3
    sget-object v1, Lcom/google/zxing/aztec/decoder/Decoder$Table;->DIGIT:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    move-object v0, v1

    goto :goto_0

    .line 236
    :sswitch_4
    sget-object v1, Lcom/google/zxing/aztec/decoder/Decoder$Table;->BINARY:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    move-object v0, v1

    goto :goto_0

    .line 226
    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_4
        0x44 -> :sswitch_3
        0x4c -> :sswitch_0
        0x4d -> :sswitch_2
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method private static readCode([ZII)I
    .locals 8

    .prologue
    .line 460
    move-object v0, p0

    .local v0, "rawbits":[Z
    move v1, p1

    .local v1, "startIndex":I
    move v2, p2

    .local v2, "length":I
    const/4 v5, 0x0

    move v3, v5

    .line 462
    .local v3, "res":I
    move v5, v1

    move v4, v5

    .local v4, "i":I
    :goto_0
    move v5, v4

    move v6, v1

    move v7, v2

    add-int/2addr v6, v7

    if-ge v5, v6, :cond_1

    .line 463
    move v5, v3

    const/4 v6, 0x1

    shl-int/lit8 v5, v5, 0x1

    move v3, v5

    .line 464
    move-object v5, v0

    move v6, v4

    aget-boolean v5, v5, v6

    if-eqz v5, :cond_0

    .line 465
    add-int/lit8 v3, v3, 0x1

    .line 462
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 469
    :cond_1
    move v5, v3

    move v0, v5

    .end local v0    # "rawbits":[Z
    return v0
.end method

.method private static removeDashedLines(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/BitMatrix;
    .locals 13

    .prologue
    .line 427
    move-object v0, p0

    .local v0, "matrix":Lcom/google/zxing/common/BitMatrix;
    const/4 v7, 0x1

    const/4 v8, 0x2

    move-object v9, v0

    invoke-virtual {v9}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v9

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    const/4 v10, 0x2

    div-int/lit8 v9, v9, 0x2

    const/16 v10, 0x10

    div-int/lit8 v9, v9, 0x10

    mul-int/2addr v8, v9

    add-int/2addr v7, v8

    move v1, v7

    .line 428
    .local v1, "nbDashed":I
    new-instance v7, Lcom/google/zxing/common/BitMatrix;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v0

    invoke-virtual {v9}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v9

    move v10, v1

    sub-int/2addr v9, v10

    move-object v10, v0

    invoke-virtual {v10}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v10

    move v11, v1

    sub-int/2addr v10, v11

    invoke-direct {v8, v9, v10}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    move-object v2, v7

    .line 430
    .local v2, "newMatrix":Lcom/google/zxing/common/BitMatrix;
    const/4 v7, 0x0

    move v3, v7

    .line 432
    .local v3, "nx":I
    const/4 v7, 0x0

    move v4, v7

    .local v4, "x":I
    :goto_0
    move v7, v4

    move-object v8, v0

    invoke-virtual {v8}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v8

    if-ge v7, v8, :cond_4

    .line 434
    move-object v7, v0

    invoke-virtual {v7}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v7

    const/4 v8, 0x2

    div-int/lit8 v7, v7, 0x2

    move v8, v4

    sub-int/2addr v7, v8

    const/16 v8, 0x10

    rem-int/lit8 v7, v7, 0x10

    if-nez v7, :cond_0

    .line 435
    .line 432
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 438
    :cond_0
    const/4 v7, 0x0

    move v5, v7

    .line 439
    .local v5, "ny":I
    const/4 v7, 0x0

    move v6, v7

    .local v6, "y":I
    :goto_2
    move v7, v6

    move-object v8, v0

    invoke-virtual {v8}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v8

    if-ge v7, v8, :cond_3

    .line 441
    move-object v7, v0

    invoke-virtual {v7}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v7

    const/4 v8, 0x2

    div-int/lit8 v7, v7, 0x2

    move v8, v6

    sub-int/2addr v7, v8

    const/16 v8, 0x10

    rem-int/lit8 v7, v7, 0x10

    if-nez v7, :cond_1

    .line 442
    .line 439
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 445
    :cond_1
    move-object v7, v0

    move v8, v4

    move v9, v6

    invoke-virtual {v7, v8, v9}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 446
    move-object v7, v2

    move v8, v3

    move v9, v5

    invoke-virtual {v7, v8, v9}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 448
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 450
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 453
    .end local v5    # "ny":I
    .end local v6    # "y":I
    :cond_4
    move-object v7, v2

    move-object v0, v7

    .end local v0    # "matrix":Lcom/google/zxing/common/BitMatrix;
    return-object v0
.end method


# virtual methods
.method public decode(Lcom/google/zxing/aztec/AztecDetectorResult;)Lcom/google/zxing/common/DecoderResult;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/aztec/decoder/Decoder;
    move-object v1, p1

    .local v1, "detectorResult":Lcom/google/zxing/aztec/AztecDetectorResult;
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    .line 94
    move-object v6, v1

    invoke-virtual {v6}, Lcom/google/zxing/aztec/AztecDetectorResult;->getBits()Lcom/google/zxing/common/BitMatrix;

    move-result-object v6

    move-object v2, v6

    .line 96
    .local v2, "matrix":Lcom/google/zxing/common/BitMatrix;
    move-object v6, v0

    iget-object v6, v6, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v6}, Lcom/google/zxing/aztec/AztecDetectorResult;->isCompact()Z

    move-result v6

    if-nez v6, :cond_0

    .line 97
    move-object v6, v0

    iget-object v6, v6, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v6}, Lcom/google/zxing/aztec/AztecDetectorResult;->getBits()Lcom/google/zxing/common/BitMatrix;

    move-result-object v6

    invoke-static {v6}, Lcom/google/zxing/aztec/decoder/Decoder;->removeDashedLines(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v6

    move-object v2, v6

    .line 100
    :cond_0
    move-object v6, v0

    move-object v7, v2

    invoke-direct {v6, v7}, Lcom/google/zxing/aztec/decoder/Decoder;->extractBits(Lcom/google/zxing/common/BitMatrix;)[Z

    move-result-object v6

    move-object v3, v6

    .line 102
    .local v3, "rawbits":[Z
    move-object v6, v0

    move-object v7, v3

    invoke-direct {v6, v7}, Lcom/google/zxing/aztec/decoder/Decoder;->correctBits([Z)[Z

    move-result-object v6

    move-object v4, v6

    .line 104
    .local v4, "correctedBits":[Z
    move-object v6, v0

    move-object v7, v4

    invoke-direct {v6, v7}, Lcom/google/zxing/aztec/decoder/Decoder;->getEncodedData([Z)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 106
    .local v5, "result":Ljava/lang/String;
    new-instance v6, Lcom/google/zxing/common/DecoderResult;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/4 v8, 0x0

    move-object v9, v5

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    move-object v0, v6

    .end local v0    # "this":Lcom/google/zxing/aztec/decoder/Decoder;
    return-object v0
.end method
