.class public Lnet/lingala/zip4j/util/ArchiveMaintainer;
.super Ljava/lang/Object;
.source "ArchiveMaintainer.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/util/ArchiveMaintainer;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method static access$0(Lnet/lingala/zip4j/util/ArchiveMaintainer;Lnet/lingala/zip4j/model/ZipModel;Ljava/io/File;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 340
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lnet/lingala/zip4j/util/ArchiveMaintainer;->initMergeSplitZipFile(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/File;Lnet/lingala/zip4j/progress/ProgressMonitor;)V

    return-void
.end method

.method private calculateTotalWorkForMergeOp(Lnet/lingala/zip4j/model/ZipModel;)J
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 704
    move-object/from16 v1, p0

    .local v1, "this":Lnet/lingala/zip4j/util/ArchiveMaintainer;
    move-object/from16 v2, p1

    .local v2, "zipModel":Lnet/lingala/zip4j/model/ZipModel;
    const-wide/16 v10, 0x0

    move-wide v3, v10

    .line 705
    .local v3, "totSize":J
    move-object v10, v2

    invoke-virtual {v10}, Lnet/lingala/zip4j/model/ZipModel;->isSplitArchive()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 706
    move-object v10, v2

    invoke-virtual {v10}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v10

    invoke-virtual {v10}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->getNoOfThisDisk()I

    move-result v10

    move v5, v10

    .line 707
    .local v5, "totNoOfSplitFiles":I
    const/4 v10, 0x0

    move-object v6, v10

    .line 708
    .local v6, "partFile":Ljava/lang/String;
    move-object v10, v2

    invoke-virtual {v10}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v10

    move-object v7, v10

    .line 709
    .local v7, "curZipFile":Ljava/lang/String;
    const/4 v10, 0x0

    move v8, v10

    .line 710
    .local v8, "partNumber":I
    const/4 v10, 0x0

    move v9, v10

    .local v9, "i":I
    :goto_0
    move v10, v9

    move v11, v5

    if-le v10, v11, :cond_1

    .line 725
    .end local v5    # "totNoOfSplitFiles":I
    .end local v6    # "partFile":Ljava/lang/String;
    .end local v7    # "curZipFile":Ljava/lang/String;
    .end local v8    # "partNumber":I
    .end local v9    # "i":I
    :cond_0
    move-wide v10, v3

    move-wide v1, v10

    .end local v1    # "this":Lnet/lingala/zip4j/util/ArchiveMaintainer;
    return-wide v1

    .line 711
    .restart local v1    # "this":Lnet/lingala/zip4j/util/ArchiveMaintainer;
    .restart local v5    # "totNoOfSplitFiles":I
    .restart local v6    # "partFile":Ljava/lang/String;
    .restart local v7    # "curZipFile":Ljava/lang/String;
    .restart local v8    # "partNumber":I
    .restart local v9    # "i":I
    :cond_1
    move v10, v8

    move-object v11, v2

    invoke-virtual {v11}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v11

    invoke-virtual {v11}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->getNoOfThisDisk()I

    move-result v11

    if-ne v10, v11, :cond_2

    .line 712
    move-object v10, v2

    invoke-virtual {v10}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v10

    move-object v6, v10

    .line 721
    :goto_1
    move-wide v10, v3

    new-instance v12, Ljava/io/File;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v14, v6

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v12}, Lnet/lingala/zip4j/util/Zip4jUtil;->getFileLengh(Ljava/io/File;)J

    move-result-wide v12

    add-long/2addr v10, v12

    move-wide v3, v10

    .line 710
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 714
    :cond_2
    move v10, v8

    const/16 v11, 0x9

    if-lt v10, v11, :cond_3

    .line 715
    new-instance v10, Ljava/lang/StringBuffer;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v12, v7

    const/4 v13, 0x0

    move-object v14, v7

    const-string/jumbo v15, "."

    invoke-virtual {v14, v15}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string/jumbo v11, ".z"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    move v11, v8

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v6, v10

    goto :goto_1

    .line 717
    :cond_3
    new-instance v10, Ljava/lang/StringBuffer;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v12, v7

    const/4 v13, 0x0

    move-object v14, v7

    const-string/jumbo v15, "."

    invoke-virtual {v14, v15}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string/jumbo v11, ".z0"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    move v11, v8

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v6, v10

    goto :goto_1
.end method

.method private calculateTotalWorkForRemoveOp(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/model/FileHeader;)J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 689
    move-object v1, p0

    .local v1, "this":Lnet/lingala/zip4j/util/ArchiveMaintainer;
    move-object v2, p1

    .local v2, "zipModel":Lnet/lingala/zip4j/model/ZipModel;
    move-object v3, p2

    .local v3, "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    new-instance v4, Ljava/io/File;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v2

    invoke-virtual {v6}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lnet/lingala/zip4j/util/Zip4jUtil;->getFileLengh(Ljava/io/File;)J

    move-result-wide v4

    move-object v6, v3

    invoke-virtual {v6}, Lnet/lingala/zip4j/model/FileHeader;->getCompressedSize()J

    move-result-wide v6

    sub-long/2addr v4, v6

    move-wide v1, v4

    .end local v1    # "this":Lnet/lingala/zip4j/util/ArchiveMaintainer;
    return-wide v1
.end method

