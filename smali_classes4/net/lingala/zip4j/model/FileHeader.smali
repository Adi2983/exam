.class public Lnet/lingala/zip4j/model/FileHeader;
.super Ljava/lang/Object;
.source "FileHeader.java"


# instance fields
.field private aesExtraDataRecord:Lnet/lingala/zip4j/model/AESExtraDataRecord;

.field private compressedSize:J

.field private compressionMethod:I

.field private crc32:J

.field private crcBuff:[B

.field private dataDescriptorExists:Z

.field private diskNumberStart:I

.field private encryptionMethod:I

.field private externalFileAttr:[B

.field private extraDataRecords:Ljava/util/ArrayList;

.field private extraFieldLength:I

.field private fileComment:Ljava/lang/String;

.field private fileCommentLength:I

.field private fileName:Ljava/lang/String;

.field private fileNameLength:I

.field private fileNameUTF8Encoded:Z

.field private generalPurposeFlag:[B

.field private internalFileAttr:[B

.field private isDirectory:Z

.field private isEncrypted:Z

.field private lastModFileTime:I

.field private offsetLocalHeader:J

.field private password:[C

.field private signature:I

.field private uncompressedSize:J

.field private versionMadeBy:I

.field private versionNeededToExtract:I

.field private zip64ExtendedInfo:Lnet/lingala/zip4j/model/Zip64ExtendedInfo;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/FileHeader;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 85
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Lnet/lingala/zip4j/model/FileHeader;->encryptionMethod:I

    .line 86
    move-object v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lnet/lingala/zip4j/model/FileHeader;->crc32:J

    .line 87
    move-object v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lnet/lingala/zip4j/model/FileHeader;->uncompressedSize:J

    .line 88
    return-void
.end method


# virtual methods
.method public extractFile(Lnet/lingala/zip4j/model/ZipModel;Ljava/lang/String;Lnet/lingala/zip4j/model/UnzipParameters;Ljava/lang/String;Lnet/lingala/zip4j/progress/ProgressMonitor;Z)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 280
    move-object/from16 v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/FileHeader;
    move-object/from16 v1, p1

    .local v1, "zipModel":Lnet/lingala/zip4j/model/ZipModel;
    move-object/from16 v2, p2

    .local v2, "outPath":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "unzipParameters":Lnet/lingala/zip4j/model/UnzipParameters;
    move-object/from16 v4, p4

    .local v4, "newFileName":Ljava/lang/String;
    move-object/from16 v5, p5

    .local v5, "progressMonitor":Lnet/lingala/zip4j/progress/ProgressMonitor;
    move/from16 v6, p6

    .local v6, "runInThread":Z
    move-object v8, v1

    if-nez v8, :cond_0

    .line 281
    new-instance v8, Lnet/lingala/zip4j/exception/ZipException;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    const-string/jumbo v10, "input zipModel is null"

    invoke-direct {v9, v10}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 284
    :cond_0
    move-object v8, v2

    invoke-static {v8}, Lnet/lingala/zip4j/util/Zip4jUtil;->checkOutputFolder(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 285
    new-instance v8, Lnet/lingala/zip4j/exception/ZipException;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    const-string/jumbo v10, "Invalid output path"

    invoke-direct {v9, v10}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 288
    :cond_1
    move-object v8, v0

    if-nez v8, :cond_2

    .line 289
    new-instance v8, Lnet/lingala/zip4j/exception/ZipException;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    const-string/jumbo v10, "invalid file header"

    invoke-direct {v9, v10}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 291
    :cond_2
    new-instance v8, Lnet/lingala/zip4j/unzip/Unzip;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    move-object v10, v1

    invoke-direct {v9, v10}, Lnet/lingala/zip4j/unzip/Unzip;-><init>(Lnet/lingala/zip4j/model/ZipModel;)V

    move-object v7, v8

    .line 292
    .local v7, "unzip":Lnet/lingala/zip4j/unzip/Unzip;
    move-object v8, v7

    move-object v9, v0

    move-object v10, v2

    move-object v11, v3

    move-object v12, v4

    move-object v13, v5

    move v14, v6

    invoke-virtual/range {v8 .. v14}, Lnet/lingala/zip4j/unzip/Unzip;->extractFile(Lnet/lingala/zip4j/model/FileHeader;Ljava/lang/String;Lnet/lingala/zip4j/model/UnzipParameters;Ljava/lang/String;Lnet/lingala/zip4j/progress/ProgressMonitor;Z)V

    .line 293
    return-void
.end method

.method public extractFile(Lnet/lingala/zip4j/model/ZipModel;Ljava/lang/String;Lnet/lingala/zip4j/model/UnzipParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;Z)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 263
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/FileHeader;
    move-object v1, p1

    .local v1, "zipModel":Lnet/lingala/zip4j/model/ZipModel;
    move-object v2, p2

    .local v2, "outPath":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "unzipParameters":Lnet/lingala/zip4j/model/UnzipParameters;
    move-object/from16 v4, p4

    .local v4, "progressMonitor":Lnet/lingala/zip4j/progress/ProgressMonitor;
    move/from16 v5, p5

    .local v5, "runInThread":Z
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    const/4 v10, 0x0

    move-object v11, v4

    move v12, v5

    invoke-virtual/range {v6 .. v12}, Lnet/lingala/zip4j/model/FileHeader;->extractFile(Lnet/lingala/zip4j/model/ZipModel;Ljava/lang/String;Lnet/lingala/zip4j/model/UnzipParameters;Ljava/lang/String;Lnet/lingala/zip4j/progress/ProgressMonitor;Z)V

    .line 264
    return-void
.end method

.method public extractFile(Lnet/lingala/zip4j/model/ZipModel;Ljava/lang/String;Lnet/lingala/zip4j/progress/ProgressMonitor;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 250
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/FileHeader;
    move-object v1, p1

    .local v1, "zipModel":Lnet/lingala/zip4j/model/ZipModel;
    move-object v2, p2

    .local v2, "outPath":Ljava/lang/String;
    move-object v3, p3

    .local v3, "progressMonitor":Lnet/lingala/zip4j/progress/ProgressMonitor;
    move v4, p4

    .local v4, "runInThread":Z
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    const/4 v8, 0x0

    move-object v9, v3

    move v10, v4

    invoke-virtual/range {v5 .. v10}, Lnet/lingala/zip4j/model/FileHeader;->extractFile(Lnet/lingala/zip4j/model/ZipModel;Ljava/lang/String;Lnet/lingala/zip4j/model/UnzipParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;Z)V

    .line 251
    return-void
.end method

.method public getAesExtraDataRecord()Lnet/lingala/zip4j/model/AESExtraDataRecord;
    .locals 2

    .prologue
    .line 352
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/FileHeader;
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/model/FileHeader;->aesExtraDataRecord:Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-object v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/FileHeader;
    return-object v0
.end method

.method public getCompressedSize()J
    .locals 3

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/FileHeader;
    move-object v1, v0

    iget-wide v1, v1, Lnet/lingala/zip4j/model/FileHeader;->compressedSize:J

    move-wide v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/FileHeader;
    return-wide v0
.end method

.method public getCompressionMethod()I
    .locals 2

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/FileHeader;
    move-object v1, v0

    iget v1, v1, Lnet/lingala/zip4j/model/FileHeader;->compressionMethod:I

    move v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/FileHeader;
    return v0
.end method

.method public getCrc32()J
    .locals 6

    .prologue
    .line 139
    move-object v1, p0

    .local v1, "this":Lnet/lingala/zip4j/model/FileHeader;
    move-object v2, v1

    iget-wide v2, v2, Lnet/lingala/zip4j/model/FileHeader;->crc32:J

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    move-wide v1, v2

    .end local v1    # "this":Lnet/lingala/zip4j/model/FileHeader;
    return-wide v1
.end method

.method public getCrcBuff()[B
    .locals 2

    .prologue
    .line 320
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/FileHeader;
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/model/FileHeader;->crcBuff:[B

    move-object v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/FileHeader;
    return-object v0
.end method

.method public getDiskNumberStart()I
    .locals 2

    .prologue
    .line 187
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/FileHeader;
    move-object v1, v0

    iget v1, v1, Lnet/lingala/zip4j/model/FileHeader;->diskNumberStart:I

    move v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/FileHeader;
    return v0
.end method

.method public getEncryptionMethod()I
    .locals 2

    .prologue
    .line 304
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/FileHeader;
    move-object v1, v0

    iget v1, v1, Lnet/lingala/zip4j/model/FileHeader;->encryptionMethod:I

    move v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/FileHeader;
    return v0
.end method

.method public getExternalFileAttr()[B
    .locals 2

    .prologue
    .line 203
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/FileHeader;
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/model/FileHeader;->externalFileAttr:[B

    move-object v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/FileHeader;
    return-object v0
.end method

.method public getExtraDataRecords()Ljava/util/ArrayList;
    .locals 2

    .prologue
    .line 328
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/FileHeader;
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/model/FileHeader;->extraDataRecords:Ljava/util/ArrayList;

    move-object v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/FileHeader;
    return-object v0
.end method

.method public getExtraFieldLength()I
    .locals 2

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/FileHeader;
    move-object v1, v0

    iget v1, v1, Lnet/lingala/zip4j/model/FileHeader;->extraFieldLength:I

    move v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/FileHeader;
    return v0
.end method

.method public getFileComment()Ljava/lang/String;
    .locals 2

    .prologue
    .line 227
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/FileHeader;
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/model/FileHeader;->fileComment:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/FileHeader;
    return-object v0
.end method

.method public getFileCommentLength()I
    .locals 2

    .prologue
    .line 179
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/FileHeader;
    move-object v1, v0

    iget v1, v1, Lnet/lingala/zip4j/model/FileHeader;->fileCommentLength:I

    move v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/FileHeader;
    return v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 219
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/FileHeader;
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/model/FileHeader;->fileName:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/FileHeader;
    return-object v0
.end method

.method public getFileNameLength()I
    .locals 2

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/FileHeader;
    move-object v1, v0

    iget v1, v1, Lnet/lingala/zip4j/model/FileHeader;->fileNameLength:I

    move v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/FileHeader;
    return v0
.end method

.method public getGeneralPurposeFlag()[B
    .locals 2

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/FileHeader;
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/model/FileHeader;->generalPurposeFlag:[B

    move-object v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/FileHeader;
    return-object v0
.end method

.method public getInternalFileAttr()[B
    .locals 2

    .prologue
    .line 195
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/FileHeader;
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/model/FileHeader;->internalFileAttr:[B

    move-object v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/FileHeader;
    return-object v0
.end method

.method public getLastModFileTime()I
    .locals 2

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/FileHeader;
    move-object v1, v0

    iget v1, v1, Lnet/lingala/zip4j/model/FileHeader;->lastModFileTime:I

    move v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/FileHeader;
    return v0
.end method

.method public getOffsetLocalHeader()J
    .locals 3

    .prologue
    .line 211
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/FileHeader;
    move-object v1, v0

    iget-wide v1, v1, Lnet/lingala/zip4j/model/FileHeader;->offsetLocalHeader:J

    move-wide v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/FileHeader;
    return-wide v0
.end method

.method public getPassword()[C
    .locals 2

    .prologue
    .line 312
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/FileHeader;
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/model/FileHeader;->password:[C

    move-object v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/FileHeader;
    return-object v0
.end method

.method public getSignature()I
    .locals 2

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/FileHeader;
    move-object v1, v0

    iget v1, v1, Lnet/lingala/zip4j/model/FileHeader;->signature:I

    move v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/FileHeader;
    return v0
.end method

.method public getUncompressedSize()J
    .locals 3

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/FileHeader;
    move-object v1, v0

    iget-wide v1, v1, Lnet/lingala/zip4j/model/FileHeader;->uncompressedSize:J

    move-wide v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/FileHeader;
    return-wide v0
.end method

.method public getVersionMadeBy()I
    .locals 2

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/FileHeader;
    move-object v1, v0

    iget v1, v1, Lnet/lingala/zip4j/model/FileHeader;->versionMadeBy:I

    move v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/FileHeader;
    return v0
.end method

.method public getVersionNeededToExtract()I
    .locals 2

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/FileHeader;
    move-object v1, v0

    iget v1, v1, Lnet/lingala/zip4j/model/FileHeader;->versionNeededToExtract:I

    move v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/FileHeader;
    return v0
.end method

.method public getZip64ExtendedInfo()Lnet/lingala/zip4j/model/Zip64ExtendedInfo;
    .locals 2

    .prologue
    .line 344
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/FileHeader;
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/model/FileHeader;->zip64ExtendedInfo:Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    move-object v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/FileHeader;
    return-object v0
.end method

.method public isDataDescriptorExists()Z
    .locals 2

    .prologue
    .line 336
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/FileHeader;
    move-object v1, v0

    iget-boolean v1, v1, Lnet/lingala/zip4j/model/FileHeader;->dataDescriptorExists:Z

    move v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/FileHeader;
    return v0
.end method

.method public isDirectory()Z
    .locals 2

    .prologue
    .line 235
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/FileHeader;
    move-object v1, v0

    iget-boolean v1, v1, Lnet/lingala/zip4j/model/FileHeader;->isDirectory:Z

    move v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/FileHeader;
    return v0
.end method

.method public isEncrypted()Z
    .locals 2

    .prologue
    .line 296
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/FileHeader;
    move-object v1, v0

    iget-boolean v1, v1, Lnet/lingala/zip4j/model/FileHeader;->isEncrypted:Z

    move v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/FileHeader;
    return v0
.end method

.method public isFileNameUTF8Encoded()Z
    .locals 2

    .prologue
    .line 360
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/FileHeader;
    move-object v1, v0

    iget-boolean v1, v1, Lnet/lingala/zip4j/model/FileHeader;->fileNameUTF8Encoded:Z

    move v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/FileHeader;
    return v0
.end method

.method public setAesExtraDataRecord(Lnet/lingala/zip4j/model/AESExtraDataRecord;)V
    .locals 4

    .prologue
    .line 356
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/FileHeader;
    move-object v1, p1

    .local v1, "aesExtraDataRecord":Lnet/lingala/zip4j/model/AESExtraDataRecord;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lnet/lingala/zip4j/model/FileHeader;->aesExtraDataRecord:Lnet/lingala/zip4j/model/AESExtraDataRecord;

    .line 357
    return-void
.end method

.method public setCompressedSize(J)V
    .locals 7

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/FileHeader;
    move-wide v1, p1

    .local v1, "compressedSize":J
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lnet/lingala/zip4j/model/FileHeader;->compressedSize:J

    .line 152
    return-void
.end method

.method public setCompressionMethod(I)V
    .locals 4

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/FileHeader;
    move v1, p1

    .local v1, "compressionMethod":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lnet/lingala/zip4j/model/FileHeader;->compressionMethod:I

    .line 128
    return-void
.end method

.method public setCrc32(J)V
    .locals 7

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/FileHeader;
    move-wide v1, p1

    .local v1, "crc32":J
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lnet/lingala/zip4j/model/FileHeader;->crc32:J

    .line 144
    return-void
.end method

.method public setCrcBuff([B)V
    .locals 4

    .prologue
    .line 324
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/FileHeader;
    move-object v1, p1

    .local v1, "crcBuff":[B
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lnet/lingala/zip4j/model/FileHeader;->crcBuff:[B

    .line 325
    return-void
.end method

.method public setDataDescriptorExists(Z)V
    .locals 4

    .prologue
    .line 340
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/FileHeader;
    move v1, p1

    .local v1, "dataDescriptorExists":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lnet/lingala/zip4j/model/FileHeader;->dataDescriptorExists:Z

    .line 341
    return-void
.end method

.method public setDirectory(Z)V
    .locals 4

    .prologue
    .line 239
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/FileHeader;
    move v1, p1

    .local v1, "isDirectory":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lnet/lingala/zip4j/model/FileHeader;->isDirectory:Z

    .line 240
    return-void
.end method

.method public setDiskNumberStart(I)V
    .locals 4

    .prologue
    .line 191
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/FileHeader;
    move v1, p1

    .local v1, "diskNumberStart":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lnet/lingala/zip4j/model/FileHeader;->diskNumberStart:I

    .line 192
    return-void
.end method

.method public setEncrypted(Z)V
    .locals 4

    .prologue
    .line 300
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/FileHeader;
    move v1, p1

    .local v1, "isEncrypted":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lnet/lingala/zip4j/model/FileHeader;->isEncrypted:Z

    .line 301
    return-void
.end method

.method public setEncryptionMethod(I)V
    .locals 4

    .prologue
    .line 308
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/FileHeader;
    move v1, p1

    .local v1, "encryptionMethod":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lnet/lingala/zip4j/model/FileHeader;->encryptionMethod:I

    .line 309
    return-void
.end method

.method public setExternalFileAttr([B)V
    .locals 4

    .prologue
    .line 207
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/FileHeader;
    move-object v1, p1

    .local v1, "externalFileAttr":[B
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lnet/lingala/zip4j/model/FileHeader;->externalFileAttr:[B

    .line 208
    return-void
.end method

.method public setExtraDataRecords(Ljava/util/ArrayList;)V
    .locals 4

    .prologue
    .line 332
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/FileHeader;
    move-object v1, p1

    .local v1, "extraDataRecords":Ljava/util/ArrayList;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lnet/lingala/zip4j/model/FileHeader;->extraDataRecords:Ljava/util/ArrayList;

    .line 333
    return-void
.end method

.method public setExtraFieldLength(I)V
    .locals 4

    .prologue
    .line 175
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/FileHeader;
    move v1, p1

    .local v1, "extraFieldLength":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lnet/lingala/zip4j/model/FileHeader;->extraFieldLength:I

    .line 176
    return-void
.end method

.method public setFileComment(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 231
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/FileHeader;
    move-object v1, p1

    .local v1, "fileComment":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lnet/lingala/zip4j/model/FileHeader;->fileComment:Ljava/lang/String;

    .line 232
    return-void
.end method

.method public setFileCommentLength(I)V
    .locals 4

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/FileHeader;
    move v1, p1

    .local v1, "fileCommentLength":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lnet/lingala/zip4j/model/FileHeader;->fileCommentLength:I

    .line 184
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 223
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/FileHeader;
    move-object v1, p1

    .local v1, "fileName":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lnet/lingala/zip4j/model/FileHeader;->fileName:Ljava/lang/String;

    .line 224
    return-void
.end method

.method public setFileNameLength(I)V
    .locals 4

    .prologue
    .line 167
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/FileHeader;
    move v1, p1

    .local v1, "fileNameLength":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lnet/lingala/zip4j/model/FileHeader;->fileNameLength:I

    .line 168
    return-void
.end method

.method public setFileNameUTF8Encoded(Z)V
    .locals 4

    .prologue
    .line 364
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/FileHeader;
    move v1, p1

    .local v1, "fileNameUTF8Encoded":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lnet/lingala/zip4j/model/FileHeader;->fileNameUTF8Encoded:Z

    .line 365
    return-void
.end method

.method public setGeneralPurposeFlag([B)V
    .locals 4

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/FileHeader;
    move-object v1, p1

    .local v1, "generalPurposeFlag":[B
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lnet/lingala/zip4j/model/FileHeader;->generalPurposeFlag:[B

    .line 120
    return-void
.end method

.method public setInternalFileAttr([B)V
    .locals 4

    .prologue
    .line 199
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/FileHeader;
    move-object v1, p1

    .local v1, "internalFileAttr":[B
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lnet/lingala/zip4j/model/FileHeader;->internalFileAttr:[B

    .line 200
    return-void
.end method

.method public setLastModFileTime(I)V
    .locals 4

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/FileHeader;
    move v1, p1

    .local v1, "lastModFileTime":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lnet/lingala/zip4j/model/FileHeader;->lastModFileTime:I

    .line 136
    return-void
.end method

.method public setOffsetLocalHeader(J)V
    .locals 7

    .prologue
    .line 215
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/FileHeader;
    move-wide v1, p1

    .local v1, "offsetLocalHeader":J
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lnet/lingala/zip4j/model/FileHeader;->offsetLocalHeader:J

    .line 216
    return-void
.end method

.method public setPassword([C)V
    .locals 4

    .prologue
    .line 316
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/FileHeader;
    move-object v1, p1

    .local v1, "password":[C
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lnet/lingala/zip4j/model/FileHeader;->password:[C

    .line 317
    return-void
.end method

.method public setSignature(I)V
    .locals 4

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/FileHeader;
    move v1, p1

    .local v1, "signature":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lnet/lingala/zip4j/model/FileHeader;->signature:I

    .line 96
    return-void
.end method

.method public setUncompressedSize(J)V
    .locals 7

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/FileHeader;
    move-wide v1, p1

    .local v1, "uncompressedSize":J
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lnet/lingala/zip4j/model/FileHeader;->uncompressedSize:J

    .line 160
    return-void
.end method

.method public setVersionMadeBy(I)V
    .locals 4

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/FileHeader;
    move v1, p1

    .local v1, "versionMadeBy":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lnet/lingala/zip4j/model/FileHeader;->versionMadeBy:I

    .line 104
    return-void
.end method

.method public setVersionNeededToExtract(I)V
    .locals 4

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/FileHeader;
    move v1, p1

    .local v1, "versionNeededToExtract":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lnet/lingala/zip4j/model/FileHeader;->versionNeededToExtract:I

    .line 112
    return-void
.end method

.method public setZip64ExtendedInfo(Lnet/lingala/zip4j/model/Zip64ExtendedInfo;)V
    .locals 4

    .prologue
    .line 348
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/FileHeader;
    move-object v1, p1

    .local v1, "zip64ExtendedInfo":Lnet/lingala/zip4j/model/Zip64ExtendedInfo;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lnet/lingala/zip4j/model/FileHeader;->zip64ExtendedInfo:Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    .line 349
    return-void
.end method
