.class abstract Lcom/google/zxing/oned/rss/expanded/decoders/DecodedObject;
.super Ljava/lang/Object;
.source "DecodedObject.java"


# instance fields
.field private final newPosition:I


# direct methods
.method constructor <init>(I)V
    .locals 4

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedObject;
    move v1, p1

    .local v1, "newPosition":I
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 37
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedObject;->newPosition:I

    .line 38
    return-void
.end method


# virtual methods
.method final getNewPosition()I
    .locals 2

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedObject;
    move-object v1, v0

    iget v1, v1, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedObject;->newPosition:I

    move v0, v1

    .end local v0    # "this":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedObject;
    return v0
.end method
