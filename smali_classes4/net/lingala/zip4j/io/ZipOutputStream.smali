.class public Lnet/lingala/zip4j/io/ZipOutputStream;
.super Lnet/lingala/zip4j/io/DeflaterOutputStream;
.source "ZipOutputStream.java"


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 5

    .prologue
    .line 11
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/io/ZipOutputStream;
    move-object v1, p1

    .local v1, "outputStream":Ljava/io/OutputStream;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lnet/lingala/zip4j/io/ZipOutputStream;-><init>(Ljava/io/OutputStream;Lnet/lingala/zip4j/model/ZipModel;)V

    .line 12
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lnet/lingala/zip4j/model/ZipModel;)V
    .locals 6

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/io/ZipOutputStream;
    move-object v1, p1

    .local v1, "outputStream":Ljava/io/OutputStream;
    move-object v2, p2

    .local v2, "zipModel":Lnet/lingala/zip4j/model/ZipModel;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lnet/lingala/zip4j/io/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Lnet/lingala/zip4j/model/ZipModel;)V

    .line 16
    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/io/ZipOutputStream;
    move v1, p1

    .local v1, "bval":I
    const/4 v3, 0x1

    new-array v3, v3, [B

    move-object v2, v3

    .line 20
    .local v2, "b":[B
    move-object v3, v2

    const/4 v4, 0x0

    move v5, v1

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 21
    move-object v3, v0

    move-object v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Lnet/lingala/zip4j/io/ZipOutputStream;->write([BII)V

    .line 22
    return-void
.end method

.method public write([B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/io/ZipOutputStream;
    move-object v1, p1

    .local v1, "b":[B
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    move-object v5, v1

    array-length v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lnet/lingala/zip4j/io/ZipOutputStream;->write([BII)V

    .line 26
    return-void
.end method

.method public write([BII)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/io/ZipOutputStream;
    move-object v1, p1

    .local v1, "b":[B
    move v2, p2

    .local v2, "off":I
    move v3, p3

    .local v3, "len":I
    move-object v4, v0

    iget-object v4, v4, Lnet/lingala/zip4j/io/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Ljava/util/zip/CRC32;->update([BII)V

    .line 30
    move-object v4, v0

    move v5, v3

    invoke-virtual {v4, v5}, Lnet/lingala/zip4j/io/ZipOutputStream;->updateTotalBytesRead(I)V

    .line 31
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-super {v4, v5, v6, v7}, Lnet/lingala/zip4j/io/DeflaterOutputStream;->write([BII)V

    .line 32
    return-void
.end method
