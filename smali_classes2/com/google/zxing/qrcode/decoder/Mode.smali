.class public final enum Lcom/google/zxing/qrcode/decoder/Mode;
.super Ljava/lang/Enum;
.source "Mode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/zxing/qrcode/decoder/Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/zxing/qrcode/decoder/Mode;

.field public static final enum ALPHANUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

.field public static final enum BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

.field public static final enum ECI:Lcom/google/zxing/qrcode/decoder/Mode;

.field public static final enum FNC1_FIRST_POSITION:Lcom/google/zxing/qrcode/decoder/Mode;

.field public static final enum FNC1_SECOND_POSITION:Lcom/google/zxing/qrcode/decoder/Mode;

.field public static final enum HANZI:Lcom/google/zxing/qrcode/decoder/Mode;

.field public static final enum KANJI:Lcom/google/zxing/qrcode/decoder/Mode;

.field public static final enum NUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

.field public static final enum STRUCTURED_APPEND:Lcom/google/zxing/qrcode/decoder/Mode;

.field public static final enum TERMINATOR:Lcom/google/zxing/qrcode/decoder/Mode;


# instance fields
.field private final bits:I

.field private final characterCountBitsForVersions:[I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 27
    new-instance v0, Lcom/google/zxing/qrcode/decoder/Mode;

    move-object v8, v0

    move-object v0, v8

    move-object v1, v8

    const-string/jumbo v2, "TERMINATOR"

    const/4 v3, 0x0

    const/4 v4, 0x3

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Mode;-><init>(Ljava/lang/String;I[II)V

    sput-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->TERMINATOR:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 28
    new-instance v0, Lcom/google/zxing/qrcode/decoder/Mode;

    move-object v8, v0

    move-object v0, v8

    move-object v1, v8

    const-string/jumbo v2, "NUMERIC"

    const/4 v3, 0x1

    const/4 v4, 0x3

    new-array v4, v4, [I

    fill-array-data v4, :array_1

    const/4 v5, 0x1

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Mode;-><init>(Ljava/lang/String;I[II)V

    sput-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->NUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 29
    new-instance v0, Lcom/google/zxing/qrcode/decoder/Mode;

    move-object v8, v0

    move-object v0, v8

    move-object v1, v8

    const-string/jumbo v2, "ALPHANUMERIC"

    const/4 v3, 0x2

    const/4 v4, 0x3

    new-array v4, v4, [I

    fill-array-data v4, :array_2

    const/4 v5, 0x2

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Mode;-><init>(Ljava/lang/String;I[II)V

    sput-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->ALPHANUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 30
    new-instance v0, Lcom/google/zxing/qrcode/decoder/Mode;

    move-object v8, v0

    move-object v0, v8

    move-object v1, v8

    const-string/jumbo v2, "STRUCTURED_APPEND"

    const/4 v3, 0x3

    const/4 v4, 0x3

    new-array v4, v4, [I

    fill-array-data v4, :array_3

    const/4 v5, 0x3

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Mode;-><init>(Ljava/lang/String;I[II)V

    sput-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->STRUCTURED_APPEND:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 31
    new-instance v0, Lcom/google/zxing/qrcode/decoder/Mode;

    move-object v8, v0

    move-object v0, v8

    move-object v1, v8

    const-string/jumbo v2, "BYTE"

    const/4 v3, 0x4

    const/4 v4, 0x3

    new-array v4, v4, [I

    fill-array-data v4, :array_4

    const/4 v5, 0x4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Mode;-><init>(Ljava/lang/String;I[II)V

    sput-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 32
    new-instance v0, Lcom/google/zxing/qrcode/decoder/Mode;

    move-object v8, v0

    move-object v0, v8

    move-object v1, v8

    const-string/jumbo v2, "ECI"

    const/4 v3, 0x5

    const/4 v4, 0x3

    new-array v4, v4, [I

    fill-array-data v4, :array_5

    const/4 v5, 0x7

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Mode;-><init>(Ljava/lang/String;I[II)V

    sput-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->ECI:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 33
    new-instance v0, Lcom/google/zxing/qrcode/decoder/Mode;

    move-object v8, v0

    move-object v0, v8

    move-object v1, v8

    const-string/jumbo v2, "KANJI"

    const/4 v3, 0x6

    const/4 v4, 0x3

    new-array v4, v4, [I

    fill-array-data v4, :array_6

    const/16 v5, 0x8

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Mode;-><init>(Ljava/lang/String;I[II)V

    sput-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->KANJI:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 34
    new-instance v0, Lcom/google/zxing/qrcode/decoder/Mode;

    move-object v8, v0

    move-object v0, v8

    move-object v1, v8

    const-string/jumbo v2, "FNC1_FIRST_POSITION"

    const/4 v3, 0x7

    const/4 v4, 0x3

    new-array v4, v4, [I

    fill-array-data v4, :array_7

    const/4 v5, 0x5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Mode;-><init>(Ljava/lang/String;I[II)V

    sput-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->FNC1_FIRST_POSITION:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 35
    new-instance v0, Lcom/google/zxing/qrcode/decoder/Mode;

    move-object v8, v0

    move-object v0, v8

    move-object v1, v8

    const-string/jumbo v2, "FNC1_SECOND_POSITION"

    const/16 v3, 0x8

    const/4 v4, 0x3

    new-array v4, v4, [I

    fill-array-data v4, :array_8

    const/16 v5, 0x9

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Mode;-><init>(Ljava/lang/String;I[II)V

    sput-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->FNC1_SECOND_POSITION:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 37
    new-instance v0, Lcom/google/zxing/qrcode/decoder/Mode;

    move-object v8, v0

    move-object v0, v8

    move-object v1, v8

    const-string/jumbo v2, "HANZI"

    const/16 v3, 0x9

    const/4 v4, 0x3

    new-array v4, v4, [I

    fill-array-data v4, :array_9

    const/16 v5, 0xd

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Mode;-><init>(Ljava/lang/String;I[II)V

    sput-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->HANZI:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 25
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Mode;

    move-object v8, v0

    move-object v0, v8

    move-object v1, v8

    const/4 v2, 0x0

    sget-object v3, Lcom/google/zxing/qrcode/decoder/Mode;->TERMINATOR:Lcom/google/zxing/qrcode/decoder/Mode;

    aput-object v3, v1, v2

    move-object v8, v0

    move-object v0, v8

    move-object v1, v8

    const/4 v2, 0x1

    sget-object v3, Lcom/google/zxing/qrcode/decoder/Mode;->NUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    aput-object v3, v1, v2

    move-object v8, v0

    move-object v0, v8

    move-object v1, v8

    const/4 v2, 0x2

    sget-object v3, Lcom/google/zxing/qrcode/decoder/Mode;->ALPHANUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    aput-object v3, v1, v2

    move-object v8, v0

    move-object v0, v8

    move-object v1, v8

    const/4 v2, 0x3

    sget-object v3, Lcom/google/zxing/qrcode/decoder/Mode;->STRUCTURED_APPEND:Lcom/google/zxing/qrcode/decoder/Mode;

    aput-object v3, v1, v2

    move-object v8, v0

    move-object v0, v8

    move-object v1, v8

    const/4 v2, 0x4

    sget-object v3, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    aput-object v3, v1, v2

    move-object v8, v0

    move-object v0, v8

    move-object v1, v8

    const/4 v2, 0x5

    sget-object v3, Lcom/google/zxing/qrcode/decoder/Mode;->ECI:Lcom/google/zxing/qrcode/decoder/Mode;

    aput-object v3, v1, v2

    move-object v8, v0

    move-object v0, v8

    move-object v1, v8

    const/4 v2, 0x6

    sget-object v3, Lcom/google/zxing/qrcode/decoder/Mode;->KANJI:Lcom/google/zxing/qrcode/decoder/Mode;

    aput-object v3, v1, v2

    move-object v8, v0

    move-object v0, v8

    move-object v1, v8

    const/4 v2, 0x7

    sget-object v3, Lcom/google/zxing/qrcode/decoder/Mode;->FNC1_FIRST_POSITION:Lcom/google/zxing/qrcode/decoder/Mode;

    aput-object v3, v1, v2

    move-object v8, v0

    move-object v0, v8

    move-object v1, v8

    const/16 v2, 0x8

    sget-object v3, Lcom/google/zxing/qrcode/decoder/Mode;->FNC1_SECOND_POSITION:Lcom/google/zxing/qrcode/decoder/Mode;

    aput-object v3, v1, v2

    move-object v8, v0

    move-object v0, v8

    move-object v1, v8

    const/16 v2, 0x9

    sget-object v3, Lcom/google/zxing/qrcode/decoder/Mode;->HANZI:Lcom/google/zxing/qrcode/decoder/Mode;

    aput-object v3, v1, v2

    sput-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->$VALUES:[Lcom/google/zxing/qrcode/decoder/Mode;

    return-void

    .line 27
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    .line 28
    :array_1
    .array-data 4
        0xa
        0xc
        0xe
    .end array-data

    .line 29
    :array_2
    .array-data 4
        0x9
        0xb
        0xd
    .end array-data

    .line 30
    :array_3
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    .line 31
    :array_4
    .array-data 4
        0x8
        0x10
        0x10
    .end array-data

    .line 32
    :array_5
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    .line 33
    :array_6
    .array-data 4
        0x8
        0xa
        0xc
    .end array-data

    .line 34
    :array_7
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    .line 35
    :array_8
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    .line 37
    :array_9
    .array-data 4
        0x8
        0xa
        0xc
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;I[II)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([II)V"
        }
    .end annotation

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/decoder/Mode;
    move-object v1, p1

    move v2, p2

    move-object v3, p3

    .local v3, "characterCountBitsForVersions":[I
    move v4, p4

    .local v4, "bits":I
    move-object v5, v0

    move-object v6, v1

    move v7, v2

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lcom/google/zxing/qrcode/decoder/Mode;->characterCountBitsForVersions:[I

    .line 44
    move-object v5, v0

    move v6, v4

    iput v6, v5, Lcom/google/zxing/qrcode/decoder/Mode;->bits:I

    .line 45
    return-void
.end method

.method public static forBits(I)Lcom/google/zxing/qrcode/decoder/Mode;
    .locals 4

    .prologue
    .line 53
    move v0, p0

    .local v0, "bits":I
    move v1, v0

    packed-switch v1, :pswitch_data_0

    .line 76
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 55
    :pswitch_1
    sget-object v1, Lcom/google/zxing/qrcode/decoder/Mode;->TERMINATOR:Lcom/google/zxing/qrcode/decoder/Mode;

    move-object v0, v1

    .line 74
    .end local v0    # "bits":I
    :goto_0
    return-object v0

    .line 57
    .restart local v0    # "bits":I
    :pswitch_2
    sget-object v1, Lcom/google/zxing/qrcode/decoder/Mode;->NUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    move-object v0, v1

    goto :goto_0

    .line 59
    :pswitch_3
    sget-object v1, Lcom/google/zxing/qrcode/decoder/Mode;->ALPHANUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    move-object v0, v1

    goto :goto_0

    .line 61
    :pswitch_4
    sget-object v1, Lcom/google/zxing/qrcode/decoder/Mode;->STRUCTURED_APPEND:Lcom/google/zxing/qrcode/decoder/Mode;

    move-object v0, v1

    goto :goto_0

    .line 63
    :pswitch_5
    sget-object v1, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    move-object v0, v1

    goto :goto_0

    .line 65
    :pswitch_6
    sget-object v1, Lcom/google/zxing/qrcode/decoder/Mode;->FNC1_FIRST_POSITION:Lcom/google/zxing/qrcode/decoder/Mode;

    move-object v0, v1

    goto :goto_0

    .line 67
    :pswitch_7
    sget-object v1, Lcom/google/zxing/qrcode/decoder/Mode;->ECI:Lcom/google/zxing/qrcode/decoder/Mode;

    move-object v0, v1

    goto :goto_0

    .line 69
    :pswitch_8
    sget-object v1, Lcom/google/zxing/qrcode/decoder/Mode;->KANJI:Lcom/google/zxing/qrcode/decoder/Mode;

    move-object v0, v1

    goto :goto_0

    .line 71
    :pswitch_9
    sget-object v1, Lcom/google/zxing/qrcode/decoder/Mode;->FNC1_SECOND_POSITION:Lcom/google/zxing/qrcode/decoder/Mode;

    move-object v0, v1

    goto :goto_0

    .line 74
    :pswitch_a
    sget-object v1, Lcom/google/zxing/qrcode/decoder/Mode;->HANZI:Lcom/google/zxing/qrcode/decoder/Mode;

    move-object v0, v1

    goto :goto_0

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/zxing/qrcode/decoder/Mode;
    .locals 3

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Lcom/google/zxing/qrcode/decoder/Mode;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/qrcode/decoder/Mode;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Lcom/google/zxing/qrcode/decoder/Mode;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->$VALUES:[Lcom/google/zxing/qrcode/decoder/Mode;

    invoke-virtual {v0}, [Lcom/google/zxing/qrcode/decoder/Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/zxing/qrcode/decoder/Mode;

    return-object v0
.end method


# virtual methods
.method public getBits()I
    .locals 2

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/decoder/Mode;
    move-object v1, v0

    iget v1, v1, Lcom/google/zxing/qrcode/decoder/Mode;->bits:I

    move v0, v1

    .end local v0    # "this":Lcom/google/zxing/qrcode/decoder/Mode;
    return v0
.end method

.method public getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I
    .locals 6

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/decoder/Mode;
    move-object v1, p1

    .local v1, "version":Lcom/google/zxing/qrcode/decoder/Version;
    move-object v4, v1

    invoke-virtual {v4}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionNumber()I

    move-result v4

    move v2, v4

    .line 88
    .local v2, "number":I
    move v4, v2

    const/16 v5, 0x9

    if-gt v4, v5, :cond_0

    .line 89
    const/4 v4, 0x0

    move v3, v4

    .line 95
    .local v3, "offset":I
    :goto_0
    move-object v4, v0

    iget-object v4, v4, Lcom/google/zxing/qrcode/decoder/Mode;->characterCountBitsForVersions:[I

    move v5, v3

    aget v4, v4, v5

    move v0, v4

    .end local v0    # "this":Lcom/google/zxing/qrcode/decoder/Mode;
    return v0

    .line 90
    .end local v3    # "offset":I
    .restart local v0    # "this":Lcom/google/zxing/qrcode/decoder/Mode;
    :cond_0
    move v4, v2

    const/16 v5, 0x1a

    if-gt v4, v5, :cond_1

    .line 91
    const/4 v4, 0x1

    move v3, v4

    .restart local v3    # "offset":I
    goto :goto_0

    .line 93
    .end local v3    # "offset":I
    :cond_1
    const/4 v4, 0x2

    move v3, v4

    .restart local v3    # "offset":I
    goto :goto_0
.end method
