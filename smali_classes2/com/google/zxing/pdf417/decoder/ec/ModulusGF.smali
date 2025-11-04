.class public final Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;
.super Ljava/lang/Object;
.source "ModulusGF.java"


# static fields
.field public static final PDF417_GF:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;


# instance fields
.field private final expTable:[I

.field private final logTable:[I

.field private final modulus:I

.field private final one:Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

.field private final zero:Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 27
    new-instance v0, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x3a1

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;-><init>(II)V

    sput-object v0, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->PDF417_GF:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 14

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;
    move v1, p1

    .local v1, "modulus":I
    move/from16 v2, p2

    .local v2, "generator":I
    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 36
    move-object v5, v0

    move v6, v1

    iput v6, v5, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->modulus:I

    .line 37
    move-object v5, v0

    move v6, v1

    new-array v6, v6, [I

    iput-object v6, v5, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->expTable:[I

    .line 38
    move-object v5, v0

    move v6, v1

    new-array v6, v6, [I

    iput-object v6, v5, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->logTable:[I

    .line 39
    const/4 v5, 0x1

    move v3, v5

    .line 40
    .local v3, "x":I
    const/4 v5, 0x0

    move v4, v5

    .local v4, "i":I
    :goto_0
    move v5, v4

    move v6, v1

    if-ge v5, v6, :cond_0

    .line 41
    move-object v5, v0

    iget-object v5, v5, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->expTable:[I

    move v6, v4

    move v7, v3

    aput v7, v5, v6

    .line 42
    move v5, v3

    move v6, v2

    mul-int/2addr v5, v6

    move v6, v1

    rem-int/2addr v5, v6

    move v3, v5

    .line 40
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 44
    :cond_0
    const/4 v5, 0x0

    move v4, v5

    :goto_1
    move v5, v4

    move v6, v1

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_1

    .line 45
    move-object v5, v0

    iget-object v5, v5, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->logTable:[I

    move-object v6, v0

    iget-object v6, v6, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->expTable:[I

    move v7, v4

    aget v6, v6, v7

    move v7, v4

    aput v7, v5, v6

    .line 44
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 48
    :cond_1
    move-object v5, v0

    new-instance v6, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-object v8, v0

    const/4 v9, 0x1

    new-array v9, v9, [I

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v12, v10, v11

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;-><init>(Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;[I)V

    iput-object v6, v5, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->zero:Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    .line 49
    move-object v5, v0

    new-instance v6, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-object v8, v0

    const/4 v9, 0x1

    new-array v9, v9, [I

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    const/4 v12, 0x1

    aput v12, v10, v11

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;-><init>(Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;[I)V

    iput-object v6, v5, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->one:Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    .line 50
    return-void
.end method


# virtual methods
.method add(II)I
    .locals 5

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;
    move v1, p1

    .local v1, "a":I
    move v2, p2

    .local v2, "b":I
    move v3, v1

    move v4, v2

    add-int/2addr v3, v4

    move-object v4, v0

    iget v4, v4, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->modulus:I

    rem-int/2addr v3, v4

    move v0, v3

    .end local v0    # "this":Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;
    return v0
.end method

.method buildMonomial(II)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .locals 9

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;
    move v1, p1

    .local v1, "degree":I
    move v2, p2

    .local v2, "coefficient":I
    move v4, v1

    if-gez v4, :cond_0

    .line 63
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 65
    :cond_0
    move v4, v2

    if-nez v4, :cond_1

    .line 66
    move-object v4, v0

    iget-object v4, v4, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->zero:Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-object v0, v4

    .line 70
    .end local v0    # "this":Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;
    :goto_0
    return-object v0

    .line 68
    .restart local v0    # "this":Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;
    :cond_1
    move v4, v1

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    new-array v4, v4, [I

    move-object v3, v4

    .line 69
    .local v3, "coefficients":[I
    move-object v4, v3

    const/4 v5, 0x0

    move v6, v2

    aput v6, v4, v5

    .line 70
    new-instance v4, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move-object v7, v3

    invoke-direct {v5, v6, v7}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;-><init>(Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;[I)V

    move-object v0, v4

    goto :goto_0
.end method

.method exp(I)I
    .locals 4

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;
    move v1, p1

    .local v1, "a":I
    move-object v2, v0

    iget-object v2, v2, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->expTable:[I

    move v3, v1

    aget v2, v2, v3

    move v0, v2

    .end local v0    # "this":Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;
    return v0
.end method

.method getOne()Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .locals 2

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->one:Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;
    return-object v0
.end method

.method getSize()I
    .locals 2

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;
    move-object v1, v0

    iget v1, v1, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->modulus:I

    move v0, v1

    .end local v0    # "this":Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;
    return v0
.end method

.method getZero()Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .locals 2

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->zero:Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;
    return-object v0
.end method

.method inverse(I)I
    .locals 7

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;
    move v1, p1

    .local v1, "a":I
    move v2, v1

    if-nez v2, :cond_0

    .line 94
    new-instance v2, Ljava/lang/ArithmeticException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/lang/ArithmeticException;-><init>()V

    throw v2

    .line 96
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->expTable:[I

    move-object v3, v0

    iget v3, v3, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->modulus:I

    move-object v4, v0

    iget-object v4, v4, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->logTable:[I

    move v5, v1

    aget v4, v4, v5

    sub-int/2addr v3, v4

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    move v0, v2

    .end local v0    # "this":Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;
    return v0
.end method

.method log(I)I
    .locals 5

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;
    move v1, p1

    .local v1, "a":I
    move v2, v1

    if-nez v2, :cond_0

    .line 87
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 89
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->logTable:[I

    move v3, v1

    aget v2, v2, v3

    move v0, v2

    .end local v0    # "this":Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;
    return v0
.end method

.method multiply(II)I
    .locals 7

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;
    move v1, p1

    .local v1, "a":I
    move v2, p2

    .local v2, "b":I
    move v3, v1

    if-eqz v3, :cond_0

    move v3, v2

    if-nez v3, :cond_1

    .line 101
    :cond_0
    const/4 v3, 0x0

    move v0, v3

    .line 103
    .end local v0    # "this":Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->expTable:[I

    move-object v4, v0

    iget-object v4, v4, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->logTable:[I

    move v5, v1

    aget v4, v4, v5

    move-object v5, v0

    iget-object v5, v5, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->logTable:[I

    move v6, v2

    aget v5, v5, v6

    add-int/2addr v4, v5

    move-object v5, v0

    iget v5, v5, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->modulus:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    rem-int/2addr v4, v5

    aget v3, v3, v4

    move v0, v3

    goto :goto_0
.end method

.method subtract(II)I
    .locals 5

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;
    move v1, p1

    .local v1, "a":I
    move v2, p2

    .local v2, "b":I
    move-object v3, v0

    iget v3, v3, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->modulus:I

    move v4, v1

    add-int/2addr v3, v4

    move v4, v2

    sub-int/2addr v3, v4

    move-object v4, v0

    iget v4, v4, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->modulus:I

    rem-int/2addr v3, v4

    move v0, v3

    .end local v0    # "this":Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;
    return v0
.end method
