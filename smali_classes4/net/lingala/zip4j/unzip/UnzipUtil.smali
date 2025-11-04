.class public Lnet/lingala/zip4j/unzip/UnzipUtil;
.super Ljava/lang/Object;
.source "UnzipUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 11
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/unzip/UnzipUtil;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyFileAttributes(Lnet/lingala/zip4j/model/FileHeader;Ljava/io/File;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 14
    move-object v0, p0

    .local v0, "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    move-object v1, p1

    .local v1, "file":Ljava/io/File;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lnet/lingala/zip4j/unzip/UnzipUtil;->applyFileAttributes(Lnet/lingala/zip4j/model/FileHeader;Ljava/io/File;Lnet/lingala/zip4j/model/UnzipParameters;)V

    .line 15
    return-void
.end method

.method public static applyFileAttributes(Lnet/lingala/zip4j/model/FileHeader;Ljava/io/File;Lnet/lingala/zip4j/model/UnzipParameters;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    move-object v1, p1

    .local v1, "file":Ljava/io/File;
    move-object v2, p2

    .local v2, "unzipParameters":Lnet/lingala/zip4j/model/UnzipParameters;
    move-object v3, v0

    if-nez v3, :cond_0

    .line 21
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const-string/jumbo v5, "cannot set file properties: file header is null"

    invoke-direct {v4, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 24
    :cond_0
    move-object v3, v1

    if-nez v3, :cond_1

    .line 25
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const-string/jumbo v5, "cannot set file properties: output file is null"

    invoke-direct {v4, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 28
    :cond_1
    move-object v3, v1

    invoke-static {v3}, Lnet/lingala/zip4j/util/Zip4jUtil;->checkFileExists(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 29
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const-string/jumbo v5, "cannot set file properties: file doesnot exist"

    invoke-direct {v4, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 32
    :cond_2
    move-object v3, v2

    if-eqz v3, :cond_3

    move-object v3, v2

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/UnzipParameters;->isIgnoreDateTimeAttributes()Z

    move-result v3

    if-nez v3, :cond_4

    .line 33
    :cond_3
    move-object v3, v0

    move-object v4, v1

    invoke-static {v3, v4}, Lnet/lingala/zip4j/unzip/UnzipUtil;->setFileLastModifiedTime(Lnet/lingala/zip4j/model/FileHeader;Ljava/io/File;)V

    .line 36
    :cond_4
    move-object v3, v2

    if-nez v3, :cond_5

    .line 37
    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-static/range {v3 .. v8}, Lnet/lingala/zip4j/unzip/UnzipUtil;->setFileAttributes(Lnet/lingala/zip4j/model/FileHeader;Ljava/io/File;ZZZZ)V

    .line 48
    :goto_0
    return-void

    .line 39
    :cond_5
    move-object v3, v2

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/UnzipParameters;->isIgnoreAllFileAttributes()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 40
    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lnet/lingala/zip4j/unzip/UnzipUtil;->setFileAttributes(Lnet/lingala/zip4j/model/FileHeader;Ljava/io/File;ZZZZ)V

    goto :goto_0

    .line 42
    :cond_6
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/UnzipParameters;->isIgnoreReadOnlyFileAttribute()Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v5, 0x0

    .line 43
    :goto_1
    move-object v6, v2

    invoke-virtual {v6}, Lnet/lingala/zip4j/model/UnzipParameters;->isIgnoreHiddenFileAttribute()Z

    move-result v6

    if-eqz v6, :cond_8

    const/4 v6, 0x0

    .line 44
    :goto_2
    move-object v7, v2

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/UnzipParameters;->isIgnoreArchiveFileAttribute()Z

    move-result v7

    if-eqz v7, :cond_9

    const/4 v7, 0x0

    .line 45
    :goto_3
    move-object v8, v2

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/UnzipParameters;->isIgnoreSystemFileAttribute()Z

    move-result v8

    if-eqz v8, :cond_a

    const/4 v8, 0x0

    .line 42
    :goto_4
    invoke-static/range {v3 .. v8}, Lnet/lingala/zip4j/unzip/UnzipUtil;->setFileAttributes(Lnet/lingala/zip4j/model/FileHeader;Ljava/io/File;ZZZZ)V

    goto :goto_0

    :cond_7
    const/4 v5, 0x1

    goto :goto_1

    .line 43
    :cond_8
    const/4 v6, 0x1

    goto :goto_2

    .line 44
    :cond_9
    const/4 v7, 0x1

    goto :goto_3

    .line 45
    :cond_a
    const/4 v8, 0x1

    goto :goto_4
.end method

.method private static setFileAttributes(Lnet/lingala/zip4j/model/FileHeader;Ljava/io/File;ZZZZ)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    move-object v1, p1

    .local v1, "file":Ljava/io/File;
    move v2, p2

    .local v2, "setReadOnly":Z
    move v3, p3

    .local v3, "setHidden":Z
    move/from16 v4, p4

    .local v4, "setArchive":Z
    move/from16 v5, p5

    .local v5, "setSystem":Z
    move-object v8, v0

    if-nez v8, :cond_0

    .line 53
    new-instance v8, Lnet/lingala/zip4j/exception/ZipException;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    const-string/jumbo v10, "invalid file header. cannot set file attributes"

    invoke-direct {v9, v10}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 56
    :cond_0
    move-object v8, v0

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/FileHeader;->getExternalFileAttr()[B

    move-result-object v8

    move-object v6, v8

    .line 57
    .local v6, "externalAttrbs":[B
    move-object v8, v6

    if-nez v8, :cond_1

    .line 58
    .line 101
    :goto_0
    return-void

    .line 61
    :cond_1
    move-object v8, v6

    const/4 v9, 0x0

    aget-byte v8, v8, v9

    move v7, v8

    .line 62
    .local v7, "atrrib":I
    move v8, v7

    sparse-switch v8, :sswitch_data_0

    .line 101
    :cond_2
    :goto_1
    goto :goto_0

    .line 64
    :sswitch_0
    move v8, v2

    if-eqz v8, :cond_2

    move-object v8, v1

    invoke-static {v8}, Lnet/lingala/zip4j/util/Zip4jUtil;->setFileReadOnly(Ljava/io/File;)V

    .line 65
    goto :goto_1

    .line 68
    :sswitch_1
    move v8, v3

    if-eqz v8, :cond_2

    move-object v8, v1

    invoke-static {v8}, Lnet/lingala/zip4j/util/Zip4jUtil;->setFileHidden(Ljava/io/File;)V

    .line 69
    goto :goto_1

    .line 72
    :sswitch_2
    move v8, v4

    if-eqz v8, :cond_2

    move-object v8, v1

    invoke-static {v8}, Lnet/lingala/zip4j/util/Zip4jUtil;->setFileArchive(Ljava/io/File;)V

    .line 73
    goto :goto_1

    .line 75
    :sswitch_3
    move v8, v2

    if-eqz v8, :cond_3

    move-object v8, v1

    invoke-static {v8}, Lnet/lingala/zip4j/util/Zip4jUtil;->setFileReadOnly(Ljava/io/File;)V

    .line 76
    :cond_3
    move v8, v3

    if-eqz v8, :cond_2

    move-object v8, v1

    invoke-static {v8}, Lnet/lingala/zip4j/util/Zip4jUtil;->setFileHidden(Ljava/io/File;)V

    .line 77
    goto :goto_1

    .line 79
    :sswitch_4
    move v8, v4

    if-eqz v8, :cond_4

    move-object v8, v1

    invoke-static {v8}, Lnet/lingala/zip4j/util/Zip4jUtil;->setFileArchive(Ljava/io/File;)V

    .line 80
    :cond_4
    move v8, v2

    if-eqz v8, :cond_2

    move-object v8, v1

    invoke-static {v8}, Lnet/lingala/zip4j/util/Zip4jUtil;->setFileReadOnly(Ljava/io/File;)V

    .line 81
    goto :goto_1

    .line 84
    :sswitch_5
    move v8, v4

    if-eqz v8, :cond_5

    move-object v8, v1

    invoke-static {v8}, Lnet/lingala/zip4j/util/Zip4jUtil;->setFileArchive(Ljava/io/File;)V

    .line 85
    :cond_5
    move v8, v3

    if-eqz v8, :cond_2

    move-object v8, v1

    invoke-static {v8}, Lnet/lingala/zip4j/util/Zip4jUtil;->setFileHidden(Ljava/io/File;)V

    .line 86
    goto :goto_1

    .line 88
    :sswitch_6
    move v8, v4

    if-eqz v8, :cond_6

    move-object v8, v1

    invoke-static {v8}, Lnet/lingala/zip4j/util/Zip4jUtil;->setFileArchive(Ljava/io/File;)V

    .line 89
    :cond_6
    move v8, v2

    if-eqz v8, :cond_7

    move-object v8, v1

    invoke-static {v8}, Lnet/lingala/zip4j/util/Zip4jUtil;->setFileReadOnly(Ljava/io/File;)V

    .line 90
    :cond_7
    move v8, v3

    if-eqz v8, :cond_2

    move-object v8, v1

    invoke-static {v8}, Lnet/lingala/zip4j/util/Zip4jUtil;->setFileHidden(Ljava/io/File;)V

    .line 91
    goto :goto_1

    .line 93
    :sswitch_7
    move v8, v2

    if-eqz v8, :cond_8

    move-object v8, v1

    invoke-static {v8}, Lnet/lingala/zip4j/util/Zip4jUtil;->setFileReadOnly(Ljava/io/File;)V

    .line 94
    :cond_8
    move v8, v3

    if-eqz v8, :cond_9

    move-object v8, v1

    invoke-static {v8}, Lnet/lingala/zip4j/util/Zip4jUtil;->setFileHidden(Ljava/io/File;)V

    .line 95
    :cond_9
    move v8, v5

    if-eqz v8, :cond_2

    move-object v8, v1

    invoke-static {v8}, Lnet/lingala/zip4j/util/Zip4jUtil;->setFileSystemMode(Ljava/io/File;)V

    .line 96
    goto :goto_1

    .line 62
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_3
        0x12 -> :sswitch_1
        0x20 -> :sswitch_2
        0x21 -> :sswitch_4
        0x22 -> :sswitch_5
        0x23 -> :sswitch_6
        0x26 -> :sswitch_7
        0x30 -> :sswitch_2
        0x32 -> :sswitch_5
    .end sparse-switch
.end method

.method private static setFileLastModifiedTime(Lnet/lingala/zip4j/model/FileHeader;Ljava/io/File;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 104
    move-object v1, p0

    .local v1, "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    move-object v2, p1

    .local v2, "file":Ljava/io/File;
    move-object v3, v1

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/FileHeader;->getLastModFileTime()I

    move-result v3

    if-gtz v3, :cond_0

    .line 105
    .line 111
    :goto_0
    return-void

    .line 108
    :cond_0
    move-object v3, v2

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 109
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/FileHeader;->getLastModFileTime()I

    move-result v4

    invoke-static {v4}, Lnet/lingala/zip4j/util/Zip4jUtil;->dosToJavaTme(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/io/File;->setLastModified(J)Z

    move-result v3

    .line 111
    :cond_1
    goto :goto_0
.end method
