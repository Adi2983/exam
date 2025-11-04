.class public Lnet/lingala/zip4j/io/SplitOutputStream;
.super Ljava/io/OutputStream;
.source "SplitOutputStream.java"


# instance fields
.field private bytesWrittenForThisPart:J

.field private currSplitFileCounter:I

.field private outFile:Ljava/io/File;

.field private raf:Ljava/io/RandomAccessFile;

.field private splitLength:J

.field private zipFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/io/SplitOutputStream;
    move-object v1, p1

    .local v1, "file":Ljava/io/File;
    move-object v2, v0

    move-object v3, v1

    const-wide/16 v4, -0x1

    invoke-direct {v2, v3, v4, v5}, Lnet/lingala/zip4j/io/SplitOutputStream;-><init>(Ljava/io/File;J)V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/io/File;J)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/io/SplitOutputStream;
    move-object v1, p1

    .local v1, "file":Ljava/io/File;
    move-wide v2, p2

    .local v2, "splitLength":J
    move-object v4, v0

    invoke-direct {v4}, Ljava/io/OutputStream;-><init>()V

    .line 54
    move-wide v4, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    move-wide v4, v2

    const-wide/32 v6, 0x10000

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 55
    new-instance v4, Lnet/lingala/zip4j/exception/ZipException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string/jumbo v6, "split length less than minimum allowed split length of 65536 Bytes"

    invoke-direct {v5, v6}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 57
    :cond_0
    move-object v4, v0

    new-instance v5, Ljava/io/RandomAccessFile;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v1

    const-string/jumbo v8, "rw"

    invoke-direct {v6, v7, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v5, v4, Lnet/lingala/zip4j/io/SplitOutputStream;->raf:Ljava/io/RandomAccessFile;

    .line 58
    move-object v4, v0

    move-wide v5, v2

    iput-wide v5, v4, Lnet/lingala/zip4j/io/SplitOutputStream;->splitLength:J

    .line 59
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lnet/lingala/zip4j/io/SplitOutputStream;->outFile:Ljava/io/File;

    .line 60
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lnet/lingala/zip4j/io/SplitOutputStream;->zipFile:Ljava/io/File;

    .line 61
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Lnet/lingala/zip4j/io/SplitOutputStream;->currSplitFileCounter:I

    .line 62
    move-object v4, v0

    const-wide/16 v5, 0x0

    iput-wide v5, v4, Lnet/lingala/zip4j/io/SplitOutputStream;->bytesWrittenForThisPart:J

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/io/SplitOutputStream;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 41
    new-instance v3, Ljava/io/File;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {v2, v3}, Lnet/lingala/zip4j/io/SplitOutputStream;-><init>(Ljava/io/File;)V

    .line 42
    return-void

    .line 41
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/io/SplitOutputStream;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-wide v2, p2

    .local v2, "splitLength":J
    move-object v4, v0

    move-object v5, v1

    invoke-static {v5}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 50
    new-instance v5, Ljava/io/File;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v1

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    move-wide v6, v2

    invoke-direct {v4, v5, v6, v7}, Lnet/lingala/zip4j/io/SplitOutputStream;-><init>(Ljava/io/File;J)V

    .line 51
    return-void

    .line 50
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private isHeaderData([B)Z
    .locals 10

    .prologue
    .line 143
    move-object v1, p0

    .local v1, "this":Lnet/lingala/zip4j/io/SplitOutputStream;
    move-object v2, p1

    .local v2, "buff":[B
    move-object v6, v2

    if-eqz v6, :cond_0

    move-object v6, v2

    array-length v6, v6

    const/4 v7, 0x4

    if-ge v6, v7, :cond_1

    .line 144
    :cond_0
    const/4 v6, 0x0

    move v1, v6

    .line 159
    .end local v1    # "this":Lnet/lingala/zip4j/io/SplitOutputStream;
    :goto_0
    return v1

    .line 147
    .restart local v1    # "this":Lnet/lingala/zip4j/io/SplitOutputStream;
    :cond_1
    move-object v6, v2

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lnet/lingala/zip4j/util/Raw;->readIntLittleEndian([BI)I

    move-result v6

    move v3, v6

    .line 148
    .local v3, "signature":I
    invoke-static {}, Lnet/lingala/zip4j/util/Zip4jUtil;->getAllHeaderSignatures()[J

    move-result-object v6

    move-object v4, v6

    .line 149
    .local v4, "allHeaderSignatures":[J
    move-object v6, v4

    if-eqz v6, :cond_2

    move-object v6, v4

    array-length v6, v6

    if-lez v6, :cond_2

    .line 150
    const/4 v6, 0x0

    move v5, v6

    .local v5, "i":I
    :goto_1
    move v6, v5

    move-object v7, v4

    array-length v7, v7

    if-lt v6, v7, :cond_3

    .line 159
    .end local v5    # "i":I
    :cond_2
    const/4 v6, 0x0

    move v1, v6

    goto :goto_0

    .line 152
    .restart local v5    # "i":I
    :cond_3
    move-object v6, v4

    move v7, v5

    aget-wide v6, v6, v7

    const-wide/32 v8, 0x8074b50

    cmp-long v6, v6, v8

    if-eqz v6, :cond_4

    .line 153
    move-object v6, v4

    move v7, v5

    aget-wide v6, v6, v7

    move v8, v3

    int-to-long v8, v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_4

    .line 154
    const/4 v6, 0x1

    move v1, v6

    goto :goto_0

    .line 150
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method private startNextSplitFile()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/io/SplitOutputStream;
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Lnet/lingala/zip4j/io/SplitOutputStream;->outFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lnet/lingala/zip4j/util/Zip4jUtil;->getZipFileNameWithoutExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 114
    .local v1, "zipFileWithoutExt":Ljava/lang/String;
    const/4 v5, 0x0

    move-object v2, v5

    .line 115
    .local v2, "currSplitFile":Ljava/io/File;
    move-object v5, v0

    iget-object v5, v5, Lnet/lingala/zip4j/io/SplitOutputStream;->zipFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 116
    .local v3, "zipFileName":Ljava/lang/String;
    move-object v5, v0

    iget-object v5, v5, Lnet/lingala/zip4j/io/SplitOutputStream;->outFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    const-string/jumbo v5, ""

    :goto_0
    move-object v4, v5

    .line 118
    .local v4, "parentPath":Ljava/lang/String;
    move-object v5, v0

    iget v5, v5, Lnet/lingala/zip4j/io/SplitOutputStream;->currSplitFileCounter:I

    const/16 v6, 0x9

    if-ge v5, v6, :cond_1

    .line 119
    new-instance v5, Ljava/io/File;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    new-instance v7, Ljava/lang/StringBuffer;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v4

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string/jumbo v8, ".z0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    move-object v8, v0

    iget v8, v8, Lnet/lingala/zip4j/io/SplitOutputStream;->currSplitFileCounter:I

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v5

    .line 124
    :goto_1
    move-object v5, v0

    iget-object v5, v5, Lnet/lingala/zip4j/io/SplitOutputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V

    .line 126
    move-object v5, v2

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 127
    new-instance v5, Ljava/io/IOException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    new-instance v7, Ljava/lang/StringBuffer;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    const-string/jumbo v9, "split file: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v8, v2

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string/jumbo v8, " already exists in the current directory, cannot rename this file"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    .end local v1    # "zipFileWithoutExt":Ljava/lang/String;
    .end local v2    # "currSplitFile":Ljava/io/File;
    .end local v3    # "zipFileName":Ljava/lang/String;
    .end local v4    # "parentPath":Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 138
    .local v1, "e":Lnet/lingala/zip4j/exception/ZipException;
    new-instance v5, Ljava/io/IOException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v1

    invoke-virtual {v7}, Lnet/lingala/zip4j/exception/ZipException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 116
    .local v1, "zipFileWithoutExt":Ljava/lang/String;
    .restart local v2    # "currSplitFile":Ljava/io/File;
    .restart local v3    # "zipFileName":Ljava/lang/String;
    :cond_0
    :try_start_1
    new-instance v5, Ljava/lang/StringBuffer;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    iget-object v7, v7, Lnet/lingala/zip4j/io/SplitOutputStream;->outFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "file.separator"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 121
    .restart local v4    # "parentPath":Ljava/lang/String;
    :cond_1
    new-instance v5, Ljava/io/File;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    new-instance v7, Ljava/lang/StringBuffer;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v4

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string/jumbo v8, ".z"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    move-object v8, v0

    iget v8, v8, Lnet/lingala/zip4j/io/SplitOutputStream;->currSplitFileCounter:I

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v5

    goto/16 :goto_1

    .line 130
    :cond_2
    move-object v5, v0

    iget-object v5, v5, Lnet/lingala/zip4j/io/SplitOutputStream;->zipFile:Ljava/io/File;

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 131
    new-instance v5, Ljava/io/IOException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string/jumbo v7, "cannot rename newly created split file"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 134
    :cond_3
    move-object v5, v0

    new-instance v6, Ljava/io/File;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v3

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v6, v5, Lnet/lingala/zip4j/io/SplitOutputStream;->zipFile:Ljava/io/File;

    .line 135
    move-object v5, v0

    new-instance v6, Ljava/io/RandomAccessFile;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    iget-object v8, v8, Lnet/lingala/zip4j/io/SplitOutputStream;->zipFile:Ljava/io/File;

    const-string/jumbo v9, "rw"

    invoke-direct {v7, v8, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v6, v5, Lnet/lingala/zip4j/io/SplitOutputStream;->raf:Ljava/io/RandomAccessFile;

    .line 136
    move-object v5, v0

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget v6, v6, Lnet/lingala/zip4j/io/SplitOutputStream;->currSplitFileCounter:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lnet/lingala/zip4j/io/SplitOutputStream;->currSplitFileCounter:I
    :try_end_1
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_1 .. :try_end_1} :catch_0

    .line 140
    return-void
.end method


# virtual methods
.method public checkBuffSizeAndStartNextSplitFile(I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 170
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/io/SplitOutputStream;
    move v1, p1

    .local v1, "bufferSize":I
    move v3, v1

    if-gez v3, :cond_0

    .line 171
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "negative buffersize for checkBuffSizeAndStartNextSplitFile"

    invoke-direct {v4, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 174
    :cond_0
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Lnet/lingala/zip4j/io/SplitOutputStream;->isBuffSizeFitForCurrSplitFile(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 176
    move-object v3, v0

    :try_start_0
    invoke-direct {v3}, Lnet/lingala/zip4j/io/SplitOutputStream;->startNextSplitFile()V

    .line 177
    move-object v3, v0

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lnet/lingala/zip4j/io/SplitOutputStream;->bytesWrittenForThisPart:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    const/4 v3, 0x1

    move v0, v3

    .line 184
    .end local v0    # "this":Lnet/lingala/zip4j/io/SplitOutputStream;
    :goto_0
    return v0

    .line 179
    .restart local v0    # "this":Lnet/lingala/zip4j/io/SplitOutputStream;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 180
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v2

    invoke-direct {v4, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 184
    .end local v2    # "e":Ljava/io/IOException;
    :cond_1
    const/4 v3, 0x0

    move v0, v3

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
    .line 212
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/io/SplitOutputStream;
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/io/SplitOutputStream;->raf:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_0

    .line 213
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/io/SplitOutputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 214
    :cond_0
    return-void
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 217
    return-void
.end method

.method public getCurrSplitFileCounter()I
    .locals 2

    .prologue
    .line 232
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/io/SplitOutputStream;
    move-object v1, v0

    iget v1, v1, Lnet/lingala/zip4j/io/SplitOutputStream;->currSplitFileCounter:I

    move v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/io/SplitOutputStream;
    return v0
.end method

.method public getFilePointer()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 220
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/io/SplitOutputStream;
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/io/SplitOutputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/io/SplitOutputStream;
    return-wide v0
.end method

.method public getSplitLength()J
    .locals 3

    .prologue
    .line 228
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/io/SplitOutputStream;
    move-object v1, v0

    iget-wide v1, v1, Lnet/lingala/zip4j/io/SplitOutputStream;->splitLength:J

    move-wide v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/io/SplitOutputStream;
    return-wide v0
.end method

.method public isBuffSizeFitForCurrSplitFile(I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 195
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/io/SplitOutputStream;
    move v1, p1

    .local v1, "bufferSize":I
    move v2, v1

    if-gez v2, :cond_0

    .line 196
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string/jumbo v4, "negative buffersize for isBuffSizeFitForCurrSplitFile"

    invoke-direct {v3, v4}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 199
    :cond_0
    move-object v2, v0

    iget-wide v2, v2, Lnet/lingala/zip4j/io/SplitOutputStream;->splitLength:J

    const-wide/32 v4, 0x10000

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2

    .line 200
    move-object v2, v0

    iget-wide v2, v2, Lnet/lingala/zip4j/io/SplitOutputStream;->bytesWrittenForThisPart:J

    move v4, v1

    int-to-long v4, v4

    add-long/2addr v2, v4

    move-object v4, v0

    iget-wide v4, v4, Lnet/lingala/zip4j/io/SplitOutputStream;->splitLength:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    const/4 v2, 0x1

    move v0, v2

    .line 203
    .end local v0    # "this":Lnet/lingala/zip4j/io/SplitOutputStream;
    :goto_0
    return v0

    .line 200
    .restart local v0    # "this":Lnet/lingala/zip4j/io/SplitOutputStream;
    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 203
    :cond_2
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0
.end method

.method public isSplitZipFile()Z
    .locals 6

    .prologue
    .line 224
    move-object v1, p0

    .local v1, "this":Lnet/lingala/zip4j/io/SplitOutputStream;
    move-object v2, v1

    iget-wide v2, v2, Lnet/lingala/zip4j/io/SplitOutputStream;->splitLength:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    move v1, v2

    .end local v1    # "this":Lnet/lingala/zip4j/io/SplitOutputStream;
    :goto_0
    return v1

    .restart local v1    # "this":Lnet/lingala/zip4j/io/SplitOutputStream;
    :cond_0
    const/4 v2, 0x0

    move v1, v2

    goto :goto_0
.end method

.method public seek(J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 208
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/io/SplitOutputStream;
    move-wide v1, p1

    .local v1, "pos":J
    move-object v3, v0

    iget-object v3, v3, Lnet/lingala/zip4j/io/SplitOutputStream;->raf:Ljava/io/RandomAccessFile;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 209
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
    .line 66
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/io/SplitOutputStream;
    move v1, p1

    .local v1, "b":I
    const/4 v3, 0x1

    new-array v3, v3, [B

    move-object v2, v3

    .line 67
    .local v2, "buff":[B
    move-object v3, v2

    const/4 v4, 0x0

    move v5, v1

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 68
    move-object v3, v0

    move-object v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Lnet/lingala/zip4j/io/SplitOutputStream;->write([BII)V

    .line 69
    return-void
.end method

.method public write([B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/io/SplitOutputStream;
    move-object v1, p1

    .local v1, "b":[B
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    move-object v5, v1

    array-length v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lnet/lingala/zip4j/io/SplitOutputStream;->write([BII)V

    .line 73
    return-void
.end method

.method public write([BII)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    move-object v1, p0

    .local v1, "this":Lnet/lingala/zip4j/io/SplitOutputStream;
    move-object/from16 v2, p1

    .local v2, "b":[B
    move/from16 v3, p2

    .local v3, "off":I
    move/from16 v4, p3

    .local v4, "len":I
    move v5, v4

    if-gtz v5, :cond_0

    .line 109
    :goto_0
    return-void

    .line 78
    :cond_0
    move-object v5, v1

    iget-wide v5, v5, Lnet/lingala/zip4j/io/SplitOutputStream;->splitLength:J

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-eqz v5, :cond_5

    .line 80
    move-object v5, v1

    iget-wide v5, v5, Lnet/lingala/zip4j/io/SplitOutputStream;->splitLength:J

    const-wide/32 v7, 0x10000

    cmp-long v5, v5, v7

    if-gez v5, :cond_1

    .line 81
    new-instance v5, Ljava/io/IOException;

    move-object v14, v5

    move-object v5, v14

    move-object v6, v14

    const-string/jumbo v7, "split length less than minimum allowed split length of 65536 Bytes"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 84
    :cond_1
    move-object v5, v1

    iget-wide v5, v5, Lnet/lingala/zip4j/io/SplitOutputStream;->bytesWrittenForThisPart:J

    move-object v7, v1

    iget-wide v7, v7, Lnet/lingala/zip4j/io/SplitOutputStream;->splitLength:J

    cmp-long v5, v5, v7

    if-ltz v5, :cond_2

    .line 85
    move-object v5, v1

    invoke-direct {v5}, Lnet/lingala/zip4j/io/SplitOutputStream;->startNextSplitFile()V

    .line 86
    move-object v5, v1

    iget-object v5, v5, Lnet/lingala/zip4j/io/SplitOutputStream;->raf:Ljava/io/RandomAccessFile;

    move-object v6, v2

    move v7, v3

    move v8, v4

    invoke-virtual {v5, v6, v7, v8}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 87
    move-object v5, v1

    move v6, v4

    int-to-long v6, v6

    iput-wide v6, v5, Lnet/lingala/zip4j/io/SplitOutputStream;->bytesWrittenForThisPart:J

    .line 109
    :goto_1
    goto :goto_0

    .line 88
    :cond_2
    move-object v5, v1

    iget-wide v5, v5, Lnet/lingala/zip4j/io/SplitOutputStream;->bytesWrittenForThisPart:J

    move v7, v4

    int-to-long v7, v7

    add-long/2addr v5, v7

    move-object v7, v1

    iget-wide v7, v7, Lnet/lingala/zip4j/io/SplitOutputStream;->splitLength:J

    cmp-long v5, v5, v7

    if-lez v5, :cond_4

    .line 89
    move-object v5, v1

    move-object v6, v2

    invoke-direct {v5, v6}, Lnet/lingala/zip4j/io/SplitOutputStream;->isHeaderData([B)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 90
    move-object v5, v1

    invoke-direct {v5}, Lnet/lingala/zip4j/io/SplitOutputStream;->startNextSplitFile()V

    .line 91
    move-object v5, v1

    iget-object v5, v5, Lnet/lingala/zip4j/io/SplitOutputStream;->raf:Ljava/io/RandomAccessFile;

    move-object v6, v2

    move v7, v3

    move v8, v4

    invoke-virtual {v5, v6, v7, v8}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 92
    move-object v5, v1

    move v6, v4

    int-to-long v6, v6

    iput-wide v6, v5, Lnet/lingala/zip4j/io/SplitOutputStream;->bytesWrittenForThisPart:J

    goto :goto_1

    .line 94
    :cond_3
    move-object v5, v1

    iget-object v5, v5, Lnet/lingala/zip4j/io/SplitOutputStream;->raf:Ljava/io/RandomAccessFile;

    move-object v6, v2

    move v7, v3

    move-object v8, v1

    iget-wide v8, v8, Lnet/lingala/zip4j/io/SplitOutputStream;->splitLength:J

    move-object v10, v1

    iget-wide v10, v10, Lnet/lingala/zip4j/io/SplitOutputStream;->bytesWrittenForThisPart:J

    sub-long/2addr v8, v10

    long-to-int v8, v8

    invoke-virtual {v5, v6, v7, v8}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 95
    move-object v5, v1

    invoke-direct {v5}, Lnet/lingala/zip4j/io/SplitOutputStream;->startNextSplitFile()V

    .line 96
    move-object v5, v1

    iget-object v5, v5, Lnet/lingala/zip4j/io/SplitOutputStream;->raf:Ljava/io/RandomAccessFile;

    move-object v6, v2

    move v7, v3

    move-object v8, v1

    iget-wide v8, v8, Lnet/lingala/zip4j/io/SplitOutputStream;->splitLength:J

    move-object v10, v1

    iget-wide v10, v10, Lnet/lingala/zip4j/io/SplitOutputStream;->bytesWrittenForThisPart:J

    sub-long/2addr v8, v10

    long-to-int v8, v8

    add-int/2addr v7, v8

    move v8, v4

    int-to-long v8, v8

    move-object v10, v1

    iget-wide v10, v10, Lnet/lingala/zip4j/io/SplitOutputStream;->splitLength:J

    move-object v12, v1

    iget-wide v12, v12, Lnet/lingala/zip4j/io/SplitOutputStream;->bytesWrittenForThisPart:J

    sub-long/2addr v10, v12

    sub-long/2addr v8, v10

    long-to-int v8, v8

    invoke-virtual {v5, v6, v7, v8}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 97
    move-object v5, v1

    move v6, v4

    int-to-long v6, v6

    move-object v8, v1

    iget-wide v8, v8, Lnet/lingala/zip4j/io/SplitOutputStream;->splitLength:J

    move-object v10, v1

    iget-wide v10, v10, Lnet/lingala/zip4j/io/SplitOutputStream;->bytesWrittenForThisPart:J

    sub-long/2addr v8, v10

    sub-long/2addr v6, v8

    iput-wide v6, v5, Lnet/lingala/zip4j/io/SplitOutputStream;->bytesWrittenForThisPart:J

    goto :goto_1

    .line 100
    :cond_4
    move-object v5, v1

    iget-object v5, v5, Lnet/lingala/zip4j/io/SplitOutputStream;->raf:Ljava/io/RandomAccessFile;

    move-object v6, v2

    move v7, v3

    move v8, v4

    invoke-virtual {v5, v6, v7, v8}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 101
    move-object v5, v1

    move-object v14, v5

    move-object v5, v14

    move-object v6, v14

    iget-wide v6, v6, Lnet/lingala/zip4j/io/SplitOutputStream;->bytesWrittenForThisPart:J

    move v8, v4

    int-to-long v8, v8

    add-long/2addr v6, v8

    iput-wide v6, v5, Lnet/lingala/zip4j/io/SplitOutputStream;->bytesWrittenForThisPart:J

    goto :goto_1

    .line 105
    :cond_5
    move-object v5, v1

    iget-object v5, v5, Lnet/lingala/zip4j/io/SplitOutputStream;->raf:Ljava/io/RandomAccessFile;

    move-object v6, v2

    move v7, v3

    move v8, v4

    invoke-virtual {v5, v6, v7, v8}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 106
    move-object v5, v1

    move-object v14, v5

    move-object v5, v14

    move-object v6, v14

    iget-wide v6, v6, Lnet/lingala/zip4j/io/SplitOutputStream;->bytesWrittenForThisPart:J

    move v8, v4

    int-to-long v8, v8

    add-long/2addr v6, v8

    iput-wide v6, v5, Lnet/lingala/zip4j/io/SplitOutputStream;->bytesWrittenForThisPart:J

    goto/16 :goto_1
.end method
