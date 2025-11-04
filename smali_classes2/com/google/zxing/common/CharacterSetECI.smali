.class public final enum Lcom/google/zxing/common/CharacterSetECI;
.super Ljava/lang/Enum;
.source "CharacterSetECI.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/zxing/common/CharacterSetECI;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ASCII:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum Big5:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum Cp1250:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum Cp1251:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum Cp1252:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum Cp1256:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum Cp437:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum EUC_KR:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum GB18030:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_1:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_10:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_11:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_13:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_14:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_15:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_16:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_2:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_3:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_4:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_5:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_6:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_7:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_8:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_9:Lcom/google/zxing/common/CharacterSetECI;

.field private static final NAME_TO_ECI:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/zxing/common/CharacterSetECI;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum SJIS:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum UTF8:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum UnicodeBigUnmarked:Lcom/google/zxing/common/CharacterSetECI;

.field private static final VALUE_TO_ECI:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/zxing/common/CharacterSetECI;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final otherEncodingNames:[Ljava/lang/String;

.field private final values:[I


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .prologue
    .line 33
    new-instance v8, Lcom/google/zxing/common/CharacterSetECI;

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    const-string/jumbo v10, "Cp437"

    const/4 v11, 0x0

    const/4 v12, 0x2

    new-array v12, v12, [I

    fill-array-data v12, :array_0

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/String;

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;I[I[Ljava/lang/String;)V

    sput-object v8, Lcom/google/zxing/common/CharacterSetECI;->Cp437:Lcom/google/zxing/common/CharacterSetECI;

    .line 34
    new-instance v8, Lcom/google/zxing/common/CharacterSetECI;

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    const-string/jumbo v10, "ISO8859_1"

    const/4 v11, 0x1

    const/4 v12, 0x2

    new-array v12, v12, [I

    fill-array-data v12, :array_1

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    const/4 v15, 0x0

    const-string/jumbo v16, "ISO-8859-1"

    aput-object v16, v14, v15

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;I[I[Ljava/lang/String;)V

    sput-object v8, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_1:Lcom/google/zxing/common/CharacterSetECI;

    .line 35
    new-instance v8, Lcom/google/zxing/common/CharacterSetECI;

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    const-string/jumbo v10, "ISO8859_2"

    const/4 v11, 0x2

    const/4 v12, 0x4

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    const/4 v15, 0x0

    const-string/jumbo v16, "ISO-8859-2"

    aput-object v16, v14, v15

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v8, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_2:Lcom/google/zxing/common/CharacterSetECI;

    .line 36
    new-instance v8, Lcom/google/zxing/common/CharacterSetECI;

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    const-string/jumbo v10, "ISO8859_3"

    const/4 v11, 0x3

    const/4 v12, 0x5

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    const/4 v15, 0x0

    const-string/jumbo v16, "ISO-8859-3"

    aput-object v16, v14, v15

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v8, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_3:Lcom/google/zxing/common/CharacterSetECI;

    .line 37
    new-instance v8, Lcom/google/zxing/common/CharacterSetECI;

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    const-string/jumbo v10, "ISO8859_4"

    const/4 v11, 0x4

    const/4 v12, 0x6

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    const/4 v15, 0x0

    const-string/jumbo v16, "ISO-8859-4"

    aput-object v16, v14, v15

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v8, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_4:Lcom/google/zxing/common/CharacterSetECI;

    .line 38
    new-instance v8, Lcom/google/zxing/common/CharacterSetECI;

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    const-string/jumbo v10, "ISO8859_5"

    const/4 v11, 0x5

    const/4 v12, 0x7

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    const/4 v15, 0x0

    const-string/jumbo v16, "ISO-8859-5"

    aput-object v16, v14, v15

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v8, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_5:Lcom/google/zxing/common/CharacterSetECI;

    .line 39
    new-instance v8, Lcom/google/zxing/common/CharacterSetECI;

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    const-string/jumbo v10, "ISO8859_6"

    const/4 v11, 0x6

    const/16 v12, 0x8

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    const/4 v15, 0x0

    const-string/jumbo v16, "ISO-8859-6"

    aput-object v16, v14, v15

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v8, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_6:Lcom/google/zxing/common/CharacterSetECI;

    .line 40
    new-instance v8, Lcom/google/zxing/common/CharacterSetECI;

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    const-string/jumbo v10, "ISO8859_7"

    const/4 v11, 0x7

    const/16 v12, 0x9

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    const/4 v15, 0x0

    const-string/jumbo v16, "ISO-8859-7"

    aput-object v16, v14, v15

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v8, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_7:Lcom/google/zxing/common/CharacterSetECI;

    .line 41
    new-instance v8, Lcom/google/zxing/common/CharacterSetECI;

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    const-string/jumbo v10, "ISO8859_8"

    const/16 v11, 0x8

    const/16 v12, 0xa

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    const/4 v15, 0x0

    const-string/jumbo v16, "ISO-8859-8"

    aput-object v16, v14, v15

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v8, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_8:Lcom/google/zxing/common/CharacterSetECI;

    .line 42
    new-instance v8, Lcom/google/zxing/common/CharacterSetECI;

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    const-string/jumbo v10, "ISO8859_9"

    const/16 v11, 0x9

    const/16 v12, 0xb

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    const/4 v15, 0x0

    const-string/jumbo v16, "ISO-8859-9"

    aput-object v16, v14, v15

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v8, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_9:Lcom/google/zxing/common/CharacterSetECI;

    .line 43
    new-instance v8, Lcom/google/zxing/common/CharacterSetECI;

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    const-string/jumbo v10, "ISO8859_10"

    const/16 v11, 0xa

    const/16 v12, 0xc

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    const/4 v15, 0x0

    const-string/jumbo v16, "ISO-8859-10"

    aput-object v16, v14, v15

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v8, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_10:Lcom/google/zxing/common/CharacterSetECI;

    .line 44
    new-instance v8, Lcom/google/zxing/common/CharacterSetECI;

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    const-string/jumbo v10, "ISO8859_11"

    const/16 v11, 0xb

    const/16 v12, 0xd

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    const/4 v15, 0x0

    const-string/jumbo v16, "ISO-8859-11"

    aput-object v16, v14, v15

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v8, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_11:Lcom/google/zxing/common/CharacterSetECI;

    .line 45
    new-instance v8, Lcom/google/zxing/common/CharacterSetECI;

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    const-string/jumbo v10, "ISO8859_13"

    const/16 v11, 0xc

    const/16 v12, 0xf

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    const/4 v15, 0x0

    const-string/jumbo v16, "ISO-8859-13"

    aput-object v16, v14, v15

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v8, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_13:Lcom/google/zxing/common/CharacterSetECI;

    .line 46
    new-instance v8, Lcom/google/zxing/common/CharacterSetECI;

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    const-string/jumbo v10, "ISO8859_14"

    const/16 v11, 0xd

    const/16 v12, 0x10

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    const/4 v15, 0x0

    const-string/jumbo v16, "ISO-8859-14"

    aput-object v16, v14, v15

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v8, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_14:Lcom/google/zxing/common/CharacterSetECI;

    .line 47
    new-instance v8, Lcom/google/zxing/common/CharacterSetECI;

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    const-string/jumbo v10, "ISO8859_15"

    const/16 v11, 0xe

    const/16 v12, 0x11

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    const/4 v15, 0x0

    const-string/jumbo v16, "ISO-8859-15"

    aput-object v16, v14, v15

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v8, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_15:Lcom/google/zxing/common/CharacterSetECI;

    .line 48
    new-instance v8, Lcom/google/zxing/common/CharacterSetECI;

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    const-string/jumbo v10, "ISO8859_16"

    const/16 v11, 0xf

    const/16 v12, 0x12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    const/4 v15, 0x0

    const-string/jumbo v16, "ISO-8859-16"

    aput-object v16, v14, v15

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v8, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_16:Lcom/google/zxing/common/CharacterSetECI;

    .line 49
    new-instance v8, Lcom/google/zxing/common/CharacterSetECI;

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    const-string/jumbo v10, "SJIS"

    const/16 v11, 0x10

    const/16 v12, 0x14

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    const/4 v15, 0x0

    const-string/jumbo v16, "Shift_JIS"

    aput-object v16, v14, v15

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v8, Lcom/google/zxing/common/CharacterSetECI;->SJIS:Lcom/google/zxing/common/CharacterSetECI;

    .line 50
    new-instance v8, Lcom/google/zxing/common/CharacterSetECI;

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    const-string/jumbo v10, "Cp1250"

    const/16 v11, 0x11

    const/16 v12, 0x15

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    const/4 v15, 0x0

    const-string/jumbo v16, "windows-1250"

    aput-object v16, v14, v15

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v8, Lcom/google/zxing/common/CharacterSetECI;->Cp1250:Lcom/google/zxing/common/CharacterSetECI;

    .line 51
    new-instance v8, Lcom/google/zxing/common/CharacterSetECI;

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    const-string/jumbo v10, "Cp1251"

    const/16 v11, 0x12

    const/16 v12, 0x16

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    const/4 v15, 0x0

    const-string/jumbo v16, "windows-1251"

    aput-object v16, v14, v15

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v8, Lcom/google/zxing/common/CharacterSetECI;->Cp1251:Lcom/google/zxing/common/CharacterSetECI;

    .line 52
    new-instance v8, Lcom/google/zxing/common/CharacterSetECI;

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    const-string/jumbo v10, "Cp1252"

    const/16 v11, 0x13

    const/16 v12, 0x17

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    const/4 v15, 0x0

    const-string/jumbo v16, "windows-1252"

    aput-object v16, v14, v15

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v8, Lcom/google/zxing/common/CharacterSetECI;->Cp1252:Lcom/google/zxing/common/CharacterSetECI;

    .line 53
    new-instance v8, Lcom/google/zxing/common/CharacterSetECI;

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    const-string/jumbo v10, "Cp1256"

    const/16 v11, 0x14

    const/16 v12, 0x18

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    const/4 v15, 0x0

    const-string/jumbo v16, "windows-1256"

    aput-object v16, v14, v15

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v8, Lcom/google/zxing/common/CharacterSetECI;->Cp1256:Lcom/google/zxing/common/CharacterSetECI;

    .line 54
    new-instance v8, Lcom/google/zxing/common/CharacterSetECI;

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    const-string/jumbo v10, "UnicodeBigUnmarked"

    const/16 v11, 0x15

    const/16 v12, 0x19

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/String;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    const/4 v15, 0x0

    const-string/jumbo v16, "UTF-16BE"

    aput-object v16, v14, v15

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    const/4 v15, 0x1

    const-string/jumbo v16, "UnicodeBig"

    aput-object v16, v14, v15

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v8, Lcom/google/zxing/common/CharacterSetECI;->UnicodeBigUnmarked:Lcom/google/zxing/common/CharacterSetECI;

    .line 55
    new-instance v8, Lcom/google/zxing/common/CharacterSetECI;

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    const-string/jumbo v10, "UTF8"

    const/16 v11, 0x16

    const/16 v12, 0x1a

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    const/4 v15, 0x0

    const-string/jumbo v16, "UTF-8"

    aput-object v16, v14, v15

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v8, Lcom/google/zxing/common/CharacterSetECI;->UTF8:Lcom/google/zxing/common/CharacterSetECI;

    .line 56
    new-instance v8, Lcom/google/zxing/common/CharacterSetECI;

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    const-string/jumbo v10, "ASCII"

    const/16 v11, 0x17

    const/4 v12, 0x2

    new-array v12, v12, [I

    fill-array-data v12, :array_2

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    const/4 v15, 0x0

    const-string/jumbo v16, "US-ASCII"

    aput-object v16, v14, v15

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;I[I[Ljava/lang/String;)V

    sput-object v8, Lcom/google/zxing/common/CharacterSetECI;->ASCII:Lcom/google/zxing/common/CharacterSetECI;

    .line 57
    new-instance v8, Lcom/google/zxing/common/CharacterSetECI;

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    const-string/jumbo v10, "Big5"

    const/16 v11, 0x18

    const/16 v12, 0x1c

    invoke-direct {v9, v10, v11, v12}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/google/zxing/common/CharacterSetECI;->Big5:Lcom/google/zxing/common/CharacterSetECI;

    .line 58
    new-instance v8, Lcom/google/zxing/common/CharacterSetECI;

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    const-string/jumbo v10, "GB18030"

    const/16 v11, 0x19

    const/16 v12, 0x1d

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/String;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    const/4 v15, 0x0

    const-string/jumbo v16, "GB2312"

    aput-object v16, v14, v15

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    const/4 v15, 0x1

    const-string/jumbo v16, "EUC_CN"

    aput-object v16, v14, v15

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    const/4 v15, 0x2

    const-string/jumbo v16, "GBK"

    aput-object v16, v14, v15

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v8, Lcom/google/zxing/common/CharacterSetECI;->GB18030:Lcom/google/zxing/common/CharacterSetECI;

    .line 59
    new-instance v8, Lcom/google/zxing/common/CharacterSetECI;

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    const-string/jumbo v10, "EUC_KR"

    const/16 v11, 0x1a

    const/16 v12, 0x1e

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    const/4 v15, 0x0

    const-string/jumbo v16, "EUC-KR"

    aput-object v16, v14, v15

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v8, Lcom/google/zxing/common/CharacterSetECI;->EUC_KR:Lcom/google/zxing/common/CharacterSetECI;

    .line 30
    const/16 v8, 0x1b

    new-array v8, v8, [Lcom/google/zxing/common/CharacterSetECI;

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    const/4 v10, 0x0

    sget-object v11, Lcom/google/zxing/common/CharacterSetECI;->Cp437:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v11, v9, v10

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    const/4 v10, 0x1

    sget-object v11, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_1:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v11, v9, v10

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    const/4 v10, 0x2

    sget-object v11, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_2:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v11, v9, v10

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    const/4 v10, 0x3

    sget-object v11, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_3:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v11, v9, v10

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    const/4 v10, 0x4

    sget-object v11, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_4:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v11, v9, v10

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    const/4 v10, 0x5

    sget-object v11, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_5:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v11, v9, v10

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    const/4 v10, 0x6

    sget-object v11, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_6:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v11, v9, v10

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    const/4 v10, 0x7

    sget-object v11, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_7:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v11, v9, v10

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    const/16 v10, 0x8

    sget-object v11, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_8:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v11, v9, v10

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    const/16 v10, 0x9

    sget-object v11, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_9:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v11, v9, v10

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    const/16 v10, 0xa

    sget-object v11, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_10:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v11, v9, v10

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    const/16 v10, 0xb

    sget-object v11, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_11:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v11, v9, v10

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    const/16 v10, 0xc

    sget-object v11, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_13:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v11, v9, v10

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    const/16 v10, 0xd

    sget-object v11, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_14:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v11, v9, v10

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    const/16 v10, 0xe

    sget-object v11, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_15:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v11, v9, v10

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    const/16 v10, 0xf

    sget-object v11, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_16:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v11, v9, v10

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    const/16 v10, 0x10

    sget-object v11, Lcom/google/zxing/common/CharacterSetECI;->SJIS:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v11, v9, v10

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    const/16 v10, 0x11

    sget-object v11, Lcom/google/zxing/common/CharacterSetECI;->Cp1250:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v11, v9, v10

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    const/16 v10, 0x12

    sget-object v11, Lcom/google/zxing/common/CharacterSetECI;->Cp1251:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v11, v9, v10

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    const/16 v10, 0x13

    sget-object v11, Lcom/google/zxing/common/CharacterSetECI;->Cp1252:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v11, v9, v10

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    const/16 v10, 0x14

    sget-object v11, Lcom/google/zxing/common/CharacterSetECI;->Cp1256:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v11, v9, v10

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    const/16 v10, 0x15

    sget-object v11, Lcom/google/zxing/common/CharacterSetECI;->UnicodeBigUnmarked:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v11, v9, v10

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    const/16 v10, 0x16

    sget-object v11, Lcom/google/zxing/common/CharacterSetECI;->UTF8:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v11, v9, v10

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    const/16 v10, 0x17

    sget-object v11, Lcom/google/zxing/common/CharacterSetECI;->ASCII:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v11, v9, v10

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    const/16 v10, 0x18

    sget-object v11, Lcom/google/zxing/common/CharacterSetECI;->Big5:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v11, v9, v10

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    const/16 v10, 0x19

    sget-object v11, Lcom/google/zxing/common/CharacterSetECI;->GB18030:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v11, v9, v10

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    const/16 v10, 0x1a

    sget-object v11, Lcom/google/zxing/common/CharacterSetECI;->EUC_KR:Lcom/google/zxing/common/CharacterSetECI;

    aput-object v11, v9, v10

    sput-object v8, Lcom/google/zxing/common/CharacterSetECI;->$VALUES:[Lcom/google/zxing/common/CharacterSetECI;

    .line 61
    new-instance v8, Ljava/util/HashMap;

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    sput-object v8, Lcom/google/zxing/common/CharacterSetECI;->VALUE_TO_ECI:Ljava/util/Map;

    .line 62
    new-instance v8, Ljava/util/HashMap;

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    sput-object v8, Lcom/google/zxing/common/CharacterSetECI;->NAME_TO_ECI:Ljava/util/Map;

    .line 64
    invoke-static {}, Lcom/google/zxing/common/CharacterSetECI;->values()[Lcom/google/zxing/common/CharacterSetECI;

    move-result-object v8

    move-object v0, v8

    .local v0, "arr$":[Lcom/google/zxing/common/CharacterSetECI;
    move-object v8, v0

    array-length v8, v8

    move v1, v8

    .local v1, "len$":I
    const/4 v8, 0x0

    move v2, v8

    .end local v0    # "arr$":[Lcom/google/zxing/common/CharacterSetECI;
    .end local v1    # "len$":I
    .local v2, "i$":I
    :goto_0
    move v8, v2

    move v9, v1

    if-ge v8, v9, :cond_2

    move-object v8, v0

    move v9, v2

    aget-object v8, v8, v9

    move-object v3, v8

    .line 65
    .local v3, "eci":Lcom/google/zxing/common/CharacterSetECI;
    move-object v8, v3

    iget-object v8, v8, Lcom/google/zxing/common/CharacterSetECI;->values:[I

    move-object v4, v8

    .local v4, "arr$":[I
    move-object v8, v4

    array-length v8, v8

    move v5, v8

    .local v5, "len$":I
    const/4 v8, 0x0

    move v6, v8

    .end local v2    # "i$":I
    .local v6, "i$":I
    :goto_1
    move v8, v6

    move v9, v5

    if-ge v8, v9, :cond_0

    move-object v8, v4

    move v9, v6

    aget v8, v8, v9

    move v7, v8

    .line 66
    .local v7, "value":I
    sget-object v8, Lcom/google/zxing/common/CharacterSetECI;->VALUE_TO_ECI:Ljava/util/Map;

    move v9, v7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object v10, v3

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 65
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 68
    .end local v7    # "value":I
    :cond_0
    sget-object v8, Lcom/google/zxing/common/CharacterSetECI;->NAME_TO_ECI:Ljava/util/Map;

    move-object v9, v3

    invoke-virtual {v9}, Lcom/google/zxing/common/CharacterSetECI;->name()Ljava/lang/String;

    move-result-object v9

    move-object v10, v3

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 69
    move-object v8, v3

    iget-object v8, v8, Lcom/google/zxing/common/CharacterSetECI;->otherEncodingNames:[Ljava/lang/String;

    move-object v4, v8

    .local v4, "arr$":[Ljava/lang/String;
    move-object v8, v4

    array-length v8, v8

    move v5, v8

    const/4 v8, 0x0

    move v6, v8

    :goto_2
    move v8, v6

    move v9, v5

    if-ge v8, v9, :cond_1

    move-object v8, v4

    move v9, v6

    aget-object v8, v8, v9

    move-object v7, v8

    .line 70
    .local v7, "name":Ljava/lang/String;
    sget-object v8, Lcom/google/zxing/common/CharacterSetECI;->NAME_TO_ECI:Ljava/util/Map;

    move-object v9, v7

    move-object v10, v3

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 69
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 64
    .end local v7    # "name":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .end local v6    # "i$":I
    .restart local v2    # "i$":I
    goto :goto_0

    .line 73
    .end local v3    # "eci":Lcom/google/zxing/common/CharacterSetECI;
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v5    # "len$":I
    :cond_2
    return-void

    .line 33
    nop

    :array_0
    .array-data 4
        0x0
        0x2
    .end array-data

    .line 34
    :array_1
    .array-data 4
        0x1
        0x3
    .end array-data

    .line 56
    :array_2
    .array-data 4
        0x1b
        0xaa
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/common/CharacterSetECI;
    move-object v1, p1

    move v2, p2

    move v3, p3

    .local v3, "value":I
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    const/4 v7, 0x1

    new-array v7, v7, [I

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move v10, v3

    aput v10, v8, v9

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/String;

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;I[I[Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;II[Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/common/CharacterSetECI;
    move-object v1, p1

    move v2, p2

    move v3, p3

    .local v3, "value":I
    move-object v4, p4

    .local v4, "otherEncodingNames":[Ljava/lang/String;
    move-object v5, v0

    move-object v6, v1

    move v7, v2

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 83
    move-object v5, v0

    const/4 v6, 0x1

    new-array v6, v6, [I

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move v9, v3

    aput v9, v7, v8

    iput-object v6, v5, Lcom/google/zxing/common/CharacterSetECI;->values:[I

    .line 84
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lcom/google/zxing/common/CharacterSetECI;->otherEncodingNames:[Ljava/lang/String;

    .line 85
    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;I[I[Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/common/CharacterSetECI;
    move-object v1, p1

    move v2, p2

    move-object v3, p3

    .local v3, "values":[I
    move-object v4, p4

    .local v4, "otherEncodingNames":[Ljava/lang/String;
    move-object v5, v0

    move-object v6, v1

    move v7, v2

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 88
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lcom/google/zxing/common/CharacterSetECI;->values:[I

    .line 89
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lcom/google/zxing/common/CharacterSetECI;->otherEncodingNames:[Ljava/lang/String;

    .line 90
    return-void
.end method

.method public static getCharacterSetECIByName(Ljava/lang/String;)Lcom/google/zxing/common/CharacterSetECI;
    .locals 3

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    sget-object v1, Lcom/google/zxing/common/CharacterSetECI;->NAME_TO_ECI:Ljava/util/Map;

    move-object v2, v0

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/common/CharacterSetECI;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static getCharacterSetECIByValue(I)Lcom/google/zxing/common/CharacterSetECI;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 103
    move v0, p0

    .local v0, "value":I
    move v1, v0

    if-ltz v1, :cond_0

    move v1, v0

    const/16 v2, 0x384

    if-lt v1, v2, :cond_1

    .line 104
    :cond_0
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    .line 106
    :cond_1
    sget-object v1, Lcom/google/zxing/common/CharacterSetECI;->VALUE_TO_ECI:Ljava/util/Map;

    move v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/common/CharacterSetECI;

    move-object v0, v1

    .end local v0    # "value":I
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/zxing/common/CharacterSetECI;
    .locals 3

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Lcom/google/zxing/common/CharacterSetECI;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/common/CharacterSetECI;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Lcom/google/zxing/common/CharacterSetECI;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/google/zxing/common/CharacterSetECI;->$VALUES:[Lcom/google/zxing/common/CharacterSetECI;

    invoke-virtual {v0}, [Lcom/google/zxing/common/CharacterSetECI;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/zxing/common/CharacterSetECI;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 3

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/common/CharacterSetECI;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/common/CharacterSetECI;->values:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    move v0, v1

    .end local v0    # "this":Lcom/google/zxing/common/CharacterSetECI;
    return v0
.end method
