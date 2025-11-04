.class abstract Lcom/google/zxing/qrcode/decoder/DataMask;
.super Ljava/lang/Object;
.source "DataMask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/qrcode/decoder/DataMask$1;,
        Lcom/google/zxing/qrcode/decoder/DataMask$DataMask111;,
        Lcom/google/zxing/qrcode/decoder/DataMask$DataMask110;,
        Lcom/google/zxing/qrcode/decoder/DataMask$DataMask101;,
        Lcom/google/zxing/qrcode/decoder/DataMask$DataMask100;,
        Lcom/google/zxing/qrcode/decoder/DataMask$DataMask011;,
        Lcom/google/zxing/qrcode/decoder/DataMask$DataMask010;,
        Lcom/google/zxing/qrcode/decoder/DataMask$DataMask001;,
        Lcom/google/zxing/qrcode/decoder/DataMask$DataMask000;
    }
.end annotation


# static fields
.field private static final DATA_MASKS:[Lcom/google/zxing/qrcode/decoder/DataMask;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 37
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/DataMask;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const/4 v2, 0x0

    new-instance v3, Lcom/google/zxing/qrcode/decoder/DataMask$DataMask000;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/google/zxing/qrcode/decoder/DataMask$DataMask000;-><init>(Lcom/google/zxing/qrcode/decoder/DataMask$1;)V

    aput-object v3, v1, v2

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const/4 v2, 0x1

    new-instance v3, Lcom/google/zxing/qrcode/decoder/DataMask$DataMask001;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/google/zxing/qrcode/decoder/DataMask$DataMask001;-><init>(Lcom/google/zxing/qrcode/decoder/DataMask$1;)V

    aput-object v3, v1, v2

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const/4 v2, 0x2

    new-instance v3, Lcom/google/zxing/qrcode/decoder/DataMask$DataMask010;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/google/zxing/qrcode/decoder/DataMask$DataMask010;-><init>(Lcom/google/zxing/qrcode/decoder/DataMask$1;)V

    aput-object v3, v1, v2

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const/4 v2, 0x3

    new-instance v3, Lcom/google/zxing/qrcode/decoder/DataMask$DataMask011;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/google/zxing/qrcode/decoder/DataMask$DataMask011;-><init>(Lcom/google/zxing/qrcode/decoder/DataMask$1;)V

    aput-object v3, v1, v2

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const/4 v2, 0x4

    new-instance v3, Lcom/google/zxing/qrcode/decoder/DataMask$DataMask100;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/google/zxing/qrcode/decoder/DataMask$DataMask100;-><init>(Lcom/google/zxing/qrcode/decoder/DataMask$1;)V

    aput-object v3, v1, v2

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const/4 v2, 0x5

    new-instance v3, Lcom/google/zxing/qrcode/decoder/DataMask$DataMask101;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/google/zxing/qrcode/decoder/DataMask$DataMask101;-><init>(Lcom/google/zxing/qrcode/decoder/DataMask$1;)V

    aput-object v3, v1, v2

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const/4 v2, 0x6

    new-instance v3, Lcom/google/zxing/qrcode/decoder/DataMask$DataMask110;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/google/zxing/qrcode/decoder/DataMask$DataMask110;-><init>(Lcom/google/zxing/qrcode/decoder/DataMask$1;)V

    aput-object v3, v1, v2

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const/4 v2, 0x7

    new-instance v3, Lcom/google/zxing/qrcode/decoder/DataMask$DataMask111;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/google/zxing/qrcode/decoder/DataMask$DataMask111;-><init>(Lcom/google/zxing/qrcode/decoder/DataMask$1;)V

    aput-object v3, v1, v2

    sput-object v0, Lcom/google/zxing/qrcode/decoder/DataMask;->DATA_MASKS:[Lcom/google/zxing/qrcode/decoder/DataMask;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/decoder/DataMask;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/zxing/qrcode/decoder/DataMask$1;)V
    .locals 3

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/decoder/DataMask;
    move-object v1, p1

    .local v1, "x0":Lcom/google/zxing/qrcode/decoder/DataMask$1;
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/zxing/qrcode/decoder/DataMask;-><init>()V

    return-void
.end method

.method static forReference(I)Lcom/google/zxing/qrcode/decoder/DataMask;
    .locals 4

    .prologue
    .line 76
    move v0, p0

    .local v0, "reference":I
    move v1, v0

    if-ltz v1, :cond_0

    move v1, v0

    const/4 v2, 0x7

    if-le v1, v2, :cond_1

    .line 77
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 79
    :cond_1
    sget-object v1, Lcom/google/zxing/qrcode/decoder/DataMask;->DATA_MASKS:[Lcom/google/zxing/qrcode/decoder/DataMask;

    move v2, v0

    aget-object v1, v1, v2

    move-object v0, v1

    .end local v0    # "reference":I
    return-object v0
.end method


# virtual methods
.method abstract isMasked(II)Z
.end method

.method final unmaskBitMatrix(Lcom/google/zxing/common/BitMatrix;I)V
    .locals 8

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/decoder/DataMask;
    move-object v1, p1

    .local v1, "bits":Lcom/google/zxing/common/BitMatrix;
    move v2, p2

    .local v2, "dimension":I
    const/4 v5, 0x0

    move v3, v5

    .local v3, "i":I
    :goto_0
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_2

    .line 60
    const/4 v5, 0x0

    move v4, v5

    .local v4, "j":I
    :goto_1
    move v5, v4

    move v6, v2

    if-ge v5, v6, :cond_1

    .line 61
    move-object v5, v0

    move v6, v3

    move v7, v4

    invoke-virtual {v5, v6, v7}, Lcom/google/zxing/qrcode/decoder/DataMask;->isMasked(II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 62
    move-object v5, v1

    move v6, v4

    move v7, v3

    invoke-virtual {v5, v6, v7}, Lcom/google/zxing/common/BitMatrix;->flip(II)V

    .line 60
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 59
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 66
    .end local v4    # "j":I
    :cond_2
    return-void
.end method
