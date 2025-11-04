.class public Lnet/lingala/zip4j/io/PartInputStream;
.super Lnet/lingala/zip4j/io/BaseInputStream;
.source "PartInputStream.java"


# instance fields
.field private aesBlockByte:[B

.field private aesBytesReturned:I

.field private bytesRead:J

.field private count:I

.field private decrypter:Lnet/lingala/zip4j/crypto/IDecrypter;

.field private isAESEncryptedFile:Z

.field private length:J

.field private oneByteBuff:[B

.field private raf:Ljava/io/RandomAccessFile;

.field private unzipEngine:Lnet/lingala/zip4j/unzip/UnzipEngine;


# direct methods
.method public constructor <init>(Ljava/io/RandomAccessFile;JJLnet/lingala/zip4j/unzip/UnzipEngine;)V
    .locals 10

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/io/PartInputStream;
    move-object v1, p1

    .local v1, "raf":Ljava/io/RandomAccessFile;
    move-wide v2, p2

    .local v2, "start":J
    move-wide v4, p4

    .local v4, "len":J
    move-object/from16 v6, p6

    .local v6, "unzipEngine":Lnet/lingala/zip4j/unzip/UnzipEngine;
    move-object v7, v0

    invoke-direct {v7}, Lnet/lingala/zip4j/io/BaseInputStream;-><init>()V

    .line 35
    move-object v7, v0

    const/4 v8, 0x1

    new-array v8, v8, [B

    iput-object v8, v7, Lnet/lingala/zip4j/io/PartInputStream;->oneByteBuff:[B

    .line 36
    move-object v7, v0

    const/16 v8, 0x10

    new-array v8, v8, [B

    iput-object v8, v7, Lnet/lingala/zip4j/io/PartInputStream;->aesBlockByte:[B

    .line 37
    move-object v7, v0

    const/4 v8, 0x0

    iput v8, v7, Lnet/lingala/zip4j/io/PartInputStream;->aesBytesReturned:I

    .line 38
    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Lnet/lingala/zip4j/io/PartInputStream;->isAESEncryptedFile:Z

    .line 39
    move-object v7, v0

    const/4 v8, -0x1

    iput v8, v7, Lnet/lingala/zip4j/io/PartInputStream;->count:I

    .line 42
    move-object v7, v0

    move-object v8, v1

    iput-object v8, v7, Lnet/lingala/zip4j/io/PartInputStream;->raf:Ljava/io/RandomAccessFile;

    .line 43
    move-object v7, v0

    move-object v8, v6

    iput-object v8, v7, Lnet/lingala/zip4j/io/PartInputStream;->unzipEngine:Lnet/lingala/zip4j/unzip/UnzipEngine;

    .line 44
    move-object v7, v0

    move-object v8, v6

    invoke-virtual {v8}, Lnet/lingala/zip4j/unzip/UnzipEngine;->getDecrypter()Lnet/lingala/zip4j/crypto/IDecrypter;

    move-result-object v8

    iput-object v8, v7, Lnet/lingala/zip4j/io/PartInputStream;->decrypter:Lnet/lingala/zip4j/crypto/IDecrypter;

    .line 45
    move-object v7, v0

    const-wide/16 v8, 0x0

    iput-wide v8, v7, Lnet/lingala/zip4j/io/PartInputStream;->bytesRead:J

    .line 46
    move-object v7, v0

    move-wide v8, v4

    iput-wide v8, v7, Lnet/lingala/zip4j/io/PartInputStream;->length:J

    .line 47
    move-object v7, v0

    move-object v8, v6

    invoke-virtual {v8}, Lnet/lingala/zip4j/unzip/UnzipEngine;->getFileHeader()Lnet/lingala/zip4j/model/FileHeader;

    move-result-object v8

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/FileHeader;->isEncrypted()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 48
    move-object v8, v6

    invoke-virtual {v8}, Lnet/lingala/zip4j/unzip/UnzipEngine;->getFileHeader()Lnet/lingala/zip4j/model/FileHeader;

    move-result-object v8

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/FileHeader;->getEncryptionMethod()I

    move-result v8

    const/16 v9, 0x63

    if-ne v8, v9, :cond_0

    const/4 v8, 0x1

    .line 47
    :goto_0
    iput-boolean v8, v7, Lnet/lingala/zip4j/io/PartInputStream;->isAESEncryptedFile:Z

    .line 49
    return-void

    .line 48
    :cond_0
    const/4 v8, 0x0

    goto :goto_0
.end method


# virtual methods
.method public available()I
    .locals 8

    .prologue
    .line 52
    move-object v1, p0

    .local v1, "this":Lnet/lingala/zip4j/io/PartInputStream;
    move-object v4, v1

    iget-wide v4, v4, Lnet/lingala/zip4j/io/PartInputStream;->length:J

    move-object v6, v1

    iget-wide v6, v6, Lnet/lingala/zip4j/io/PartInputStream;->bytesRead:J

    sub-long/2addr v4, v6

    move-wide v2, v4

    .line 53
    .local v2, "amount":J
    move-wide v4, v2

    const-wide/32 v6, 0x7fffffff

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 54
    const v4, 0x7fffffff

    move v1, v4

    .line 55
    .end local v1    # "this":Lnet/lingala/zip4j/io/PartInputStream;
    :goto_0
    return v1

    .restart local v1    # "this":Lnet/lingala/zip4j/io/PartInputStream;
    :cond_0
    move-wide v4, v2

    long-to-int v4, v4

    move v1, v4

    goto :goto_0
.end method

.method protected checkAndReadAESMacBytes()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/io/PartInputStream;
    move-object v4, v0

    iget-boolean v4, v4, Lnet/lingala/zip4j/io/PartInputStream;->isAESEncryptedFile:Z

    if-eqz v4, :cond_2

    .line 128
    move-object v4, v0

    iget-object v4, v4, Lnet/lingala/zip4j/io/PartInputStream;->decrypter:Lnet/lingala/zip4j/crypto/IDecrypter;

    if-eqz v4, :cond_2

    move-object v4, v0

    iget-object v4, v4, Lnet/lingala/zip4j/io/PartInputStream;->decrypter:Lnet/lingala/zip4j/crypto/IDecrypter;

    instance-of v4, v4, Lnet/lingala/zip4j/crypto/AESDecrypter;

    if-eqz v4, :cond_2

    .line 129
    move-object v4, v0

    iget-object v4, v4, Lnet/lingala/zip4j/io/PartInputStream;->decrypter:Lnet/lingala/zip4j/crypto/IDecrypter;

    check-cast v4, Lnet/lingala/zip4j/crypto/AESDecrypter;

    invoke-virtual {v4}, Lnet/lingala/zip4j/crypto/AESDecrypter;->getStoredMac()[B

    move-result-object v4

    if-eqz v4, :cond_0

    .line 131
    .line 150
    :goto_0
    return-void

    .line 133
    :cond_0
    const/16 v4, 0xa

    new-array v4, v4, [B

    move-object v1, v4

    .line 134
    .local v1, "macBytes":[B
    const/4 v4, -0x1

    move v2, v4

    .line 135
    .local v2, "readLen":I
    move-object v4, v0

    iget-object v4, v4, Lnet/lingala/zip4j/io/PartInputStream;->raf:Ljava/io/RandomAccessFile;

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v4

    move v2, v4

    .line 136
    move v4, v2

    const/16 v5, 0xa

    if-eq v4, v5, :cond_1

    .line 137
    move-object v4, v0

    iget-object v4, v4, Lnet/lingala/zip4j/io/PartInputStream;->unzipEngine:Lnet/lingala/zip4j/unzip/UnzipEngine;

    invoke-virtual {v4}, Lnet/lingala/zip4j/unzip/UnzipEngine;->getZipModel()Lnet/lingala/zip4j/model/ZipModel;

    move-result-object v4

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/ZipModel;->isSplitArchive()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 138
    move-object v4, v0

    iget-object v4, v4, Lnet/lingala/zip4j/io/PartInputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    .line 139
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lnet/lingala/zip4j/io/PartInputStream;->unzipEngine:Lnet/lingala/zip4j/unzip/UnzipEngine;

    invoke-virtual {v5}, Lnet/lingala/zip4j/unzip/UnzipEngine;->startNextSplitFile()Ljava/io/RandomAccessFile;

    move-result-object v5

    iput-object v5, v4, Lnet/lingala/zip4j/io/PartInputStream;->raf:Ljava/io/RandomAccessFile;

    .line 140
    move-object v4, v0

    iget-object v4, v4, Lnet/lingala/zip4j/io/PartInputStream;->raf:Ljava/io/RandomAccessFile;

    move-object v5, v1

    move v6, v2

    const/16 v7, 0xa

    move v8, v2

    rsub-int/lit8 v7, v8, 0xa

    invoke-virtual {v4, v5, v6, v7}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v4

    move v3, v4

    .line 141
    .local v3, "newlyRead":I
    move v4, v2

    move v5, v3

    add-int/2addr v4, v5

    move v2, v4

    .line 147
    .end local v3    # "newlyRead":I
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lnet/lingala/zip4j/io/PartInputStream;->unzipEngine:Lnet/lingala/zip4j/unzip/UnzipEngine;

    invoke-virtual {v4}, Lnet/lingala/zip4j/unzip/UnzipEngine;->getDecrypter()Lnet/lingala/zip4j/crypto/IDecrypter;

    move-result-object v4

    check-cast v4, Lnet/lingala/zip4j/crypto/AESDecrypter;

    move-object v5, v1

    invoke-virtual {v4, v5}, Lnet/lingala/zip4j/crypto/AESDecrypter;->setStoredMac([B)V

    .line 150
    .end local v1    # "macBytes":[B
    .end local v2    # "readLen":I
    :cond_2
    goto :goto_0

    .line 143
    .restart local v1    # "macBytes":[B
    .restart local v2    # "readLen":I
    :cond_3
    new-instance v4, Ljava/io/IOException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string/jumbo v6, "Error occured while reading stored AES authentication bytes"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/io/PartInputStream;
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/io/PartInputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 163
    return-void
.end method

.method public getUnzipEngine()Lnet/lingala/zip4j/unzip/UnzipEngine;
    .locals 2

    .prologue
    .line 170
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/io/PartInputStream;
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/io/PartInputStream;->unzipEngine:Lnet/lingala/zip4j/unzip/UnzipEngine;

    move-object v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/io/PartInputStream;
    return-object v0
.end method

.method public read()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    move-object v1, p0

    .local v1, "this":Lnet/lingala/zip4j/io/PartInputStream;
    move-object v2, v1

    iget-wide v2, v2, Lnet/lingala/zip4j/io/PartInputStream;->bytesRead:J

    move-object v4, v1

    iget-wide v4, v4, Lnet/lingala/zip4j/io/PartInputStream;->length:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 60
    const/4 v2, -0x1

    move v1, v2

    .line 71
    .end local v1    # "this":Lnet/lingala/zip4j/io/PartInputStream;
    :goto_0
    return v1

    .line 62
    .restart local v1    # "this":Lnet/lingala/zip4j/io/PartInputStream;
    :cond_0
    move-object v2, v1

    iget-boolean v2, v2, Lnet/lingala/zip4j/io/PartInputStream;->isAESEncryptedFile:Z

    if-eqz v2, :cond_4

    .line 63
    move-object v2, v1

    iget v2, v2, Lnet/lingala/zip4j/io/PartInputStream;->aesBytesReturned:I

    if-eqz v2, :cond_1

    move-object v2, v1

    iget v2, v2, Lnet/lingala/zip4j/io/PartInputStream;->aesBytesReturned:I

    const/16 v3, 0x10

    if-ne v2, v3, :cond_3

    .line 64
    :cond_1
    move-object v2, v1

    move-object v3, v1

    iget-object v3, v3, Lnet/lingala/zip4j/io/PartInputStream;->aesBlockByte:[B

    invoke-virtual {v2, v3}, Lnet/lingala/zip4j/io/PartInputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 65
    const/4 v2, -0x1

    move v1, v2

    goto :goto_0

    .line 67
    :cond_2
    move-object v2, v1

    const/4 v3, 0x0

    iput v3, v2, Lnet/lingala/zip4j/io/PartInputStream;->aesBytesReturned:I

    .line 69
    :cond_3
    move-object v2, v1

    iget-object v2, v2, Lnet/lingala/zip4j/io/PartInputStream;->aesBlockByte:[B

    move-object v3, v1

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lnet/lingala/zip4j/io/PartInputStream;->aesBytesReturned:I

    move-object v7, v3

    move v8, v4

    move v3, v8

    move-object v4, v7

    move v5, v8

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lnet/lingala/zip4j/io/PartInputStream;->aesBytesReturned:I

    aget-byte v2, v2, v3

    const/16 v3, 0xff

    and-int/lit16 v2, v2, 0xff

    move v1, v2

    goto :goto_0

    .line 71
    :cond_4
    move-object v2, v1

    move-object v3, v1

    iget-object v3, v3, Lnet/lingala/zip4j/io/PartInputStream;->oneByteBuff:[B

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lnet/lingala/zip4j/io/PartInputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_5

    const/4 v2, -0x1

    :goto_1
    move v1, v2

    goto :goto_0

    :cond_5
    move-object v2, v1

    iget-object v2, v2, Lnet/lingala/zip4j/io/PartInputStream;->oneByteBuff:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    const/16 v3, 0xff

    and-int/lit16 v2, v2, 0xff

    goto :goto_1
.end method

.method public read([B)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/io/PartInputStream;
    move-object v1, p1

    .local v1, "b":[B
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    move-object v5, v1

    array-length v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lnet/lingala/zip4j/io/PartInputStream;->read([BII)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lnet/lingala/zip4j/io/PartInputStream;
    return v0
.end method

.method public read([BII)I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/io/PartInputStream;
    move-object v1, p1

    .local v1, "b":[B
    move v2, p2

    .local v2, "off":I
    move/from16 v3, p3

    .local v3, "len":I
    move v6, v3

    int-to-long v6, v6

    move-object v8, v0

    iget-wide v8, v8, Lnet/lingala/zip4j/io/PartInputStream;->length:J

    move-object v10, v0

    iget-wide v10, v10, Lnet/lingala/zip4j/io/PartInputStream;->bytesRead:J

    sub-long/2addr v8, v10

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    .line 81
    move-object v6, v0

    iget-wide v6, v6, Lnet/lingala/zip4j/io/PartInputStream;->length:J

    move-object v8, v0

    iget-wide v8, v8, Lnet/lingala/zip4j/io/PartInputStream;->bytesRead:J

    sub-long/2addr v6, v8

    long-to-int v6, v6

    move v3, v6

    .line 82
    move v6, v3

    if-nez v6, :cond_0

    .line 83
    move-object v6, v0

    invoke-virtual {v6}, Lnet/lingala/zip4j/io/PartInputStream;->checkAndReadAESMacBytes()V

    .line 84
    const/4 v6, -0x1

    move v0, v6

    .line 123
    .end local v0    # "this":Lnet/lingala/zip4j/io/PartInputStream;
    :goto_0
    return v0

    .line 88
    .restart local v0    # "this":Lnet/lingala/zip4j/io/PartInputStream;
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lnet/lingala/zip4j/io/PartInputStream;->unzipEngine:Lnet/lingala/zip4j/unzip/UnzipEngine;

    invoke-virtual {v6}, Lnet/lingala/zip4j/unzip/UnzipEngine;->getDecrypter()Lnet/lingala/zip4j/crypto/IDecrypter;

    move-result-object v6

    instance-of v6, v6, Lnet/lingala/zip4j/crypto/AESDecrypter;

    if-eqz v6, :cond_1

    .line 89
    move-object v6, v0

    iget-wide v6, v6, Lnet/lingala/zip4j/io/PartInputStream;->bytesRead:J

    move v8, v3

    int-to-long v8, v8

    add-long/2addr v6, v8

    move-object v8, v0

    iget-wide v8, v8, Lnet/lingala/zip4j/io/PartInputStream;->length:J

    cmp-long v6, v6, v8

    if-gez v6, :cond_1

    .line 90
    move v6, v3

    const/16 v7, 0x10

    rem-int/lit8 v6, v6, 0x10

    if-eqz v6, :cond_1

    .line 91
    move v6, v3

    move v7, v3

    const/16 v8, 0x10

    rem-int/lit8 v7, v7, 0x10

    sub-int/2addr v6, v7

    move v3, v6

    .line 96
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Lnet/lingala/zip4j/io/PartInputStream;->raf:Ljava/io/RandomAccessFile;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v4, v7

    monitor-enter v6

    .line 97
    move-object v6, v0

    move-object v7, v0

    :try_start_0
    iget-object v7, v7, Lnet/lingala/zip4j/io/PartInputStream;->raf:Ljava/io/RandomAccessFile;

    move-object v8, v1

    move v9, v2

    move v10, v3

    invoke-virtual {v7, v8, v9, v10}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v7

    iput v7, v6, Lnet/lingala/zip4j/io/PartInputStream;->count:I

    .line 98
    move-object v6, v0

    iget v6, v6, Lnet/lingala/zip4j/io/PartInputStream;->count:I

    move v7, v3

    if-ge v6, v7, :cond_3

    move-object v6, v0

    iget-object v6, v6, Lnet/lingala/zip4j/io/PartInputStream;->unzipEngine:Lnet/lingala/zip4j/unzip/UnzipEngine;

    invoke-virtual {v6}, Lnet/lingala/zip4j/unzip/UnzipEngine;->getZipModel()Lnet/lingala/zip4j/model/ZipModel;

    move-result-object v6

    invoke-virtual {v6}, Lnet/lingala/zip4j/model/ZipModel;->isSplitArchive()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 99
    move-object v6, v0

    iget-object v6, v6, Lnet/lingala/zip4j/io/PartInputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V

    .line 100
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lnet/lingala/zip4j/io/PartInputStream;->unzipEngine:Lnet/lingala/zip4j/unzip/UnzipEngine;

    invoke-virtual {v7}, Lnet/lingala/zip4j/unzip/UnzipEngine;->startNextSplitFile()Ljava/io/RandomAccessFile;

    move-result-object v7

    iput-object v7, v6, Lnet/lingala/zip4j/io/PartInputStream;->raf:Ljava/io/RandomAccessFile;

    .line 101
    move-object v6, v0

    iget v6, v6, Lnet/lingala/zip4j/io/PartInputStream;->count:I

    if-gez v6, :cond_2

    move-object v6, v0

    const/4 v7, 0x0

    iput v7, v6, Lnet/lingala/zip4j/io/PartInputStream;->count:I

    .line 102
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Lnet/lingala/zip4j/io/PartInputStream;->raf:Ljava/io/RandomAccessFile;

    move-object v7, v1

    move-object v8, v0

    iget v8, v8, Lnet/lingala/zip4j/io/PartInputStream;->count:I

    move v9, v3

    move-object v10, v0

    iget v10, v10, Lnet/lingala/zip4j/io/PartInputStream;->count:I

    sub-int/2addr v9, v10

    invoke-virtual {v6, v7, v8, v9}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v6

    move v5, v6

    .line 103
    .local v5, "newlyRead":I
    move v6, v5

    if-lez v6, :cond_3

    .line 104
    move-object v6, v0

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    iget v7, v7, Lnet/lingala/zip4j/io/PartInputStream;->count:I

    move v8, v5

    add-int/2addr v7, v8

    iput v7, v6, Lnet/lingala/zip4j/io/PartInputStream;->count:I

    .line 96
    .end local v5    # "newlyRead":I
    :cond_3
    move-object v6, v4

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    move-object v6, v0

    iget v6, v6, Lnet/lingala/zip4j/io/PartInputStream;->count:I

    if-lez v6, :cond_5

    .line 109
    move-object v6, v0

    iget-object v6, v6, Lnet/lingala/zip4j/io/PartInputStream;->decrypter:Lnet/lingala/zip4j/crypto/IDecrypter;

    if-eqz v6, :cond_4

    .line 111
    move-object v6, v0

    :try_start_1
    iget-object v6, v6, Lnet/lingala/zip4j/io/PartInputStream;->decrypter:Lnet/lingala/zip4j/crypto/IDecrypter;

    move-object v7, v1

    move v8, v2

    move-object v9, v0

    iget v9, v9, Lnet/lingala/zip4j/io/PartInputStream;->count:I

    invoke-interface {v6, v7, v8, v9}, Lnet/lingala/zip4j/crypto/IDecrypter;->decryptData([BII)I
    :try_end_1
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v6

    .line 116
    :cond_4
    move-object v6, v0

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    iget-wide v7, v7, Lnet/lingala/zip4j/io/PartInputStream;->bytesRead:J

    move-object v9, v0

    iget v9, v9, Lnet/lingala/zip4j/io/PartInputStream;->count:I

    int-to-long v9, v9

    add-long/2addr v7, v9

    iput-wide v7, v6, Lnet/lingala/zip4j/io/PartInputStream;->bytesRead:J

    .line 119
    :cond_5
    move-object v6, v0

    iget-wide v6, v6, Lnet/lingala/zip4j/io/PartInputStream;->bytesRead:J

    move-object v8, v0

    iget-wide v8, v8, Lnet/lingala/zip4j/io/PartInputStream;->length:J

    cmp-long v6, v6, v8

    if-ltz v6, :cond_6

    .line 120
    move-object v6, v0

    invoke-virtual {v6}, Lnet/lingala/zip4j/io/PartInputStream;->checkAndReadAESMacBytes()V

    .line 123
    :cond_6
    move-object v6, v0

    iget v6, v6, Lnet/lingala/zip4j/io/PartInputStream;->count:I

    move v0, v6

    goto/16 :goto_0

    .line 96
    :catchall_0
    move-exception v6

    move-object v7, v4

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 112
    :catch_0
    move-exception v6

    move-object v4, v6

    .line 113
    .local v4, "e":Lnet/lingala/zip4j/exception/ZipException;
    new-instance v6, Ljava/io/IOException;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v4

    invoke-virtual {v8}, Lnet/lingala/zip4j/exception/ZipException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public seek(J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/io/PartInputStream;
    move-wide v1, p1

    .local v1, "pos":J
    move-object v3, v0

    iget-object v3, v3, Lnet/lingala/zip4j/io/PartInputStream;->raf:Ljava/io/RandomAccessFile;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 167
    return-void
.end method

.method public skip(J)J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    move-object v1, p0

    .local v1, "this":Lnet/lingala/zip4j/io/PartInputStream;
    move-wide v2, p1

    .local v2, "amount":J
    move-wide v4, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 154
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 155
    :cond_0
    move-wide v4, v2

    move-object v6, v1

    iget-wide v6, v6, Lnet/lingala/zip4j/io/PartInputStream;->length:J

    move-object v8, v1

    iget-wide v8, v8, Lnet/lingala/zip4j/io/PartInputStream;->bytesRead:J

    sub-long/2addr v6, v8

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 156
    move-object v4, v1

    iget-wide v4, v4, Lnet/lingala/zip4j/io/PartInputStream;->length:J

    move-object v6, v1

    iget-wide v6, v6, Lnet/lingala/zip4j/io/PartInputStream;->bytesRead:J

    sub-long/2addr v4, v6

    move-wide v2, v4

    .line 157
    :cond_1
    move-object v4, v1

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    iget-wide v5, v5, Lnet/lingala/zip4j/io/PartInputStream;->bytesRead:J

    move-wide v7, v2

    add-long/2addr v5, v7

    iput-wide v5, v4, Lnet/lingala/zip4j/io/PartInputStream;->bytesRead:J

    .line 158
    move-wide v4, v2

    move-wide v1, v4

    .end local v1    # "this":Lnet/lingala/zip4j/io/PartInputStream;
    return-wide v1
.end method
