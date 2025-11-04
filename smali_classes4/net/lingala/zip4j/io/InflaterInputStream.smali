.class public Lnet/lingala/zip4j/io/InflaterInputStream;
.super Lnet/lingala/zip4j/io/PartInputStream;
.source "InflaterInputStream.java"


# instance fields
.field private buff:[B

.field private bytesWritten:J

.field private inflater:Ljava/util/zip/Inflater;

.field private oneByteBuff:[B

.field private uncompressedSize:J

.field private unzipEngine:Lnet/lingala/zip4j/unzip/UnzipEngine;


# direct methods
.method public constructor <init>(Ljava/io/RandomAccessFile;JJLnet/lingala/zip4j/unzip/UnzipEngine;)V
    .locals 16

    .prologue
    .line 39
    move-object/from16 v0, p0

    .local v0, "this":Lnet/lingala/zip4j/io/InflaterInputStream;
    move-object/from16 v1, p1

    .local v1, "raf":Ljava/io/RandomAccessFile;
    move-wide/from16 v2, p2

    .local v2, "start":J
    move-wide/from16 v4, p4

    .local v4, "len":J
    move-object/from16 v6, p6

    .local v6, "unzipEngine":Lnet/lingala/zip4j/unzip/UnzipEngine;
    move-object v7, v0

    move-object v8, v1

    move-wide v9, v2

    move-wide v11, v4

    move-object v13, v6

    invoke-direct/range {v7 .. v13}, Lnet/lingala/zip4j/io/PartInputStream;-><init>(Ljava/io/RandomAccessFile;JJLnet/lingala/zip4j/unzip/UnzipEngine;)V

    .line 33
    move-object v7, v0

    const/4 v8, 0x1

    new-array v8, v8, [B

    iput-object v8, v7, Lnet/lingala/zip4j/io/InflaterInputStream;->oneByteBuff:[B

    .line 40
    move-object v7, v0

    new-instance v8, Ljava/util/zip/Inflater;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Ljava/util/zip/Inflater;-><init>(Z)V

    iput-object v8, v7, Lnet/lingala/zip4j/io/InflaterInputStream;->inflater:Ljava/util/zip/Inflater;

    .line 41
    move-object v7, v0

    const/16 v8, 0x1000

    new-array v8, v8, [B

    iput-object v8, v7, Lnet/lingala/zip4j/io/InflaterInputStream;->buff:[B

    .line 42
    move-object v7, v0

    move-object v8, v6

    iput-object v8, v7, Lnet/lingala/zip4j/io/InflaterInputStream;->unzipEngine:Lnet/lingala/zip4j/unzip/UnzipEngine;

    .line 43
    move-object v7, v0

    const-wide/16 v8, 0x0

    iput-wide v8, v7, Lnet/lingala/zip4j/io/InflaterInputStream;->bytesWritten:J

    .line 44
    move-object v7, v0

    move-object v8, v6

    invoke-virtual {v8}, Lnet/lingala/zip4j/unzip/UnzipEngine;->getFileHeader()Lnet/lingala/zip4j/model/FileHeader;

    move-result-object v8

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/FileHeader;->getUncompressedSize()J

    move-result-wide v8

    iput-wide v8, v7, Lnet/lingala/zip4j/io/InflaterInputStream;->uncompressedSize:J

    .line 45
    return-void
.end method

.method private fill()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/io/InflaterInputStream;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lnet/lingala/zip4j/io/InflaterInputStream;->buff:[B

    const/4 v4, 0x0

    move-object v5, v0

    iget-object v5, v5, Lnet/lingala/zip4j/io/InflaterInputStream;->buff:[B

    array-length v5, v5

    invoke-super {v2, v3, v4, v5}, Lnet/lingala/zip4j/io/PartInputStream;->read([BII)I

    move-result v2

    move v1, v2

    .line 113
    .local v1, "len":I
    move v2, v1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 114
    new-instance v2, Ljava/io/EOFException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string/jumbo v4, "Unexpected end of ZLIB input stream"

    invoke-direct {v3, v4}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 116
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lnet/lingala/zip4j/io/InflaterInputStream;->inflater:Ljava/util/zip/Inflater;

    move-object v3, v0

    iget-object v3, v3, Lnet/lingala/zip4j/io/InflaterInputStream;->buff:[B

    const/4 v4, 0x0

    move v5, v1

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 117
    return-void
.end method

.method private finishInflating()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/io/InflaterInputStream;
    const/16 v2, 0x400

    new-array v2, v2, [B

    move-object v1, v2

    .line 105
    .local v1, "b":[B
    :cond_0
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    const/16 v5, 0x400

    invoke-super {v2, v3, v4, v5}, Lnet/lingala/zip4j/io/PartInputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 108
    move-object v2, v0

    invoke-virtual {v2}, Lnet/lingala/zip4j/io/InflaterInputStream;->checkAndReadAESMacBytes()V

    .line 109
    return-void
.end method


# virtual methods
.method public available()I
    .locals 2

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/io/InflaterInputStream;
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/io/InflaterInputStream;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->finished()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/io/InflaterInputStream;
    return v0

    .restart local v0    # "this":Lnet/lingala/zip4j/io/InflaterInputStream;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 167
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/io/InflaterInputStream;
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/io/InflaterInputStream;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->end()V

    .line 168
    move-object v1, v0

    invoke-super {v1}, Lnet/lingala/zip4j/io/PartInputStream;->close()V

    .line 169
    return-void
.end method

.method public getUnzipEngine()Lnet/lingala/zip4j/unzip/UnzipEngine;
    .locals 2

    .prologue
    .line 172
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/io/InflaterInputStream;
    move-object v1, v0

    invoke-super {v1}, Lnet/lingala/zip4j/io/PartInputStream;->getUnzipEngine()Lnet/lingala/zip4j/unzip/UnzipEngine;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/io/InflaterInputStream;
    return-object v0
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/io/InflaterInputStream;
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lnet/lingala/zip4j/io/InflaterInputStream;->oneByteBuff:[B

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lnet/lingala/zip4j/io/InflaterInputStream;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v1, -0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/io/InflaterInputStream;
    return v0

    .restart local v0    # "this":Lnet/lingala/zip4j/io/InflaterInputStream;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/io/InflaterInputStream;->oneByteBuff:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    const/16 v2, 0xff

    and-int/lit16 v1, v1, 0xff

    goto :goto_0
.end method

.method public read([B)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/io/InflaterInputStream;
    move-object v1, p1

    .local v1, "b":[B
    move-object v2, v1

    if-nez v2, :cond_0

    .line 53
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string/jumbo v4, "input buffer is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 56
    :cond_0
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    move-object v5, v1

    array-length v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lnet/lingala/zip4j/io/InflaterInputStream;->read([BII)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lnet/lingala/zip4j/io/InflaterInputStream;
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
    .line 61
    move-object v1, p0

    .local v1, "this":Lnet/lingala/zip4j/io/InflaterInputStream;
    move-object v2, p1

    .local v2, "b":[B
    move v3, p2

    .local v3, "off":I
    move/from16 v4, p3

    .local v4, "len":I
    move-object v7, v2

    if-nez v7, :cond_0

    .line 62
    new-instance v7, Ljava/lang/NullPointerException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const-string/jumbo v9, "input buffer is null"

    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 63
    :cond_0
    move v7, v3

    if-ltz v7, :cond_1

    move v7, v4

    if-ltz v7, :cond_1

    move v7, v4

    move-object v8, v2

    array-length v8, v8

    move v9, v3

    sub-int/2addr v8, v9

    if-le v7, v8, :cond_2

    .line 64
    :cond_1
    new-instance v7, Ljava/lang/IndexOutOfBoundsException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v7

    .line 65
    :cond_2
    move v7, v4

    if-nez v7, :cond_3

    .line 66
    const/4 v7, 0x0

    move v1, v7

    .line 85
    .end local v1    # "this":Lnet/lingala/zip4j/io/InflaterInputStream;
    :goto_0
    return v1

    .line 71
    .restart local v1    # "this":Lnet/lingala/zip4j/io/InflaterInputStream;
    :cond_3
    move-object v7, v1

    :try_start_0
    iget-wide v7, v7, Lnet/lingala/zip4j/io/InflaterInputStream;->bytesWritten:J

    move-object v9, v1

    iget-wide v9, v9, Lnet/lingala/zip4j/io/InflaterInputStream;->uncompressedSize:J

    cmp-long v7, v7, v9

    if-ltz v7, :cond_7

    .line 72
    move-object v7, v1

    invoke-direct {v7}, Lnet/lingala/zip4j/io/InflaterInputStream;->finishInflating()V

    .line 73
    const/4 v7, -0x1

    move v1, v7

    goto :goto_0

    .line 76
    .local v5, "n":I
    :cond_4
    move-object v7, v1

    iget-object v7, v7, Lnet/lingala/zip4j/io/InflaterInputStream;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v7}, Ljava/util/zip/Inflater;->finished()Z

    move-result v7

    if-nez v7, :cond_5

    move-object v7, v1

    iget-object v7, v7, Lnet/lingala/zip4j/io/InflaterInputStream;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v7}, Ljava/util/zip/Inflater;->needsDictionary()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 77
    :cond_5
    move-object v7, v1

    invoke-direct {v7}, Lnet/lingala/zip4j/io/InflaterInputStream;->finishInflating()V

    .line 78
    const/4 v7, -0x1

    move v1, v7

    goto :goto_0

    .line 80
    :cond_6
    move-object v7, v1

    iget-object v7, v7, Lnet/lingala/zip4j/io/InflaterInputStream;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v7}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 81
    move-object v7, v1

    invoke-direct {v7}, Lnet/lingala/zip4j/io/InflaterInputStream;->fill()V

    .line 75
    .end local v5    # "n":I
    :cond_7
    move-object v7, v1

    iget-object v7, v7, Lnet/lingala/zip4j/io/InflaterInputStream;->inflater:Ljava/util/zip/Inflater;

    move-object v8, v2

    move v9, v3

    move v10, v4

    invoke-virtual {v7, v8, v9, v10}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v7

    move v12, v7

    move v7, v12

    move v8, v12

    move v5, v8

    .restart local v5    # "n":I
    if-eqz v7, :cond_4

    .line 84
    move-object v7, v1

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    iget-wide v8, v8, Lnet/lingala/zip4j/io/InflaterInputStream;->bytesWritten:J

    move v10, v5

    int-to-long v10, v10

    add-long/2addr v8, v10

    iput-wide v8, v7, Lnet/lingala/zip4j/io/InflaterInputStream;->bytesWritten:J
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    move v7, v5

    move v1, v7

    goto :goto_0

    .line 86
    .end local v5    # "n":I
    :catch_0
    move-exception v7

    move-object v5, v7

    .line 87
    .local v5, "e":Ljava/util/zip/DataFormatException;
    const-string/jumbo v7, "Invalid ZLIB data format"

    move-object v6, v7

    .line 88
    .local v6, "s":Ljava/lang/String;
    move-object v7, v5

    invoke-virtual {v7}, Ljava/util/zip/DataFormatException;->getMessage()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 89
    move-object v7, v5

    invoke-virtual {v7}, Ljava/util/zip/DataFormatException;->getMessage()Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 91
    :cond_8
    move-object v7, v1

    iget-object v7, v7, Lnet/lingala/zip4j/io/InflaterInputStream;->unzipEngine:Lnet/lingala/zip4j/unzip/UnzipEngine;

    if-eqz v7, :cond_9

    .line 92
    move-object v7, v1

    iget-object v7, v7, Lnet/lingala/zip4j/io/InflaterInputStream;->unzipEngine:Lnet/lingala/zip4j/unzip/UnzipEngine;

    invoke-virtual {v7}, Lnet/lingala/zip4j/unzip/UnzipEngine;->getLocalFileHeader()Lnet/lingala/zip4j/model/LocalFileHeader;

    move-result-object v7

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/LocalFileHeader;->isEncrypted()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 93
    move-object v7, v1

    iget-object v7, v7, Lnet/lingala/zip4j/io/InflaterInputStream;->unzipEngine:Lnet/lingala/zip4j/unzip/UnzipEngine;

    invoke-virtual {v7}, Lnet/lingala/zip4j/unzip/UnzipEngine;->getLocalFileHeader()Lnet/lingala/zip4j/model/LocalFileHeader;

    move-result-object v7

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/LocalFileHeader;->getEncryptionMethod()I

    move-result v7

    if-nez v7, :cond_9

    .line 94
    new-instance v7, Ljava/lang/StringBuffer;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v6

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, " - Wrong Password?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 97
    :cond_9
    new-instance v7, Ljava/io/IOException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v6

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public seek(J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/io/InflaterInputStream;
    move-wide v1, p1

    .local v1, "pos":J
    move-object v3, v0

    move-wide v4, v1

    invoke-super {v3, v4, v5}, Lnet/lingala/zip4j/io/PartInputStream;->seek(J)V

    .line 150
    return-void
.end method

.method public skip(J)J
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    move-object v1, p0

    .local v1, "this":Lnet/lingala/zip4j/io/InflaterInputStream;
    move-wide v2, p1

    .local v2, "n":J
    move-wide v8, v2

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gez v8, :cond_0

    .line 128
    new-instance v8, Ljava/lang/IllegalArgumentException;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const-string/jumbo v10, "negative skip length"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 130
    :cond_0
    move-wide v8, v2

    const-wide/32 v10, 0x7fffffff

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    long-to-int v8, v8

    move v4, v8

    .line 131
    .local v4, "max":I
    const/4 v8, 0x0

    move v5, v8

    .line 132
    .local v5, "total":I
    const/16 v8, 0x200

    new-array v8, v8, [B

    move-object v6, v8

    .line 133
    .local v6, "b":[B
    :goto_0
    move v8, v5

    move v9, v4

    if-lt v8, v9, :cond_1

    .line 144
    :goto_1
    move v8, v5

    int-to-long v8, v8

    move-wide v1, v8

    .end local v1    # "this":Lnet/lingala/zip4j/io/InflaterInputStream;
    return-wide v1

    .line 134
    .restart local v1    # "this":Lnet/lingala/zip4j/io/InflaterInputStream;
    :cond_1
    move v8, v4

    move v9, v5

    sub-int/2addr v8, v9

    move v7, v8

    .line 135
    .local v7, "len":I
    move v8, v7

    move-object v9, v6

    array-length v9, v9

    if-le v8, v9, :cond_2

    .line 136
    move-object v8, v6

    array-length v8, v8

    move v7, v8

    .line 138
    :cond_2
    move-object v8, v1

    move-object v9, v6

    const/4 v10, 0x0

    move v11, v7

    invoke-virtual {v8, v9, v10, v11}, Lnet/lingala/zip4j/io/InflaterInputStream;->read([BII)I

    move-result v8

    move v7, v8

    .line 139
    move v8, v7

    const/4 v9, -0x1

    if-ne v8, v9, :cond_3

    .line 140
    goto :goto_1

    .line 142
    :cond_3
    move v8, v5

    move v9, v7

    add-int/2addr v8, v9

    move v5, v8

    goto :goto_0
.end method
