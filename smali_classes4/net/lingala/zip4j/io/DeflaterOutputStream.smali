.class public Lnet/lingala/zip4j/io/DeflaterOutputStream;
.super Lnet/lingala/zip4j/io/CipherOutputStream;
.source "DeflaterOutputStream.java"


# instance fields
.field private buff:[B

.field protected deflater:Ljava/util/zip/Deflater;

.field private firstBytesRead:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lnet/lingala/zip4j/model/ZipModel;)V
    .locals 7

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/io/DeflaterOutputStream;
    move-object v1, p1

    .local v1, "outputStream":Ljava/io/OutputStream;
    move-object v2, p2

    .local v2, "zipModel":Lnet/lingala/zip4j/model/ZipModel;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lnet/lingala/zip4j/io/CipherOutputStream;-><init>(Ljava/io/OutputStream;Lnet/lingala/zip4j/model/ZipModel;)V

    .line 38
    move-object v3, v0

    new-instance v4, Ljava/util/zip/Deflater;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/zip/Deflater;-><init>()V

    iput-object v4, v3, Lnet/lingala/zip4j/io/DeflaterOutputStream;->deflater:Ljava/util/zip/Deflater;

    .line 39
    move-object v3, v0

    const/16 v4, 0x1000

    new-array v4, v4, [B

    iput-object v4, v3, Lnet/lingala/zip4j/io/DeflaterOutputStream;->buff:[B

    .line 40
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lnet/lingala/zip4j/io/DeflaterOutputStream;->firstBytesRead:Z

    .line 41
    return-void
.end method

.method private deflate()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/io/DeflaterOutputStream;
    move-object v2, v0

    iget-object v2, v2, Lnet/lingala/zip4j/io/DeflaterOutputStream;->deflater:Ljava/util/zip/Deflater;

    move-object v3, v0

    iget-object v3, v3, Lnet/lingala/zip4j/io/DeflaterOutputStream;->buff:[B

    const/4 v4, 0x0

    move-object v5, v0

    iget-object v5, v5, Lnet/lingala/zip4j/io/DeflaterOutputStream;->buff:[B

    array-length v5, v5

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result v2

    move v1, v2

    .line 64
    .local v1, "len":I
    move v2, v1

    if-lez v2, :cond_3

    .line 65
    move-object v2, v0

    iget-object v2, v2, Lnet/lingala/zip4j/io/DeflaterOutputStream;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v2}, Ljava/util/zip/Deflater;->finished()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 66
    move v2, v1

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 80
    :goto_0
    return-void

    .line 67
    :cond_0
    move v2, v1

    const/4 v3, 0x4

    if-ge v2, v3, :cond_1

    .line 68
    move-object v2, v0

    const/4 v3, 0x4

    move v4, v1

    rsub-int/lit8 v3, v4, 0x4

    invoke-virtual {v2, v3}, Lnet/lingala/zip4j/io/DeflaterOutputStream;->decrementCompressedFileSize(I)V

    .line 69
    goto :goto_0

    .line 71
    :cond_1
    add-int/lit8 v1, v1, -0x4

    .line 73
    :cond_2
    move-object v2, v0

    iget-boolean v2, v2, Lnet/lingala/zip4j/io/DeflaterOutputStream;->firstBytesRead:Z

    if-nez v2, :cond_4

    .line 74
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lnet/lingala/zip4j/io/DeflaterOutputStream;->buff:[B

    const/4 v4, 0x2

    move v5, v1

    const/4 v6, 0x2

    add-int/lit8 v5, v5, -0x2

    invoke-super {v2, v3, v4, v5}, Lnet/lingala/zip4j/io/CipherOutputStream;->write([BII)V

    .line 75
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lnet/lingala/zip4j/io/DeflaterOutputStream;->firstBytesRead:Z

    .line 80
    :cond_3
    :goto_1
    goto :goto_0

    .line 77
    :cond_4
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lnet/lingala/zip4j/io/DeflaterOutputStream;->buff:[B

    const/4 v4, 0x0

    move v5, v1

    invoke-super {v2, v3, v4, v5}, Lnet/lingala/zip4j/io/CipherOutputStream;->write([BII)V

    goto :goto_1
.end method


# virtual methods
.method public closeEntry()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/io/DeflaterOutputStream;
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/io/DeflaterOutputStream;->zipParameters:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/ZipParameters;->getCompressionMethod()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    .line 101
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/io/DeflaterOutputStream;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->finished()Z

    move-result v1

    if-nez v1, :cond_0

    .line 102
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/io/DeflaterOutputStream;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->finish()V

    .line 103
    :goto_0
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/io/DeflaterOutputStream;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->finished()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 107
    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lnet/lingala/zip4j/io/DeflaterOutputStream;->firstBytesRead:Z

    .line 109
    :cond_1
    move-object v1, v0

    invoke-super {v1}, Lnet/lingala/zip4j/io/CipherOutputStream;->closeEntry()V

    .line 110
    return-void

    .line 104
    :cond_2
    move-object v1, v0

    invoke-direct {v1}, Lnet/lingala/zip4j/io/DeflaterOutputStream;->deflate()V

    goto :goto_0
.end method

.method public finish()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/io/DeflaterOutputStream;
    move-object v1, v0

    invoke-super {v1}, Lnet/lingala/zip4j/io/CipherOutputStream;->finish()V

    .line 114
    return-void
.end method

.method public putNextEntry(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/io/DeflaterOutputStream;
    move-object v1, p1

    .local v1, "file":Ljava/io/File;
    move-object v2, p2

    .local v2, "zipParameters":Lnet/lingala/zip4j/model/ZipParameters;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Lnet/lingala/zip4j/io/CipherOutputStream;->putNextEntry(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;)V

    .line 46
    move-object v3, v2

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ZipParameters;->getCompressionMethod()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_2

    .line 47
    move-object v3, v0

    iget-object v3, v3, Lnet/lingala/zip4j/io/DeflaterOutputStream;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v3}, Ljava/util/zip/Deflater;->reset()V

    .line 48
    move-object v3, v2

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ZipParameters;->getCompressionLevel()I

    move-result v3

    if-ltz v3, :cond_0

    move-object v3, v2

    .line 49
    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ZipParameters;->getCompressionLevel()I

    move-result v3

    const/16 v4, 0x9

    if-le v3, v4, :cond_1

    .line 50
    :cond_0
    move-object v3, v2

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ZipParameters;->getCompressionLevel()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 51
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    .line 52
    const-string/jumbo v5, "invalid compression level for deflater. compression level should be in the range of 0-9"

    .line 51
    invoke-direct {v4, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 54
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lnet/lingala/zip4j/io/DeflaterOutputStream;->deflater:Ljava/util/zip/Deflater;

    move-object v4, v2

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/ZipParameters;->getCompressionLevel()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/zip/Deflater;->setLevel(I)V

    .line 56
    :cond_2
    return-void
.end method

.method public write(I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/io/DeflaterOutputStream;
    move v1, p1

    .local v1, "bval":I
    const/4 v3, 0x1

    new-array v3, v3, [B

    move-object v2, v3

    .line 84
    .local v2, "b":[B
    move-object v3, v2

    const/4 v4, 0x0

    move v5, v1

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 85
    move-object v3, v0

    move-object v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Lnet/lingala/zip4j/io/DeflaterOutputStream;->write([BII)V

    .line 86
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
    .line 59
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/io/DeflaterOutputStream;
    move-object v1, p1

    .local v1, "b":[B
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    move-object v5, v1

    array-length v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lnet/lingala/zip4j/io/DeflaterOutputStream;->write([BII)V

    .line 60
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
    .line 89
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/io/DeflaterOutputStream;
    move-object v1, p1

    .local v1, "buf":[B
    move v2, p2

    .local v2, "off":I
    move v3, p3

    .local v3, "len":I
    move-object v4, v0

    iget-object v4, v4, Lnet/lingala/zip4j/io/DeflaterOutputStream;->zipParameters:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/ZipParameters;->getCompressionMethod()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    .line 90
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-super {v4, v5, v6, v7}, Lnet/lingala/zip4j/io/CipherOutputStream;->write([BII)V

    .line 97
    :cond_0
    return-void

    .line 92
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lnet/lingala/zip4j/io/DeflaterOutputStream;->deflater:Ljava/util/zip/Deflater;

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Ljava/util/zip/Deflater;->setInput([BII)V

    .line 93
    :goto_0
    move-object v4, v0

    iget-object v4, v4, Lnet/lingala/zip4j/io/DeflaterOutputStream;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v4}, Ljava/util/zip/Deflater;->needsInput()Z

    move-result v4

    if-nez v4, :cond_0

    .line 94
    move-object v4, v0

    invoke-direct {v4}, Lnet/lingala/zip4j/io/DeflaterOutputStream;->deflate()V

    goto :goto_0
.end method