.method private copyFile(Ljava/io/RandomAccessFile;Ljava/io/OutputStream;JJLnet/lingala/zip4j/progress/ProgressMonitor;)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 241
    move-object/from16 v2, p0

    .local v2, "this":Lnet/lingala/zip4j/util/ArchiveMaintainer;
    move-object/from16 v3, p1

    .local v3, "inputStream":Ljava/io/RandomAccessFile;
    move-object/from16 v4, p2

    .local v4, "outputStream":Ljava/io/OutputStream;
    move-wide/from16 v5, p3

    .local v5, "start":J
    move-wide/from16 v7, p5

    .local v7, "end":J
    move-object/from16 v9, p7

    .local v9, "progressMonitor":Lnet/lingala/zip4j/progress/ProgressMonitor;
    move-object/from16 v16, v3

    if-eqz v16, :cond_0

    move-object/from16 v16, v4

    if-nez v16, :cond_1

    .line 242
    :cond_0
    new-instance v16, Lnet/lingala/zip4j/exception/ZipException;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const-string/jumbo v18, "input or output stream is null, cannot copy file"

    invoke-direct/range {v17 .. v18}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 245
    :cond_1
    move-wide/from16 v16, v5

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-gez v16, :cond_2

    .line 246
    new-instance v16, Lnet/lingala/zip4j/exception/ZipException;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const-string/jumbo v18, "starting offset is negative, cannot copy file"

    invoke-direct/range {v17 .. v18}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 249
    :cond_2
    move-wide/from16 v16, v7

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-gez v16, :cond_3

    .line 250
    new-instance v16, Lnet/lingala/zip4j/exception/ZipException;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const-string/jumbo v18, "end offset is negative, cannot copy file"

    invoke-direct/range {v17 .. v18}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 253
    :cond_3
    move-wide/from16 v16, v5

    move-wide/from16 v18, v7

    cmp-long v16, v16, v18

    if-lez v16, :cond_4

    .line 254
    new-instance v16, Lnet/lingala/zip4j/exception/ZipException;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const-string/jumbo v18, "start offset is greater than end offset, cannot copy file"

    invoke-direct/range {v17 .. v18}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 257
    :cond_4
    move-wide/from16 v16, v5

    move-wide/from16 v18, v7

    cmp-long v16, v16, v18

    if-nez v16, :cond_5

    .line 258
    .line 304
    :goto_0
    return-void

    .line 261
    :cond_5
    move-object/from16 v16, v9

    invoke-virtual/range {v16 .. v16}, Lnet/lingala/zip4j/progress/ProgressMonitor;->isCancelAllTasks()Z

    move-result v16

    if-eqz v16, :cond_6

    .line 262
    move-object/from16 v16, v9

    const/16 v17, 0x3

    invoke-virtual/range {v16 .. v17}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setResult(I)V

    .line 263
    move-object/from16 v16, v9

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setState(I)V

    .line 264
    goto :goto_0

    .line 268
    :cond_6
    move-object/from16 v16, v3

    move-wide/from16 v17, v5

    :try_start_0
    invoke-virtual/range {v16 .. v18}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 270
    const/16 v16, -0x2

    move/from16 v10, v16

    .line 272
    .local v10, "readLen":I
    const-wide/16 v16, 0x0

    move-wide/from16 v12, v16

    .line 273
    .local v12, "bytesRead":J
    move-wide/from16 v16, v7

    move-wide/from16 v18, v5

    sub-long v16, v16, v18

    move-wide/from16 v14, v16

    .line 275
    .local v14, "bytesToRead":J
    move-wide/from16 v16, v7

    move-wide/from16 v18, v5

    sub-long v16, v16, v18

    const-wide/16 v18, 0x1000

    cmp-long v16, v16, v18

    if-gez v16, :cond_8

    .line 276
    move-wide/from16 v16, v7

    move-wide/from16 v18, v5

    sub-long v16, v16, v18

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    new-array v0, v0, [B

    move-object/from16 v16, v0

    move-object/from16 v11, v16

    .line 281
    .local v11, "buff":[B
    :cond_7
    :goto_1
    move-object/from16 v16, v3

    move-object/from16 v17, v11

    invoke-virtual/range {v16 .. v17}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v16

    move/from16 v20, v16

    move/from16 v16, v20

    move/from16 v17, v20

    move/from16 v10, v17

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_9

    .line 304
    :goto_2
    goto :goto_0

    .line 278
    .end local v11    # "buff":[B
    :cond_8
    const/16 v16, 0x1000

    move/from16 v0, v16

    new-array v0, v0, [B

    move-object/from16 v16, v0

    move-object/from16 v11, v16

    .line 281
    .restart local v11    # "buff":[B
    goto :goto_1

    .line 282
    :cond_9
    move-object/from16 v16, v4

    move-object/from16 v17, v11

    const/16 v18, 0x0

    move/from16 v19, v10

    invoke-virtual/range {v16 .. v19}, Ljava/io/OutputStream;->write([BII)V

    .line 284
    move-object/from16 v16, v9

    move/from16 v17, v10

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    invoke-virtual/range {v16 .. v18}, Lnet/lingala/zip4j/progress/ProgressMonitor;->updateWorkCompleted(J)V

    .line 285
    move-object/from16 v16, v9

    invoke-virtual/range {v16 .. v16}, Lnet/lingala/zip4j/progress/ProgressMonitor;->isCancelAllTasks()Z

    move-result v16

    if-eqz v16, :cond_a

    .line 286
    move-object/from16 v16, v9

    const/16 v17, 0x3

    invoke-virtual/range {v16 .. v17}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setResult(I)V

    .line 287
    goto/16 :goto_0

    .line 290
    :cond_a
    move-wide/from16 v16, v12

    move/from16 v18, v10

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    add-long v16, v16, v18

    move-wide/from16 v12, v16

    .line 292
    move-wide/from16 v16, v12

    move-wide/from16 v18, v14

    cmp-long v16, v16, v18

    if-nez v16, :cond_b

    .line 293
    goto :goto_2

    .line 294
    :cond_b
    move-wide/from16 v16, v12

    move-object/from16 v18, v11

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    add-long v16, v16, v18

    move-wide/from16 v18, v14

    cmp-long v16, v16, v18

    if-lez v16, :cond_7

    .line 295
    move-wide/from16 v16, v14

    move-wide/from16 v18, v12

    sub-long v16, v16, v18

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    new-array v0, v0, [B

    move-object/from16 v16, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v11, v16

    goto/16 :goto_1

    .line 299
    .end local v10    # "readLen":I
    .end local v11    # "buff":[B
    .end local v12    # "bytesRead":J
    .end local v14    # "bytesToRead":J
    :catch_0
    move-exception v16

    move-object/from16 v10, v16

    .line 300
    .local v10, "e":Ljava/io/IOException;
    new-instance v16, Lnet/lingala/zip4j/exception/ZipException;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    move-object/from16 v18, v10

    invoke-direct/range {v17 .. v18}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v16

    .line 301
    .end local v10    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v16

    move-object/from16 v10, v16

    .line 302
    .local v10, "e":Ljava/lang/Exception;
    new-instance v16, Lnet/lingala/zip4j/exception/ZipException;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    move-object/from16 v18, v10

    invoke-direct/range {v17 .. v18}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v16
.end method

.method private createFileHandler(Lnet/lingala/zip4j/model/ZipModel;Ljava/lang/String;)Ljava/io/RandomAccessFile;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 307
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/util/ArchiveMaintainer;
    move-object v1, p1

    .local v1, "zipModel":Lnet/lingala/zip4j/model/ZipModel;
    move-object v2, p2

    .local v2, "mode":Ljava/lang/String;
    move-object v4, v1

    if-eqz v4, :cond_0

    move-object v4, v1

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 308
    :cond_0
    new-instance v4, Lnet/lingala/zip4j/exception/ZipException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string/jumbo v6, "input parameter is null in getFilePointer, cannot create file handler to remove file"

    invoke-direct {v5, v6}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 312
    :cond_1
    :try_start_0
    new-instance v4, Ljava/io/RandomAccessFile;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    new-instance v6, Ljava/io/File;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v1

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    .end local v0    # "this":Lnet/lingala/zip4j/util/ArchiveMaintainer;
    return-object v0

    .line 313
    .restart local v0    # "this":Lnet/lingala/zip4j/util/ArchiveMaintainer;
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 314
    .local v3, "e":Ljava/io/FileNotFoundException;
    new-instance v4, Lnet/lingala/zip4j/exception/ZipException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v3

    invoke-direct {v5, v6}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method private createSplitZipFileHandler(Lnet/lingala/zip4j/model/ZipModel;I)Ljava/io/RandomAccessFile;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 451
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/util/ArchiveMaintainer;
    move-object v1, p1

    .local v1, "zipModel":Lnet/lingala/zip4j/model/ZipModel;
    move v2, p2

    .local v2, "partNumber":I
    move-object v6, v1

    if-nez v6, :cond_0

    .line 452
    new-instance v6, Lnet/lingala/zip4j/exception/ZipException;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const-string/jumbo v8, "zip model is null, cannot create split file handler"

    invoke-direct {v7, v8}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 455
    :cond_0
    move v6, v2

    if-gez v6, :cond_1

    .line 456
    new-instance v6, Lnet/lingala/zip4j/exception/ZipException;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const-string/jumbo v8, "invlaid part number, cannot create split file handler"

    invoke-direct {v7, v8}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 460
    :cond_1
    move-object v6, v1

    :try_start_0
    invoke-virtual {v6}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 461
    .local v3, "curZipFile":Ljava/lang/String;
    const/4 v6, 0x0

    move-object v4, v6

    .line 462
    .local v4, "partFile":Ljava/lang/String;
    move v6, v2

    move-object v7, v1

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v7

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->getNoOfThisDisk()I

    move-result v7

    if-ne v6, v7, :cond_2

    .line 463
    move-object v6, v1

    invoke-virtual {v6}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 471
    :goto_0
    new-instance v6, Ljava/io/File;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v4

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v5, v6

    .line 473
    .local v5, "tmpFile":Ljava/io/File;
    move-object v6, v5

    invoke-static {v6}, Lnet/lingala/zip4j/util/Zip4jUtil;->checkFileExists(Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 474
    new-instance v6, Lnet/lingala/zip4j/exception/ZipException;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    new-instance v8, Ljava/lang/StringBuffer;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const-string/jumbo v10, "split file does not exist: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v9, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 478
    .end local v3    # "curZipFile":Ljava/lang/String;
    .end local v4    # "partFile":Ljava/lang/String;
    .end local v5    # "tmpFile":Ljava/io/File;
    :catch_0
    move-exception v6

    move-object v3, v6

    .line 479
    .local v3, "e":Ljava/io/FileNotFoundException;
    new-instance v6, Lnet/lingala/zip4j/exception/ZipException;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v3

    invoke-direct {v7, v8}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 465
    .local v3, "curZipFile":Ljava/lang/String;
    .restart local v4    # "partFile":Ljava/lang/String;
    :cond_2
    move v6, v2

    const/16 v7, 0x9

    if-lt v6, v7, :cond_3

    .line 466
    :try_start_1
    new-instance v6, Ljava/lang/StringBuffer;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v3

    const/4 v9, 0x0

    move-object v10, v3

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

    move v7, v2

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    goto :goto_0

    .line 468
    :cond_3
    new-instance v6, Ljava/lang/StringBuffer;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v3

    const/4 v9, 0x0

    move-object v10, v3

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

    move v7, v2

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    goto/16 :goto_0

    .line 477
    .restart local v5    # "tmpFile":Ljava/io/File;
    :cond_4
    new-instance v6, Ljava/io/RandomAccessFile;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v5

    const-string/jumbo v9, "r"

    invoke-direct {v7, v8, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v6

    .end local v0    # "this":Lnet/lingala/zip4j/util/ArchiveMaintainer;
    return-object v0

    .line 480
    .end local v3    # "curZipFile":Ljava/lang/String;
    .end local v4    # "partFile":Ljava/lang/String;
    .end local v5    # "tmpFile":Ljava/io/File;
    .restart local v0    # "this":Lnet/lingala/zip4j/util/ArchiveMaintainer;
    :catch_1
    move-exception v6

    move-object v3, v6

    .line 481
    .local v3, "e":Ljava/lang/Exception;
    new-instance v6, Lnet/lingala/zip4j/exception/ZipException;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v3

    invoke-direct {v7, v8}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method private initMergeSplitZipFile(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/File;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    .locals 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 342
    move-object/from16 v3, p0

    .local v3, "this":Lnet/lingala/zip4j/util/ArchiveMaintainer;
    move-object/from16 v4, p1

    .local v4, "zipModel":Lnet/lingala/zip4j/model/ZipModel;
    move-object/from16 v5, p2

    .local v5, "outputZipFile":Ljava/io/File;
    move-object/from16 v6, p3

    .local v6, "progressMonitor":Lnet/lingala/zip4j/progress/ProgressMonitor;
    move-object/from16 v20, v4

    if-nez v20, :cond_0

    .line 343
    new-instance v20, Lnet/lingala/zip4j/exception/ZipException;

    move-object/from16 v28, v20

    move-object/from16 v20, v28

    move-object/from16 v21, v28

    const-string/jumbo v22, "one of the input parameters is null, cannot merge split zip file"

    invoke-direct/range {v21 .. v22}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    move-object/from16 v7, v20

    .line 344
    .local v7, "e":Lnet/lingala/zip4j/exception/ZipException;
    move-object/from16 v20, v6

    move-object/from16 v21, v7

    invoke-virtual/range {v20 .. v21}, Lnet/lingala/zip4j/progress/ProgressMonitor;->endProgressMonitorError(Ljava/lang/Throwable;)V

    .line 345
    move-object/from16 v20, v7

    throw v20

    .line 348
    .end local v7    # "e":Lnet/lingala/zip4j/exception/ZipException;
    :cond_0
    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Lnet/lingala/zip4j/model/ZipModel;->isSplitArchive()Z

    move-result v20

    if-nez v20, :cond_1

    .line 349
    new-instance v20, Lnet/lingala/zip4j/exception/ZipException;

    move-object/from16 v28, v20

    move-object/from16 v20, v28

    move-object/from16 v21, v28

    const-string/jumbo v22, "archive not a split zip file"

    invoke-direct/range {v21 .. v22}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    move-object/from16 v7, v20

    .line 350
    .restart local v7    # "e":Lnet/lingala/zip4j/exception/ZipException;
    move-object/from16 v20, v6

    move-object/from16 v21, v7

    invoke-virtual/range {v20 .. v21}, Lnet/lingala/zip4j/progress/ProgressMonitor;->endProgressMonitorError(Ljava/lang/Throwable;)V

    .line 351
    move-object/from16 v20, v7

    throw v20

    .line 354
    .end local v7    # "e":Lnet/lingala/zip4j/exception/ZipException;
    :cond_1
    const/16 v20, 0x0

    move-object/from16 v7, v20

    .line 355
    .local v7, "outputStream":Ljava/io/OutputStream;
    const/16 v20, 0x0

    move-object/from16 v8, v20

    .line 356
    .local v8, "inputStream":Ljava/io/RandomAccessFile;
    new-instance v20, Ljava/util/ArrayList;

    move-object/from16 v28, v20

    move-object/from16 v20, v28

    move-object/from16 v21, v28

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v9, v20

    .line 357
    .local v9, "fileSizeList":Ljava/util/ArrayList;
    const-wide/16 v20, 0x0

    move-wide/from16 v10, v20

    .line 358
    .local v10, "totBytesWritten":J
    const/16 v20, 0x0

    move/from16 v12, v20

    .line 361
    .local v12, "splitSigRemoved":Z
    move-object/from16 v20, v4

    :try_start_0
    invoke-virtual/range {v20 .. v20}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->getNoOfThisDisk()I

    move-result v20

    move/from16 v13, v20

    .line 363
    .local v13, "totNoOfSplitFiles":I
    move/from16 v20, v13

    if-gtz v20, :cond_4

    .line 364
    new-instance v20, Lnet/lingala/zip4j/exception/ZipException;

    move-object/from16 v28, v20

    move-object/from16 v20, v28

    move-object/from16 v21, v28

    const-string/jumbo v22, "corrupt zip model, archive not a split zip file"

    invoke-direct/range {v21 .. v22}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v20
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 419
    .end local v13    # "totNoOfSplitFiles":I
    :catch_0
    move-exception v20

    move-object/from16 v13, v20

    .line 420
    .local v13, "e":Ljava/io/IOException;
    move-object/from16 v20, v6

    move-object/from16 v21, v13

    :try_start_1
    invoke-virtual/range {v20 .. v21}, Lnet/lingala/zip4j/progress/ProgressMonitor;->endProgressMonitorError(Ljava/lang/Throwable;)V

    .line 421
    new-instance v20, Lnet/lingala/zip4j/exception/ZipException;

    move-object/from16 v28, v20

    move-object/from16 v20, v28

    move-object/from16 v21, v28

    move-object/from16 v22, v13

    invoke-direct/range {v21 .. v22}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 425
    .end local v13    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v20

    move-object/from16 v18, v20

    .line 426
    move-object/from16 v20, v7

    if-eqz v20, :cond_2

    .line 428
    move-object/from16 v20, v7

    :try_start_2
    invoke-virtual/range {v20 .. v20}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 434
    :cond_2
    :goto_0
    move-object/from16 v20, v8

    if-eqz v20, :cond_3

    .line 436
    move-object/from16 v20, v8

    :try_start_3
    invoke-virtual/range {v20 .. v20}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    .line 441
    :cond_3
    :goto_1
    move-object/from16 v20, v18

    throw v20

    .line 367
    .local v13, "totNoOfSplitFiles":I
    :cond_4
    move-object/from16 v20, v3

    move-object/from16 v21, v5

    :try_start_4
    invoke-direct/range {v20 .. v21}, Lnet/lingala/zip4j/util/ArchiveMaintainer;->prepareOutputStreamForMerge(Ljava/io/File;)Ljava/io/OutputStream;

    move-result-object v20

    move-object/from16 v7, v20

    .line 368
    const/16 v20, 0x0

    move/from16 v14, v20

    .local v14, "i":I
    :goto_2
    move/from16 v20, v14

    move/from16 v21, v13

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_7

    .line 409
    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Lnet/lingala/zip4j/model/ZipModel;->clone()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lnet/lingala/zip4j/model/ZipModel;

    move-object/from16 v14, v20

    .line 410
    .local v14, "newZipModel":Lnet/lingala/zip4j/model/ZipModel;
    move-object/from16 v20, v14

    invoke-virtual/range {v20 .. v20}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v20

    move-wide/from16 v21, v10

    invoke-virtual/range {v20 .. v22}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->setOffsetOfStartOfCentralDir(J)V

    .line 412
    move-object/from16 v20, v3

    move-object/from16 v21, v14

    move-object/from16 v22, v9

    move/from16 v23, v12

    invoke-direct/range {v20 .. v23}, Lnet/lingala/zip4j/util/ArchiveMaintainer;->updateSplitZipModel(Lnet/lingala/zip4j/model/ZipModel;Ljava/util/ArrayList;Z)V

    .line 414
    new-instance v20, Lnet/lingala/zip4j/core/HeaderWriter;

    move-object/from16 v28, v20

    move-object/from16 v20, v28

    move-object/from16 v21, v28

    invoke-direct/range {v21 .. v21}, Lnet/lingala/zip4j/core/HeaderWriter;-><init>()V

    move-object/from16 v15, v20

    .line 415
    .local v15, "headerWriter":Lnet/lingala/zip4j/core/HeaderWriter;
    move-object/from16 v20, v15

    move-object/from16 v21, v14

    move-object/from16 v22, v7

    invoke-virtual/range {v20 .. v22}, Lnet/lingala/zip4j/core/HeaderWriter;->finalizeZipFileWithoutValidations(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;)V

    .line 417
    move-object/from16 v20, v6

    invoke-virtual/range {v20 .. v20}, Lnet/lingala/zip4j/progress/ProgressMonitor;->endProgressMonitorSuccess()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 426
    move-object/from16 v20, v7

    if-eqz v20, :cond_5

    .line 428
    move-object/from16 v20, v7

    :try_start_5
    invoke-virtual/range {v20 .. v20}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    .line 434
    :cond_5
    :goto_3
    move-object/from16 v20, v8

    if-eqz v20, :cond_6

    .line 436
    move-object/from16 v20, v8

    :try_start_6
    invoke-virtual/range {v20 .. v20}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    .line 442
    .end local v14    # "newZipModel":Lnet/lingala/zip4j/model/ZipModel;
    .end local v15    # "headerWriter":Lnet/lingala/zip4j/core/HeaderWriter;
    :cond_6
    :goto_4
    return-void

    .line 369
    .local v14, "i":I
    :cond_7
    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move/from16 v22, v14

    :try_start_7
    invoke-direct/range {v20 .. v22}, Lnet/lingala/zip4j/util/ArchiveMaintainer;->createSplitZipFileHandler(Lnet/lingala/zip4j/model/ZipModel;I)Ljava/io/RandomAccessFile;

    move-result-object v20

    move-object/from16 v8, v20

    .line 371
    const/16 v20, 0x0

    move/from16 v15, v20

    .line 372
    .local v15, "start":I
    new-instance v20, Ljava/lang/Long;

    move-object/from16 v28, v20

    move-object/from16 v20, v28

    move-object/from16 v21, v28

    move-object/from16 v22, v8

    invoke-virtual/range {v22 .. v22}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v22

    invoke-direct/range {v21 .. v23}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v16, v20

    .line 374
    .local v16, "end":Ljava/lang/Long;
    move/from16 v20, v14

    if-nez v20, :cond_8

    .line 375
    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v20

    if-eqz v20, :cond_8

    .line 376
    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v20

    if-eqz v20, :cond_8

    .line 377
    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-lez v20, :cond_8

    .line 378
    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [B

    move-object/from16 v20, v0

    move-object/from16 v17, v20

    .line 379
    .local v17, "buff":[B
    move-object/from16 v20, v8

    const-wide/16 v21, 0x0

    invoke-virtual/range {v20 .. v22}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 380
    move-object/from16 v20, v8

    move-object/from16 v21, v17

    invoke-virtual/range {v20 .. v21}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v20

    .line 381
    move-object/from16 v20, v17

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lnet/lingala/zip4j/util/Raw;->readIntLittleEndian([BI)I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const-wide/32 v22, 0x8074b50

    cmp-long v20, v20, v22

    if-nez v20, :cond_8

    .line 382
    const/16 v20, 0x4

    move/from16 v15, v20

    .line 383
    const/16 v20, 0x1

    move/from16 v12, v20

    .line 388
    .end local v17    # "buff":[B
    :cond_8
    move/from16 v20, v14

    move/from16 v21, v13

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_9

    .line 389
    new-instance v20, Ljava/lang/Long;

    move-object/from16 v28, v20

    move-object/from16 v20, v28

    move-object/from16 v21, v28

    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->getOffsetOfStartOfCentralDir()J

    move-result-wide v22

    invoke-direct/range {v21 .. v23}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v16, v20

    .line 392
    :cond_9
    move-object/from16 v20, v3

    move-object/from16 v21, v8

    move-object/from16 v22, v7

    move/from16 v23, v15

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    move-object/from16 v25, v16

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Long;->longValue()J

    move-result-wide v25

    move-object/from16 v27, v6

    invoke-direct/range {v20 .. v27}, Lnet/lingala/zip4j/util/ArchiveMaintainer;->copyFile(Ljava/io/RandomAccessFile;Ljava/io/OutputStream;JJLnet/lingala/zip4j/progress/ProgressMonitor;)V

    .line 393
    move-wide/from16 v20, v10

    move-object/from16 v22, v16

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    move/from16 v24, v15

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    sub-long v22, v22, v24

    add-long v20, v20, v22

    move-wide/from16 v10, v20

    .line 394
    move-object/from16 v20, v6

    invoke-virtual/range {v20 .. v20}, Lnet/lingala/zip4j/progress/ProgressMonitor;->isCancelAllTasks()Z

    move-result v20

    if-eqz v20, :cond_c

    .line 395
    move-object/from16 v20, v6

    const/16 v21, 0x3

    invoke-virtual/range {v20 .. v21}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setResult(I)V

    .line 396
    move-object/from16 v20, v6

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setState(I)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 426
    move-object/from16 v20, v7

    if-eqz v20, :cond_a

    .line 428
    move-object/from16 v20, v7

    :try_start_8
    invoke-virtual/range {v20 .. v20}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    .line 434
    :cond_a
    :goto_5
    move-object/from16 v20, v8

    if-eqz v20, :cond_b

    .line 436
    move-object/from16 v20, v8

    :try_start_9
    invoke-virtual/range {v20 .. v20}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    .line 397
    :cond_b
    :goto_6
    goto/16 :goto_4

    .line 429
    :catch_1
    move-exception v20

    move-object/from16 v19, v20

    goto :goto_5

    .line 437
    :catch_2
    move-exception v20

    move-object/from16 v19, v20

    goto :goto_6

    .line 400
    :cond_c
    move-object/from16 v20, v9

    move-object/from16 v21, v16

    :try_start_a
    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result v20

    .line 403
    move-object/from16 v20, v8

    :try_start_b
    invoke-virtual/range {v20 .. v20}, Ljava/io/RandomAccessFile;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 368
    :goto_7
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_2

    .line 404
    :catch_3
    move-exception v20

    move-object/from16 v17, v20

    goto :goto_7

    .line 422
    .end local v13    # "totNoOfSplitFiles":I
    .end local v14    # "i":I
    .end local v15    # "start":I
    .end local v16    # "end":Ljava/lang/Long;
    :catch_4
    move-exception v20

    move-object/from16 v13, v20

    .line 423
    .local v13, "e":Ljava/lang/Exception;
    move-object/from16 v20, v6

    move-object/from16 v21, v13

    :try_start_c
    invoke-virtual/range {v20 .. v21}, Lnet/lingala/zip4j/progress/ProgressMonitor;->endProgressMonitorError(Ljava/lang/Throwable;)V

    .line 424
    new-instance v20, Lnet/lingala/zip4j/exception/ZipException;

    move-object/from16 v28, v20

    move-object/from16 v20, v28

    move-object/from16 v21, v28

    move-object/from16 v22, v13

    invoke-direct/range {v21 .. v22}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v20
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 429
    .end local v13    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v20

    move-object/from16 v19, v20

    goto/16 :goto_0

    .line 437
    :catch_6
    move-exception v20

    move-object/from16 v19, v20

    goto/16 :goto_1

    .line 429
    .local v13, "totNoOfSplitFiles":I
    .local v14, "newZipModel":Lnet/lingala/zip4j/model/ZipModel;
    .local v15, "headerWriter":Lnet/lingala/zip4j/core/HeaderWriter;
    :catch_7
    move-exception v20

    move-object/from16 v19, v20

    goto/16 :goto_3

    .line 437
    :catch_8
    move-exception v20

    move-object/from16 v19, v20

    goto/16 :goto_4
.end method

.method private prepareOutputStreamForMerge(Ljava/io/File;)Ljava/io/OutputStream;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 487
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/util/ArchiveMaintainer;
    move-object v1, p1

    .local v1, "outFile":Ljava/io/File;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 488
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "outFile is null, cannot create outputstream"

    invoke-direct {v4, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 492
    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v3

    .end local v0    # "this":Lnet/lingala/zip4j/util/ArchiveMaintainer;
    return-object v0

    .line 493
    .restart local v0    # "this":Lnet/lingala/zip4j/util/ArchiveMaintainer;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 494
    .local v2, "e":Ljava/io/FileNotFoundException;
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v2

    invoke-direct {v4, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 495
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v3

    move-object v2, v3

    .line 496
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v2

    invoke-direct {v4, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method private restoreFileName(Ljava/io/File;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 227
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/util/ArchiveMaintainer;
    move-object v1, p1

    .local v1, "zipFile":Ljava/io/File;
    move-object v2, p2

    .local v2, "tmpZipFileName":Ljava/lang/String;
    move-object v4, v1

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 229
    new-instance v4, Ljava/io/File;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v2

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    .line 230
    .local v3, "newZipFile":Ljava/io/File;
    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 231
    new-instance v4, Lnet/lingala/zip4j/exception/ZipException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string/jumbo v6, "cannot rename modified zip file"

    invoke-direct {v5, v6}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 234
    .end local v3    # "newZipFile":Ljava/io/File;
    :cond_0
    new-instance v4, Lnet/lingala/zip4j/exception/ZipException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string/jumbo v6, "cannot delete old zip file"

    invoke-direct {v5, v6}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 236
    .restart local v3    # "newZipFile":Ljava/io/File;
    :cond_1
    return-void
.end method

.method private updateSplitEndCentralDirectory(Lnet/lingala/zip4j/model/ZipModel;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 547
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/util/ArchiveMaintainer;
    move-object v1, p1

    .local v1, "zipModel":Lnet/lingala/zip4j/model/ZipModel;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 548
    :try_start_0
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "zip model is null - cannot update end of central directory for split zip model"

    invoke-direct {v4, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 562
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 563
    .local v2, "e":Lnet/lingala/zip4j/exception/ZipException;
    move-object v3, v2

    throw v3

    .line 551
    .end local v2    # "e":Lnet/lingala/zip4j/exception/ZipException;
    :cond_0
    move-object v3, v1

    :try_start_1
    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v3

    if-nez v3, :cond_1

    .line 552
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "corrupt zip model - getCentralDirectory, cannot update split zip model"

    invoke-direct {v4, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 564
    :catch_1
    move-exception v3

    move-object v2, v3

    .line 565
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v2

    invoke-direct {v4, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 555
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    move-object v3, v1

    :try_start_2
    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->setNoOfThisDisk(I)V

    .line 556
    move-object v3, v1

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->setNoOfThisDiskStartOfCentralDir(I)V

    .line 557
    move-object v3, v1

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v3

    .line 558
    move-object v4, v1

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v4

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 557
    invoke-virtual {v3, v4}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->setTotNoOfEntriesInCentralDir(I)V

    .line 559
    move-object v3, v1

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v3

    .line 560
    move-object v4, v1

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v4

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 559
    invoke-virtual {v3, v4}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->setTotNoOfEntriesInCentralDirOnThisDisk(I)V
    :try_end_2
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 567
    return-void
.end method

.method private updateSplitFileHeader(Lnet/lingala/zip4j/model/ZipModel;Ljava/util/ArrayList;Z)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 517
    move-object/from16 v1, p0

    .local v1, "this":Lnet/lingala/zip4j/util/ArchiveMaintainer;
    move-object/from16 v2, p1

    .local v2, "zipModel":Lnet/lingala/zip4j/model/ZipModel;
    move-object/from16 v3, p2

    .local v3, "fileSizeList":Ljava/util/ArrayList;
    move/from16 v4, p3

    .local v4, "splitSigRemoved":Z
    move-object v11, v2

    :try_start_0
    invoke-virtual {v11}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v11

    if-nez v11, :cond_0

    .line 518
    new-instance v11, Lnet/lingala/zip4j/exception/ZipException;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    const-string/jumbo v13, "corrupt zip model - getCentralDirectory, cannot update split zip model"

    invoke-direct {v12, v13}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 538
    :catch_0
    move-exception v11

    move-object v5, v11

    .line 539
    .local v5, "e":Lnet/lingala/zip4j/exception/ZipException;
    move-object v11, v5

    throw v11

    .line 521
    .end local v5    # "e":Lnet/lingala/zip4j/exception/ZipException;
    :cond_0
    move-object v11, v2

    :try_start_1
    invoke-virtual {v11}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v11

    invoke-virtual {v11}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    move v5, v11

    .line 522
    .local v5, "fileHeaderCount":I
    const/4 v11, 0x0

    move v6, v11

    .line 523
    .local v6, "splitSigOverhead":I
    move v11, v4

    if-eqz v11, :cond_1

    .line 524
    const/4 v11, 0x4

    move v6, v11

    .line 526
    :cond_1
    const/4 v11, 0x0

    move v7, v11

    .local v7, "i":I
    :goto_0
    move v11, v7

    move v12, v5

    if-lt v11, v12, :cond_2

    .line 543
    return-void

    .line 527
    :cond_2
    const-wide/16 v11, 0x0

    move-wide v8, v11

    .line 529
    .local v8, "offsetLHToAdd":J
    const/4 v11, 0x0

    move v10, v11

    .local v10, "j":I
    :goto_1
    move v11, v10

    move-object v12, v2

    invoke-virtual {v12}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v12

    invoke-virtual {v12}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v12

    move v13, v7

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v12}, Lnet/lingala/zip4j/model/FileHeader;->getDiskNumberStart()I

    move-result v12

    if-lt v11, v12, :cond_3

    .line 532
    move-object v11, v2

    invoke-virtual {v11}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v11

    invoke-virtual {v11}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v11

    move v12, v7

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lnet/lingala/zip4j/model/FileHeader;

    .line 533
    move-object v12, v2

    invoke-virtual {v12}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v12

    invoke-virtual {v12}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v12

    move v13, v7

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v12}, Lnet/lingala/zip4j/model/FileHeader;->getOffsetLocalHeader()J

    move-result-wide v12

    .line 534
    move-wide v14, v8

    .line 533
    add-long/2addr v12, v14

    .line 534
    move v14, v6

    int-to-long v14, v14

    .line 533
    sub-long/2addr v12, v14

    .line 532
    invoke-virtual {v11, v12, v13}, Lnet/lingala/zip4j/model/FileHeader;->setOffsetLocalHeader(J)V

    .line 535
    move-object v11, v2

    invoke-virtual {v11}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v11

    invoke-virtual {v11}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v11

    move v12, v7

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lnet/lingala/zip4j/model/FileHeader;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lnet/lingala/zip4j/model/FileHeader;->setDiskNumberStart(I)V

    .line 526
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 530
    :cond_3
    move-wide v11, v8

    move-object v13, v3

    move v14, v10

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J
    :try_end_1
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v13

    add-long/2addr v11, v13

    move-wide v8, v11

    .line 529
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 540
    .end local v5    # "fileHeaderCount":I
    .end local v6    # "splitSigOverhead":I
    .end local v7    # "i":I
    .end local v8    # "offsetLHToAdd":J
    .end local v10    # "j":I
    :catch_1
    move-exception v11

    move-object v5, v11

    .line 541
    .local v5, "e":Ljava/lang/Exception;
    new-instance v11, Lnet/lingala/zip4j/exception/ZipException;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object v13, v5

    invoke-direct {v12, v13}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v11
.end method

.method private updateSplitZip64EndCentralDirLocator(Lnet/lingala/zip4j/model/ZipModel;Ljava/util/ArrayList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 570
    move-object v1, p0

    .local v1, "this":Lnet/lingala/zip4j/util/ArchiveMaintainer;
    move-object v2, p1

    .local v2, "zipModel":Lnet/lingala/zip4j/model/ZipModel;
    move-object v3, p2

    .local v3, "fileSizeList":Ljava/util/ArrayList;
    move-object v7, v2

    if-nez v7, :cond_0

    .line 571
    new-instance v7, Lnet/lingala/zip4j/exception/ZipException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const-string/jumbo v9, "zip model is null, cannot update split Zip64 end of central directory locator"

    invoke-direct {v8, v9}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 574
    :cond_0
    move-object v7, v2

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndCentralDirLocator()Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    move-result-object v7

    if-nez v7, :cond_1

    .line 575
    .line 588
    :goto_0
    return-void

    .line 578
    :cond_1
    move-object v7, v2

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndCentralDirLocator()Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->setNoOfDiskStartOfZip64EndOfCentralDirRec(I)V

    .line 579
    const-wide/16 v7, 0x0

    move-wide v4, v7

    .line 581
    .local v4, "offsetZip64EndCentralDirRec":J
    const/4 v7, 0x0

    move v6, v7

    .local v6, "i":I
    :goto_1
    move v7, v6

    move-object v8, v3

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v7, v8, :cond_2

    .line 584
    move-object v7, v2

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndCentralDirLocator()Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    move-result-object v7

    .line 585
    move-object v8, v2

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndCentralDirLocator()Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    move-result-object v8

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->getOffsetZip64EndOfCentralDirRec()J

    move-result-wide v8

    .line 586
    move-wide v10, v4

    .line 585
    add-long/2addr v8, v10

    .line 584
    invoke-virtual {v7, v8, v9}, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->setOffsetZip64EndOfCentralDirRec(J)V

    .line 587
    move-object v7, v2

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndCentralDirLocator()Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->setTotNumberOfDiscs(I)V

    .line 588
    goto :goto_0

    .line 582
    :cond_2
    move-wide v7, v4

    move-object v9, v3

    move v10, v6

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    add-long/2addr v7, v9

    move-wide v4, v7

    .line 581
    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method

.method private updateSplitZip64EndCentralDirRec(Lnet/lingala/zip4j/model/ZipModel;Ljava/util/ArrayList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 591
    move-object v1, p0

    .local v1, "this":Lnet/lingala/zip4j/util/ArchiveMaintainer;
    move-object v2, p1

    .local v2, "zipModel":Lnet/lingala/zip4j/model/ZipModel;
    move-object v3, p2

    .local v3, "fileSizeList":Ljava/util/ArrayList;
    move-object v7, v2

    if-nez v7, :cond_0

    .line 592
    new-instance v7, Lnet/lingala/zip4j/exception/ZipException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const-string/jumbo v9, "zip model is null, cannot update split Zip64 end of central directory record"

    invoke-direct {v8, v9}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 595
    :cond_0
    move-object v7, v2

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndCentralDirRecord()Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;

    move-result-object v7

    if-nez v7, :cond_1

    .line 596
    .line 613
    :goto_0
    return-void

    .line 599
    :cond_1
    move-object v7, v2

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndCentralDirRecord()Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->setNoOfThisDisk(I)V

    .line 600
    move-object v7, v2

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndCentralDirRecord()Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->setNoOfThisDiskStartOfCentralDir(I)V

    .line 601
    move-object v7, v2

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndCentralDirRecord()Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;

    move-result-object v7

    .line 602
    move-object v8, v2

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v8

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->getTotNoOfEntriesInCentralDir()I

    move-result v8

    int-to-long v8, v8

    .line 601
    invoke-virtual {v7, v8, v9}, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->setTotNoOfEntriesInCentralDirOnThisDisk(J)V

    .line 604
    const-wide/16 v7, 0x0

    move-wide v4, v7

    .line 606
    .local v4, "offsetStartCenDirWRTStartDiskNo":J
    const/4 v7, 0x0

    move v6, v7

    .local v6, "i":I
    :goto_1
    move v7, v6

    move-object v8, v3

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v7, v8, :cond_2

    .line 610
    move-object v7, v2

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndCentralDirRecord()Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;

    move-result-object v7

    .line 611
    move-object v8, v2

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndCentralDirRecord()Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;

    move-result-object v8

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->getOffsetStartCenDirWRTStartDiskNo()J

    move-result-wide v8

    .line 612
    move-wide v10, v4

    .line 611
    add-long/2addr v8, v10

    .line 610
    invoke-virtual {v7, v8, v9}, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->setOffsetStartCenDirWRTStartDiskNo(J)V

    .line 613
    goto :goto_0

    .line 607
    :cond_2
    move-wide v7, v4

    move-object v9, v3

    move v10, v6

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    add-long/2addr v7, v9

    move-wide v4, v7

    .line 606
    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method

.method private updateSplitZipModel(Lnet/lingala/zip4j/model/ZipModel;Ljava/util/ArrayList;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 501
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/util/ArchiveMaintainer;
    move-object v1, p1

    .local v1, "zipModel":Lnet/lingala/zip4j/model/ZipModel;
    move-object v2, p2

    .local v2, "fileSizeList":Ljava/util/ArrayList;
    move v3, p3

    .local v3, "splitSigRemoved":Z
    move-object v4, v1

    if-nez v4, :cond_0

    .line 502
    new-instance v4, Lnet/lingala/zip4j/exception/ZipException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string/jumbo v6, "zip model is null, cannot update split zip model"

    invoke-direct {v5, v6}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 505
    :cond_0
    move-object v4, v1

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lnet/lingala/zip4j/model/ZipModel;->setSplitArchive(Z)V

    .line 506
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-direct {v4, v5, v6, v7}, Lnet/lingala/zip4j/util/ArchiveMaintainer;->updateSplitFileHeader(Lnet/lingala/zip4j/model/ZipModel;Ljava/util/ArrayList;Z)V

    .line 507
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lnet/lingala/zip4j/util/ArchiveMaintainer;->updateSplitEndCentralDirectory(Lnet/lingala/zip4j/model/ZipModel;)V

    .line 508
    move-object v4, v1

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/ZipModel;->isZip64Format()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 509
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lnet/lingala/zip4j/util/ArchiveMaintainer;->updateSplitZip64EndCentralDirLocator(Lnet/lingala/zip4j/model/ZipModel;Ljava/util/ArrayList;)V

    .line 510
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lnet/lingala/zip4j/util/ArchiveMaintainer;->updateSplitZip64EndCentralDirRec(Lnet/lingala/zip4j/model/ZipModel;Ljava/util/ArrayList;)V

    .line 512
    :cond_1
    return-void
.end method


# virtual methods
.method public initProgressMonitorForMergeOp(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 693
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/util/ArchiveMaintainer;
    move-object v1, p1

    .local v1, "zipModel":Lnet/lingala/zip4j/model/ZipModel;
    move-object v2, p2

    .local v2, "progressMonitor":Lnet/lingala/zip4j/progress/ProgressMonitor;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 694
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "zip model is null, cannot calculate total work for merge op"

    invoke-direct {v4, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 697
    :cond_0
    move-object v3, v2

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setCurrentOperation(I)V

    .line 698
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setFileName(Ljava/lang/String;)V

    .line 699
    move-object v3, v2

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lnet/lingala/zip4j/util/ArchiveMaintainer;->calculateTotalWorkForMergeOp(Lnet/lingala/zip4j/model/ZipModel;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setTotalWork(J)V

    .line 700
    move-object v3, v2

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setState(I)V

    .line 701
    return-void
.end method

.method public initProgressMonitorForRemoveOp(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/model/FileHeader;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 678
    move-object v1, p0

    .local v1, "this":Lnet/lingala/zip4j/util/ArchiveMaintainer;
    move-object v2, p1

    .local v2, "zipModel":Lnet/lingala/zip4j/model/ZipModel;
    move-object v3, p2

    .local v3, "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    move-object v4, p3

    .local v4, "progressMonitor":Lnet/lingala/zip4j/progress/ProgressMonitor;
    move-object v5, v2

    if-eqz v5, :cond_0

    move-object v5, v3

    if-eqz v5, :cond_0

    move-object v5, v4

    if-nez v5, :cond_1

    .line 679
    :cond_0
    new-instance v5, Lnet/lingala/zip4j/exception/ZipException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string/jumbo v7, "one of the input parameters is null, cannot calculate total work"

    invoke-direct {v6, v7}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 682
    :cond_1
    move-object v5, v4

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setCurrentOperation(I)V

    .line 683
    move-object v5, v4

    move-object v6, v3

    invoke-virtual {v6}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setFileName(Ljava/lang/String;)V

    .line 684
    move-object v5, v4

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-direct {v6, v7, v8}, Lnet/lingala/zip4j/util/ArchiveMaintainer;->calculateTotalWorkForRemoveOp(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/model/FileHeader;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setTotalWork(J)V

    .line 685
    move-object v5, v4

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setState(I)V

    .line 686
    return-void
.end method

.method public initRemoveZipFile(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/model/FileHeader;Lnet/lingala/zip4j/progress/ProgressMonitor;)Ljava/util/HashMap;
    .locals 39
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 71
    move-object/from16 v2, p0

    .local v2, "this":Lnet/lingala/zip4j/util/ArchiveMaintainer;
    move-object/from16 v3, p1

    .local v3, "zipModel":Lnet/lingala/zip4j/model/ZipModel;
    move-object/from16 v4, p2

    .local v4, "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    move-object/from16 v5, p3

    .local v5, "progressMonitor":Lnet/lingala/zip4j/progress/ProgressMonitor;
    move-object/from16 v30, v4

    if-eqz v30, :cond_0

    move-object/from16 v30, v3

    if-nez v30, :cond_1

    .line 72
    :cond_0
    new-instance v30, Lnet/lingala/zip4j/exception/ZipException;

    move-object/from16 v38, v30

    move-object/from16 v30, v38

    move-object/from16 v31, v38

    const-string/jumbo v32, "input parameters is null in maintain zip file, cannot remove file from archive"

    invoke-direct/range {v31 .. v32}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v30

    .line 75
    :cond_1
    const/16 v30, 0x0

    move-object/from16 v6, v30

    .line 76
    .local v6, "outputStream":Ljava/io/OutputStream;
    const/16 v30, 0x0

    move-object/from16 v7, v30

    .line 77
    .local v7, "zipFile":Ljava/io/File;
    const/16 v30, 0x0

    move-object/from16 v8, v30

    .line 78
    .local v8, "inputStream":Ljava/io/RandomAccessFile;
    const/16 v30, 0x0

    move/from16 v9, v30

    .line 79
    .local v9, "successFlag":Z
    const/16 v30, 0x0

    move-object/from16 v10, v30

    .line 80
    .local v10, "tmpZipFileName":Ljava/lang/String;
    new-instance v30, Ljava/util/HashMap;

    move-object/from16 v38, v30

    move-object/from16 v30, v38

    move-object/from16 v31, v38

    invoke-direct/range {v31 .. v31}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v11, v30

    .line 83
    .local v11, "retMap":Ljava/util/HashMap;
    move-object/from16 v30, v3

    move-object/from16 v31, v4

    :try_start_0
    invoke-static/range {v30 .. v31}, Lnet/lingala/zip4j/util/Zip4jUtil;->getIndexOfFileHeader(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/model/FileHeader;)I

    move-result v30

    move/from16 v12, v30

    .line 85
    .local v12, "indexOfFileHeader":I
    move/from16 v30, v12

    if-gez v30, :cond_4

    .line 86
    new-instance v30, Lnet/lingala/zip4j/exception/ZipException;

    move-object/from16 v38, v30

    move-object/from16 v30, v38

    move-object/from16 v31, v38

    const-string/jumbo v32, "file header not found in zip model, cannot remove file"

    invoke-direct/range {v31 .. v32}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v30
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    .end local v12    # "indexOfFileHeader":I
    :catch_0
    move-exception v30

    move-object/from16 v12, v30

    .line 200
    .local v12, "e":Lnet/lingala/zip4j/exception/ZipException;
    move-object/from16 v30, v5

    move-object/from16 v31, v12

    :try_start_1
    invoke-virtual/range {v30 .. v31}, Lnet/lingala/zip4j/progress/ProgressMonitor;->endProgressMonitorError(Ljava/lang/Throwable;)V

    .line 201
    move-object/from16 v30, v12

    throw v30
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 205
    .end local v12    # "e":Lnet/lingala/zip4j/exception/ZipException;
    :catchall_0
    move-exception v30

    move-object/from16 v28, v30

    .line 207
    move-object/from16 v30, v8

    if-eqz v30, :cond_2

    .line 208
    move-object/from16 v30, v8

    :try_start_2
    invoke-virtual/range {v30 .. v30}, Ljava/io/RandomAccessFile;->close()V

    .line 209
    :cond_2
    move-object/from16 v30, v6

    if-eqz v30, :cond_3

    .line 210
    move-object/from16 v30, v6

    invoke-virtual/range {v30 .. v30}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 215
    :cond_3
    move/from16 v30, v9

    if-eqz v30, :cond_19

    .line 216
    move-object/from16 v30, v2

    move-object/from16 v31, v7

    move-object/from16 v32, v10

    invoke-direct/range {v30 .. v32}, Lnet/lingala/zip4j/util/ArchiveMaintainer;->restoreFileName(Ljava/io/File;Ljava/lang/String;)V

    .line 221
    :goto_0
    move-object/from16 v30, v28

    throw v30

    .line 89
    .local v12, "indexOfFileHeader":I
    :cond_4
    move-object/from16 v30, v3

    :try_start_3
    invoke-virtual/range {v30 .. v30}, Lnet/lingala/zip4j/model/ZipModel;->isSplitArchive()Z

    move-result v30

    if-eqz v30, :cond_5

    .line 90
    new-instance v30, Lnet/lingala/zip4j/exception/ZipException;

    move-object/from16 v38, v30

    move-object/from16 v30, v38

    move-object/from16 v31, v38

    const-string/jumbo v32, "This is a split archive. Zip file format does not allow updating split/spanned files"

    invoke-direct/range {v31 .. v32}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v30
    :try_end_3
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 202
    .end local v12    # "indexOfFileHeader":I
    :catch_1
    move-exception v30

    move-object/from16 v12, v30

    .line 203
    .local v12, "e":Ljava/lang/Exception;
    move-object/from16 v30, v5

    move-object/from16 v31, v12

    :try_start_4
    invoke-virtual/range {v30 .. v31}, Lnet/lingala/zip4j/progress/ProgressMonitor;->endProgressMonitorError(Ljava/lang/Throwable;)V

    .line 204
    new-instance v30, Lnet/lingala/zip4j/exception/ZipException;

    move-object/from16 v38, v30

    move-object/from16 v30, v38

    move-object/from16 v31, v38

    move-object/from16 v32, v12

    invoke-direct/range {v31 .. v32}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v30
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 93
    .local v12, "indexOfFileHeader":I
    :cond_5
    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    move-wide/from16 v13, v30

    .line 94
    .local v13, "currTime":J
    new-instance v30, Ljava/lang/StringBuffer;

    move-object/from16 v38, v30

    move-object/from16 v30, v38

    move-object/from16 v31, v38

    move-object/from16 v32, v3

    invoke-virtual/range {v32 .. v32}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-wide/from16 v31, v13

    const-wide/16 v33, 0x3e8

    rem-long v31, v31, v33

    invoke-virtual/range {v30 .. v32}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v10, v30

    .line 95
    new-instance v30, Ljava/io/File;

    move-object/from16 v38, v30

    move-object/from16 v30, v38

    move-object/from16 v31, v38

    move-object/from16 v32, v10

    invoke-direct/range {v31 .. v32}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v15, v30

    .line 97
    .local v15, "tmpFile":Ljava/io/File;
    :goto_1
    move-object/from16 v30, v15

    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->exists()Z
    :try_end_5
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v30

    if-nez v30, :cond_6

    .line 104
    :try_start_6
    new-instance v30, Lnet/lingala/zip4j/io/SplitOutputStream;

    move-object/from16 v38, v30

    move-object/from16 v30, v38

    move-object/from16 v31, v38

    new-instance v32, Ljava/io/File;

    move-object/from16 v38, v32

    move-object/from16 v32, v38

    move-object/from16 v33, v38

    move-object/from16 v34, v10

    invoke-direct/range {v33 .. v34}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v31 .. v32}, Lnet/lingala/zip4j/io/SplitOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object/from16 v6, v30

    .line 109
    :try_start_7
    new-instance v30, Ljava/io/File;

    move-object/from16 v38, v30

    move-object/from16 v30, v38

    move-object/from16 v31, v38

    move-object/from16 v32, v3

    invoke-virtual/range {v32 .. v32}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v7, v30

    .line 111
    move-object/from16 v30, v2

    move-object/from16 v31, v3

    const-string/jumbo v32, "r"

    invoke-direct/range {v30 .. v32}, Lnet/lingala/zip4j/util/ArchiveMaintainer;->createFileHandler(Lnet/lingala/zip4j/model/ZipModel;Ljava/lang/String;)Ljava/io/RandomAccessFile;

    move-result-object v30

    move-object/from16 v8, v30

    .line 113
    new-instance v30, Lnet/lingala/zip4j/core/HeaderReader;

    move-object/from16 v38, v30

    move-object/from16 v30, v38

    move-object/from16 v31, v38

    move-object/from16 v32, v8

    invoke-direct/range {v31 .. v32}, Lnet/lingala/zip4j/core/HeaderReader;-><init>(Ljava/io/RandomAccessFile;)V

    move-object/from16 v16, v30

    .line 114
    .local v16, "headerReader":Lnet/lingala/zip4j/core/HeaderReader;
    move-object/from16 v30, v16

    move-object/from16 v31, v4

    invoke-virtual/range {v30 .. v31}, Lnet/lingala/zip4j/core/HeaderReader;->readLocalFileHeader(Lnet/lingala/zip4j/model/FileHeader;)Lnet/lingala/zip4j/model/LocalFileHeader;

    move-result-object v30

    move-object/from16 v17, v30

    .line 115
    .local v17, "localFileHeader":Lnet/lingala/zip4j/model/LocalFileHeader;
    move-object/from16 v30, v17

    if-nez v30, :cond_7

    .line 116
    new-instance v30, Lnet/lingala/zip4j/exception/ZipException;

    move-object/from16 v38, v30

    move-object/from16 v30, v38

    move-object/from16 v31, v38

    const-string/jumbo v32, "invalid local file header, cannot remove file from archive"

    invoke-direct/range {v31 .. v32}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v30

    .line 98
    .end local v16    # "headerReader":Lnet/lingala/zip4j/core/HeaderReader;
    .end local v17    # "localFileHeader":Lnet/lingala/zip4j/model/LocalFileHeader;
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    move-wide/from16 v13, v30

    .line 99
    new-instance v30, Ljava/lang/StringBuffer;

    move-object/from16 v38, v30

    move-object/from16 v30, v38

    move-object/from16 v31, v38

    move-object/from16 v32, v3

    invoke-virtual/range {v32 .. v32}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-wide/from16 v31, v13

    const-wide/16 v33, 0x3e8

    rem-long v31, v31, v33

    invoke-virtual/range {v30 .. v32}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v10, v30

    .line 100
    new-instance v30, Ljava/io/File;

    move-object/from16 v38, v30

    move-object/from16 v30, v38

    move-object/from16 v31, v38

    move-object/from16 v32, v10

    invoke-direct/range {v31 .. v32}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v15, v30

    goto/16 :goto_1

    .line 105
    :catch_2
    move-exception v30

    move-object/from16 v16, v30

    .line 106
    .local v16, "e1":Ljava/io/FileNotFoundException;
    new-instance v30, Lnet/lingala/zip4j/exception/ZipException;

    move-object/from16 v38, v30

    move-object/from16 v30, v38

    move-object/from16 v31, v38

    move-object/from16 v32, v16

    invoke-direct/range {v31 .. v32}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v30

    .line 119
    .local v16, "headerReader":Lnet/lingala/zip4j/core/HeaderReader;
    .restart local v17    # "localFileHeader":Lnet/lingala/zip4j/model/LocalFileHeader;
    :cond_7
    move-object/from16 v30, v4

    invoke-virtual/range {v30 .. v30}, Lnet/lingala/zip4j/model/FileHeader;->getOffsetLocalHeader()J

    move-result-wide v30

    move-wide/from16 v18, v30

    .line 121
    .local v18, "offsetLocalFileHeader":J
    move-object/from16 v30, v4

    invoke-virtual/range {v30 .. v30}, Lnet/lingala/zip4j/model/FileHeader;->getZip64ExtendedInfo()Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    move-result-object v30

    if-eqz v30, :cond_8

    .line 122
    move-object/from16 v30, v4

    invoke-virtual/range {v30 .. v30}, Lnet/lingala/zip4j/model/FileHeader;->getZip64ExtendedInfo()Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getOffsetLocalHeader()J

    move-result-wide v30

    const-wide/16 v32, -0x1

    cmp-long v30, v30, v32

    if-eqz v30, :cond_8

    .line 123
    move-object/from16 v30, v4

    invoke-virtual/range {v30 .. v30}, Lnet/lingala/zip4j/model/FileHeader;->getZip64ExtendedInfo()Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getOffsetLocalHeader()J

    move-result-wide v30

    move-wide/from16 v18, v30

    .line 126
    :cond_8
    const-wide/16 v30, -0x1

    move-wide/from16 v20, v30

    .line 128
    .local v20, "offsetEndOfCompressedFile":J
    move-object/from16 v30, v3

    invoke-virtual/range {v30 .. v30}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->getOffsetOfStartOfCentralDir()J

    move-result-wide v30

    move-wide/from16 v22, v30

    .line 129
    .local v22, "offsetStartCentralDir":J
    move-object/from16 v30, v3

    invoke-virtual/range {v30 .. v30}, Lnet/lingala/zip4j/model/ZipModel;->isZip64Format()Z

    move-result v30

    if-eqz v30, :cond_9

    .line 130
    move-object/from16 v30, v3

    invoke-virtual/range {v30 .. v30}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndCentralDirRecord()Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;

    move-result-object v30

    if-eqz v30, :cond_9

    .line 131
    move-object/from16 v30, v3

    invoke-virtual/range {v30 .. v30}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndCentralDirRecord()Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->getOffsetStartCenDirWRTStartDiskNo()J

    move-result-wide v30

    move-wide/from16 v22, v30

    .line 135
    :cond_9
    move-object/from16 v30, v3

    invoke-virtual/range {v30 .. v30}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v30

    move-object/from16 v24, v30

    .line 137
    .local v24, "fileHeaderList":Ljava/util/ArrayList;
    move/from16 v30, v12

    move-object/from16 v31, v24

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v31

    const/16 v32, 0x1

    add-int/lit8 v31, v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_c

    .line 138
    move-wide/from16 v30, v22

    const-wide/16 v32, 0x1

    sub-long v30, v30, v32

    move-wide/from16 v20, v30

    .line 150
    :cond_a
    :goto_2
    move-wide/from16 v30, v18

    const-wide/16 v32, 0x0

    cmp-long v30, v30, v32

    if-ltz v30, :cond_b

    move-wide/from16 v30, v20

    const-wide/16 v32, 0x0

    cmp-long v30, v30, v32

    if-gez v30, :cond_d

    .line 151
    :cond_b
    new-instance v30, Lnet/lingala/zip4j/exception/ZipException;

    move-object/from16 v38, v30

    move-object/from16 v30, v38

    move-object/from16 v31, v38

    const-string/jumbo v32, "invalid offset for start and end of local file, cannot remove file"

    invoke-direct/range {v31 .. v32}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v30

    .line 140
    :cond_c
    move-object/from16 v30, v24

    move/from16 v31, v12

    const/16 v32, 0x1

    add-int/lit8 v31, v31, 0x1

    invoke-virtual/range {v30 .. v31}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lnet/lingala/zip4j/model/FileHeader;

    move-object/from16 v25, v30

    .line 141
    .local v25, "nextFileHeader":Lnet/lingala/zip4j/model/FileHeader;
    move-object/from16 v30, v25

    if-eqz v30, :cond_a

    .line 142
    move-object/from16 v30, v25

    invoke-virtual/range {v30 .. v30}, Lnet/lingala/zip4j/model/FileHeader;->getOffsetLocalHeader()J

    move-result-wide v30

    const-wide/16 v32, 0x1

    sub-long v30, v30, v32

    move-wide/from16 v20, v30

    .line 143
    move-object/from16 v30, v25

    invoke-virtual/range {v30 .. v30}, Lnet/lingala/zip4j/model/FileHeader;->getZip64ExtendedInfo()Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    move-result-object v30

    if-eqz v30, :cond_a

    .line 144
    move-object/from16 v30, v25

    invoke-virtual/range {v30 .. v30}, Lnet/lingala/zip4j/model/FileHeader;->getZip64ExtendedInfo()Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getOffsetLocalHeader()J

    move-result-wide v30

    const-wide/16 v32, -0x1

    cmp-long v30, v30, v32

    if-eqz v30, :cond_a

    .line 145
    move-object/from16 v30, v25

    invoke-virtual/range {v30 .. v30}, Lnet/lingala/zip4j/model/FileHeader;->getZip64ExtendedInfo()Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getOffsetLocalHeader()J

    move-result-wide v30

    const-wide/16 v32, 0x1

    sub-long v30, v30, v32

    move-wide/from16 v20, v30

    goto :goto_2

    .line 154
    .end local v25    # "nextFileHeader":Lnet/lingala/zip4j/model/FileHeader;
    :cond_d
    move/from16 v30, v12

    if-nez v30, :cond_11

    .line 155
    move-object/from16 v30, v3

    invoke-virtual/range {v30 .. v30}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v30

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-le v0, v1, :cond_e

    .line 157
    move-object/from16 v30, v2

    move-object/from16 v31, v8

    move-object/from16 v32, v6

    move-wide/from16 v33, v20

    const-wide/16 v35, 0x1

    add-long v33, v33, v35

    move-wide/from16 v35, v22

    move-object/from16 v37, v5

    invoke-direct/range {v30 .. v37}, Lnet/lingala/zip4j/util/ArchiveMaintainer;->copyFile(Ljava/io/RandomAccessFile;Ljava/io/OutputStream;JJLnet/lingala/zip4j/progress/ProgressMonitor;)V

    .line 166
    :cond_e
    :goto_3
    move-object/from16 v30, v5

    invoke-virtual/range {v30 .. v30}, Lnet/lingala/zip4j/progress/ProgressMonitor;->isCancelAllTasks()Z

    move-result v30

    if-eqz v30, :cond_14

    .line 167
    move-object/from16 v30, v5

    const/16 v31, 0x3

    invoke-virtual/range {v30 .. v31}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setResult(I)V

    .line 168
    move-object/from16 v30, v5

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setState(I)V
    :try_end_7
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 207
    move-object/from16 v30, v8

    if-eqz v30, :cond_f

    .line 208
    move-object/from16 v30, v8

    :try_start_8
    invoke-virtual/range {v30 .. v30}, Ljava/io/RandomAccessFile;->close()V

    .line 209
    :cond_f
    move-object/from16 v30, v6

    if-eqz v30, :cond_10

    .line 210
    move-object/from16 v30, v6

    invoke-virtual/range {v30 .. v30}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 215
    :cond_10
    move/from16 v30, v9

    if-eqz v30, :cond_13

    .line 216
    move-object/from16 v30, v2

    move-object/from16 v31, v7

    move-object/from16 v32, v10

    invoke-direct/range {v30 .. v32}, Lnet/lingala/zip4j/util/ArchiveMaintainer;->restoreFileName(Ljava/io/File;Ljava/lang/String;)V

    .line 169
    :goto_4
    const/16 v30, 0x0

    move-object/from16 v2, v30

    .line 223
    .end local v2    # "this":Lnet/lingala/zip4j/util/ArchiveMaintainer;
    :goto_5
    return-object v2

    .line 159
    .restart local v2    # "this":Lnet/lingala/zip4j/util/ArchiveMaintainer;
    :cond_11
    move/from16 v30, v12

    move-object/from16 v31, v24

    :try_start_9
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v31

    const/16 v32, 0x1

    add-int/lit8 v31, v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_12

    .line 160
    move-object/from16 v30, v2

    move-object/from16 v31, v8

    move-object/from16 v32, v6

    const-wide/16 v33, 0x0

    move-wide/from16 v35, v18

    move-object/from16 v37, v5

    invoke-direct/range {v30 .. v37}, Lnet/lingala/zip4j/util/ArchiveMaintainer;->copyFile(Ljava/io/RandomAccessFile;Ljava/io/OutputStream;JJLnet/lingala/zip4j/progress/ProgressMonitor;)V

    goto :goto_3

    .line 162
    :cond_12
    move-object/from16 v30, v2

    move-object/from16 v31, v8

    move-object/from16 v32, v6

    const-wide/16 v33, 0x0

    move-wide/from16 v35, v18

    move-object/from16 v37, v5

    invoke-direct/range {v30 .. v37}, Lnet/lingala/zip4j/util/ArchiveMaintainer;->copyFile(Ljava/io/RandomAccessFile;Ljava/io/OutputStream;JJLnet/lingala/zip4j/progress/ProgressMonitor;)V

    .line 163
    move-object/from16 v30, v2

    move-object/from16 v31, v8

    move-object/from16 v32, v6

    move-wide/from16 v33, v20

    const-wide/16 v35, 0x1

    add-long v33, v33, v35

    move-wide/from16 v35, v22

    move-object/from16 v37, v5

    invoke-direct/range {v30 .. v37}, Lnet/lingala/zip4j/util/ArchiveMaintainer;->copyFile(Ljava/io/RandomAccessFile;Ljava/io/OutputStream;JJLnet/lingala/zip4j/progress/ProgressMonitor;)V
    :try_end_9
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_3

    .line 211
    :catch_3
    move-exception v30

    move-object/from16 v29, v30

    .line 212
    .local v29, "e":Ljava/io/IOException;
    new-instance v30, Lnet/lingala/zip4j/exception/ZipException;

    move-object/from16 v38, v30

    move-object/from16 v30, v38

    move-object/from16 v31, v38

    const-string/jumbo v32, "cannot close input stream or output stream when trying to delete a file from zip file"

    invoke-direct/range {v31 .. v32}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v30

    .line 218
    .end local v29    # "e":Ljava/io/IOException;
    :cond_13
    new-instance v30, Ljava/io/File;

    move-object/from16 v38, v30

    move-object/from16 v30, v38

    move-object/from16 v31, v38

    move-object/from16 v32, v10

    invoke-direct/range {v31 .. v32}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v29, v30

    .line 219
    .local v29, "newZipFile":Ljava/io/File;
    move-object/from16 v30, v29

    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->delete()Z

    move-result v30

    goto :goto_4

    .line 172
    .end local v29    # "newZipFile":Ljava/io/File;
    :cond_14
    move-object/from16 v30, v3

    :try_start_a
    invoke-virtual/range {v30 .. v30}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v30

    move-object/from16 v31, v6

    check-cast v31, Lnet/lingala/zip4j/io/SplitOutputStream;

    invoke-virtual/range {v31 .. v31}, Lnet/lingala/zip4j/io/SplitOutputStream;->getFilePointer()J

    move-result-wide v31

    invoke-virtual/range {v30 .. v32}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->setOffsetOfStartOfCentralDir(J)V

    .line 173
    move-object/from16 v30, v3

    invoke-virtual/range {v30 .. v30}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v30

    .line 174
    move-object/from16 v31, v3

    invoke-virtual/range {v31 .. v31}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->getTotNoOfEntriesInCentralDir()I

    move-result v31

    const/16 v32, 0x1

    add-int/lit8 v31, v31, -0x1

    .line 173
    invoke-virtual/range {v30 .. v31}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->setTotNoOfEntriesInCentralDir(I)V

    .line 175
    move-object/from16 v30, v3

    invoke-virtual/range {v30 .. v30}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v30

    .line 176
    move-object/from16 v31, v3

    invoke-virtual/range {v31 .. v31}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->getTotNoOfEntriesInCentralDirOnThisDisk()I

    move-result v31

    const/16 v32, 0x1

    add-int/lit8 v31, v31, -0x1

    .line 175
    invoke-virtual/range {v30 .. v31}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->setTotNoOfEntriesInCentralDirOnThisDisk(I)V

    .line 178
    move-object/from16 v30, v3

    invoke-virtual/range {v30 .. v30}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v30

    move/from16 v31, v12

    invoke-virtual/range {v30 .. v31}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v30

    .line 180
    move/from16 v30, v12

    move/from16 v25, v30

    .local v25, "i":I
    :goto_6
    move/from16 v30, v25

    move-object/from16 v31, v3

    invoke-virtual/range {v31 .. v31}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-lt v0, v1, :cond_17

    .line 191
    new-instance v30, Lnet/lingala/zip4j/core/HeaderWriter;

    move-object/from16 v38, v30

    move-object/from16 v30, v38

    move-object/from16 v31, v38

    invoke-direct/range {v31 .. v31}, Lnet/lingala/zip4j/core/HeaderWriter;-><init>()V

    move-object/from16 v25, v30

    .line 192
    .local v25, "headerWriter":Lnet/lingala/zip4j/core/HeaderWriter;
    move-object/from16 v30, v25

    move-object/from16 v31, v3

    move-object/from16 v32, v6

    invoke-virtual/range {v30 .. v32}, Lnet/lingala/zip4j/core/HeaderWriter;->finalizeZipFile(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;)V

    .line 194
    const/16 v30, 0x1

    move/from16 v9, v30

    .line 196
    move-object/from16 v30, v11

    const-string/jumbo v31, "offsetCentralDir"

    .line 197
    move-object/from16 v32, v3

    invoke-virtual/range {v32 .. v32}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->getOffsetOfStartOfCentralDir()J

    move-result-wide v32

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v32

    .line 196
    invoke-virtual/range {v30 .. v32}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result-object v30

    .line 207
    move-object/from16 v30, v8

    if-eqz v30, :cond_15

    .line 208
    move-object/from16 v30, v8

    :try_start_b
    invoke-virtual/range {v30 .. v30}, Ljava/io/RandomAccessFile;->close()V

    .line 209
    :cond_15
    move-object/from16 v30, v6

    if-eqz v30, :cond_16

    .line 210
    move-object/from16 v30, v6

    invoke-virtual/range {v30 .. v30}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    .line 215
    :cond_16
    move/from16 v30, v9

    if-eqz v30, :cond_1a

    .line 216
    move-object/from16 v30, v2

    move-object/from16 v31, v7

    move-object/from16 v32, v10

    invoke-direct/range {v30 .. v32}, Lnet/lingala/zip4j/util/ArchiveMaintainer;->restoreFileName(Ljava/io/File;Ljava/lang/String;)V

    .line 223
    :goto_7
    move-object/from16 v30, v11

    move-object/from16 v2, v30

    goto/16 :goto_5

    .line 181
    .local v25, "i":I
    :cond_17
    move-object/from16 v30, v3

    :try_start_c
    invoke-virtual/range {v30 .. v30}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v30

    move/from16 v31, v25

    invoke-virtual/range {v30 .. v31}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual/range {v30 .. v30}, Lnet/lingala/zip4j/model/FileHeader;->getOffsetLocalHeader()J

    move-result-wide v30

    move-wide/from16 v26, v30

    .line 182
    .local v26, "offsetLocalHdr":J
    move-object/from16 v30, v3

    invoke-virtual/range {v30 .. v30}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v30

    move/from16 v31, v25

    invoke-virtual/range {v30 .. v31}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual/range {v30 .. v30}, Lnet/lingala/zip4j/model/FileHeader;->getZip64ExtendedInfo()Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    move-result-object v30

    if-eqz v30, :cond_18

    .line 183
    move-object/from16 v30, v3

    invoke-virtual/range {v30 .. v30}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v30

    move/from16 v31, v25

    invoke-virtual/range {v30 .. v31}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual/range {v30 .. v30}, Lnet/lingala/zip4j/model/FileHeader;->getZip64ExtendedInfo()Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getOffsetLocalHeader()J

    move-result-wide v30

    const-wide/16 v32, -0x1

    cmp-long v30, v30, v32

    if-eqz v30, :cond_18

    .line 184
    move-object/from16 v30, v3

    invoke-virtual/range {v30 .. v30}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v30

    move/from16 v31, v25

    invoke-virtual/range {v30 .. v31}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual/range {v30 .. v30}, Lnet/lingala/zip4j/model/FileHeader;->getZip64ExtendedInfo()Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getOffsetLocalHeader()J

    move-result-wide v30

    move-wide/from16 v26, v30

    .line 187
    :cond_18
    move-object/from16 v30, v3

    invoke-virtual/range {v30 .. v30}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v30

    move/from16 v31, v25

    invoke-virtual/range {v30 .. v31}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lnet/lingala/zip4j/model/FileHeader;

    .line 188
    move-wide/from16 v31, v26

    move-wide/from16 v33, v20

    move-wide/from16 v35, v18

    sub-long v33, v33, v35

    sub-long v31, v31, v33

    const-wide/16 v33, 0x1

    sub-long v31, v31, v33

    .line 187
    invoke-virtual/range {v30 .. v32}, Lnet/lingala/zip4j/model/FileHeader;->setOffsetLocalHeader(J)V
    :try_end_c
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 180
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_6

    .line 211
    .end local v12    # "indexOfFileHeader":I
    .end local v13    # "currTime":J
    .end local v15    # "tmpFile":Ljava/io/File;
    .end local v16    # "headerReader":Lnet/lingala/zip4j/core/HeaderReader;
    .end local v17    # "localFileHeader":Lnet/lingala/zip4j/model/LocalFileHeader;
    .end local v18    # "offsetLocalFileHeader":J
    .end local v20    # "offsetEndOfCompressedFile":J
    .end local v22    # "offsetStartCentralDir":J
    .end local v24    # "fileHeaderList":Ljava/util/ArrayList;
    .end local v25    # "i":I
    .end local v26    # "offsetLocalHdr":J
    :catch_4
    move-exception v30

    move-object/from16 v29, v30

    .line 212
    .local v29, "e":Ljava/io/IOException;
    new-instance v30, Lnet/lingala/zip4j/exception/ZipException;

    move-object/from16 v38, v30

    move-object/from16 v30, v38

    move-object/from16 v31, v38

    const-string/jumbo v32, "cannot close input stream or output stream when trying to delete a file from zip file"

    invoke-direct/range {v31 .. v32}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v30

    .line 218
    .end local v29    # "e":Ljava/io/IOException;
    :cond_19
    new-instance v30, Ljava/io/File;

    move-object/from16 v38, v30

    move-object/from16 v30, v38

    move-object/from16 v31, v38

    move-object/from16 v32, v10

    invoke-direct/range {v31 .. v32}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v29, v30

    .line 219
    .local v29, "newZipFile":Ljava/io/File;
    move-object/from16 v30, v29

    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->delete()Z

    move-result v30

    goto/16 :goto_0

    .line 211
    .end local v29    # "newZipFile":Ljava/io/File;
    .restart local v12    # "indexOfFileHeader":I
    .restart local v13    # "currTime":J
    .restart local v15    # "tmpFile":Ljava/io/File;
    .restart local v16    # "headerReader":Lnet/lingala/zip4j/core/HeaderReader;
    .restart local v17    # "localFileHeader":Lnet/lingala/zip4j/model/LocalFileHeader;
    .restart local v18    # "offsetLocalFileHeader":J
    .restart local v20    # "offsetEndOfCompressedFile":J
    .restart local v22    # "offsetStartCentralDir":J
    .restart local v24    # "fileHeaderList":Ljava/util/ArrayList;
    .local v25, "headerWriter":Lnet/lingala/zip4j/core/HeaderWriter;
    :catch_5
    move-exception v30

    move-object/from16 v29, v30

    .line 212
    .local v29, "e":Ljava/io/IOException;
    new-instance v30, Lnet/lingala/zip4j/exception/ZipException;

    move-object/from16 v38, v30

    move-object/from16 v30, v38

    move-object/from16 v31, v38

    const-string/jumbo v32, "cannot close input stream or output stream when trying to delete a file from zip file"

    invoke-direct/range {v31 .. v32}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v30

    .line 218
    .end local v29    # "e":Ljava/io/IOException;
    :cond_1a
    new-instance v30, Ljava/io/File;

    move-object/from16 v38, v30

    move-object/from16 v30, v38

    move-object/from16 v31, v38

    move-object/from16 v32, v10

    invoke-direct/range {v31 .. v32}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v29, v30

    .line 219
    .local v29, "newZipFile":Ljava/io/File;
    move-object/from16 v30, v29

    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->delete()Z

    move-result v30

    goto/16 :goto_7
.end method

.method public mergeSplitZipFiles(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/File;Lnet/lingala/zip4j/progress/ProgressMonitor;Z)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 325
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/util/ArchiveMaintainer;
    move-object v1, p1

    .local v1, "zipModel":Lnet/lingala/zip4j/model/ZipModel;
    move-object/from16 v2, p2

    .local v2, "outputZipFile":Ljava/io/File;
    move-object/from16 v3, p3

    .local v3, "progressMonitor":Lnet/lingala/zip4j/progress/ProgressMonitor;
    move/from16 v4, p4

    .local v4, "runInThread":Z
    move v6, v4

    if-eqz v6, :cond_0

    .line 326
    new-instance v6, Lnet/lingala/zip4j/util/ArchiveMaintainer$2;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-object v8, v0

    const-string/jumbo v9, "Zip4j"

    move-object v10, v1

    move-object v11, v2

    move-object v12, v3

    invoke-direct/range {v7 .. v12}, Lnet/lingala/zip4j/util/ArchiveMaintainer$2;-><init>(Lnet/lingala/zip4j/util/ArchiveMaintainer;Ljava/lang/String;Lnet/lingala/zip4j/model/ZipModel;Ljava/io/File;Lnet/lingala/zip4j/progress/ProgressMonitor;)V

    move-object v5, v6

    .line 334
    .local v5, "thread":Ljava/lang/Thread;
    move-object v6, v5

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 338
    .end local v5    # "thread":Ljava/lang/Thread;
    :goto_0
    return-void

    .line 336
    :cond_0
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    invoke-direct {v6, v7, v8, v9}, Lnet/lingala/zip4j/util/ArchiveMaintainer;->initMergeSplitZipFile(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/File;Lnet/lingala/zip4j/progress/ProgressMonitor;)V

    goto :goto_0
.end method

.method public removeZipFile(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/model/FileHeader;Lnet/lingala/zip4j/progress/ProgressMonitor;Z)Ljava/util/HashMap;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/util/ArchiveMaintainer;
    move-object v1, p1

    .local v1, "zipModel":Lnet/lingala/zip4j/model/ZipModel;
    move-object/from16 v2, p2

    .local v2, "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    move-object/from16 v3, p3

    .local v3, "progressMonitor":Lnet/lingala/zip4j/progress/ProgressMonitor;
    move/from16 v4, p4

    .local v4, "runInThread":Z
    move v6, v4

    if-eqz v6, :cond_0

    .line 49
    new-instance v6, Lnet/lingala/zip4j/util/ArchiveMaintainer$1;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-object v8, v0

    const-string/jumbo v9, "Zip4j"

    move-object v10, v1

    move-object v11, v2

    move-object v12, v3

    invoke-direct/range {v7 .. v12}, Lnet/lingala/zip4j/util/ArchiveMaintainer$1;-><init>(Lnet/lingala/zip4j/util/ArchiveMaintainer;Ljava/lang/String;Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/model/FileHeader;Lnet/lingala/zip4j/progress/ProgressMonitor;)V

    move-object v5, v6

    .line 58
    .local v5, "thread":Ljava/lang/Thread;
    move-object v6, v5

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 59
    const/4 v6, 0x0

    move-object v0, v6

    .line 63
    .end local v0    # "this":Lnet/lingala/zip4j/util/ArchiveMaintainer;
    .end local v5    # "thread":Ljava/lang/Thread;
    :goto_0
    return-object v0

    .line 61
    .restart local v0    # "this":Lnet/lingala/zip4j/util/ArchiveMaintainer;
    :cond_0
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    invoke-virtual {v6, v7, v8, v9}, Lnet/lingala/zip4j/util/ArchiveMaintainer;->initRemoveZipFile(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/model/FileHeader;Lnet/lingala/zip4j/progress/ProgressMonitor;)Ljava/util/HashMap;

    move-result-object v6

    move-object v5, v6

    .line 62
    .local v5, "retMap":Ljava/util/HashMap;
    move-object v6, v3

    invoke-virtual {v6}, Lnet/lingala/zip4j/progress/ProgressMonitor;->endProgressMonitorSuccess()V

    .line 63
    move-object v6, v5

    move-object v0, v6

    goto :goto_0
.end method

.method public setComment(Lnet/lingala/zip4j/model/ZipModel;Ljava/lang/String;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 616
    move-object/from16 v1, p0

    .local v1, "this":Lnet/lingala/zip4j/util/ArchiveMaintainer;
    move-object/from16 v2, p1

    .local v2, "zipModel":Lnet/lingala/zip4j/model/ZipModel;
    move-object/from16 v3, p2

    .local v3, "comment":Ljava/lang/String;
    move-object v11, v3

    if-nez v11, :cond_0

    .line 617
    new-instance v11, Lnet/lingala/zip4j/exception/ZipException;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const-string/jumbo v13, "comment is null, cannot update Zip file with comment"

    invoke-direct {v12, v13}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 620
    :cond_0
    move-object v11, v2

    if-nez v11, :cond_1

    .line 621
    new-instance v11, Lnet/lingala/zip4j/exception/ZipException;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const-string/jumbo v13, "zipModel is null, cannot update Zip file with comment"

    invoke-direct {v12, v13}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 624
    :cond_1
    move-object v11, v3

    move-object v4, v11

    .line 625
    .local v4, "encodedComment":Ljava/lang/String;
    move-object v11, v3

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    move-object v5, v11

    .line 626
    .local v5, "commentBytes":[B
    move-object v11, v3

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    move v6, v11

    .line 628
    .local v6, "commentLength":I
    const-string/jumbo v11, "windows-1254"

    invoke-static {v11}, Lnet/lingala/zip4j/util/Zip4jUtil;->isSupportedCharset(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 630
    :try_start_0
    new-instance v11, Ljava/lang/String;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    move-object v13, v3

    const-string/jumbo v14, "windows-1254"

    invoke-virtual {v13, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    const-string/jumbo v14, "windows-1254"

    invoke-direct {v12, v13, v14}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object v4, v11

    .line 631
    move-object v11, v4

    const-string/jumbo v12, "windows-1254"

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    move-object v5, v11

    .line 632
    move-object v11, v4

    invoke-virtual {v11}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    move v6, v11

    .line 640
    :cond_2
    :goto_0
    move v11, v6

    const v12, 0xffff

    if-le v11, v12, :cond_3

    .line 641
    new-instance v11, Lnet/lingala/zip4j/exception/ZipException;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const-string/jumbo v13, "comment length exceeds maximum length"

    invoke-direct {v12, v13}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 633
    :catch_0
    move-exception v11

    move-object v7, v11

    .line 634
    .local v7, "e":Ljava/io/UnsupportedEncodingException;
    move-object v11, v3

    move-object v4, v11

    .line 635
    move-object v11, v3

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    move-object v5, v11

    .line 636
    move-object v11, v3

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    move v6, v11

    goto :goto_0

    .line 644
    .end local v7    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_3
    move-object v11, v2

    invoke-virtual {v11}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v11

    move-object v12, v4

    invoke-virtual {v11, v12}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->setComment(Ljava/lang/String;)V

    .line 645
    move-object v11, v2

    invoke-virtual {v11}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v11

    move-object v12, v5

    invoke-virtual {v11, v12}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->setCommentBytes([B)V

    .line 646
    move-object v11, v2

    invoke-virtual {v11}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v11

    move v12, v6

    invoke-virtual {v11, v12}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->setCommentLength(I)V

    .line 648
    const/4 v11, 0x0

    move-object v7, v11

    .line 651
    .local v7, "outputStream":Lnet/lingala/zip4j/io/SplitOutputStream;
    :try_start_1
    new-instance v11, Lnet/lingala/zip4j/core/HeaderWriter;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    invoke-direct {v12}, Lnet/lingala/zip4j/core/HeaderWriter;-><init>()V

    move-object v8, v11

    .line 652
    .local v8, "headerWriter":Lnet/lingala/zip4j/core/HeaderWriter;
    new-instance v11, Lnet/lingala/zip4j/io/SplitOutputStream;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    move-object v13, v2

    invoke-virtual {v13}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lnet/lingala/zip4j/io/SplitOutputStream;-><init>(Ljava/lang/String;)V

    move-object v7, v11

    .line 654
    move-object v11, v2

    invoke-virtual {v11}, Lnet/lingala/zip4j/model/ZipModel;->isZip64Format()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 655
    move-object v11, v7

    move-object v12, v2

    invoke-virtual {v12}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndCentralDirRecord()Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;

    move-result-object v12

    invoke-virtual {v12}, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->getOffsetStartCenDirWRTStartDiskNo()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Lnet/lingala/zip4j/io/SplitOutputStream;->seek(J)V

    .line 660
    :goto_1
    move-object v11, v8

    move-object v12, v2

    move-object v13, v7

    invoke-virtual {v11, v12, v13}, Lnet/lingala/zip4j/core/HeaderWriter;->finalizeZipFileWithoutValidations(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 666
    move-object v11, v7

    if-eqz v11, :cond_4

    .line 668
    move-object v11, v7

    :try_start_2
    invoke-virtual {v11}, Lnet/lingala/zip4j/io/SplitOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 674
    :cond_4
    :goto_2
    return-void

    .line 657
    :cond_5
    move-object v11, v7

    move-object v12, v2

    :try_start_3
    invoke-virtual {v12}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v12

    invoke-virtual {v12}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->getOffsetOfStartOfCentralDir()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Lnet/lingala/zip4j/io/SplitOutputStream;->seek(J)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 661
    .end local v8    # "headerWriter":Lnet/lingala/zip4j/core/HeaderWriter;
    :catch_1
    move-exception v11

    move-object v8, v11

    .line 662
    .local v8, "e":Ljava/io/FileNotFoundException;
    :try_start_4
    new-instance v11, Lnet/lingala/zip4j/exception/ZipException;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    move-object v13, v8

    invoke-direct {v12, v13}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 665
    .end local v8    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v11

    move-object v9, v11

    .line 666
    move-object v11, v7

    if-eqz v11, :cond_6

    .line 668
    move-object v11, v7

    :try_start_5
    invoke-virtual {v11}, Lnet/lingala/zip4j/io/SplitOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 673
    :cond_6
    :goto_3
    move-object v11, v9

    throw v11

    .line 663
    :catch_2
    move-exception v11

    move-object v8, v11

    .line 664
    .local v8, "e":Ljava/io/IOException;
    :try_start_6
    new-instance v11, Lnet/lingala/zip4j/exception/ZipException;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    move-object v13, v8

    invoke-direct {v12, v13}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 669
    .end local v8    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v11

    move-object v10, v11

    goto :goto_3

    .local v8, "headerWriter":Lnet/lingala/zip4j/core/HeaderWriter;
    :catch_4
    move-exception v11

    move-object v10, v11

    goto :goto_2
.end method
