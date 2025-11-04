.class public final Lcom/google/zxing/WriterException;
.super Ljava/lang/Exception;
.source "WriterException.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/WriterException;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/WriterException;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/WriterException;
    move-object v1, p1

    .local v1, "cause":Ljava/lang/Throwable;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 36
    return-void
.end method
