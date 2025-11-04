.class public Lnet/lingala/zip4j/io/CipherOutputStream;
.super Lnet/lingala/zip4j/io/BaseOutputStream;
.source "CipherOutputStream.java"


# instance fields
.field private bytesWrittenForThisFile:J

.field protected crc:Ljava/util/zip/CRC32;

.field private encrypter:Lnet/lingala/zip4j/crypto/IEncrypter;

.field protected fileHeader:Lnet/lingala/zip4j/model/FileHeader;

.field protected localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

.field protected outputStream:Ljava/io/OutputStream;

.field private pendingBuffer:[B

.field private pendingBufferLength:I

.field private sourceFile:Ljava/io/File;

.field private totalBytesRead:J

.field private totalBytesWritten:J

.field protected zipModel:Lnet/lingala/zip4j/model/ZipModel;

.field protected zipParameters:Lnet/lingala/zip4j/model/ZipParameters;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lnet/lingala/zip4j/model/ZipModel;)V
    .locals 7

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/io/CipherOutputStream;
    move-object v1, p1

    .local v1, "outputStream":Ljava/io/OutputStream;
    move-object v2, p2

    .local v2, "zipModel":Lnet/lingala/zip4j/model/ZipModel;
    move-object v3, v0

    invoke-direct {v3}, Lnet/lingala/zip4j/io/BaseOutputStream;-><init>()V

    .line 59
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lnet/lingala/zip4j/io/CipherOutputStream;->outputStream:Ljava/io/OutputStream;

    .line 60
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Lnet/lingala/zip4j/io/CipherOutputStream;->initZipModel(Lnet/lingala/zip4j/model/ZipModel;)V

    .line 61
    move-object v3, v0

    new-instance v4, Ljava/util/zip/CRC32;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v4, v3, Lnet/lingala/zip4j/io/CipherOutputStream;->crc:Ljava/util/zip/CRC32;

    .line 62
    move-object v3, v0

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lnet/lingala/zip4j/io/CipherOutputStream;->totalBytesWritten:J

    .line 63
    move-object v3, v0

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lnet/lingala/zip4j/io/CipherOutputStream;->bytesWrittenForThisFile:J

    .line 64
    move-object v3, v0

    const/16 v4, 0x10

    new-array v4, v4, [B

    iput-object v4, v3, Lnet/lingala/zip4j/io/CipherOutputStream;->pendingBuffer:[B

    .line 65
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lnet/lingala/zip4j/io/CipherOutputStream;->pendingBufferLength:I

    .line 66
    move-object v3, v0

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lnet/lingala/zip4j/io/CipherOutputStream;->totalBytesRead:J

    .line 67
    return-void
.end method

.method private createFileHeader()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 335
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/io/CipherOutputStream;
    move-object v7, v0

    new-instance v8, Lnet/lingala/zip4j/model/FileHeader;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Lnet/lingala/zip4j/model/FileHeader;-><init>()V

    iput-object v8, v7, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    .line 336
    move-object v7, v0

    iget-object v7, v7, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    const v8, 0x2014b50

    invoke-virtual {v7, v8}, Lnet/lingala/zip4j/model/FileHeader;->setSignature(I)V

    .line 337
    move-object v7, v0

    iget-object v7, v7, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    const/16 v8, 0x14

    invoke-virtual {v7, v8}, Lnet/lingala/zip4j/model/FileHeader;->setVersionMadeBy(I)V

    .line 338
    move-object v7, v0

    iget-object v7, v7, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    const/16 v8, 0x14

    invoke-virtual {v7, v8}, Lnet/lingala/zip4j/model/FileHeader;->setVersionNeededToExtract(I)V

    .line 339
    move-object v7, v0

    iget-object v7, v7, Lnet/lingala/zip4j/io/CipherOutputStream;->zipParameters:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/ZipParameters;->isEncryptFiles()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 340
    move-object v7, v0

    iget-object v7, v7, Lnet/lingala/zip4j/io/CipherOutputStream;->zipParameters:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/ZipParameters;->getEncryptionMethod()I

    move-result v7

    const/16 v8, 0x63

    if-ne v7, v8, :cond_1

    .line 341
    move-object v7, v0

    iget-object v7, v7, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    const/16 v8, 0x63

    invoke-virtual {v7, v8}, Lnet/lingala/zip4j/model/FileHeader;->setCompressionMethod(I)V

    .line 342
    move-object v7, v0

    iget-object v7, v7, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Lnet/lingala/zip4j/io/CipherOutputStream;->zipParameters:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-direct {v8, v9}, Lnet/lingala/zip4j/io/CipherOutputStream;->generateAESExtraDataRecord(Lnet/lingala/zip4j/model/ZipParameters;)Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-result-object v8

    invoke-virtual {v7, v8}, Lnet/lingala/zip4j/model/FileHeader;->setAesExtraDataRecord(Lnet/lingala/zip4j/model/AESExtraDataRecord;)V

    .line 346
    :goto_0
    move-object v7, v0

    iget-object v7, v7, Lnet/lingala/zip4j/io/CipherOutputStream;->zipParameters:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/ZipParameters;->isEncryptFiles()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 347
    move-object v7, v0

    iget-object v7, v7, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lnet/lingala/zip4j/model/FileHeader;->setEncrypted(Z)V

    .line 348
    move-object v7, v0

    iget-object v7, v7, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    move-object v8, v0

    iget-object v8, v8, Lnet/lingala/zip4j/io/CipherOutputStream;->zipParameters:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/ZipParameters;->getEncryptionMethod()I

    move-result v8

    invoke-virtual {v7, v8}, Lnet/lingala/zip4j/model/FileHeader;->setEncryptionMethod(I)V

    .line 350
    :cond_0
    const/4 v7, 0x0

    move-object v1, v7

    .line 351
    .local v1, "fileName":Ljava/lang/String;
    move-object v7, v0

    iget-object v7, v7, Lnet/lingala/zip4j/io/CipherOutputStream;->zipParameters:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/ZipParameters;->isSourceExternalStream()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 352
    move-object v7, v0

    iget-object v7, v7, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Lnet/lingala/zip4j/util/Zip4jUtil;->javaToDosTime(J)J

    move-result-wide v8

    long-to-int v8, v8

    invoke-virtual {v7, v8}, Lnet/lingala/zip4j/model/FileHeader;->setLastModFileTime(I)V

    .line 353
    move-object v7, v0

    iget-object v7, v7, Lnet/lingala/zip4j/io/CipherOutputStream;->zipParameters:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/ZipParameters;->getFileNameInZip()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 354
    new-instance v7, Lnet/lingala/zip4j/exception/ZipException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const-string/jumbo v9, "fileNameInZip is null or empty"

    invoke-direct {v8, v9}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 344
    .end local v1    # "fileName":Ljava/lang/String;
    :cond_1
    move-object v7, v0

    iget-object v7, v7, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    move-object v8, v0

    iget-object v8, v8, Lnet/lingala/zip4j/io/CipherOutputStream;->zipParameters:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/ZipParameters;->getCompressionMethod()I

    move-result v8

    invoke-virtual {v7, v8}, Lnet/lingala/zip4j/model/FileHeader;->setCompressionMethod(I)V

    goto :goto_0

    .line 356
    .restart local v1    # "fileName":Ljava/lang/String;
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Lnet/lingala/zip4j/io/CipherOutputStream;->zipParameters:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/ZipParameters;->getFileNameInZip()Ljava/lang/String;

    move-result-object v7

    move-object v1, v7

    .line 366
    :goto_1
    move-object v7, v1

    invoke-static {v7}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 367
    new-instance v7, Lnet/lingala/zip4j/exception/ZipException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const-string/jumbo v9, "fileName is null or empty. unable to create file header"

    invoke-direct {v8, v9}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 358
    :cond_3
    move-object v7, v0

    iget-object v7, v7, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    .line 359
    move-object v8, v0

    iget-object v8, v8, Lnet/lingala/zip4j/io/CipherOutputStream;->sourceFile:Ljava/io/File;

    move-object v9, v0

    iget-object v9, v9, Lnet/lingala/zip4j/io/CipherOutputStream;->zipParameters:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v9}, Lnet/lingala/zip4j/model/ZipParameters;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v9

    .line 358
    invoke-static {v8, v9}, Lnet/lingala/zip4j/util/Zip4jUtil;->getLastModifiedFileTime(Ljava/io/File;Ljava/util/TimeZone;)J

    move-result-wide v8

    invoke-static {v8, v9}, Lnet/lingala/zip4j/util/Zip4jUtil;->javaToDosTime(J)J

    move-result-wide v8

    long-to-int v8, v8

    invoke-virtual {v7, v8}, Lnet/lingala/zip4j/model/FileHeader;->setLastModFileTime(I)V

    .line 360
    move-object v7, v0

    iget-object v7, v7, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    move-object v8, v0

    iget-object v8, v8, Lnet/lingala/zip4j/io/CipherOutputStream;->sourceFile:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lnet/lingala/zip4j/model/FileHeader;->setUncompressedSize(J)V

    .line 362
    move-object v7, v0

    iget-object v7, v7, Lnet/lingala/zip4j/io/CipherOutputStream;->sourceFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Lnet/lingala/zip4j/io/CipherOutputStream;->zipParameters:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/ZipParameters;->getRootFolderInZip()Ljava/lang/String;

    move-result-object v8

    move-object v9, v0

    iget-object v9, v9, Lnet/lingala/zip4j/io/CipherOutputStream;->zipParameters:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v9}, Lnet/lingala/zip4j/model/ZipParameters;->getDefaultFolderPath()Ljava/lang/String;

    move-result-object v9

    .line 361
    invoke-static {v7, v8, v9}, Lnet/lingala/zip4j/util/Zip4jUtil;->getRelativeFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v1, v7

    goto :goto_1

    .line 370
    :cond_4
    move-object v7, v0

    iget-object v7, v7, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    move-object v8, v1

    invoke-virtual {v7, v8}, Lnet/lingala/zip4j/model/FileHeader;->setFileName(Ljava/lang/String;)V

    .line 372
    move-object v7, v0

    iget-object v7, v7, Lnet/lingala/zip4j/io/CipherOutputStream;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/ZipModel;->getFileNameCharset()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 373
    move-object v7, v0

    iget-object v7, v7, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    move-object v8, v1

    .line 374
    move-object v9, v0

    iget-object v9, v9, Lnet/lingala/zip4j/io/CipherOutputStream;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v9}, Lnet/lingala/zip4j/model/ZipModel;->getFileNameCharset()Ljava/lang/String;

    move-result-object v9

    .line 373
    invoke-static {v8, v9}, Lnet/lingala/zip4j/util/Zip4jUtil;->getEncodedStringLength(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Lnet/lingala/zip4j/model/FileHeader;->setFileNameLength(I)V

    .line 379
    :goto_2
    move-object v7, v0

    iget-object v7, v7, Lnet/lingala/zip4j/io/CipherOutputStream;->outputStream:Ljava/io/OutputStream;

    instance-of v7, v7, Lnet/lingala/zip4j/io/SplitOutputStream;

    if-eqz v7, :cond_b

    .line 380
    move-object v7, v0

    iget-object v7, v7, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    move-object v8, v0

    iget-object v8, v8, Lnet/lingala/zip4j/io/CipherOutputStream;->outputStream:Ljava/io/OutputStream;

    check-cast v8, Lnet/lingala/zip4j/io/SplitOutputStream;

    invoke-virtual {v8}, Lnet/lingala/zip4j/io/SplitOutputStream;->getCurrSplitFileCounter()I

    move-result v8

    invoke-virtual {v7, v8}, Lnet/lingala/zip4j/model/FileHeader;->setDiskNumberStart(I)V

    .line 385
    :goto_3
    const/4 v7, 0x0

    move v2, v7

    .line 386
    .local v2, "fileAttrs":I
    move-object v7, v0

    iget-object v7, v7, Lnet/lingala/zip4j/io/CipherOutputStream;->zipParameters:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/ZipParameters;->isSourceExternalStream()Z

    move-result v7

    if-nez v7, :cond_5

    .line 387
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lnet/lingala/zip4j/io/CipherOutputStream;->sourceFile:Ljava/io/File;

    invoke-direct {v7, v8}, Lnet/lingala/zip4j/io/CipherOutputStream;->getFileAttributes(Ljava/io/File;)I

    move-result v7

    move v2, v7

    .line 388
    :cond_5
    const/4 v7, 0x4

    new-array v7, v7, [B

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x0

    move v10, v2

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    move-object v3, v7

    .line 389
    .local v3, "externalFileAttrs":[B
    move-object v7, v0

    iget-object v7, v7, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    move-object v8, v3

    invoke-virtual {v7, v8}, Lnet/lingala/zip4j/model/FileHeader;->setExternalFileAttr([B)V

    .line 391
    move-object v7, v0

    iget-object v7, v7, Lnet/lingala/zip4j/io/CipherOutputStream;->zipParameters:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/ZipParameters;->isSourceExternalStream()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 392
    move-object v7, v0

    iget-object v7, v7, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    move-object v8, v1

    const-string/jumbo v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_c

    move-object v8, v1

    const-string/jumbo v9, "\\"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_c

    const/4 v8, 0x0

    :goto_4
    invoke-virtual {v7, v8}, Lnet/lingala/zip4j/model/FileHeader;->setDirectory(Z)V

    .line 396
    :goto_5
    move-object v7, v0

    iget-object v7, v7, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/FileHeader;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 397
    move-object v7, v0

    iget-object v7, v7, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    const-wide/16 v8, 0x0

    invoke-virtual {v7, v8, v9}, Lnet/lingala/zip4j/model/FileHeader;->setCompressedSize(J)V

    .line 398
    move-object v7, v0

    iget-object v7, v7, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    const-wide/16 v8, 0x0

    invoke-virtual {v7, v8, v9}, Lnet/lingala/zip4j/model/FileHeader;->setUncompressedSize(J)V

    .line 429
    :cond_6
    :goto_6
    move-object v7, v0

    iget-object v7, v7, Lnet/lingala/zip4j/io/CipherOutputStream;->zipParameters:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/ZipParameters;->isEncryptFiles()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 430
    move-object v7, v0

    iget-object v7, v7, Lnet/lingala/zip4j/io/CipherOutputStream;->zipParameters:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/ZipParameters;->getEncryptionMethod()I

    move-result v7

    if-nez v7, :cond_7

    .line 431
    move-object v7, v0

    iget-object v7, v7, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    move-object v8, v0

    iget-object v8, v8, Lnet/lingala/zip4j/io/CipherOutputStream;->zipParameters:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/ZipParameters;->getSourceFileCRC()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v7, v8, v9}, Lnet/lingala/zip4j/model/FileHeader;->setCrc32(J)V

    .line 433
    :cond_7
    const/4 v7, 0x2

    new-array v7, v7, [B

    move-object v4, v7

    .line 434
    .local v4, "shortByte":[B
    move-object v7, v4

    const/4 v8, 0x0

    move-object v9, v0

    .line 435
    move-object v10, v0

    iget-object v10, v10, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v10}, Lnet/lingala/zip4j/model/FileHeader;->isEncrypted()Z

    move-result v10

    move-object v11, v0

    iget-object v11, v11, Lnet/lingala/zip4j/io/CipherOutputStream;->zipParameters:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v11}, Lnet/lingala/zip4j/model/ZipParameters;->getCompressionMethod()I

    move-result v11

    .line 434
    invoke-direct {v9, v10, v11}, Lnet/lingala/zip4j/io/CipherOutputStream;->generateGeneralPurposeBitArray(ZI)[I

    move-result-object v9

    invoke-static {v9}, Lnet/lingala/zip4j/util/Raw;->bitArrayToByte([I)B

    move-result v9

    aput-byte v9, v7, v8

    .line 436
    move-object v7, v0

    iget-object v7, v7, Lnet/lingala/zip4j/io/CipherOutputStream;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/ZipModel;->getFileNameCharset()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v7

    move v5, v7

    .line 437
    .local v5, "isFileNameCharsetSet":Z
    move v7, v5

    if-eqz v7, :cond_8

    .line 438
    move-object v7, v0

    iget-object v7, v7, Lnet/lingala/zip4j/io/CipherOutputStream;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/ZipModel;->getFileNameCharset()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "UTF8"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 439
    :cond_8
    move v7, v5

    if-nez v7, :cond_12

    .line 440
    move-object v7, v0

    iget-object v7, v7, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lnet/lingala/zip4j/util/Zip4jUtil;->detectCharSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "UTF8"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 441
    :cond_9
    move-object v7, v4

    const/4 v8, 0x1

    const/16 v9, 0x8

    aput-byte v9, v7, v8

    .line 445
    :goto_7
    move-object v7, v0

    iget-object v7, v7, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    move-object v8, v4

    invoke-virtual {v7, v8}, Lnet/lingala/zip4j/model/FileHeader;->setGeneralPurposeFlag([B)V

    .line 446
    return-void

    .line 376
    .end local v2    # "fileAttrs":I
    .end local v3    # "externalFileAttrs":[B
    .end local v4    # "shortByte":[B
    .end local v5    # "isFileNameCharsetSet":Z
    :cond_a
    move-object v7, v0

    iget-object v7, v7, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    move-object v8, v1

    invoke-static {v8}, Lnet/lingala/zip4j/util/Zip4jUtil;->getEncodedStringLength(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Lnet/lingala/zip4j/model/FileHeader;->setFileNameLength(I)V

    goto/16 :goto_2

    .line 382
    :cond_b
    move-object v7, v0

    iget-object v7, v7, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lnet/lingala/zip4j/model/FileHeader;->setDiskNumberStart(I)V

    goto/16 :goto_3

    .line 392
    .restart local v2    # "fileAttrs":I
    .restart local v3    # "externalFileAttrs":[B
    :cond_c
    const/4 v8, 0x1

    goto/16 :goto_4

    .line 394
    :cond_d
    move-object v7, v0

    iget-object v7, v7, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    move-object v8, v0

    iget-object v8, v8, Lnet/lingala/zip4j/io/CipherOutputStream;->sourceFile:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v8

    invoke-virtual {v7, v8}, Lnet/lingala/zip4j/model/FileHeader;->setDirectory(Z)V

    goto/16 :goto_5

    .line 400
    :cond_e
    move-object v7, v0

    iget-object v7, v7, Lnet/lingala/zip4j/io/CipherOutputStream;->zipParameters:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/ZipParameters;->isSourceExternalStream()Z

    move-result v7

    if-nez v7, :cond_6

    .line 401
    move-object v7, v0

    iget-object v7, v7, Lnet/lingala/zip4j/io/CipherOutputStream;->sourceFile:Ljava/io/File;

    invoke-static {v7}, Lnet/lingala/zip4j/util/Zip4jUtil;->getFileLengh(Ljava/io/File;)J

    move-result-wide v7

    move-wide v4, v7

    .line 402
    .local v4, "fileSize":J
    move-object v7, v0

    iget-object v7, v7, Lnet/lingala/zip4j/io/CipherOutputStream;->zipParameters:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/ZipParameters;->getCompressionMethod()I

    move-result v7

    if-nez v7, :cond_11

    .line 403
    move-object v7, v0

    iget-object v7, v7, Lnet/lingala/zip4j/io/CipherOutputStream;->zipParameters:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/ZipParameters;->getEncryptionMethod()I

    move-result v7

    if-nez v7, :cond_f

    .line 404
    move-object v7, v0

    iget-object v7, v7, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    move-wide v8, v4

    .line 405
    const-wide/16 v10, 0xc

    add-long/2addr v8, v10

    .line 404
    invoke-virtual {v7, v8, v9}, Lnet/lingala/zip4j/model/FileHeader;->setCompressedSize(J)V

    .line 426
    :goto_8
    move-object v7, v0

    iget-object v7, v7, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    move-wide v8, v4

    invoke-virtual {v7, v8, v9}, Lnet/lingala/zip4j/model/FileHeader;->setUncompressedSize(J)V

    goto/16 :goto_6

    .line 406
    :cond_f
    move-object v7, v0

    iget-object v7, v7, Lnet/lingala/zip4j/io/CipherOutputStream;->zipParameters:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/ZipParameters;->getEncryptionMethod()I

    move-result v7

    const/16 v8, 0x63

    if-ne v7, v8, :cond_10

    .line 407
    const/4 v7, 0x0

    move v6, v7

    .line 408
    .local v6, "saltLength":I
    move-object v7, v0

    iget-object v7, v7, Lnet/lingala/zip4j/io/CipherOutputStream;->zipParameters:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/ZipParameters;->getAesKeyStrength()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 416
    :pswitch_0
    new-instance v7, Lnet/lingala/zip4j/exception/ZipException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const-string/jumbo v9, "invalid aes key strength, cannot determine key sizes"

    invoke-direct {v8, v9}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 410
    :pswitch_1
    const/16 v7, 0x8

    move v6, v7

    .line 418
    :goto_9
    move-object v7, v0

    iget-object v7, v7, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    move-wide v8, v4

    move v10, v6

    int-to-long v10, v10

    add-long/2addr v8, v10

    .line 419
    const-wide/16 v10, 0xa

    add-long/2addr v8, v10

    const-wide/16 v10, 0x2

    add-long/2addr v8, v10

    .line 418
    invoke-virtual {v7, v8, v9}, Lnet/lingala/zip4j/model/FileHeader;->setCompressedSize(J)V

    goto :goto_8

    .line 413
    :pswitch_2
    const/16 v7, 0x10

    move v6, v7

    .line 414
    goto :goto_9

    .line 421
    .end local v6    # "saltLength":I
    :cond_10
    move-object v7, v0

    iget-object v7, v7, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    const-wide/16 v8, 0x0

    invoke-virtual {v7, v8, v9}, Lnet/lingala/zip4j/model/FileHeader;->setCompressedSize(J)V

    goto :goto_8

    .line 424
    :cond_11
    move-object v7, v0

    iget-object v7, v7, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    const-wide/16 v8, 0x0

    invoke-virtual {v7, v8, v9}, Lnet/lingala/zip4j/model/FileHeader;->setCompressedSize(J)V

    goto :goto_8

    .line 443
    .local v4, "shortByte":[B
    .restart local v5    # "isFileNameCharsetSet":Z
    :cond_12
    move-object v7, v4

    const/4 v8, 0x1

    const/4 v9, 0x0

    aput-byte v9, v7, v8

    goto/16 :goto_7

    .line 408
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private createLocalFileHeader()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 449
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/io/CipherOutputStream;
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    if-nez v1, :cond_0

    .line 450
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string/jumbo v3, "file header is null, cannot create local file header"

    invoke-direct {v2, v3}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 452
    :cond_0
    move-object v1, v0

    new-instance v2, Lnet/lingala/zip4j/model/LocalFileHeader;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lnet/lingala/zip4j/model/LocalFileHeader;-><init>()V

    iput-object v2, v1, Lnet/lingala/zip4j/io/CipherOutputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    .line 453
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/io/CipherOutputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    const v2, 0x4034b50

    invoke-virtual {v1, v2}, Lnet/lingala/zip4j/model/LocalFileHeader;->setSignature(I)V

    .line 454
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/io/CipherOutputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    move-object v2, v0

    iget-object v2, v2, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/FileHeader;->getVersionNeededToExtract()I

    move-result v2

    invoke-virtual {v1, v2}, Lnet/lingala/zip4j/model/LocalFileHeader;->setVersionNeededToExtract(I)V

    .line 455
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/io/CipherOutputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    move-object v2, v0

    iget-object v2, v2, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/FileHeader;->getCompressionMethod()I

    move-result v2

    invoke-virtual {v1, v2}, Lnet/lingala/zip4j/model/LocalFileHeader;->setCompressionMethod(I)V

    .line 456
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/io/CipherOutputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    move-object v2, v0

    iget-object v2, v2, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/FileHeader;->getLastModFileTime()I

    move-result v2

    invoke-virtual {v1, v2}, Lnet/lingala/zip4j/model/LocalFileHeader;->setLastModFileTime(I)V

    .line 457
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/io/CipherOutputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    move-object v2, v0

    iget-object v2, v2, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/FileHeader;->getUncompressedSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lnet/lingala/zip4j/model/LocalFileHeader;->setUncompressedSize(J)V

    .line 458
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/io/CipherOutputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    move-object v2, v0

    iget-object v2, v2, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/FileHeader;->getFileNameLength()I

    move-result v2

    invoke-virtual {v1, v2}, Lnet/lingala/zip4j/model/LocalFileHeader;->setFileNameLength(I)V

    .line 459
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/io/CipherOutputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    move-object v2, v0

    iget-object v2, v2, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/lingala/zip4j/model/LocalFileHeader;->setFileName(Ljava/lang/String;)V

    .line 460
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/io/CipherOutputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    move-object v2, v0

    iget-object v2, v2, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/FileHeader;->isEncrypted()Z

    move-result v2

    invoke-virtual {v1, v2}, Lnet/lingala/zip4j/model/LocalFileHeader;->setEncrypted(Z)V

    .line 461
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/io/CipherOutputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    move-object v2, v0

    iget-object v2, v2, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/FileHeader;->getEncryptionMethod()I

    move-result v2

    invoke-virtual {v1, v2}, Lnet/lingala/zip4j/model/LocalFileHeader;->setEncryptionMethod(I)V

    .line 462
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/io/CipherOutputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    move-object v2, v0

    iget-object v2, v2, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/FileHeader;->getAesExtraDataRecord()Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/lingala/zip4j/model/LocalFileHeader;->setAesExtraDataRecord(Lnet/lingala/zip4j/model/AESExtraDataRecord;)V

    .line 463
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/io/CipherOutputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    move-object v2, v0

    iget-object v2, v2, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/FileHeader;->getCrc32()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lnet/lingala/zip4j/model/LocalFileHeader;->setCrc32(J)V

    .line 464
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/io/CipherOutputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    move-object v2, v0

    iget-object v2, v2, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/FileHeader;->getCompressedSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lnet/lingala/zip4j/model/LocalFileHeader;->setCompressedSize(J)V

    .line 465
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/io/CipherOutputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    move-object v2, v0

    iget-object v2, v2, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/FileHeader;->getGeneralPurposeFlag()[B

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-virtual {v1, v2}, Lnet/lingala/zip4j/model/LocalFileHeader;->setGeneralPurposeFlag([B)V

    .line 466
    return-void
.end method

.method private encryptAndWrite([BII)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 255
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/io/CipherOutputStream;
    move-object v1, p1

    .local v1, "b":[B
    move v2, p2

    .local v2, "off":I
    move v3, p3

    .local v3, "len":I
    move-object v5, v0

    iget-object v5, v5, Lnet/lingala/zip4j/io/CipherOutputStream;->encrypter:Lnet/lingala/zip4j/crypto/IEncrypter;

    if-eqz v5, :cond_0

    .line 257
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Lnet/lingala/zip4j/io/CipherOutputStream;->encrypter:Lnet/lingala/zip4j/crypto/IEncrypter;

    move-object v6, v1

    move v7, v2

    move v8, v3

    invoke-interface {v5, v6, v7, v8}, Lnet/lingala/zip4j/crypto/IEncrypter;->encryptData([BII)I
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 262
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lnet/lingala/zip4j/io/CipherOutputStream;->outputStream:Ljava/io/OutputStream;

    move-object v6, v1

    move v7, v2

    move v8, v3

    invoke-virtual {v5, v6, v7, v8}, Ljava/io/OutputStream;->write([BII)V

    .line 263
    move-object v5, v0

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget-wide v6, v6, Lnet/lingala/zip4j/io/CipherOutputStream;->totalBytesWritten:J

    move v8, v3

    int-to-long v8, v8

    add-long/2addr v6, v8

    iput-wide v6, v5, Lnet/lingala/zip4j/io/CipherOutputStream;->totalBytesWritten:J

    .line 264
    move-object v5, v0

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget-wide v6, v6, Lnet/lingala/zip4j/io/CipherOutputStream;->bytesWrittenForThisFile:J

    move v8, v3

    int-to-long v8, v8

    add-long/2addr v6, v8

    iput-wide v6, v5, Lnet/lingala/zip4j/io/CipherOutputStream;->bytesWrittenForThisFile:J

    .line 265
    return-void

    .line 258
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 259
    .local v4, "e":Lnet/lingala/zip4j/exception/ZipException;
    new-instance v5, Ljava/io/IOException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v4

    invoke-virtual {v7}, Lnet/lingala/zip4j/exception/ZipException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private generateAESExtraDataRecord(Lnet/lingala/zip4j/model/ZipParameters;)Lnet/lingala/zip4j/model/AESExtraDataRecord;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 525
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/io/CipherOutputStream;
    move-object v1, p1

    .local v1, "parameters":Lnet/lingala/zip4j/model/ZipParameters;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 526
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "zip parameters are null, cannot generate AES Extra Data record"

    invoke-direct {v4, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 529
    :cond_0
    new-instance v3, Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lnet/lingala/zip4j/model/AESExtraDataRecord;-><init>()V

    move-object v2, v3

    .line 530
    .local v2, "aesDataRecord":Lnet/lingala/zip4j/model/AESExtraDataRecord;
    move-object v3, v2

    const-wide/32 v4, 0x9901

    invoke-virtual {v3, v4, v5}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->setSignature(J)V

    .line 531
    move-object v3, v2

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->setDataSize(I)V

    .line 532
    move-object v3, v2

    const-string/jumbo v4, "AE"

    invoke-virtual {v3, v4}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->setVendorID(Ljava/lang/String;)V

    .line 536
    move-object v3, v2

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->setVersionNumber(I)V

    .line 537
    move-object v3, v1

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ZipParameters;->getAesKeyStrength()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 538
    move-object v3, v2

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->setAesStrength(I)V

    .line 544
    :goto_0
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/ZipParameters;->getCompressionMethod()I

    move-result v4

    invoke-virtual {v3, v4}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->setCompressionMethod(I)V

    .line 546
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lnet/lingala/zip4j/io/CipherOutputStream;
    return-object v0

    .line 539
    .restart local v0    # "this":Lnet/lingala/zip4j/io/CipherOutputStream;
    :cond_1
    move-object v3, v1

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ZipParameters;->getAesKeyStrength()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 540
    move-object v3, v2

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->setAesStrength(I)V

    goto :goto_0

    .line 542
    :cond_2
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "invalid AES key strength, cannot generate AES Extra data record"

    invoke-direct {v4, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private generateGeneralPurposeBitArray(ZI)[I
    .locals 7

    .prologue
    .line 504
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/io/CipherOutputStream;
    move v1, p1

    .local v1, "isEncrpyted":Z
    move v2, p2

    .local v2, "compressionMethod":I
    const/16 v4, 0x8

    new-array v4, v4, [I

    move-object v3, v4

    .line 505
    .local v3, "generalPurposeBits":[I
    move v4, v1

    if-eqz v4, :cond_1

    .line 506
    move-object v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    aput v6, v4, v5

    .line 511
    :goto_0
    move v4, v2

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    .line 514
    move-object v4, v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput v6, v4, v5

    .line 515
    move-object v4, v3

    const/4 v5, 0x2

    const/4 v6, 0x0

    aput v6, v4, v5

    .line 518
    :cond_0
    move-object v4, v3

    const/4 v5, 0x3

    const/4 v6, 0x1

    aput v6, v4, v5

    .line 520
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Lnet/lingala/zip4j/io/CipherOutputStream;
    return-object v0

    .line 508
    .restart local v0    # "this":Lnet/lingala/zip4j/io/CipherOutputStream;
    :cond_1
    move-object v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    goto :goto_0
.end method

.method private getFileAttributes(Ljava/io/File;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 475
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/io/CipherOutputStream;
    move-object v1, p1

    .local v1, "file":Ljava/io/File;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 476
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "input file is null, cannot get file attributes"

    invoke-direct {v3, v4}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 479
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 480
    const/4 v2, 0x0

    move v0, v2

    .line 497
    .end local v0    # "this":Lnet/lingala/zip4j/io/CipherOutputStream;
    :goto_0
    return v0

    .line 483
    .restart local v0    # "this":Lnet/lingala/zip4j/io/CipherOutputStream;
    :cond_1
    move-object v2, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 484
    move-object v2, v1

    invoke-virtual {v2}, Ljava/io/File;->isHidden()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 485
    const/16 v2, 0x12

    move v0, v2

    goto :goto_0

    .line 487
    :cond_2
    const/16 v2, 0x10

    move v0, v2

    goto :goto_0

    .line 490
    :cond_3
    move-object v2, v1

    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-nez v2, :cond_4

    move-object v2, v1

    invoke-virtual {v2}, Ljava/io/File;->isHidden()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 491
    const/4 v2, 0x3

    move v0, v2

    goto :goto_0

    .line 492
    :cond_4
    move-object v2, v1

    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-nez v2, :cond_5

    .line 493
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 494
    :cond_5
    move-object v2, v1

    invoke-virtual {v2}, Ljava/io/File;->isHidden()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 495
    const/4 v2, 0x2

    move v0, v2

    goto :goto_0

    .line 497
    :cond_6
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method private initEncrypter()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/io/CipherOutputStream;
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/io/CipherOutputStream;->zipParameters:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/ZipParameters;->isEncryptFiles()Z

    move-result v1

    if-nez v1, :cond_0

    .line 163
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lnet/lingala/zip4j/io/CipherOutputStream;->encrypter:Lnet/lingala/zip4j/crypto/IEncrypter;

    .line 164
    .line 178
    :goto_0
    return-void

    .line 167
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/io/CipherOutputStream;->zipParameters:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/ZipParameters;->getEncryptionMethod()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 176
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "invalid encprytion method"

    invoke-direct {v2, v3}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 170
    :sswitch_0
    move-object v1, v0

    new-instance v2, Lnet/lingala/zip4j/crypto/StandardEncrypter;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    iget-object v4, v4, Lnet/lingala/zip4j/io/CipherOutputStream;->zipParameters:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/ZipParameters;->getPassword()[C

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lnet/lingala/zip4j/io/CipherOutputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/LocalFileHeader;->getLastModFileTime()I

    move-result v5

    const v6, 0xffff

    and-int/2addr v5, v6

    const/16 v6, 0x10

    shl-int/lit8 v5, v5, 0x10

    invoke-direct {v3, v4, v5}, Lnet/lingala/zip4j/crypto/StandardEncrypter;-><init>([CI)V

    iput-object v2, v1, Lnet/lingala/zip4j/io/CipherOutputStream;->encrypter:Lnet/lingala/zip4j/crypto/IEncrypter;

    .line 171
    .line 178
    :goto_1
    goto :goto_0

    .line 173
    :sswitch_1
    move-object v1, v0

    new-instance v2, Lnet/lingala/zip4j/crypto/AESEncrpyter;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    iget-object v4, v4, Lnet/lingala/zip4j/io/CipherOutputStream;->zipParameters:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/ZipParameters;->getPassword()[C

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lnet/lingala/zip4j/io/CipherOutputStream;->zipParameters:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/ZipParameters;->getAesKeyStrength()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lnet/lingala/zip4j/crypto/AESEncrpyter;-><init>([CI)V

    iput-object v2, v1, Lnet/lingala/zip4j/io/CipherOutputStream;->encrypter:Lnet/lingala/zip4j/crypto/IEncrypter;

    .line 174
    goto :goto_1

    .line 167
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x63 -> :sswitch_1
    .end sparse-switch
.end method

.method private initZipModel(Lnet/lingala/zip4j/model/ZipModel;)V
    .locals 7

    .prologue
    .line 181
    move-object v1, p0

    .local v1, "this":Lnet/lingala/zip4j/io/CipherOutputStream;
    move-object v2, p1

    .local v2, "zipModel":Lnet/lingala/zip4j/model/ZipModel;
    move-object v3, v2

    if-nez v3, :cond_5

    .line 182
    move-object v3, v1

    new-instance v4, Lnet/lingala/zip4j/model/ZipModel;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Lnet/lingala/zip4j/model/ZipModel;-><init>()V

    iput-object v4, v3, Lnet/lingala/zip4j/io/CipherOutputStream;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    .line 187
    :goto_0
    move-object v3, v1

    iget-object v3, v3, Lnet/lingala/zip4j/io/CipherOutputStream;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v3

    if-nez v3, :cond_0

    .line 188
    move-object v3, v1

    iget-object v3, v3, Lnet/lingala/zip4j/io/CipherOutputStream;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    new-instance v4, Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Lnet/lingala/zip4j/model/EndCentralDirRecord;-><init>()V

    invoke-virtual {v3, v4}, Lnet/lingala/zip4j/model/ZipModel;->setEndCentralDirRecord(Lnet/lingala/zip4j/model/EndCentralDirRecord;)V

    .line 190
    :cond_0
    move-object v3, v1

    iget-object v3, v3, Lnet/lingala/zip4j/io/CipherOutputStream;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v3

    if-nez v3, :cond_1

    .line 191
    move-object v3, v1

    iget-object v3, v3, Lnet/lingala/zip4j/io/CipherOutputStream;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    new-instance v4, Lnet/lingala/zip4j/model/CentralDirectory;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Lnet/lingala/zip4j/model/CentralDirectory;-><init>()V

    invoke-virtual {v3, v4}, Lnet/lingala/zip4j/model/ZipModel;->setCentralDirectory(Lnet/lingala/zip4j/model/CentralDirectory;)V

    .line 193
    :cond_1
    move-object v3, v1

    iget-object v3, v3, Lnet/lingala/zip4j/io/CipherOutputStream;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v3

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v3

    if-nez v3, :cond_2

    .line 194
    move-object v3, v1

    iget-object v3, v3, Lnet/lingala/zip4j/io/CipherOutputStream;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v4}, Lnet/lingala/zip4j/model/CentralDirectory;->setFileHeaders(Ljava/util/ArrayList;)V

    .line 196
    :cond_2
    move-object v3, v1

    iget-object v3, v3, Lnet/lingala/zip4j/io/CipherOutputStream;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ZipModel;->getLocalFileHeaderList()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_3

    .line 197
    move-object v3, v1

    iget-object v3, v3, Lnet/lingala/zip4j/io/CipherOutputStream;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    new-instance v4, Ljava/util/ArrayList;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v4}, Lnet/lingala/zip4j/model/ZipModel;->setLocalFileHeaderList(Ljava/util/List;)V

    .line 199
    :cond_3
    move-object v3, v1

    iget-object v3, v3, Lnet/lingala/zip4j/io/CipherOutputStream;->outputStream:Ljava/io/OutputStream;

    instance-of v3, v3, Lnet/lingala/zip4j/io/SplitOutputStream;

    if-eqz v3, :cond_4

    .line 200
    move-object v3, v1

    iget-object v3, v3, Lnet/lingala/zip4j/io/CipherOutputStream;->outputStream:Ljava/io/OutputStream;

    check-cast v3, Lnet/lingala/zip4j/io/SplitOutputStream;

    invoke-virtual {v3}, Lnet/lingala/zip4j/io/SplitOutputStream;->isSplitZipFile()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 201
    move-object v3, v1

    iget-object v3, v3, Lnet/lingala/zip4j/io/CipherOutputStream;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lnet/lingala/zip4j/model/ZipModel;->setSplitArchive(Z)V

    .line 202
    move-object v3, v1

    iget-object v3, v3, Lnet/lingala/zip4j/io/CipherOutputStream;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    move-object v4, v1

    iget-object v4, v4, Lnet/lingala/zip4j/io/CipherOutputStream;->outputStream:Ljava/io/OutputStream;

    check-cast v4, Lnet/lingala/zip4j/io/SplitOutputStream;

    invoke-virtual {v4}, Lnet/lingala/zip4j/io/SplitOutputStream;->getSplitLength()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lnet/lingala/zip4j/model/ZipModel;->setSplitLength(J)V

    .line 206
    :cond_4
    move-object v3, v1

    iget-object v3, v3, Lnet/lingala/zip4j/io/CipherOutputStream;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v3

    const-wide/32 v4, 0x6054b50

    invoke-virtual {v3, v4, v5}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->setSignature(J)V

    .line 207
    return-void

    .line 184
    :cond_5
    move-object v3, v1

    move-object v4, v2

    iput-object v4, v3, Lnet/lingala/zip4j/io/CipherOutputStream;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    goto/16 :goto_0
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 330
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/io/CipherOutputStream;
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/io/CipherOutputStream;->outputStream:Ljava/io/OutputStream;

    if-eqz v1, :cond_0

    .line 331
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/io/CipherOutputStream;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 332
    :cond_0
    return-void
.end method

.method public closeEntry()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 269
    move-object v1, p0

    .local v1, "this":Lnet/lingala/zip4j/io/CipherOutputStream;
    move-object v5, v1

    iget v5, v5, Lnet/lingala/zip4j/io/CipherOutputStream;->pendingBufferLength:I

    if-eqz v5, :cond_0

    .line 270
    move-object v5, v1

    move-object v6, v1

    iget-object v6, v6, Lnet/lingala/zip4j/io/CipherOutputStream;->pendingBuffer:[B

    const/4 v7, 0x0

    move-object v8, v1

    iget v8, v8, Lnet/lingala/zip4j/io/CipherOutputStream;->pendingBufferLength:I

    invoke-direct {v5, v6, v7, v8}, Lnet/lingala/zip4j/io/CipherOutputStream;->encryptAndWrite([BII)V

    .line 271
    move-object v5, v1

    const/4 v6, 0x0

    iput v6, v5, Lnet/lingala/zip4j/io/CipherOutputStream;->pendingBufferLength:I

    .line 274
    :cond_0
    move-object v5, v1

    iget-object v5, v5, Lnet/lingala/zip4j/io/CipherOutputStream;->zipParameters:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/ZipParameters;->isEncryptFiles()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 275
    move-object v5, v1

    iget-object v5, v5, Lnet/lingala/zip4j/io/CipherOutputStream;->zipParameters:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/ZipParameters;->getEncryptionMethod()I

    move-result v5

    const/16 v6, 0x63

    if-ne v5, v6, :cond_1

    .line 276
    move-object v5, v1

    iget-object v5, v5, Lnet/lingala/zip4j/io/CipherOutputStream;->encrypter:Lnet/lingala/zip4j/crypto/IEncrypter;

    instance-of v5, v5, Lnet/lingala/zip4j/crypto/AESEncrpyter;

    if-eqz v5, :cond_4

    .line 277
    move-object v5, v1

    iget-object v5, v5, Lnet/lingala/zip4j/io/CipherOutputStream;->outputStream:Ljava/io/OutputStream;

    move-object v6, v1

    iget-object v6, v6, Lnet/lingala/zip4j/io/CipherOutputStream;->encrypter:Lnet/lingala/zip4j/crypto/IEncrypter;

    check-cast v6, Lnet/lingala/zip4j/crypto/AESEncrpyter;

    invoke-virtual {v6}, Lnet/lingala/zip4j/crypto/AESEncrpyter;->getFinalMac()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/OutputStream;->write([B)V

    .line 278
    move-object v5, v1

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    iget-wide v6, v6, Lnet/lingala/zip4j/io/CipherOutputStream;->bytesWrittenForThisFile:J

    const-wide/16 v8, 0xa

    add-long/2addr v6, v8

    iput-wide v6, v5, Lnet/lingala/zip4j/io/CipherOutputStream;->bytesWrittenForThisFile:J

    .line 279
    move-object v5, v1

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    iget-wide v6, v6, Lnet/lingala/zip4j/io/CipherOutputStream;->totalBytesWritten:J

    const-wide/16 v8, 0xa

    add-long/2addr v6, v8

    iput-wide v6, v5, Lnet/lingala/zip4j/io/CipherOutputStream;->totalBytesWritten:J

    .line 284
    :cond_1
    move-object v5, v1

    iget-object v5, v5, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    move-object v6, v1

    iget-wide v6, v6, Lnet/lingala/zip4j/io/CipherOutputStream;->bytesWrittenForThisFile:J

    invoke-virtual {v5, v6, v7}, Lnet/lingala/zip4j/model/FileHeader;->setCompressedSize(J)V

    .line 285
    move-object v5, v1

    iget-object v5, v5, Lnet/lingala/zip4j/io/CipherOutputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    move-object v6, v1

    iget-wide v6, v6, Lnet/lingala/zip4j/io/CipherOutputStream;->bytesWrittenForThisFile:J

    invoke-virtual {v5, v6, v7}, Lnet/lingala/zip4j/model/LocalFileHeader;->setCompressedSize(J)V

    .line 287
    move-object v5, v1

    iget-object v5, v5, Lnet/lingala/zip4j/io/CipherOutputStream;->zipParameters:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/ZipParameters;->isSourceExternalStream()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 288
    move-object v5, v1

    iget-object v5, v5, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    move-object v6, v1

    iget-wide v6, v6, Lnet/lingala/zip4j/io/CipherOutputStream;->totalBytesRead:J

    invoke-virtual {v5, v6, v7}, Lnet/lingala/zip4j/model/FileHeader;->setUncompressedSize(J)V

    .line 289
    move-object v5, v1

    iget-object v5, v5, Lnet/lingala/zip4j/io/CipherOutputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/LocalFileHeader;->getUncompressedSize()J

    move-result-wide v5

    move-object v7, v1

    iget-wide v7, v7, Lnet/lingala/zip4j/io/CipherOutputStream;->totalBytesRead:J

    cmp-long v5, v5, v7

    if-eqz v5, :cond_2

    .line 290
    move-object v5, v1

    iget-object v5, v5, Lnet/lingala/zip4j/io/CipherOutputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    move-object v6, v1

    iget-wide v6, v6, Lnet/lingala/zip4j/io/CipherOutputStream;->totalBytesRead:J

    invoke-virtual {v5, v6, v7}, Lnet/lingala/zip4j/model/LocalFileHeader;->setUncompressedSize(J)V

    .line 294
    :cond_2
    move-object v5, v1

    iget-object v5, v5, Lnet/lingala/zip4j/io/CipherOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v5}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v5

    move-wide v2, v5

    .line 295
    .local v2, "crc32":J
    move-object v5, v1

    iget-object v5, v5, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/FileHeader;->isEncrypted()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 296
    move-object v5, v1

    iget-object v5, v5, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/FileHeader;->getEncryptionMethod()I

    move-result v5

    const/16 v6, 0x63

    if-ne v5, v6, :cond_3

    .line 297
    const-wide/16 v5, 0x0

    move-wide v2, v5

    .line 301
    :cond_3
    move-object v5, v1

    iget-object v5, v5, Lnet/lingala/zip4j/io/CipherOutputStream;->zipParameters:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/ZipParameters;->isEncryptFiles()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 302
    move-object v5, v1

    iget-object v5, v5, Lnet/lingala/zip4j/io/CipherOutputStream;->zipParameters:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/ZipParameters;->getEncryptionMethod()I

    move-result v5

    const/16 v6, 0x63

    if-ne v5, v6, :cond_5

    .line 303
    move-object v5, v1

    iget-object v5, v5, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    const-wide/16 v6, 0x0

    invoke-virtual {v5, v6, v7}, Lnet/lingala/zip4j/model/FileHeader;->setCrc32(J)V

    .line 304
    move-object v5, v1

    iget-object v5, v5, Lnet/lingala/zip4j/io/CipherOutputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    const-wide/16 v6, 0x0

    invoke-virtual {v5, v6, v7}, Lnet/lingala/zip4j/model/LocalFileHeader;->setCrc32(J)V

    .line 310
    :goto_0
    move-object v5, v1

    iget-object v5, v5, Lnet/lingala/zip4j/io/CipherOutputStream;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/ZipModel;->getLocalFileHeaderList()Ljava/util/List;

    move-result-object v5

    move-object v6, v1

    iget-object v6, v6, Lnet/lingala/zip4j/io/CipherOutputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 311
    move-object v5, v1

    iget-object v5, v5, Lnet/lingala/zip4j/io/CipherOutputStream;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v5

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v5

    move-object v6, v1

    iget-object v6, v6, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 313
    new-instance v5, Lnet/lingala/zip4j/core/HeaderWriter;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    invoke-direct {v6}, Lnet/lingala/zip4j/core/HeaderWriter;-><init>()V

    move-object v4, v5

    .line 314
    .local v4, "headerWriter":Lnet/lingala/zip4j/core/HeaderWriter;
    move-object v5, v1

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    iget-wide v6, v6, Lnet/lingala/zip4j/io/CipherOutputStream;->totalBytesWritten:J

    move-object v8, v4

    move-object v9, v1

    iget-object v9, v9, Lnet/lingala/zip4j/io/CipherOutputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    move-object v10, v1

    iget-object v10, v10, Lnet/lingala/zip4j/io/CipherOutputStream;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v8, v9, v10}, Lnet/lingala/zip4j/core/HeaderWriter;->writeExtendedLocalHeader(Lnet/lingala/zip4j/model/LocalFileHeader;Ljava/io/OutputStream;)I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v6, v8

    iput-wide v6, v5, Lnet/lingala/zip4j/io/CipherOutputStream;->totalBytesWritten:J

    .line 316
    move-object v5, v1

    iget-object v5, v5, Lnet/lingala/zip4j/io/CipherOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v5}, Ljava/util/zip/CRC32;->reset()V

    .line 317
    move-object v5, v1

    const-wide/16 v6, 0x0

    iput-wide v6, v5, Lnet/lingala/zip4j/io/CipherOutputStream;->bytesWrittenForThisFile:J

    .line 318
    move-object v5, v1

    const/4 v6, 0x0

    iput-object v6, v5, Lnet/lingala/zip4j/io/CipherOutputStream;->encrypter:Lnet/lingala/zip4j/crypto/IEncrypter;

    .line 319
    move-object v5, v1

    const-wide/16 v6, 0x0

    iput-wide v6, v5, Lnet/lingala/zip4j/io/CipherOutputStream;->totalBytesRead:J

    .line 320
    return-void

    .line 281
    .end local v2    # "crc32":J
    .end local v4    # "headerWriter":Lnet/lingala/zip4j/core/HeaderWriter;
    :cond_4
    new-instance v5, Lnet/lingala/zip4j/exception/ZipException;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    const-string/jumbo v7, "invalid encrypter for AES encrypted file"

    invoke-direct {v6, v7}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 306
    .restart local v2    # "crc32":J
    :cond_5
    move-object v5, v1

    iget-object v5, v5, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Lnet/lingala/zip4j/model/FileHeader;->setCrc32(J)V

    .line 307
    move-object v5, v1

    iget-object v5, v5, Lnet/lingala/zip4j/io/CipherOutputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Lnet/lingala/zip4j/model/LocalFileHeader;->setCrc32(J)V

    goto :goto_0
.end method

.method public decrementCompressedFileSize(I)V
    .locals 9

    .prologue
    .line 550
    move-object v1, p0

    .local v1, "this":Lnet/lingala/zip4j/io/CipherOutputStream;
    move v2, p1

    .local v2, "value":I
    move v3, v2

    if-gtz v3, :cond_0

    .line 555
    :goto_0
    return-void

    .line 552
    :cond_0
    move v3, v2

    int-to-long v3, v3

    move-object v5, v1

    iget-wide v5, v5, Lnet/lingala/zip4j/io/CipherOutputStream;->bytesWrittenForThisFile:J

    cmp-long v3, v3, v5

    if-gtz v3, :cond_1

    .line 553
    move-object v3, v1

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget-wide v4, v4, Lnet/lingala/zip4j/io/CipherOutputStream;->bytesWrittenForThisFile:J

    move v6, v2

    int-to-long v6, v6

    sub-long/2addr v4, v6

    iput-wide v4, v3, Lnet/lingala/zip4j/io/CipherOutputStream;->bytesWrittenForThisFile:J

    .line 555
    :cond_1
    goto :goto_0
.end method

.method public finish()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 323
    move-object v1, p0

    .local v1, "this":Lnet/lingala/zip4j/io/CipherOutputStream;
    move-object v3, v1

    iget-object v3, v3, Lnet/lingala/zip4j/io/CipherOutputStream;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v3

    move-object v4, v1

    iget-wide v4, v4, Lnet/lingala/zip4j/io/CipherOutputStream;->totalBytesWritten:J

    invoke-virtual {v3, v4, v5}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->setOffsetOfStartOfCentralDir(J)V

    .line 325
    new-instance v3, Lnet/lingala/zip4j/core/HeaderWriter;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lnet/lingala/zip4j/core/HeaderWriter;-><init>()V

    move-object v2, v3

    .line 326
    .local v2, "headerWriter":Lnet/lingala/zip4j/core/HeaderWriter;
    move-object v3, v2

    move-object v4, v1

    iget-object v4, v4, Lnet/lingala/zip4j/io/CipherOutputStream;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    move-object v5, v1

    iget-object v5, v5, Lnet/lingala/zip4j/io/CipherOutputStream;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v3, v4, v5}, Lnet/lingala/zip4j/core/HeaderWriter;->finalizeZipFile(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;)V

    .line 327
    return-void
.end method

.method public getSourceFile()Ljava/io/File;
    .locals 2

    .prologue
    .line 568
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/io/CipherOutputStream;
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/io/CipherOutputStream;->sourceFile:Ljava/io/File;

    move-object v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/io/CipherOutputStream;
    return-object v0
.end method

.method public putNextEntry(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 70
    move-object v1, p0

    .local v1, "this":Lnet/lingala/zip4j/io/CipherOutputStream;
    move-object/from16 v2, p1

    .local v2, "file":Ljava/io/File;
    move-object/from16 v3, p2

    .local v3, "zipParameters":Lnet/lingala/zip4j/model/ZipParameters;
    move-object v7, v3

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/ZipParameters;->isSourceExternalStream()Z

    move-result v7

    if-nez v7, :cond_0

    move-object v7, v2

    if-nez v7, :cond_0

    .line 71
    new-instance v7, Lnet/lingala/zip4j/exception/ZipException;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    const-string/jumbo v9, "input file is null"

    invoke-direct {v8, v9}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 74
    :cond_0
    move-object v7, v3

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/ZipParameters;->isSourceExternalStream()Z

    move-result v7

    if-nez v7, :cond_1

    move-object v7, v2

    invoke-static {v7}, Lnet/lingala/zip4j/util/Zip4jUtil;->checkFileExists(Ljava/io/File;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 75
    new-instance v7, Lnet/lingala/zip4j/exception/ZipException;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    const-string/jumbo v9, "input file does not exist"

    invoke-direct {v8, v9}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 79
    :cond_1
    move-object v7, v1

    move-object v8, v2

    :try_start_0
    iput-object v8, v7, Lnet/lingala/zip4j/io/CipherOutputStream;->sourceFile:Ljava/io/File;

    .line 81
    move-object v7, v1

    move-object v8, v3

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/ZipParameters;->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lnet/lingala/zip4j/model/ZipParameters;

    iput-object v8, v7, Lnet/lingala/zip4j/io/CipherOutputStream;->zipParameters:Lnet/lingala/zip4j/model/ZipParameters;

    .line 83
    move-object v7, v3

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/ZipParameters;->isSourceExternalStream()Z

    move-result v7

    if-nez v7, :cond_6

    .line 84
    move-object v7, v1

    iget-object v7, v7, Lnet/lingala/zip4j/io/CipherOutputStream;->sourceFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 85
    move-object v7, v1

    iget-object v7, v7, Lnet/lingala/zip4j/io/CipherOutputStream;->zipParameters:Lnet/lingala/zip4j/model/ZipParameters;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lnet/lingala/zip4j/model/ZipParameters;->setEncryptFiles(Z)V

    .line 86
    move-object v7, v1

    iget-object v7, v7, Lnet/lingala/zip4j/io/CipherOutputStream;->zipParameters:Lnet/lingala/zip4j/model/ZipParameters;

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Lnet/lingala/zip4j/model/ZipParameters;->setEncryptionMethod(I)V

    .line 87
    move-object v7, v1

    iget-object v7, v7, Lnet/lingala/zip4j/io/CipherOutputStream;->zipParameters:Lnet/lingala/zip4j/model/ZipParameters;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lnet/lingala/zip4j/model/ZipParameters;->setCompressionMethod(I)V

    .line 101
    :cond_2
    :goto_0
    move-object v7, v1

    invoke-direct {v7}, Lnet/lingala/zip4j/io/CipherOutputStream;->createFileHeader()V

    .line 102
    move-object v7, v1

    invoke-direct {v7}, Lnet/lingala/zip4j/io/CipherOutputStream;->createLocalFileHeader()V

    .line 104
    move-object v7, v1

    iget-object v7, v7, Lnet/lingala/zip4j/io/CipherOutputStream;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/ZipModel;->isSplitArchive()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 105
    move-object v7, v1

    iget-object v7, v7, Lnet/lingala/zip4j/io/CipherOutputStream;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 106
    move-object v7, v1

    iget-object v7, v7, Lnet/lingala/zip4j/io/CipherOutputStream;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v7

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 107
    move-object v7, v1

    iget-object v7, v7, Lnet/lingala/zip4j/io/CipherOutputStream;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v7

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_4

    .line 108
    :cond_3
    const/4 v7, 0x4

    new-array v7, v7, [B

    move-object v4, v7

    .line 109
    .local v4, "intByte":[B
    move-object v7, v4

    const/4 v8, 0x0

    const v9, 0x8074b50

    invoke-static {v7, v8, v9}, Lnet/lingala/zip4j/util/Raw;->writeIntLittleEndian([BII)V

    .line 110
    move-object v7, v1

    iget-object v7, v7, Lnet/lingala/zip4j/io/CipherOutputStream;->outputStream:Ljava/io/OutputStream;

    move-object v8, v4

    invoke-virtual {v7, v8}, Ljava/io/OutputStream;->write([B)V

    .line 111
    move-object v7, v1

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    iget-wide v8, v8, Lnet/lingala/zip4j/io/CipherOutputStream;->totalBytesWritten:J

    const-wide/16 v10, 0x4

    add-long/2addr v8, v10

    iput-wide v8, v7, Lnet/lingala/zip4j/io/CipherOutputStream;->totalBytesWritten:J

    .line 115
    .end local v4    # "intByte":[B
    :cond_4
    move-object v7, v1

    iget-object v7, v7, Lnet/lingala/zip4j/io/CipherOutputStream;->outputStream:Ljava/io/OutputStream;

    instance-of v7, v7, Lnet/lingala/zip4j/io/SplitOutputStream;

    if-eqz v7, :cond_a

    .line 116
    move-object v7, v1

    iget-wide v7, v7, Lnet/lingala/zip4j/io/CipherOutputStream;->totalBytesWritten:J

    const-wide/16 v9, 0x4

    cmp-long v7, v7, v9

    if-nez v7, :cond_9

    .line 117
    move-object v7, v1

    iget-object v7, v7, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    const-wide/16 v8, 0x4

    invoke-virtual {v7, v8, v9}, Lnet/lingala/zip4j/model/FileHeader;->setOffsetLocalHeader(J)V

    .line 129
    :goto_1
    new-instance v7, Lnet/lingala/zip4j/core/HeaderWriter;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    invoke-direct {v8}, Lnet/lingala/zip4j/core/HeaderWriter;-><init>()V

    move-object v4, v7

    .line 130
    .local v4, "headerWriter":Lnet/lingala/zip4j/core/HeaderWriter;
    move-object v7, v1

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    iget-wide v8, v8, Lnet/lingala/zip4j/io/CipherOutputStream;->totalBytesWritten:J

    move-object v10, v4

    move-object v11, v1

    iget-object v11, v11, Lnet/lingala/zip4j/io/CipherOutputStream;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    move-object v12, v1

    iget-object v12, v12, Lnet/lingala/zip4j/io/CipherOutputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    move-object v13, v1

    iget-object v13, v13, Lnet/lingala/zip4j/io/CipherOutputStream;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v10, v11, v12, v13}, Lnet/lingala/zip4j/core/HeaderWriter;->writeLocalFileHeader(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/model/LocalFileHeader;Ljava/io/OutputStream;)I

    move-result v10

    int-to-long v10, v10

    add-long/2addr v8, v10

    iput-wide v8, v7, Lnet/lingala/zip4j/io/CipherOutputStream;->totalBytesWritten:J

    .line 132
    move-object v7, v1

    iget-object v7, v7, Lnet/lingala/zip4j/io/CipherOutputStream;->zipParameters:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/ZipParameters;->isEncryptFiles()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 133
    move-object v7, v1

    invoke-direct {v7}, Lnet/lingala/zip4j/io/CipherOutputStream;->initEncrypter()V

    .line 134
    move-object v7, v1

    iget-object v7, v7, Lnet/lingala/zip4j/io/CipherOutputStream;->encrypter:Lnet/lingala/zip4j/crypto/IEncrypter;

    if-eqz v7, :cond_5

    .line 135
    move-object v7, v3

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/ZipParameters;->getEncryptionMethod()I

    move-result v7

    if-nez v7, :cond_c

    .line 136
    move-object v7, v1

    iget-object v7, v7, Lnet/lingala/zip4j/io/CipherOutputStream;->encrypter:Lnet/lingala/zip4j/crypto/IEncrypter;

    check-cast v7, Lnet/lingala/zip4j/crypto/StandardEncrypter;

    invoke-virtual {v7}, Lnet/lingala/zip4j/crypto/StandardEncrypter;->getHeaderBytes()[B

    move-result-object v7

    move-object v5, v7

    .line 137
    .local v5, "headerBytes":[B
    move-object v7, v1

    iget-object v7, v7, Lnet/lingala/zip4j/io/CipherOutputStream;->outputStream:Ljava/io/OutputStream;

    move-object v8, v5

    invoke-virtual {v7, v8}, Ljava/io/OutputStream;->write([B)V

    .line 138
    move-object v7, v1

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    iget-wide v8, v8, Lnet/lingala/zip4j/io/CipherOutputStream;->totalBytesWritten:J

    move-object v10, v5

    array-length v10, v10

    int-to-long v10, v10

    add-long/2addr v8, v10

    iput-wide v8, v7, Lnet/lingala/zip4j/io/CipherOutputStream;->totalBytesWritten:J

    .line 139
    move-object v7, v1

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    iget-wide v8, v8, Lnet/lingala/zip4j/io/CipherOutputStream;->bytesWrittenForThisFile:J

    move-object v10, v5

    array-length v10, v10

    int-to-long v10, v10

    add-long/2addr v8, v10

    iput-wide v8, v7, Lnet/lingala/zip4j/io/CipherOutputStream;->bytesWrittenForThisFile:J

    .line 151
    .end local v5    # "headerBytes":[B
    :cond_5
    :goto_2
    move-object v7, v1

    iget-object v7, v7, Lnet/lingala/zip4j/io/CipherOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v7}, Ljava/util/zip/CRC32;->reset()V

    .line 159
    return-void

    .line 90
    .end local v4    # "headerWriter":Lnet/lingala/zip4j/core/HeaderWriter;
    :cond_6
    move-object v7, v1

    iget-object v7, v7, Lnet/lingala/zip4j/io/CipherOutputStream;->zipParameters:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/ZipParameters;->getFileNameInZip()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 91
    new-instance v7, Lnet/lingala/zip4j/exception/ZipException;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    const-string/jumbo v9, "file name is empty for external stream"

    invoke-direct {v8, v9}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 152
    :catch_0
    move-exception v7

    move-object v4, v7

    .line 153
    .local v4, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v7, Lnet/lingala/zip4j/exception/ZipException;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move-object v9, v4

    invoke-direct {v8, v9}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 93
    .end local v4    # "e":Ljava/lang/CloneNotSupportedException;
    :cond_7
    move-object v7, v1

    :try_start_1
    iget-object v7, v7, Lnet/lingala/zip4j/io/CipherOutputStream;->zipParameters:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/ZipParameters;->getFileNameInZip()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 94
    move-object v7, v1

    iget-object v7, v7, Lnet/lingala/zip4j/io/CipherOutputStream;->zipParameters:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/ZipParameters;->getFileNameInZip()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "\\"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 95
    :cond_8
    move-object v7, v1

    iget-object v7, v7, Lnet/lingala/zip4j/io/CipherOutputStream;->zipParameters:Lnet/lingala/zip4j/model/ZipParameters;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lnet/lingala/zip4j/model/ZipParameters;->setEncryptFiles(Z)V

    .line 96
    move-object v7, v1

    iget-object v7, v7, Lnet/lingala/zip4j/io/CipherOutputStream;->zipParameters:Lnet/lingala/zip4j/model/ZipParameters;

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Lnet/lingala/zip4j/model/ZipParameters;->setEncryptionMethod(I)V

    .line 97
    move-object v7, v1

    iget-object v7, v7, Lnet/lingala/zip4j/io/CipherOutputStream;->zipParameters:Lnet/lingala/zip4j/model/ZipParameters;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lnet/lingala/zip4j/model/ZipParameters;->setCompressionMethod(I)V
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    .line 154
    :catch_1
    move-exception v7

    move-object v4, v7

    .line 155
    .local v4, "e":Lnet/lingala/zip4j/exception/ZipException;
    move-object v7, v4

    throw v7

    .line 119
    .end local v4    # "e":Lnet/lingala/zip4j/exception/ZipException;
    :cond_9
    move-object v7, v1

    :try_start_2
    iget-object v7, v7, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    move-object v8, v1

    iget-object v8, v8, Lnet/lingala/zip4j/io/CipherOutputStream;->outputStream:Ljava/io/OutputStream;

    check-cast v8, Lnet/lingala/zip4j/io/SplitOutputStream;

    invoke-virtual {v8}, Lnet/lingala/zip4j/io/SplitOutputStream;->getFilePointer()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lnet/lingala/zip4j/model/FileHeader;->setOffsetLocalHeader(J)V

    goto/16 :goto_1

    .line 122
    :cond_a
    move-object v7, v1

    iget-wide v7, v7, Lnet/lingala/zip4j/io/CipherOutputStream;->totalBytesWritten:J

    const-wide/16 v9, 0x4

    cmp-long v7, v7, v9

    if-nez v7, :cond_b

    .line 123
    move-object v7, v1

    iget-object v7, v7, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    const-wide/16 v8, 0x4

    invoke-virtual {v7, v8, v9}, Lnet/lingala/zip4j/model/FileHeader;->setOffsetLocalHeader(J)V

    goto/16 :goto_1

    .line 125
    :cond_b
    move-object v7, v1

    iget-object v7, v7, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    move-object v8, v1

    iget-wide v8, v8, Lnet/lingala/zip4j/io/CipherOutputStream;->totalBytesWritten:J

    invoke-virtual {v7, v8, v9}, Lnet/lingala/zip4j/model/FileHeader;->setOffsetLocalHeader(J)V
    :try_end_2
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    .line 156
    :catch_2
    move-exception v7

    move-object v4, v7

    .line 157
    .local v4, "e":Ljava/lang/Exception;
    new-instance v7, Lnet/lingala/zip4j/exception/ZipException;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move-object v9, v4

    invoke-direct {v8, v9}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 140
    .local v4, "headerWriter":Lnet/lingala/zip4j/core/HeaderWriter;
    :cond_c
    move-object v7, v3

    :try_start_3
    invoke-virtual {v7}, Lnet/lingala/zip4j/model/ZipParameters;->getEncryptionMethod()I

    move-result v7

    const/16 v8, 0x63

    if-ne v7, v8, :cond_5

    .line 141
    move-object v7, v1

    iget-object v7, v7, Lnet/lingala/zip4j/io/CipherOutputStream;->encrypter:Lnet/lingala/zip4j/crypto/IEncrypter;

    check-cast v7, Lnet/lingala/zip4j/crypto/AESEncrpyter;

    invoke-virtual {v7}, Lnet/lingala/zip4j/crypto/AESEncrpyter;->getSaltBytes()[B

    move-result-object v7

    move-object v5, v7

    .line 142
    .local v5, "saltBytes":[B
    move-object v7, v1

    iget-object v7, v7, Lnet/lingala/zip4j/io/CipherOutputStream;->encrypter:Lnet/lingala/zip4j/crypto/IEncrypter;

    check-cast v7, Lnet/lingala/zip4j/crypto/AESEncrpyter;

    invoke-virtual {v7}, Lnet/lingala/zip4j/crypto/AESEncrpyter;->getDerivedPasswordVerifier()[B

    move-result-object v7

    move-object v6, v7

    .line 143
    .local v6, "passwordVerifier":[B
    move-object v7, v1

    iget-object v7, v7, Lnet/lingala/zip4j/io/CipherOutputStream;->outputStream:Ljava/io/OutputStream;

    move-object v8, v5

    invoke-virtual {v7, v8}, Ljava/io/OutputStream;->write([B)V

    .line 144
    move-object v7, v1

    iget-object v7, v7, Lnet/lingala/zip4j/io/CipherOutputStream;->outputStream:Ljava/io/OutputStream;

    move-object v8, v6

    invoke-virtual {v7, v8}, Ljava/io/OutputStream;->write([B)V

    .line 145
    move-object v7, v1

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    iget-wide v8, v8, Lnet/lingala/zip4j/io/CipherOutputStream;->totalBytesWritten:J

    move-object v10, v5

    array-length v10, v10

    move-object v11, v6

    array-length v11, v11

    add-int/2addr v10, v11

    int-to-long v10, v10

    add-long/2addr v8, v10

    iput-wide v8, v7, Lnet/lingala/zip4j/io/CipherOutputStream;->totalBytesWritten:J

    .line 146
    move-object v7, v1

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    iget-wide v8, v8, Lnet/lingala/zip4j/io/CipherOutputStream;->bytesWrittenForThisFile:J

    move-object v10, v5

    array-length v10, v10

    move-object v11, v6

    array-length v11, v11

    add-int/2addr v10, v11

    int-to-long v10, v10

    add-long/2addr v8, v10

    iput-wide v8, v7, Lnet/lingala/zip4j/io/CipherOutputStream;->bytesWrittenForThisFile:J
    :try_end_3
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_2
.end method

.method public setSourceFile(Ljava/io/File;)V
    .locals 4

    .prologue
    .line 564
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/io/CipherOutputStream;
    move-object v1, p1

    .local v1, "sourceFile":Ljava/io/File;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lnet/lingala/zip4j/io/CipherOutputStream;->sourceFile:Ljava/io/File;

    .line 565
    return-void
.end method

.method protected updateTotalBytesRead(I)V
    .locals 9

    .prologue
    .line 558
    move-object v1, p0

    .local v1, "this":Lnet/lingala/zip4j/io/CipherOutputStream;
    move v2, p1

    .local v2, "toUpdate":I
    move v3, v2

    if-lez v3, :cond_0

    .line 559
    move-object v3, v1

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget-wide v4, v4, Lnet/lingala/zip4j/io/CipherOutputStream;->totalBytesRead:J

    move v6, v2

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, v3, Lnet/lingala/zip4j/io/CipherOutputStream;->totalBytesRead:J

    .line 561
    :cond_0
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
    .line 210
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/io/CipherOutputStream;
    move v1, p1

    .local v1, "bval":I
    const/4 v3, 0x1

    new-array v3, v3, [B

    move-object v2, v3

    .line 211
    .local v2, "b":[B
    move-object v3, v2

    const/4 v4, 0x0

    move v5, v1

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 212
    move-object v3, v0

    move-object v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Lnet/lingala/zip4j/io/CipherOutputStream;->write([BII)V

    .line 213
    return-void
.end method

.method public write([B)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 216
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/io/CipherOutputStream;
    move-object v1, p1

    .local v1, "b":[B
    move-object v2, v1

    if-nez v2, :cond_0

    .line 217
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 219
    :cond_0
    move-object v2, v1

    array-length v2, v2

    if-nez v2, :cond_1

    .line 222
    :goto_0
    return-void

    .line 221
    :cond_1
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    move-object v5, v1

    array-length v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lnet/lingala/zip4j/io/CipherOutputStream;->write([BII)V

    .line 222
    goto :goto_0
.end method

.method public write([BII)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 225
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/io/CipherOutputStream;
    move-object v1, p1

    .local v1, "b":[B
    move v2, p2

    .local v2, "off":I
    move v3, p3

    .local v3, "len":I
    move v4, v3

    if-nez v4, :cond_0

    .line 252
    :goto_0
    return-void

    .line 227
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lnet/lingala/zip4j/io/CipherOutputStream;->zipParameters:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/ZipParameters;->isEncryptFiles()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 228
    move-object v4, v0

    iget-object v4, v4, Lnet/lingala/zip4j/io/CipherOutputStream;->zipParameters:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/ZipParameters;->getEncryptionMethod()I

    move-result v4

    const/16 v5, 0x63

    if-ne v4, v5, :cond_2

    .line 229
    move-object v4, v0

    iget v4, v4, Lnet/lingala/zip4j/io/CipherOutputStream;->pendingBufferLength:I

    if-eqz v4, :cond_1

    .line 230
    move v4, v3

    const/16 v5, 0x10

    move-object v6, v0

    iget v6, v6, Lnet/lingala/zip4j/io/CipherOutputStream;->pendingBufferLength:I

    rsub-int/lit8 v5, v6, 0x10

    if-lt v4, v5, :cond_4

    .line 231
    move-object v4, v1

    move v5, v2

    move-object v6, v0

    iget-object v6, v6, Lnet/lingala/zip4j/io/CipherOutputStream;->pendingBuffer:[B

    move-object v7, v0

    iget v7, v7, Lnet/lingala/zip4j/io/CipherOutputStream;->pendingBufferLength:I

    .line 232
    const/16 v8, 0x10

    move-object v9, v0

    iget v9, v9, Lnet/lingala/zip4j/io/CipherOutputStream;->pendingBufferLength:I

    rsub-int/lit8 v8, v9, 0x10

    .line 231
    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 233
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lnet/lingala/zip4j/io/CipherOutputStream;->pendingBuffer:[B

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Lnet/lingala/zip4j/io/CipherOutputStream;->pendingBuffer:[B

    array-length v7, v7

    invoke-direct {v4, v5, v6, v7}, Lnet/lingala/zip4j/io/CipherOutputStream;->encryptAndWrite([BII)V

    .line 234
    const/16 v4, 0x10

    move-object v5, v0

    iget v5, v5, Lnet/lingala/zip4j/io/CipherOutputStream;->pendingBufferLength:I

    rsub-int/lit8 v4, v5, 0x10

    move v2, v4

    .line 235
    move v4, v3

    move v5, v2

    sub-int/2addr v4, v5

    move v3, v4

    .line 236
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Lnet/lingala/zip4j/io/CipherOutputStream;->pendingBufferLength:I

    .line 244
    :cond_1
    move v4, v3

    if-eqz v4, :cond_2

    move v4, v3

    const/16 v5, 0x10

    rem-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_2

    .line 245
    move-object v4, v1

    move v5, v3

    move v6, v2

    add-int/2addr v5, v6

    move v6, v3

    const/16 v7, 0x10

    rem-int/lit8 v6, v6, 0x10

    sub-int/2addr v5, v6

    move-object v6, v0

    iget-object v6, v6, Lnet/lingala/zip4j/io/CipherOutputStream;->pendingBuffer:[B

    const/4 v7, 0x0

    move v8, v3

    const/16 v9, 0x10

    rem-int/lit8 v8, v8, 0x10

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 246
    move-object v4, v0

    move v5, v3

    const/16 v6, 0x10

    rem-int/lit8 v5, v5, 0x10

    iput v5, v4, Lnet/lingala/zip4j/io/CipherOutputStream;->pendingBufferLength:I

    .line 247
    move v4, v3

    move-object v5, v0

    iget v5, v5, Lnet/lingala/zip4j/io/CipherOutputStream;->pendingBufferLength:I

    sub-int/2addr v4, v5

    move v3, v4

    .line 250
    :cond_2
    move v4, v3

    if-eqz v4, :cond_3

    .line 251
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-direct {v4, v5, v6, v7}, Lnet/lingala/zip4j/io/CipherOutputStream;->encryptAndWrite([BII)V

    .line 252
    :cond_3
    goto/16 :goto_0

    .line 238
    :cond_4
    move-object v4, v1

    move v5, v2

    move-object v6, v0

    iget-object v6, v6, Lnet/lingala/zip4j/io/CipherOutputStream;->pendingBuffer:[B

    move-object v7, v0

    iget v7, v7, Lnet/lingala/zip4j/io/CipherOutputStream;->pendingBufferLength:I

    .line 239
    move v8, v3

    .line 238
    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 240
    move-object v4, v0

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    iget v5, v5, Lnet/lingala/zip4j/io/CipherOutputStream;->pendingBufferLength:I

    move v6, v3

    add-int/2addr v5, v6

    iput v5, v4, Lnet/lingala/zip4j/io/CipherOutputStream;->pendingBufferLength:I

    .line 241
    goto/16 :goto_0
.end method
