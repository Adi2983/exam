.class public Lnet/lingala/zip4j/io/ZipInputStream;
.super Ljava/io/InputStream;
.source "ZipInputStream.java"


# instance fields
.field private is:Lnet/lingala/zip4j/io/BaseInputStream;


# direct methods
.method public constructor <init>(Lnet/lingala/zip4j/io/BaseInputStream;)V
    .locals 4

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/io/ZipInputStream;
    move-object v1, p1

    .local v1, "is":Lnet/lingala/zip4j/io/BaseInputStream;
    move-object v2, v0

    invoke-direct {v2}, Ljava/io/InputStream;-><init>()V

    .line 29
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lnet/lingala/zip4j/io/ZipInputStream;->is:Lnet/lingala/zip4j/io/BaseInputStream;

    .line 30
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
    .line 82
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/io/ZipInputStream;
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/io/ZipInputStream;->is:Lnet/lingala/zip4j/io/BaseInputStream;

    invoke-virtual {v1}, Lnet/lingala/zip4j/io/BaseInputStream;->available()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/io/ZipInputStream;
    return v0
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/io/ZipInputStream;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lnet/lingala/zip4j/io/ZipInputStream;->close(Z)V

    .line 61
    return-void
.end method

.method public close(Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/io/ZipInputStream;
    move v1, p1

    .local v1, "skipCRCCheck":Z
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lnet/lingala/zip4j/io/ZipInputStream;->is:Lnet/lingala/zip4j/io/BaseInputStream;

    invoke-virtual {v3}, Lnet/lingala/zip4j/io/BaseInputStream;->close()V

    .line 73
    move v3, v1

    if-nez v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lnet/lingala/zip4j/io/ZipInputStream;->is:Lnet/lingala/zip4j/io/BaseInputStream;

    invoke-virtual {v3}, Lnet/lingala/zip4j/io/BaseInputStream;->getUnzipEngine()Lnet/lingala/zip4j/unzip/UnzipEngine;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 74
    move-object v3, v0

    iget-object v3, v3, Lnet/lingala/zip4j/io/ZipInputStream;->is:Lnet/lingala/zip4j/io/BaseInputStream;

    invoke-virtual {v3}, Lnet/lingala/zip4j/io/BaseInputStream;->getUnzipEngine()Lnet/lingala/zip4j/unzip/UnzipEngine;

    move-result-object v3

    invoke-virtual {v3}, Lnet/lingala/zip4j/unzip/UnzipEngine;->checkCRC()V
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :cond_0
    return-void

    .line 76
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 77
    .local v2, "e":Lnet/lingala/zip4j/exception/ZipException;
    new-instance v3, Ljava/io/IOException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v2

    invoke-virtual {v5}, Lnet/lingala/zip4j/exception/ZipException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/io/ZipInputStream;
    move-object v2, v0

    iget-object v2, v2, Lnet/lingala/zip4j/io/ZipInputStream;->is:Lnet/lingala/zip4j/io/BaseInputStream;

    invoke-virtual {v2}, Lnet/lingala/zip4j/io/BaseInputStream;->read()I

    move-result v2

    move v1, v2

    .line 34
    .local v1, "readByte":I
    move v2, v1

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 35
    move-object v2, v0

    iget-object v2, v2, Lnet/lingala/zip4j/io/ZipInputStream;->is:Lnet/lingala/zip4j/io/BaseInputStream;

    invoke-virtual {v2}, Lnet/lingala/zip4j/io/BaseInputStream;->getUnzipEngine()Lnet/lingala/zip4j/unzip/UnzipEngine;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Lnet/lingala/zip4j/unzip/UnzipEngine;->updateCRC(I)V

    .line 37
    :cond_0
    move v2, v1

    move v0, v2

    .end local v0    # "this":Lnet/lingala/zip4j/io/ZipInputStream;
    return v0
.end method

.method public read([B)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/io/ZipInputStream;
    move-object v1, p1

    .local v1, "b":[B
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    move-object v5, v1

    array-length v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lnet/lingala/zip4j/io/ZipInputStream;->read([BII)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lnet/lingala/zip4j/io/ZipInputStream;
    return v0
.end method

.method public read([BII)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/io/ZipInputStream;
    move-object v1, p1

    .local v1, "b":[B
    move v2, p2

    .local v2, "off":I
    move v3, p3

    .local v3, "len":I
    move-object v5, v0

    iget-object v5, v5, Lnet/lingala/zip4j/io/ZipInputStream;->is:Lnet/lingala/zip4j/io/BaseInputStream;

    move-object v6, v1

    move v7, v2

    move v8, v3

    invoke-virtual {v5, v6, v7, v8}, Lnet/lingala/zip4j/io/BaseInputStream;->read([BII)I

    move-result v5

    move v4, v5

    .line 46
    .local v4, "readLen":I
    move v5, v4

    if-lez v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Lnet/lingala/zip4j/io/ZipInputStream;->is:Lnet/lingala/zip4j/io/BaseInputStream;

    invoke-virtual {v5}, Lnet/lingala/zip4j/io/BaseInputStream;->getUnzipEngine()Lnet/lingala/zip4j/unzip/UnzipEngine;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 47
    move-object v5, v0

    iget-object v5, v5, Lnet/lingala/zip4j/io/ZipInputStream;->is:Lnet/lingala/zip4j/io/BaseInputStream;

    invoke-virtual {v5}, Lnet/lingala/zip4j/io/BaseInputStream;->getUnzipEngine()Lnet/lingala/zip4j/unzip/UnzipEngine;

    move-result-object v5

    move-object v6, v1

    move v7, v2

    move v8, v4

    invoke-virtual {v5, v6, v7, v8}, Lnet/lingala/zip4j/unzip/UnzipEngine;->updateCRC([BII)V

    .line 49
    :cond_0
    move v5, v4

    move v0, v5

    .end local v0    # "this":Lnet/lingala/zip4j/io/ZipInputStream;
    return v0
.end method

.method public skip(J)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/io/ZipInputStream;
    move-wide v1, p1

    .local v1, "n":J
    move-object v3, v0

    iget-object v3, v3, Lnet/lingala/zip4j/io/ZipInputStream;->is:Lnet/lingala/zip4j/io/BaseInputStream;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Lnet/lingala/zip4j/io/BaseInputStream;->skip(J)J

    move-result-wide v3

    move-wide v0, v3

    .end local v0    # "this":Lnet/lingala/zip4j/io/ZipInputStream;
    return-wide v0
.end method
