.class public final Lcom/google/zxing/common/reedsolomon/GenericGF;
.super Ljava/lang/Object;
.source "GenericGF.java"


# static fields
.field public static final AZTEC_DATA_10:Lcom/google/zxing/common/reedsolomon/GenericGF;

.field public static final AZTEC_DATA_12:Lcom/google/zxing/common/reedsolomon/GenericGF;

.field public static final AZTEC_DATA_6:Lcom/google/zxing/common/reedsolomon/GenericGF;

.field public static final AZTEC_DATA_8:Lcom/google/zxing/common/reedsolomon/GenericGF;

.field public static final AZTEC_PARAM:Lcom/google/zxing/common/reedsolomon/GenericGF;

.field public static final DATA_MATRIX_FIELD_256:Lcom/google/zxing/common/reedsolomon/GenericGF;

.field private static final INITIALIZATION_THRESHOLD:I

.field public static final MAXICODE_FIELD_64:Lcom/google/zxing/common/reedsolomon/GenericGF;

.field public static final QR_CODE_FIELD_256:Lcom/google/zxing/common/reedsolomon/GenericGF;


# instance fields
.field private expTable:[I

.field private initialized:Z

.field private logTable:[I

.field private one:Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

.field private final primitive:I

.field private final size:I

.field private zero:Lcom/google/zxing/common/reedsolomon/GenericGFPoly;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 32
    new-instance v0, Lcom/google/zxing/common/reedsolomon/GenericGF;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x1069

    const/16 v3, 0x1000

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/common/reedsolomon/GenericGF;-><init>(II)V

    sput-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_12:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 33
    new-instance v0, Lcom/google/zxing/common/reedsolomon/GenericGF;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x409

    const/16 v3, 0x400

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/common/reedsolomon/GenericGF;-><init>(II)V

    sput-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_10:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 34
    new-instance v0, Lcom/google/zxing/common/reedsolomon/GenericGF;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x43

    const/16 v3, 0x40

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/common/reedsolomon/GenericGF;-><init>(II)V

    sput-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_6:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 35
    new-instance v0, Lcom/google/zxing/common/reedsolomon/GenericGF;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x13

    const/16 v3, 0x10

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/common/reedsolomon/GenericGF;-><init>(II)V

    sput-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_PARAM:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 36
    new-instance v0, Lcom/google/zxing/common/reedsolomon/GenericGF;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x11d

    const/16 v3, 0x100

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/common/reedsolomon/GenericGF;-><init>(II)V

    sput-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->QR_CODE_FIELD_256:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 37
    new-instance v0, Lcom/google/zxing/common/reedsolomon/GenericGF;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x12d

    const/16 v3, 0x100

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/common/reedsolomon/GenericGF;-><init>(II)V

    sput-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->DATA_MATRIX_FIELD_256:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 38
    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->DATA_MATRIX_FIELD_256:Lcom/google/zxing/common/reedsolomon/GenericGF;

    sput-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_8:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 39
    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_6:Lcom/google/zxing/common/reedsolomon/GenericGF;

    sput-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->MAXICODE_FIELD_64:Lcom/google/zxing/common/reedsolomon/GenericGF;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 5

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/common/reedsolomon/GenericGF;
    move v1, p1

    .local v1, "primitive":I
    move v2, p2

    .local v2, "size":I
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 49
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/google/zxing/common/reedsolomon/GenericGF;->initialized:Z

    .line 59
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/google/zxing/common/reedsolomon/GenericGF;->primitive:I

    .line 60
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/google/zxing/common/reedsolomon/GenericGF;->size:I

    .line 62
    move v3, v2

    if-gtz v3, :cond_0

    .line 63
    move-object v3, v0

    invoke-direct {v3}, Lcom/google/zxing/common/reedsolomon/GenericGF;->initialize()V

    .line 65
    :cond_0
    return-void
.end method

.method static addOrSubtract(II)I
    .locals 4

    .prologue
    .line 129
    move v0, p0

    .local v0, "a":I
    move v1, p1

    .local v1, "b":I
    move v2, v0

    move v3, v1

    xor-int/2addr v2, v3

    move v0, v2

    .end local v0    # "a":I
    return v0
.end method

.method private checkInit()V
    .locals 2

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/common/reedsolomon/GenericGF;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/zxing/common/reedsolomon/GenericGF;->initialized:Z

    if-nez v1, :cond_0

    .line 90
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/zxing/common/reedsolomon/GenericGF;->initialize()V

    .line 92
    :cond_0
    return-void
.end method

.method private initialize()V
    .locals 12

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/common/reedsolomon/GenericGF;
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Lcom/google/zxing/common/reedsolomon/GenericGF;->size:I

    new-array v4, v4, [I

    iput-object v4, v3, Lcom/google/zxing/common/reedsolomon/GenericGF;->expTable:[I

    .line 69
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Lcom/google/zxing/common/reedsolomon/GenericGF;->size:I

    new-array v4, v4, [I

    iput-object v4, v3, Lcom/google/zxing/common/reedsolomon/GenericGF;->logTable:[I

    .line 70
    const/4 v3, 0x1

    move v1, v3

    .line 71
    .local v1, "x":I
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v0

    iget v4, v4, Lcom/google/zxing/common/reedsolomon/GenericGF;->size:I

    if-ge v3, v4, :cond_1

    .line 72
    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/common/reedsolomon/GenericGF;->expTable:[I

    move v4, v2

    move v5, v1

    aput v5, v3, v4

    .line 73
    move v3, v1

    const/4 v4, 0x1

    shl-int/lit8 v3, v3, 0x1

    move v1, v3

    .line 74
    move v3, v1

    move-object v4, v0

    iget v4, v4, Lcom/google/zxing/common/reedsolomon/GenericGF;->size:I

    if-lt v3, v4, :cond_0

    .line 75
    move v3, v1

    move-object v4, v0

    iget v4, v4, Lcom/google/zxing/common/reedsolomon/GenericGF;->primitive:I

    xor-int/2addr v3, v4

    move v1, v3

    .line 76
    move v3, v1

    move-object v4, v0

    iget v4, v4, Lcom/google/zxing/common/reedsolomon/GenericGF;->size:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    and-int/2addr v3, v4

    move v1, v3

    .line 71
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 79
    :cond_1
    const/4 v3, 0x0

    move v2, v3

    :goto_1
    move v3, v2

    move-object v4, v0

    iget v4, v4, Lcom/google/zxing/common/reedsolomon/GenericGF;->size:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_2

    .line 80
    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/common/reedsolomon/GenericGF;->logTable:[I

    move-object v4, v0

    iget-object v4, v4, Lcom/google/zxing/common/reedsolomon/GenericGF;->expTable:[I

    move v5, v2

    aget v4, v4, v5

    move v5, v2

    aput v5, v3, v4

    .line 79
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 83
    :cond_2
    move-object v3, v0

    new-instance v4, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    move-object v6, v0

    const/4 v7, 0x1

    new-array v7, v7, [I

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput v10, v8, v9

    invoke-direct {v5, v6, v7}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    iput-object v4, v3, Lcom/google/zxing/common/reedsolomon/GenericGF;->zero:Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    .line 84
    move-object v3, v0

    new-instance v4, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    move-object v6, v0

    const/4 v7, 0x1

    new-array v7, v7, [I

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    const/4 v10, 0x1

    aput v10, v8, v9

    invoke-direct {v5, v6, v7}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    iput-object v4, v3, Lcom/google/zxing/common/reedsolomon/GenericGF;->one:Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    .line 85
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/google/zxing/common/reedsolomon/GenericGF;->initialized:Z

    .line 86
    return-void
.end method


# virtual methods
.method buildMonomial(II)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .locals 9

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/common/reedsolomon/GenericGF;
    move v1, p1

    .local v1, "degree":I
    move v2, p2

    .local v2, "coefficient":I
    move-object v4, v0

    invoke-direct {v4}, Lcom/google/zxing/common/reedsolomon/GenericGF;->checkInit()V

    .line 112
    move v4, v1

    if-gez v4, :cond_0

    .line 113
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 115
    :cond_0
    move v4, v2

    if-nez v4, :cond_1

    .line 116
    move-object v4, v0

    iget-object v4, v4, Lcom/google/zxing/common/reedsolomon/GenericGF;->zero:Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-object v0, v4

    .line 120
    .end local v0    # "this":Lcom/google/zxing/common/reedsolomon/GenericGF;
    :goto_0
    return-object v0

    .line 118
    .restart local v0    # "this":Lcom/google/zxing/common/reedsolomon/GenericGF;
    :cond_1
    move v4, v1

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    new-array v4, v4, [I

    move-object v3, v4

    .line 119
    .local v3, "coefficients":[I
    move-object v4, v3

    const/4 v5, 0x0

    move v6, v2

    aput v6, v4, v5

    .line 120
    new-instance v4, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move-object v7, v3

    invoke-direct {v5, v6, v7}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    move-object v0, v4

    goto :goto_0
.end method

.method exp(I)I
    .locals 4

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/common/reedsolomon/GenericGF;
    move v1, p1

    .local v1, "a":I
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/zxing/common/reedsolomon/GenericGF;->checkInit()V

    .line 138
    move-object v2, v0

    iget-object v2, v2, Lcom/google/zxing/common/reedsolomon/GenericGF;->expTable:[I

    move v3, v1

    aget v2, v2, v3

    move v0, v2

    .end local v0    # "this":Lcom/google/zxing/common/reedsolomon/GenericGF;
    return v0
.end method

.method getOne()Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .locals 2

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/common/reedsolomon/GenericGF;
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/zxing/common/reedsolomon/GenericGF;->checkInit()V

    .line 103
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/common/reedsolomon/GenericGF;->one:Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/common/reedsolomon/GenericGF;
    return-object v0
.end method

.method public getSize()I
    .locals 2

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/common/reedsolomon/GenericGF;
    move-object v1, v0

    iget v1, v1, Lcom/google/zxing/common/reedsolomon/GenericGF;->size:I

    move v0, v1

    .end local v0    # "this":Lcom/google/zxing/common/reedsolomon/GenericGF;
    return v0
.end method

.method getZero()Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .locals 2

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/common/reedsolomon/GenericGF;
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/zxing/common/reedsolomon/GenericGF;->checkInit()V

    .line 97
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/common/reedsolomon/GenericGF;->zero:Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/common/reedsolomon/GenericGF;
    return-object v0
.end method

.method inverse(I)I
    .locals 7

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/common/reedsolomon/GenericGF;
    move v1, p1

    .local v1, "a":I
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/zxing/common/reedsolomon/GenericGF;->checkInit()V

    .line 159
    move v2, v1

    if-nez v2, :cond_0

    .line 160
    new-instance v2, Ljava/lang/ArithmeticException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/lang/ArithmeticException;-><init>()V

    throw v2

    .line 162
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/zxing/common/reedsolomon/GenericGF;->expTable:[I

    move-object v3, v0

    iget v3, v3, Lcom/google/zxing/common/reedsolomon/GenericGF;->size:I

    move-object v4, v0

    iget-object v4, v4, Lcom/google/zxing/common/reedsolomon/GenericGF;->logTable:[I

    move v5, v1

    aget v4, v4, v5

    sub-int/2addr v3, v4

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    move v0, v2

    .end local v0    # "this":Lcom/google/zxing/common/reedsolomon/GenericGF;
    return v0
.end method

.method log(I)I
    .locals 5

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/common/reedsolomon/GenericGF;
    move v1, p1

    .local v1, "a":I
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/zxing/common/reedsolomon/GenericGF;->checkInit()V

    .line 147
    move v2, v1

    if-nez v2, :cond_0

    .line 148
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 150
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/zxing/common/reedsolomon/GenericGF;->logTable:[I

    move v3, v1

    aget v2, v2, v3

    move v0, v2

    .end local v0    # "this":Lcom/google/zxing/common/reedsolomon/GenericGF;
    return v0
.end method

.method multiply(II)I
    .locals 7

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/common/reedsolomon/GenericGF;
    move v1, p1

    .local v1, "a":I
    move v2, p2

    .local v2, "b":I
    move-object v3, v0

    invoke-direct {v3}, Lcom/google/zxing/common/reedsolomon/GenericGF;->checkInit()V

    .line 171
    move v3, v1

    if-eqz v3, :cond_0

    move v3, v2

    if-nez v3, :cond_1

    .line 172
    :cond_0
    const/4 v3, 0x0

    move v0, v3

    .line 174
    .end local v0    # "this":Lcom/google/zxing/common/reedsolomon/GenericGF;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/google/zxing/common/reedsolomon/GenericGF;
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/common/reedsolomon/GenericGF;->expTable:[I

    move-object v4, v0

    iget-object v4, v4, Lcom/google/zxing/common/reedsolomon/GenericGF;->logTable:[I

    move v5, v1

    aget v4, v4, v5

    move-object v5, v0

    iget-object v5, v5, Lcom/google/zxing/common/reedsolomon/GenericGF;->logTable:[I

    move v6, v2

    aget v5, v5, v6

    add-int/2addr v4, v5

    move-object v5, v0

    iget v5, v5, Lcom/google/zxing/common/reedsolomon/GenericGF;->size:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    rem-int/2addr v4, v5

    aget v3, v3, v4

    move v0, v3

    goto :goto_0
.end method
