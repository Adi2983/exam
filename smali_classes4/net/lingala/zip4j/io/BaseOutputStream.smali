.class public abstract Lnet/lingala/zip4j/io/BaseOutputStream;
.super Ljava/io/OutputStream;
.source "BaseOutputStream.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/io/BaseOutputStream;
    move-object v1, v0

    invoke-direct {v1}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 0
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25
    return-void
.end method
