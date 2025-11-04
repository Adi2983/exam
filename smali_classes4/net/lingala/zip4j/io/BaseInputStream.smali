.class public abstract Lnet/lingala/zip4j/io/BaseInputStream;
.super Ljava/io/InputStream;
.source "BaseInputStream.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 8
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/io/BaseInputStream;
    move-object v1, v0

    invoke-direct {v1}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/io/BaseInputStream;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/io/BaseInputStream;
    return v0
.end method

.method public getUnzipEngine()Lnet/lingala/zip4j/unzip/UnzipEngine;
    .locals 2

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/io/BaseInputStream;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/io/BaseInputStream;
    return-object v0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/io/BaseInputStream;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/io/BaseInputStream;
    return v0
.end method

.method public seek(J)V
    .locals 0
    .param p1, "pos"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15
    return-void
.end method
