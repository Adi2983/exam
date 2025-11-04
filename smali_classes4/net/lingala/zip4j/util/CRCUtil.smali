.class public Lnet/lingala/zip4j/util/CRCUtil;
.super Ljava/lang/Object;
.source "CRCUtil.java"


# static fields
.field private static final BUF_SIZE:I = 0x4000


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/util/CRCUtil;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeFileCRC(Ljava/lang/String;)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "inputFile":Ljava/lang/String;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lnet/lingala/zip4j/util/CRCUtil;->computeFileCRC(Ljava/lang/String;Lnet/lingala/zip4j/progress/ProgressMonitor;)J

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "inputFile":Ljava/lang/String;
    return-wide v0
.end method

.method public static computeFileCRC(Ljava/lang/String;Lnet/lingala/zip4j/progress/ProgressMonitor;)J
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 44
    move-object/from16 v0, p0

    .local v0, "inputFile":Ljava/lang/String;
    move-object/from16 v1, p1

    .local v1, "progressMonitor":Lnet/lingala/zip4j/progress/ProgressMonitor;
    move-object v10, v0

    invoke-static {v10}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 45
    new-instance v10, Lnet/lingala/zip4j/exception/ZipException;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const-string/jumbo v12, "input file is null or empty, cannot calculate CRC for the file"

    invoke-direct {v11, v12}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 47
    :cond_0
    const/4 v10, 0x0

    move-object v2, v10

    .line 49
    .local v2, "inputStream":Ljava/io/InputStream;
    move-object v10, v0

    :try_start_0
    invoke-static {v10}, Lnet/lingala/zip4j/util/Zip4jUtil;->checkFileReadAccess(Ljava/lang/String;)Z

    move-result v10

    .line 51
    new-instance v10, Ljava/io/FileInputStream;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    new-instance v12, Ljava/io/File;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    move-object v14, v0

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v11, v12}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v2, v10

    .line 53
    const/16 v10, 0x4000

    new-array v10, v10, [B

    move-object v3, v10

    .line 54
    .local v3, "buff":[B
    const/4 v10, -0x2

    move v4, v10

    .line 55
    .local v4, "readLen":I
    new-instance v10, Ljava/util/zip/CRC32;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    invoke-direct {v11}, Ljava/util/zip/CRC32;-><init>()V

    move-object v5, v10

    .line 57
    .local v5, "crc32":Ljava/util/zip/CRC32;
    :cond_1
    move-object v10, v2

    move-object v11, v3

    invoke-virtual {v10, v11}, Ljava/io/InputStream;->read([B)I

    move-result v10

    move v15, v10

    move v10, v15

    move v11, v15

    move v4, v11

    const/4 v11, -0x1

    if-ne v10, v11, :cond_3

    .line 69
    move-object v10, v5

    invoke-virtual {v10}, Ljava/util/zip/CRC32;->getValue()J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v10

    move-wide v7, v10

    .line 75
    move-object v10, v2

    if-eqz v10, :cond_2

    .line 77
    move-object v10, v2

    :try_start_1
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 69
    :cond_2
    move-wide v10, v7

    move-wide v0, v10

    .end local v0    # "inputFile":Ljava/lang/String;
    :goto_0
    return-wide v0

    .line 58
    .restart local v0    # "inputFile":Ljava/lang/String;
    :cond_3
    move-object v10, v5

    move-object v11, v3

    const/4 v12, 0x0

    move v13, v4

    :try_start_2
    invoke-virtual {v10, v11, v12, v13}, Ljava/util/zip/CRC32;->update([BII)V

    .line 59
    move-object v10, v1

    if-eqz v10, :cond_1

    .line 60
    move-object v10, v1

    move v11, v4

    int-to-long v11, v11

    invoke-virtual {v10, v11, v12}, Lnet/lingala/zip4j/progress/ProgressMonitor;->updateWorkCompleted(J)V

    .line 61
    move-object v10, v1

    invoke-virtual {v10}, Lnet/lingala/zip4j/progress/ProgressMonitor;->isCancelAllTasks()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 62
    move-object v10, v1

    const/4 v11, 0x3

    invoke-virtual {v10, v11}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setResult(I)V

    .line 63
    move-object v10, v1

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setState(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 75
    move-object v10, v2

    if-eqz v10, :cond_4

    .line 77
    move-object v10, v2

    :try_start_3
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 64
    :cond_4
    const-wide/16 v10, 0x0

    move-wide v0, v10

    goto :goto_0

    .line 78
    :catch_0
    move-exception v10

    move-object v9, v10

    .line 79
    .local v9, "e":Ljava/io/IOException;
    new-instance v10, Lnet/lingala/zip4j/exception/ZipException;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const-string/jumbo v12, "error while closing the file after calculating crc"

    invoke-direct {v11, v12}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 78
    .end local v9    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v10

    move-object v9, v10

    .line 79
    .restart local v9    # "e":Ljava/io/IOException;
    new-instance v10, Lnet/lingala/zip4j/exception/ZipException;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const-string/jumbo v12, "error while closing the file after calculating crc"

    invoke-direct {v11, v12}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 70
    .end local v3    # "buff":[B
    .end local v4    # "readLen":I
    .end local v5    # "crc32":Ljava/util/zip/CRC32;
    .end local v9    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v10

    move-object v3, v10

    .line 71
    .local v3, "e":Ljava/io/IOException;
    :try_start_4
    new-instance v10, Lnet/lingala/zip4j/exception/ZipException;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v3

    invoke-direct {v11, v12}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 74
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    move-object v6, v10

    .line 75
    move-object v10, v2

    if-eqz v10, :cond_5

    .line 77
    move-object v10, v2

    :try_start_5
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 82
    :cond_5
    move-object v10, v6

    throw v10

    .line 72
    :catch_3
    move-exception v10

    move-object v3, v10

    .line 73
    .local v3, "e":Ljava/lang/Exception;
    :try_start_6
    new-instance v10, Lnet/lingala/zip4j/exception/ZipException;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v3

    invoke-direct {v11, v12}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 78
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v10

    move-object v9, v10

    .line 79
    .restart local v9    # "e":Ljava/io/IOException;
    new-instance v10, Lnet/lingala/zip4j/exception/ZipException;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const-string/jumbo v12, "error while closing the file after calculating crc"

    invoke-direct {v11, v12}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v10
.end method
