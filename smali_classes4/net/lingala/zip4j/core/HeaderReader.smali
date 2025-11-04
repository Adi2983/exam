.class public Lnet/lingala/zip4j/core/HeaderReader;
.super Ljava/lang/Object;
.source "HeaderReader.java"


# instance fields
.field private zip4jRaf:Ljava/io/RandomAccessFile;

.field private zipModel:Lnet/lingala/zip4j/model/ZipModel;


# direct methods
.method public constructor <init>(Ljava/io/RandomAccessFile;)V
    .locals 4

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/core/HeaderReader;
    move-object v1, p1

    .local v1, "zip4jRaf":Ljava/io/RandomAccessFile;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 47
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    .line 55
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    .line 56
    return-void
.end method

.method private getLongByteFromIntByte([B)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 1108
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/core/HeaderReader;
    move-object v1, p1

    .local v1, "intByte":[B
    move-object v3, v1

    if-nez v3, :cond_0

    .line 1109
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const-string/jumbo v5, "input parameter is null, cannot expand to 8 bytes"

    invoke-direct {v4, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1112
    :cond_0
    move-object v3, v1

    array-length v3, v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    .line 1113
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const-string/jumbo v5, "invalid byte length, cannot expand to 8 bytes"

    invoke-direct {v4, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1116
    :cond_1
    const/16 v3, 0x8

    new-array v3, v3, [B

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x0

    move-object v6, v1

    const/4 v7, 0x0

    aget-byte v6, v6, v7

    aput-byte v6, v4, v5

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x1

    move-object v6, v1

    const/4 v7, 0x1

    aget-byte v6, v6, v7

    aput-byte v6, v4, v5

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x2

    move-object v6, v1

    const/4 v7, 0x2

    aget-byte v6, v6, v7

    aput-byte v6, v4, v5

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x3

    move-object v6, v1

    const/4 v7, 0x3

    aget-byte v6, v6, v7

    aput-byte v6, v4, v5

    move-object v2, v3

    .line 1117
    .local v2, "longBuff":[B
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lnet/lingala/zip4j/core/HeaderReader;
    return-object v0
.end method

.method private readAESExtraDataRecord(Ljava/util/ArrayList;)Lnet/lingala/zip4j/model/AESExtraDataRecord;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 1046
    move-object v1, p0

    .local v1, "this":Lnet/lingala/zip4j/core/HeaderReader;
    move-object v2, p1

    .local v2, "extraDataRecords":Ljava/util/ArrayList;
    move-object v8, v2

    if-nez v8, :cond_0

    .line 1047
    const/4 v8, 0x0

    move-object v1, v8

    .line 1079
    .end local v1    # "this":Lnet/lingala/zip4j/core/HeaderReader;
    :goto_0
    return-object v1

    .line 1050
    .restart local v1    # "this":Lnet/lingala/zip4j/core/HeaderReader;
    :cond_0
    const/4 v8, 0x0

    move v3, v8

    .local v3, "i":I
    :goto_1
    move v8, v3

    move-object v9, v2

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lt v8, v9, :cond_1

    .line 1079
    const/4 v8, 0x0

    move-object v1, v8

    goto :goto_0

    .line 1051
    :cond_1
    move-object v8, v2

    move v9, v3

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lnet/lingala/zip4j/model/ExtraDataRecord;

    move-object v4, v8

    .line 1052
    .local v4, "extraDataRecord":Lnet/lingala/zip4j/model/ExtraDataRecord;
    move-object v8, v4

    if-nez v8, :cond_3

    .line 1053
    .line 1050
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1056
    :cond_3
    move-object v8, v4

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getHeader()J

    move-result-wide v8

    const-wide/32 v10, 0x9901

    cmp-long v8, v8, v10

    if-nez v8, :cond_2

    .line 1058
    move-object v8, v4

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getData()[B

    move-result-object v8

    if-nez v8, :cond_4

    .line 1059
    new-instance v8, Lnet/lingala/zip4j/exception/ZipException;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const-string/jumbo v10, "corrput AES extra data records"

    invoke-direct {v9, v10}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1062
    :cond_4
    new-instance v8, Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Lnet/lingala/zip4j/model/AESExtraDataRecord;-><init>()V

    move-object v5, v8

    .line 1064
    .local v5, "aesExtraDataRecord":Lnet/lingala/zip4j/model/AESExtraDataRecord;
    move-object v8, v5

    const-wide/32 v9, 0x9901

    invoke-virtual {v8, v9, v10}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->setSignature(J)V

    .line 1065
    move-object v8, v5

    move-object v9, v4

    invoke-virtual {v9}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getSizeOfData()I

    move-result v9

    invoke-virtual {v8, v9}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->setDataSize(I)V

    .line 1067
    move-object v8, v4

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getData()[B

    move-result-object v8

    move-object v6, v8

    .line 1068
    .local v6, "aesData":[B
    move-object v8, v5

    move-object v9, v6

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lnet/lingala/zip4j/util/Raw;->readShortLittleEndian([BI)I

    move-result v9

    invoke-virtual {v8, v9}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->setVersionNumber(I)V

    .line 1069
    const/4 v8, 0x2

    new-array v8, v8, [B

    move-object v7, v8

    .line 1070
    .local v7, "vendorIDBytes":[B
    move-object v8, v6

    const/4 v9, 0x2

    move-object v10, v7

    const/4 v11, 0x0

    const/4 v12, 0x2

    invoke-static {v8, v9, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1071
    move-object v8, v5

    new-instance v9, Ljava/lang/String;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v7

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v8, v9}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->setVendorID(Ljava/lang/String;)V

    .line 1072
    move-object v8, v5

    move-object v9, v6

    const/4 v10, 0x4

    aget-byte v9, v9, v10

    const/16 v10, 0xff

    and-int/lit16 v9, v9, 0xff

    invoke-virtual {v8, v9}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->setAesStrength(I)V

    .line 1073
    move-object v8, v5

    move-object v9, v6

    const/4 v10, 0x5

    invoke-static {v9, v10}, Lnet/lingala/zip4j/util/Raw;->readShortLittleEndian([BI)I

    move-result v9

    invoke-virtual {v8, v9}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->setCompressionMethod(I)V

    .line 1075
    move-object v8, v5

    move-object v1, v8

    goto/16 :goto_0
.end method

.method private readAndSaveAESExtraDataRecord(Lnet/lingala/zip4j/model/FileHeader;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 1002
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/core/HeaderReader;
    move-object v1, p1

    .local v1, "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 1003
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "file header is null in reading Zip64 Extended Info"

    invoke-direct {v4, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1006
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/FileHeader;->getExtraDataRecords()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_1

    move-object v3, v1

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/FileHeader;->getExtraDataRecords()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_2

    .line 1007
    .line 1015
    :cond_1
    :goto_0
    return-void

    .line 1010
    :cond_2
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/FileHeader;->getExtraDataRecords()Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v3, v4}, Lnet/lingala/zip4j/core/HeaderReader;->readAESExtraDataRecord(Ljava/util/ArrayList;)Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-result-object v3

    move-object v2, v3

    .line 1011
    .local v2, "aesExtraDataRecord":Lnet/lingala/zip4j/model/AESExtraDataRecord;
    move-object v3, v2

    if-eqz v3, :cond_3

    .line 1012
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Lnet/lingala/zip4j/model/FileHeader;->setAesExtraDataRecord(Lnet/lingala/zip4j/model/AESExtraDataRecord;)V

    .line 1013
    move-object v3, v1

    const/16 v4, 0x63

    invoke-virtual {v3, v4}, Lnet/lingala/zip4j/model/FileHeader;->setEncryptionMethod(I)V

    .line 1015
    :cond_3
    goto :goto_0
.end method

.method private readAndSaveAESExtraDataRecord(Lnet/lingala/zip4j/model/LocalFileHeader;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 1023
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/core/HeaderReader;
    move-object v1, p1

    .local v1, "localFileHeader":Lnet/lingala/zip4j/model/LocalFileHeader;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 1024
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "file header is null in reading Zip64 Extended Info"

    invoke-direct {v4, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1027
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/LocalFileHeader;->getExtraDataRecords()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_1

    move-object v3, v1

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/LocalFileHeader;->getExtraDataRecords()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_2

    .line 1028
    .line 1036
    :cond_1
    :goto_0
    return-void

    .line 1031
    :cond_2
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/LocalFileHeader;->getExtraDataRecords()Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v3, v4}, Lnet/lingala/zip4j/core/HeaderReader;->readAESExtraDataRecord(Ljava/util/ArrayList;)Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-result-object v3

    move-object v2, v3

    .line 1032
    .local v2, "aesExtraDataRecord":Lnet/lingala/zip4j/model/AESExtraDataRecord;
    move-object v3, v2

    if-eqz v3, :cond_3

    .line 1033
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Lnet/lingala/zip4j/model/LocalFileHeader;->setAesExtraDataRecord(Lnet/lingala/zip4j/model/AESExtraDataRecord;)V

    .line 1034
    move-object v3, v1

    const/16 v4, 0x63

    invoke-virtual {v3, v4}, Lnet/lingala/zip4j/model/LocalFileHeader;->setEncryptionMethod(I)V

    .line 1036
    :cond_3
    goto :goto_0
.end method

.method private readAndSaveExtraDataRecord(Lnet/lingala/zip4j/model/FileHeader;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 407
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/core/HeaderReader;
    move-object v1, p1

    .local v1, "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    move-object v3, v0

    iget-object v3, v3, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    if-nez v3, :cond_0

    .line 408
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "invalid file handler when trying to read extra data record"

    invoke-direct {v4, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 411
    :cond_0
    move-object v3, v1

    if-nez v3, :cond_1

    .line 412
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "file header is null"

    invoke-direct {v4, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 415
    :cond_1
    move-object v3, v1

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/FileHeader;->getExtraFieldLength()I

    move-result v3

    move v2, v3

    .line 416
    .local v2, "extraFieldLength":I
    move v3, v2

    if-gtz v3, :cond_2

    .line 417
    .line 422
    :goto_0
    return-void

    .line 420
    :cond_2
    move-object v3, v1

    move-object v4, v0

    move v5, v2

    invoke-direct {v4, v5}, Lnet/lingala/zip4j/core/HeaderReader;->readExtraDataRecords(I)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnet/lingala/zip4j/model/FileHeader;->setExtraDataRecords(Ljava/util/ArrayList;)V

    .line 422
    goto :goto_0
.end method

.method private readAndSaveExtraDataRecord(Lnet/lingala/zip4j/model/LocalFileHeader;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 431
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/core/HeaderReader;
    move-object v1, p1

    .local v1, "localFileHeader":Lnet/lingala/zip4j/model/LocalFileHeader;
    move-object v3, v0

    iget-object v3, v3, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    if-nez v3, :cond_0

    .line 432
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "invalid file handler when trying to read extra data record"

    invoke-direct {v4, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 435
    :cond_0
    move-object v3, v1

    if-nez v3, :cond_1

    .line 436
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "file header is null"

    invoke-direct {v4, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 439
    :cond_1
    move-object v3, v1

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/LocalFileHeader;->getExtraFieldLength()I

    move-result v3

    move v2, v3

    .line 440
    .local v2, "extraFieldLength":I
    move v3, v2

    if-gtz v3, :cond_2

    .line 441
    .line 446
    :goto_0
    return-void

    .line 444
    :cond_2
    move-object v3, v1

    move-object v4, v0

    move v5, v2

    invoke-direct {v4, v5}, Lnet/lingala/zip4j/core/HeaderReader;->readExtraDataRecords(I)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnet/lingala/zip4j/model/LocalFileHeader;->setExtraDataRecords(Ljava/util/ArrayList;)V

    .line 446
    goto :goto_0
.end method

.method private readAndSaveZip64ExtendedInfo(Lnet/lingala/zip4j/model/FileHeader;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 650
    move-object v1, p0

    .local v1, "this":Lnet/lingala/zip4j/core/HeaderReader;
    move-object v2, p1

    .local v2, "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    move-object v4, v2

    if-nez v4, :cond_0

    .line 651
    new-instance v4, Lnet/lingala/zip4j/exception/ZipException;

    move-object v13, v4

    move-object v4, v13

    move-object v5, v13

    const-string/jumbo v6, "file header is null in reading Zip64 Extended Info"

    invoke-direct {v5, v6}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 654
    :cond_0
    move-object v4, v2

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/FileHeader;->getExtraDataRecords()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_1

    move-object v4, v2

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/FileHeader;->getExtraDataRecords()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_2

    .line 655
    .line 679
    :cond_1
    :goto_0
    return-void

    .line 658
    :cond_2
    move-object v4, v1

    .line 659
    move-object v5, v2

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/FileHeader;->getExtraDataRecords()Ljava/util/ArrayList;

    move-result-object v5

    .line 660
    move-object v6, v2

    invoke-virtual {v6}, Lnet/lingala/zip4j/model/FileHeader;->getUncompressedSize()J

    move-result-wide v6

    .line 661
    move-object v8, v2

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/FileHeader;->getCompressedSize()J

    move-result-wide v8

    .line 662
    move-object v10, v2

    invoke-virtual {v10}, Lnet/lingala/zip4j/model/FileHeader;->getOffsetLocalHeader()J

    move-result-wide v10

    .line 663
    move-object v12, v2

    invoke-virtual {v12}, Lnet/lingala/zip4j/model/FileHeader;->getDiskNumberStart()I

    move-result v12

    .line 658
    invoke-direct/range {v4 .. v12}, Lnet/lingala/zip4j/core/HeaderReader;->readZip64ExtendedInfo(Ljava/util/ArrayList;JJJI)Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    move-result-object v4

    move-object v3, v4

    .line 665
    .local v3, "zip64ExtendedInfo":Lnet/lingala/zip4j/model/Zip64ExtendedInfo;
    move-object v4, v3

    if-eqz v4, :cond_6

    .line 666
    move-object v4, v2

    move-object v5, v3

    invoke-virtual {v4, v5}, Lnet/lingala/zip4j/model/FileHeader;->setZip64ExtendedInfo(Lnet/lingala/zip4j/model/Zip64ExtendedInfo;)V

    .line 667
    move-object v4, v3

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getUnCompressedSize()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    .line 668
    move-object v4, v2

    move-object v5, v3

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getUnCompressedSize()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lnet/lingala/zip4j/model/FileHeader;->setUncompressedSize(J)V

    .line 670
    :cond_3
    move-object v4, v3

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getCompressedSize()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_4

    .line 671
    move-object v4, v2

    move-object v5, v3

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getCompressedSize()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lnet/lingala/zip4j/model/FileHeader;->setCompressedSize(J)V

    .line 673
    :cond_4
    move-object v4, v3

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getOffsetLocalHeader()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_5

    .line 674
    move-object v4, v2

    move-object v5, v3

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getOffsetLocalHeader()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lnet/lingala/zip4j/model/FileHeader;->setOffsetLocalHeader(J)V

    .line 676
    :cond_5
    move-object v4, v3

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getDiskNumberStart()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_6

    .line 677
    move-object v4, v2

    move-object v5, v3

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getDiskNumberStart()I

    move-result v5

    invoke-virtual {v4, v5}, Lnet/lingala/zip4j/model/FileHeader;->setDiskNumberStart(I)V

    .line 679
    :cond_6
    goto :goto_0
.end method

.method private readAndSaveZip64ExtendedInfo(Lnet/lingala/zip4j/model/LocalFileHeader;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 687
    move-object v1, p0

    .local v1, "this":Lnet/lingala/zip4j/core/HeaderReader;
    move-object v2, p1

    .local v2, "localFileHeader":Lnet/lingala/zip4j/model/LocalFileHeader;
    move-object v4, v2

    if-nez v4, :cond_0

    .line 688
    new-instance v4, Lnet/lingala/zip4j/exception/ZipException;

    move-object v13, v4

    move-object v4, v13

    move-object v5, v13

    const-string/jumbo v6, "file header is null in reading Zip64 Extended Info"

    invoke-direct {v5, v6}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 691
    :cond_0
    move-object v4, v2

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/LocalFileHeader;->getExtraDataRecords()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_1

    move-object v4, v2

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/LocalFileHeader;->getExtraDataRecords()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_2

    .line 692
    .line 710
    :cond_1
    :goto_0
    return-void

    .line 695
    :cond_2
    move-object v4, v1

    .line 696
    move-object v5, v2

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/LocalFileHeader;->getExtraDataRecords()Ljava/util/ArrayList;

    move-result-object v5

    .line 697
    move-object v6, v2

    invoke-virtual {v6}, Lnet/lingala/zip4j/model/LocalFileHeader;->getUncompressedSize()J

    move-result-wide v6

    .line 698
    move-object v8, v2

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/LocalFileHeader;->getCompressedSize()J

    move-result-wide v8

    .line 699
    const-wide/16 v10, -0x1

    const/4 v12, -0x1

    .line 695
    invoke-direct/range {v4 .. v12}, Lnet/lingala/zip4j/core/HeaderReader;->readZip64ExtendedInfo(Ljava/util/ArrayList;JJJI)Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    move-result-object v4

    move-object v3, v4

    .line 701
    .local v3, "zip64ExtendedInfo":Lnet/lingala/zip4j/model/Zip64ExtendedInfo;
    move-object v4, v3

    if-eqz v4, :cond_4

    .line 702
    move-object v4, v2

    move-object v5, v3

    invoke-virtual {v4, v5}, Lnet/lingala/zip4j/model/LocalFileHeader;->setZip64ExtendedInfo(Lnet/lingala/zip4j/model/Zip64ExtendedInfo;)V

    .line 704
    move-object v4, v3

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getUnCompressedSize()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    .line 705
    move-object v4, v2

    move-object v5, v3

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getUnCompressedSize()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lnet/lingala/zip4j/model/LocalFileHeader;->setUncompressedSize(J)V

    .line 707
    :cond_3
    move-object v4, v3

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getCompressedSize()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_4

    .line 708
    move-object v4, v2

    move-object v5, v3

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getCompressedSize()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lnet/lingala/zip4j/model/LocalFileHeader;->setCompressedSize(J)V

    .line 710
    :cond_4
    goto :goto_0
.end method

.method private readCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 190
    move-object/from16 v2, p0

    .local v2, "this":Lnet/lingala/zip4j/core/HeaderReader;
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    move-object/from16 v22, v0

    if-nez v22, :cond_0

    .line 191
    new-instance v22, Lnet/lingala/zip4j/exception/ZipException;

    move-object/from16 v27, v22

    move-object/from16 v22, v27

    move-object/from16 v23, v27

    const-string/jumbo v24, "random access file was null"

    const/16 v25, 0x3

    invoke-direct/range {v23 .. v25}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;I)V

    throw v22

    .line 194
    :cond_0
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lnet/lingala/zip4j/core/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v22

    if-nez v22, :cond_1

    .line 195
    new-instance v22, Lnet/lingala/zip4j/exception/ZipException;

    move-object/from16 v27, v22

    move-object/from16 v22, v27

    move-object/from16 v23, v27

    const-string/jumbo v24, "EndCentralRecord was null, maybe a corrupt zip file"

    invoke-direct/range {v23 .. v24}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 199
    :cond_1
    :try_start_0
    new-instance v22, Lnet/lingala/zip4j/model/CentralDirectory;

    move-object/from16 v27, v22

    move-object/from16 v22, v27

    move-object/from16 v23, v27

    invoke-direct/range {v23 .. v23}, Lnet/lingala/zip4j/model/CentralDirectory;-><init>()V

    move-object/from16 v3, v22

    .line 200
    .local v3, "centralDirectory":Lnet/lingala/zip4j/model/CentralDirectory;
    new-instance v22, Ljava/util/ArrayList;

    move-object/from16 v27, v22

    move-object/from16 v22, v27

    move-object/from16 v23, v27

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v4, v22

    .line 202
    .local v4, "fileHeaderList":Ljava/util/ArrayList;
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lnet/lingala/zip4j/core/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v22

    move-object/from16 v5, v22

    .line 203
    .local v5, "endCentralDirRecord":Lnet/lingala/zip4j/model/EndCentralDirRecord;
    move-object/from16 v22, v5

    invoke-virtual/range {v22 .. v22}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->getOffsetOfStartOfCentralDir()J

    move-result-wide v22

    move-wide/from16 v6, v22

    .line 204
    .local v6, "offSetStartCentralDir":J
    move-object/from16 v22, v5

    invoke-virtual/range {v22 .. v22}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->getTotNoOfEntriesInCentralDir()I

    move-result v22

    move/from16 v8, v22

    .line 206
    .local v8, "centralDirEntryCount":I
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lnet/lingala/zip4j/core/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lnet/lingala/zip4j/model/ZipModel;->isZip64Format()Z

    move-result v22

    if-eqz v22, :cond_2

    .line 207
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lnet/lingala/zip4j/core/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndCentralDirRecord()Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->getOffsetStartCenDirWRTStartDiskNo()J

    move-result-wide v22

    move-wide/from16 v6, v22

    .line 208
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lnet/lingala/zip4j/core/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndCentralDirRecord()Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->getTotNoOfEntriesInCentralDir()J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v22, v0

    move/from16 v8, v22

    .line 211
    :cond_2
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    move-object/from16 v22, v0

    move-wide/from16 v23, v6

    invoke-virtual/range {v22 .. v24}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 213
    const/16 v22, 0x4

    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v22, v0

    move-object/from16 v9, v22

    .line 214
    .local v9, "intBuff":[B
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v22, v0

    move-object/from16 v10, v22

    .line 215
    .local v10, "shortBuff":[B
    const/16 v22, 0x8

    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v22, v0

    move-object/from16 v11, v22

    .line 217
    .local v11, "longBuff":[B
    const/16 v22, 0x0

    move/from16 v12, v22

    .local v12, "i":I
    :goto_0
    move/from16 v22, v12

    move/from16 v23, v8

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_3

    .line 371
    move-object/from16 v22, v3

    move-object/from16 v23, v4

    invoke-virtual/range {v22 .. v23}, Lnet/lingala/zip4j/model/CentralDirectory;->setFileHeaders(Ljava/util/ArrayList;)V

    .line 374
    new-instance v22, Lnet/lingala/zip4j/model/DigitalSignature;

    move-object/from16 v27, v22

    move-object/from16 v22, v27

    move-object/from16 v23, v27

    invoke-direct/range {v23 .. v23}, Lnet/lingala/zip4j/model/DigitalSignature;-><init>()V

    move-object/from16 v12, v22

    .line 375
    .local v12, "digitalSignature":Lnet/lingala/zip4j/model/DigitalSignature;
    move-object/from16 v22, v2

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    move-object/from16 v23, v0

    move-object/from16 v24, v9

    invoke-direct/range {v22 .. v24}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    move-result-object v22

    .line 376
    move-object/from16 v22, v9

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lnet/lingala/zip4j/util/Raw;->readIntLittleEndian([BI)I

    move-result v22

    move/from16 v13, v22

    .line 377
    .local v13, "signature":I
    move/from16 v22, v13

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    const-wide/32 v24, 0x5054b50

    cmp-long v22, v22, v24

    if-eqz v22, :cond_e

    .line 378
    move-object/from16 v22, v3

    move-object/from16 v2, v22

    .line 394
    .end local v2    # "this":Lnet/lingala/zip4j/core/HeaderReader;
    :goto_1
    return-object v2

    .line 218
    .end local v13    # "signature":I
    .restart local v2    # "this":Lnet/lingala/zip4j/core/HeaderReader;
    .local v12, "i":I
    :cond_3
    new-instance v22, Lnet/lingala/zip4j/model/FileHeader;

    move-object/from16 v27, v22

    move-object/from16 v22, v27

    move-object/from16 v23, v27

    invoke-direct/range {v23 .. v23}, Lnet/lingala/zip4j/model/FileHeader;-><init>()V

    move-object/from16 v13, v22

    .line 221
    .local v13, "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    move-object/from16 v22, v2

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    move-object/from16 v23, v0

    move-object/from16 v24, v9

    invoke-direct/range {v22 .. v24}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    move-result-object v22

    .line 222
    move-object/from16 v22, v9

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lnet/lingala/zip4j/util/Raw;->readIntLittleEndian([BI)I

    move-result v22

    move/from16 v14, v22

    .line 223
    .local v14, "signature":I
    move/from16 v22, v14

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    const-wide/32 v24, 0x2014b50    # 1.6619997E-316

    cmp-long v22, v22, v24

    if-eqz v22, :cond_4

    .line 224
    new-instance v22, Lnet/lingala/zip4j/exception/ZipException;

    move-object/from16 v27, v22

    move-object/from16 v22, v27

    move-object/from16 v23, v27

    new-instance v24, Ljava/lang/StringBuffer;

    move-object/from16 v27, v24

    move-object/from16 v24, v27

    move-object/from16 v25, v27

    const-string/jumbo v26, "Expected central directory entry not found (#"

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move/from16 v25, v12

    const/16 v26, 0x1

    add-int/lit8 v25, v25, 0x1

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string/jumbo v25, ")"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v22
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    .end local v3    # "centralDirectory":Lnet/lingala/zip4j/model/CentralDirectory;
    .end local v4    # "fileHeaderList":Ljava/util/ArrayList;
    .end local v5    # "endCentralDirRecord":Lnet/lingala/zip4j/model/EndCentralDirRecord;
    .end local v6    # "offSetStartCentralDir":J
    .end local v8    # "centralDirEntryCount":I
    .end local v9    # "intBuff":[B
    .end local v10    # "shortBuff":[B
    .end local v11    # "longBuff":[B
    .end local v12    # "i":I
    .end local v13    # "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    .end local v14    # "signature":I
    :catch_0
    move-exception v22

    move-object/from16 v3, v22

    .line 396
    .local v3, "e":Ljava/io/IOException;
    new-instance v22, Lnet/lingala/zip4j/exception/ZipException;

    move-object/from16 v27, v22

    move-object/from16 v22, v27

    move-object/from16 v23, v27

    move-object/from16 v24, v3

    invoke-direct/range {v23 .. v24}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v22

    .line 226
    .local v3, "centralDirectory":Lnet/lingala/zip4j/model/CentralDirectory;
    .restart local v4    # "fileHeaderList":Ljava/util/ArrayList;
    .restart local v5    # "endCentralDirRecord":Lnet/lingala/zip4j/model/EndCentralDirRecord;
    .restart local v6    # "offSetStartCentralDir":J
    .restart local v8    # "centralDirEntryCount":I
    .restart local v9    # "intBuff":[B
    .restart local v10    # "shortBuff":[B
    .restart local v11    # "longBuff":[B
    .restart local v12    # "i":I
    .restart local v13    # "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    .restart local v14    # "signature":I
    :cond_4
    move-object/from16 v22, v13

    move/from16 v23, v14

    :try_start_1
    invoke-virtual/range {v22 .. v23}, Lnet/lingala/zip4j/model/FileHeader;->setSignature(I)V

    .line 229
    move-object/from16 v22, v2

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    move-object/from16 v23, v0

    move-object/from16 v24, v10

    invoke-direct/range {v22 .. v24}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    move-result-object v22

    .line 230
    move-object/from16 v22, v13

    move-object/from16 v23, v10

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Lnet/lingala/zip4j/util/Raw;->readShortLittleEndian([BI)I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Lnet/lingala/zip4j/model/FileHeader;->setVersionMadeBy(I)V

    .line 233
    move-object/from16 v22, v2

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    move-object/from16 v23, v0

    move-object/from16 v24, v10

    invoke-direct/range {v22 .. v24}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    move-result-object v22

    .line 234
    move-object/from16 v22, v13

    move-object/from16 v23, v10

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Lnet/lingala/zip4j/util/Raw;->readShortLittleEndian([BI)I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Lnet/lingala/zip4j/model/FileHeader;->setVersionNeededToExtract(I)V

    .line 237
    move-object/from16 v22, v2

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    move-object/from16 v23, v0

    move-object/from16 v24, v10

    invoke-direct/range {v22 .. v24}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    move-result-object v22

    .line 238
    move-object/from16 v22, v13

    move-object/from16 v23, v10

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Lnet/lingala/zip4j/util/Raw;->readShortLittleEndian([BI)I

    move-result v23

    const/16 v24, 0x800

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0x800

    move/from16 v23, v0

    if-eqz v23, :cond_6

    const/16 v23, 0x1

    :goto_2
    invoke-virtual/range {v22 .. v23}, Lnet/lingala/zip4j/model/FileHeader;->setFileNameUTF8Encoded(Z)V

    .line 239
    move-object/from16 v22, v10

    const/16 v23, 0x0

    aget-byte v22, v22, v23

    move/from16 v15, v22

    .line 240
    .local v15, "firstByte":I
    move/from16 v22, v15

    const/16 v23, 0x1

    and-int/lit8 v22, v22, 0x1

    move/from16 v16, v22

    .line 241
    .local v16, "result":I
    move/from16 v22, v16

    if-eqz v22, :cond_5

    .line 242
    move-object/from16 v22, v13

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lnet/lingala/zip4j/model/FileHeader;->setEncrypted(Z)V

    .line 244
    :cond_5
    move-object/from16 v22, v13

    move-object/from16 v23, v10

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [B

    invoke-virtual/range {v22 .. v23}, Lnet/lingala/zip4j/model/FileHeader;->setGeneralPurposeFlag([B)V

    .line 247
    move-object/from16 v22, v13

    move/from16 v23, v15

    const/16 v24, 0x3

    shr-int/lit8 v23, v23, 0x3

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_7

    const/16 v23, 0x1

    :goto_3
    invoke-virtual/range {v22 .. v23}, Lnet/lingala/zip4j/model/FileHeader;->setDataDescriptorExists(Z)V

    .line 250
    move-object/from16 v22, v2

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    move-object/from16 v23, v0

    move-object/from16 v24, v10

    invoke-direct/range {v22 .. v24}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    move-result-object v22

    .line 251
    move-object/from16 v22, v13

    move-object/from16 v23, v10

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Lnet/lingala/zip4j/util/Raw;->readShortLittleEndian([BI)I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Lnet/lingala/zip4j/model/FileHeader;->setCompressionMethod(I)V

    .line 254
    move-object/from16 v22, v2

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    move-object/from16 v23, v0

    move-object/from16 v24, v9

    invoke-direct/range {v22 .. v24}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    move-result-object v22

    .line 255
    move-object/from16 v22, v13

    move-object/from16 v23, v9

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Lnet/lingala/zip4j/util/Raw;->readIntLittleEndian([BI)I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Lnet/lingala/zip4j/model/FileHeader;->setLastModFileTime(I)V

    .line 258
    move-object/from16 v22, v2

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    move-object/from16 v23, v0

    move-object/from16 v24, v9

    invoke-direct/range {v22 .. v24}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    move-result-object v22

    .line 259
    move-object/from16 v22, v13

    move-object/from16 v23, v9

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Lnet/lingala/zip4j/util/Raw;->readIntLittleEndian([BI)I

    move-result v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    invoke-virtual/range {v22 .. v24}, Lnet/lingala/zip4j/model/FileHeader;->setCrc32(J)V

    .line 260
    move-object/from16 v22, v13

    move-object/from16 v23, v9

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [B

    invoke-virtual/range {v22 .. v23}, Lnet/lingala/zip4j/model/FileHeader;->setCrcBuff([B)V

    .line 263
    move-object/from16 v22, v2

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    move-object/from16 v23, v0

    move-object/from16 v24, v9

    invoke-direct/range {v22 .. v24}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    move-result-object v22

    .line 264
    move-object/from16 v22, v2

    move-object/from16 v23, v9

    invoke-direct/range {v22 .. v23}, Lnet/lingala/zip4j/core/HeaderReader;->getLongByteFromIntByte([B)[B

    move-result-object v22

    move-object/from16 v11, v22

    .line 265
    move-object/from16 v22, v13

    move-object/from16 v23, v11

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Lnet/lingala/zip4j/util/Raw;->readLongLittleEndian([BI)J

    move-result-wide v23

    invoke-virtual/range {v22 .. v24}, Lnet/lingala/zip4j/model/FileHeader;->setCompressedSize(J)V

    .line 268
    move-object/from16 v22, v2

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    move-object/from16 v23, v0

    move-object/from16 v24, v9

    invoke-direct/range {v22 .. v24}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    move-result-object v22

    .line 269
    move-object/from16 v22, v2

    move-object/from16 v23, v9

    invoke-direct/range {v22 .. v23}, Lnet/lingala/zip4j/core/HeaderReader;->getLongByteFromIntByte([B)[B

    move-result-object v22

    move-object/from16 v11, v22

    .line 270
    move-object/from16 v22, v13

    move-object/from16 v23, v11

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Lnet/lingala/zip4j/util/Raw;->readLongLittleEndian([BI)J

    move-result-wide v23

    invoke-virtual/range {v22 .. v24}, Lnet/lingala/zip4j/model/FileHeader;->setUncompressedSize(J)V

    .line 273
    move-object/from16 v22, v2

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    move-object/from16 v23, v0

    move-object/from16 v24, v10

    invoke-direct/range {v22 .. v24}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    move-result-object v22

    .line 274
    move-object/from16 v22, v10

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lnet/lingala/zip4j/util/Raw;->readShortLittleEndian([BI)I

    move-result v22

    move/from16 v17, v22

    .line 275
    .local v17, "fileNameLength":I
    move-object/from16 v22, v13

    move/from16 v23, v17

    invoke-virtual/range {v22 .. v23}, Lnet/lingala/zip4j/model/FileHeader;->setFileNameLength(I)V

    .line 278
    move-object/from16 v22, v2

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    move-object/from16 v23, v0

    move-object/from16 v24, v10

    invoke-direct/range {v22 .. v24}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    move-result-object v22

    .line 279
    move-object/from16 v22, v10

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lnet/lingala/zip4j/util/Raw;->readShortLittleEndian([BI)I

    move-result v22

    move/from16 v18, v22

    .line 280
    .local v18, "extraFieldLength":I
    move-object/from16 v22, v13

    move/from16 v23, v18

    invoke-virtual/range {v22 .. v23}, Lnet/lingala/zip4j/model/FileHeader;->setExtraFieldLength(I)V

    .line 283
    move-object/from16 v22, v2

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    move-object/from16 v23, v0

    move-object/from16 v24, v10

    invoke-direct/range {v22 .. v24}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    move-result-object v22

    .line 284
    move-object/from16 v22, v10

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lnet/lingala/zip4j/util/Raw;->readShortLittleEndian([BI)I

    move-result v22

    move/from16 v19, v22

    .line 285
    .local v19, "fileCommentLength":I
    move-object/from16 v22, v13

    new-instance v23, Ljava/lang/String;

    move-object/from16 v27, v23

    move-object/from16 v23, v27

    move-object/from16 v24, v27

    move-object/from16 v25, v10

    invoke-direct/range {v24 .. v25}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v22 .. v23}, Lnet/lingala/zip4j/model/FileHeader;->setFileComment(Ljava/lang/String;)V

    .line 288
    move-object/from16 v22, v2

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    move-object/from16 v23, v0

    move-object/from16 v24, v10

    invoke-direct/range {v22 .. v24}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    move-result-object v22

    .line 289
    move-object/from16 v22, v13

    move-object/from16 v23, v10

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Lnet/lingala/zip4j/util/Raw;->readShortLittleEndian([BI)I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Lnet/lingala/zip4j/model/FileHeader;->setDiskNumberStart(I)V

    .line 292
    move-object/from16 v22, v2

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    move-object/from16 v23, v0

    move-object/from16 v24, v10

    invoke-direct/range {v22 .. v24}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    move-result-object v22

    .line 293
    move-object/from16 v22, v13

    move-object/from16 v23, v10

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [B

    invoke-virtual/range {v22 .. v23}, Lnet/lingala/zip4j/model/FileHeader;->setInternalFileAttr([B)V

    .line 296
    move-object/from16 v22, v2

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    move-object/from16 v23, v0

    move-object/from16 v24, v9

    invoke-direct/range {v22 .. v24}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    move-result-object v22

    .line 297
    move-object/from16 v22, v13

    move-object/from16 v23, v9

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [B

    invoke-virtual/range {v22 .. v23}, Lnet/lingala/zip4j/model/FileHeader;->setExternalFileAttr([B)V

    .line 300
    move-object/from16 v22, v2

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    move-object/from16 v23, v0

    move-object/from16 v24, v9

    invoke-direct/range {v22 .. v24}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    move-result-object v22

    .line 303
    move-object/from16 v22, v2

    move-object/from16 v23, v9

    invoke-direct/range {v22 .. v23}, Lnet/lingala/zip4j/core/HeaderReader;->getLongByteFromIntByte([B)[B

    move-result-object v22

    move-object/from16 v11, v22

    .line 304
    move-object/from16 v22, v13

    move-object/from16 v23, v11

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Lnet/lingala/zip4j/util/Raw;->readLongLittleEndian([BI)J

    move-result-wide v23

    const-wide v25, 0xffffffffL

    and-long v23, v23, v25

    invoke-virtual/range {v22 .. v24}, Lnet/lingala/zip4j/model/FileHeader;->setOffsetLocalHeader(J)V

    .line 306
    move/from16 v22, v17

    if-lez v22, :cond_d

    .line 307
    move/from16 v22, v17

    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v22, v0

    move-object/from16 v20, v22

    .line 308
    .local v20, "fileNameBuf":[B
    move-object/from16 v22, v2

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    move-object/from16 v23, v0

    move-object/from16 v24, v20

    invoke-direct/range {v22 .. v24}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    move-result-object v22

    .line 314
    const/16 v22, 0x0

    move-object/from16 v21, v22

    .line 316
    .local v21, "fileName":Ljava/lang/String;
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lnet/lingala/zip4j/core/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lnet/lingala/zip4j/model/ZipModel;->getFileNameCharset()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_8

    .line 317
    new-instance v22, Ljava/lang/String;

    move-object/from16 v27, v22

    move-object/from16 v22, v27

    move-object/from16 v23, v27

    move-object/from16 v24, v20

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Lnet/lingala/zip4j/core/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lnet/lingala/zip4j/model/ZipModel;->getFileNameCharset()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v23 .. v25}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object/from16 v21, v22

    .line 322
    :goto_4
    move-object/from16 v22, v21

    if-nez v22, :cond_9

    .line 323
    new-instance v22, Lnet/lingala/zip4j/exception/ZipException;

    move-object/from16 v27, v22

    move-object/from16 v22, v27

    move-object/from16 v23, v27

    const-string/jumbo v24, "fileName is null when reading central directory"

    invoke-direct/range {v23 .. v24}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 238
    .end local v15    # "firstByte":I
    .end local v16    # "result":I
    .end local v17    # "fileNameLength":I
    .end local v18    # "extraFieldLength":I
    .end local v19    # "fileCommentLength":I
    .end local v20    # "fileNameBuf":[B
    .end local v21    # "fileName":Ljava/lang/String;
    :cond_6
    const/16 v23, 0x0

    goto/16 :goto_2

    .line 247
    .restart local v15    # "firstByte":I
    .restart local v16    # "result":I
    :cond_7
    const/16 v23, 0x0

    goto/16 :goto_3

    .line 319
    .restart local v17    # "fileNameLength":I
    .restart local v18    # "extraFieldLength":I
    .restart local v19    # "fileCommentLength":I
    .restart local v20    # "fileNameBuf":[B
    .restart local v21    # "fileName":Ljava/lang/String;
    :cond_8
    move-object/from16 v22, v20

    move-object/from16 v23, v13

    invoke-virtual/range {v23 .. v23}, Lnet/lingala/zip4j/model/FileHeader;->isFileNameUTF8Encoded()Z

    move-result v23

    invoke-static/range {v22 .. v23}, Lnet/lingala/zip4j/util/Zip4jUtil;->decodeFileName([BZ)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v21, v22

    goto :goto_4

    .line 326
    :cond_9
    move-object/from16 v22, v21

    new-instance v23, Ljava/lang/StringBuffer;

    move-object/from16 v27, v23

    move-object/from16 v23, v27

    move-object/from16 v24, v27

    const-string/jumbo v25, ":"

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string/jumbo v24, "file.separator"

    invoke-static/range {v24 .. v24}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v22

    if-ltz v22, :cond_a

    .line 327
    move-object/from16 v22, v21

    move-object/from16 v23, v21

    new-instance v24, Ljava/lang/StringBuffer;

    move-object/from16 v27, v24

    move-object/from16 v24, v27

    move-object/from16 v25, v27

    const-string/jumbo v26, ":"

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string/jumbo v25, "file.separator"

    invoke-static/range {v25 .. v25}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v23

    const/16 v24, 0x2

    add-int/lit8 v23, v23, 0x2

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v21, v22

    .line 330
    :cond_a
    move-object/from16 v22, v13

    move-object/from16 v23, v21

    invoke-virtual/range {v22 .. v23}, Lnet/lingala/zip4j/model/FileHeader;->setFileName(Ljava/lang/String;)V

    .line 331
    move-object/from16 v22, v13

    move-object/from16 v23, v21

    const-string/jumbo v24, "/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_c

    move-object/from16 v23, v21

    const-string/jumbo v24, "\\"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_c

    const/16 v23, 0x0

    :goto_5
    invoke-virtual/range {v22 .. v23}, Lnet/lingala/zip4j/model/FileHeader;->setDirectory(Z)V

    .line 338
    .end local v20    # "fileNameBuf":[B
    .end local v21    # "fileName":Ljava/lang/String;
    :goto_6
    move-object/from16 v22, v2

    move-object/from16 v23, v13

    invoke-direct/range {v22 .. v23}, Lnet/lingala/zip4j/core/HeaderReader;->readAndSaveExtraDataRecord(Lnet/lingala/zip4j/model/FileHeader;)V

    .line 341
    move-object/from16 v22, v2

    move-object/from16 v23, v13

    invoke-direct/range {v22 .. v23}, Lnet/lingala/zip4j/core/HeaderReader;->readAndSaveZip64ExtendedInfo(Lnet/lingala/zip4j/model/FileHeader;)V

    .line 344
    move-object/from16 v22, v2

    move-object/from16 v23, v13

    invoke-direct/range {v22 .. v23}, Lnet/lingala/zip4j/core/HeaderReader;->readAndSaveAESExtraDataRecord(Lnet/lingala/zip4j/model/FileHeader;)V

    .line 363
    move/from16 v22, v19

    if-lez v22, :cond_b

    .line 364
    move/from16 v22, v19

    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v22, v0

    move-object/from16 v20, v22

    .line 365
    .local v20, "fileCommentBuf":[B
    move-object/from16 v22, v2

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    move-object/from16 v23, v0

    move-object/from16 v24, v20

    invoke-direct/range {v22 .. v24}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    move-result-object v22

    .line 366
    move-object/from16 v22, v13

    new-instance v23, Ljava/lang/String;

    move-object/from16 v27, v23

    move-object/from16 v23, v27

    move-object/from16 v24, v27

    move-object/from16 v25, v20

    invoke-direct/range {v24 .. v25}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v22 .. v23}, Lnet/lingala/zip4j/model/FileHeader;->setFileComment(Ljava/lang/String;)V

    .line 369
    .end local v20    # "fileCommentBuf":[B
    :cond_b
    move-object/from16 v22, v4

    move-object/from16 v23, v13

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v22

    .line 217
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 331
    .local v20, "fileNameBuf":[B
    .restart local v21    # "fileName":Ljava/lang/String;
    :cond_c
    const/16 v23, 0x1

    goto :goto_5

    .line 334
    .end local v20    # "fileNameBuf":[B
    .end local v21    # "fileName":Ljava/lang/String;
    :cond_d
    move-object/from16 v22, v13

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lnet/lingala/zip4j/model/FileHeader;->setFileName(Ljava/lang/String;)V

    goto :goto_6

    .line 381
    .end local v14    # "signature":I
    .end local v15    # "firstByte":I
    .end local v16    # "result":I
    .end local v17    # "fileNameLength":I
    .end local v18    # "extraFieldLength":I
    .end local v19    # "fileCommentLength":I
    .local v12, "digitalSignature":Lnet/lingala/zip4j/model/DigitalSignature;
    .local v13, "signature":I
    :cond_e
    move-object/from16 v22, v12

    move/from16 v23, v13

    invoke-virtual/range {v22 .. v23}, Lnet/lingala/zip4j/model/DigitalSignature;->setHeaderSignature(I)V

    .line 384
    move-object/from16 v22, v2

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    move-object/from16 v23, v0

    move-object/from16 v24, v10

    invoke-direct/range {v22 .. v24}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    move-result-object v22

    .line 385
    move-object/from16 v22, v10

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lnet/lingala/zip4j/util/Raw;->readShortLittleEndian([BI)I

    move-result v22

    move/from16 v14, v22

    .line 386
    .local v14, "sizeOfData":I
    move-object/from16 v22, v12

    move/from16 v23, v14

    invoke-virtual/range {v22 .. v23}, Lnet/lingala/zip4j/model/DigitalSignature;->setSizeOfData(I)V

    .line 388
    move/from16 v22, v14

    if-lez v22, :cond_f

    .line 389
    move/from16 v22, v14

    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v22, v0

    move-object/from16 v15, v22

    .line 390
    .local v15, "sigDataBuf":[B
    move-object/from16 v22, v2

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    move-object/from16 v23, v0

    move-object/from16 v24, v15

    invoke-direct/range {v22 .. v24}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    move-result-object v22

    .line 391
    move-object/from16 v22, v12

    new-instance v23, Ljava/lang/String;

    move-object/from16 v27, v23

    move-object/from16 v23, v27

    move-object/from16 v24, v27

    move-object/from16 v25, v15

    invoke-direct/range {v24 .. v25}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v22 .. v23}, Lnet/lingala/zip4j/model/DigitalSignature;->setSignatureData(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 394
    .end local v15    # "sigDataBuf":[B
    :cond_f
    move-object/from16 v22, v3

    move-object/from16 v2, v22

    goto/16 :goto_1
.end method

.method private readEndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 106
    move-object/from16 v0, p0

    .local v0, "this":Lnet/lingala/zip4j/core/HeaderReader;
    move-object v11, v0

    iget-object v11, v11, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    if-nez v11, :cond_0

    .line 107
    new-instance v11, Lnet/lingala/zip4j/exception/ZipException;

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    const-string/jumbo v13, "random access file was null"

    const/4 v14, 0x3

    invoke-direct {v12, v13, v14}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;I)V

    throw v11

    .line 111
    :cond_0
    const/4 v11, 0x4

    :try_start_0
    new-array v11, v11, [B

    move-object v1, v11

    .line 112
    .local v1, "ebs":[B
    move-object v11, v0

    iget-object v11, v11, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v11

    const-wide/16 v13, 0x16

    sub-long/2addr v11, v13

    move-wide v2, v11

    .line 114
    .local v2, "pos":J
    new-instance v11, Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    invoke-direct {v12}, Lnet/lingala/zip4j/model/EndCentralDirRecord;-><init>()V

    move-object v4, v11

    .line 115
    .local v4, "endCentralDirRecord":Lnet/lingala/zip4j/model/EndCentralDirRecord;
    const/4 v11, 0x0

    move v5, v11

    .line 117
    .local v5, "counter":I
    :cond_1
    move-object v11, v0

    iget-object v11, v11, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    move-wide v12, v2

    move-wide/from16 v18, v12

    move-wide/from16 v12, v18

    move-wide/from16 v14, v18

    const-wide/16 v16, 0x1

    sub-long v14, v14, v16

    move-wide v2, v14

    invoke-virtual {v11, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 118
    add-int/lit8 v5, v5, 0x1

    .line 119
    move-object v11, v0

    iget-object v11, v11, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    move-object v12, v1

    invoke-static {v11, v12}, Lnet/lingala/zip4j/util/Raw;->readLeInt(Ljava/io/DataInput;[B)I

    move-result v11

    int-to-long v11, v11

    const-wide/32 v13, 0x6054b50

    cmp-long v11, v11, v13

    if-eqz v11, :cond_2

    move v11, v5

    const/16 v12, 0xbb8

    if-le v11, v12, :cond_1

    .line 121
    :cond_2
    move-object v11, v1

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lnet/lingala/zip4j/util/Raw;->readIntLittleEndian([BI)I

    move-result v11

    int-to-long v11, v11

    const-wide/32 v13, 0x6054b50

    cmp-long v11, v11, v13

    if-eqz v11, :cond_3

    .line 122
    new-instance v11, Lnet/lingala/zip4j/exception/ZipException;

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    const-string/jumbo v13, "zip headers not found. probably not a zip file"

    invoke-direct {v12, v13}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    .end local v1    # "ebs":[B
    .end local v2    # "pos":J
    .end local v4    # "endCentralDirRecord":Lnet/lingala/zip4j/model/EndCentralDirRecord;
    .end local v5    # "counter":I
    :catch_0
    move-exception v11

    move-object v1, v11

    .line 179
    .local v1, "e":Ljava/io/IOException;
    new-instance v11, Lnet/lingala/zip4j/exception/ZipException;

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    const-string/jumbo v13, "Probably not a zip file or a corrupted zip file"

    move-object v14, v1

    const/4 v15, 0x4

    invoke-direct {v12, v13, v14, v15}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v11

    .line 124
    .local v1, "ebs":[B
    .restart local v2    # "pos":J
    .restart local v4    # "endCentralDirRecord":Lnet/lingala/zip4j/model/EndCentralDirRecord;
    .restart local v5    # "counter":I
    :cond_3
    const/4 v11, 0x4

    :try_start_1
    new-array v11, v11, [B

    move-object v6, v11

    .line 125
    .local v6, "intBuff":[B
    const/4 v11, 0x2

    new-array v11, v11, [B

    move-object v7, v11

    .line 128
    .local v7, "shortBuff":[B
    move-object v11, v4

    const-wide/32 v12, 0x6054b50

    invoke-virtual {v11, v12, v13}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->setSignature(J)V

    .line 131
    move-object v11, v0

    move-object v12, v0

    iget-object v12, v12, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    move-object v13, v7

    invoke-direct {v11, v12, v13}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    move-result-object v11

    .line 132
    move-object v11, v4

    move-object v12, v7

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lnet/lingala/zip4j/util/Raw;->readShortLittleEndian([BI)I

    move-result v12

    invoke-virtual {v11, v12}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->setNoOfThisDisk(I)V

    .line 135
    move-object v11, v0

    move-object v12, v0

    iget-object v12, v12, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    move-object v13, v7

    invoke-direct {v11, v12, v13}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    move-result-object v11

    .line 136
    move-object v11, v4

    move-object v12, v7

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lnet/lingala/zip4j/util/Raw;->readShortLittleEndian([BI)I

    move-result v12

    invoke-virtual {v11, v12}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->setNoOfThisDiskStartOfCentralDir(I)V

    .line 139
    move-object v11, v0

    move-object v12, v0

    iget-object v12, v12, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    move-object v13, v7

    invoke-direct {v11, v12, v13}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    move-result-object v11

    .line 140
    move-object v11, v4

    move-object v12, v7

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lnet/lingala/zip4j/util/Raw;->readShortLittleEndian([BI)I

    move-result v12

    invoke-virtual {v11, v12}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->setTotNoOfEntriesInCentralDirOnThisDisk(I)V

    .line 143
    move-object v11, v0

    move-object v12, v0

    iget-object v12, v12, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    move-object v13, v7

    invoke-direct {v11, v12, v13}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    move-result-object v11

    .line 144
    move-object v11, v4

    move-object v12, v7

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lnet/lingala/zip4j/util/Raw;->readShortLittleEndian([BI)I

    move-result v12

    invoke-virtual {v11, v12}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->setTotNoOfEntriesInCentralDir(I)V

    .line 147
    move-object v11, v0

    move-object v12, v0

    iget-object v12, v12, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    move-object v13, v6

    invoke-direct {v11, v12, v13}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    move-result-object v11

    .line 148
    move-object v11, v4

    move-object v12, v6

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lnet/lingala/zip4j/util/Raw;->readIntLittleEndian([BI)I

    move-result v12

    invoke-virtual {v11, v12}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->setSizeOfCentralDir(I)V

    .line 151
    move-object v11, v0

    move-object v12, v0

    iget-object v12, v12, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    move-object v13, v6

    invoke-direct {v11, v12, v13}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    move-result-object v11

    .line 152
    move-object v11, v0

    move-object v12, v6

    invoke-direct {v11, v12}, Lnet/lingala/zip4j/core/HeaderReader;->getLongByteFromIntByte([B)[B

    move-result-object v11

    move-object v8, v11

    .line 153
    .local v8, "longBuff":[B
    move-object v11, v4

    move-object v12, v8

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lnet/lingala/zip4j/util/Raw;->readLongLittleEndian([BI)J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->setOffsetOfStartOfCentralDir(J)V

    .line 156
    move-object v11, v0

    move-object v12, v0

    iget-object v12, v12, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    move-object v13, v7

    invoke-direct {v11, v12, v13}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    move-result-object v11

    .line 157
    move-object v11, v7

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lnet/lingala/zip4j/util/Raw;->readShortLittleEndian([BI)I

    move-result v11

    move v9, v11

    .line 158
    .local v9, "commentLength":I
    move-object v11, v4

    move v12, v9

    invoke-virtual {v11, v12}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->setCommentLength(I)V

    .line 161
    move v11, v9

    if-lez v11, :cond_4

    .line 162
    move v11, v9

    new-array v11, v11, [B

    move-object v10, v11

    .line 163
    .local v10, "commentBuf":[B
    move-object v11, v0

    move-object v12, v0

    iget-object v12, v12, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    move-object v13, v10

    invoke-direct {v11, v12, v13}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    move-result-object v11

    .line 164
    move-object v11, v4

    new-instance v12, Ljava/lang/String;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    move-object v14, v10

    invoke-direct {v13, v14}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v11, v12}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->setComment(Ljava/lang/String;)V

    .line 165
    move-object v11, v4

    move-object v12, v10

    invoke-virtual {v11, v12}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->setCommentBytes([B)V

    .line 170
    .end local v10    # "commentBuf":[B
    :goto_0
    move-object v11, v4

    invoke-virtual {v11}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->getNoOfThisDisk()I

    move-result v11

    move v10, v11

    .line 171
    .local v10, "diskNumber":I
    move v11, v10

    if-lez v11, :cond_5

    .line 172
    move-object v11, v0

    iget-object v11, v11, Lnet/lingala/zip4j/core/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lnet/lingala/zip4j/model/ZipModel;->setSplitArchive(Z)V

    .line 177
    :goto_1
    move-object v11, v4

    move-object v0, v11

    .end local v0    # "this":Lnet/lingala/zip4j/core/HeaderReader;
    return-object v0

    .line 167
    .end local v10    # "diskNumber":I
    .restart local v0    # "this":Lnet/lingala/zip4j/core/HeaderReader;
    :cond_4
    move-object v11, v4

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->setComment(Ljava/lang/String;)V

    goto :goto_0

    .line 174
    .restart local v10    # "diskNumber":I
    :cond_5
    move-object v11, v0

    iget-object v11, v11, Lnet/lingala/zip4j/core/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lnet/lingala/zip4j/model/ZipModel;->setSplitArchive(Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private readExtraDataRecords(I)Ljava/util/ArrayList;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 456
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/core/HeaderReader;
    move/from16 v1, p1

    .local v1, "extraFieldLength":I
    move v9, v1

    if-gtz v9, :cond_0

    .line 457
    const/4 v9, 0x0

    move-object v0, v9

    .line 496
    .end local v0    # "this":Lnet/lingala/zip4j/core/HeaderReader;
    :goto_0
    return-object v0

    .line 461
    .restart local v0    # "this":Lnet/lingala/zip4j/core/HeaderReader;
    :cond_0
    move v9, v1

    :try_start_0
    new-array v9, v9, [B

    move-object v2, v9

    .line 462
    .local v2, "extraFieldBuf":[B
    move-object v9, v0

    iget-object v9, v9, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    move-object v10, v2

    invoke-virtual {v9, v10}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v9

    .line 464
    const/4 v9, 0x0

    move v3, v9

    .line 465
    .local v3, "counter":I
    new-instance v9, Ljava/util/ArrayList;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v9

    .line 466
    .local v4, "extraDataList":Ljava/util/ArrayList;
    :goto_1
    move v9, v3

    move v10, v1

    if-lt v9, v10, :cond_1

    .line 493
    :goto_2
    move-object v9, v4

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_4

    .line 494
    move-object v9, v4

    move-object v0, v9

    goto :goto_0

    .line 467
    :cond_1
    new-instance v9, Lnet/lingala/zip4j/model/ExtraDataRecord;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Lnet/lingala/zip4j/model/ExtraDataRecord;-><init>()V

    move-object v5, v9

    .line 468
    .local v5, "extraDataRecord":Lnet/lingala/zip4j/model/ExtraDataRecord;
    move-object v9, v2

    move v10, v3

    invoke-static {v9, v10}, Lnet/lingala/zip4j/util/Raw;->readShortLittleEndian([BI)I

    move-result v9

    move v6, v9

    .line 469
    .local v6, "header":I
    move-object v9, v5

    move v10, v6

    int-to-long v10, v10

    invoke-virtual {v9, v10, v11}, Lnet/lingala/zip4j/model/ExtraDataRecord;->setHeader(J)V

    .line 470
    add-int/lit8 v3, v3, 0x2

    .line 471
    move-object v9, v2

    move v10, v3

    invoke-static {v9, v10}, Lnet/lingala/zip4j/util/Raw;->readShortLittleEndian([BI)I

    move-result v9

    move v7, v9

    .line 473
    .local v7, "sizeOfRec":I
    const/4 v9, 0x2

    move v10, v7

    add-int/2addr v9, v10

    move v10, v1

    if-le v9, v10, :cond_2

    .line 474
    move-object v9, v2

    move v10, v3

    invoke-static {v9, v10}, Lnet/lingala/zip4j/util/Raw;->readShortBigEndian([BI)S

    move-result v9

    move v7, v9

    .line 475
    const/4 v9, 0x2

    move v10, v7

    add-int/2addr v9, v10

    move v10, v1

    if-le v9, v10, :cond_2

    .line 478
    goto :goto_2

    .line 482
    :cond_2
    move-object v9, v5

    move v10, v7

    invoke-virtual {v9, v10}, Lnet/lingala/zip4j/model/ExtraDataRecord;->setSizeOfData(I)V

    .line 483
    add-int/lit8 v3, v3, 0x2

    .line 485
    move v9, v7

    if-lez v9, :cond_3

    .line 486
    move v9, v7

    new-array v9, v9, [B

    move-object v8, v9

    .line 487
    .local v8, "data":[B
    move-object v9, v2

    move v10, v3

    move-object v11, v8

    const/4 v12, 0x0

    move v13, v7

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 488
    move-object v9, v5

    move-object v10, v8

    invoke-virtual {v9, v10}, Lnet/lingala/zip4j/model/ExtraDataRecord;->setData([B)V

    .line 490
    .end local v8    # "data":[B
    :cond_3
    move v9, v3

    move v10, v7

    add-int/2addr v9, v10

    move v3, v9

    .line 491
    move-object v9, v4

    move-object v10, v5

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    goto :goto_1

    .line 496
    .end local v5    # "extraDataRecord":Lnet/lingala/zip4j/model/ExtraDataRecord;
    .end local v6    # "header":I
    .end local v7    # "sizeOfRec":I
    :cond_4
    const/4 v9, 0x0

    move-object v0, v9

    goto/16 :goto_0

    .line 498
    .end local v2    # "extraFieldBuf":[B
    .end local v3    # "counter":I
    .end local v4    # "extraDataList":Ljava/util/ArrayList;
    :catch_0
    move-exception v9

    move-object v2, v9

    .line 499
    .local v2, "e":Ljava/io/IOException;
    new-instance v9, Lnet/lingala/zip4j/exception/ZipException;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v2

    invoke-direct {v10, v11}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v9
.end method

.method private readIntoBuff(Ljava/io/RandomAccessFile;[B)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 1091
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/core/HeaderReader;
    move-object v1, p1

    .local v1, "zip4jRaf":Ljava/io/RandomAccessFile;
    move-object v2, p2

    .local v2, "buf":[B
    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    move-object v7, v2

    :try_start_0
    array-length v7, v7

    invoke-virtual {v4, v5, v6, v7}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 1092
    move-object v4, v2

    move-object v0, v4

    .end local v0    # "this":Lnet/lingala/zip4j/core/HeaderReader;
    return-object v0

    .line 1094
    .restart local v0    # "this":Lnet/lingala/zip4j/core/HeaderReader;
    :cond_0
    new-instance v4, Lnet/lingala/zip4j/exception/ZipException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string/jumbo v6, "unexpected end of file when reading short buff"

    invoke-direct {v5, v6}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1096
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 1097
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Lnet/lingala/zip4j/exception/ZipException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string/jumbo v6, "IOException when reading short buff"

    move-object v7, v3

    invoke-direct {v5, v6, v7}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private readZip64EndCentralDirLocator()Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 510
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/core/HeaderReader;
    move-object v5, v0

    iget-object v5, v5, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    if-nez v5, :cond_0

    .line 511
    new-instance v5, Lnet/lingala/zip4j/exception/ZipException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string/jumbo v7, "invalid file handler when trying to read Zip64EndCentralDirLocator"

    invoke-direct {v6, v7}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 515
    :cond_0
    :try_start_0
    new-instance v5, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;-><init>()V

    move-object v1, v5

    .line 517
    .local v1, "zip64EndCentralDirLocator":Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;
    move-object v5, v0

    invoke-direct {v5}, Lnet/lingala/zip4j/core/HeaderReader;->setFilePointerToReadZip64EndCentralDirLoc()V

    .line 519
    const/4 v5, 0x4

    new-array v5, v5, [B

    move-object v2, v5

    .line 520
    .local v2, "intBuff":[B
    const/16 v5, 0x8

    new-array v5, v5, [B

    move-object v3, v5

    .line 522
    .local v3, "longBuff":[B
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    move-result-object v5

    .line 523
    move-object v5, v2

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lnet/lingala/zip4j/util/Raw;->readIntLittleEndian([BI)I

    move-result v5

    move v4, v5

    .line 524
    .local v4, "signature":I
    move v5, v4

    int-to-long v5, v5

    const-wide/32 v7, 0x7064b50

    cmp-long v5, v5, v7

    if-nez v5, :cond_1

    .line 525
    move-object v5, v0

    iget-object v5, v5, Lnet/lingala/zip4j/core/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lnet/lingala/zip4j/model/ZipModel;->setZip64Format(Z)V

    .line 526
    move-object v5, v1

    move v6, v4

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->setSignature(J)V

    .line 532
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    move-result-object v5

    .line 533
    move-object v5, v1

    .line 534
    move-object v6, v2

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lnet/lingala/zip4j/util/Raw;->readIntLittleEndian([BI)I

    move-result v6

    .line 533
    invoke-virtual {v5, v6}, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->setNoOfDiskStartOfZip64EndOfCentralDirRec(I)V

    .line 536
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    move-object v7, v3

    invoke-direct {v5, v6, v7}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    move-result-object v5

    .line 537
    move-object v5, v1

    .line 538
    move-object v6, v3

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lnet/lingala/zip4j/util/Raw;->readLongLittleEndian([BI)J

    move-result-wide v6

    .line 537
    invoke-virtual {v5, v6, v7}, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->setOffsetZip64EndOfCentralDirRec(J)V

    .line 540
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    move-result-object v5

    .line 541
    move-object v5, v1

    move-object v6, v2

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lnet/lingala/zip4j/util/Raw;->readIntLittleEndian([BI)I

    move-result v6

    invoke-virtual {v5, v6}, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->setTotNumberOfDiscs(I)V

    .line 543
    move-object v5, v1

    move-object v0, v5

    .end local v0    # "this":Lnet/lingala/zip4j/core/HeaderReader;
    :goto_0
    return-object v0

    .line 528
    .restart local v0    # "this":Lnet/lingala/zip4j/core/HeaderReader;
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lnet/lingala/zip4j/core/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lnet/lingala/zip4j/model/ZipModel;->setZip64Format(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 529
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_0

    .line 545
    .end local v1    # "zip64EndCentralDirLocator":Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;
    .end local v2    # "intBuff":[B
    .end local v3    # "longBuff":[B
    .end local v4    # "signature":I
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 546
    .local v1, "e":Ljava/lang/Exception;
    new-instance v5, Lnet/lingala/zip4j/exception/ZipException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v1

    invoke-direct {v6, v7}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method private readZip64EndCentralDirRec()Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 558
    move-object/from16 v1, p0

    .local v1, "this":Lnet/lingala/zip4j/core/HeaderReader;
    move-object v12, v1

    iget-object v12, v12, Lnet/lingala/zip4j/core/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v12}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndCentralDirLocator()Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    move-result-object v12

    if-nez v12, :cond_0

    .line 559
    new-instance v12, Lnet/lingala/zip4j/exception/ZipException;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const-string/jumbo v14, "invalid zip64 end of central directory locator"

    invoke-direct {v13, v14}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 563
    :cond_0
    move-object v12, v1

    iget-object v12, v12, Lnet/lingala/zip4j/core/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v12}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndCentralDirLocator()Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    move-result-object v12

    invoke-virtual {v12}, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->getOffsetZip64EndOfCentralDirRec()J

    move-result-wide v12

    .line 562
    move-wide v2, v12

    .line 565
    .local v2, "offSetStartOfZip64CentralDir":J
    move-wide v12, v2

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-gez v12, :cond_1

    .line 566
    new-instance v12, Lnet/lingala/zip4j/exception/ZipException;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const-string/jumbo v14, "invalid offset for start of end of central directory record"

    invoke-direct {v13, v14}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 570
    :cond_1
    move-object v12, v1

    :try_start_0
    iget-object v12, v12, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    move-wide v13, v2

    invoke-virtual {v12, v13, v14}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 572
    new-instance v12, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    invoke-direct {v13}, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;-><init>()V

    move-object v4, v12

    .line 574
    .local v4, "zip64EndCentralDirRecord":Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;
    const/4 v12, 0x2

    new-array v12, v12, [B

    move-object v5, v12

    .line 575
    .local v5, "shortBuff":[B
    const/4 v12, 0x4

    new-array v12, v12, [B

    move-object v6, v12

    .line 576
    .local v6, "intBuff":[B
    const/16 v12, 0x8

    new-array v12, v12, [B

    move-object v7, v12

    .line 579
    .local v7, "longBuff":[B
    move-object v12, v1

    move-object v13, v1

    iget-object v13, v13, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    move-object v14, v6

    invoke-direct {v12, v13, v14}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    move-result-object v12

    .line 580
    move-object v12, v6

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lnet/lingala/zip4j/util/Raw;->readIntLittleEndian([BI)I

    move-result v12

    move v8, v12

    .line 581
    .local v8, "signature":I
    move v12, v8

    int-to-long v12, v12

    const-wide/32 v14, 0x6064b50

    cmp-long v12, v12, v14

    if-eqz v12, :cond_2

    .line 582
    new-instance v12, Lnet/lingala/zip4j/exception/ZipException;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const-string/jumbo v14, "invalid signature for zip64 end of central directory record"

    invoke-direct {v13, v14}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 638
    .end local v4    # "zip64EndCentralDirRecord":Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;
    .end local v5    # "shortBuff":[B
    .end local v6    # "intBuff":[B
    .end local v7    # "longBuff":[B
    .end local v8    # "signature":I
    :catch_0
    move-exception v12

    move-object v4, v12

    .line 639
    .local v4, "e":Ljava/io/IOException;
    new-instance v12, Lnet/lingala/zip4j/exception/ZipException;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v14, v4

    invoke-direct {v13, v14}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v12

    .line 584
    .local v4, "zip64EndCentralDirRecord":Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;
    .restart local v5    # "shortBuff":[B
    .restart local v6    # "intBuff":[B
    .restart local v7    # "longBuff":[B
    .restart local v8    # "signature":I
    :cond_2
    move-object v12, v4

    move v13, v8

    int-to-long v13, v13

    :try_start_1
    invoke-virtual {v12, v13, v14}, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->setSignature(J)V

    .line 587
    move-object v12, v1

    move-object v13, v1

    iget-object v13, v13, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    move-object v14, v7

    invoke-direct {v12, v13, v14}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    move-result-object v12

    .line 588
    move-object v12, v4

    .line 589
    move-object v13, v7

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lnet/lingala/zip4j/util/Raw;->readLongLittleEndian([BI)J

    move-result-wide v13

    .line 588
    invoke-virtual {v12, v13, v14}, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->setSizeOfZip64EndCentralDirRec(J)V

    .line 592
    move-object v12, v1

    move-object v13, v1

    iget-object v13, v13, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    move-object v14, v5

    invoke-direct {v12, v13, v14}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    move-result-object v12

    .line 593
    move-object v12, v4

    move-object v13, v5

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lnet/lingala/zip4j/util/Raw;->readShortLittleEndian([BI)I

    move-result v13

    invoke-virtual {v12, v13}, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->setVersionMadeBy(I)V

    .line 596
    move-object v12, v1

    move-object v13, v1

    iget-object v13, v13, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    move-object v14, v5

    invoke-direct {v12, v13, v14}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    move-result-object v12

    .line 597
    move-object v12, v4

    move-object v13, v5

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lnet/lingala/zip4j/util/Raw;->readShortLittleEndian([BI)I

    move-result v13

    invoke-virtual {v12, v13}, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->setVersionNeededToExtract(I)V

    .line 600
    move-object v12, v1

    move-object v13, v1

    iget-object v13, v13, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    move-object v14, v6

    invoke-direct {v12, v13, v14}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    move-result-object v12

    .line 601
    move-object v12, v4

    move-object v13, v6

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lnet/lingala/zip4j/util/Raw;->readIntLittleEndian([BI)I

    move-result v13

    invoke-virtual {v12, v13}, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->setNoOfThisDisk(I)V

    .line 604
    move-object v12, v1

    move-object v13, v1

    iget-object v13, v13, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    move-object v14, v6

    invoke-direct {v12, v13, v14}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    move-result-object v12

    .line 605
    move-object v12, v4

    .line 606
    move-object v13, v6

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lnet/lingala/zip4j/util/Raw;->readIntLittleEndian([BI)I

    move-result v13

    .line 605
    invoke-virtual {v12, v13}, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->setNoOfThisDiskStartOfCentralDir(I)V

    .line 609
    move-object v12, v1

    move-object v13, v1

    iget-object v13, v13, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    move-object v14, v7

    invoke-direct {v12, v13, v14}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    move-result-object v12

    .line 610
    move-object v12, v4

    .line 611
    move-object v13, v7

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lnet/lingala/zip4j/util/Raw;->readLongLittleEndian([BI)J

    move-result-wide v13

    .line 610
    invoke-virtual {v12, v13, v14}, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->setTotNoOfEntriesInCentralDirOnThisDisk(J)V

    .line 614
    move-object v12, v1

    move-object v13, v1

    iget-object v13, v13, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    move-object v14, v7

    invoke-direct {v12, v13, v14}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    move-result-object v12

    .line 615
    move-object v12, v4

    .line 616
    move-object v13, v7

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lnet/lingala/zip4j/util/Raw;->readLongLittleEndian([BI)J

    move-result-wide v13

    .line 615
    invoke-virtual {v12, v13, v14}, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->setTotNoOfEntriesInCentralDir(J)V

    .line 619
    move-object v12, v1

    move-object v13, v1

    iget-object v13, v13, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    move-object v14, v7

    invoke-direct {v12, v13, v14}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    move-result-object v12

    .line 620
    move-object v12, v4

    move-object v13, v7

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lnet/lingala/zip4j/util/Raw;->readLongLittleEndian([BI)J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->setSizeOfCentralDir(J)V

    .line 623
    move-object v12, v1

    move-object v13, v1

    iget-object v13, v13, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    move-object v14, v7

    invoke-direct {v12, v13, v14}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    move-result-object v12

    .line 624
    move-object v12, v4

    .line 625
    move-object v13, v7

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lnet/lingala/zip4j/util/Raw;->readLongLittleEndian([BI)J

    move-result-wide v13

    .line 624
    invoke-virtual {v12, v13, v14}, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->setOffsetStartCenDirWRTStartDiskNo(J)V

    .line 629
    move-object v12, v4

    invoke-virtual {v12}, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->getSizeOfZip64EndCentralDirRec()J

    move-result-wide v12

    const-wide/16 v14, 0x2c

    sub-long/2addr v12, v14

    move-wide v9, v12

    .line 630
    .local v9, "extDataSecSize":J
    move-wide v12, v9

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-lez v12, :cond_3

    .line 631
    move-wide v12, v9

    long-to-int v12, v12

    new-array v12, v12, [B

    move-object v11, v12

    .line 632
    .local v11, "extDataSecRecBuf":[B
    move-object v12, v1

    move-object v13, v1

    iget-object v13, v13, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    move-object v14, v11

    invoke-direct {v12, v13, v14}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    move-result-object v12

    .line 633
    move-object v12, v4

    move-object v13, v11

    invoke-virtual {v12, v13}, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->setExtensibleDataSector([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 636
    .end local v11    # "extDataSecRecBuf":[B
    :cond_3
    move-object v12, v4

    move-object v1, v12

    .end local v1    # "this":Lnet/lingala/zip4j/core/HeaderReader;
    return-object v1
.end method

.method private readZip64ExtendedInfo(Ljava/util/ArrayList;JJJI)Lnet/lingala/zip4j/model/Zip64ExtendedInfo;
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 729
    move-object/from16 v3, p0

    .local v3, "this":Lnet/lingala/zip4j/core/HeaderReader;
    move-object/from16 v4, p1

    .local v4, "extraDataRecords":Ljava/util/ArrayList;
    move-wide/from16 v5, p2

    .local v5, "unCompressedSize":J
    move-wide/from16 v7, p4

    .local v7, "compressedSize":J
    move-wide/from16 v9, p6

    .local v9, "offsetLocalHeader":J
    move/from16 v11, p8

    .local v11, "diskNumberStart":I
    const/16 v22, 0x0

    move/from16 v12, v22

    .local v12, "i":I
    :goto_0
    move/from16 v22, v12

    move-object/from16 v23, v4

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_1

    .line 788
    :cond_0
    :goto_1
    const/16 v22, 0x0

    move-object/from16 v3, v22

    .end local v3    # "this":Lnet/lingala/zip4j/core/HeaderReader;
    :goto_2
    return-object v3

    .line 730
    .restart local v3    # "this":Lnet/lingala/zip4j/core/HeaderReader;
    :cond_1
    move-object/from16 v22, v4

    move/from16 v23, v12

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lnet/lingala/zip4j/model/ExtraDataRecord;

    move-object/from16 v13, v22

    .line 731
    .local v13, "extraDataRecord":Lnet/lingala/zip4j/model/ExtraDataRecord;
    move-object/from16 v22, v13

    if-nez v22, :cond_3

    .line 732
    .line 729
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 735
    :cond_3
    move-object/from16 v22, v13

    invoke-virtual/range {v22 .. v22}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getHeader()J

    move-result-wide v22

    const-wide/16 v24, 0x1

    cmp-long v22, v22, v24

    if-nez v22, :cond_2

    .line 737
    new-instance v22, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    move-object/from16 v27, v22

    move-object/from16 v22, v27

    move-object/from16 v23, v27

    invoke-direct/range {v23 .. v23}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;-><init>()V

    move-object/from16 v14, v22

    .line 739
    .local v14, "zip64ExtendedInfo":Lnet/lingala/zip4j/model/Zip64ExtendedInfo;
    move-object/from16 v22, v13

    invoke-virtual/range {v22 .. v22}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getData()[B

    move-result-object v22

    move-object/from16 v15, v22

    .line 741
    .local v15, "byteBuff":[B
    move-object/from16 v22, v13

    invoke-virtual/range {v22 .. v22}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getSizeOfData()I

    move-result v22

    if-gtz v22, :cond_4

    .line 742
    goto :goto_1

    .line 744
    :cond_4
    const/16 v22, 0x8

    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v22, v0

    move-object/from16 v16, v22

    .line 745
    .local v16, "longByteBuff":[B
    const/16 v22, 0x4

    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v22, v0

    move-object/from16 v17, v22

    .line 746
    .local v17, "intByteBuff":[B
    const/16 v22, 0x0

    move/from16 v18, v22

    .line 747
    .local v18, "counter":I
    const/16 v22, 0x0

    move/from16 v19, v22

    .line 749
    .local v19, "valueAdded":Z
    move-wide/from16 v22, v5

    const-wide/32 v24, 0xffff

    and-long v22, v22, v24

    const-wide/32 v24, 0xffff

    cmp-long v22, v22, v24

    if-nez v22, :cond_5

    move/from16 v22, v18

    move-object/from16 v23, v13

    invoke-virtual/range {v23 .. v23}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getSizeOfData()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_5

    .line 750
    move-object/from16 v22, v15

    move/from16 v23, v18

    move-object/from16 v24, v16

    const/16 v25, 0x0

    const/16 v26, 0x8

    invoke-static/range {v22 .. v26}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 751
    move-object/from16 v22, v16

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lnet/lingala/zip4j/util/Raw;->readLongLittleEndian([BI)J

    move-result-wide v22

    move-wide/from16 v20, v22

    .line 752
    .local v20, "val":J
    move-object/from16 v22, v14

    move-wide/from16 v23, v20

    invoke-virtual/range {v22 .. v24}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->setUnCompressedSize(J)V

    .line 753
    add-int/lit8 v18, v18, 0x8

    .line 754
    const/16 v22, 0x1

    move/from16 v19, v22

    .line 757
    .end local v20    # "val":J
    :cond_5
    move-wide/from16 v22, v7

    const-wide/32 v24, 0xffff

    and-long v22, v22, v24

    const-wide/32 v24, 0xffff

    cmp-long v22, v22, v24

    if-nez v22, :cond_6

    move/from16 v22, v18

    move-object/from16 v23, v13

    invoke-virtual/range {v23 .. v23}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getSizeOfData()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_6

    .line 758
    move-object/from16 v22, v15

    move/from16 v23, v18

    move-object/from16 v24, v16

    const/16 v25, 0x0

    const/16 v26, 0x8

    invoke-static/range {v22 .. v26}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 759
    move-object/from16 v22, v16

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lnet/lingala/zip4j/util/Raw;->readLongLittleEndian([BI)J

    move-result-wide v22

    move-wide/from16 v20, v22

    .line 760
    .restart local v20    # "val":J
    move-object/from16 v22, v14

    move-wide/from16 v23, v20

    invoke-virtual/range {v22 .. v24}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->setCompressedSize(J)V

    .line 761
    add-int/lit8 v18, v18, 0x8

    .line 762
    const/16 v22, 0x1

    move/from16 v19, v22

    .line 765
    .end local v20    # "val":J
    :cond_6
    move-wide/from16 v22, v9

    const-wide/32 v24, 0xffff

    and-long v22, v22, v24

    const-wide/32 v24, 0xffff

    cmp-long v22, v22, v24

    if-nez v22, :cond_7

    move/from16 v22, v18

    move-object/from16 v23, v13

    invoke-virtual/range {v23 .. v23}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getSizeOfData()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_7

    .line 766
    move-object/from16 v22, v15

    move/from16 v23, v18

    move-object/from16 v24, v16

    const/16 v25, 0x0

    const/16 v26, 0x8

    invoke-static/range {v22 .. v26}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 767
    move-object/from16 v22, v16

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lnet/lingala/zip4j/util/Raw;->readLongLittleEndian([BI)J

    move-result-wide v22

    move-wide/from16 v20, v22

    .line 768
    .restart local v20    # "val":J
    move-object/from16 v22, v14

    move-wide/from16 v23, v20

    invoke-virtual/range {v22 .. v24}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->setOffsetLocalHeader(J)V

    .line 769
    add-int/lit8 v18, v18, 0x8

    .line 770
    const/16 v22, 0x1

    move/from16 v19, v22

    .line 773
    .end local v20    # "val":J
    :cond_7
    move/from16 v22, v11

    const v23, 0xffff

    and-int v22, v22, v23

    const v23, 0xffff

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_8

    move/from16 v22, v18

    move-object/from16 v23, v13

    invoke-virtual/range {v23 .. v23}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getSizeOfData()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_8

    .line 774
    move-object/from16 v22, v15

    move/from16 v23, v18

    move-object/from16 v24, v17

    const/16 v25, 0x0

    const/16 v26, 0x4

    invoke-static/range {v22 .. v26}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 775
    move-object/from16 v22, v17

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lnet/lingala/zip4j/util/Raw;->readIntLittleEndian([BI)I

    move-result v22

    move/from16 v20, v22

    .line 776
    .local v20, "val":I
    move-object/from16 v22, v14

    move/from16 v23, v20

    invoke-virtual/range {v22 .. v23}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->setDiskNumberStart(I)V

    .line 777
    add-int/lit8 v18, v18, 0x8

    .line 778
    const/16 v22, 0x1

    move/from16 v19, v22

    .line 781
    .end local v20    # "val":I
    :cond_8
    move/from16 v22, v19

    if-eqz v22, :cond_0

    .line 782
    move-object/from16 v22, v14

    move-object/from16 v3, v22

    goto/16 :goto_2
.end method

.method private setFilePointerToReadZip64EndCentralDirLoc()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 798
    move-object v1, p0

    .local v1, "this":Lnet/lingala/zip4j/core/HeaderReader;
    const/4 v5, 0x4

    :try_start_0
    new-array v5, v5, [B

    move-object v2, v5

    .line 799
    .local v2, "ebs":[B
    move-object v5, v1

    iget-object v5, v5, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x16

    sub-long/2addr v5, v7

    move-wide v3, v5

    .line 802
    .local v3, "pos":J
    :cond_0
    move-object v5, v1

    iget-object v5, v5, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    move-wide v6, v3

    move-wide v12, v6

    move-wide v6, v12

    move-wide v8, v12

    const-wide/16 v10, 0x1

    sub-long/2addr v8, v10

    move-wide v3, v8

    invoke-virtual {v5, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 803
    move-object v5, v1

    iget-object v5, v5, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    move-object v6, v2

    invoke-static {v5, v6}, Lnet/lingala/zip4j/util/Raw;->readLeInt(Ljava/io/DataInput;[B)I

    move-result v5

    int-to-long v5, v5

    const-wide/32 v7, 0x6054b50

    cmp-long v5, v5, v7

    if-nez v5, :cond_0

    .line 814
    move-object v5, v1

    iget-object v5, v5, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    move-object v6, v1

    iget-object v6, v6, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v6

    const-wide/16 v8, 0x4

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x4

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x4

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x4

    sub-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 818
    return-void

    .line 815
    .end local v2    # "ebs":[B
    .end local v3    # "pos":J
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 816
    .local v2, "e":Ljava/io/IOException;
    new-instance v5, Lnet/lingala/zip4j/exception/ZipException;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v2

    invoke-direct {v6, v7}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method


# virtual methods
.method public readAllHeaders()Lnet/lingala/zip4j/model/ZipModel;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/core/HeaderReader;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lnet/lingala/zip4j/core/HeaderReader;->readAllHeaders(Ljava/lang/String;)Lnet/lingala/zip4j/model/ZipModel;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/core/HeaderReader;
    return-object v0
.end method

.method public readAllHeaders(Ljava/lang/String;)Lnet/lingala/zip4j/model/ZipModel;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/core/HeaderReader;
    move-object v1, p1

    .local v1, "fileNameCharset":Ljava/lang/String;
    move-object v2, v0

    new-instance v3, Lnet/lingala/zip4j/model/ZipModel;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lnet/lingala/zip4j/model/ZipModel;-><init>()V

    iput-object v3, v2, Lnet/lingala/zip4j/core/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    .line 77
    move-object v2, v0

    iget-object v2, v2, Lnet/lingala/zip4j/core/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lnet/lingala/zip4j/model/ZipModel;->setFileNameCharset(Ljava/lang/String;)V

    .line 78
    move-object v2, v0

    iget-object v2, v2, Lnet/lingala/zip4j/core/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    move-object v3, v0

    invoke-direct {v3}, Lnet/lingala/zip4j/core/HeaderReader;->readEndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/lingala/zip4j/model/ZipModel;->setEndCentralDirRecord(Lnet/lingala/zip4j/model/EndCentralDirRecord;)V

    .line 82
    move-object v2, v0

    iget-object v2, v2, Lnet/lingala/zip4j/core/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    move-object v3, v0

    invoke-direct {v3}, Lnet/lingala/zip4j/core/HeaderReader;->readZip64EndCentralDirLocator()Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/lingala/zip4j/model/ZipModel;->setZip64EndCentralDirLocator(Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;)V

    .line 84
    move-object v2, v0

    iget-object v2, v2, Lnet/lingala/zip4j/core/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ZipModel;->isZip64Format()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    move-object v2, v0

    iget-object v2, v2, Lnet/lingala/zip4j/core/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    move-object v3, v0

    invoke-direct {v3}, Lnet/lingala/zip4j/core/HeaderReader;->readZip64EndCentralDirRec()Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/lingala/zip4j/model/ZipModel;->setZip64EndCentralDirRecord(Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;)V

    .line 86
    move-object v2, v0

    iget-object v2, v2, Lnet/lingala/zip4j/core/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndCentralDirRecord()Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 87
    move-object v2, v0

    iget-object v2, v2, Lnet/lingala/zip4j/core/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndCentralDirRecord()Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;

    move-result-object v2

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->getNoOfThisDisk()I

    move-result v2

    if-lez v2, :cond_1

    .line 88
    move-object v2, v0

    iget-object v2, v2, Lnet/lingala/zip4j/core/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lnet/lingala/zip4j/model/ZipModel;->setSplitArchive(Z)V

    .line 94
    :cond_0
    :goto_0
    move-object v2, v0

    iget-object v2, v2, Lnet/lingala/zip4j/core/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    move-object v3, v0

    invoke-direct {v3}, Lnet/lingala/zip4j/core/HeaderReader;->readCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/lingala/zip4j/model/ZipModel;->setCentralDirectory(Lnet/lingala/zip4j/model/CentralDirectory;)V

    .line 96
    move-object v2, v0

    iget-object v2, v2, Lnet/lingala/zip4j/core/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    move-object v0, v2

    .end local v0    # "this":Lnet/lingala/zip4j/core/HeaderReader;
    return-object v0

    .line 90
    .restart local v0    # "this":Lnet/lingala/zip4j/core/HeaderReader;
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lnet/lingala/zip4j/core/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lnet/lingala/zip4j/model/ZipModel;->setSplitArchive(Z)V

    goto :goto_0
.end method

.method public readLocalFileHeader(Lnet/lingala/zip4j/model/FileHeader;)Lnet/lingala/zip4j/model/LocalFileHeader;
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 827
    move-object/from16 v3, p0

    .local v3, "this":Lnet/lingala/zip4j/core/HeaderReader;
    move-object/from16 v4, p1

    .local v4, "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    move-object/from16 v20, v4

    if-eqz v20, :cond_0

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    move-object/from16 v20, v0

    if-nez v20, :cond_1

    .line 828
    :cond_0
    new-instance v20, Lnet/lingala/zip4j/exception/ZipException;

    move-object/from16 v25, v20

    move-object/from16 v20, v25

    move-object/from16 v21, v25

    const-string/jumbo v22, "invalid read parameters for local header"

    invoke-direct/range {v21 .. v22}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 831
    :cond_1
    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Lnet/lingala/zip4j/model/FileHeader;->getOffsetLocalHeader()J

    move-result-wide v20

    move-wide/from16 v5, v20

    .line 833
    .local v5, "locHdrOffset":J
    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Lnet/lingala/zip4j/model/FileHeader;->getZip64ExtendedInfo()Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    move-result-object v20

    if-eqz v20, :cond_2

    .line 834
    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Lnet/lingala/zip4j/model/FileHeader;->getZip64ExtendedInfo()Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    move-result-object v20

    move-object/from16 v7, v20

    .line 835
    .local v7, "zip64ExtendedInfo":Lnet/lingala/zip4j/model/Zip64ExtendedInfo;
    move-object/from16 v20, v7

    invoke-virtual/range {v20 .. v20}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getOffsetLocalHeader()J

    move-result-wide v20

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-lez v20, :cond_2

    .line 836
    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Lnet/lingala/zip4j/model/FileHeader;->getOffsetLocalHeader()J

    move-result-wide v20

    move-wide/from16 v5, v20

    .line 840
    .end local v7    # "zip64ExtendedInfo":Lnet/lingala/zip4j/model/Zip64ExtendedInfo;
    :cond_2
    move-wide/from16 v20, v5

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-gez v20, :cond_3

    .line 841
    new-instance v20, Lnet/lingala/zip4j/exception/ZipException;

    move-object/from16 v25, v20

    move-object/from16 v20, v25

    move-object/from16 v21, v25

    const-string/jumbo v22, "invalid local header offset"

    invoke-direct/range {v21 .. v22}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 845
    :cond_3
    move-object/from16 v20, v3

    :try_start_0
    move-object/from16 v0, v20

    iget-object v0, v0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    move-object/from16 v20, v0

    move-wide/from16 v21, v5

    invoke-virtual/range {v20 .. v22}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 847
    const/16 v20, 0x0

    move/from16 v7, v20

    .line 848
    .local v7, "length":I
    new-instance v20, Lnet/lingala/zip4j/model/LocalFileHeader;

    move-object/from16 v25, v20

    move-object/from16 v20, v25

    move-object/from16 v21, v25

    invoke-direct/range {v21 .. v21}, Lnet/lingala/zip4j/model/LocalFileHeader;-><init>()V

    move-object/from16 v8, v20

    .line 850
    .local v8, "localFileHeader":Lnet/lingala/zip4j/model/LocalFileHeader;
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [B

    move-object/from16 v20, v0

    move-object/from16 v9, v20

    .line 851
    .local v9, "shortBuff":[B
    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [B

    move-object/from16 v20, v0

    move-object/from16 v10, v20

    .line 852
    .local v10, "intBuff":[B
    const/16 v20, 0x8

    move/from16 v0, v20

    new-array v0, v0, [B

    move-object/from16 v20, v0

    move-object/from16 v11, v20

    .line 855
    .local v11, "longBuff":[B
    move-object/from16 v20, v3

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    move-object/from16 v21, v0

    move-object/from16 v22, v10

    invoke-direct/range {v20 .. v22}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    move-result-object v20

    .line 856
    move-object/from16 v20, v10

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lnet/lingala/zip4j/util/Raw;->readIntLittleEndian([BI)I

    move-result v20

    move/from16 v12, v20

    .line 857
    .local v12, "sig":I
    move/from16 v20, v12

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const-wide/32 v22, 0x4034b50

    cmp-long v20, v20, v22

    if-eqz v20, :cond_4

    .line 858
    new-instance v20, Lnet/lingala/zip4j/exception/ZipException;

    move-object/from16 v25, v20

    move-object/from16 v20, v25

    move-object/from16 v21, v25

    new-instance v22, Ljava/lang/StringBuffer;

    move-object/from16 v25, v22

    move-object/from16 v22, v25

    move-object/from16 v23, v25

    const-string/jumbo v24, "invalid local header signature for file: "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object/from16 v23, v4

    invoke-virtual/range {v23 .. v23}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v20
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 991
    .end local v7    # "length":I
    .end local v8    # "localFileHeader":Lnet/lingala/zip4j/model/LocalFileHeader;
    .end local v9    # "shortBuff":[B
    .end local v10    # "intBuff":[B
    .end local v11    # "longBuff":[B
    .end local v12    # "sig":I
    :catch_0
    move-exception v20

    move-object/from16 v7, v20

    .line 992
    .local v7, "e":Ljava/io/IOException;
    new-instance v20, Lnet/lingala/zip4j/exception/ZipException;

    move-object/from16 v25, v20

    move-object/from16 v20, v25

    move-object/from16 v21, v25

    move-object/from16 v22, v7

    invoke-direct/range {v21 .. v22}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v20

    .line 860
    .local v7, "length":I
    .restart local v8    # "localFileHeader":Lnet/lingala/zip4j/model/LocalFileHeader;
    .restart local v9    # "shortBuff":[B
    .restart local v10    # "intBuff":[B
    .restart local v11    # "longBuff":[B
    .restart local v12    # "sig":I
    :cond_4
    move-object/from16 v20, v8

    move/from16 v21, v12

    :try_start_1
    invoke-virtual/range {v20 .. v21}, Lnet/lingala/zip4j/model/LocalFileHeader;->setSignature(I)V

    .line 861
    add-int/lit8 v7, v7, 0x4

    .line 864
    move-object/from16 v20, v3

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    move-object/from16 v21, v0

    move-object/from16 v22, v9

    invoke-direct/range {v20 .. v22}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    move-result-object v20

    .line 865
    move-object/from16 v20, v8

    move-object/from16 v21, v9

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Lnet/lingala/zip4j/util/Raw;->readShortLittleEndian([BI)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Lnet/lingala/zip4j/model/LocalFileHeader;->setVersionNeededToExtract(I)V

    .line 866
    add-int/lit8 v7, v7, 0x2

    .line 869
    move-object/from16 v20, v3

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    move-object/from16 v21, v0

    move-object/from16 v22, v9

    invoke-direct/range {v20 .. v22}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    move-result-object v20

    .line 870
    move-object/from16 v20, v8

    move-object/from16 v21, v9

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Lnet/lingala/zip4j/util/Raw;->readShortLittleEndian([BI)I

    move-result v21

    const/16 v22, 0x800

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0x800

    move/from16 v21, v0

    if-eqz v21, :cond_7

    const/16 v21, 0x1

    :goto_0
    invoke-virtual/range {v20 .. v21}, Lnet/lingala/zip4j/model/LocalFileHeader;->setFileNameUTF8Encoded(Z)V

    .line 871
    move-object/from16 v20, v9

    const/16 v21, 0x0

    aget-byte v20, v20, v21

    move/from16 v13, v20

    .line 872
    .local v13, "firstByte":I
    move/from16 v20, v13

    const/16 v21, 0x1

    and-int/lit8 v20, v20, 0x1

    move/from16 v14, v20

    .line 873
    .local v14, "result":I
    move/from16 v20, v14

    if-eqz v20, :cond_5

    .line 874
    move-object/from16 v20, v8

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lnet/lingala/zip4j/model/LocalFileHeader;->setEncrypted(Z)V

    .line 876
    :cond_5
    move-object/from16 v20, v8

    move-object/from16 v21, v9

    invoke-virtual/range {v20 .. v21}, Lnet/lingala/zip4j/model/LocalFileHeader;->setGeneralPurposeFlag([B)V

    .line 877
    add-int/lit8 v7, v7, 0x2

    .line 880
    move/from16 v20, v13

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v15, v20

    .line 881
    .local v15, "binary":Ljava/lang/String;
    move-object/from16 v20, v15

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_6

    .line 882
    move-object/from16 v20, v8

    move-object/from16 v21, v15

    const/16 v22, 0x3

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->charAt(I)C

    move-result v21

    const/16 v22, 0x31

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_8

    const/16 v21, 0x1

    :goto_1
    invoke-virtual/range {v20 .. v21}, Lnet/lingala/zip4j/model/LocalFileHeader;->setDataDescriptorExists(Z)V

    .line 885
    :cond_6
    move-object/from16 v20, v3

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    move-object/from16 v21, v0

    move-object/from16 v22, v9

    invoke-direct/range {v20 .. v22}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    move-result-object v20

    .line 886
    move-object/from16 v20, v8

    move-object/from16 v21, v9

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Lnet/lingala/zip4j/util/Raw;->readShortLittleEndian([BI)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Lnet/lingala/zip4j/model/LocalFileHeader;->setCompressionMethod(I)V

    .line 887
    add-int/lit8 v7, v7, 0x2

    .line 890
    move-object/from16 v20, v3

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    move-object/from16 v21, v0

    move-object/from16 v22, v10

    invoke-direct/range {v20 .. v22}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    move-result-object v20

    .line 891
    move-object/from16 v20, v8

    move-object/from16 v21, v10

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Lnet/lingala/zip4j/util/Raw;->readIntLittleEndian([BI)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Lnet/lingala/zip4j/model/LocalFileHeader;->setLastModFileTime(I)V

    .line 892
    add-int/lit8 v7, v7, 0x4

    .line 895
    move-object/from16 v20, v3

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    move-object/from16 v21, v0

    move-object/from16 v22, v10

    invoke-direct/range {v20 .. v22}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    move-result-object v20

    .line 896
    move-object/from16 v20, v8

    move-object/from16 v21, v10

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Lnet/lingala/zip4j/util/Raw;->readIntLittleEndian([BI)I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    invoke-virtual/range {v20 .. v22}, Lnet/lingala/zip4j/model/LocalFileHeader;->setCrc32(J)V

    .line 897
    move-object/from16 v20, v8

    move-object/from16 v21, v10

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [B

    invoke-virtual/range {v20 .. v21}, Lnet/lingala/zip4j/model/LocalFileHeader;->setCrcBuff([B)V

    .line 898
    add-int/lit8 v7, v7, 0x4

    .line 901
    move-object/from16 v20, v3

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    move-object/from16 v21, v0

    move-object/from16 v22, v10

    invoke-direct/range {v20 .. v22}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    move-result-object v20

    .line 902
    move-object/from16 v20, v3

    move-object/from16 v21, v10

    invoke-direct/range {v20 .. v21}, Lnet/lingala/zip4j/core/HeaderReader;->getLongByteFromIntByte([B)[B

    move-result-object v20

    move-object/from16 v11, v20

    .line 903
    move-object/from16 v20, v8

    move-object/from16 v21, v11

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Lnet/lingala/zip4j/util/Raw;->readLongLittleEndian([BI)J

    move-result-wide v21

    invoke-virtual/range {v20 .. v22}, Lnet/lingala/zip4j/model/LocalFileHeader;->setCompressedSize(J)V

    .line 904
    add-int/lit8 v7, v7, 0x4

    .line 907
    move-object/from16 v20, v3

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    move-object/from16 v21, v0

    move-object/from16 v22, v10

    invoke-direct/range {v20 .. v22}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    move-result-object v20

    .line 908
    move-object/from16 v20, v3

    move-object/from16 v21, v10

    invoke-direct/range {v20 .. v21}, Lnet/lingala/zip4j/core/HeaderReader;->getLongByteFromIntByte([B)[B

    move-result-object v20

    move-object/from16 v11, v20

    .line 909
    move-object/from16 v20, v8

    move-object/from16 v21, v11

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Lnet/lingala/zip4j/util/Raw;->readLongLittleEndian([BI)J

    move-result-wide v21

    invoke-virtual/range {v20 .. v22}, Lnet/lingala/zip4j/model/LocalFileHeader;->setUncompressedSize(J)V

    .line 910
    add-int/lit8 v7, v7, 0x4

    .line 913
    move-object/from16 v20, v3

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    move-object/from16 v21, v0

    move-object/from16 v22, v9

    invoke-direct/range {v20 .. v22}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    move-result-object v20

    .line 914
    move-object/from16 v20, v9

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lnet/lingala/zip4j/util/Raw;->readShortLittleEndian([BI)I

    move-result v20

    move/from16 v16, v20

    .line 915
    .local v16, "fileNameLength":I
    move-object/from16 v20, v8

    move/from16 v21, v16

    invoke-virtual/range {v20 .. v21}, Lnet/lingala/zip4j/model/LocalFileHeader;->setFileNameLength(I)V

    .line 916
    add-int/lit8 v7, v7, 0x2

    .line 919
    move-object/from16 v20, v3

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    move-object/from16 v21, v0

    move-object/from16 v22, v9

    invoke-direct/range {v20 .. v22}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    move-result-object v20

    .line 920
    move-object/from16 v20, v9

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lnet/lingala/zip4j/util/Raw;->readShortLittleEndian([BI)I

    move-result v20

    move/from16 v17, v20

    .line 921
    .local v17, "extraFieldLength":I
    move-object/from16 v20, v8

    move/from16 v21, v17

    invoke-virtual/range {v20 .. v21}, Lnet/lingala/zip4j/model/LocalFileHeader;->setExtraFieldLength(I)V

    .line 922
    add-int/lit8 v7, v7, 0x2

    .line 925
    move/from16 v20, v16

    if-lez v20, :cond_f

    .line 926
    move/from16 v20, v16

    move/from16 v0, v20

    new-array v0, v0, [B

    move-object/from16 v20, v0

    move-object/from16 v18, v20

    .line 927
    .local v18, "fileNameBuf":[B
    move-object/from16 v20, v3

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lnet/lingala/zip4j/core/HeaderReader;->zip4jRaf:Ljava/io/RandomAccessFile;

    move-object/from16 v21, v0

    move-object/from16 v22, v18

    invoke-direct/range {v20 .. v22}, Lnet/lingala/zip4j/core/HeaderReader;->readIntoBuff(Ljava/io/RandomAccessFile;[B)[B

    move-result-object v20

    .line 931
    move-object/from16 v20, v18

    move-object/from16 v21, v8

    invoke-virtual/range {v21 .. v21}, Lnet/lingala/zip4j/model/LocalFileHeader;->isFileNameUTF8Encoded()Z

    move-result v21

    invoke-static/range {v20 .. v21}, Lnet/lingala/zip4j/util/Zip4jUtil;->decodeFileName([BZ)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v19, v20

    .line 933
    .local v19, "fileName":Ljava/lang/String;
    move-object/from16 v20, v19

    if-nez v20, :cond_9

    .line 934
    new-instance v20, Lnet/lingala/zip4j/exception/ZipException;

    move-object/from16 v25, v20

    move-object/from16 v20, v25

    move-object/from16 v21, v25

    const-string/jumbo v22, "file name is null, cannot assign file name to local file header"

    invoke-direct/range {v21 .. v22}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 870
    .end local v13    # "firstByte":I
    .end local v14    # "result":I
    .end local v15    # "binary":Ljava/lang/String;
    .end local v16    # "fileNameLength":I
    .end local v17    # "extraFieldLength":I
    .end local v18    # "fileNameBuf":[B
    .end local v19    # "fileName":Ljava/lang/String;
    :cond_7
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 882
    .restart local v13    # "firstByte":I
    .restart local v14    # "result":I
    .restart local v15    # "binary":Ljava/lang/String;
    :cond_8
    const/16 v21, 0x0

    goto/16 :goto_1

    .line 937
    .restart local v16    # "fileNameLength":I
    .restart local v17    # "extraFieldLength":I
    .restart local v18    # "fileNameBuf":[B
    .restart local v19    # "fileName":Ljava/lang/String;
    :cond_9
    move-object/from16 v20, v19

    new-instance v21, Ljava/lang/StringBuffer;

    move-object/from16 v25, v21

    move-object/from16 v21, v25

    move-object/from16 v22, v25

    const-string/jumbo v23, ":"

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string/jumbo v22, "file.separator"

    invoke-static/range {v22 .. v22}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v20

    if-ltz v20, :cond_a

    .line 938
    move-object/from16 v20, v19

    move-object/from16 v21, v19

    new-instance v22, Ljava/lang/StringBuffer;

    move-object/from16 v25, v22

    move-object/from16 v22, v25

    move-object/from16 v23, v25

    const-string/jumbo v24, ":"

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string/jumbo v23, "file.separator"

    invoke-static/range {v23 .. v23}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v21

    const/16 v22, 0x2

    add-int/lit8 v21, v21, 0x2

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v19, v20

    .line 941
    :cond_a
    move-object/from16 v20, v8

    move-object/from16 v21, v19

    invoke-virtual/range {v20 .. v21}, Lnet/lingala/zip4j/model/LocalFileHeader;->setFileName(Ljava/lang/String;)V

    .line 942
    move/from16 v20, v7

    move/from16 v21, v16

    add-int v20, v20, v21

    move/from16 v7, v20

    .line 948
    .end local v18    # "fileNameBuf":[B
    .end local v19    # "fileName":Ljava/lang/String;
    :goto_2
    move-object/from16 v20, v3

    move-object/from16 v21, v8

    invoke-direct/range {v20 .. v21}, Lnet/lingala/zip4j/core/HeaderReader;->readAndSaveExtraDataRecord(Lnet/lingala/zip4j/model/LocalFileHeader;)V

    .line 949
    move/from16 v20, v7

    move/from16 v21, v17

    add-int v20, v20, v21

    move/from16 v7, v20

    .line 951
    move-object/from16 v20, v8

    move-wide/from16 v21, v5

    move/from16 v23, v7

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    add-long v21, v21, v23

    invoke-virtual/range {v20 .. v22}, Lnet/lingala/zip4j/model/LocalFileHeader;->setOffsetStartOfData(J)V

    .line 954
    move-object/from16 v20, v8

    move-object/from16 v21, v4

    invoke-virtual/range {v21 .. v21}, Lnet/lingala/zip4j/model/FileHeader;->getPassword()[C

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lnet/lingala/zip4j/model/LocalFileHeader;->setPassword([C)V

    .line 956
    move-object/from16 v20, v3

    move-object/from16 v21, v8

    invoke-direct/range {v20 .. v21}, Lnet/lingala/zip4j/core/HeaderReader;->readAndSaveZip64ExtendedInfo(Lnet/lingala/zip4j/model/LocalFileHeader;)V

    .line 958
    move-object/from16 v20, v3

    move-object/from16 v21, v8

    invoke-direct/range {v20 .. v21}, Lnet/lingala/zip4j/core/HeaderReader;->readAndSaveAESExtraDataRecord(Lnet/lingala/zip4j/model/LocalFileHeader;)V

    .line 960
    move-object/from16 v20, v8

    invoke-virtual/range {v20 .. v20}, Lnet/lingala/zip4j/model/LocalFileHeader;->isEncrypted()Z

    move-result v20

    if-eqz v20, :cond_b

    .line 962
    move-object/from16 v20, v8

    invoke-virtual/range {v20 .. v20}, Lnet/lingala/zip4j/model/LocalFileHeader;->getEncryptionMethod()I

    move-result v20

    const/16 v21, 0x63

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_b

    .line 965
    move/from16 v20, v13

    const/16 v21, 0x40

    and-int/lit8 v20, v20, 0x40

    const/16 v21, 0x40

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_10

    .line 967
    move-object/from16 v20, v8

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lnet/lingala/zip4j/model/LocalFileHeader;->setEncryptionMethod(I)V

    .line 977
    :cond_b
    :goto_3
    move-object/from16 v20, v8

    invoke-virtual/range {v20 .. v20}, Lnet/lingala/zip4j/model/LocalFileHeader;->getCrc32()J

    move-result-wide v20

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-gtz v20, :cond_c

    .line 978
    move-object/from16 v20, v8

    move-object/from16 v21, v4

    invoke-virtual/range {v21 .. v21}, Lnet/lingala/zip4j/model/FileHeader;->getCrc32()J

    move-result-wide v21

    invoke-virtual/range {v20 .. v22}, Lnet/lingala/zip4j/model/LocalFileHeader;->setCrc32(J)V

    .line 979
    move-object/from16 v20, v8

    move-object/from16 v21, v4

    invoke-virtual/range {v21 .. v21}, Lnet/lingala/zip4j/model/FileHeader;->getCrcBuff()[B

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lnet/lingala/zip4j/model/LocalFileHeader;->setCrcBuff([B)V

    .line 982
    :cond_c
    move-object/from16 v20, v8

    invoke-virtual/range {v20 .. v20}, Lnet/lingala/zip4j/model/LocalFileHeader;->getCompressedSize()J

    move-result-wide v20

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-gtz v20, :cond_d

    .line 983
    move-object/from16 v20, v8

    move-object/from16 v21, v4

    invoke-virtual/range {v21 .. v21}, Lnet/lingala/zip4j/model/FileHeader;->getCompressedSize()J

    move-result-wide v21

    invoke-virtual/range {v20 .. v22}, Lnet/lingala/zip4j/model/LocalFileHeader;->setCompressedSize(J)V

    .line 986
    :cond_d
    move-object/from16 v20, v8

    invoke-virtual/range {v20 .. v20}, Lnet/lingala/zip4j/model/LocalFileHeader;->getUncompressedSize()J

    move-result-wide v20

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-gtz v20, :cond_e

    .line 987
    move-object/from16 v20, v8

    move-object/from16 v21, v4

    invoke-virtual/range {v21 .. v21}, Lnet/lingala/zip4j/model/FileHeader;->getUncompressedSize()J

    move-result-wide v21

    invoke-virtual/range {v20 .. v22}, Lnet/lingala/zip4j/model/LocalFileHeader;->setUncompressedSize(J)V

    .line 990
    :cond_e
    move-object/from16 v20, v8

    move-object/from16 v3, v20

    .end local v3    # "this":Lnet/lingala/zip4j/core/HeaderReader;
    return-object v3

    .line 944
    .restart local v3    # "this":Lnet/lingala/zip4j/core/HeaderReader;
    :cond_f
    move-object/from16 v20, v8

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lnet/lingala/zip4j/model/LocalFileHeader;->setFileName(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 969
    :cond_10
    move-object/from16 v20, v8

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lnet/lingala/zip4j/model/LocalFileHeader;->setEncryptionMethod(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method
