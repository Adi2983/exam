.class public Lnet/lingala/zip4j/core/HeaderWriter;
.super Ljava/lang/Object;
.source "HeaderWriter.java"


# instance fields
.field private final ZIP64_EXTRA_BUF:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/core/HeaderWriter;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 39
    move-object v1, v0

    const/16 v2, 0x32

    iput v2, v1, Lnet/lingala/zip4j/core/HeaderWriter;->ZIP64_EXTRA_BUF:I

    .line 37
    return-void
.end method

.method private byteArrayListToByteArray(Ljava/util/List;)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 910
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/core/HeaderWriter;
    move-object v1, p1

    .local v1, "arrayList":Ljava/util/List;
    move-object v4, v1

    if-nez v4, :cond_0

    .line 911
    new-instance v4, Lnet/lingala/zip4j/exception/ZipException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string/jumbo v6, "input byte array list is null, cannot conver to byte array"

    invoke-direct {v5, v6}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 914
    :cond_0
    move-object v4, v1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_1

    .line 915
    const/4 v4, 0x0

    move-object v0, v4

    .line 924
    .end local v0    # "this":Lnet/lingala/zip4j/core/HeaderWriter;
    :goto_0
    return-object v0

    .line 918
    .restart local v0    # "this":Lnet/lingala/zip4j/core/HeaderWriter;
    :cond_1
    move-object v4, v1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [B

    move-object v2, v4

    .line 920
    .local v2, "retBytes":[B
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_1
    move v4, v3

    move-object v5, v1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lt v4, v5, :cond_2

    .line 924
    move-object v4, v2

    move-object v0, v4

    goto :goto_0

    .line 921
    :cond_2
    move-object v4, v2

    move v5, v3

    move-object v6, v1

    move v7, v3

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v6

    aput-byte v6, v4, v5

    .line 920
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private copyByteArrayToArrayList([BLjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 900
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/core/HeaderWriter;
    move-object v1, p1

    .local v1, "byteArray":[B
    move-object v2, p2

    .local v2, "arrayList":Ljava/util/List;
    move-object v4, v2

    if-eqz v4, :cond_0

    move-object v4, v1

    if-nez v4, :cond_1

    .line 901
    :cond_0
    new-instance v4, Lnet/lingala/zip4j/exception/ZipException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string/jumbo v6, "one of the input parameters is null, cannot copy byte array to array list"

    invoke-direct {v5, v6}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 904
    :cond_1
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move-object v5, v1

    array-length v5, v5

    if-lt v4, v5, :cond_2

    .line 907
    return-void

    .line 905
    :cond_2
    move-object v4, v2

    move-object v5, v1

    move v6, v3

    aget-byte v5, v5, v6

    invoke-static {v5}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 904
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private countNumberOfFileHeaderEntriesOnDisk(Ljava/util/ArrayList;I)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 929
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/core/HeaderWriter;
    move-object v1, p1

    .local v1, "fileHeaders":Ljava/util/ArrayList;
    move v2, p2

    .local v2, "numOfDisk":I
    move-object v6, v1

    if-nez v6, :cond_0

    .line 930
    new-instance v6, Lnet/lingala/zip4j/exception/ZipException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string/jumbo v8, "file headers are null, cannot calculate number of entries on this disk"

    invoke-direct {v7, v8}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 933
    :cond_0
    const/4 v6, 0x0

    move v3, v6

    .line 934
    .local v3, "noEntries":I
    const/4 v6, 0x0

    move v4, v6

    .local v4, "i":I
    :goto_0
    move v6, v4

    move-object v7, v1

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v6, v7, :cond_1

    .line 940
    move v6, v3

    move v0, v6

    .end local v0    # "this":Lnet/lingala/zip4j/core/HeaderWriter;
    return v0

    .line 935
    .restart local v0    # "this":Lnet/lingala/zip4j/core/HeaderWriter;
    :cond_1
    move-object v6, v1

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/lingala/zip4j/model/FileHeader;

    move-object v5, v6

    .line 936
    .local v5, "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    move-object v6, v5

    invoke-virtual {v6}, Lnet/lingala/zip4j/model/FileHeader;->getDiskNumberStart()I

    move-result v6

    move v7, v2

    if-ne v6, v7, :cond_2

    .line 937
    add-int/lit8 v3, v3, 0x1

    .line 934
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private processHeaderData(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 340
    move-object v1, p0

    .local v1, "this":Lnet/lingala/zip4j/core/HeaderWriter;
    move-object v2, p1

    .local v2, "zipModel":Lnet/lingala/zip4j/model/ZipModel;
    move-object v3, p2

    .local v3, "outputStream":Ljava/io/OutputStream;
    const/4 v5, 0x0

    move v4, v5

    .line 341
    .local v4, "currSplitFileCounter":I
    move-object v5, v3

    :try_start_0
    instance-of v5, v5, Lnet/lingala/zip4j/io/SplitOutputStream;

    if-eqz v5, :cond_0

    .line 342
    move-object v5, v2

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v5

    .line 343
    move-object v6, v3

    check-cast v6, Lnet/lingala/zip4j/io/SplitOutputStream;

    invoke-virtual {v6}, Lnet/lingala/zip4j/io/SplitOutputStream;->getFilePointer()J

    move-result-wide v6

    .line 342
    invoke-virtual {v5, v6, v7}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->setOffsetOfStartOfCentralDir(J)V

    .line 344
    move-object v5, v3

    check-cast v5, Lnet/lingala/zip4j/io/SplitOutputStream;

    invoke-virtual {v5}, Lnet/lingala/zip4j/io/SplitOutputStream;->getCurrSplitFileCounter()I

    move-result v5

    move v4, v5

    .line 348
    :cond_0
    move-object v5, v2

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/ZipModel;->isZip64Format()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 349
    move-object v5, v2

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndCentralDirRecord()Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;

    move-result-object v5

    if-nez v5, :cond_1

    .line 350
    move-object v5, v2

    new-instance v6, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;-><init>()V

    invoke-virtual {v5, v6}, Lnet/lingala/zip4j/model/ZipModel;->setZip64EndCentralDirRecord(Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;)V

    .line 352
    :cond_1
    move-object v5, v2

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndCentralDirLocator()Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    move-result-object v5

    if-nez v5, :cond_2

    .line 353
    move-object v5, v2

    new-instance v6, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;-><init>()V

    invoke-virtual {v5, v6}, Lnet/lingala/zip4j/model/ZipModel;->setZip64EndCentralDirLocator(Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;)V

    .line 356
    :cond_2
    move-object v5, v2

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndCentralDirLocator()Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    move-result-object v5

    move v6, v4

    invoke-virtual {v5, v6}, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->setNoOfDiskStartOfZip64EndOfCentralDirRec(I)V

    .line 357
    move-object v5, v2

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndCentralDirLocator()Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    move-result-object v5

    move v6, v4

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->setTotNumberOfDiscs(I)V

    .line 359
    :cond_3
    move-object v5, v2

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v5

    move v6, v4

    invoke-virtual {v5, v6}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->setNoOfThisDisk(I)V

    .line 360
    move-object v5, v2

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v5

    move v6, v4

    invoke-virtual {v5, v6}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->setNoOfThisDiskStartOfCentralDir(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    return-void

    .line 361
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 362
    .local v4, "e":Ljava/io/IOException;
    new-instance v5, Lnet/lingala/zip4j/exception/ZipException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v4

    invoke-direct {v6, v7}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method private updateCompressedSizeInLocalFileHeader(Lnet/lingala/zip4j/io/SplitOutputStream;Lnet/lingala/zip4j/model/LocalFileHeader;JJ[BZ)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 863
    move-object/from16 v1, p0

    .local v1, "this":Lnet/lingala/zip4j/core/HeaderWriter;
    move-object/from16 v2, p1

    .local v2, "outputStream":Lnet/lingala/zip4j/io/SplitOutputStream;
    move-object/from16 v3, p2

    .local v3, "localFileHeader":Lnet/lingala/zip4j/model/LocalFileHeader;
    move-wide/from16 v4, p3

    .local v4, "offset":J
    move-wide/from16 v6, p5

    .local v6, "toUpdate":J
    move-object/from16 v8, p7

    .local v8, "bytesToWrite":[B
    move/from16 v9, p8

    .local v9, "isZip64Format":Z
    move-object v12, v2

    if-nez v12, :cond_0

    .line 864
    new-instance v12, Lnet/lingala/zip4j/exception/ZipException;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    const-string/jumbo v14, "invalid output stream, cannot update compressed size for local file header"

    invoke-direct {v13, v14}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 868
    :cond_0
    move-object v12, v3

    :try_start_0
    invoke-virtual {v12}, Lnet/lingala/zip4j/model/LocalFileHeader;->isWriteComprSizeInZip64ExtraRecord()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 869
    move-object v12, v8

    array-length v12, v12

    const/16 v13, 0x8

    if-eq v12, v13, :cond_1

    .line 870
    new-instance v12, Lnet/lingala/zip4j/exception/ZipException;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    const-string/jumbo v14, "attempting to write a non 8-byte compressed size block for a zip64 file"

    invoke-direct {v13, v14}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 893
    :catch_0
    move-exception v12

    move-object v10, v12

    .line 894
    .local v10, "e":Ljava/io/IOException;
    new-instance v12, Lnet/lingala/zip4j/exception/ZipException;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v10

    invoke-direct {v13, v14}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v12

    .line 883
    .end local v10    # "e":Ljava/io/IOException;
    :cond_1
    move-wide v12, v4

    move-wide v14, v6

    add-long/2addr v12, v14

    const-wide/16 v14, 0x4

    add-long/2addr v12, v14

    const-wide/16 v14, 0x4

    add-long/2addr v12, v14

    const-wide/16 v14, 0x2

    add-long/2addr v12, v14

    const-wide/16 v14, 0x2

    add-long/2addr v12, v14

    move-object v14, v3

    :try_start_1
    invoke-virtual {v14}, Lnet/lingala/zip4j/model/LocalFileHeader;->getFileNameLength()I

    move-result v14

    int-to-long v14, v14

    add-long/2addr v12, v14

    const-wide/16 v14, 0x2

    add-long/2addr v12, v14

    const-wide/16 v14, 0x2

    add-long/2addr v12, v14

    const-wide/16 v14, 0x8

    add-long/2addr v12, v14

    move-wide v10, v12

    .line 884
    .local v10, "zip64CompressedSizeOffset":J
    move-wide v12, v6

    const-wide/16 v14, 0x16

    cmp-long v12, v12, v14

    if-nez v12, :cond_2

    .line 885
    move-wide v12, v10

    const-wide/16 v14, 0x8

    add-long/2addr v12, v14

    move-wide v10, v12

    .line 887
    :cond_2
    move-object v12, v2

    move-wide v13, v10

    invoke-virtual {v12, v13, v14}, Lnet/lingala/zip4j/io/SplitOutputStream;->seek(J)V

    .line 888
    move-object v12, v2

    move-object v13, v8

    invoke-virtual {v12, v13}, Lnet/lingala/zip4j/io/SplitOutputStream;->write([B)V

    .line 897
    .end local v10    # "zip64CompressedSizeOffset":J
    :goto_0
    return-void

    .line 890
    :cond_3
    move-object v12, v2

    move-wide v13, v4

    move-wide v15, v6

    add-long/2addr v13, v15

    invoke-virtual {v12, v13, v14}, Lnet/lingala/zip4j/io/SplitOutputStream;->seek(J)V

    .line 891
    move-object v12, v2

    move-object v13, v8

    invoke-virtual {v12, v13}, Lnet/lingala/zip4j/io/SplitOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private writeCentralDirectory(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;Ljava/util/List;)I
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 376
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/core/HeaderWriter;
    move-object v1, p1

    .local v1, "zipModel":Lnet/lingala/zip4j/model/ZipModel;
    move-object/from16 v2, p2

    .local v2, "outputStream":Ljava/io/OutputStream;
    move-object/from16 v3, p3

    .local v3, "headerBytesList":Ljava/util/List;
    move-object v8, v1

    if-eqz v8, :cond_0

    move-object v8, v2

    if-nez v8, :cond_1

    .line 377
    :cond_0
    new-instance v8, Lnet/lingala/zip4j/exception/ZipException;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const-string/jumbo v10, "input parameters is null, cannot write central directory"

    invoke-direct {v9, v10}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 380
    :cond_1
    move-object v8, v1

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 381
    move-object v8, v1

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v8

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 382
    move-object v8, v1

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v8

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gtz v8, :cond_3

    .line 383
    :cond_2
    const/4 v8, 0x0

    move v0, v8

    .line 392
    .end local v0    # "this":Lnet/lingala/zip4j/core/HeaderWriter;
    :goto_0
    return v0

    .line 386
    .restart local v0    # "this":Lnet/lingala/zip4j/core/HeaderWriter;
    :cond_3
    const/4 v8, 0x0

    move v4, v8

    .line 387
    .local v4, "sizeOfCentralDir":I
    const/4 v8, 0x0

    move v5, v8

    .local v5, "i":I
    :goto_1
    move v8, v5

    move-object v9, v1

    invoke-virtual {v9}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v9

    invoke-virtual {v9}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lt v8, v9, :cond_4

    .line 392
    move v8, v4

    move v0, v8

    goto :goto_0

    .line 388
    :cond_4
    move-object v8, v1

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v8

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v8

    move v9, v5

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lnet/lingala/zip4j/model/FileHeader;

    move-object v6, v8

    .line 389
    .local v6, "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    move-object v8, v0

    move-object v9, v1

    move-object v10, v6

    move-object v11, v2

    move-object v12, v3

    invoke-direct {v8, v9, v10, v11, v12}, Lnet/lingala/zip4j/core/HeaderWriter;->writeFileHeader(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/model/FileHeader;Ljava/io/OutputStream;Ljava/util/List;)I

    move-result v8

    move v7, v8

    .line 390
    .local v7, "sizeOfFileHeader":I
    move v8, v4

    move v9, v7

    add-int/2addr v8, v9

    move v4, v8

    .line 387
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method private writeEndOfCentralDirectoryRecord(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;IJLjava/util/List;)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 729
    move-object/from16 v3, p0

    .local v3, "this":Lnet/lingala/zip4j/core/HeaderWriter;
    move-object/from16 v4, p1

    .local v4, "zipModel":Lnet/lingala/zip4j/model/ZipModel;
    move-object/from16 v5, p2

    .local v5, "outputStream":Ljava/io/OutputStream;
    move/from16 v6, p3

    .local v6, "sizeOfCentralDir":I
    move-wide/from16 v7, p4

    .local v7, "offsetCentralDir":J
    move-object/from16 v9, p6

    .local v9, "headrBytesList":Ljava/util/List;
    move-object/from16 v16, v4

    if-eqz v16, :cond_0

    move-object/from16 v16, v5

    if-nez v16, :cond_1

    .line 730
    :cond_0
    new-instance v16, Lnet/lingala/zip4j/exception/ZipException;

    move-object/from16 v21, v16

    move-object/from16 v16, v21

    move-object/from16 v17, v21

    const-string/jumbo v18, "zip model or output stream is null, cannot write end of central directory record"

    invoke-direct/range {v17 .. v18}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 735
    :cond_1
    const/16 v16, 0x2

    :try_start_0
    move/from16 v0, v16

    new-array v0, v0, [B

    move-object/from16 v16, v0

    move-object/from16 v10, v16

    .line 736
    .local v10, "shortByte":[B
    const/16 v16, 0x4

    move/from16 v0, v16

    new-array v0, v0, [B

    move-object/from16 v16, v0

    move-object/from16 v11, v16

    .line 737
    .local v11, "intByte":[B
    const/16 v16, 0x8

    move/from16 v0, v16

    new-array v0, v0, [B

    move-object/from16 v16, v0

    move-object/from16 v12, v16

    .line 740
    .local v12, "longByte":[B
    move-object/from16 v16, v11

    const/16 v17, 0x0

    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->getSignature()J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    invoke-static/range {v16 .. v18}, Lnet/lingala/zip4j/util/Raw;->writeIntLittleEndian([BII)V

    .line 741
    move-object/from16 v16, v3

    move-object/from16 v17, v11

    move-object/from16 v18, v9

    invoke-direct/range {v16 .. v18}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 744
    move-object/from16 v16, v10

    const/16 v17, 0x0

    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->getNoOfThisDisk()I

    move-result v18

    move/from16 v0, v18

    int-to-short v0, v0

    move/from16 v18, v0

    invoke-static/range {v16 .. v18}, Lnet/lingala/zip4j/util/Raw;->writeShortLittleEndian([BIS)V

    .line 745
    move-object/from16 v16, v3

    move-object/from16 v17, v10

    move-object/from16 v18, v9

    invoke-direct/range {v16 .. v18}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 748
    move-object/from16 v16, v10

    const/16 v17, 0x0

    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->getNoOfThisDiskStartOfCentralDir()I

    move-result v18

    move/from16 v0, v18

    int-to-short v0, v0

    move/from16 v18, v0

    invoke-static/range {v16 .. v18}, Lnet/lingala/zip4j/util/Raw;->writeShortLittleEndian([BIS)V

    .line 749
    move-object/from16 v16, v3

    move-object/from16 v17, v10

    move-object/from16 v18, v9

    invoke-direct/range {v16 .. v18}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 752
    const/16 v16, 0x0

    move/from16 v13, v16

    .line 753
    .local v13, "numEntries":I
    const/16 v16, 0x0

    move/from16 v14, v16

    .line 754
    .local v14, "numEntriesOnThisDisk":I
    move-object/from16 v16, v4

    invoke-virtual/range {v16 .. v16}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v16

    if-eqz v16, :cond_2

    .line 755
    move-object/from16 v16, v4

    invoke-virtual/range {v16 .. v16}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v16

    if-nez v16, :cond_3

    .line 756
    :cond_2
    new-instance v16, Lnet/lingala/zip4j/exception/ZipException;

    move-object/from16 v21, v16

    move-object/from16 v16, v21

    move-object/from16 v17, v21

    const-string/jumbo v18, "invalid central directory/file headers, cannot write end of central directory record"

    invoke-direct/range {v17 .. v18}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v16
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 803
    .end local v10    # "shortByte":[B
    .end local v11    # "intByte":[B
    .end local v12    # "longByte":[B
    .end local v13    # "numEntries":I
    .end local v14    # "numEntriesOnThisDisk":I
    :catch_0
    move-exception v16

    move-object/from16 v10, v16

    .line 804
    .local v10, "e":Ljava/lang/Exception;
    new-instance v16, Lnet/lingala/zip4j/exception/ZipException;

    move-object/from16 v21, v16

    move-object/from16 v16, v21

    move-object/from16 v17, v21

    move-object/from16 v18, v10

    invoke-direct/range {v17 .. v18}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v16

    .line 759
    .local v10, "shortByte":[B
    .restart local v11    # "intByte":[B
    .restart local v12    # "longByte":[B
    .restart local v13    # "numEntries":I
    .restart local v14    # "numEntriesOnThisDisk":I
    :cond_3
    move-object/from16 v16, v4

    :try_start_1
    invoke-virtual/range {v16 .. v16}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v13, v16

    .line 760
    move-object/from16 v16, v4

    invoke-virtual/range {v16 .. v16}, Lnet/lingala/zip4j/model/ZipModel;->isSplitArchive()Z

    move-result v16

    if-eqz v16, :cond_6

    .line 761
    move-object/from16 v16, v3

    move-object/from16 v17, v4

    invoke-virtual/range {v17 .. v17}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v17

    .line 762
    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->getNoOfThisDisk()I

    move-result v18

    .line 761
    invoke-direct/range {v16 .. v18}, Lnet/lingala/zip4j/core/HeaderWriter;->countNumberOfFileHeaderEntriesOnDisk(Ljava/util/ArrayList;I)I

    move-result v16

    move/from16 v14, v16

    .line 767
    :goto_0
    move-object/from16 v16, v10

    const/16 v17, 0x0

    move/from16 v18, v14

    move/from16 v0, v18

    int-to-short v0, v0

    move/from16 v18, v0

    invoke-static/range {v16 .. v18}, Lnet/lingala/zip4j/util/Raw;->writeShortLittleEndian([BIS)V

    .line 768
    move-object/from16 v16, v3

    move-object/from16 v17, v10

    move-object/from16 v18, v9

    invoke-direct/range {v16 .. v18}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 771
    move-object/from16 v16, v10

    const/16 v17, 0x0

    move/from16 v18, v13

    move/from16 v0, v18

    int-to-short v0, v0

    move/from16 v18, v0

    invoke-static/range {v16 .. v18}, Lnet/lingala/zip4j/util/Raw;->writeShortLittleEndian([BIS)V

    .line 772
    move-object/from16 v16, v3

    move-object/from16 v17, v10

    move-object/from16 v18, v9

    invoke-direct/range {v16 .. v18}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 775
    move-object/from16 v16, v11

    const/16 v17, 0x0

    move/from16 v18, v6

    invoke-static/range {v16 .. v18}, Lnet/lingala/zip4j/util/Raw;->writeIntLittleEndian([BII)V

    .line 776
    move-object/from16 v16, v3

    move-object/from16 v17, v11

    move-object/from16 v18, v9

    invoke-direct/range {v16 .. v18}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 779
    move-wide/from16 v16, v7

    const-wide v18, 0xffffffffL

    cmp-long v16, v16, v18

    if-lez v16, :cond_7

    .line 780
    move-object/from16 v16, v12

    const/16 v17, 0x0

    const-wide v18, 0xffffffffL

    invoke-static/range {v16 .. v19}, Lnet/lingala/zip4j/util/Raw;->writeLongLittleEndian([BIJ)V

    .line 781
    move-object/from16 v16, v12

    const/16 v17, 0x0

    move-object/from16 v18, v11

    const/16 v19, 0x0

    const/16 v20, 0x4

    invoke-static/range {v16 .. v20}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 782
    move-object/from16 v16, v3

    move-object/from16 v17, v11

    move-object/from16 v18, v9

    invoke-direct/range {v16 .. v18}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 791
    :goto_1
    const/16 v16, 0x0

    move/from16 v15, v16

    .line 792
    .local v15, "commentLength":I
    move-object/from16 v16, v4

    invoke-virtual/range {v16 .. v16}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->getComment()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_4

    .line 793
    move-object/from16 v16, v4

    invoke-virtual/range {v16 .. v16}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->getCommentLength()I

    move-result v16

    move/from16 v15, v16

    .line 795
    :cond_4
    move-object/from16 v16, v10

    const/16 v17, 0x0

    move/from16 v18, v15

    move/from16 v0, v18

    int-to-short v0, v0

    move/from16 v18, v0

    invoke-static/range {v16 .. v18}, Lnet/lingala/zip4j/util/Raw;->writeShortLittleEndian([BIS)V

    .line 796
    move-object/from16 v16, v3

    move-object/from16 v17, v10

    move-object/from16 v18, v9

    invoke-direct/range {v16 .. v18}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 799
    move/from16 v16, v15

    if-lez v16, :cond_5

    .line 800
    move-object/from16 v16, v3

    move-object/from16 v17, v4

    invoke-virtual/range {v17 .. v17}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->getCommentBytes()[B

    move-result-object v17

    move-object/from16 v18, v9

    invoke-direct/range {v16 .. v18}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 806
    :cond_5
    return-void

    .line 764
    .end local v15    # "commentLength":I
    :cond_6
    move/from16 v16, v13

    move/from16 v14, v16

    goto/16 :goto_0

    .line 784
    :cond_7
    move-object/from16 v16, v12

    const/16 v17, 0x0

    move-wide/from16 v18, v7

    invoke-static/range {v16 .. v19}, Lnet/lingala/zip4j/util/Raw;->writeLongLittleEndian([BIJ)V

    .line 785
    move-object/from16 v16, v12

    const/16 v17, 0x0

    move-object/from16 v18, v11

    const/16 v19, 0x0

    const/16 v20, 0x4

    invoke-static/range {v16 .. v20}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 787
    move-object/from16 v16, v3

    move-object/from16 v17, v11

    move-object/from16 v18, v9

    invoke-direct/range {v16 .. v18}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private writeFileHeader(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/model/FileHeader;Ljava/io/OutputStream;Ljava/util/List;)I
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 398
    move-object/from16 v2, p0

    .local v2, "this":Lnet/lingala/zip4j/core/HeaderWriter;
    move-object/from16 v3, p1

    .local v3, "zipModel":Lnet/lingala/zip4j/model/ZipModel;
    move-object/from16 v4, p2

    .local v4, "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    move-object/from16 v5, p3

    .local v5, "outputStream":Ljava/io/OutputStream;
    move-object/from16 v6, p4

    .local v6, "headerBytesList":Ljava/util/List;
    move-object/from16 v20, v4

    if-eqz v20, :cond_0

    move-object/from16 v20, v5

    if-nez v20, :cond_1

    .line 399
    :cond_0
    new-instance v20, Lnet/lingala/zip4j/exception/ZipException;

    move-object/from16 v25, v20

    move-object/from16 v20, v25

    move-object/from16 v21, v25

    const-string/jumbo v22, "input parameters is null, cannot write local file header"

    invoke-direct/range {v21 .. v22}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 403
    :cond_1
    const/16 v20, 0x0

    move/from16 v7, v20

    .line 405
    .local v7, "sizeOfFileHeader":I
    const/16 v20, 0x2

    :try_start_0
    move/from16 v0, v20

    new-array v0, v0, [B

    move-object/from16 v20, v0

    move-object/from16 v8, v20

    .line 406
    .local v8, "shortByte":[B
    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [B

    move-object/from16 v20, v0

    move-object/from16 v9, v20

    .line 407
    .local v9, "intByte":[B
    const/16 v20, 0x8

    move/from16 v0, v20

    new-array v0, v0, [B

    move-object/from16 v20, v0

    move-object/from16 v10, v20

    .line 408
    .local v10, "longByte":[B
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [B

    move-object/from16 v20, v0

    move-object/from16 v11, v20

    .line 409
    .local v11, "emptyShortByte":[B
    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [B

    move-object/from16 v20, v0

    move-object/from16 v12, v20

    .line 411
    .local v12, "emptyIntByte":[B
    const/16 v20, 0x0

    move/from16 v13, v20

    .line 412
    .local v13, "writeZip64FileSize":Z
    const/16 v20, 0x0

    move/from16 v14, v20

    .line 414
    .local v14, "writeZip64OffsetLocalHeader":Z
    move-object/from16 v20, v9

    const/16 v21, 0x0

    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Lnet/lingala/zip4j/model/FileHeader;->getSignature()I

    move-result v22

    invoke-static/range {v20 .. v22}, Lnet/lingala/zip4j/util/Raw;->writeIntLittleEndian([BII)V

    .line 415
    move-object/from16 v20, v2

    move-object/from16 v21, v9

    move-object/from16 v22, v6

    invoke-direct/range {v20 .. v22}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 416
    add-int/lit8 v7, v7, 0x4

    .line 418
    move-object/from16 v20, v8

    const/16 v21, 0x0

    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Lnet/lingala/zip4j/model/FileHeader;->getVersionMadeBy()I

    move-result v22

    move/from16 v0, v22

    int-to-short v0, v0

    move/from16 v22, v0

    invoke-static/range {v20 .. v22}, Lnet/lingala/zip4j/util/Raw;->writeShortLittleEndian([BIS)V

    .line 419
    move-object/from16 v20, v2

    move-object/from16 v21, v8

    move-object/from16 v22, v6

    invoke-direct/range {v20 .. v22}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 420
    add-int/lit8 v7, v7, 0x2

    .line 422
    move-object/from16 v20, v8

    const/16 v21, 0x0

    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Lnet/lingala/zip4j/model/FileHeader;->getVersionNeededToExtract()I

    move-result v22

    move/from16 v0, v22

    int-to-short v0, v0

    move/from16 v22, v0

    invoke-static/range {v20 .. v22}, Lnet/lingala/zip4j/util/Raw;->writeShortLittleEndian([BIS)V

    .line 423
    move-object/from16 v20, v2

    move-object/from16 v21, v8

    move-object/from16 v22, v6

    invoke-direct/range {v20 .. v22}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 424
    add-int/lit8 v7, v7, 0x2

    .line 426
    move-object/from16 v20, v2

    move-object/from16 v21, v4

    invoke-virtual/range {v21 .. v21}, Lnet/lingala/zip4j/model/FileHeader;->getGeneralPurposeFlag()[B

    move-result-object v21

    move-object/from16 v22, v6

    invoke-direct/range {v20 .. v22}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 427
    add-int/lit8 v7, v7, 0x2

    .line 429
    move-object/from16 v20, v8

    const/16 v21, 0x0

    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Lnet/lingala/zip4j/model/FileHeader;->getCompressionMethod()I

    move-result v22

    move/from16 v0, v22

    int-to-short v0, v0

    move/from16 v22, v0

    invoke-static/range {v20 .. v22}, Lnet/lingala/zip4j/util/Raw;->writeShortLittleEndian([BIS)V

    .line 430
    move-object/from16 v20, v2

    move-object/from16 v21, v8

    move-object/from16 v22, v6

    invoke-direct/range {v20 .. v22}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 431
    add-int/lit8 v7, v7, 0x2

    .line 433
    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Lnet/lingala/zip4j/model/FileHeader;->getLastModFileTime()I

    move-result v20

    move/from16 v15, v20

    .line 434
    .local v15, "dateTime":I
    move-object/from16 v20, v9

    const/16 v21, 0x0

    move/from16 v22, v15

    invoke-static/range {v20 .. v22}, Lnet/lingala/zip4j/util/Raw;->writeIntLittleEndian([BII)V

    .line 435
    move-object/from16 v20, v2

    move-object/from16 v21, v9

    move-object/from16 v22, v6

    invoke-direct/range {v20 .. v22}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 436
    add-int/lit8 v7, v7, 0x4

    .line 438
    move-object/from16 v20, v9

    const/16 v21, 0x0

    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Lnet/lingala/zip4j/model/FileHeader;->getCrc32()J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v22, v0

    invoke-static/range {v20 .. v22}, Lnet/lingala/zip4j/util/Raw;->writeIntLittleEndian([BII)V

    .line 439
    move-object/from16 v20, v2

    move-object/from16 v21, v9

    move-object/from16 v22, v6

    invoke-direct/range {v20 .. v22}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 440
    add-int/lit8 v7, v7, 0x4

    .line 442
    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Lnet/lingala/zip4j/model/FileHeader;->getCompressedSize()J

    move-result-wide v20

    const-wide v22, 0xffffffffL

    cmp-long v20, v20, v22

    if-gez v20, :cond_2

    .line 443
    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Lnet/lingala/zip4j/model/FileHeader;->getUncompressedSize()J

    move-result-wide v20

    const-wide/16 v22, 0x32

    add-long v20, v20, v22

    const-wide v22, 0xffffffffL

    cmp-long v20, v20, v22

    if-ltz v20, :cond_d

    .line 444
    :cond_2
    move-object/from16 v20, v10

    const/16 v21, 0x0

    const-wide v22, 0xffffffffL

    invoke-static/range {v20 .. v23}, Lnet/lingala/zip4j/util/Raw;->writeLongLittleEndian([BIJ)V

    .line 445
    move-object/from16 v20, v10

    const/16 v21, 0x0

    move-object/from16 v22, v9

    const/16 v23, 0x0

    const/16 v24, 0x4

    invoke-static/range {v20 .. v24}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 447
    move-object/from16 v20, v2

    move-object/from16 v21, v9

    move-object/from16 v22, v6

    invoke-direct/range {v20 .. v22}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 448
    add-int/lit8 v7, v7, 0x4

    .line 450
    move-object/from16 v20, v2

    move-object/from16 v21, v9

    move-object/from16 v22, v6

    invoke-direct/range {v20 .. v22}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 451
    add-int/lit8 v7, v7, 0x4

    .line 453
    const/16 v20, 0x1

    move/from16 v13, v20

    .line 468
    :goto_0
    move-object/from16 v20, v8

    const/16 v21, 0x0

    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Lnet/lingala/zip4j/model/FileHeader;->getFileNameLength()I

    move-result v22

    move/from16 v0, v22

    int-to-short v0, v0

    move/from16 v22, v0

    invoke-static/range {v20 .. v22}, Lnet/lingala/zip4j/util/Raw;->writeShortLittleEndian([BIS)V

    .line 469
    move-object/from16 v20, v2

    move-object/from16 v21, v8

    move-object/from16 v22, v6

    invoke-direct/range {v20 .. v22}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 470
    add-int/lit8 v7, v7, 0x2

    .line 474
    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [B

    move-object/from16 v20, v0

    move-object/from16 v16, v20

    .line 475
    .local v16, "offsetLocalHeaderBytes":[B
    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Lnet/lingala/zip4j/model/FileHeader;->getOffsetLocalHeader()J

    move-result-wide v20

    const-wide v22, 0xffffffffL

    cmp-long v20, v20, v22

    if-lez v20, :cond_e

    .line 476
    move-object/from16 v20, v10

    const/16 v21, 0x0

    const-wide v22, 0xffffffffL

    invoke-static/range {v20 .. v23}, Lnet/lingala/zip4j/util/Raw;->writeLongLittleEndian([BIJ)V

    .line 477
    move-object/from16 v20, v10

    const/16 v21, 0x0

    move-object/from16 v22, v16

    const/16 v23, 0x0

    const/16 v24, 0x4

    invoke-static/range {v20 .. v24}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 478
    const/16 v20, 0x1

    move/from16 v14, v20

    .line 485
    :goto_1
    const/16 v20, 0x0

    move/from16 v17, v20

    .line 486
    .local v17, "extraFieldLength":I
    move/from16 v20, v13

    if-nez v20, :cond_3

    move/from16 v20, v14

    if-eqz v20, :cond_5

    .line 487
    :cond_3
    add-int/lit8 v17, v17, 0x4

    .line 488
    move/from16 v20, v13

    if-eqz v20, :cond_4

    .line 489
    add-int/lit8 v17, v17, 0x10

    .line 490
    :cond_4
    move/from16 v20, v14

    if-eqz v20, :cond_5

    .line 491
    add-int/lit8 v17, v17, 0x8

    .line 493
    :cond_5
    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Lnet/lingala/zip4j/model/FileHeader;->getAesExtraDataRecord()Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-result-object v20

    if-eqz v20, :cond_6

    .line 494
    add-int/lit8 v17, v17, 0xb

    .line 496
    :cond_6
    move-object/from16 v20, v8

    const/16 v21, 0x0

    move/from16 v22, v17

    move/from16 v0, v22

    int-to-short v0, v0

    move/from16 v22, v0

    invoke-static/range {v20 .. v22}, Lnet/lingala/zip4j/util/Raw;->writeShortLittleEndian([BIS)V

    .line 497
    move-object/from16 v20, v2

    move-object/from16 v21, v8

    move-object/from16 v22, v6

    invoke-direct/range {v20 .. v22}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 498
    add-int/lit8 v7, v7, 0x2

    .line 501
    move-object/from16 v20, v2

    move-object/from16 v21, v11

    move-object/from16 v22, v6

    invoke-direct/range {v20 .. v22}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 502
    add-int/lit8 v7, v7, 0x2

    .line 505
    move-object/from16 v20, v8

    const/16 v21, 0x0

    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Lnet/lingala/zip4j/model/FileHeader;->getDiskNumberStart()I

    move-result v22

    move/from16 v0, v22

    int-to-short v0, v0

    move/from16 v22, v0

    invoke-static/range {v20 .. v22}, Lnet/lingala/zip4j/util/Raw;->writeShortLittleEndian([BIS)V

    .line 506
    move-object/from16 v20, v2

    move-object/from16 v21, v8

    move-object/from16 v22, v6

    invoke-direct/range {v20 .. v22}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 507
    add-int/lit8 v7, v7, 0x2

    .line 510
    move-object/from16 v20, v2

    move-object/from16 v21, v11

    move-object/from16 v22, v6

    invoke-direct/range {v20 .. v22}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 511
    add-int/lit8 v7, v7, 0x2

    .line 514
    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Lnet/lingala/zip4j/model/FileHeader;->getExternalFileAttr()[B

    move-result-object v20

    if-eqz v20, :cond_f

    .line 515
    move-object/from16 v20, v2

    move-object/from16 v21, v4

    invoke-virtual/range {v21 .. v21}, Lnet/lingala/zip4j/model/FileHeader;->getExternalFileAttr()[B

    move-result-object v21

    move-object/from16 v22, v6

    invoke-direct/range {v20 .. v22}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 519
    :goto_2
    add-int/lit8 v7, v7, 0x4

    .line 523
    move-object/from16 v20, v2

    move-object/from16 v21, v16

    move-object/from16 v22, v6

    invoke-direct/range {v20 .. v22}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 524
    add-int/lit8 v7, v7, 0x4

    .line 526
    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Lnet/lingala/zip4j/model/ZipModel;->getFileNameCharset()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_10

    .line 527
    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v21, v3

    invoke-virtual/range {v21 .. v21}, Lnet/lingala/zip4j/model/ZipModel;->getFileNameCharset()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v20

    move-object/from16 v18, v20

    .line 528
    .local v18, "fileNameBytes":[B
    move-object/from16 v20, v2

    move-object/from16 v21, v18

    move-object/from16 v22, v6

    invoke-direct/range {v20 .. v22}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 529
    move/from16 v20, v7

    move-object/from16 v21, v18

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    add-int v20, v20, v21

    move/from16 v7, v20

    .line 535
    .end local v18    # "fileNameBytes":[B
    :goto_3
    move/from16 v20, v13

    if-nez v20, :cond_7

    move/from16 v20, v14

    if-eqz v20, :cond_b

    .line 536
    :cond_7
    move-object/from16 v20, v3

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lnet/lingala/zip4j/model/ZipModel;->setZip64Format(Z)V

    .line 539
    move-object/from16 v20, v8

    const/16 v21, 0x0

    const/16 v22, 0x1

    invoke-static/range {v20 .. v22}, Lnet/lingala/zip4j/util/Raw;->writeShortLittleEndian([BIS)V

    .line 540
    move-object/from16 v20, v2

    move-object/from16 v21, v8

    move-object/from16 v22, v6

    invoke-direct/range {v20 .. v22}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 541
    add-int/lit8 v7, v7, 0x2

    .line 544
    const/16 v20, 0x0

    move/from16 v18, v20

    .line 546
    .local v18, "dataSize":I
    move/from16 v20, v13

    if-eqz v20, :cond_8

    .line 547
    add-int/lit8 v18, v18, 0x10

    .line 549
    :cond_8
    move/from16 v20, v14

    if-eqz v20, :cond_9

    .line 550
    add-int/lit8 v18, v18, 0x8

    .line 553
    :cond_9
    move-object/from16 v20, v8

    const/16 v21, 0x0

    move/from16 v22, v18

    move/from16 v0, v22

    int-to-short v0, v0

    move/from16 v22, v0

    invoke-static/range {v20 .. v22}, Lnet/lingala/zip4j/util/Raw;->writeShortLittleEndian([BIS)V

    .line 554
    move-object/from16 v20, v2

    move-object/from16 v21, v8

    move-object/from16 v22, v6

    invoke-direct/range {v20 .. v22}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 555
    add-int/lit8 v7, v7, 0x2

    .line 557
    move/from16 v20, v13

    if-eqz v20, :cond_a

    .line 558
    move-object/from16 v20, v10

    const/16 v21, 0x0

    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Lnet/lingala/zip4j/model/FileHeader;->getUncompressedSize()J

    move-result-wide v22

    invoke-static/range {v20 .. v23}, Lnet/lingala/zip4j/util/Raw;->writeLongLittleEndian([BIJ)V

    .line 559
    move-object/from16 v20, v2

    move-object/from16 v21, v10

    move-object/from16 v22, v6

    invoke-direct/range {v20 .. v22}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 560
    add-int/lit8 v7, v7, 0x8

    .line 562
    move-object/from16 v20, v10

    const/16 v21, 0x0

    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Lnet/lingala/zip4j/model/FileHeader;->getCompressedSize()J

    move-result-wide v22

    invoke-static/range {v20 .. v23}, Lnet/lingala/zip4j/util/Raw;->writeLongLittleEndian([BIJ)V

    .line 563
    move-object/from16 v20, v2

    move-object/from16 v21, v10

    move-object/from16 v22, v6

    invoke-direct/range {v20 .. v22}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 564
    add-int/lit8 v7, v7, 0x8

    .line 567
    :cond_a
    move/from16 v20, v14

    if-eqz v20, :cond_b

    .line 568
    move-object/from16 v20, v10

    const/16 v21, 0x0

    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Lnet/lingala/zip4j/model/FileHeader;->getOffsetLocalHeader()J

    move-result-wide v22

    invoke-static/range {v20 .. v23}, Lnet/lingala/zip4j/util/Raw;->writeLongLittleEndian([BIJ)V

    .line 569
    move-object/from16 v20, v2

    move-object/from16 v21, v10

    move-object/from16 v22, v6

    invoke-direct/range {v20 .. v22}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 570
    add-int/lit8 v7, v7, 0x8

    .line 574
    .end local v18    # "dataSize":I
    :cond_b
    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Lnet/lingala/zip4j/model/FileHeader;->getAesExtraDataRecord()Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-result-object v20

    if-eqz v20, :cond_c

    .line 575
    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Lnet/lingala/zip4j/model/FileHeader;->getAesExtraDataRecord()Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-result-object v20

    move-object/from16 v18, v20

    .line 577
    .local v18, "aesExtraDataRecord":Lnet/lingala/zip4j/model/AESExtraDataRecord;
    move-object/from16 v20, v8

    const/16 v21, 0x0

    move-object/from16 v22, v18

    invoke-virtual/range {v22 .. v22}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->getSignature()J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-short v0, v0

    move/from16 v22, v0

    invoke-static/range {v20 .. v22}, Lnet/lingala/zip4j/util/Raw;->writeShortLittleEndian([BIS)V

    .line 578
    move-object/from16 v20, v2

    move-object/from16 v21, v8

    move-object/from16 v22, v6

    invoke-direct/range {v20 .. v22}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 580
    move-object/from16 v20, v8

    const/16 v21, 0x0

    move-object/from16 v22, v18

    invoke-virtual/range {v22 .. v22}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->getDataSize()I

    move-result v22

    move/from16 v0, v22

    int-to-short v0, v0

    move/from16 v22, v0

    invoke-static/range {v20 .. v22}, Lnet/lingala/zip4j/util/Raw;->writeShortLittleEndian([BIS)V

    .line 581
    move-object/from16 v20, v2

    move-object/from16 v21, v8

    move-object/from16 v22, v6

    invoke-direct/range {v20 .. v22}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 583
    move-object/from16 v20, v8

    const/16 v21, 0x0

    move-object/from16 v22, v18

    invoke-virtual/range {v22 .. v22}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->getVersionNumber()I

    move-result v22

    move/from16 v0, v22

    int-to-short v0, v0

    move/from16 v22, v0

    invoke-static/range {v20 .. v22}, Lnet/lingala/zip4j/util/Raw;->writeShortLittleEndian([BIS)V

    .line 584
    move-object/from16 v20, v2

    move-object/from16 v21, v8

    move-object/from16 v22, v6

    invoke-direct/range {v20 .. v22}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 586
    move-object/from16 v20, v2

    move-object/from16 v21, v18

    invoke-virtual/range {v21 .. v21}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->getVendorID()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    move-object/from16 v22, v6

    invoke-direct/range {v20 .. v22}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 588
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [B

    move-object/from16 v20, v0

    move-object/from16 v19, v20

    .line 589
    .local v19, "aesStrengthBytes":[B
    move-object/from16 v20, v19

    const/16 v21, 0x0

    move-object/from16 v22, v18

    invoke-virtual/range {v22 .. v22}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->getAesStrength()I

    move-result v22

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v20, v21

    .line 590
    move-object/from16 v20, v2

    move-object/from16 v21, v19

    move-object/from16 v22, v6

    invoke-direct/range {v20 .. v22}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 592
    move-object/from16 v20, v8

    const/16 v21, 0x0

    move-object/from16 v22, v18

    invoke-virtual/range {v22 .. v22}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->getCompressionMethod()I

    move-result v22

    move/from16 v0, v22

    int-to-short v0, v0

    move/from16 v22, v0

    invoke-static/range {v20 .. v22}, Lnet/lingala/zip4j/util/Raw;->writeShortLittleEndian([BIS)V

    .line 593
    move-object/from16 v20, v2

    move-object/from16 v21, v8

    move-object/from16 v22, v6

    invoke-direct/range {v20 .. v22}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 595
    add-int/lit8 v7, v7, 0xb

    .line 600
    .end local v18    # "aesExtraDataRecord":Lnet/lingala/zip4j/model/AESExtraDataRecord;
    .end local v19    # "aesStrengthBytes":[B
    :cond_c
    move/from16 v20, v7

    move/from16 v2, v20

    .end local v2    # "this":Lnet/lingala/zip4j/core/HeaderWriter;
    return v2

    .line 455
    .end local v16    # "offsetLocalHeaderBytes":[B
    .end local v17    # "extraFieldLength":I
    .restart local v2    # "this":Lnet/lingala/zip4j/core/HeaderWriter;
    :cond_d
    move-object/from16 v20, v10

    const/16 v21, 0x0

    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Lnet/lingala/zip4j/model/FileHeader;->getCompressedSize()J

    move-result-wide v22

    invoke-static/range {v20 .. v23}, Lnet/lingala/zip4j/util/Raw;->writeLongLittleEndian([BIJ)V

    .line 456
    move-object/from16 v20, v10

    const/16 v21, 0x0

    move-object/from16 v22, v9

    const/16 v23, 0x0

    const/16 v24, 0x4

    invoke-static/range {v20 .. v24}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 458
    move-object/from16 v20, v2

    move-object/from16 v21, v9

    move-object/from16 v22, v6

    invoke-direct/range {v20 .. v22}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 459
    add-int/lit8 v7, v7, 0x4

    .line 461
    move-object/from16 v20, v10

    const/16 v21, 0x0

    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Lnet/lingala/zip4j/model/FileHeader;->getUncompressedSize()J

    move-result-wide v22

    invoke-static/range {v20 .. v23}, Lnet/lingala/zip4j/util/Raw;->writeLongLittleEndian([BIJ)V

    .line 462
    move-object/from16 v20, v10

    const/16 v21, 0x0

    move-object/from16 v22, v9

    const/16 v23, 0x0

    const/16 v24, 0x4

    invoke-static/range {v20 .. v24}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 464
    move-object/from16 v20, v2

    move-object/from16 v21, v9

    move-object/from16 v22, v6

    invoke-direct/range {v20 .. v22}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 465
    add-int/lit8 v7, v7, 0x4

    goto/16 :goto_0

    .line 480
    .restart local v16    # "offsetLocalHeaderBytes":[B
    :cond_e
    move-object/from16 v20, v10

    const/16 v21, 0x0

    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Lnet/lingala/zip4j/model/FileHeader;->getOffsetLocalHeader()J

    move-result-wide v22

    invoke-static/range {v20 .. v23}, Lnet/lingala/zip4j/util/Raw;->writeLongLittleEndian([BIJ)V

    .line 481
    move-object/from16 v20, v10

    const/16 v21, 0x0

    move-object/from16 v22, v16

    const/16 v23, 0x0

    const/16 v24, 0x4

    invoke-static/range {v20 .. v24}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 601
    .end local v8    # "shortByte":[B
    .end local v9    # "intByte":[B
    .end local v10    # "longByte":[B
    .end local v11    # "emptyShortByte":[B
    .end local v12    # "emptyIntByte":[B
    .end local v13    # "writeZip64FileSize":Z
    .end local v14    # "writeZip64OffsetLocalHeader":Z
    .end local v15    # "dateTime":I
    .end local v16    # "offsetLocalHeaderBytes":[B
    :catch_0
    move-exception v20

    move-object/from16 v7, v20

    .line 602
    .local v7, "e":Ljava/lang/Exception;
    new-instance v20, Lnet/lingala/zip4j/exception/ZipException;

    move-object/from16 v25, v20

    move-object/from16 v20, v25

    move-object/from16 v21, v25

    move-object/from16 v22, v7

    invoke-direct/range {v21 .. v22}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v20

    .line 517
    .local v7, "sizeOfFileHeader":I
    .restart local v8    # "shortByte":[B
    .restart local v9    # "intByte":[B
    .restart local v10    # "longByte":[B
    .restart local v11    # "emptyShortByte":[B
    .restart local v12    # "emptyIntByte":[B
    .restart local v13    # "writeZip64FileSize":Z
    .restart local v14    # "writeZip64OffsetLocalHeader":Z
    .restart local v15    # "dateTime":I
    .restart local v16    # "offsetLocalHeaderBytes":[B
    .restart local v17    # "extraFieldLength":I
    :cond_f
    move-object/from16 v20, v2

    move-object/from16 v21, v12

    move-object/from16 v22, v6

    :try_start_1
    invoke-direct/range {v20 .. v22}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    goto/16 :goto_2

    .line 531
    :cond_10
    move-object/from16 v20, v2

    move-object/from16 v21, v4

    invoke-virtual/range {v21 .. v21}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lnet/lingala/zip4j/util/Zip4jUtil;->convertCharset(Ljava/lang/String;)[B

    move-result-object v21

    move-object/from16 v22, v6

    invoke-direct/range {v20 .. v22}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 532
    move/from16 v20, v7

    move-object/from16 v21, v4

    invoke-virtual/range {v21 .. v21}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lnet/lingala/zip4j/util/Zip4jUtil;->getEncodedStringLength(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v21

    add-int v20, v20, v21

    move/from16 v7, v20

    goto/16 :goto_3
.end method

.method private writeZip64EndOfCentralDirectoryLocator(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 693
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/core/HeaderWriter;
    move-object v1, p1

    .local v1, "zipModel":Lnet/lingala/zip4j/model/ZipModel;
    move-object v2, p2

    .local v2, "outputStream":Ljava/io/OutputStream;
    move-object v3, p3

    .local v3, "headerBytesList":Ljava/util/List;
    move-object v6, v1

    if-eqz v6, :cond_0

    move-object v6, v2

    if-nez v6, :cond_1

    .line 694
    :cond_0
    new-instance v6, Lnet/lingala/zip4j/exception/ZipException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const-string/jumbo v8, "zip model or output stream is null, cannot write zip64 end of central directory locator"

    invoke-direct {v7, v8}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 699
    :cond_1
    const/4 v6, 0x4

    :try_start_0
    new-array v6, v6, [B

    move-object v4, v6

    .line 700
    .local v4, "intByte":[B
    const/16 v6, 0x8

    new-array v6, v6, [B

    move-object v5, v6

    .line 703
    .local v5, "longByte":[B
    move-object v6, v4

    const/4 v7, 0x0

    const v8, 0x7064b50

    invoke-static {v6, v7, v8}, Lnet/lingala/zip4j/util/Raw;->writeIntLittleEndian([BII)V

    .line 704
    move-object v6, v0

    move-object v7, v4

    move-object v8, v3

    invoke-direct {v6, v7, v8}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 707
    move-object v6, v4

    const/4 v7, 0x0

    move-object v8, v1

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndCentralDirLocator()Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    move-result-object v8

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->getNoOfDiskStartOfZip64EndOfCentralDirRec()I

    move-result v8

    invoke-static {v6, v7, v8}, Lnet/lingala/zip4j/util/Raw;->writeIntLittleEndian([BII)V

    .line 708
    move-object v6, v0

    move-object v7, v4

    move-object v8, v3

    invoke-direct {v6, v7, v8}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 711
    move-object v6, v5

    const/4 v7, 0x0

    move-object v8, v1

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndCentralDirLocator()Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    move-result-object v8

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->getOffsetZip64EndOfCentralDirRec()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Lnet/lingala/zip4j/util/Raw;->writeLongLittleEndian([BIJ)V

    .line 712
    move-object v6, v0

    move-object v7, v5

    move-object v8, v3

    invoke-direct {v6, v7, v8}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 715
    move-object v6, v4

    const/4 v7, 0x0

    move-object v8, v1

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndCentralDirLocator()Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    move-result-object v8

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->getTotNumberOfDiscs()I

    move-result v8

    invoke-static {v6, v7, v8}, Lnet/lingala/zip4j/util/Raw;->writeIntLittleEndian([BII)V

    .line 716
    move-object v6, v0

    move-object v7, v4

    move-object v8, v3

    invoke-direct {v6, v7, v8}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 722
    return-void

    .line 717
    .end local v4    # "intByte":[B
    .end local v5    # "longByte":[B
    :catch_0
    move-exception v6

    move-object v4, v6

    .line 718
    .local v4, "zipException":Lnet/lingala/zip4j/exception/ZipException;
    move-object v6, v4

    throw v6

    .line 719
    .end local v4    # "zipException":Lnet/lingala/zip4j/exception/ZipException;
    :catch_1
    move-exception v6

    move-object v4, v6

    .line 720
    .local v4, "e":Ljava/lang/Exception;
    new-instance v6, Lnet/lingala/zip4j/exception/ZipException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v4

    invoke-direct {v7, v8}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method private writeZip64EndOfCentralDirectoryRecord(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;IJLjava/util/List;)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 609
    move-object/from16 v3, p0

    .local v3, "this":Lnet/lingala/zip4j/core/HeaderWriter;
    move-object/from16 v4, p1

    .local v4, "zipModel":Lnet/lingala/zip4j/model/ZipModel;
    move-object/from16 v5, p2

    .local v5, "outputStream":Ljava/io/OutputStream;
    move/from16 v6, p3

    .local v6, "sizeOfCentralDir":I
    move-wide/from16 v7, p4

    .local v7, "offsetCentralDir":J
    move-object/from16 v9, p6

    .local v9, "headerBytesList":Ljava/util/List;
    move-object/from16 v16, v4

    if-eqz v16, :cond_0

    move-object/from16 v16, v5

    if-nez v16, :cond_1

    .line 610
    :cond_0
    new-instance v16, Lnet/lingala/zip4j/exception/ZipException;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const-string/jumbo v18, "zip model or output stream is null, cannot write zip64 end of central directory record"

    invoke-direct/range {v17 .. v18}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 615
    :cond_1
    const/16 v16, 0x2

    :try_start_0
    move/from16 v0, v16

    new-array v0, v0, [B

    move-object/from16 v16, v0

    move-object/from16 v10, v16

    .line 616
    .local v10, "shortByte":[B
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [B

    move-object/from16 v16, v0

    move-object/from16 v11, v16

    .line 617
    .local v11, "emptyShortByte":[B
    const/16 v16, 0x4

    move/from16 v0, v16

    new-array v0, v0, [B

    move-object/from16 v16, v0

    move-object/from16 v12, v16

    .line 618
    .local v12, "intByte":[B
    const/16 v16, 0x8

    move/from16 v0, v16

    new-array v0, v0, [B

    move-object/from16 v16, v0

    move-object/from16 v13, v16

    .line 621
    .local v13, "longByte":[B
    move-object/from16 v16, v12

    const/16 v17, 0x0

    const v18, 0x6064b50

    invoke-static/range {v16 .. v18}, Lnet/lingala/zip4j/util/Raw;->writeIntLittleEndian([BII)V

    .line 622
    move-object/from16 v16, v3

    move-object/from16 v17, v12

    move-object/from16 v18, v9

    invoke-direct/range {v16 .. v18}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 625
    move-object/from16 v16, v13

    const/16 v17, 0x0

    const-wide/16 v18, 0x2c

    invoke-static/range {v16 .. v19}, Lnet/lingala/zip4j/util/Raw;->writeLongLittleEndian([BIJ)V

    .line 626
    move-object/from16 v16, v3

    move-object/from16 v17, v13

    move-object/from16 v18, v9

    invoke-direct/range {v16 .. v18}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 630
    move-object/from16 v16, v4

    invoke-virtual/range {v16 .. v16}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v16

    if-eqz v16, :cond_3

    .line 631
    move-object/from16 v16, v4

    invoke-virtual/range {v16 .. v16}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v16

    if-eqz v16, :cond_3

    .line 632
    move-object/from16 v16, v4

    invoke-virtual/range {v16 .. v16}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    if-lez v16, :cond_3

    .line 633
    move-object/from16 v16, v10

    const/16 v17, 0x0

    .line 634
    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual/range {v18 .. v18}, Lnet/lingala/zip4j/model/FileHeader;->getVersionMadeBy()I

    move-result v18

    move/from16 v0, v18

    int-to-short v0, v0

    move/from16 v18, v0

    .line 633
    invoke-static/range {v16 .. v18}, Lnet/lingala/zip4j/util/Raw;->writeShortLittleEndian([BIS)V

    .line 635
    move-object/from16 v16, v3

    move-object/from16 v17, v10

    move-object/from16 v18, v9

    invoke-direct/range {v16 .. v18}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 637
    move-object/from16 v16, v10

    const/16 v17, 0x0

    .line 638
    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual/range {v18 .. v18}, Lnet/lingala/zip4j/model/FileHeader;->getVersionNeededToExtract()I

    move-result v18

    move/from16 v0, v18

    int-to-short v0, v0

    move/from16 v18, v0

    .line 637
    invoke-static/range {v16 .. v18}, Lnet/lingala/zip4j/util/Raw;->writeShortLittleEndian([BIS)V

    .line 639
    move-object/from16 v16, v3

    move-object/from16 v17, v10

    move-object/from16 v18, v9

    invoke-direct/range {v16 .. v18}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 646
    :goto_0
    move-object/from16 v16, v12

    const/16 v17, 0x0

    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->getNoOfThisDisk()I

    move-result v18

    invoke-static/range {v16 .. v18}, Lnet/lingala/zip4j/util/Raw;->writeIntLittleEndian([BII)V

    .line 647
    move-object/from16 v16, v3

    move-object/from16 v17, v12

    move-object/from16 v18, v9

    invoke-direct/range {v16 .. v18}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 650
    move-object/from16 v16, v12

    const/16 v17, 0x0

    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->getNoOfThisDiskStartOfCentralDir()I

    move-result v18

    invoke-static/range {v16 .. v18}, Lnet/lingala/zip4j/util/Raw;->writeIntLittleEndian([BII)V

    .line 651
    move-object/from16 v16, v3

    move-object/from16 v17, v12

    move-object/from16 v18, v9

    invoke-direct/range {v16 .. v18}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 654
    const/16 v16, 0x0

    move/from16 v14, v16

    .line 655
    .local v14, "numEntries":I
    const/16 v16, 0x0

    move/from16 v15, v16

    .line 656
    .local v15, "numEntriesOnThisDisk":I
    move-object/from16 v16, v4

    invoke-virtual/range {v16 .. v16}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v16

    if-eqz v16, :cond_2

    .line 657
    move-object/from16 v16, v4

    invoke-virtual/range {v16 .. v16}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v16

    if-nez v16, :cond_4

    .line 658
    :cond_2
    new-instance v16, Lnet/lingala/zip4j/exception/ZipException;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const-string/jumbo v18, "invalid central directory/file headers, cannot write end of central directory record"

    invoke-direct/range {v17 .. v18}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v16
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 684
    .end local v10    # "shortByte":[B
    .end local v11    # "emptyShortByte":[B
    .end local v12    # "intByte":[B
    .end local v13    # "longByte":[B
    .end local v14    # "numEntries":I
    .end local v15    # "numEntriesOnThisDisk":I
    :catch_0
    move-exception v16

    move-object/from16 v10, v16

    .line 685
    .local v10, "zipException":Lnet/lingala/zip4j/exception/ZipException;
    move-object/from16 v16, v10

    throw v16

    .line 641
    .local v10, "shortByte":[B
    .restart local v11    # "emptyShortByte":[B
    .restart local v12    # "intByte":[B
    .restart local v13    # "longByte":[B
    :cond_3
    move-object/from16 v16, v3

    move-object/from16 v17, v11

    move-object/from16 v18, v9

    :try_start_1
    invoke-direct/range {v16 .. v18}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 642
    move-object/from16 v16, v3

    move-object/from16 v17, v11

    move-object/from16 v18, v9

    invoke-direct/range {v16 .. v18}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V
    :try_end_1
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 686
    .end local v10    # "shortByte":[B
    .end local v11    # "emptyShortByte":[B
    .end local v12    # "intByte":[B
    .end local v13    # "longByte":[B
    :catch_1
    move-exception v16

    move-object/from16 v10, v16

    .line 687
    .local v10, "e":Ljava/lang/Exception;
    new-instance v16, Lnet/lingala/zip4j/exception/ZipException;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    move-object/from16 v18, v10

    invoke-direct/range {v17 .. v18}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v16

    .line 661
    .local v10, "shortByte":[B
    .restart local v11    # "emptyShortByte":[B
    .restart local v12    # "intByte":[B
    .restart local v13    # "longByte":[B
    .restart local v14    # "numEntries":I
    .restart local v15    # "numEntriesOnThisDisk":I
    :cond_4
    move-object/from16 v16, v4

    :try_start_2
    invoke-virtual/range {v16 .. v16}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v14, v16

    .line 662
    move-object/from16 v16, v4

    invoke-virtual/range {v16 .. v16}, Lnet/lingala/zip4j/model/ZipModel;->isSplitArchive()Z

    move-result v16

    if-eqz v16, :cond_5

    .line 663
    move-object/from16 v16, v3

    move-object/from16 v17, v4

    invoke-virtual/range {v17 .. v17}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v17

    .line 664
    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->getNoOfThisDisk()I

    move-result v18

    .line 663
    invoke-direct/range {v16 .. v18}, Lnet/lingala/zip4j/core/HeaderWriter;->countNumberOfFileHeaderEntriesOnDisk(Ljava/util/ArrayList;I)I

    move-result v16

    .line 669
    :goto_1
    move-object/from16 v16, v13

    const/16 v17, 0x0

    move/from16 v18, v15

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v16 .. v19}, Lnet/lingala/zip4j/util/Raw;->writeLongLittleEndian([BIJ)V

    .line 670
    move-object/from16 v16, v3

    move-object/from16 v17, v13

    move-object/from16 v18, v9

    invoke-direct/range {v16 .. v18}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 673
    move-object/from16 v16, v13

    const/16 v17, 0x0

    move/from16 v18, v14

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v16 .. v19}, Lnet/lingala/zip4j/util/Raw;->writeLongLittleEndian([BIJ)V

    .line 674
    move-object/from16 v16, v3

    move-object/from16 v17, v13

    move-object/from16 v18, v9

    invoke-direct/range {v16 .. v18}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 677
    move-object/from16 v16, v13

    const/16 v17, 0x0

    move/from16 v18, v6

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v16 .. v19}, Lnet/lingala/zip4j/util/Raw;->writeLongLittleEndian([BIJ)V

    .line 678
    move-object/from16 v16, v3

    move-object/from16 v17, v13

    move-object/from16 v18, v9

    invoke-direct/range {v16 .. v18}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 681
    move-object/from16 v16, v13

    const/16 v17, 0x0

    move-wide/from16 v18, v7

    invoke-static/range {v16 .. v19}, Lnet/lingala/zip4j/util/Raw;->writeLongLittleEndian([BIJ)V

    .line 682
    move-object/from16 v16, v3

    move-object/from16 v17, v13

    move-object/from16 v18, v9

    invoke-direct/range {v16 .. v18}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V
    :try_end_2
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 689
    return-void

    .line 666
    :cond_5
    move/from16 v16, v14

    move/from16 v15, v16

    goto :goto_1
.end method

.method private writeZipHeaderBytes(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;[B)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 314
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/core/HeaderWriter;
    move-object v1, p1

    .local v1, "zipModel":Lnet/lingala/zip4j/model/ZipModel;
    move-object v2, p2

    .local v2, "outputStream":Ljava/io/OutputStream;
    move-object v3, p3

    .local v3, "buff":[B
    move-object v5, v3

    if-nez v5, :cond_0

    .line 315
    new-instance v5, Lnet/lingala/zip4j/exception/ZipException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string/jumbo v7, "invalid buff to write as zip headers"

    invoke-direct {v6, v7}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 319
    :cond_0
    move-object v5, v2

    :try_start_0
    instance-of v5, v5, Lnet/lingala/zip4j/io/SplitOutputStream;

    if-eqz v5, :cond_1

    .line 320
    move-object v5, v2

    check-cast v5, Lnet/lingala/zip4j/io/SplitOutputStream;

    move-object v6, v3

    array-length v6, v6

    invoke-virtual {v5, v6}, Lnet/lingala/zip4j/io/SplitOutputStream;->checkBuffSizeAndStartNextSplitFile(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 321
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Lnet/lingala/zip4j/core/HeaderWriter;->finalizeZipFile(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;)V

    .line 322
    .line 330
    :goto_0
    return-void

    .line 326
    :cond_1
    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    goto :goto_0

    .line 327
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 328
    .local v4, "e":Ljava/io/IOException;
    new-instance v5, Lnet/lingala/zip4j/exception/ZipException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v4

    invoke-direct {v6, v7}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method


# virtual methods
.method public finalizeZipFile(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 216
    move-object/from16 v1, p0

    .local v1, "this":Lnet/lingala/zip4j/core/HeaderWriter;
    move-object/from16 v2, p1

    .local v2, "zipModel":Lnet/lingala/zip4j/model/ZipModel;
    move-object/from16 v3, p2

    .local v3, "outputStream":Ljava/io/OutputStream;
    move-object v8, v2

    if-eqz v8, :cond_0

    move-object v8, v3

    if-nez v8, :cond_1

    .line 217
    :cond_0
    new-instance v8, Lnet/lingala/zip4j/exception/ZipException;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    const-string/jumbo v10, "input parameters is null, cannot finalize zip file"

    invoke-direct {v9, v10}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 221
    :cond_1
    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    :try_start_0
    invoke-direct {v8, v9, v10}, Lnet/lingala/zip4j/core/HeaderWriter;->processHeaderData(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;)V

    .line 223
    move-object v8, v2

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v8

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->getOffsetOfStartOfCentralDir()J

    move-result-wide v8

    move-wide v4, v8

    .line 225
    .local v4, "offsetCentralDir":J
    new-instance v8, Ljava/util/ArrayList;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v8

    .line 227
    .local v6, "headerBytesList":Ljava/util/List;
    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    move-object v11, v6

    invoke-direct {v8, v9, v10, v11}, Lnet/lingala/zip4j/core/HeaderWriter;->writeCentralDirectory(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;Ljava/util/List;)I

    move-result v8

    move v7, v8

    .line 229
    .local v7, "sizeOfCentralDir":I
    move-object v8, v2

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/ZipModel;->isZip64Format()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 230
    move-object v8, v2

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndCentralDirRecord()Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;

    move-result-object v8

    if-nez v8, :cond_2

    .line 231
    move-object v8, v2

    new-instance v9, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    invoke-direct {v10}, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;-><init>()V

    invoke-virtual {v8, v9}, Lnet/lingala/zip4j/model/ZipModel;->setZip64EndCentralDirRecord(Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;)V

    .line 233
    :cond_2
    move-object v8, v2

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndCentralDirLocator()Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    move-result-object v8

    if-nez v8, :cond_3

    .line 234
    move-object v8, v2

    new-instance v9, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    invoke-direct {v10}, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;-><init>()V

    invoke-virtual {v8, v9}, Lnet/lingala/zip4j/model/ZipModel;->setZip64EndCentralDirLocator(Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;)V

    .line 237
    :cond_3
    move-object v8, v2

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndCentralDirLocator()Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    move-result-object v8

    move-wide v9, v4

    move v11, v7

    int-to-long v11, v11

    add-long/2addr v9, v11

    invoke-virtual {v8, v9, v10}, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->setOffsetZip64EndOfCentralDirRec(J)V

    .line 238
    move-object v8, v3

    instance-of v8, v8, Lnet/lingala/zip4j/io/SplitOutputStream;

    if-eqz v8, :cond_5

    .line 239
    move-object v8, v2

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndCentralDirLocator()Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    move-result-object v8

    move-object v9, v3

    check-cast v9, Lnet/lingala/zip4j/io/SplitOutputStream;

    invoke-virtual {v9}, Lnet/lingala/zip4j/io/SplitOutputStream;->getCurrSplitFileCounter()I

    move-result v9

    invoke-virtual {v8, v9}, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->setNoOfDiskStartOfZip64EndOfCentralDirRec(I)V

    .line 240
    move-object v8, v2

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndCentralDirLocator()Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    move-result-object v8

    move-object v9, v3

    check-cast v9, Lnet/lingala/zip4j/io/SplitOutputStream;

    invoke-virtual {v9}, Lnet/lingala/zip4j/io/SplitOutputStream;->getCurrSplitFileCounter()I

    move-result v9

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->setTotNumberOfDiscs(I)V

    .line 246
    :goto_0
    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    move v11, v7

    move-wide v12, v4

    move-object v14, v6

    invoke-direct/range {v8 .. v14}, Lnet/lingala/zip4j/core/HeaderWriter;->writeZip64EndOfCentralDirectoryRecord(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;IJLjava/util/List;)V

    .line 248
    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    move-object v11, v6

    invoke-direct {v8, v9, v10, v11}, Lnet/lingala/zip4j/core/HeaderWriter;->writeZip64EndOfCentralDirectoryLocator(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;Ljava/util/List;)V

    .line 251
    :cond_4
    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    move v11, v7

    move-wide v12, v4

    move-object v14, v6

    invoke-direct/range {v8 .. v14}, Lnet/lingala/zip4j/core/HeaderWriter;->writeEndOfCentralDirectoryRecord(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;IJLjava/util/List;)V

    .line 253
    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    move-object v11, v1

    move-object v12, v6

    invoke-direct {v11, v12}, Lnet/lingala/zip4j/core/HeaderWriter;->byteArrayListToByteArray(Ljava/util/List;)[B

    move-result-object v11

    invoke-direct {v8, v9, v10, v11}, Lnet/lingala/zip4j/core/HeaderWriter;->writeZipHeaderBytes(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;[B)V

    .line 259
    return-void

    .line 242
    :cond_5
    move-object v8, v2

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndCentralDirLocator()Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->setNoOfDiskStartOfZip64EndOfCentralDirRec(I)V

    .line 243
    move-object v8, v2

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndCentralDirLocator()Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->setTotNumberOfDiscs(I)V
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 254
    .end local v4    # "offsetCentralDir":J
    .end local v6    # "headerBytesList":Ljava/util/List;
    .end local v7    # "sizeOfCentralDir":I
    :catch_0
    move-exception v8

    move-object v4, v8

    .line 255
    .local v4, "e":Lnet/lingala/zip4j/exception/ZipException;
    move-object v8, v4

    throw v8

    .line 256
    .end local v4    # "e":Lnet/lingala/zip4j/exception/ZipException;
    :catch_1
    move-exception v8

    move-object v4, v8

    .line 257
    .local v4, "e":Ljava/lang/Exception;
    new-instance v8, Lnet/lingala/zip4j/exception/ZipException;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    move-object v10, v4

    invoke-direct {v9, v10}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v8
.end method

.method public finalizeZipFileWithoutValidations(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 271
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/core/HeaderWriter;
    move-object/from16 v1, p1

    .local v1, "zipModel":Lnet/lingala/zip4j/model/ZipModel;
    move-object/from16 v2, p2

    .local v2, "outputStream":Ljava/io/OutputStream;
    move-object v7, v1

    if-eqz v7, :cond_0

    move-object v7, v2

    if-nez v7, :cond_1

    .line 272
    :cond_0
    new-instance v7, Lnet/lingala/zip4j/exception/ZipException;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    const-string/jumbo v9, "input parameters is null, cannot finalize zip file without validations"

    invoke-direct {v8, v9}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 277
    :cond_1
    :try_start_0
    new-instance v7, Ljava/util/ArrayList;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v7

    .line 279
    .local v3, "headerBytesList":Ljava/util/List;
    move-object v7, v1

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v7

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->getOffsetOfStartOfCentralDir()J

    move-result-wide v7

    move-wide v4, v7

    .line 281
    .local v4, "offsetCentralDir":J
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    invoke-direct {v7, v8, v9, v10}, Lnet/lingala/zip4j/core/HeaderWriter;->writeCentralDirectory(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;Ljava/util/List;)I

    move-result v7

    move v6, v7

    .line 283
    .local v6, "sizeOfCentralDir":I
    move-object v7, v1

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/ZipModel;->isZip64Format()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 284
    move-object v7, v1

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndCentralDirRecord()Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;

    move-result-object v7

    if-nez v7, :cond_2

    .line 285
    move-object v7, v1

    new-instance v8, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    invoke-direct {v9}, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;-><init>()V

    invoke-virtual {v7, v8}, Lnet/lingala/zip4j/model/ZipModel;->setZip64EndCentralDirRecord(Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;)V

    .line 287
    :cond_2
    move-object v7, v1

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndCentralDirLocator()Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    move-result-object v7

    if-nez v7, :cond_3

    .line 288
    move-object v7, v1

    new-instance v8, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    invoke-direct {v9}, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;-><init>()V

    invoke-virtual {v7, v8}, Lnet/lingala/zip4j/model/ZipModel;->setZip64EndCentralDirLocator(Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;)V

    .line 291
    :cond_3
    move-object v7, v1

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndCentralDirLocator()Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    move-result-object v7

    move-wide v8, v4

    move v10, v6

    int-to-long v10, v10

    add-long/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->setOffsetZip64EndOfCentralDirRec(J)V

    .line 293
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move v10, v6

    move-wide v11, v4

    move-object v13, v3

    invoke-direct/range {v7 .. v13}, Lnet/lingala/zip4j/core/HeaderWriter;->writeZip64EndOfCentralDirectoryRecord(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;IJLjava/util/List;)V

    .line 294
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    invoke-direct {v7, v8, v9, v10}, Lnet/lingala/zip4j/core/HeaderWriter;->writeZip64EndOfCentralDirectoryLocator(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;Ljava/util/List;)V

    .line 297
    :cond_4
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move v10, v6

    move-wide v11, v4

    move-object v13, v3

    invoke-direct/range {v7 .. v13}, Lnet/lingala/zip4j/core/HeaderWriter;->writeEndOfCentralDirectoryRecord(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;IJLjava/util/List;)V

    .line 299
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move-object v10, v0

    move-object v11, v3

    invoke-direct {v10, v11}, Lnet/lingala/zip4j/core/HeaderWriter;->byteArrayListToByteArray(Ljava/util/List;)[B

    move-result-object v10

    invoke-direct {v7, v8, v9, v10}, Lnet/lingala/zip4j/core/HeaderWriter;->writeZipHeaderBytes(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;[B)V
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 305
    return-void

    .line 300
    .end local v3    # "headerBytesList":Ljava/util/List;
    .end local v4    # "offsetCentralDir":J
    .end local v6    # "sizeOfCentralDir":I
    :catch_0
    move-exception v7

    move-object v3, v7

    .line 301
    .local v3, "e":Lnet/lingala/zip4j/exception/ZipException;
    move-object v7, v3

    throw v7

    .line 302
    .end local v3    # "e":Lnet/lingala/zip4j/exception/ZipException;
    :catch_1
    move-exception v7

    move-object v3, v7

    .line 303
    .local v3, "e":Ljava/lang/Exception;
    new-instance v7, Lnet/lingala/zip4j/exception/ZipException;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move-object v9, v3

    invoke-direct {v8, v9}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v7
.end method

.method public updateLocalFileHeader(Lnet/lingala/zip4j/model/LocalFileHeader;JILnet/lingala/zip4j/model/ZipModel;[BILnet/lingala/zip4j/io/SplitOutputStream;)V
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 810
    move-object/from16 v2, p0

    .local v2, "this":Lnet/lingala/zip4j/core/HeaderWriter;
    move-object/from16 v3, p1

    .local v3, "localFileHeader":Lnet/lingala/zip4j/model/LocalFileHeader;
    move-wide/from16 v4, p2

    .local v4, "offset":J
    move/from16 v6, p4

    .local v6, "toUpdate":I
    move-object/from16 v7, p5

    .local v7, "zipModel":Lnet/lingala/zip4j/model/ZipModel;
    move-object/from16 v8, p6

    .local v8, "bytesToWrite":[B
    move/from16 v9, p7

    .local v9, "noOfDisk":I
    move-object/from16 v10, p8

    .local v10, "outputStream":Lnet/lingala/zip4j/io/SplitOutputStream;
    move-object/from16 v17, v3

    if-eqz v17, :cond_0

    move-wide/from16 v17, v4

    const-wide/16 v19, 0x0

    cmp-long v17, v17, v19

    if-ltz v17, :cond_0

    move-object/from16 v17, v7

    if-nez v17, :cond_1

    .line 811
    :cond_0
    new-instance v17, Lnet/lingala/zip4j/exception/ZipException;

    move-object/from16 v26, v17

    move-object/from16 v17, v26

    move-object/from16 v18, v26

    const-string/jumbo v19, "invalid input parameters, cannot update local file header"

    invoke-direct/range {v18 .. v19}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 815
    :cond_1
    const/16 v17, 0x0

    move/from16 v11, v17

    .line 816
    .local v11, "closeFlag":Z
    const/16 v17, 0x0

    move-object/from16 v12, v17

    .line 818
    .local v12, "currOutputStream":Lnet/lingala/zip4j/io/SplitOutputStream;
    move/from16 v17, v9

    move-object/from16 v18, v10

    :try_start_0
    invoke-virtual/range {v18 .. v18}, Lnet/lingala/zip4j/io/SplitOutputStream;->getCurrSplitFileCounter()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_3

    .line 819
    new-instance v17, Ljava/io/File;

    move-object/from16 v26, v17

    move-object/from16 v17, v26

    move-object/from16 v18, v26

    move-object/from16 v19, v7

    invoke-virtual/range {v19 .. v19}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v13, v17

    .line 820
    .local v13, "zipFile":Ljava/io/File;
    move-object/from16 v17, v13

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v14, v17

    .line 821
    .local v14, "parentFile":Ljava/lang/String;
    move-object/from16 v17, v13

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lnet/lingala/zip4j/util/Zip4jUtil;->getZipFileNameWithoutExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v15, v17

    .line 822
    .local v15, "fileNameWithoutExt":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuffer;

    move-object/from16 v26, v17

    move-object/from16 v17, v26

    move-object/from16 v18, v26

    move-object/from16 v19, v14

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string/jumbo v18, "file.separator"

    invoke-static/range {v18 .. v18}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v16, v17

    .line 823
    .local v16, "fileName":Ljava/lang/String;
    move/from16 v17, v9

    const/16 v18, 0x9

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_2

    .line 824
    new-instance v17, Ljava/lang/StringBuffer;

    move-object/from16 v26, v17

    move-object/from16 v17, v26

    move-object/from16 v18, v26

    move-object/from16 v19, v16

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object/from16 v18, v15

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    const-string/jumbo v18, ".z0"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    move/from16 v18, v9

    const/16 v19, 0x1

    add-int/lit8 v18, v18, 0x1

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v16, v17

    .line 828
    :goto_0
    new-instance v17, Lnet/lingala/zip4j/io/SplitOutputStream;

    move-object/from16 v26, v17

    move-object/from16 v17, v26

    move-object/from16 v18, v26

    new-instance v19, Ljava/io/File;

    move-object/from16 v26, v19

    move-object/from16 v19, v26

    move-object/from16 v20, v26

    move-object/from16 v21, v16

    invoke-direct/range {v20 .. v21}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v18 .. v19}, Lnet/lingala/zip4j/io/SplitOutputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v12, v17

    .line 829
    const/16 v17, 0x1

    move/from16 v11, v17

    .line 834
    .end local v13    # "zipFile":Ljava/io/File;
    .end local v14    # "parentFile":Ljava/lang/String;
    .end local v15    # "fileNameWithoutExt":Ljava/lang/String;
    .end local v16    # "fileName":Ljava/lang/String;
    :goto_1
    move-object/from16 v17, v12

    invoke-virtual/range {v17 .. v17}, Lnet/lingala/zip4j/io/SplitOutputStream;->getFilePointer()J

    move-result-wide v17

    move-wide/from16 v13, v17

    .line 836
    .local v13, "currOffset":J
    move/from16 v17, v6

    sparse-switch v17, :sswitch_data_0

    .line 849
    :goto_2
    move/from16 v17, v11

    if-eqz v17, :cond_4

    .line 850
    move-object/from16 v17, v12

    invoke-virtual/range {v17 .. v17}, Lnet/lingala/zip4j/io/SplitOutputStream;->close()V

    .line 858
    :goto_3
    return-void

    .line 826
    .local v13, "zipFile":Ljava/io/File;
    .restart local v14    # "parentFile":Ljava/lang/String;
    .restart local v15    # "fileNameWithoutExt":Ljava/lang/String;
    .restart local v16    # "fileName":Ljava/lang/String;
    :cond_2
    new-instance v17, Ljava/lang/StringBuffer;

    move-object/from16 v26, v17

    move-object/from16 v17, v26

    move-object/from16 v18, v26

    move-object/from16 v19, v16

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object/from16 v18, v15

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    const-string/jumbo v18, ".z"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    move/from16 v18, v9

    const/16 v19, 0x1

    add-int/lit8 v18, v18, 0x1

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v16, v17

    goto :goto_0

    .line 831
    .end local v13    # "zipFile":Ljava/io/File;
    .end local v14    # "parentFile":Ljava/lang/String;
    .end local v15    # "fileNameWithoutExt":Ljava/lang/String;
    .end local v16    # "fileName":Ljava/lang/String;
    :cond_3
    move-object/from16 v17, v10

    move-object/from16 v12, v17

    goto :goto_1

    .line 838
    .local v13, "currOffset":J
    :sswitch_0
    move-object/from16 v17, v12

    move-wide/from16 v18, v4

    move/from16 v20, v6

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    invoke-virtual/range {v17 .. v19}, Lnet/lingala/zip4j/io/SplitOutputStream;->seek(J)V

    .line 839
    move-object/from16 v17, v12

    move-object/from16 v18, v8

    invoke-virtual/range {v17 .. v18}, Lnet/lingala/zip4j/io/SplitOutputStream;->write([B)V

    .line 840
    goto :goto_2

    .line 843
    :sswitch_1
    move-object/from16 v17, v2

    move-object/from16 v18, v12

    move-object/from16 v19, v3

    .line 844
    move-wide/from16 v20, v4

    move/from16 v22, v6

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v24, v8

    move-object/from16 v25, v7

    invoke-virtual/range {v25 .. v25}, Lnet/lingala/zip4j/model/ZipModel;->isZip64Format()Z

    move-result v25

    .line 843
    invoke-direct/range {v17 .. v25}, Lnet/lingala/zip4j/core/HeaderWriter;->updateCompressedSizeInLocalFileHeader(Lnet/lingala/zip4j/io/SplitOutputStream;Lnet/lingala/zip4j/model/LocalFileHeader;JJ[BZ)V

    .line 845
    goto :goto_2

    .line 852
    :cond_4
    move-object/from16 v17, v10

    move-wide/from16 v18, v13

    invoke-virtual/range {v17 .. v19}, Lnet/lingala/zip4j/io/SplitOutputStream;->seek(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 855
    .end local v13    # "currOffset":J
    :catch_0
    move-exception v17

    move-object/from16 v11, v17

    .line 856
    .local v11, "e":Ljava/lang/Exception;
    new-instance v17, Lnet/lingala/zip4j/exception/ZipException;

    move-object/from16 v26, v17

    move-object/from16 v17, v26

    move-object/from16 v18, v26

    move-object/from16 v19, v11

    invoke-direct/range {v18 .. v19}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v17

    .line 836
    nop

    :sswitch_data_0
    .sparse-switch
        0xe -> :sswitch_0
        0x12 -> :sswitch_1
        0x16 -> :sswitch_1
    .end sparse-switch
.end method

.method public writeExtendedLocalHeader(Lnet/lingala/zip4j/model/LocalFileHeader;Ljava/io/OutputStream;)I
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/core/HeaderWriter;
    move-object/from16 v1, p1

    .local v1, "localFileHeader":Lnet/lingala/zip4j/model/LocalFileHeader;
    move-object/from16 v2, p2

    .local v2, "outputStream":Ljava/io/OutputStream;
    move-object v10, v1

    if-eqz v10, :cond_0

    move-object v10, v2

    if-nez v10, :cond_1

    .line 173
    :cond_0
    new-instance v10, Lnet/lingala/zip4j/exception/ZipException;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const-string/jumbo v12, "input parameters is null, cannot write extended local header"

    invoke-direct {v11, v12}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 176
    :cond_1
    new-instance v10, Ljava/util/ArrayList;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v10

    .line 177
    .local v3, "byteArrayList":Ljava/util/ArrayList;
    const/4 v10, 0x4

    new-array v10, v10, [B

    move-object v4, v10

    .line 180
    .local v4, "intByte":[B
    move-object v10, v4

    const/4 v11, 0x0

    const v12, 0x8074b50

    invoke-static {v10, v11, v12}, Lnet/lingala/zip4j/util/Raw;->writeIntLittleEndian([BII)V

    .line 181
    move-object v10, v0

    move-object v11, v4

    move-object v12, v3

    invoke-direct {v10, v11, v12}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 184
    move-object v10, v4

    const/4 v11, 0x0

    move-object v12, v1

    invoke-virtual {v12}, Lnet/lingala/zip4j/model/LocalFileHeader;->getCrc32()J

    move-result-wide v12

    long-to-int v12, v12

    invoke-static {v10, v11, v12}, Lnet/lingala/zip4j/util/Raw;->writeIntLittleEndian([BII)V

    .line 185
    move-object v10, v0

    move-object v11, v4

    move-object v12, v3

    invoke-direct {v10, v11, v12}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 188
    move-object v10, v1

    invoke-virtual {v10}, Lnet/lingala/zip4j/model/LocalFileHeader;->getCompressedSize()J

    move-result-wide v10

    move-wide v5, v10

    .line 189
    .local v5, "compressedSize":J
    move-wide v10, v5

    const-wide/32 v12, 0x7fffffff

    cmp-long v10, v10, v12

    if-ltz v10, :cond_2

    .line 190
    const-wide/32 v10, 0x7fffffff

    move-wide v5, v10

    .line 192
    :cond_2
    move-object v10, v4

    const/4 v11, 0x0

    move-wide v12, v5

    long-to-int v12, v12

    invoke-static {v10, v11, v12}, Lnet/lingala/zip4j/util/Raw;->writeIntLittleEndian([BII)V

    .line 193
    move-object v10, v0

    move-object v11, v4

    move-object v12, v3

    invoke-direct {v10, v11, v12}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 196
    move-object v10, v1

    invoke-virtual {v10}, Lnet/lingala/zip4j/model/LocalFileHeader;->getUncompressedSize()J

    move-result-wide v10

    move-wide v7, v10

    .line 197
    .local v7, "uncompressedSize":J
    move-wide v10, v7

    const-wide/32 v12, 0x7fffffff

    cmp-long v10, v10, v12

    if-ltz v10, :cond_3

    .line 198
    const-wide/32 v10, 0x7fffffff

    move-wide v7, v10

    .line 200
    :cond_3
    move-object v10, v4

    const/4 v11, 0x0

    move-wide v12, v7

    long-to-int v12, v12

    invoke-static {v10, v11, v12}, Lnet/lingala/zip4j/util/Raw;->writeIntLittleEndian([BII)V

    .line 201
    move-object v10, v0

    move-object v11, v4

    move-object v12, v3

    invoke-direct {v10, v11, v12}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 203
    move-object v10, v0

    move-object v11, v3

    invoke-direct {v10, v11}, Lnet/lingala/zip4j/core/HeaderWriter;->byteArrayListToByteArray(Ljava/util/List;)[B

    move-result-object v10

    move-object v9, v10

    .line 204
    .local v9, "extLocHdrBytes":[B
    move-object v10, v2

    move-object v11, v9

    invoke-virtual {v10, v11}, Ljava/io/OutputStream;->write([B)V

    .line 205
    move-object v10, v9

    array-length v10, v10

    move v0, v10

    .end local v0    # "this":Lnet/lingala/zip4j/core/HeaderWriter;
    return v0
.end method

.method public writeLocalFileHeader(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/model/LocalFileHeader;Ljava/io/OutputStream;)I
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 43
    move-object/from16 v2, p0

    .local v2, "this":Lnet/lingala/zip4j/core/HeaderWriter;
    move-object/from16 v3, p1

    .local v3, "zipModel":Lnet/lingala/zip4j/model/ZipModel;
    move-object/from16 v4, p2

    .local v4, "localFileHeader":Lnet/lingala/zip4j/model/LocalFileHeader;
    move-object/from16 v5, p3

    .local v5, "outputStream":Ljava/io/OutputStream;
    move-object/from16 v18, v4

    if-nez v18, :cond_0

    .line 44
    new-instance v18, Lnet/lingala/zip4j/exception/ZipException;

    move-object/from16 v23, v18

    move-object/from16 v18, v23

    move-object/from16 v19, v23

    const-string/jumbo v20, "input parameters are null, cannot write local file header"

    invoke-direct/range {v19 .. v20}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 48
    :cond_0
    :try_start_0
    new-instance v18, Ljava/util/ArrayList;

    move-object/from16 v23, v18

    move-object/from16 v18, v23

    move-object/from16 v19, v23

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v6, v18

    .line 50
    .local v6, "byteArrayList":Ljava/util/ArrayList;
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v18, v0

    move-object/from16 v7, v18

    .line 51
    .local v7, "shortByte":[B
    const/16 v18, 0x4

    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v18, v0

    move-object/from16 v8, v18

    .line 52
    .local v8, "intByte":[B
    const/16 v18, 0x8

    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v18, v0

    move-object/from16 v9, v18

    .line 53
    .local v9, "longByte":[B
    const/16 v18, 0x8

    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v18, v0

    move-object/from16 v10, v18

    .line 55
    .local v10, "emptyLongByte":[B
    move-object/from16 v18, v8

    const/16 v19, 0x0

    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Lnet/lingala/zip4j/model/LocalFileHeader;->getSignature()I

    move-result v20

    invoke-static/range {v18 .. v20}, Lnet/lingala/zip4j/util/Raw;->writeIntLittleEndian([BII)V

    .line 56
    move-object/from16 v18, v2

    move-object/from16 v19, v8

    move-object/from16 v20, v6

    invoke-direct/range {v18 .. v20}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 57
    move-object/from16 v18, v7

    const/16 v19, 0x0

    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Lnet/lingala/zip4j/model/LocalFileHeader;->getVersionNeededToExtract()I

    move-result v20

    move/from16 v0, v20

    int-to-short v0, v0

    move/from16 v20, v0

    invoke-static/range {v18 .. v20}, Lnet/lingala/zip4j/util/Raw;->writeShortLittleEndian([BIS)V

    .line 58
    move-object/from16 v18, v2

    move-object/from16 v19, v7

    move-object/from16 v20, v6

    invoke-direct/range {v18 .. v20}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 60
    move-object/from16 v18, v2

    move-object/from16 v19, v4

    invoke-virtual/range {v19 .. v19}, Lnet/lingala/zip4j/model/LocalFileHeader;->getGeneralPurposeFlag()[B

    move-result-object v19

    move-object/from16 v20, v6

    invoke-direct/range {v18 .. v20}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 62
    move-object/from16 v18, v7

    const/16 v19, 0x0

    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Lnet/lingala/zip4j/model/LocalFileHeader;->getCompressionMethod()I

    move-result v20

    move/from16 v0, v20

    int-to-short v0, v0

    move/from16 v20, v0

    invoke-static/range {v18 .. v20}, Lnet/lingala/zip4j/util/Raw;->writeShortLittleEndian([BIS)V

    .line 63
    move-object/from16 v18, v2

    move-object/from16 v19, v7

    move-object/from16 v20, v6

    invoke-direct/range {v18 .. v20}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 65
    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Lnet/lingala/zip4j/model/LocalFileHeader;->getLastModFileTime()I

    move-result v18

    move/from16 v11, v18

    .line 66
    .local v11, "dateTime":I
    move-object/from16 v18, v8

    const/16 v19, 0x0

    move/from16 v20, v11

    invoke-static/range {v18 .. v20}, Lnet/lingala/zip4j/util/Raw;->writeIntLittleEndian([BII)V

    .line 67
    move-object/from16 v18, v2

    move-object/from16 v19, v8

    move-object/from16 v20, v6

    invoke-direct/range {v18 .. v20}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 69
    move-object/from16 v18, v8

    const/16 v19, 0x0

    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Lnet/lingala/zip4j/model/LocalFileHeader;->getCrc32()J

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v20, v0

    invoke-static/range {v18 .. v20}, Lnet/lingala/zip4j/util/Raw;->writeIntLittleEndian([BII)V

    .line 70
    move-object/from16 v18, v2

    move-object/from16 v19, v8

    move-object/from16 v20, v6

    invoke-direct/range {v18 .. v20}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 71
    const/16 v18, 0x0

    move/from16 v12, v18

    .line 74
    .local v12, "writingZip64Rec":Z
    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Lnet/lingala/zip4j/model/LocalFileHeader;->getUncompressedSize()J

    move-result-wide v18

    move-wide/from16 v13, v18

    .line 75
    .local v13, "uncompressedSize":J
    move-wide/from16 v18, v13

    const-wide/16 v20, 0x32

    add-long v18, v18, v20

    const-wide v20, 0xffffffffL

    cmp-long v18, v18, v20

    if-ltz v18, :cond_5

    .line 76
    move-object/from16 v18, v9

    const/16 v19, 0x0

    const-wide v20, 0xffffffffL

    invoke-static/range {v18 .. v21}, Lnet/lingala/zip4j/util/Raw;->writeLongLittleEndian([BIJ)V

    .line 77
    move-object/from16 v18, v9

    const/16 v19, 0x0

    move-object/from16 v20, v8

    const/16 v21, 0x0

    const/16 v22, 0x4

    invoke-static/range {v18 .. v22}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 81
    move-object/from16 v18, v2

    move-object/from16 v19, v8

    move-object/from16 v20, v6

    invoke-direct/range {v18 .. v20}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 83
    move-object/from16 v18, v2

    move-object/from16 v19, v8

    move-object/from16 v20, v6

    invoke-direct/range {v18 .. v20}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 84
    move-object/from16 v18, v3

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lnet/lingala/zip4j/model/ZipModel;->setZip64Format(Z)V

    .line 85
    const/16 v18, 0x1

    move/from16 v12, v18

    .line 86
    move-object/from16 v18, v4

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lnet/lingala/zip4j/model/LocalFileHeader;->setWriteComprSizeInZip64ExtraRecord(Z)V

    .line 99
    :goto_0
    move-object/from16 v18, v7

    const/16 v19, 0x0

    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Lnet/lingala/zip4j/model/LocalFileHeader;->getFileNameLength()I

    move-result v20

    move/from16 v0, v20

    int-to-short v0, v0

    move/from16 v20, v0

    invoke-static/range {v18 .. v20}, Lnet/lingala/zip4j/util/Raw;->writeShortLittleEndian([BIS)V

    .line 100
    move-object/from16 v18, v2

    move-object/from16 v19, v7

    move-object/from16 v20, v6

    invoke-direct/range {v18 .. v20}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 102
    const/16 v18, 0x0

    move/from16 v15, v18

    .line 103
    .local v15, "extraFieldLength":I
    move/from16 v18, v12

    if-eqz v18, :cond_1

    .line 104
    add-int/lit8 v15, v15, 0x14

    .line 106
    :cond_1
    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Lnet/lingala/zip4j/model/LocalFileHeader;->getAesExtraDataRecord()Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-result-object v18

    if-eqz v18, :cond_2

    .line 107
    add-int/lit8 v15, v15, 0xb

    .line 109
    :cond_2
    move-object/from16 v18, v7

    const/16 v19, 0x0

    move/from16 v20, v15

    move/from16 v0, v20

    int-to-short v0, v0

    move/from16 v20, v0

    invoke-static/range {v18 .. v20}, Lnet/lingala/zip4j/util/Raw;->writeShortLittleEndian([BIS)V

    .line 110
    move-object/from16 v18, v2

    move-object/from16 v19, v7

    move-object/from16 v20, v6

    invoke-direct/range {v18 .. v20}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 111
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Lnet/lingala/zip4j/model/ZipModel;->getFileNameCharset()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 112
    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Lnet/lingala/zip4j/model/LocalFileHeader;->getFileName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Lnet/lingala/zip4j/model/ZipModel;->getFileNameCharset()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v18

    move-object/from16 v16, v18

    .line 113
    .local v16, "fileNameBytes":[B
    move-object/from16 v18, v2

    move-object/from16 v19, v16

    move-object/from16 v20, v6

    invoke-direct/range {v18 .. v20}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 121
    .end local v16    # "fileNameBytes":[B
    :goto_1
    move/from16 v18, v12

    if-eqz v18, :cond_3

    .line 125
    move-object/from16 v18, v7

    const/16 v19, 0x0

    const/16 v20, 0x1

    invoke-static/range {v18 .. v20}, Lnet/lingala/zip4j/util/Raw;->writeShortLittleEndian([BIS)V

    .line 126
    move-object/from16 v18, v2

    move-object/from16 v19, v7

    move-object/from16 v20, v6

    invoke-direct/range {v18 .. v20}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 130
    move-object/from16 v18, v7

    const/16 v19, 0x0

    const/16 v20, 0x10

    invoke-static/range {v18 .. v20}, Lnet/lingala/zip4j/util/Raw;->writeShortLittleEndian([BIS)V

    .line 131
    move-object/from16 v18, v2

    move-object/from16 v19, v7

    move-object/from16 v20, v6

    invoke-direct/range {v18 .. v20}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 133
    move-object/from16 v18, v9

    const/16 v19, 0x0

    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Lnet/lingala/zip4j/model/LocalFileHeader;->getUncompressedSize()J

    move-result-wide v20

    invoke-static/range {v18 .. v21}, Lnet/lingala/zip4j/util/Raw;->writeLongLittleEndian([BIJ)V

    .line 134
    move-object/from16 v18, v2

    move-object/from16 v19, v9

    move-object/from16 v20, v6

    invoke-direct/range {v18 .. v20}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 136
    move-object/from16 v18, v2

    move-object/from16 v19, v10

    move-object/from16 v20, v6

    invoke-direct/range {v18 .. v20}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 139
    :cond_3
    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Lnet/lingala/zip4j/model/LocalFileHeader;->getAesExtraDataRecord()Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-result-object v18

    if-eqz v18, :cond_4

    .line 140
    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Lnet/lingala/zip4j/model/LocalFileHeader;->getAesExtraDataRecord()Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-result-object v18

    move-object/from16 v16, v18

    .line 142
    .local v16, "aesExtraDataRecord":Lnet/lingala/zip4j/model/AESExtraDataRecord;
    move-object/from16 v18, v7

    const/16 v19, 0x0

    move-object/from16 v20, v16

    invoke-virtual/range {v20 .. v20}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->getSignature()J

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-short v0, v0

    move/from16 v20, v0

    invoke-static/range {v18 .. v20}, Lnet/lingala/zip4j/util/Raw;->writeShortLittleEndian([BIS)V

    .line 143
    move-object/from16 v18, v2

    move-object/from16 v19, v7

    move-object/from16 v20, v6

    invoke-direct/range {v18 .. v20}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 145
    move-object/from16 v18, v7

    const/16 v19, 0x0

    move-object/from16 v20, v16

    invoke-virtual/range {v20 .. v20}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->getDataSize()I

    move-result v20

    move/from16 v0, v20

    int-to-short v0, v0

    move/from16 v20, v0

    invoke-static/range {v18 .. v20}, Lnet/lingala/zip4j/util/Raw;->writeShortLittleEndian([BIS)V

    .line 146
    move-object/from16 v18, v2

    move-object/from16 v19, v7

    move-object/from16 v20, v6

    invoke-direct/range {v18 .. v20}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 148
    move-object/from16 v18, v7

    const/16 v19, 0x0

    move-object/from16 v20, v16

    invoke-virtual/range {v20 .. v20}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->getVersionNumber()I

    move-result v20

    move/from16 v0, v20

    int-to-short v0, v0

    move/from16 v20, v0

    invoke-static/range {v18 .. v20}, Lnet/lingala/zip4j/util/Raw;->writeShortLittleEndian([BIS)V

    .line 149
    move-object/from16 v18, v2

    move-object/from16 v19, v7

    move-object/from16 v20, v6

    invoke-direct/range {v18 .. v20}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 151
    move-object/from16 v18, v2

    move-object/from16 v19, v16

    invoke-virtual/range {v19 .. v19}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->getVendorID()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v20, v6

    invoke-direct/range {v18 .. v20}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 153
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v18, v0

    move-object/from16 v17, v18

    .line 154
    .local v17, "aesStrengthBytes":[B
    move-object/from16 v18, v17

    const/16 v19, 0x0

    move-object/from16 v20, v16

    invoke-virtual/range {v20 .. v20}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->getAesStrength()I

    move-result v20

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    aput-byte v20, v18, v19

    .line 155
    move-object/from16 v18, v2

    move-object/from16 v19, v17

    move-object/from16 v20, v6

    invoke-direct/range {v18 .. v20}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 157
    move-object/from16 v18, v7

    const/16 v19, 0x0

    move-object/from16 v20, v16

    invoke-virtual/range {v20 .. v20}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->getCompressionMethod()I

    move-result v20

    move/from16 v0, v20

    int-to-short v0, v0

    move/from16 v20, v0

    invoke-static/range {v18 .. v20}, Lnet/lingala/zip4j/util/Raw;->writeShortLittleEndian([BIS)V

    .line 158
    move-object/from16 v18, v2

    move-object/from16 v19, v7

    move-object/from16 v20, v6

    invoke-direct/range {v18 .. v20}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 160
    .end local v16    # "aesExtraDataRecord":Lnet/lingala/zip4j/model/AESExtraDataRecord;
    .end local v17    # "aesStrengthBytes":[B
    :cond_4
    move-object/from16 v18, v2

    move-object/from16 v19, v6

    invoke-direct/range {v18 .. v19}, Lnet/lingala/zip4j/core/HeaderWriter;->byteArrayListToByteArray(Ljava/util/List;)[B

    move-result-object v18

    move-object/from16 v16, v18

    .line 161
    .local v16, "lhBytes":[B
    move-object/from16 v18, v5

    move-object/from16 v19, v16

    invoke-virtual/range {v18 .. v19}, Ljava/io/OutputStream;->write([B)V

    .line 162
    move-object/from16 v18, v16

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v2, v18

    .end local v2    # "this":Lnet/lingala/zip4j/core/HeaderWriter;
    return v2

    .line 88
    .end local v15    # "extraFieldLength":I
    .end local v16    # "lhBytes":[B
    .restart local v2    # "this":Lnet/lingala/zip4j/core/HeaderWriter;
    :cond_5
    move-object/from16 v18, v9

    const/16 v19, 0x0

    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Lnet/lingala/zip4j/model/LocalFileHeader;->getCompressedSize()J

    move-result-wide v20

    invoke-static/range {v18 .. v21}, Lnet/lingala/zip4j/util/Raw;->writeLongLittleEndian([BIJ)V

    .line 89
    move-object/from16 v18, v9

    const/16 v19, 0x0

    move-object/from16 v20, v8

    const/16 v21, 0x0

    const/16 v22, 0x4

    invoke-static/range {v18 .. v22}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 90
    move-object/from16 v18, v2

    move-object/from16 v19, v8

    move-object/from16 v20, v6

    invoke-direct/range {v18 .. v20}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 92
    move-object/from16 v18, v9

    const/16 v19, 0x0

    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Lnet/lingala/zip4j/model/LocalFileHeader;->getUncompressedSize()J

    move-result-wide v20

    invoke-static/range {v18 .. v21}, Lnet/lingala/zip4j/util/Raw;->writeLongLittleEndian([BIJ)V

    .line 93
    move-object/from16 v18, v9

    const/16 v19, 0x0

    move-object/from16 v20, v8

    const/16 v21, 0x0

    const/16 v22, 0x4

    invoke-static/range {v18 .. v22}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 95
    move-object/from16 v18, v2

    move-object/from16 v19, v8

    move-object/from16 v20, v6

    invoke-direct/range {v18 .. v20}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V

    .line 97
    move-object/from16 v18, v4

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lnet/lingala/zip4j/model/LocalFileHeader;->setWriteComprSizeInZip64ExtraRecord(Z)V
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 163
    .end local v6    # "byteArrayList":Ljava/util/ArrayList;
    .end local v7    # "shortByte":[B
    .end local v8    # "intByte":[B
    .end local v9    # "longByte":[B
    .end local v10    # "emptyLongByte":[B
    .end local v11    # "dateTime":I
    .end local v12    # "writingZip64Rec":Z
    .end local v13    # "uncompressedSize":J
    :catch_0
    move-exception v18

    move-object/from16 v6, v18

    .line 164
    .local v6, "e":Lnet/lingala/zip4j/exception/ZipException;
    move-object/from16 v18, v6

    throw v18

    .line 115
    .local v6, "byteArrayList":Ljava/util/ArrayList;
    .restart local v7    # "shortByte":[B
    .restart local v8    # "intByte":[B
    .restart local v9    # "longByte":[B
    .restart local v10    # "emptyLongByte":[B
    .restart local v11    # "dateTime":I
    .restart local v12    # "writingZip64Rec":Z
    .restart local v13    # "uncompressedSize":J
    .restart local v15    # "extraFieldLength":I
    :cond_6
    move-object/from16 v18, v2

    move-object/from16 v19, v4

    :try_start_1
    invoke-virtual/range {v19 .. v19}, Lnet/lingala/zip4j/model/LocalFileHeader;->getFileName()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lnet/lingala/zip4j/util/Zip4jUtil;->convertCharset(Ljava/lang/String;)[B

    move-result-object v19

    move-object/from16 v20, v6

    invoke-direct/range {v18 .. v20}, Lnet/lingala/zip4j/core/HeaderWriter;->copyByteArrayToArrayList([BLjava/util/List;)V
    :try_end_1
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 165
    .end local v6    # "byteArrayList":Ljava/util/ArrayList;
    .end local v7    # "shortByte":[B
    .end local v8    # "intByte":[B
    .end local v9    # "longByte":[B
    .end local v10    # "emptyLongByte":[B
    .end local v11    # "dateTime":I
    .end local v12    # "writingZip64Rec":Z
    .end local v13    # "uncompressedSize":J
    .end local v15    # "extraFieldLength":I
    :catch_1
    move-exception v18

    move-object/from16 v6, v18

    .line 166
    .local v6, "e":Ljava/lang/Exception;
    new-instance v18, Lnet/lingala/zip4j/exception/ZipException;

    move-object/from16 v23, v18

    move-object/from16 v18, v23

    move-object/from16 v19, v23

    move-object/from16 v20, v6

    invoke-direct/range {v19 .. v20}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v18
.end method
