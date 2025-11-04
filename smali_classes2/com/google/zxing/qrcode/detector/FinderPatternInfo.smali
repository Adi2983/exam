.class public final Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
.super Ljava/lang/Object;
.source "FinderPatternInfo.java"


# instance fields
.field private final bottomLeft:Lcom/google/zxing/qrcode/detector/FinderPattern;

.field private final topLeft:Lcom/google/zxing/qrcode/detector/FinderPattern;

.field private final topRight:Lcom/google/zxing/qrcode/detector/FinderPattern;


# direct methods
.method public constructor <init>([Lcom/google/zxing/qrcode/detector/FinderPattern;)V
    .locals 5

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
    move-object v1, p1

    .local v1, "patternCenters":[Lcom/google/zxing/qrcode/detector/FinderPattern;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 32
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iput-object v3, v2, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->bottomLeft:Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 33
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x1

    aget-object v3, v3, v4

    iput-object v3, v2, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->topLeft:Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 34
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x2

    aget-object v3, v3, v4

    iput-object v3, v2, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->topRight:Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 35
    return-void
.end method


# virtual methods
.method public getBottomLeft()Lcom/google/zxing/qrcode/detector/FinderPattern;
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->bottomLeft:Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
    return-object v0
.end method

.method public getTopLeft()Lcom/google/zxing/qrcode/detector/FinderPattern;
    .locals 2

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->topLeft:Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
    return-object v0
.end method

.method public getTopRight()Lcom/google/zxing/qrcode/detector/FinderPattern;
    .locals 2

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->topRight:Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
    return-object v0
.end method
