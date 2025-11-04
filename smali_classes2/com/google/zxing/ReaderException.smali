.class public abstract Lcom/google/zxing/ReaderException;
.super Ljava/lang/Exception;
.source "ReaderException.java"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/ReaderException;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    .line 30
    return-void
.end method


# virtual methods
.method public final fillInStackTrace()Ljava/lang/Throwable;
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/ReaderException;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/ReaderException;
    return-object v0
.end method
