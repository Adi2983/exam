.class public Lnet/lingala/zip4j/zip/ZipEngine;
.super Ljava/lang/Object;
.source "ZipEngine.java"


# instance fields
.field private zipModel:Lnet/lingala/zip4j/model/ZipModel;


# direct methods
.method public constructor <init>(Lnet/lingala/zip4j/model/ZipModel;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/zip/ZipEngine;
    move-object v1, p1

    .local v1, "zipModel":Lnet/lingala/zip4j/model/ZipModel;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 48
    move-object v2, v1

    if-nez v2, :cond_0

    .line 49
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "zip model is null in ZipEngine constructor"

    invoke-direct {v3, v4}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 52
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    .line 53
    return-void
.end method

.method static access$0(Lnet/lingala/zip4j/zip/ZipEngine;Ljava/util/ArrayList;Lnet/lingala/zip4j/model/ZipParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 89
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lnet/lingala/zip4j/zip/ZipEngine;->initAddFiles(Ljava/util/ArrayList;Lnet/lingala/zip4j/model/ZipParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;)V

    return-void
.end method

.method private calculateTotalWork(Ljava/util/ArrayList;Lnet/lingala/zip4j/model/ZipParameters;)J
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 453
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/zip/ZipEngine;
    move-object/from16 v1, p1

    .local v1, "fileList":Ljava/util/ArrayList;
    move-object/from16 v2, p2

    .local v2, "parameters":Lnet/lingala/zip4j/model/ZipParameters;
    move-object v8, v1

    if-nez v8, :cond_0

    .line 454
    new-instance v8, Lnet/lingala/zip4j/exception/ZipException;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    const-string/jumbo v10, "file list is null, cannot calculate total work"

    invoke-direct {v9, v10}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 457
    :cond_0
    const-wide/16 v8, 0x0

    move-wide v3, v8

    .line 459
    .local v3, "totalWork":J
    const/4 v8, 0x0

    move v5, v8

    .local v5, "i":I
    :goto_0
    move v8, v5

    move-object v9, v1

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lt v8, v9, :cond_1

    .line 483
    move-wide v8, v3

    move-wide v0, v8

    .end local v0    # "this":Lnet/lingala/zip4j/zip/ZipEngine;
    return-wide v0

    .line 460
    .restart local v0    # "this":Lnet/lingala/zip4j/zip/ZipEngine;
    :cond_1
    move-object v8, v1

    move v9, v5

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Ljava/io/File;

    if-eqz v8, :cond_2

    .line 461
    move-object v8, v1

    move v9, v5

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 462
    move-object v8, v2

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/ZipParameters;->isEncryptFiles()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 463
    move-object v8, v2

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/ZipParameters;->getEncryptionMethod()I

    move-result v8

    if-nez v8, :cond_3

    .line 464
    move-wide v8, v3

    move-object v10, v1

    move v11, v5

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/io/File;

    invoke-static {v10}, Lnet/lingala/zip4j/util/Zip4jUtil;->getFileLengh(Ljava/io/File;)J

    move-result-wide v10

    const-wide/16 v12, 0x2

    mul-long/2addr v10, v12

    add-long/2addr v8, v10

    move-wide v3, v8

    .line 469
    :goto_1
    move-object v8, v0

    iget-object v8, v8, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 470
    move-object v8, v0

    iget-object v8, v8, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v8

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 471
    move-object v8, v0

    iget-object v8, v8, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v8

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_2

    .line 473
    move-object v8, v1

    move v9, v5

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    move-object v9, v2

    invoke-virtual {v9}, Lnet/lingala/zip4j/model/ZipParameters;->getRootFolderInZip()Ljava/lang/String;

    move-result-object v9

    move-object v10, v2

    invoke-virtual {v10}, Lnet/lingala/zip4j/model/ZipParameters;->getDefaultFolderPath()Ljava/lang/String;

    move-result-object v10

    .line 472
    invoke-static {v8, v9, v10}, Lnet/lingala/zip4j/util/Zip4jUtil;->getRelativeFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    .line 474
    .local v6, "relativeFileName":Ljava/lang/String;
    move-object v8, v0

    iget-object v8, v8, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    move-object v9, v6

    invoke-static {v8, v9}, Lnet/lingala/zip4j/util/Zip4jUtil;->getFileHeader(Lnet/lingala/zip4j/model/ZipModel;Ljava/lang/String;)Lnet/lingala/zip4j/model/FileHeader;

    move-result-object v8

    move-object v7, v8

    .line 475
    .local v7, "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    move-object v8, v7

    if-eqz v8, :cond_2

    .line 476
    move-wide v8, v3

    new-instance v10, Ljava/io/File;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v0

    iget-object v12, v12, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v12}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Lnet/lingala/zip4j/util/Zip4jUtil;->getFileLengh(Ljava/io/File;)J

    move-result-wide v10

    move-object v12, v7

    invoke-virtual {v12}, Lnet/lingala/zip4j/model/FileHeader;->getCompressedSize()J

    move-result-wide v12

    sub-long/2addr v10, v12

    add-long/2addr v8, v10

    move-wide v3, v8

    .line 459
    .end local v6    # "relativeFileName":Ljava/lang/String;
    .end local v7    # "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 466
    :cond_3
    move-wide v8, v3

    move-object v10, v1

    move v11, v5

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/io/File;

    invoke-static {v10}, Lnet/lingala/zip4j/util/Zip4jUtil;->getFileLengh(Ljava/io/File;)J

    move-result-wide v10

    add-long/2addr v8, v10

    move-wide v3, v8

    goto :goto_1
.end method

.method private checkParameters(Lnet/lingala/zip4j/model/ZipParameters;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 303
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/zip/ZipEngine;
    move-object v1, p1

    .local v1, "parameters":Lnet/lingala/zip4j/model/ZipParameters;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 304
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "cannot validate zip parameters"

    invoke-direct {v3, v4}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 307
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ZipParameters;->getCompressionMethod()I

    move-result v2

    if-eqz v2, :cond_1

    .line 308
    move-object v2, v1

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ZipParameters;->getCompressionMethod()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_1

    .line 309
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "unsupported compression type"

    invoke-direct {v3, v4}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 312
    :cond_1
    move-object v2, v1

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ZipParameters;->getCompressionMethod()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_2

    .line 313
    move-object v2, v1

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ZipParameters;->getCompressionLevel()I

    move-result v2

    if-gez v2, :cond_2

    move-object v2, v1

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ZipParameters;->getCompressionLevel()I

    move-result v2

    const/16 v3, 0x9

    if-le v2, v3, :cond_2

    .line 314
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "invalid compression level. compression level dor deflate should be in the range of 0-9"

    invoke-direct {v3, v4}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 318
    :cond_2
    move-object v2, v1

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ZipParameters;->isEncryptFiles()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 319
    move-object v2, v1

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ZipParameters;->getEncryptionMethod()I

    move-result v2

    if-eqz v2, :cond_3

    .line 320
    move-object v2, v1

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ZipParameters;->getEncryptionMethod()I

    move-result v2

    const/16 v3, 0x63

    if-eq v2, v3, :cond_3

    .line 321
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "unsupported encryption method"

    invoke-direct {v3, v4}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 324
    :cond_3
    move-object v2, v1

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ZipParameters;->getPassword()[C

    move-result-object v2

    if-eqz v2, :cond_4

    move-object v2, v1

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ZipParameters;->getPassword()[C

    move-result-object v2

    array-length v2, v2

    if-gtz v2, :cond_6

    .line 325
    :cond_4
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "input password is empty or null"

    invoke-direct {v3, v4}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 328
    :cond_5
    move-object v2, v1

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lnet/lingala/zip4j/model/ZipParameters;->setAesKeyStrength(I)V

    .line 329
    move-object v2, v1

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lnet/lingala/zip4j/model/ZipParameters;->setEncryptionMethod(I)V

    .line 332
    :cond_6
    return-void
.end method

.method private createEndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;
    .locals 7

    .prologue
    .line 443
    move-object v1, p0

    .local v1, "this":Lnet/lingala/zip4j/zip/ZipEngine;
    new-instance v3, Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lnet/lingala/zip4j/model/EndCentralDirRecord;-><init>()V

    move-object v2, v3

    .line 444
    .local v2, "endCentralDirRecord":Lnet/lingala/zip4j/model/EndCentralDirRecord;
    move-object v3, v2

    const-wide/32 v4, 0x6054b50

    invoke-virtual {v3, v4, v5}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->setSignature(J)V

    .line 445
    move-object v3, v2

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->setNoOfThisDisk(I)V

    .line 446
    move-object v3, v2

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->setTotNoOfEntriesInCentralDir(I)V

    .line 447
    move-object v3, v2

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->setTotNoOfEntriesInCentralDirOnThisDisk(I)V

    .line 448
    move-object v3, v2

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->setOffsetOfStartOfCentralDir(J)V

    .line 449
    move-object v3, v2

    move-object v1, v3

    .end local v1    # "this":Lnet/lingala/zip4j/zip/ZipEngine;
    return-object v1
.end method

.method private initAddFiles(Ljava/util/ArrayList;Lnet/lingala/zip4j/model/ZipParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 92
    move-object/from16 v3, p0

    .local v3, "this":Lnet/lingala/zip4j/zip/ZipEngine;
    move-object/from16 v4, p1

    .local v4, "fileList":Ljava/util/ArrayList;
    move-object/from16 v5, p2

    .local v5, "parameters":Lnet/lingala/zip4j/model/ZipParameters;
    move-object/from16 v6, p3

    .local v6, "progressMonitor":Lnet/lingala/zip4j/progress/ProgressMonitor;
    move-object/from16 v17, v4

    if-eqz v17, :cond_0

    move-object/from16 v17, v5

    if-nez v17, :cond_1

    .line 93
    :cond_0
    new-instance v17, Lnet/lingala/zip4j/exception/ZipException;

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    const-string/jumbo v19, "one of the input parameters is null when adding files"

    invoke-direct/range {v18 .. v19}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 96
    :cond_1
    move-object/from16 v17, v4

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-gtz v17, :cond_2

    .line 97
    new-instance v17, Lnet/lingala/zip4j/exception/ZipException;

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    const-string/jumbo v19, "no files to add"

    invoke-direct/range {v18 .. v19}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 100
    :cond_2
    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget-object v0, v0, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v17

    if-nez v17, :cond_3

    .line 101
    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget-object v0, v0, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    move-object/from16 v17, v0

    move-object/from16 v18, v3

    invoke-direct/range {v18 .. v18}, Lnet/lingala/zip4j/zip/ZipEngine;->createEndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lnet/lingala/zip4j/model/ZipModel;->setEndCentralDirRecord(Lnet/lingala/zip4j/model/EndCentralDirRecord;)V

    .line 104
    :cond_3
    const/16 v17, 0x0

    move-object/from16 v7, v17

    .line 105
    .local v7, "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    const/16 v17, 0x0

    move-object/from16 v8, v17

    .line 107
    .local v8, "inputStream":Ljava/io/InputStream;
    move-object/from16 v17, v3

    move-object/from16 v18, v5

    :try_start_0
    invoke-direct/range {v17 .. v18}, Lnet/lingala/zip4j/zip/ZipEngine;->checkParameters(Lnet/lingala/zip4j/model/ZipParameters;)V

    .line 109
    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    invoke-direct/range {v17 .. v20}, Lnet/lingala/zip4j/zip/ZipEngine;->removeFilesIfExists(Ljava/util/ArrayList;Lnet/lingala/zip4j/model/ZipParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;)V

    .line 111
    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget-object v0, v0, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lnet/lingala/zip4j/util/Zip4jUtil;->checkFileExists(Ljava/lang/String;)Z

    move-result v17

    move/from16 v9, v17

    .line 113
    .local v9, "isZipFileAlreadExists":Z
    new-instance v17, Lnet/lingala/zip4j/io/SplitOutputStream;

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    new-instance v19, Ljava/io/File;

    move-object/from16 v22, v19

    move-object/from16 v19, v22

    move-object/from16 v20, v22

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lnet/lingala/zip4j/model/ZipModel;->getSplitLength()J

    move-result-wide v20

    invoke-direct/range {v18 .. v21}, Lnet/lingala/zip4j/io/SplitOutputStream;-><init>(Ljava/io/File;J)V

    move-object/from16 v10, v17

    .line 114
    .local v10, "splitOutputStream":Lnet/lingala/zip4j/io/SplitOutputStream;
    new-instance v17, Lnet/lingala/zip4j/io/ZipOutputStream;

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    move-object/from16 v19, v10

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    move-object/from16 v20, v0

    invoke-direct/range {v18 .. v20}, Lnet/lingala/zip4j/io/ZipOutputStream;-><init>(Ljava/io/OutputStream;Lnet/lingala/zip4j/model/ZipModel;)V

    move-object/from16 v7, v17

    .line 116
    move/from16 v17, v9

    if-eqz v17, :cond_7

    .line 117
    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget-object v0, v0, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v17

    if-nez v17, :cond_6

    .line 118
    new-instance v17, Lnet/lingala/zip4j/exception/ZipException;

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    const-string/jumbo v19, "invalid end of central directory record"

    invoke-direct/range {v18 .. v19}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    .end local v9    # "isZipFileAlreadExists":Z
    .end local v10    # "splitOutputStream":Lnet/lingala/zip4j/io/SplitOutputStream;
    :catch_0
    move-exception v17

    move-object/from16 v9, v17

    .line 183
    .local v9, "e":Lnet/lingala/zip4j/exception/ZipException;
    move-object/from16 v17, v6

    move-object/from16 v18, v9

    :try_start_1
    invoke-virtual/range {v17 .. v18}, Lnet/lingala/zip4j/progress/ProgressMonitor;->endProgressMonitorError(Ljava/lang/Throwable;)V

    .line 184
    move-object/from16 v17, v9

    throw v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 188
    .end local v9    # "e":Lnet/lingala/zip4j/exception/ZipException;
    :catchall_0
    move-exception v17

    move-object/from16 v15, v17

    .line 189
    move-object/from16 v17, v8

    if-eqz v17, :cond_4

    .line 191
    move-object/from16 v17, v8

    :try_start_2
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8

    .line 196
    :cond_4
    :goto_0
    move-object/from16 v17, v7

    if-eqz v17, :cond_5

    .line 198
    move-object/from16 v17, v7

    :try_start_3
    invoke-virtual/range {v17 .. v17}, Lnet/lingala/zip4j/io/ZipOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9

    .line 202
    :cond_5
    :goto_1
    move-object/from16 v17, v15

    throw v17

    .line 120
    .local v9, "isZipFileAlreadExists":Z
    .restart local v10    # "splitOutputStream":Lnet/lingala/zip4j/io/SplitOutputStream;
    :cond_6
    move-object/from16 v17, v10

    move-object/from16 v18, v3

    :try_start_4
    move-object/from16 v0, v18

    iget-object v0, v0, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->getOffsetOfStartOfCentralDir()J

    move-result-wide v18

    invoke-virtual/range {v17 .. v19}, Lnet/lingala/zip4j/io/SplitOutputStream;->seek(J)V

    .line 122
    :cond_7
    const/16 v17, 0x1000

    move/from16 v0, v17

    new-array v0, v0, [B

    move-object/from16 v17, v0

    move-object/from16 v11, v17

    .line 123
    .local v11, "readBuff":[B
    const/16 v17, -0x1

    move/from16 v12, v17

    .line 124
    .local v12, "readLen":I
    const/16 v17, 0x0

    move/from16 v13, v17

    .local v13, "i":I
    :goto_2
    move/from16 v17, v13

    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_a

    .line 180
    move-object/from16 v17, v7

    invoke-virtual/range {v17 .. v17}, Lnet/lingala/zip4j/io/ZipOutputStream;->finish()V

    .line 181
    move-object/from16 v17, v6

    invoke-virtual/range {v17 .. v17}, Lnet/lingala/zip4j/progress/ProgressMonitor;->endProgressMonitorSuccess()V
    :try_end_4
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 189
    move-object/from16 v17, v8

    if-eqz v17, :cond_8

    .line 191
    move-object/from16 v17, v8

    :try_start_5
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_a

    .line 196
    :cond_8
    :goto_3
    move-object/from16 v17, v7

    if-eqz v17, :cond_9

    .line 198
    move-object/from16 v17, v7

    :try_start_6
    invoke-virtual/range {v17 .. v17}, Lnet/lingala/zip4j/io/ZipOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_b

    .line 203
    :cond_9
    :goto_4
    return-void

    .line 126
    :cond_a
    move-object/from16 v17, v6

    :try_start_7
    invoke-virtual/range {v17 .. v17}, Lnet/lingala/zip4j/progress/ProgressMonitor;->isCancelAllTasks()Z

    move-result v17

    if-eqz v17, :cond_d

    .line 127
    move-object/from16 v17, v6

    const/16 v18, 0x3

    invoke-virtual/range {v17 .. v18}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setResult(I)V

    .line 128
    move-object/from16 v17, v6

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setState(I)V
    :try_end_7
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 189
    move-object/from16 v17, v8

    if-eqz v17, :cond_b

    .line 191
    move-object/from16 v17, v8

    :try_start_8
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    .line 196
    :cond_b
    :goto_5
    move-object/from16 v17, v7

    if-eqz v17, :cond_c

    .line 198
    move-object/from16 v17, v7

    :try_start_9
    invoke-virtual/range {v17 .. v17}, Lnet/lingala/zip4j/io/ZipOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    .line 129
    :cond_c
    :goto_6
    goto :goto_4

    .line 192
    :catch_1
    move-exception v17

    move-object/from16 v16, v17

    goto :goto_5

    .line 199
    :catch_2
    move-exception v17

    move-object/from16 v16, v17

    goto :goto_6

    .line 132
    :cond_d
    move-object/from16 v17, v5

    :try_start_a
    invoke-virtual/range {v17 .. v17}, Lnet/lingala/zip4j/model/ZipParameters;->clone()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lnet/lingala/zip4j/model/ZipParameters;

    move-object/from16 v14, v17

    .line 134
    .local v14, "fileParameters":Lnet/lingala/zip4j/model/ZipParameters;
    move-object/from16 v17, v6

    move-object/from16 v18, v4

    move/from16 v19, v13

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/io/File;

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setFileName(Ljava/lang/String;)V

    .line 136
    move-object/from16 v17, v4

    move/from16 v18, v13

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/io/File;

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->isDirectory()Z

    move-result v17

    if-nez v17, :cond_11

    .line 137
    move-object/from16 v17, v14

    invoke-virtual/range {v17 .. v17}, Lnet/lingala/zip4j/model/ZipParameters;->isEncryptFiles()Z

    move-result v17

    if-eqz v17, :cond_10

    move-object/from16 v17, v14

    invoke-virtual/range {v17 .. v17}, Lnet/lingala/zip4j/model/ZipParameters;->getEncryptionMethod()I

    move-result v17

    if-nez v17, :cond_10

    .line 138
    move-object/from16 v17, v6

    const/16 v18, 0x3

    invoke-virtual/range {v17 .. v18}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setCurrentOperation(I)V

    .line 139
    move-object/from16 v17, v14

    move-object/from16 v18, v4

    move/from16 v19, v13

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/io/File;

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v19, v6

    invoke-static/range {v18 .. v19}, Lnet/lingala/zip4j/util/CRCUtil;->computeFileCRC(Ljava/lang/String;Lnet/lingala/zip4j/progress/ProgressMonitor;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lnet/lingala/zip4j/model/ZipParameters;->setSourceFileCRC(I)V

    .line 140
    move-object/from16 v17, v6

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setCurrentOperation(I)V

    .line 142
    move-object/from16 v17, v6

    invoke-virtual/range {v17 .. v17}, Lnet/lingala/zip4j/progress/ProgressMonitor;->isCancelAllTasks()Z

    move-result v17

    if-eqz v17, :cond_10

    .line 143
    move-object/from16 v17, v6

    const/16 v18, 0x3

    invoke-virtual/range {v17 .. v18}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setResult(I)V

    .line 144
    move-object/from16 v17, v6

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setState(I)V
    :try_end_a
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 189
    move-object/from16 v17, v8

    if-eqz v17, :cond_e

    .line 191
    move-object/from16 v17, v8

    :try_start_b
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    .line 196
    :cond_e
    :goto_7
    move-object/from16 v17, v7

    if-eqz v17, :cond_f

    .line 198
    move-object/from16 v17, v7

    :try_start_c
    invoke-virtual/range {v17 .. v17}, Lnet/lingala/zip4j/io/ZipOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    .line 145
    :cond_f
    :goto_8
    goto/16 :goto_4

    .line 192
    :catch_3
    move-exception v17

    move-object/from16 v16, v17

    goto :goto_7

    .line 199
    :catch_4
    move-exception v17

    move-object/from16 v16, v17

    goto :goto_8

    .line 149
    :cond_10
    move-object/from16 v17, v4

    move/from16 v18, v13

    :try_start_d
    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/io/File;

    invoke-static/range {v17 .. v17}, Lnet/lingala/zip4j/util/Zip4jUtil;->getFileLengh(Ljava/io/File;)J

    move-result-wide v17

    const-wide/16 v19, 0x0

    cmp-long v17, v17, v19

    if-nez v17, :cond_11

    .line 150
    move-object/from16 v17, v14

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lnet/lingala/zip4j/model/ZipParameters;->setCompressionMethod(I)V

    .line 154
    :cond_11
    move-object/from16 v17, v7

    move-object/from16 v18, v4

    move/from16 v19, v13

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/io/File;

    move-object/from16 v19, v14

    invoke-virtual/range {v17 .. v19}, Lnet/lingala/zip4j/io/ZipOutputStream;->putNextEntry(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;)V

    .line 155
    move-object/from16 v17, v4

    move/from16 v18, v13

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/io/File;

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->isDirectory()Z

    move-result v17

    if-eqz v17, :cond_13

    .line 156
    move-object/from16 v17, v7

    invoke-virtual/range {v17 .. v17}, Lnet/lingala/zip4j/io/ZipOutputStream;->closeEntry()V

    .line 157
    .line 124
    :cond_12
    :goto_9
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .line 160
    :cond_13
    new-instance v17, Ljava/io/FileInputStream;

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    move-object/from16 v19, v4

    move/from16 v20, v13

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/io/File;

    invoke-direct/range {v18 .. v19}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v8, v17

    .line 162
    :goto_a
    move-object/from16 v17, v8

    move-object/from16 v18, v11

    invoke-virtual/range {v17 .. v18}, Ljava/io/InputStream;->read([B)I

    move-result v17

    move/from16 v22, v17

    move/from16 v17, v22

    move/from16 v18, v22

    move/from16 v12, v18

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_14

    .line 173
    move-object/from16 v17, v7

    invoke-virtual/range {v17 .. v17}, Lnet/lingala/zip4j/io/ZipOutputStream;->closeEntry()V

    .line 175
    move-object/from16 v17, v8

    if-eqz v17, :cond_12

    .line 176
    move-object/from16 v17, v8

    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_9

    .line 185
    .end local v9    # "isZipFileAlreadExists":Z
    .end local v10    # "splitOutputStream":Lnet/lingala/zip4j/io/SplitOutputStream;
    .end local v11    # "readBuff":[B
    .end local v12    # "readLen":I
    .end local v13    # "i":I
    .end local v14    # "fileParameters":Lnet/lingala/zip4j/model/ZipParameters;
    :catch_5
    move-exception v17

    move-object/from16 v9, v17

    .line 186
    .local v9, "e":Ljava/lang/Exception;
    move-object/from16 v17, v6

    move-object/from16 v18, v9

    :try_start_e
    invoke-virtual/range {v17 .. v18}, Lnet/lingala/zip4j/progress/ProgressMonitor;->endProgressMonitorError(Ljava/lang/Throwable;)V

    .line 187
    new-instance v17, Lnet/lingala/zip4j/exception/ZipException;

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    move-object/from16 v19, v9

    invoke-direct/range {v18 .. v19}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v17
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 163
    .local v9, "isZipFileAlreadExists":Z
    .restart local v10    # "splitOutputStream":Lnet/lingala/zip4j/io/SplitOutputStream;
    .restart local v11    # "readBuff":[B
    .restart local v12    # "readLen":I
    .restart local v13    # "i":I
    .restart local v14    # "fileParameters":Lnet/lingala/zip4j/model/ZipParameters;
    :cond_14
    move-object/from16 v17, v6

    :try_start_f
    invoke-virtual/range {v17 .. v17}, Lnet/lingala/zip4j/progress/ProgressMonitor;->isCancelAllTasks()Z

    move-result v17

    if-eqz v17, :cond_17

    .line 164
    move-object/from16 v17, v6

    const/16 v18, 0x3

    invoke-virtual/range {v17 .. v18}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setResult(I)V

    .line 165
    move-object/from16 v17, v6

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setState(I)V
    :try_end_f
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 189
    move-object/from16 v17, v8

    if-eqz v17, :cond_15

    .line 191
    move-object/from16 v17, v8

    :try_start_10
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_6

    .line 196
    :cond_15
    :goto_b
    move-object/from16 v17, v7

    if-eqz v17, :cond_16

    .line 198
    move-object/from16 v17, v7

    :try_start_11
    invoke-virtual/range {v17 .. v17}, Lnet/lingala/zip4j/io/ZipOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_7

    .line 166
    :cond_16
    :goto_c
    goto/16 :goto_4

    .line 192
    :catch_6
    move-exception v17

    move-object/from16 v16, v17

    goto :goto_b

    .line 199
    :catch_7
    move-exception v17

    move-object/from16 v16, v17

    goto :goto_c

    .line 169
    :cond_17
    move-object/from16 v17, v7

    move-object/from16 v18, v11

    const/16 v19, 0x0

    move/from16 v20, v12

    :try_start_12
    invoke-virtual/range {v17 .. v20}, Lnet/lingala/zip4j/io/ZipOutputStream;->write([BII)V

    .line 170
    move-object/from16 v17, v6

    move/from16 v18, v12

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    invoke-virtual/range {v17 .. v19}, Lnet/lingala/zip4j/progress/ProgressMonitor;->updateWorkCompleted(J)V
    :try_end_12
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_12 .. :try_end_12} :catch_0
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_5
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto/16 :goto_a

    .line 192
    .end local v9    # "isZipFileAlreadExists":Z
    .end local v10    # "splitOutputStream":Lnet/lingala/zip4j/io/SplitOutputStream;
    .end local v11    # "readBuff":[B
    .end local v12    # "readLen":I
    .end local v13    # "i":I
    .end local v14    # "fileParameters":Lnet/lingala/zip4j/model/ZipParameters;
    :catch_8
    move-exception v17

    move-object/from16 v16, v17

    goto/16 :goto_0

    .line 199
    :catch_9
    move-exception v17

    move-object/from16 v16, v17

    goto/16 :goto_1

    .line 192
    .restart local v9    # "isZipFileAlreadExists":Z
    .restart local v10    # "splitOutputStream":Lnet/lingala/zip4j/io/SplitOutputStream;
    .restart local v11    # "readBuff":[B
    .restart local v12    # "readLen":I
    .restart local v13    # "i":I
    :catch_a
    move-exception v17

    move-object/from16 v16, v17

    goto/16 :goto_3

    .line 199
    :catch_b
    move-exception v17

    move-object/from16 v16, v17

    goto/16 :goto_4
.end method

.method private prepareFileOutputStream()Ljava/io/RandomAccessFile;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 426
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/zip/ZipEngine;
    move-object v3, v0

    iget-object v3, v3, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 427
    .local v1, "outPath":Ljava/lang/String;
    move-object v3, v1

    invoke-static {v3}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 428
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string/jumbo v5, "invalid output path"

    invoke-direct {v4, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 432
    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/File;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 433
    .local v2, "outFile":Ljava/io/File;
    move-object v3, v2

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 434
    move-object v3, v2

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v3

    .line 436
    :cond_1
    new-instance v3, Ljava/io/RandomAccessFile;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v2

    const-string/jumbo v6, "rw"

    invoke-direct {v4, v5, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .end local v0    # "this":Lnet/lingala/zip4j/zip/ZipEngine;
    return-object v0

    .line 437
    .end local v2    # "outFile":Ljava/io/File;
    .restart local v0    # "this":Lnet/lingala/zip4j/zip/ZipEngine;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 438
    .local v2, "e":Ljava/io/FileNotFoundException;
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v2

    invoke-direct {v4, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method private removeFilesIfExists(Ljava/util/ArrayList;Lnet/lingala/zip4j/model/ZipParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 347
    move-object/from16 v2, p0

    .local v2, "this":Lnet/lingala/zip4j/zip/ZipEngine;
    move-object/from16 v3, p1

    .local v3, "fileList":Ljava/util/ArrayList;
    move-object/from16 v4, p2

    .local v4, "parameters":Lnet/lingala/zip4j/model/ZipParameters;
    move-object/from16 v5, p3

    .local v5, "progressMonitor":Lnet/lingala/zip4j/progress/ProgressMonitor;
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v18

    if-eqz v18, :cond_0

    .line 348
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v18

    if-eqz v18, :cond_0

    .line 349
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-gtz v18, :cond_1

    .line 351
    .line 423
    :cond_0
    :goto_0
    return-void

    .line 353
    :cond_1
    const/16 v18, 0x0

    move-object/from16 v6, v18

    .line 356
    .local v6, "outputStream":Ljava/io/RandomAccessFile;
    const/16 v18, 0x0

    move/from16 v7, v18

    .local v7, "i":I
    :goto_1
    move/from16 v18, v7

    move-object/from16 v19, v3

    :try_start_0
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_3

    .line 415
    move-object/from16 v18, v6

    if-eqz v18, :cond_2

    .line 417
    move-object/from16 v18, v6

    :try_start_1
    invoke-virtual/range {v18 .. v18}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 423
    :cond_2
    :goto_2
    goto :goto_0

    .line 357
    :cond_3
    move-object/from16 v18, v3

    move/from16 v19, v7

    :try_start_2
    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/io/File;

    move-object/from16 v8, v18

    .line 359
    .local v8, "file":Ljava/io/File;
    move-object/from16 v18, v8

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    .line 360
    move-object/from16 v19, v4

    invoke-virtual/range {v19 .. v19}, Lnet/lingala/zip4j/model/ZipParameters;->getRootFolderInZip()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Lnet/lingala/zip4j/model/ZipParameters;->getDefaultFolderPath()Ljava/lang/String;

    move-result-object v20

    .line 359
    invoke-static/range {v18 .. v20}, Lnet/lingala/zip4j/util/Zip4jUtil;->getRelativeFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v9, v18

    .line 362
    .local v9, "fileName":Ljava/lang/String;
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    move-object/from16 v18, v0

    move-object/from16 v19, v9

    invoke-static/range {v18 .. v19}, Lnet/lingala/zip4j/util/Zip4jUtil;->getFileHeader(Lnet/lingala/zip4j/model/ZipModel;Ljava/lang/String;)Lnet/lingala/zip4j/model/FileHeader;

    move-result-object v18

    move-object/from16 v10, v18

    .line 363
    .local v10, "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    move-object/from16 v18, v10

    if-eqz v18, :cond_7

    .line 365
    move-object/from16 v18, v6

    if-eqz v18, :cond_4

    .line 366
    move-object/from16 v18, v6

    invoke-virtual/range {v18 .. v18}, Ljava/io/RandomAccessFile;->close()V

    .line 367
    const/16 v18, 0x0

    move-object/from16 v6, v18

    .line 370
    :cond_4
    new-instance v18, Lnet/lingala/zip4j/util/ArchiveMaintainer;

    move-object/from16 v22, v18

    move-object/from16 v18, v22

    move-object/from16 v19, v22

    invoke-direct/range {v19 .. v19}, Lnet/lingala/zip4j/util/ArchiveMaintainer;-><init>()V

    move-object/from16 v11, v18

    .line 371
    .local v11, "archiveMaintainer":Lnet/lingala/zip4j/util/ArchiveMaintainer;
    move-object/from16 v18, v5

    const/16 v19, 0x2

    invoke-virtual/range {v18 .. v19}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setCurrentOperation(I)V

    .line 372
    move-object/from16 v18, v11

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    move-object/from16 v19, v0

    .line 373
    move-object/from16 v20, v10

    move-object/from16 v21, v5

    .line 372
    invoke-virtual/range {v18 .. v21}, Lnet/lingala/zip4j/util/ArchiveMaintainer;->initRemoveZipFile(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/model/FileHeader;Lnet/lingala/zip4j/progress/ProgressMonitor;)Ljava/util/HashMap;

    move-result-object v18

    move-object/from16 v12, v18

    .line 375
    .local v12, "retMap":Ljava/util/HashMap;
    move-object/from16 v18, v5

    invoke-virtual/range {v18 .. v18}, Lnet/lingala/zip4j/progress/ProgressMonitor;->isCancelAllTasks()Z

    move-result v18

    if-eqz v18, :cond_6

    .line 376
    move-object/from16 v18, v5

    const/16 v19, 0x3

    invoke-virtual/range {v18 .. v19}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setResult(I)V

    .line 377
    move-object/from16 v18, v5

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setState(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 415
    move-object/from16 v18, v6

    if-eqz v18, :cond_5

    .line 417
    move-object/from16 v18, v6

    :try_start_3
    invoke-virtual/range {v18 .. v18}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 378
    :cond_5
    :goto_3
    goto/16 :goto_0

    .line 418
    :catch_0
    move-exception v18

    move-object/from16 v17, v18

    goto :goto_3

    .line 381
    :cond_6
    move-object/from16 v18, v5

    .line 382
    const/16 v19, 0x0

    :try_start_4
    invoke-virtual/range {v18 .. v19}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setCurrentOperation(I)V

    .line 384
    move-object/from16 v18, v6

    if-nez v18, :cond_7

    .line 385
    move-object/from16 v18, v2

    invoke-direct/range {v18 .. v18}, Lnet/lingala/zip4j/zip/ZipEngine;->prepareFileOutputStream()Ljava/io/RandomAccessFile;

    move-result-object v18

    move-object/from16 v6, v18

    .line 387
    move-object/from16 v18, v12

    if-eqz v18, :cond_7

    .line 388
    move-object/from16 v18, v12

    const-string/jumbo v19, "offsetCentralDir"

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v18

    if-eqz v18, :cond_7

    .line 389
    const-wide/16 v18, -0x1

    move-wide/from16 v13, v18

    .line 392
    .local v13, "offsetCentralDir":J
    move-object/from16 v18, v12

    .line 393
    :try_start_5
    const-string/jumbo v19, "offsetCentralDir"

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .line 392
    check-cast v18, Ljava/lang/String;

    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-wide v18

    .line 391
    move-wide/from16 v13, v18

    .line 404
    move-wide/from16 v18, v13

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-ltz v18, :cond_7

    .line 405
    move-object/from16 v18, v6

    move-wide/from16 v19, v13

    :try_start_6
    invoke-virtual/range {v18 .. v20}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 356
    .end local v11    # "archiveMaintainer":Lnet/lingala/zip4j/util/ArchiveMaintainer;
    .end local v12    # "retMap":Ljava/util/HashMap;
    .end local v13    # "offsetCentralDir":J
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 394
    .restart local v11    # "archiveMaintainer":Lnet/lingala/zip4j/util/ArchiveMaintainer;
    .restart local v12    # "retMap":Ljava/util/HashMap;
    .restart local v13    # "offsetCentralDir":J
    :catch_1
    move-exception v18

    move-object/from16 v15, v18

    .line 395
    .local v15, "e":Ljava/lang/NumberFormatException;
    new-instance v18, Lnet/lingala/zip4j/exception/ZipException;

    move-object/from16 v22, v18

    move-object/from16 v18, v22

    move-object/from16 v19, v22

    .line 396
    const-string/jumbo v20, "NumberFormatException while parsing offset central directory. Cannot update already existing file header"

    .line 395
    invoke-direct/range {v19 .. v20}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 412
    .end local v8    # "file":Ljava/io/File;
    .end local v9    # "fileName":Ljava/lang/String;
    .end local v10    # "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    .end local v11    # "archiveMaintainer":Lnet/lingala/zip4j/util/ArchiveMaintainer;
    .end local v12    # "retMap":Ljava/util/HashMap;
    .end local v13    # "offsetCentralDir":J
    .end local v15    # "e":Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v18

    move-object/from16 v7, v18

    .line 413
    .local v7, "e":Ljava/io/IOException;
    :try_start_7
    new-instance v18, Lnet/lingala/zip4j/exception/ZipException;

    move-object/from16 v22, v18

    move-object/from16 v18, v22

    move-object/from16 v19, v22

    move-object/from16 v20, v7

    invoke-direct/range {v19 .. v20}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v18
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 414
    .end local v7    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v18

    move-object/from16 v16, v18

    .line 415
    move-object/from16 v18, v6

    if-eqz v18, :cond_8

    .line 417
    move-object/from16 v18, v6

    :try_start_8
    invoke-virtual/range {v18 .. v18}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 422
    :cond_8
    :goto_4
    move-object/from16 v18, v16

    throw v18

    .line 398
    .local v7, "i":I
    .restart local v8    # "file":Ljava/io/File;
    .restart local v9    # "fileName":Ljava/lang/String;
    .restart local v10    # "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    .restart local v11    # "archiveMaintainer":Lnet/lingala/zip4j/util/ArchiveMaintainer;
    .restart local v12    # "retMap":Ljava/util/HashMap;
    .restart local v13    # "offsetCentralDir":J
    :catch_3
    move-exception v18

    move-object/from16 v15, v18

    .line 399
    .local v15, "e":Ljava/lang/Exception;
    :try_start_9
    new-instance v18, Lnet/lingala/zip4j/exception/ZipException;

    move-object/from16 v22, v18

    move-object/from16 v18, v22

    move-object/from16 v19, v22

    .line 400
    const-string/jumbo v20, "Error while parsing offset central directory. Cannot update already existing file header"

    .line 399
    invoke-direct/range {v19 .. v20}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 418
    .end local v7    # "i":I
    .end local v8    # "file":Ljava/io/File;
    .end local v9    # "fileName":Ljava/lang/String;
    .end local v10    # "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    .end local v11    # "archiveMaintainer":Lnet/lingala/zip4j/util/ArchiveMaintainer;
    .end local v12    # "retMap":Ljava/util/HashMap;
    .end local v13    # "offsetCentralDir":J
    .end local v15    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v18

    move-object/from16 v17, v18

    goto :goto_4

    .restart local v7    # "i":I
    :catch_5
    move-exception v18

    move-object/from16 v17, v18

    goto/16 :goto_2
.end method


# virtual methods
.method public addFiles(Ljava/util/ArrayList;Lnet/lingala/zip4j/model/ZipParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;Z)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 58
    move-object v1, p0

    .local v1, "this":Lnet/lingala/zip4j/zip/ZipEngine;
    move-object/from16 v2, p1

    .local v2, "fileList":Ljava/util/ArrayList;
    move-object/from16 v3, p2

    .local v3, "parameters":Lnet/lingala/zip4j/model/ZipParameters;
    move-object/from16 v4, p3

    .local v4, "progressMonitor":Lnet/lingala/zip4j/progress/ProgressMonitor;
    move/from16 v5, p4

    .local v5, "runInThread":Z
    move-object v7, v2

    if-eqz v7, :cond_0

    move-object v7, v3

    if-nez v7, :cond_1

    .line 59
    :cond_0
    new-instance v7, Lnet/lingala/zip4j/exception/ZipException;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    const-string/jumbo v9, "one of the input parameters is null when adding files"

    invoke-direct {v8, v9}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 62
    :cond_1
    move-object v7, v2

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-gtz v7, :cond_2

    .line 63
    new-instance v7, Lnet/lingala/zip4j/exception/ZipException;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    const-string/jumbo v9, "no files to add"

    invoke-direct {v8, v9}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 66
    :cond_2
    move-object v7, v4

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setCurrentOperation(I)V

    .line 67
    move-object v7, v4

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setState(I)V

    .line 68
    move-object v7, v4

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setResult(I)V

    .line 70
    move v7, v5

    if-eqz v7, :cond_3

    .line 71
    move-object v7, v4

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    invoke-direct {v8, v9, v10}, Lnet/lingala/zip4j/zip/ZipEngine;->calculateTotalWork(Ljava/util/ArrayList;Lnet/lingala/zip4j/model/ZipParameters;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setTotalWork(J)V

    .line 72
    move-object v7, v4

    move-object v8, v2

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setFileName(Ljava/lang/String;)V

    .line 74
    new-instance v7, Lnet/lingala/zip4j/zip/ZipEngine$1;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move-object v9, v1

    const-string/jumbo v10, "Zip4j"

    move-object v11, v2

    move-object v12, v3

    move-object v13, v4

    invoke-direct/range {v8 .. v13}, Lnet/lingala/zip4j/zip/ZipEngine$1;-><init>(Lnet/lingala/zip4j/zip/ZipEngine;Ljava/lang/String;Ljava/util/ArrayList;Lnet/lingala/zip4j/model/ZipParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;)V

    move-object v6, v7

    .line 82
    .local v6, "thread":Ljava/lang/Thread;
    move-object v7, v6

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 87
    .end local v6    # "thread":Ljava/lang/Thread;
    :goto_0
    return-void

    .line 85
    :cond_3
    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    invoke-direct {v7, v8, v9, v10}, Lnet/lingala/zip4j/zip/ZipEngine;->initAddFiles(Ljava/util/ArrayList;Lnet/lingala/zip4j/model/ZipParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;)V

    goto :goto_0
.end method

.method public addFolderToZip(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;Z)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 259
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/zip/ZipEngine;
    move-object v1, p1

    .local v1, "file":Ljava/io/File;
    move-object v2, p2

    .local v2, "parameters":Lnet/lingala/zip4j/model/ZipParameters;
    move-object/from16 v3, p3

    .local v3, "progressMonitor":Lnet/lingala/zip4j/progress/ProgressMonitor;
    move/from16 v4, p4

    .local v4, "runInThread":Z
    move-object v7, v1

    if-eqz v7, :cond_0

    move-object v7, v2

    if-nez v7, :cond_1

    .line 260
    :cond_0
    new-instance v7, Lnet/lingala/zip4j/exception/ZipException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const-string/jumbo v9, "one of the input parameters is null, cannot add folder to zip"

    invoke-direct {v8, v9}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 263
    :cond_1
    move-object v7, v1

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lnet/lingala/zip4j/util/Zip4jUtil;->checkFileExists(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 264
    new-instance v7, Lnet/lingala/zip4j/exception/ZipException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const-string/jumbo v9, "input folder does not exist"

    invoke-direct {v8, v9}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 267
    :cond_2
    move-object v7, v1

    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_3

    .line 268
    new-instance v7, Lnet/lingala/zip4j/exception/ZipException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const-string/jumbo v9, "input file is not a folder, user addFileToZip method to add files"

    invoke-direct {v8, v9}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 271
    :cond_3
    move-object v7, v1

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lnet/lingala/zip4j/util/Zip4jUtil;->checkFileReadAccess(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 272
    new-instance v7, Lnet/lingala/zip4j/exception/ZipException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    new-instance v9, Ljava/lang/StringBuffer;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    const-string/jumbo v11, "cannot read folder: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v10, v1

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 275
    :cond_4
    const/4 v7, 0x0

    move-object v5, v7

    .line 276
    .local v5, "rootFolderPath":Ljava/lang/String;
    move-object v7, v2

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/ZipParameters;->isIncludeRootFolder()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 277
    move-object v7, v1

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 278
    move-object v7, v1

    invoke-virtual {v7}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    if-eqz v7, :cond_7

    move-object v7, v1

    invoke-virtual {v7}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    :goto_0
    move-object v5, v7

    .line 286
    :goto_1
    move-object v7, v2

    move-object v8, v5

    invoke-virtual {v7, v8}, Lnet/lingala/zip4j/model/ZipParameters;->setDefaultFolderPath(Ljava/lang/String;)V

    .line 288
    move-object v7, v1

    move-object v8, v2

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/ZipParameters;->isReadHiddenFiles()Z

    move-result v8

    invoke-static {v7, v8}, Lnet/lingala/zip4j/util/Zip4jUtil;->getFilesInDirectoryRec(Ljava/io/File;Z)Ljava/util/ArrayList;

    move-result-object v7

    move-object v6, v7

    .line 290
    .local v6, "fileList":Ljava/util/ArrayList;
    move-object v7, v2

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/ZipParameters;->isIncludeRootFolder()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 291
    move-object v7, v6

    if-nez v7, :cond_5

    .line 292
    new-instance v7, Ljava/util/ArrayList;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v7

    .line 294
    :cond_5
    move-object v7, v6

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 297
    :cond_6
    move-object v7, v0

    move-object v8, v6

    move-object v9, v2

    move-object v10, v3

    move v11, v4

    invoke-virtual {v7, v8, v9, v10, v11}, Lnet/lingala/zip4j/zip/ZipEngine;->addFiles(Ljava/util/ArrayList;Lnet/lingala/zip4j/model/ZipParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;Z)V

    .line 298
    return-void

    .line 278
    .end local v6    # "fileList":Ljava/util/ArrayList;
    :cond_7
    const-string/jumbo v7, ""

    goto :goto_0

    .line 280
    :cond_8
    move-object v7, v1

    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    if-eqz v7, :cond_9

    move-object v7, v1

    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    :goto_2
    move-object v5, v7

    goto :goto_1

    :cond_9
    const-string/jumbo v7, ""

    goto :goto_2

    .line 283
    :cond_a
    move-object v7, v1

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    goto :goto_1
.end method

.method public addStreamToZip(Ljava/io/InputStream;Lnet/lingala/zip4j/model/ZipParameters;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 206
    move-object/from16 v1, p0

    .local v1, "this":Lnet/lingala/zip4j/zip/ZipEngine;
    move-object/from16 v2, p1

    .local v2, "inputStream":Ljava/io/InputStream;
    move-object/from16 v3, p2

    .local v3, "parameters":Lnet/lingala/zip4j/model/ZipParameters;
    move-object v11, v2

    if-eqz v11, :cond_0

    move-object v11, v3

    if-nez v11, :cond_1

    .line 207
    :cond_0
    new-instance v11, Lnet/lingala/zip4j/exception/ZipException;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    const-string/jumbo v13, "one of the input parameters is null, cannot add stream to zip"

    invoke-direct {v12, v13}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 210
    :cond_1
    const/4 v11, 0x0

    move-object v4, v11

    .line 213
    .local v4, "outputStream":Lnet/lingala/zip4j/io/ZipOutputStream;
    move-object v11, v1

    move-object v12, v3

    :try_start_0
    invoke-direct {v11, v12}, Lnet/lingala/zip4j/zip/ZipEngine;->checkParameters(Lnet/lingala/zip4j/model/ZipParameters;)V

    .line 215
    move-object v11, v1

    iget-object v11, v11, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v11}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lnet/lingala/zip4j/util/Zip4jUtil;->checkFileExists(Ljava/lang/String;)Z

    move-result v11

    move v5, v11

    .line 217
    .local v5, "isZipFileAlreadExists":Z
    new-instance v11, Lnet/lingala/zip4j/io/SplitOutputStream;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    new-instance v13, Ljava/io/File;

    move-object/from16 v16, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v16

    move-object v15, v1

    iget-object v15, v15, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v15}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v14, v1

    iget-object v14, v14, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v14}, Lnet/lingala/zip4j/model/ZipModel;->getSplitLength()J

    move-result-wide v14

    invoke-direct {v12, v13, v14, v15}, Lnet/lingala/zip4j/io/SplitOutputStream;-><init>(Ljava/io/File;J)V

    move-object v6, v11

    .line 218
    .local v6, "splitOutputStream":Lnet/lingala/zip4j/io/SplitOutputStream;
    new-instance v11, Lnet/lingala/zip4j/io/ZipOutputStream;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object v13, v6

    move-object v14, v1

    iget-object v14, v14, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-direct {v12, v13, v14}, Lnet/lingala/zip4j/io/ZipOutputStream;-><init>(Ljava/io/OutputStream;Lnet/lingala/zip4j/model/ZipModel;)V

    move-object v4, v11

    .line 220
    move v11, v5

    if-eqz v11, :cond_4

    .line 221
    move-object v11, v1

    iget-object v11, v11, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v11}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v11

    if-nez v11, :cond_3

    .line 222
    new-instance v11, Lnet/lingala/zip4j/exception/ZipException;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    const-string/jumbo v13, "invalid end of central directory record"

    invoke-direct {v12, v13}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    .end local v5    # "isZipFileAlreadExists":Z
    .end local v6    # "splitOutputStream":Lnet/lingala/zip4j/io/SplitOutputStream;
    :catch_0
    move-exception v11

    move-object v5, v11

    .line 243
    .local v5, "e":Lnet/lingala/zip4j/exception/ZipException;
    move-object v11, v5

    :try_start_1
    throw v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 246
    .end local v5    # "e":Lnet/lingala/zip4j/exception/ZipException;
    :catchall_0
    move-exception v11

    move-object v9, v11

    .line 247
    move-object v11, v4

    if-eqz v11, :cond_2

    .line 249
    move-object v11, v4

    :try_start_2
    invoke-virtual {v11}, Lnet/lingala/zip4j/io/ZipOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 254
    :cond_2
    :goto_0
    move-object v11, v9

    throw v11

    .line 224
    .local v5, "isZipFileAlreadExists":Z
    .restart local v6    # "splitOutputStream":Lnet/lingala/zip4j/io/SplitOutputStream;
    :cond_3
    move-object v11, v6

    move-object v12, v1

    :try_start_3
    iget-object v12, v12, Lnet/lingala/zip4j/zip/ZipEngine;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v12}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v12

    invoke-virtual {v12}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->getOffsetOfStartOfCentralDir()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Lnet/lingala/zip4j/io/SplitOutputStream;->seek(J)V

    .line 227
    :cond_4
    const/16 v11, 0x1000

    new-array v11, v11, [B

    move-object v7, v11

    .line 228
    .local v7, "readBuff":[B
    const/4 v11, -0x1

    move v8, v11

    .line 230
    .local v8, "readLen":I
    move-object v11, v4

    const/4 v12, 0x0

    move-object v13, v3

    invoke-virtual {v11, v12, v13}, Lnet/lingala/zip4j/io/ZipOutputStream;->putNextEntry(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;)V

    .line 232
    move-object v11, v3

    invoke-virtual {v11}, Lnet/lingala/zip4j/model/ZipParameters;->getFileNameInZip()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 233
    move-object v11, v3

    invoke-virtual {v11}, Lnet/lingala/zip4j/model/ZipParameters;->getFileNameInZip()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "\\"

    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 234
    :goto_1
    move-object v11, v2

    move-object v12, v7

    invoke-virtual {v11, v12}, Ljava/io/InputStream;->read([B)I

    move-result v11

    move/from16 v16, v11

    move/from16 v11, v16

    move/from16 v12, v16

    move v8, v12

    const/4 v12, -0x1

    if-ne v11, v12, :cond_7

    .line 239
    :cond_5
    move-object v11, v4

    invoke-virtual {v11}, Lnet/lingala/zip4j/io/ZipOutputStream;->closeEntry()V

    .line 240
    move-object v11, v4

    invoke-virtual {v11}, Lnet/lingala/zip4j/io/ZipOutputStream;->finish()V
    :try_end_3
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 247
    move-object v11, v4

    if-eqz v11, :cond_6

    .line 249
    move-object v11, v4

    :try_start_4
    invoke-virtual {v11}, Lnet/lingala/zip4j/io/ZipOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 255
    :cond_6
    :goto_2
    return-void

    .line 235
    :cond_7
    move-object v11, v4

    move-object v12, v7

    const/4 v13, 0x0

    move v14, v8

    :try_start_5
    invoke-virtual {v11, v12, v13, v14}, Lnet/lingala/zip4j/io/ZipOutputStream;->write([BII)V
    :try_end_5
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 244
    .end local v5    # "isZipFileAlreadExists":Z
    .end local v6    # "splitOutputStream":Lnet/lingala/zip4j/io/SplitOutputStream;
    .end local v7    # "readBuff":[B
    .end local v8    # "readLen":I
    :catch_1
    move-exception v11

    move-object v5, v11

    .line 245
    .local v5, "e":Ljava/lang/Exception;
    :try_start_6
    new-instance v11, Lnet/lingala/zip4j/exception/ZipException;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object v13, v5

    invoke-direct {v12, v13}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 250
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v11

    move-object v10, v11

    goto :goto_0

    .local v5, "isZipFileAlreadExists":Z
    .restart local v6    # "splitOutputStream":Lnet/lingala/zip4j/io/SplitOutputStream;
    .restart local v7    # "readBuff":[B
    .restart local v8    # "readLen":I
    :catch_3
    move-exception v11

    move-object v10, v11

    goto :goto_2
.end method
