.class public final Lcom/google/zxing/common/reedsolomon/ReedSolomonException;
.super Ljava/lang/Exception;
.source "ReedSolomonException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/common/reedsolomon/ReedSolomonException;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 29
    return-void
.end method
