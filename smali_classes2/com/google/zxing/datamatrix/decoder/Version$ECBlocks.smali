.class final Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;
.super Ljava/lang/Object;
.source "Version.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/datamatrix/decoder/Version;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ECBlocks"
.end annotation


# instance fields
.field private final ecBlocks:[Lcom/google/zxing/datamatrix/decoder/Version$ECB;

.field private final ecCodewords:I


# direct methods
.method private constructor <init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;)V
    .locals 9

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;
    move v1, p1

    .local v1, "ecCodewords":I
    move-object v2, p2

    .local v2, "ecBlocks":Lcom/google/zxing/datamatrix/decoder/Version$ECB;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 123
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;->ecCodewords:I

    .line 124
    move-object v3, v0

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v2

    aput-object v7, v5, v6

    iput-object v4, v3, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;->ecBlocks:[Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    .line 125
    return-void
.end method

.method synthetic constructor <init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$1;)V
    .locals 7

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;
    move v1, p1

    .local v1, "x0":I
    move-object v2, p2

    .local v2, "x1":Lcom/google/zxing/datamatrix/decoder/Version$ECB;
    move-object v3, p3

    .local v3, "x2":Lcom/google/zxing/datamatrix/decoder/Version$1;
    move-object v4, v0

    move v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;)V

    return-void
.end method

.method private constructor <init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$ECB;)V
    .locals 10

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;
    move v1, p1

    .local v1, "ecCodewords":I
    move-object v2, p2

    .local v2, "ecBlocks1":Lcom/google/zxing/datamatrix/decoder/Version$ECB;
    move-object v3, p3

    .local v3, "ecBlocks2":Lcom/google/zxing/datamatrix/decoder/Version$ECB;
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 128
    move-object v4, v0

    move v5, v1

    iput v5, v4, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;->ecCodewords:I

    .line 129
    move-object v4, v0

    const/4 v5, 0x2

    new-array v5, v5, [Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v2

    aput-object v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x1

    move-object v8, v3

    aput-object v8, v6, v7

    iput-object v5, v4, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;->ecBlocks:[Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    .line 130
    return-void
.end method

.method synthetic constructor <init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$1;)V
    .locals 9

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;
    move v1, p1

    .local v1, "x0":I
    move-object v2, p2

    .local v2, "x1":Lcom/google/zxing/datamatrix/decoder/Version$ECB;
    move-object v3, p3

    .local v3, "x2":Lcom/google/zxing/datamatrix/decoder/Version$ECB;
    move-object v4, p4

    .local v4, "x3":Lcom/google/zxing/datamatrix/decoder/Version$1;
    move-object v5, v0

    move v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-direct {v5, v6, v7, v8}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$ECB;)V

    return-void
.end method


# virtual methods
.method getECBlocks()[Lcom/google/zxing/datamatrix/decoder/Version$ECB;
    .locals 2

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;->ecBlocks:[Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;
    return-object v0
.end method

.method getECCodewords()I
    .locals 2

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;
    move-object v1, v0

    iget v1, v1, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;->ecCodewords:I

    move v0, v1

    .end local v0    # "this":Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;
    return v0
.end method
