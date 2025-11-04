.class public Lnet/lingala/zip4j/unzip/UnzipEngine;
.super Ljava/lang/Object;
.source "UnzipEngine.java"


# instance fields
.field private crc:Ljava/util/zip/CRC32;

.field private currSplitFileCounter:I

.field private decrypter:Lnet/lingala/zip4j/crypto/IDecrypter;

.field private fileHeader:Lnet/lingala/zip4j/model/FileHeader;

.field private localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

.field private zipModel:Lnet/lingala/zip4j/model/ZipModel;


# direct methods
.method public constructor <init>(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/model/FileHeader;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/unzip/UnzipEngine;
    move-object v1, p1

    .local v1, "zipModel":Lnet/lingala/zip4j/model/ZipModel;
    move-object v2, p2

    .local v2, "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 52
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lnet/lingala/zip4j/unzip/UnzipEngine;->currSplitFileCounter:I

    .line 58
    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v2

    if-nez v3, :cond_1

    .line 59
    :cond_0
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "Invalid parameters passed to StoreUnzip. One or more of the parameters were null"

    invoke-direct {v4, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 62
    :cond_1
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lnet/lingala/zip4j/unzip/UnzipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    .line 63
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lnet/lingala/zip4j/unzip/UnzipEngine;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    .line 64
    move-object v3, v0

    new-instance v4, Ljava/util/zip/CRC32;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v4, v3, Lnet/lingala/zip4j/unzip/UnzipEngine;->crc:Ljava/util/zip/CRC32;

    .line 65
    return-void
.end method

.method private calculateAESSaltLength(Lnet/lingala/zip4j/model/AESExtraDataRecord;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 248
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/unzip/UnzipEngine;
    move-object v1, p1

    .local v1, "aesExtraDataRecord":Lnet/lingala/zip4j/model/AESExtraDataRecord;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 249
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "unable to determine salt length: AESExtraDataRecord is null"

    invoke-direct {v3, v4}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 251
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->getAesStrength()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 259
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "unable to determine salt length: invalid aes key strength"

    invoke-direct {v3, v4}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 253
    :pswitch_0
    const/16 v2, 0x8

    move v0, v2

    .line 257
    .end local v0    # "this":Lnet/lingala/zip4j/unzip/UnzipEngine;
    :goto_0
    return v0

    .line 255
    .restart local v0    # "this":Lnet/lingala/zip4j/unzip/UnzipEngine;
    :pswitch_1
    const/16 v2, 0xc

    move v0, v2

    goto :goto_0

    .line 257
    :pswitch_2
    const/16 v2, 0x10

    move v0, v2

    goto :goto_0

    .line 251
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private checkLocalHeader()Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 324
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/unzip/UnzipEngine;
    const/4 v5, 0x0

    move-object v1, v5

    .line 326
    .local v1, "rafForLH":Ljava/io/RandomAccessFile;
    move-object v5, v0

    :try_start_0
    invoke-direct {v5}, Lnet/lingala/zip4j/unzip/UnzipEngine;->checkSplitFile()Ljava/io/RandomAccessFile;

    move-result-object v5

    move-object v1, v5

    .line 328
    move-object v5, v1

    if-nez v5, :cond_0

    .line 329
    new-instance v5, Ljava/io/RandomAccessFile;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    new-instance v7, Ljava/io/File;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v0

    iget-object v9, v9, Lnet/lingala/zip4j/unzip/UnzipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v9}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "r"

    invoke-direct {v6, v7, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v5

    .line 332
    :cond_0
    new-instance v5, Lnet/lingala/zip4j/core/HeaderReader;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v1

    invoke-direct {v6, v7}, Lnet/lingala/zip4j/core/HeaderReader;-><init>(Ljava/io/RandomAccessFile;)V

    move-object v2, v5

    .line 333
    .local v2, "headerReader":Lnet/lingala/zip4j/core/HeaderReader;
    move-object v5, v0

    move-object v6, v2

    move-object v7, v0

    iget-object v7, v7, Lnet/lingala/zip4j/unzip/UnzipEngine;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v6, v7}, Lnet/lingala/zip4j/core/HeaderReader;->readLocalFileHeader(Lnet/lingala/zip4j/model/FileHeader;)Lnet/lingala/zip4j/model/LocalFileHeader;

    move-result-object v6

    iput-object v6, v5, Lnet/lingala/zip4j/unzip/UnzipEngine;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    .line 335
    move-object v5, v0

    iget-object v5, v5, Lnet/lingala/zip4j/unzip/UnzipEngine;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    if-nez v5, :cond_2

    .line 336
    new-instance v5, Lnet/lingala/zip4j/exception/ZipException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string/jumbo v7, "error reading local file header. Is this a valid zip file?"

    invoke-direct {v6, v7}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    .end local v2    # "headerReader":Lnet/lingala/zip4j/core/HeaderReader;
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 346
    .local v2, "e":Ljava/io/FileNotFoundException;
    :try_start_1
    new-instance v5, Lnet/lingala/zip4j/exception/ZipException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v2

    invoke-direct {v6, v7}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 347
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v5

    move-object v3, v5

    .line 348
    move-object v5, v1

    if-eqz v5, :cond_1

    .line 350
    move-object v5, v1

    :try_start_2
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    .line 357
    :cond_1
    :goto_0
    move-object v5, v3

    throw v5

    .line 340
    .local v2, "headerReader":Lnet/lingala/zip4j/core/HeaderReader;
    :cond_2
    move-object v5, v0

    :try_start_3
    iget-object v5, v5, Lnet/lingala/zip4j/unzip/UnzipEngine;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/LocalFileHeader;->getCompressionMethod()I

    move-result v5

    move-object v6, v0

    iget-object v6, v6, Lnet/lingala/zip4j/unzip/UnzipEngine;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v6}, Lnet/lingala/zip4j/model/FileHeader;->getCompressionMethod()I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v6

    if-eq v5, v6, :cond_4

    .line 348
    move-object v5, v1

    if-eqz v5, :cond_3

    .line 350
    move-object v5, v1

    :try_start_4
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 341
    :cond_3
    :goto_1
    const/4 v5, 0x0

    move v0, v5

    .line 344
    .end local v0    # "this":Lnet/lingala/zip4j/unzip/UnzipEngine;
    :goto_2
    return v0

    .line 351
    .restart local v0    # "this":Lnet/lingala/zip4j/unzip/UnzipEngine;
    :catch_1
    move-exception v5

    move-object v4, v5

    goto :goto_1

    .line 353
    :catch_2
    move-exception v5

    move-object v4, v5

    goto :goto_1

    .line 348
    :cond_4
    move-object v5, v1

    if-eqz v5, :cond_5

    .line 350
    move-object v5, v1

    :try_start_5
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 344
    :cond_5
    :goto_3
    const/4 v5, 0x1

    move v0, v5

    goto :goto_2

    .line 351
    :catch_3
    move-exception v5

    move-object v4, v5

    goto :goto_3

    .line 353
    :catch_4
    move-exception v5

    move-object v4, v5

    goto :goto_3

    .line 351
    .end local v2    # "headerReader":Lnet/lingala/zip4j/core/HeaderReader;
    :catch_5
    move-exception v5

    move-object v4, v5

    goto :goto_0

    .line 353
    :catch_6
    move-exception v5

    move-object v4, v5

    goto :goto_0
.end method

.method private checkSplitFile()Ljava/io/RandomAccessFile;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 361
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/unzip/UnzipEngine;
    move-object v6, v0

    iget-object v6, v6, Lnet/lingala/zip4j/unzip/UnzipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v6}, Lnet/lingala/zip4j/model/ZipModel;->isSplitArchive()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 362
    move-object v6, v0

    iget-object v6, v6, Lnet/lingala/zip4j/unzip/UnzipEngine;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v6}, Lnet/lingala/zip4j/model/FileHeader;->getDiskNumberStart()I

    move-result v6

    move v1, v6

    .line 363
    .local v1, "diskNumberStartOfFile":I
    move-object v6, v0

    move v7, v1

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lnet/lingala/zip4j/unzip/UnzipEngine;->currSplitFileCounter:I

    .line 364
    move-object v6, v0

    iget-object v6, v6, Lnet/lingala/zip4j/unzip/UnzipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v6}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 365
    .local v2, "curZipFile":Ljava/lang/String;
    const/4 v6, 0x0

    move-object v3, v6

    .line 366
    .local v3, "partFile":Ljava/lang/String;
    move v6, v1

    move-object v7, v0

    iget-object v7, v7, Lnet/lingala/zip4j/unzip/UnzipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v7

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->getNoOfThisDisk()I

    move-result v7

    if-ne v6, v7, :cond_0

    .line 367
    move-object v6, v0

    iget-object v6, v6, Lnet/lingala/zip4j/unzip/UnzipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v6}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 377
    :goto_0
    :try_start_0
    new-instance v6, Ljava/io/RandomAccessFile;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v3

    const-string/jumbo v9, "r"

    invoke-direct {v7, v8, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v6

    .line 379
    .local v4, "raf":Ljava/io/RandomAccessFile;
    move-object v6, v0

    iget v6, v6, Lnet/lingala/zip4j/unzip/UnzipEngine;->currSplitFileCounter:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 380
    const/4 v6, 0x4

    new-array v6, v6, [B

    move-object v5, v6

    .line 381
    .local v5, "splitSig":[B
    move-object v6, v4

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v6

    .line 382
    move-object v6, v5

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lnet/lingala/zip4j/util/Raw;->readIntLittleEndian([BI)I

    move-result v6

    int-to-long v6, v6

    const-wide/32 v8, 0x8074b50

    cmp-long v6, v6, v8

    if-eqz v6, :cond_2

    .line 383
    new-instance v6, Lnet/lingala/zip4j/exception/ZipException;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const-string/jumbo v8, "invalid first part split file signature"

    invoke-direct {v7, v8}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 387
    .end local v4    # "raf":Ljava/io/RandomAccessFile;
    .end local v5    # "splitSig":[B
    :catch_0
    move-exception v6

    move-object v4, v6

    .line 388
    .local v4, "e":Ljava/io/FileNotFoundException;
    new-instance v6, Lnet/lingala/zip4j/exception/ZipException;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v4

    invoke-direct {v7, v8}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 369
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    :cond_0
    move v6, v1

    const/16 v7, 0x9

    if-lt v6, v7, :cond_1

    .line 370
    new-instance v6, Ljava/lang/StringBuffer;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v2

    const/4 v9, 0x0

    move-object v10, v2

    const-string/jumbo v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, ".z"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move v7, v1

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    goto :goto_0

    .line 372
    :cond_1
    new-instance v6, Ljava/lang/StringBuffer;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v2

    const/4 v9, 0x0

    move-object v10, v2

    const-string/jumbo v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, ".z0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move v7, v1

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    goto/16 :goto_0

    .line 386
    .local v4, "raf":Ljava/io/RandomAccessFile;
    :cond_2
    move-object v6, v4

    move-object v0, v6

    .line 393
    .end local v0    # "this":Lnet/lingala/zip4j/unzip/UnzipEngine;
    :goto_1
    return-object v0

    .line 389
    .end local v4    # "raf":Ljava/io/RandomAccessFile;
    .restart local v0    # "this":Lnet/lingala/zip4j/unzip/UnzipEngine;
    :catch_1
    move-exception v6

    move-object v4, v6

    .line 390
    .local v4, "e":Ljava/io/IOException;
    new-instance v6, Lnet/lingala/zip4j/exception/ZipException;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v4

    invoke-direct {v7, v8}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 393
    .end local v1    # "diskNumberStartOfFile":I
    .end local v2    # "curZipFile":Ljava/lang/String;
    .end local v3    # "partFile":Ljava/lang/String;
    .end local v4    # "e":Ljava/io/IOException;
    :cond_3
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_1
.end method

.method private closeStreams(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 474
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/unzip/UnzipEngine;
    move-object v1, p1

    .local v1, "is":Ljava/io/InputStream;
    move-object v2, p2

    .local v2, "os":Ljava/io/OutputStream;
    move-object v6, v1

    if-eqz v6, :cond_0

    .line 475
    move-object v6, v1

    :try_start_0
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 476
    const/4 v6, 0x0

    move-object v1, v6

    .line 486
    :cond_0
    move-object v6, v2

    if-eqz v6, :cond_1

    .line 487
    move-object v6, v2

    :try_start_1
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 488
    const/4 v6, 0x0

    move-object v2, v6

    .line 494
    :cond_1
    :goto_0
    return-void

    .line 478
    :catch_0
    move-exception v6

    move-object v3, v6

    .line 479
    .local v3, "e":Ljava/io/IOException;
    move-object v6, v3

    if-eqz v6, :cond_3

    move-object v6, v3

    :try_start_2
    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 480
    move-object v6, v3

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, " - Wrong Password?"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_3

    .line 481
    new-instance v6, Lnet/lingala/zip4j/exception/ZipException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v3

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 484
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    move-object v4, v6

    .line 486
    move-object v6, v2

    if-eqz v6, :cond_2

    .line 487
    move-object v6, v2

    :try_start_3
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 488
    const/4 v6, 0x0

    move-object v2, v6

    .line 493
    :cond_2
    :goto_1
    move-object v6, v4

    throw v6

    .line 486
    .restart local v3    # "e":Ljava/io/IOException;
    :cond_3
    move-object v6, v2

    if-eqz v6, :cond_1

    .line 487
    move-object v6, v2

    :try_start_4
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 488
    const/4 v6, 0x0

    move-object v2, v6

    goto :goto_0

    .line 490
    :catch_1
    move-exception v6

    move-object v5, v6

    goto :goto_0

    .end local v3    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v6

    move-object v5, v6

    goto :goto_1

    :catch_3
    move-exception v6

    move-object v5, v6

    goto :goto_0
.end method

.method private createFileHandler(Ljava/lang/String;)Ljava/io/RandomAccessFile;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 397
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/unzip/UnzipEngine;
    move-object v1, p1

    .local v1, "mode":Ljava/lang/String;
    move-object v3, v0

    iget-object v3, v3, Lnet/lingala/zip4j/unzip/UnzipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lnet/lingala/zip4j/unzip/UnzipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 398
    :cond_0
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const-string/jumbo v5, "input parameter is null in getFilePointer"

    invoke-direct {v4, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 402
    :cond_1
    const/4 v3, 0x0

    move-object v2, v3

    .line 403
    .local v2, "raf":Ljava/io/RandomAccessFile;
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lnet/lingala/zip4j/unzip/UnzipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ZipModel;->isSplitArchive()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 404
    move-object v3, v0

    invoke-direct {v3}, Lnet/lingala/zip4j/unzip/UnzipEngine;->checkSplitFile()Ljava/io/RandomAccessFile;

    move-result-object v3

    move-object v2, v3

    .line 408
    :goto_0
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lnet/lingala/zip4j/unzip/UnzipEngine;
    return-object v0

    .line 406
    .restart local v0    # "this":Lnet/lingala/zip4j/unzip/UnzipEngine;
    :cond_2
    new-instance v3, Ljava/io/RandomAccessFile;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    new-instance v5, Ljava/io/File;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    iget-object v7, v7, Lnet/lingala/zip4j/unzip/UnzipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v2, v3

    goto :goto_0

    .line 409
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 410
    .local v2, "e":Ljava/io/FileNotFoundException;
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v2

    invoke-direct {v4, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 411
    .local v2, "raf":Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v3

    move-object v2, v3

    .line 412
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v2

    invoke-direct {v4, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method private getAESPasswordVerifier(Ljava/io/RandomAccessFile;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 239
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/unzip/UnzipEngine;
    move-object v1, p1

    .local v1, "raf":Ljava/io/RandomAccessFile;
    const/4 v3, 0x2

    :try_start_0
    new-array v3, v3, [B

    move-object v2, v3

    .line 240
    .local v2, "pvBytes":[B
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/io/RandomAccessFile;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 241
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lnet/lingala/zip4j/unzip/UnzipEngine;
    return-object v0

    .line 242
    .end local v2    # "pvBytes":[B
    .restart local v0    # "this":Lnet/lingala/zip4j/unzip/UnzipEngine;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 243
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v2

    invoke-direct {v4, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method private getAESSalt(Ljava/io/RandomAccessFile;)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 223
    move-object v1, p0

    .local v1, "this":Lnet/lingala/zip4j/unzip/UnzipEngine;
    move-object v2, p1

    .local v2, "raf":Ljava/io/RandomAccessFile;
    move-object v5, v1

    iget-object v5, v5, Lnet/lingala/zip4j/unzip/UnzipEngine;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/LocalFileHeader;->getAesExtraDataRecord()Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-result-object v5

    if-nez v5, :cond_0

    .line 224
    const/4 v5, 0x0

    move-object v1, v5

    .line 231
    .end local v1    # "this":Lnet/lingala/zip4j/unzip/UnzipEngine;
    :goto_0
    return-object v1

    .line 227
    .restart local v1    # "this":Lnet/lingala/zip4j/unzip/UnzipEngine;
    :cond_0
    move-object v5, v1

    :try_start_0
    iget-object v5, v5, Lnet/lingala/zip4j/unzip/UnzipEngine;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/LocalFileHeader;->getAesExtraDataRecord()Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-result-object v5

    move-object v3, v5

    .line 228
    .local v3, "aesExtraDataRecord":Lnet/lingala/zip4j/model/AESExtraDataRecord;
    move-object v5, v1

    move-object v6, v3

    invoke-direct {v5, v6}, Lnet/lingala/zip4j/unzip/UnzipEngine;->calculateAESSaltLength(Lnet/lingala/zip4j/model/AESExtraDataRecord;)I

    move-result v5

    new-array v5, v5, [B

    move-object v4, v5

    .line 229
    .local v4, "saltBytes":[B
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Lnet/lingala/zip4j/unzip/UnzipEngine;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v6}, Lnet/lingala/zip4j/model/LocalFileHeader;->getOffsetStartOfData()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 230
    move-object v5, v2

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/io/RandomAccessFile;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 231
    move-object v5, v4

    move-object v1, v5

    goto :goto_0

    .line 232
    .end local v3    # "aesExtraDataRecord":Lnet/lingala/zip4j/model/AESExtraDataRecord;
    .end local v4    # "saltBytes":[B
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 233
    .local v3, "e":Ljava/io/IOException;
    new-instance v5, Lnet/lingala/zip4j/exception/ZipException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v3

    invoke-direct {v6, v7}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method private getOutputFileNameWithPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 440
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/unzip/UnzipEngine;
    move-object v1, p1

    .local v1, "outPath":Ljava/lang/String;
    move-object v2, p2

    .local v2, "newFileName":Ljava/lang/String;
    const/4 v4, 0x0

    move-object v3, v4

    .line 441
    .local v3, "fileName":Ljava/lang/String;
    move-object v4, v2

    invoke-static {v4}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 442
    move-object v4, v2

    move-object v3, v4

    .line 446
    :goto_0
    new-instance v4, Ljava/lang/StringBuffer;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "file.separator"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lnet/lingala/zip4j/unzip/UnzipEngine;
    return-object v0

    .line 444
    .restart local v0    # "this":Lnet/lingala/zip4j/unzip/UnzipEngine;
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lnet/lingala/zip4j/unzip/UnzipEngine;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    goto :goto_0
.end method

.method private getOutputStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/FileOutputStream;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 417
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/unzip/UnzipEngine;
    move-object v1, p1

    .local v1, "outPath":Ljava/lang/String;
    move-object v2, p2

    .local v2, "newFileName":Ljava/lang/String;
    move-object v5, v1

    invoke-static {v5}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 418
    new-instance v5, Lnet/lingala/zip4j/exception/ZipException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string/jumbo v7, "invalid output path"

    invoke-direct {v6, v7}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 422
    :cond_0
    :try_start_0
    new-instance v5, Ljava/io/File;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    invoke-direct {v7, v8, v9}, Lnet/lingala/zip4j/unzip/UnzipEngine;->getOutputFileNameWithPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    .line 424
    .local v3, "file":Ljava/io/File;
    move-object v5, v3

    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 425
    move-object v5, v3

    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    move-result v5

    .line 428
    :cond_1
    move-object v5, v3

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 429
    move-object v5, v3

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v5

    .line 432
    :cond_2
    new-instance v5, Ljava/io/FileOutputStream;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v3

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v5

    .line 433
    .local v4, "fileOutputStream":Ljava/io/FileOutputStream;
    move-object v5, v4

    move-object v0, v5

    .end local v0    # "this":Lnet/lingala/zip4j/unzip/UnzipEngine;
    return-object v0

    .line 434
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v0    # "this":Lnet/lingala/zip4j/unzip/UnzipEngine;
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 435
    .local v3, "e":Ljava/io/FileNotFoundException;
    new-instance v5, Lnet/lingala/zip4j/exception/ZipException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v3

    invoke-direct {v6, v7}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method private getStandardDecrypterHeaderBytes(Ljava/io/RandomAccessFile;)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 211
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/unzip/UnzipEngine;
    move-object v1, p1

    .local v1, "raf":Ljava/io/RandomAccessFile;
    const/16 v3, 0xc

    :try_start_0
    new-array v3, v3, [B

    move-object v2, v3

    .line 212
    .local v2, "headerBytes":[B
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lnet/lingala/zip4j/unzip/UnzipEngine;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/LocalFileHeader;->getOffsetStartOfData()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 213
    move-object v3, v1

    move-object v4, v2

    const/4 v5, 0x0

    const/16 v6, 0xc

    invoke-virtual {v3, v4, v5, v6}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 214
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lnet/lingala/zip4j/unzip/UnzipEngine;
    return-object v0

    .line 215
    .end local v2    # "headerBytes":[B
    .restart local v0    # "this":Lnet/lingala/zip4j/unzip/UnzipEngine;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 216
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v2

    invoke-direct {v4, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 217
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    move-object v2, v3

    .line 218
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v2

    invoke-direct {v4, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method private init(Ljava/io/RandomAccessFile;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 180
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/unzip/UnzipEngine;
    move-object v1, p1

    .local v1, "raf":Ljava/io/RandomAccessFile;
    move-object v3, v0

    iget-object v3, v3, Lnet/lingala/zip4j/unzip/UnzipEngine;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    if-nez v3, :cond_0

    .line 181
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "local file header is null, cannot initialize input stream"

    invoke-direct {v4, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 185
    :cond_0
    move-object v3, v0

    move-object v4, v1

    :try_start_0
    invoke-direct {v3, v4}, Lnet/lingala/zip4j/unzip/UnzipEngine;->initDecrypter(Ljava/io/RandomAccessFile;)V
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 191
    return-void

    .line 186
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 187
    .local v2, "e":Lnet/lingala/zip4j/exception/ZipException;
    move-object v3, v2

    throw v3

    .line 188
    .end local v2    # "e":Lnet/lingala/zip4j/exception/ZipException;
    :catch_1
    move-exception v3

    move-object v2, v3

    .line 189
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v2

    invoke-direct {v4, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method private initDecrypter(Ljava/io/RandomAccessFile;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 194
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/unzip/UnzipEngine;
    move-object v1, p1

    .local v1, "raf":Ljava/io/RandomAccessFile;
    move-object v2, v0

    iget-object v2, v2, Lnet/lingala/zip4j/unzip/UnzipEngine;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    if-nez v2, :cond_0

    .line 195
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    const-string/jumbo v4, "local file header is null, cannot init decrypter"

    invoke-direct {v3, v4}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 198
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lnet/lingala/zip4j/unzip/UnzipEngine;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/LocalFileHeader;->isEncrypted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 199
    move-object v2, v0

    iget-object v2, v2, Lnet/lingala/zip4j/unzip/UnzipEngine;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/LocalFileHeader;->getEncryptionMethod()I

    move-result v2

    if-nez v2, :cond_2

    .line 200
    move-object v2, v0

    new-instance v3, Lnet/lingala/zip4j/crypto/StandardDecrypter;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v0

    iget-object v5, v5, Lnet/lingala/zip4j/unzip/UnzipEngine;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v6, v7}, Lnet/lingala/zip4j/unzip/UnzipEngine;->getStandardDecrypterHeaderBytes(Ljava/io/RandomAccessFile;)[B

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lnet/lingala/zip4j/crypto/StandardDecrypter;-><init>(Lnet/lingala/zip4j/model/FileHeader;[B)V

    iput-object v3, v2, Lnet/lingala/zip4j/unzip/UnzipEngine;->decrypter:Lnet/lingala/zip4j/crypto/IDecrypter;

    .line 207
    :cond_1
    :goto_0
    return-void

    .line 201
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Lnet/lingala/zip4j/unzip/UnzipEngine;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/LocalFileHeader;->getEncryptionMethod()I

    move-result v2

    const/16 v3, 0x63

    if-ne v2, v3, :cond_3

    .line 202
    move-object v2, v0

    new-instance v3, Lnet/lingala/zip4j/crypto/AESDecrypter;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v0

    iget-object v5, v5, Lnet/lingala/zip4j/unzip/UnzipEngine;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v6, v7}, Lnet/lingala/zip4j/unzip/UnzipEngine;->getAESSalt(Ljava/io/RandomAccessFile;)[B

    move-result-object v6

    move-object v7, v0

    move-object v8, v1

    invoke-direct {v7, v8}, Lnet/lingala/zip4j/unzip/UnzipEngine;->getAESPasswordVerifier(Ljava/io/RandomAccessFile;)[B

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lnet/lingala/zip4j/crypto/AESDecrypter;-><init>(Lnet/lingala/zip4j/model/LocalFileHeader;[B[B)V

    iput-object v3, v2, Lnet/lingala/zip4j/unzip/UnzipEngine;->decrypter:Lnet/lingala/zip4j/crypto/IDecrypter;

    goto :goto_0

    .line 204
    :cond_3
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    const-string/jumbo v4, "unsupported encryption method"

    invoke-direct {v3, v4}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public checkCRC()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 264
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/unzip/UnzipEngine;
    move-object v4, v0

    iget-object v4, v4, Lnet/lingala/zip4j/unzip/UnzipEngine;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    if-eqz v4, :cond_4

    .line 265
    move-object v4, v0

    iget-object v4, v4, Lnet/lingala/zip4j/unzip/UnzipEngine;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/FileHeader;->getEncryptionMethod()I

    move-result v4

    const/16 v5, 0x63

    if-ne v4, v5, :cond_2

    .line 266
    move-object v4, v0

    iget-object v4, v4, Lnet/lingala/zip4j/unzip/UnzipEngine;->decrypter:Lnet/lingala/zip4j/crypto/IDecrypter;

    if-eqz v4, :cond_4

    move-object v4, v0

    iget-object v4, v4, Lnet/lingala/zip4j/unzip/UnzipEngine;->decrypter:Lnet/lingala/zip4j/crypto/IDecrypter;

    instance-of v4, v4, Lnet/lingala/zip4j/crypto/AESDecrypter;

    if-eqz v4, :cond_4

    .line 267
    move-object v4, v0

    iget-object v4, v4, Lnet/lingala/zip4j/unzip/UnzipEngine;->decrypter:Lnet/lingala/zip4j/crypto/IDecrypter;

    check-cast v4, Lnet/lingala/zip4j/crypto/AESDecrypter;

    invoke-virtual {v4}, Lnet/lingala/zip4j/crypto/AESDecrypter;->getCalculatedAuthenticationBytes()[B

    move-result-object v4

    move-object v1, v4

    .line 268
    .local v1, "tmpMacBytes":[B
    move-object v4, v0

    iget-object v4, v4, Lnet/lingala/zip4j/unzip/UnzipEngine;->decrypter:Lnet/lingala/zip4j/crypto/IDecrypter;

    check-cast v4, Lnet/lingala/zip4j/crypto/AESDecrypter;

    invoke-virtual {v4}, Lnet/lingala/zip4j/crypto/AESDecrypter;->getStoredMac()[B

    move-result-object v4

    move-object v2, v4

    .line 269
    .local v2, "storedMac":[B
    const/16 v4, 0xa

    new-array v4, v4, [B

    move-object v3, v4

    .line 271
    .local v3, "calculatedMac":[B
    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v2

    if-nez v4, :cond_1

    .line 272
    :cond_0
    new-instance v4, Lnet/lingala/zip4j/exception/ZipException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    new-instance v6, Ljava/lang/StringBuffer;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string/jumbo v8, "CRC (MAC) check failed for "

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v7, v0

    iget-object v7, v7, Lnet/lingala/zip4j/unzip/UnzipEngine;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 275
    :cond_1
    move-object v4, v1

    const/4 v5, 0x0

    move-object v6, v3

    const/4 v7, 0x0

    const/16 v8, 0xa

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 277
    move-object v4, v3

    move-object v5, v2

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-nez v4, :cond_4

    .line 278
    new-instance v4, Lnet/lingala/zip4j/exception/ZipException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    new-instance v6, Ljava/lang/StringBuffer;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string/jumbo v8, "invalid CRC (MAC) for file: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v7, v0

    iget-object v7, v7, Lnet/lingala/zip4j/unzip/UnzipEngine;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 282
    .end local v1    # "tmpMacBytes":[B
    .end local v2    # "storedMac":[B
    .end local v3    # "calculatedMac":[B
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lnet/lingala/zip4j/unzip/UnzipEngine;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v4}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    move-wide v1, v4

    .line 283
    .local v1, "calculatedCRC":J
    move-wide v4, v1

    move-object v6, v0

    iget-object v6, v6, Lnet/lingala/zip4j/unzip/UnzipEngine;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v6}, Lnet/lingala/zip4j/model/FileHeader;->getCrc32()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_4

    .line 284
    new-instance v4, Ljava/lang/StringBuffer;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string/jumbo v6, "invalid CRC for file: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    iget-object v5, v5, Lnet/lingala/zip4j/unzip/UnzipEngine;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 285
    .local v3, "errMsg":Ljava/lang/String;
    move-object v4, v0

    iget-object v4, v4, Lnet/lingala/zip4j/unzip/UnzipEngine;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/LocalFileHeader;->isEncrypted()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 286
    move-object v4, v0

    iget-object v4, v4, Lnet/lingala/zip4j/unzip/UnzipEngine;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/LocalFileHeader;->getEncryptionMethod()I

    move-result v4

    if-nez v4, :cond_3

    .line 287
    new-instance v4, Ljava/lang/StringBuffer;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v3

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, " - Wrong Password?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 289
    :cond_3
    new-instance v4, Lnet/lingala/zip4j/exception/ZipException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v3

    invoke-direct {v5, v6}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 293
    .end local v1    # "calculatedCRC":J
    .end local v3    # "errMsg":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method public getDecrypter()Lnet/lingala/zip4j/crypto/IDecrypter;
    .locals 2

    .prologue
    .line 511
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/unzip/UnzipEngine;
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/unzip/UnzipEngine;->decrypter:Lnet/lingala/zip4j/crypto/IDecrypter;

    move-object v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/unzip/UnzipEngine;
    return-object v0
.end method

.method public getFileHeader()Lnet/lingala/zip4j/model/FileHeader;
    .locals 2

    .prologue
    .line 507
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/unzip/UnzipEngine;
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/unzip/UnzipEngine;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    move-object v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/unzip/UnzipEngine;
    return-object v0
.end method

.method public getInputStream()Lnet/lingala/zip4j/io/ZipInputStream;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 105
    move-object/from16 v0, p0

    .local v0, "this":Lnet/lingala/zip4j/unzip/UnzipEngine;
    move-object v8, v0

    iget-object v8, v8, Lnet/lingala/zip4j/unzip/UnzipEngine;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    if-nez v8, :cond_0

    .line 106
    new-instance v8, Lnet/lingala/zip4j/exception/ZipException;

    move-object/from16 v18, v8

    move-object/from16 v8, v18

    move-object/from16 v9, v18

    const-string/jumbo v10, "file header is null, cannot get inputstream"

    invoke-direct {v9, v10}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 109
    :cond_0
    const/4 v8, 0x0

    move-object v1, v8

    .line 111
    .local v1, "raf":Ljava/io/RandomAccessFile;
    move-object v8, v0

    :try_start_0
    const-string/jumbo v9, "r"

    invoke-direct {v8, v9}, Lnet/lingala/zip4j/unzip/UnzipEngine;->createFileHandler(Ljava/lang/String;)Ljava/io/RandomAccessFile;

    move-result-object v8

    move-object v1, v8

    .line 112
    const-string/jumbo v8, "local header and file header do not match"

    move-object v2, v8

    .line 115
    .local v2, "errMsg":Ljava/lang/String;
    move-object v8, v0

    invoke-direct {v8}, Lnet/lingala/zip4j/unzip/UnzipEngine;->checkLocalHeader()Z

    move-result v8

    if-nez v8, :cond_2

    .line 116
    new-instance v8, Lnet/lingala/zip4j/exception/ZipException;

    move-object/from16 v18, v8

    move-object/from16 v8, v18

    move-object/from16 v9, v18

    move-object v10, v2

    invoke-direct {v9, v10}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 157
    .end local v2    # "errMsg":Ljava/lang/String;
    :catch_0
    move-exception v8

    move-object v2, v8

    .line 158
    .local v2, "e":Lnet/lingala/zip4j/exception/ZipException;
    move-object v8, v1

    if-eqz v8, :cond_1

    .line 160
    move-object v8, v1

    :try_start_1
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 165
    :cond_1
    :goto_0
    move-object v8, v2

    throw v8

    .line 118
    .local v2, "errMsg":Ljava/lang/String;
    :cond_2
    move-object v8, v0

    move-object v9, v1

    :try_start_2
    invoke-direct {v8, v9}, Lnet/lingala/zip4j/unzip/UnzipEngine;->init(Ljava/io/RandomAccessFile;)V

    .line 120
    move-object v8, v0

    iget-object v8, v8, Lnet/lingala/zip4j/unzip/UnzipEngine;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/LocalFileHeader;->getCompressedSize()J

    move-result-wide v8

    move-wide v3, v8

    .line 121
    .local v3, "comprSize":J
    move-object v8, v0

    iget-object v8, v8, Lnet/lingala/zip4j/unzip/UnzipEngine;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/LocalFileHeader;->getOffsetStartOfData()J

    move-result-wide v8

    move-wide v5, v8

    .line 123
    .local v5, "offsetStartOfData":J
    move-object v8, v0

    iget-object v8, v8, Lnet/lingala/zip4j/unzip/UnzipEngine;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/LocalFileHeader;->isEncrypted()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 124
    move-object v8, v0

    iget-object v8, v8, Lnet/lingala/zip4j/unzip/UnzipEngine;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/LocalFileHeader;->getEncryptionMethod()I

    move-result v8

    const/16 v9, 0x63

    if-ne v8, v9, :cond_7

    .line 125
    move-object v8, v0

    iget-object v8, v8, Lnet/lingala/zip4j/unzip/UnzipEngine;->decrypter:Lnet/lingala/zip4j/crypto/IDecrypter;

    instance-of v8, v8, Lnet/lingala/zip4j/crypto/AESDecrypter;

    if-eqz v8, :cond_6

    .line 126
    move-wide v8, v3

    move-object v10, v0

    iget-object v10, v10, Lnet/lingala/zip4j/unzip/UnzipEngine;->decrypter:Lnet/lingala/zip4j/crypto/IDecrypter;

    check-cast v10, Lnet/lingala/zip4j/crypto/AESDecrypter;

    invoke-virtual {v10}, Lnet/lingala/zip4j/crypto/AESDecrypter;->getSaltLength()I

    move-result v10

    .line 127
    move-object v11, v0

    iget-object v11, v11, Lnet/lingala/zip4j/unzip/UnzipEngine;->decrypter:Lnet/lingala/zip4j/crypto/IDecrypter;

    check-cast v11, Lnet/lingala/zip4j/crypto/AESDecrypter;

    invoke-virtual {v11}, Lnet/lingala/zip4j/crypto/AESDecrypter;->getPasswordVerifierLength()I

    move-result v11

    .line 126
    add-int/2addr v10, v11

    .line 127
    const/16 v11, 0xa

    add-int/lit8 v10, v10, 0xa

    int-to-long v10, v10

    sub-long/2addr v8, v10

    move-wide v3, v8

    .line 128
    move-wide v8, v5

    move-object v10, v0

    iget-object v10, v10, Lnet/lingala/zip4j/unzip/UnzipEngine;->decrypter:Lnet/lingala/zip4j/crypto/IDecrypter;

    check-cast v10, Lnet/lingala/zip4j/crypto/AESDecrypter;

    invoke-virtual {v10}, Lnet/lingala/zip4j/crypto/AESDecrypter;->getSaltLength()I

    move-result v10

    .line 129
    move-object v11, v0

    iget-object v11, v11, Lnet/lingala/zip4j/unzip/UnzipEngine;->decrypter:Lnet/lingala/zip4j/crypto/IDecrypter;

    check-cast v11, Lnet/lingala/zip4j/crypto/AESDecrypter;

    invoke-virtual {v11}, Lnet/lingala/zip4j/crypto/AESDecrypter;->getPasswordVerifierLength()I

    move-result v11

    add-int/2addr v10, v11

    int-to-long v10, v10

    add-long/2addr v8, v10

    move-wide v5, v8

    .line 140
    :cond_3
    :goto_1
    move-object v8, v0

    iget-object v8, v8, Lnet/lingala/zip4j/unzip/UnzipEngine;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/FileHeader;->getCompressionMethod()I

    move-result v8

    move v7, v8

    .line 141
    .local v7, "compressionMethod":I
    move-object v8, v0

    iget-object v8, v8, Lnet/lingala/zip4j/unzip/UnzipEngine;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/FileHeader;->getEncryptionMethod()I

    move-result v8

    const/16 v9, 0x63

    if-ne v8, v9, :cond_4

    .line 142
    move-object v8, v0

    iget-object v8, v8, Lnet/lingala/zip4j/unzip/UnzipEngine;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/FileHeader;->getAesExtraDataRecord()Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-result-object v8

    if-eqz v8, :cond_8

    .line 143
    move-object v8, v0

    iget-object v8, v8, Lnet/lingala/zip4j/unzip/UnzipEngine;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/FileHeader;->getAesExtraDataRecord()Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-result-object v8

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->getCompressionMethod()I

    move-result v8

    move v7, v8

    .line 148
    :cond_4
    move-object v8, v1

    move-wide v9, v5

    invoke-virtual {v8, v9, v10}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 149
    move v8, v7

    sparse-switch v8, :sswitch_data_0

    .line 155
    new-instance v8, Lnet/lingala/zip4j/exception/ZipException;

    move-object/from16 v18, v8

    move-object/from16 v8, v18

    move-object/from16 v9, v18

    const-string/jumbo v10, "compression type not supported"

    invoke-direct {v9, v10}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_2
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 166
    .end local v2    # "errMsg":Ljava/lang/String;
    .end local v3    # "comprSize":J
    .end local v5    # "offsetStartOfData":J
    .end local v7    # "compressionMethod":I
    :catch_1
    move-exception v8

    move-object v2, v8

    .line 167
    .local v2, "e":Ljava/lang/Exception;
    move-object v8, v1

    if-eqz v8, :cond_5

    .line 169
    move-object v8, v1

    :try_start_3
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 173
    :cond_5
    :goto_2
    new-instance v8, Lnet/lingala/zip4j/exception/ZipException;

    move-object/from16 v18, v8

    move-object/from16 v8, v18

    move-object/from16 v9, v18

    move-object v10, v2

    invoke-direct {v9, v10}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 131
    .local v2, "errMsg":Ljava/lang/String;
    .restart local v3    # "comprSize":J
    .restart local v5    # "offsetStartOfData":J
    :cond_6
    :try_start_4
    new-instance v8, Lnet/lingala/zip4j/exception/ZipException;

    move-object/from16 v18, v8

    move-object/from16 v8, v18

    move-object/from16 v9, v18

    new-instance v10, Ljava/lang/StringBuffer;

    move-object/from16 v18, v10

    move-object/from16 v10, v18

    move-object/from16 v11, v18

    const-string/jumbo v12, "invalid decryptor when trying to calculate compressed size for AES encrypted file: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 132
    move-object v11, v0

    iget-object v11, v11, Lnet/lingala/zip4j/unzip/UnzipEngine;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v11}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    .line 131
    invoke-direct {v9, v10}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 134
    :cond_7
    move-object v8, v0

    iget-object v8, v8, Lnet/lingala/zip4j/unzip/UnzipEngine;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/LocalFileHeader;->getEncryptionMethod()I

    move-result v8

    if-nez v8, :cond_3

    .line 135
    move-wide v8, v3

    const-wide/16 v10, 0xc

    sub-long/2addr v8, v10

    move-wide v3, v8

    .line 136
    move-wide v8, v5

    const-wide/16 v10, 0xc

    add-long/2addr v8, v10

    move-wide v5, v8

    goto/16 :goto_1

    .line 145
    .restart local v7    # "compressionMethod":I
    :cond_8
    new-instance v8, Lnet/lingala/zip4j/exception/ZipException;

    move-object/from16 v18, v8

    move-object/from16 v8, v18

    move-object/from16 v9, v18

    new-instance v10, Ljava/lang/StringBuffer;

    move-object/from16 v18, v10

    move-object/from16 v10, v18

    move-object/from16 v11, v18

    const-string/jumbo v12, "AESExtraDataRecord does not exist for AES encrypted file: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v11, v0

    iget-object v11, v11, Lnet/lingala/zip4j/unzip/UnzipEngine;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v11}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 151
    :sswitch_0
    new-instance v8, Lnet/lingala/zip4j/io/ZipInputStream;

    move-object/from16 v18, v8

    move-object/from16 v8, v18

    move-object/from16 v9, v18

    new-instance v10, Lnet/lingala/zip4j/io/PartInputStream;

    move-object/from16 v18, v10

    move-object/from16 v10, v18

    move-object/from16 v11, v18

    move-object v12, v1

    move-wide v13, v5

    move-wide v15, v3

    move-object/from16 v17, v0

    invoke-direct/range {v11 .. v17}, Lnet/lingala/zip4j/io/PartInputStream;-><init>(Ljava/io/RandomAccessFile;JJLnet/lingala/zip4j/unzip/UnzipEngine;)V

    invoke-direct {v9, v10}, Lnet/lingala/zip4j/io/ZipInputStream;-><init>(Lnet/lingala/zip4j/io/BaseInputStream;)V

    move-object v0, v8

    .line 153
    .end local v0    # "this":Lnet/lingala/zip4j/unzip/UnzipEngine;
    :goto_3
    return-object v0

    .restart local v0    # "this":Lnet/lingala/zip4j/unzip/UnzipEngine;
    :sswitch_1
    new-instance v8, Lnet/lingala/zip4j/io/ZipInputStream;

    move-object/from16 v18, v8

    move-object/from16 v8, v18

    move-object/from16 v9, v18

    new-instance v10, Lnet/lingala/zip4j/io/InflaterInputStream;

    move-object/from16 v18, v10

    move-object/from16 v10, v18

    move-object/from16 v11, v18

    move-object v12, v1

    move-wide v13, v5

    move-wide v15, v3

    move-object/from16 v17, v0

    invoke-direct/range {v11 .. v17}, Lnet/lingala/zip4j/io/InflaterInputStream;-><init>(Ljava/io/RandomAccessFile;JJLnet/lingala/zip4j/unzip/UnzipEngine;)V

    invoke-direct {v9, v10}, Lnet/lingala/zip4j/io/ZipInputStream;-><init>(Lnet/lingala/zip4j/io/BaseInputStream;)V
    :try_end_4
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-object v0, v8

    goto :goto_3

    .line 161
    .end local v3    # "comprSize":J
    .end local v5    # "offsetStartOfData":J
    .end local v7    # "compressionMethod":I
    .local v2, "e":Lnet/lingala/zip4j/exception/ZipException;
    :catch_2
    move-exception v8

    move-object v3, v8

    goto/16 :goto_0

    .line 170
    .local v2, "e":Ljava/lang/Exception;
    :catch_3
    move-exception v8

    move-object v3, v8

    goto/16 :goto_2

    .line 149
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public getLocalFileHeader()Lnet/lingala/zip4j/model/LocalFileHeader;
    .locals 2

    .prologue
    .line 519
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/unzip/UnzipEngine;
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/unzip/UnzipEngine;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    move-object v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/unzip/UnzipEngine;
    return-object v0
.end method

.method public getZipModel()Lnet/lingala/zip4j/model/ZipModel;
    .locals 2

    .prologue
    .line 515
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/unzip/UnzipEngine;
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/unzip/UnzipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    move-object v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/unzip/UnzipEngine;
    return-object v0
.end method

.method public startNextSplitFile()Ljava/io/RandomAccessFile;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 450
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/unzip/UnzipEngine;
    move-object v4, v0

    iget-object v4, v4, Lnet/lingala/zip4j/unzip/UnzipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 451
    .local v1, "currZipFile":Ljava/lang/String;
    const/4 v4, 0x0

    move-object v2, v4

    .line 452
    .local v2, "partFile":Ljava/lang/String;
    move-object v4, v0

    iget v4, v4, Lnet/lingala/zip4j/unzip/UnzipEngine;->currSplitFileCounter:I

    move-object v5, v0

    iget-object v5, v5, Lnet/lingala/zip4j/unzip/UnzipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v5

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->getNoOfThisDisk()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 453
    move-object v4, v0

    iget-object v4, v4, Lnet/lingala/zip4j/unzip/UnzipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 461
    :goto_0
    move-object v4, v0

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    iget v5, v5, Lnet/lingala/zip4j/unzip/UnzipEngine;->currSplitFileCounter:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lnet/lingala/zip4j/unzip/UnzipEngine;->currSplitFileCounter:I

    .line 463
    move-object v4, v2

    :try_start_0
    invoke-static {v4}, Lnet/lingala/zip4j/util/Zip4jUtil;->checkFileExists(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 464
    new-instance v4, Ljava/io/IOException;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    new-instance v6, Ljava/lang/StringBuffer;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const-string/jumbo v8, "zip split file does not exist: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    .line 466
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 467
    .local v3, "e":Lnet/lingala/zip4j/exception/ZipException;
    new-instance v4, Ljava/io/IOException;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v3

    invoke-virtual {v6}, Lnet/lingala/zip4j/exception/ZipException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 455
    .end local v3    # "e":Lnet/lingala/zip4j/exception/ZipException;
    :cond_0
    move-object v4, v0

    iget v4, v4, Lnet/lingala/zip4j/unzip/UnzipEngine;->currSplitFileCounter:I

    const/16 v5, 0x9

    if-lt v4, v5, :cond_1

    .line 456
    new-instance v4, Ljava/lang/StringBuffer;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v1

    const/4 v7, 0x0

    move-object v8, v1

    const-string/jumbo v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, ".z"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    move-object v5, v0

    iget v5, v5, Lnet/lingala/zip4j/unzip/UnzipEngine;->currSplitFileCounter:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    goto :goto_0

    .line 458
    :cond_1
    new-instance v4, Ljava/lang/StringBuffer;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v1

    const/4 v7, 0x0

    move-object v8, v1

    const-string/jumbo v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, ".z0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    move-object v5, v0

    iget v5, v5, Lnet/lingala/zip4j/unzip/UnzipEngine;->currSplitFileCounter:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    goto/16 :goto_0

    .line 469
    :cond_2
    new-instance v4, Ljava/io/RandomAccessFile;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v2

    const-string/jumbo v7, "r"

    invoke-direct {v5, v6, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v4

    .end local v0    # "this":Lnet/lingala/zip4j/unzip/UnzipEngine;
    return-object v0
.end method

.method public unzipFile(Lnet/lingala/zip4j/progress/ProgressMonitor;Ljava/lang/String;Ljava/lang/String;Lnet/lingala/zip4j/model/UnzipParameters;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 69
    move-object/from16 v1, p0

    .local v1, "this":Lnet/lingala/zip4j/unzip/UnzipEngine;
    move-object/from16 v2, p1

    .local v2, "progressMonitor":Lnet/lingala/zip4j/progress/ProgressMonitor;
    move-object/from16 v3, p2

    .local v3, "outPath":Ljava/lang/String;
    move-object/from16 v4, p3

    .local v4, "newFileName":Ljava/lang/String;
    move-object/from16 v5, p4

    .local v5, "unzipParameters":Lnet/lingala/zip4j/model/UnzipParameters;
    move-object v11, v1

    iget-object v11, v11, Lnet/lingala/zip4j/unzip/UnzipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    if-eqz v11, :cond_0

    move-object v11, v1

    iget-object v11, v11, Lnet/lingala/zip4j/unzip/UnzipEngine;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    if-eqz v11, :cond_0

    move-object v11, v3

    invoke-static {v11}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 70
    :cond_0
    new-instance v11, Lnet/lingala/zip4j/exception/ZipException;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    const-string/jumbo v13, "Invalid parameters passed during unzipping file. One or more of the parameters were null"

    invoke-direct {v12, v13}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 72
    :cond_1
    const/4 v11, 0x0

    move-object v6, v11

    .line 73
    .local v6, "is":Ljava/io/InputStream;
    const/4 v11, 0x0

    move-object v7, v11

    .line 75
    .local v7, "os":Ljava/io/OutputStream;
    const/16 v11, 0x1000

    :try_start_0
    new-array v11, v11, [B

    move-object v8, v11

    .line 76
    .local v8, "buff":[B
    const/4 v11, -0x1

    move v9, v11

    .line 78
    .local v9, "readLength":I
    move-object v11, v1

    invoke-virtual {v11}, Lnet/lingala/zip4j/unzip/UnzipEngine;->getInputStream()Lnet/lingala/zip4j/io/ZipInputStream;

    move-result-object v11

    move-object v6, v11

    .line 79
    move-object v11, v1

    move-object v12, v3

    move-object v13, v4

    invoke-direct {v11, v12, v13}, Lnet/lingala/zip4j/unzip/UnzipEngine;->getOutputStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/FileOutputStream;

    move-result-object v11

    move-object v7, v11

    .line 81
    :cond_2
    move-object v11, v6

    move-object v12, v8

    invoke-virtual {v11, v12}, Ljava/io/InputStream;->read([B)I

    move-result v11

    move/from16 v17, v11

    move/from16 v11, v17

    move/from16 v12, v17

    move v9, v12

    const/4 v12, -0x1

    if-ne v11, v12, :cond_3

    .line 91
    move-object v11, v1

    move-object v12, v6

    move-object v13, v7

    invoke-direct {v11, v12, v13}, Lnet/lingala/zip4j/unzip/UnzipEngine;->closeStreams(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 93
    move-object v11, v1

    iget-object v11, v11, Lnet/lingala/zip4j/unzip/UnzipEngine;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    new-instance v12, Ljava/io/File;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v1

    move-object v15, v3

    move-object/from16 v16, v4

    invoke-direct/range {v14 .. v16}, Lnet/lingala/zip4j/unzip/UnzipEngine;->getOutputFileNameWithPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v13, v5

    invoke-static {v11, v12, v13}, Lnet/lingala/zip4j/unzip/UnzipUtil;->applyFileAttributes(Lnet/lingala/zip4j/model/FileHeader;Ljava/io/File;Lnet/lingala/zip4j/model/UnzipParameters;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    move-object v11, v1

    move-object v12, v6

    move-object v13, v7

    invoke-direct {v11, v12, v13}, Lnet/lingala/zip4j/unzip/UnzipEngine;->closeStreams(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 102
    :goto_0
    return-void

    .line 82
    :cond_3
    move-object v11, v7

    move-object v12, v8

    const/4 v13, 0x0

    move v14, v9

    :try_start_1
    invoke-virtual {v11, v12, v13, v14}, Ljava/io/OutputStream;->write([BII)V

    .line 83
    move-object v11, v2

    move v12, v9

    int-to-long v12, v12

    invoke-virtual {v11, v12, v13}, Lnet/lingala/zip4j/progress/ProgressMonitor;->updateWorkCompleted(J)V

    .line 84
    move-object v11, v2

    invoke-virtual {v11}, Lnet/lingala/zip4j/progress/ProgressMonitor;->isCancelAllTasks()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 85
    move-object v11, v2

    const/4 v12, 0x3

    invoke-virtual {v11, v12}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setResult(I)V

    .line 86
    move-object v11, v2

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setState(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    move-object v11, v1

    move-object v12, v6

    move-object v13, v7

    invoke-direct {v11, v12, v13}, Lnet/lingala/zip4j/unzip/UnzipEngine;->closeStreams(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 87
    goto :goto_0

    .line 95
    .end local v8    # "buff":[B
    .end local v9    # "readLength":I
    :catch_0
    move-exception v11

    move-object v8, v11

    .line 96
    .local v8, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v11, Lnet/lingala/zip4j/exception/ZipException;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    move-object v13, v8

    invoke-direct {v12, v13}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 99
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    move-object v10, v11

    .line 100
    move-object v11, v1

    move-object v12, v6

    move-object v13, v7

    invoke-direct {v11, v12, v13}, Lnet/lingala/zip4j/unzip/UnzipEngine;->closeStreams(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 101
    move-object v11, v10

    throw v11

    .line 97
    :catch_1
    move-exception v11

    move-object v8, v11

    .line 98
    .local v8, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v11, Lnet/lingala/zip4j/exception/ZipException;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    move-object v13, v8

    invoke-direct {v12, v13}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public updateCRC(I)V
    .locals 4

    .prologue
    .line 497
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/unzip/UnzipEngine;
    move v1, p1

    .local v1, "b":I
    move-object v2, v0

    iget-object v2, v2, Lnet/lingala/zip4j/unzip/UnzipEngine;->crc:Ljava/util/zip/CRC32;

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/util/zip/CRC32;->update(I)V

    .line 498
    return-void
.end method

.method public updateCRC([BII)V
    .locals 8

    .prologue
    .line 501
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/unzip/UnzipEngine;
    move-object v1, p1

    .local v1, "buff":[B
    move v2, p2

    .local v2, "offset":I
    move v3, p3

    .local v3, "len":I
    move-object v4, v1

    if-eqz v4, :cond_0

    .line 502
    move-object v4, v0

    iget-object v4, v4, Lnet/lingala/zip4j/unzip/UnzipEngine;->crc:Ljava/util/zip/CRC32;

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Ljava/util/zip/CRC32;->update([BII)V

    .line 504
    :cond_0
    return-void
.end method
