.class public Lnet/lingala/zip4j/unzip/Unzip;
.super Ljava/lang/Object;
.source "Unzip.java"


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
    .line 36
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/unzip/Unzip;
    move-object v1, p1

    .local v1, "zipModel":Lnet/lingala/zip4j/model/ZipModel;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 38
    move-object v2, v1

    if-nez v2, :cond_0

    .line 39
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "ZipModel is null"

    invoke-direct {v3, v4}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 42
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lnet/lingala/zip4j/unzip/Unzip;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    .line 43
    return-void
.end method

.method static access$0(Lnet/lingala/zip4j/unzip/Unzip;Ljava/util/ArrayList;Lnet/lingala/zip4j/model/UnzipParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 78
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-direct {v5, v6, v7, v8, v9}, Lnet/lingala/zip4j/unzip/Unzip;->initExtractAll(Ljava/util/ArrayList;Lnet/lingala/zip4j/model/UnzipParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;Ljava/lang/String;)V

    return-void
.end method

.method static access$1(Lnet/lingala/zip4j/unzip/Unzip;Lnet/lingala/zip4j/model/FileHeader;Ljava/lang/String;Lnet/lingala/zip4j/model/UnzipParameters;Ljava/lang/String;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 123
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    invoke-direct/range {v6 .. v11}, Lnet/lingala/zip4j/unzip/Unzip;->initExtractFile(Lnet/lingala/zip4j/model/FileHeader;Ljava/lang/String;Lnet/lingala/zip4j/model/UnzipParameters;Ljava/lang/String;Lnet/lingala/zip4j/progress/ProgressMonitor;)V

    return-void
.end method

.method private calculateTotalWork(Ljava/util/ArrayList;)J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 211
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/unzip/Unzip;
    move-object v1, p1

    .local v1, "fileHeaders":Ljava/util/ArrayList;
    move-object v6, v1

    if-nez v6, :cond_0

    .line 212
    new-instance v6, Lnet/lingala/zip4j/exception/ZipException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const-string/jumbo v8, "fileHeaders is null, cannot calculate total work"

    invoke-direct {v7, v8}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 215
    :cond_0
    const-wide/16 v6, 0x0

    move-wide v2, v6

    .line 217
    .local v2, "totalWork":J
    const/4 v6, 0x0

    move v4, v6

    .local v4, "i":I
    :goto_0
    move v6, v4

    move-object v7, v1

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v6, v7, :cond_1

    .line 228
    move-wide v6, v2

    move-wide v0, v6

    .end local v0    # "this":Lnet/lingala/zip4j/unzip/Unzip;
    return-wide v0

    .line 218
    .restart local v0    # "this":Lnet/lingala/zip4j/unzip/Unzip;
    :cond_1
    move-object v6, v1

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/lingala/zip4j/model/FileHeader;

    move-object v5, v6

    .line 219
    .local v5, "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    move-object v6, v5

    invoke-virtual {v6}, Lnet/lingala/zip4j/model/FileHeader;->getZip64ExtendedInfo()Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 220
    move-object v6, v5

    invoke-virtual {v6}, Lnet/lingala/zip4j/model/FileHeader;->getZip64ExtendedInfo()Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    move-result-object v6

    invoke-virtual {v6}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getUnCompressedSize()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_2

    .line 221
    move-wide v6, v2

    move-object v8, v5

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/FileHeader;->getZip64ExtendedInfo()Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    move-result-object v8

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getCompressedSize()J

    move-result-wide v8

    add-long/2addr v6, v8

    move-wide v2, v6

    .line 217
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 223
    :cond_2
    move-wide v6, v2

    move-object v8, v5

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/FileHeader;->getCompressedSize()J

    move-result-wide v8

    add-long/2addr v6, v8

    move-wide v2, v6

    goto :goto_1
.end method

.method private checkOutputDirectoryStructure(Lnet/lingala/zip4j/model/FileHeader;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 181
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/unzip/Unzip;
    move-object v1, p1

    .local v1, "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    move-object v2, p2

    .local v2, "outPath":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "newFileName":Ljava/lang/String;
    move-object v9, v1

    if-eqz v9, :cond_0

    move-object v9, v2

    invoke-static {v9}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 182
    :cond_0
    new-instance v9, Lnet/lingala/zip4j/exception/ZipException;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    const-string/jumbo v11, "Cannot check output directory structure...one of the parameters was null"

    invoke-direct {v10, v11}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 185
    :cond_1
    move-object v9, v1

    invoke-virtual {v9}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v9

    move-object v4, v9

    .line 187
    .local v4, "fileName":Ljava/lang/String;
    move-object v9, v3

    invoke-static {v9}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 188
    move-object v9, v3

    move-object v4, v9

    .line 191
    :cond_2
    move-object v9, v4

    invoke-static {v9}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 193
    .line 207
    :goto_0
    return-void

    .line 196
    :cond_3
    new-instance v9, Ljava/lang/StringBuffer;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    move-object v11, v2

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v5, v9

    .line 198
    .local v5, "compOutPath":Ljava/lang/String;
    :try_start_0
    new-instance v9, Ljava/io/File;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    move-object v11, v5

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v6, v9

    .line 199
    .local v6, "file":Ljava/io/File;
    move-object v9, v6

    invoke-virtual {v9}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v9

    move-object v7, v9

    .line 200
    .local v7, "parentDir":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    move-object v11, v7

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v8, v9

    .line 201
    .local v8, "parentDirFile":Ljava/io/File;
    move-object v9, v8

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_4

    .line 202
    move-object v9, v8

    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 207
    :cond_4
    goto :goto_0

    .line 204
    .end local v6    # "file":Ljava/io/File;
    .end local v7    # "parentDir":Ljava/lang/String;
    .end local v8    # "parentDirFile":Ljava/io/File;
    :catch_0
    move-exception v9

    move-object v6, v9

    .line 205
    .local v6, "e":Ljava/lang/Exception;
    new-instance v9, Lnet/lingala/zip4j/exception/ZipException;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    move-object v11, v6

    invoke-direct {v10, v11}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v9
.end method

.method private initExtractAll(Ljava/util/ArrayList;Lnet/lingala/zip4j/model/UnzipParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;Ljava/lang/String;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/unzip/Unzip;
    move-object v1, p1

    .local v1, "fileHeaders":Ljava/util/ArrayList;
    move-object v2, p2

    .local v2, "unzipParameters":Lnet/lingala/zip4j/model/UnzipParameters;
    move-object/from16 v3, p3

    .local v3, "progressMonitor":Lnet/lingala/zip4j/progress/ProgressMonitor;
    move-object/from16 v4, p4

    .local v4, "outPath":Ljava/lang/String;
    const/4 v7, 0x0

    move v5, v7

    .local v5, "i":I
    :goto_0
    move v7, v5

    move-object v8, v1

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v7, v8, :cond_0

    .line 90
    :goto_1
    return-void

    .line 82
    :cond_0
    move-object v7, v1

    move v8, v5

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/lingala/zip4j/model/FileHeader;

    move-object v6, v7

    .line 83
    .local v6, "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    move-object v7, v0

    move-object v8, v6

    move-object v9, v4

    move-object v10, v2

    const/4 v11, 0x0

    move-object v12, v3

    invoke-direct/range {v7 .. v12}, Lnet/lingala/zip4j/unzip/Unzip;->initExtractFile(Lnet/lingala/zip4j/model/FileHeader;Ljava/lang/String;Lnet/lingala/zip4j/model/UnzipParameters;Ljava/lang/String;Lnet/lingala/zip4j/progress/ProgressMonitor;)V

    .line 84
    move-object v7, v3

    invoke-virtual {v7}, Lnet/lingala/zip4j/progress/ProgressMonitor;->isCancelAllTasks()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 85
    move-object v7, v3

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setResult(I)V

    .line 86
    move-object v7, v3

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setState(I)V

    .line 87
    goto :goto_1

    .line 81
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method private initExtractFile(Lnet/lingala/zip4j/model/FileHeader;Ljava/lang/String;Lnet/lingala/zip4j/model/UnzipParameters;Ljava/lang/String;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/unzip/Unzip;
    move-object/from16 v1, p1

    .local v1, "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    move-object/from16 v2, p2

    .local v2, "outPath":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "unzipParameters":Lnet/lingala/zip4j/model/UnzipParameters;
    move-object/from16 v4, p4

    .local v4, "newFileName":Ljava/lang/String;
    move-object/from16 v5, p5

    .local v5, "progressMonitor":Lnet/lingala/zip4j/progress/ProgressMonitor;
    move-object v9, v1

    if-nez v9, :cond_0

    .line 127
    new-instance v9, Lnet/lingala/zip4j/exception/ZipException;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const-string/jumbo v11, "fileHeader is null"

    invoke-direct {v10, v11}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 131
    :cond_0
    move-object v9, v5

    move-object v10, v1

    :try_start_0
    invoke-virtual {v10}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setFileName(Ljava/lang/String;)V

    .line 133
    move-object v9, v2

    sget-object v10, Lnet/lingala/zip4j/util/InternalZipConstants;->FILE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 134
    new-instance v9, Ljava/lang/StringBuffer;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v2

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-object v10, Lnet/lingala/zip4j/util/InternalZipConstants;->FILE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v2, v9

    .line 139
    :cond_1
    move-object v9, v1

    invoke-virtual {v9}, Lnet/lingala/zip4j/model/FileHeader;->isDirectory()Z
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result v9

    if-eqz v9, :cond_4

    .line 141
    move-object v9, v1

    :try_start_1
    invoke-virtual {v9}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v9

    move-object v6, v9

    .line 142
    .local v6, "fileName":Ljava/lang/String;
    move-object v9, v6

    invoke-static {v9}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 143
    .line 173
    .end local v6    # "fileName":Ljava/lang/String;
    :goto_0
    return-void

    .line 145
    .restart local v6    # "fileName":Ljava/lang/String;
    :cond_2
    new-instance v9, Ljava/lang/StringBuffer;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v2

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v10, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v7, v9

    .line 146
    .local v7, "completePath":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v7

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v8, v9

    .line 147
    .local v8, "file":Ljava/io/File;
    move-object v9, v8

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_3

    .line 148
    move-object v9, v8

    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v9

    .line 173
    .end local v6    # "fileName":Ljava/lang/String;
    .end local v7    # "completePath":Ljava/lang/String;
    .end local v8    # "file":Ljava/io/File;
    :cond_3
    :goto_1
    goto :goto_0

    .line 150
    :catch_0
    move-exception v9

    move-object v6, v9

    .line 151
    .local v6, "e":Ljava/lang/Exception;
    move-object v9, v5

    move-object v10, v6

    :try_start_2
    invoke-virtual {v9, v10}, Lnet/lingala/zip4j/progress/ProgressMonitor;->endProgressMonitorError(Ljava/lang/Throwable;)V

    .line 152
    new-instance v9, Lnet/lingala/zip4j/exception/ZipException;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v6

    invoke-direct {v10, v11}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v9
    :try_end_2
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 166
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v9

    move-object v6, v9

    .line 167
    .local v6, "e":Lnet/lingala/zip4j/exception/ZipException;
    move-object v9, v5

    move-object v10, v6

    invoke-virtual {v9, v10}, Lnet/lingala/zip4j/progress/ProgressMonitor;->endProgressMonitorError(Ljava/lang/Throwable;)V

    .line 168
    move-object v9, v6

    throw v9

    .line 156
    .end local v6    # "e":Lnet/lingala/zip4j/exception/ZipException;
    :cond_4
    move-object v9, v0

    move-object v10, v1

    move-object v11, v2

    move-object v12, v4

    :try_start_3
    invoke-direct {v9, v10, v11, v12}, Lnet/lingala/zip4j/unzip/Unzip;->checkOutputDirectoryStructure(Lnet/lingala/zip4j/model/FileHeader;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    new-instance v9, Lnet/lingala/zip4j/unzip/UnzipEngine;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v0

    iget-object v11, v11, Lnet/lingala/zip4j/unzip/Unzip;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    move-object v12, v1

    invoke-direct {v10, v11, v12}, Lnet/lingala/zip4j/unzip/UnzipEngine;-><init>(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/model/FileHeader;)V
    :try_end_3
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-object v6, v9

    .line 160
    .local v6, "unzipEngine":Lnet/lingala/zip4j/unzip/UnzipEngine;
    move-object v9, v6

    move-object v10, v5

    move-object v11, v2

    move-object v12, v4

    move-object v13, v3

    :try_start_4
    invoke-virtual {v9, v10, v11, v12, v13}, Lnet/lingala/zip4j/unzip/UnzipEngine;->unzipFile(Lnet/lingala/zip4j/progress/ProgressMonitor;Ljava/lang/String;Ljava/lang/String;Lnet/lingala/zip4j/model/UnzipParameters;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 161
    :catch_2
    move-exception v9

    move-object v7, v9

    .line 162
    .local v7, "e":Ljava/lang/Exception;
    move-object v9, v5

    move-object v10, v7

    :try_start_5
    invoke-virtual {v9, v10}, Lnet/lingala/zip4j/progress/ProgressMonitor;->endProgressMonitorError(Ljava/lang/Throwable;)V

    .line 163
    new-instance v9, Lnet/lingala/zip4j/exception/ZipException;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v7

    invoke-direct {v10, v11}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v9
    :try_end_5
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 169
    .end local v6    # "unzipEngine":Lnet/lingala/zip4j/unzip/UnzipEngine;
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v9

    move-object v6, v9

    .line 170
    .local v6, "e":Ljava/lang/Exception;
    move-object v9, v5

    move-object v10, v6

    invoke-virtual {v9, v10}, Lnet/lingala/zip4j/progress/ProgressMonitor;->endProgressMonitorError(Ljava/lang/Throwable;)V

    .line 171
    new-instance v9, Lnet/lingala/zip4j/exception/ZipException;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v6

    invoke-direct {v10, v11}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v9
.end method


# virtual methods
.method public extractAll(Lnet/lingala/zip4j/model/UnzipParameters;Ljava/lang/String;Lnet/lingala/zip4j/progress/ProgressMonitor;Z)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 48
    move-object/from16 v1, p0

    .local v1, "this":Lnet/lingala/zip4j/unzip/Unzip;
    move-object/from16 v2, p1

    .local v2, "unzipParameters":Lnet/lingala/zip4j/model/UnzipParameters;
    move-object/from16 v3, p2

    .local v3, "outPath":Ljava/lang/String;
    move-object/from16 v4, p3

    .local v4, "progressMonitor":Lnet/lingala/zip4j/progress/ProgressMonitor;
    move/from16 v5, p4

    .local v5, "runInThread":Z
    move-object v9, v1

    iget-object v9, v9, Lnet/lingala/zip4j/unzip/Unzip;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v9}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v9

    move-object v6, v9

    .line 50
    .local v6, "centralDirectory":Lnet/lingala/zip4j/model/CentralDirectory;
    move-object v9, v6

    if-eqz v9, :cond_0

    .line 51
    move-object v9, v6

    invoke-virtual {v9}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v9

    if-nez v9, :cond_1

    .line 52
    :cond_0
    new-instance v9, Lnet/lingala/zip4j/exception/ZipException;

    move-object/from16 v17, v9

    move-object/from16 v9, v17

    move-object/from16 v10, v17

    const-string/jumbo v11, "invalid central directory in zipModel"

    invoke-direct {v10, v11}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 55
    :cond_1
    move-object v9, v6

    invoke-virtual {v9}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v9

    move-object v7, v9

    .line 57
    .local v7, "fileHeaders":Ljava/util/ArrayList;
    move-object v9, v4

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setCurrentOperation(I)V

    .line 58
    move-object v9, v4

    move-object v10, v1

    move-object v11, v7

    invoke-direct {v10, v11}, Lnet/lingala/zip4j/unzip/Unzip;->calculateTotalWork(Ljava/util/ArrayList;)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setTotalWork(J)V

    .line 59
    move-object v9, v4

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setState(I)V

    .line 61
    move v9, v5

    if-eqz v9, :cond_2

    .line 62
    new-instance v9, Lnet/lingala/zip4j/unzip/Unzip$1;

    move-object/from16 v17, v9

    move-object/from16 v9, v17

    move-object/from16 v10, v17

    move-object v11, v1

    const-string/jumbo v12, "Zip4j"

    move-object v13, v7

    move-object v14, v2

    move-object v15, v4

    move-object/from16 v16, v3

    invoke-direct/range {v10 .. v16}, Lnet/lingala/zip4j/unzip/Unzip$1;-><init>(Lnet/lingala/zip4j/unzip/Unzip;Ljava/lang/String;Ljava/util/ArrayList;Lnet/lingala/zip4j/model/UnzipParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;Ljava/lang/String;)V

    move-object v8, v9

    .line 71
    .local v8, "thread":Ljava/lang/Thread;
    move-object v9, v8

    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    .line 76
    .end local v8    # "thread":Ljava/lang/Thread;
    :goto_0
    return-void

    .line 73
    :cond_2
    move-object v9, v1

    move-object v10, v7

    move-object v11, v2

    move-object v12, v4

    move-object v13, v3

    invoke-direct {v9, v10, v11, v12, v13}, Lnet/lingala/zip4j/unzip/Unzip;->initExtractAll(Ljava/util/ArrayList;Lnet/lingala/zip4j/model/UnzipParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public extractFile(Lnet/lingala/zip4j/model/FileHeader;Ljava/lang/String;Lnet/lingala/zip4j/model/UnzipParameters;Ljava/lang/String;Lnet/lingala/zip4j/progress/ProgressMonitor;Z)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 95
    move-object/from16 v1, p0

    .local v1, "this":Lnet/lingala/zip4j/unzip/Unzip;
    move-object/from16 v2, p1

    .local v2, "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    move-object/from16 v3, p2

    .local v3, "outPath":Ljava/lang/String;
    move-object/from16 v4, p3

    .local v4, "unzipParameters":Lnet/lingala/zip4j/model/UnzipParameters;
    move-object/from16 v5, p4

    .local v5, "newFileName":Ljava/lang/String;
    move-object/from16 v6, p5

    .local v6, "progressMonitor":Lnet/lingala/zip4j/progress/ProgressMonitor;
    move/from16 v7, p6

    .local v7, "runInThread":Z
    move-object v9, v2

    if-nez v9, :cond_0

    .line 96
    new-instance v9, Lnet/lingala/zip4j/exception/ZipException;

    move-object/from16 v18, v9

    move-object/from16 v9, v18

    move-object/from16 v10, v18

    const-string/jumbo v11, "fileHeader is null"

    invoke-direct {v10, v11}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 99
    :cond_0
    move-object v9, v6

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setCurrentOperation(I)V

    .line 100
    move-object v9, v6

    move-object v10, v2

    invoke-virtual {v10}, Lnet/lingala/zip4j/model/FileHeader;->getCompressedSize()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setTotalWork(J)V

    .line 101
    move-object v9, v6

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setState(I)V

    .line 102
    move-object v9, v6

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setPercentDone(I)V

    .line 103
    move-object v9, v6

    move-object v10, v2

    invoke-virtual {v10}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setFileName(Ljava/lang/String;)V

    .line 105
    move v9, v7

    if-eqz v9, :cond_1

    .line 106
    new-instance v9, Lnet/lingala/zip4j/unzip/Unzip$2;

    move-object/from16 v18, v9

    move-object/from16 v9, v18

    move-object/from16 v10, v18

    move-object v11, v1

    const-string/jumbo v12, "Zip4j"

    move-object v13, v2

    move-object v14, v3

    move-object v15, v4

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    invoke-direct/range {v10 .. v17}, Lnet/lingala/zip4j/unzip/Unzip$2;-><init>(Lnet/lingala/zip4j/unzip/Unzip;Ljava/lang/String;Lnet/lingala/zip4j/model/FileHeader;Ljava/lang/String;Lnet/lingala/zip4j/model/UnzipParameters;Ljava/lang/String;Lnet/lingala/zip4j/progress/ProgressMonitor;)V

    move-object v8, v9

    .line 115
    .local v8, "thread":Ljava/lang/Thread;
    move-object v9, v8

    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    .line 121
    .end local v8    # "thread":Ljava/lang/Thread;
    :goto_0
    return-void

    .line 117
    :cond_1
    move-object v9, v1

    move-object v10, v2

    move-object v11, v3

    move-object v12, v4

    move-object v13, v5

    move-object v14, v6

    invoke-direct/range {v9 .. v14}, Lnet/lingala/zip4j/unzip/Unzip;->initExtractFile(Lnet/lingala/zip4j/model/FileHeader;Ljava/lang/String;Lnet/lingala/zip4j/model/UnzipParameters;Ljava/lang/String;Lnet/lingala/zip4j/progress/ProgressMonitor;)V

    .line 118
    move-object v9, v6

    invoke-virtual {v9}, Lnet/lingala/zip4j/progress/ProgressMonitor;->endProgressMonitorSuccess()V

    goto :goto_0
.end method

.method public getInputStream(Lnet/lingala/zip4j/model/FileHeader;)Lnet/lingala/zip4j/io/ZipInputStream;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 176
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/unzip/Unzip;
    move-object v1, p1

    .local v1, "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    new-instance v3, Lnet/lingala/zip4j/unzip/UnzipEngine;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    iget-object v5, v5, Lnet/lingala/zip4j/unzip/Unzip;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lnet/lingala/zip4j/unzip/UnzipEngine;-><init>(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/model/FileHeader;)V

    move-object v2, v3

    .line 177
    .local v2, "unzipEngine":Lnet/lingala/zip4j/unzip/UnzipEngine;
    move-object v3, v2

    invoke-virtual {v3}, Lnet/lingala/zip4j/unzip/UnzipEngine;->getInputStream()Lnet/lingala/zip4j/io/ZipInputStream;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lnet/lingala/zip4j/unzip/Unzip;
    return-object v0
.end method
