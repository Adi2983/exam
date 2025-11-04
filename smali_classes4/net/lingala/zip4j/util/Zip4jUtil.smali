.class public Lnet/lingala/zip4j/util/Zip4jUtil;
.super Ljava/lang/Object;
.source "Zip4jUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/util/Zip4jUtil;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkArrayListTypes(Ljava/util/ArrayList;I)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 515
    move-object v0, p0

    .local v0, "sourceList":Ljava/util/ArrayList;
    move v1, p1

    .local v1, "type":I
    move-object v4, v0

    if-nez v4, :cond_0

    .line 516
    new-instance v4, Lnet/lingala/zip4j/exception/ZipException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string/jumbo v6, "input arraylist is null, cannot check types"

    invoke-direct {v5, v6}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 519
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_1

    .line 520
    const/4 v4, 0x1

    move v0, v4

    .line 545
    .end local v0    # "sourceList":Ljava/util/ArrayList;
    :goto_0
    return v0

    .line 523
    .restart local v0    # "sourceList":Ljava/util/ArrayList;
    :cond_1
    const/4 v4, 0x0

    move v2, v4

    .line 525
    .local v2, "invalidFound":Z
    move v4, v1

    packed-switch v4, :pswitch_data_0

    .line 545
    :goto_1
    move v4, v2

    if-eqz v4, :cond_6

    const/4 v4, 0x0

    :goto_2
    move v0, v4

    goto :goto_0

    .line 527
    :pswitch_0
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_3
    move v4, v3

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v4, v5, :cond_2

    .line 533
    goto :goto_1

    .line 528
    :cond_2
    move-object v4, v0

    move v5, v3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/io/File;

    if-nez v4, :cond_3

    .line 529
    const/4 v4, 0x1

    move v2, v4

    .line 530
    goto :goto_1

    .line 527
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 535
    .end local v3    # "i":I
    :pswitch_1
    const/4 v4, 0x0

    move v3, v4

    .restart local v3    # "i":I
    :goto_4
    move v4, v3

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v4, v5, :cond_4

    .line 541
    goto :goto_1

    .line 536
    :cond_4
    move-object v4, v0

    move v5, v3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/String;

    if-nez v4, :cond_5

    .line 537
    const/4 v4, 0x1

    move v2, v4

    .line 538
    goto :goto_1

    .line 535
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 545
    .end local v3    # "i":I
    :cond_6
    const/4 v4, 0x1

    goto :goto_2

    .line 525
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static checkFileExists(Ljava/io/File;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "file":Ljava/io/File;
    move-object v1, v0

    if-nez v1, :cond_0

    .line 129
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string/jumbo v3, "cannot check if file exists: input file is null"

    invoke-direct {v2, v3}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 131
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    move v0, v1

    .end local v0    # "file":Ljava/io/File;
    return v0
.end method

.method public static checkFileExists(Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "path":Ljava/lang/String;
    move-object v2, v0

    invoke-static {v2}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 120
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "path is null"

    invoke-direct {v3, v4}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 123
    :cond_0
    new-instance v2, Ljava/io/File;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 124
    .local v1, "file":Ljava/io/File;
    move-object v2, v1

    invoke-static {v2}, Lnet/lingala/zip4j/util/Zip4jUtil;->checkFileExists(Ljava/io/File;)Z

    move-result v2

    move v0, v2

    .end local v0    # "path":Ljava/lang/String;
    return v0
.end method

.method public static checkFileReadAccess(Ljava/lang/String;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "path":Ljava/lang/String;
    move-object v2, v0

    invoke-static {v2}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 86
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const-string/jumbo v4, "path is null"

    invoke-direct {v3, v4}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 89
    :cond_0
    move-object v2, v0

    invoke-static {v2}, Lnet/lingala/zip4j/util/Zip4jUtil;->checkFileExists(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 90
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    new-instance v4, Ljava/lang/StringBuffer;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string/jumbo v6, "file does not exist: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 94
    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/File;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 95
    .local v1, "file":Ljava/io/File;
    move-object v2, v1

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    move v0, v2

    .end local v0    # "path":Ljava/lang/String;
    return v0

    .line 96
    .end local v1    # "file":Ljava/io/File;
    .restart local v0    # "path":Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 97
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const-string/jumbo v4, "cannot read zip file"

    invoke-direct {v3, v4}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static checkFileWriteAccess(Ljava/lang/String;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "path":Ljava/lang/String;
    move-object v2, v0

    invoke-static {v2}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 103
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const-string/jumbo v4, "path is null"

    invoke-direct {v3, v4}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 106
    :cond_0
    move-object v2, v0

    invoke-static {v2}, Lnet/lingala/zip4j/util/Zip4jUtil;->checkFileExists(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 107
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    new-instance v4, Ljava/lang/StringBuffer;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string/jumbo v6, "file does not exist: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 111
    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/File;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 112
    .local v1, "file":Ljava/io/File;
    move-object v2, v1

    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    move v0, v2

    .end local v0    # "path":Ljava/lang/String;
    return v0

    .line 113
    .end local v1    # "file":Ljava/io/File;
    .restart local v0    # "path":Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 114
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const-string/jumbo v4, "cannot read zip file"

    invoke-direct {v3, v4}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static checkOutputFolder(Ljava/lang/String;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "path":Ljava/lang/String;
    move-object v3, v0

    invoke-static {v3}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 44
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    new-instance v5, Ljava/lang/NullPointerException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string/jumbo v7, "output path is null"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 47
    :cond_0
    new-instance v3, Ljava/io/File;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    .line 49
    .local v1, "file":Ljava/io/File;
    move-object v3, v1

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 51
    move-object v3, v1

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_1

    .line 52
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const-string/jumbo v5, "output folder is not valid"

    invoke-direct {v4, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 55
    :cond_1
    move-object v3, v1

    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-nez v3, :cond_4

    .line 56
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const-string/jumbo v5, "no write access to output folder"

    invoke-direct {v4, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 60
    :cond_2
    move-object v3, v1

    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v3

    .line 61
    move-object v3, v1

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_3

    .line 62
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const-string/jumbo v5, "output folder is not valid"

    invoke-direct {v4, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 77
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const-string/jumbo v5, "Cannot create destination folder"

    invoke-direct {v4, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 65
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    move-object v3, v1

    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-nez v3, :cond_4

    .line 66
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const-string/jumbo v5, "no write access to destination folder"

    invoke-direct {v4, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 81
    :cond_4
    const/4 v3, 0x1

    move v0, v3

    .end local v0    # "path":Ljava/lang/String;
    return v0
.end method

.method public static convertCharset(Ljava/lang/String;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 439
    move-object v0, p0

    .local v0, "str":Ljava/lang/String;
    const/4 v3, 0x0

    :try_start_0
    check-cast v3, [B

    move-object v1, v3

    .line 440
    .local v1, "converted":[B
    move-object v3, v0

    invoke-static {v3}, Lnet/lingala/zip4j/util/Zip4jUtil;->detectCharSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 441
    .local v2, "charSet":Ljava/lang/String;
    move-object v3, v2

    const-string/jumbo v4, "Cp850"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 442
    move-object v3, v0

    const-string/jumbo v4, "Cp850"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    move-object v1, v3

    .line 448
    :goto_0
    move-object v3, v1

    move-object v0, v3

    .line 451
    .end local v0    # "str":Ljava/lang/String;
    .end local v1    # "converted":[B
    .end local v2    # "charSet":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 443
    .restart local v0    # "str":Ljava/lang/String;
    .restart local v1    # "converted":[B
    .restart local v2    # "charSet":Ljava/lang/String;
    :cond_0
    move-object v3, v2

    const-string/jumbo v4, "UTF8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 444
    move-object v3, v0

    const-string/jumbo v4, "UTF8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    move-object v1, v3

    goto :goto_0

    .line 446
    :cond_1
    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    move-object v1, v3

    goto :goto_0

    .line 450
    .end local v1    # "converted":[B
    .end local v2    # "charSet":Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 451
    .local v1, "err":Ljava/io/UnsupportedEncodingException;
    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    move-object v0, v3

    goto :goto_1

    .line 452
    .end local v1    # "err":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 453
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static decodeFileName([BZ)Ljava/lang/String;
    .locals 8

    .prologue
    .line 467
    move-object v0, p0

    .local v0, "data":[B
    move v1, p1

    .local v1, "isUTF8":Z
    move v3, v1

    if-eqz v3, :cond_0

    .line 469
    :try_start_0
    new-instance v3, Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    const-string/jumbo v6, "UTF8"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 474
    .end local v0    # "data":[B
    :goto_0
    return-object v0

    .line 470
    .restart local v0    # "data":[B
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 471
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    move-object v0, v3

    goto :goto_0

    .line 474
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_0
    move-object v3, v0

    invoke-static {v3}, Lnet/lingala/zip4j/util/Zip4jUtil;->getCp850EncodedString([B)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method public static detectCharSet(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 556
    move-object v0, p0

    .local v0, "str":Ljava/lang/String;
    move-object v3, v0

    if-nez v3, :cond_0

    .line 557
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string/jumbo v5, "input string is null, cannot detect charset"

    invoke-direct {v4, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 561
    :cond_0
    move-object v3, v0

    :try_start_0
    const-string/jumbo v4, "Cp850"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    move-object v1, v3

    .line 562
    .local v1, "byteString":[B
    new-instance v3, Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    const-string/jumbo v6, "Cp850"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object v2, v3

    .line 564
    .local v2, "tempString":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-eqz v3, :cond_1

    .line 565
    const-string/jumbo v3, "Cp850"

    move-object v0, v3

    .line 579
    .end local v0    # "str":Ljava/lang/String;
    .end local v2    # "tempString":Ljava/lang/String;
    .local v1, "e":Ljava/lang/Exception;
    :goto_0
    return-object v0

    .line 568
    .restart local v0    # "str":Ljava/lang/String;
    .local v1, "byteString":[B
    .restart local v2    # "tempString":Ljava/lang/String;
    :cond_1
    move-object v3, v0

    :try_start_1
    const-string/jumbo v4, "UTF8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    move-object v1, v3

    .line 569
    new-instance v3, Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    const-string/jumbo v6, "UTF8"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object v2, v3

    .line 571
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    if-eqz v3, :cond_2

    .line 572
    const-string/jumbo v3, "UTF8"

    move-object v0, v3

    goto :goto_0

    .line 575
    :cond_2
    :try_start_2
    sget-object v3, Lnet/lingala/zip4j/util/InternalZipConstants;->CHARSET_DEFAULT:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v0, v3

    goto :goto_0

    .line 576
    .end local v1    # "byteString":[B
    .end local v2    # "tempString":Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 577
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v3, Lnet/lingala/zip4j/util/InternalZipConstants;->CHARSET_DEFAULT:Ljava/lang/String;

    move-object v0, v3

    goto :goto_0

    .line 578
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 579
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lnet/lingala/zip4j/util/InternalZipConstants;->CHARSET_DEFAULT:Ljava/lang/String;

    move-object v0, v3

    goto :goto_0
.end method

.method public static dosToJavaTme(I)J
    .locals 15

    .prologue
    .line 280
    move v0, p0

    .local v0, "dosTime":I
    const/4 v8, 0x2

    move v9, v0

    const/16 v10, 0x1f

    and-int/lit8 v9, v9, 0x1f

    mul-int/2addr v8, v9

    move v1, v8

    .line 281
    .local v1, "sec":I
    move v8, v0

    const/4 v9, 0x5

    shr-int/lit8 v8, v8, 0x5

    const/16 v9, 0x3f

    and-int/lit8 v8, v8, 0x3f

    move v2, v8

    .line 282
    .local v2, "min":I
    move v8, v0

    const/16 v9, 0xb

    shr-int/lit8 v8, v8, 0xb

    const/16 v9, 0x1f

    and-int/lit8 v8, v8, 0x1f

    move v3, v8

    .line 283
    .local v3, "hrs":I
    move v8, v0

    const/16 v9, 0x10

    shr-int/lit8 v8, v8, 0x10

    const/16 v9, 0x1f

    and-int/lit8 v8, v8, 0x1f

    move v4, v8

    .line 284
    .local v4, "day":I
    move v8, v0

    const/16 v9, 0x15

    shr-int/lit8 v8, v8, 0x15

    const/16 v9, 0xf

    and-int/lit8 v8, v8, 0xf

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    move v5, v8

    .line 285
    .local v5, "mon":I
    move v8, v0

    const/16 v9, 0x19

    shr-int/lit8 v8, v8, 0x19

    const/16 v9, 0x7f

    and-int/lit8 v8, v8, 0x7f

    const/16 v9, 0x7bc

    add-int/lit16 v8, v8, 0x7bc

    move v6, v8

    .line 287
    .local v6, "year":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    move-object v7, v8

    .line 288
    .local v7, "cal":Ljava/util/Calendar;
    move-object v8, v7

    move v9, v6

    move v10, v5

    move v11, v4

    move v12, v3

    move v13, v2

    move v14, v1

    invoke-virtual/range {v8 .. v14}, Ljava/util/Calendar;->set(IIIIII)V

    .line 289
    move-object v8, v7

    const/16 v9, 0xe

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 290
    move-object v8, v7

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    move-wide v0, v8

    .end local v0    # "dosTime":I
    return-wide v0
.end method

.method public static getAbsoluteFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 499
    move-object v0, p0

    .local v0, "filePath":Ljava/lang/String;
    move-object v2, v0

    invoke-static {v2}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 500
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "filePath is null or empty, cannot get absolute file path"

    invoke-direct {v3, v4}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 503
    :cond_0
    new-instance v2, Ljava/io/File;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 504
    .local v1, "file":Ljava/io/File;
    move-object v2, v1

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "filePath":Ljava/lang/String;
    return-object v0
.end method

.method public static getAllHeaderSignatures()[J
    .locals 6

    .prologue
    .line 757
    const/16 v2, 0xb

    new-array v2, v2, [J

    move-object v1, v2

    .line 759
    .local v1, "allSigs":[J
    move-object v2, v1

    const/4 v3, 0x0

    const-wide/32 v4, 0x4034b50

    aput-wide v4, v2, v3

    .line 760
    move-object v2, v1

    const/4 v3, 0x1

    const-wide/32 v4, 0x8074b50

    aput-wide v4, v2, v3

    .line 761
    move-object v2, v1

    const/4 v3, 0x2

    const-wide/32 v4, 0x2014b50    # 1.6619997E-316

    aput-wide v4, v2, v3

    .line 762
    move-object v2, v1

    const/4 v3, 0x3

    const-wide/32 v4, 0x6054b50

    aput-wide v4, v2, v3

    .line 763
    move-object v2, v1

    const/4 v3, 0x4

    const-wide/32 v4, 0x5054b50

    aput-wide v4, v2, v3

    .line 764
    move-object v2, v1

    const/4 v3, 0x5

    const-wide/32 v4, 0x8064b50

    aput-wide v4, v2, v3

    .line 765
    move-object v2, v1

    const/4 v3, 0x6

    const-wide/32 v4, 0x8074b50

    aput-wide v4, v2, v3

    .line 766
    move-object v2, v1

    const/4 v3, 0x7

    const-wide/32 v4, 0x7064b50

    aput-wide v4, v2, v3

    .line 767
    move-object v2, v1

    const/16 v3, 0x8

    const-wide/32 v4, 0x6064b50

    aput-wide v4, v2, v3

    .line 768
    move-object v2, v1

    const/16 v3, 0x9

    const-wide/16 v4, 0x1

    aput-wide v4, v2, v3

    .line 769
    move-object v2, v1

    const/16 v3, 0xa

    const-wide/32 v4, 0x9901

    aput-wide v4, v2, v3

    .line 771
    move-object v2, v1

    move-object v1, v2

    .end local v1    # "allSigs":[J
    return-object v1
.end method

.method public static getCp850EncodedString([B)Ljava/lang/String;
    .locals 7

    .prologue
    .line 486
    move-object v0, p0

    .local v0, "data":[B
    :try_start_0
    new-instance v2, Ljava/lang/String;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string/jumbo v5, "Cp850"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 487
    .local v1, "retString":Ljava/lang/String;
    move-object v2, v1

    move-object v0, v2

    .line 489
    .end local v0    # "data":[B
    .end local v1    # "retString":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 488
    .restart local v0    # "data":[B
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 489
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/String;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    move-object v0, v2

    goto :goto_0
.end method

.method public static getEncodedStringLength(Ljava/lang/String;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 592
    move-object v0, p0

    .local v0, "str":Ljava/lang/String;
    move-object v2, v0

    invoke-static {v2}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 593
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "input string is null, cannot calculate encoded String length"

    invoke-direct {v3, v4}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 596
    :cond_0
    move-object v2, v0

    invoke-static {v2}, Lnet/lingala/zip4j/util/Zip4jUtil;->detectCharSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 597
    .local v1, "charset":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lnet/lingala/zip4j/util/Zip4jUtil;->getEncodedStringLength(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    move v0, v2

    .end local v0    # "str":Ljava/lang/String;
    return v0
.end method

.method public static getEncodedStringLength(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 608
    move-object v0, p0

    .local v0, "str":Ljava/lang/String;
    move-object v1, p1

    .local v1, "charset":Ljava/lang/String;
    move-object v4, v0

    invoke-static {v4}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 609
    new-instance v4, Lnet/lingala/zip4j/exception/ZipException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string/jumbo v6, "input string is null, cannot calculate encoded String length"

    invoke-direct {v5, v6}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 612
    :cond_0
    move-object v4, v1

    invoke-static {v4}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 613
    new-instance v4, Lnet/lingala/zip4j/exception/ZipException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string/jumbo v6, "encoding is not defined, cannot calculate string length"

    invoke-direct {v5, v6}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 616
    :cond_1
    const/4 v4, 0x0

    move-object v2, v4

    .line 619
    .local v2, "byteBuffer":Ljava/nio/ByteBuffer;
    move-object v4, v1

    :try_start_0
    const-string/jumbo v5, "Cp850"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 620
    move-object v4, v0

    const-string/jumbo v5, "Cp850"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    move-object v2, v4

    .line 632
    :goto_0
    move-object v4, v2

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    move v0, v4

    .end local v0    # "str":Ljava/lang/String;
    return v0

    .line 621
    .restart local v0    # "str":Ljava/lang/String;
    :cond_2
    move-object v4, v1

    :try_start_1
    const-string/jumbo v5, "UTF8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 622
    move-object v4, v0

    const-string/jumbo v5, "UTF8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    move-object v2, v4

    goto :goto_0

    .line 624
    :cond_3
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    move-object v2, v4

    goto :goto_0

    .line 626
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 627
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    move-object v2, v4

    goto :goto_0

    .line 628
    .end local v3    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v4

    move-object v3, v4

    .line 629
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Lnet/lingala/zip4j/exception/ZipException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v3

    invoke-direct {v5, v6}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public static getFileHeader(Lnet/lingala/zip4j/model/ZipModel;Ljava/lang/String;)Lnet/lingala/zip4j/model/FileHeader;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 294
    move-object v0, p0

    .local v0, "zipModel":Lnet/lingala/zip4j/model/ZipModel;
    move-object v1, p1

    .local v1, "fileName":Ljava/lang/String;
    move-object v3, v0

    if-nez v3, :cond_0

    .line 295
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    new-instance v5, Ljava/lang/StringBuffer;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string/jumbo v7, "zip model is null, cannot determine file header for fileName: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 298
    :cond_0
    move-object v3, v1

    invoke-static {v3}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 299
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    new-instance v5, Ljava/lang/StringBuffer;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string/jumbo v7, "file name is null, cannot determine file header for fileName: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 302
    :cond_1
    const/4 v3, 0x0

    move-object v2, v3

    .line 303
    .local v2, "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    move-object v3, v0

    move-object v4, v1

    invoke-static {v3, v4}, Lnet/lingala/zip4j/util/Zip4jUtil;->getFileHeaderWithExactMatch(Lnet/lingala/zip4j/model/ZipModel;Ljava/lang/String;)Lnet/lingala/zip4j/model/FileHeader;

    move-result-object v3

    move-object v2, v3

    .line 305
    move-object v3, v2

    if-nez v3, :cond_2

    .line 306
    move-object v3, v1

    const-string/jumbo v4, "\\\\"

    const-string/jumbo v5, "/"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 307
    move-object v3, v0

    move-object v4, v1

    invoke-static {v3, v4}, Lnet/lingala/zip4j/util/Zip4jUtil;->getFileHeaderWithExactMatch(Lnet/lingala/zip4j/model/ZipModel;Ljava/lang/String;)Lnet/lingala/zip4j/model/FileHeader;

    move-result-object v3

    move-object v2, v3

    .line 309
    move-object v3, v2

    if-nez v3, :cond_2

    .line 310
    move-object v3, v1

    const-string/jumbo v4, "/"

    const-string/jumbo v5, "\\\\"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 311
    move-object v3, v0

    move-object v4, v1

    invoke-static {v3, v4}, Lnet/lingala/zip4j/util/Zip4jUtil;->getFileHeaderWithExactMatch(Lnet/lingala/zip4j/model/ZipModel;Ljava/lang/String;)Lnet/lingala/zip4j/model/FileHeader;

    move-result-object v3

    move-object v2, v3

    .line 315
    :cond_2
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "zipModel":Lnet/lingala/zip4j/model/ZipModel;
    return-object v0
.end method

.method public static getFileHeaderWithExactMatch(Lnet/lingala/zip4j/model/ZipModel;Ljava/lang/String;)Lnet/lingala/zip4j/model/FileHeader;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 319
    move-object v0, p0

    .local v0, "zipModel":Lnet/lingala/zip4j/model/ZipModel;
    move-object v1, p1

    .local v1, "fileName":Ljava/lang/String;
    move-object v6, v0

    if-nez v6, :cond_0

    .line 320
    new-instance v6, Lnet/lingala/zip4j/exception/ZipException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    new-instance v8, Ljava/lang/StringBuffer;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    const-string/jumbo v10, "zip model is null, cannot determine file header with exact match for fileName: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 323
    :cond_0
    move-object v6, v1

    invoke-static {v6}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 324
    new-instance v6, Lnet/lingala/zip4j/exception/ZipException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    new-instance v8, Ljava/lang/StringBuffer;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    const-string/jumbo v10, "file name is null, cannot determine file header with exact match for fileName: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 327
    :cond_1
    move-object v6, v0

    invoke-virtual {v6}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v6

    if-nez v6, :cond_2

    .line 328
    new-instance v6, Lnet/lingala/zip4j/exception/ZipException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    new-instance v8, Ljava/lang/StringBuffer;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    const-string/jumbo v10, "central directory is null, cannot determine file header with exact match for fileName: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 331
    :cond_2
    move-object v6, v0

    invoke-virtual {v6}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v6

    invoke-virtual {v6}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v6

    if-nez v6, :cond_3

    .line 332
    new-instance v6, Lnet/lingala/zip4j/exception/ZipException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    new-instance v8, Ljava/lang/StringBuffer;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    const-string/jumbo v10, "file Headers are null, cannot determine file header with exact match for fileName: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 335
    :cond_3
    move-object v6, v0

    invoke-virtual {v6}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v6

    invoke-virtual {v6}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gtz v6, :cond_4

    .line 336
    const/4 v6, 0x0

    move-object v0, v6

    .line 351
    .end local v0    # "zipModel":Lnet/lingala/zip4j/model/ZipModel;
    :goto_0
    return-object v0

    .line 338
    .restart local v0    # "zipModel":Lnet/lingala/zip4j/model/ZipModel;
    :cond_4
    move-object v6, v0

    invoke-virtual {v6}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v6

    invoke-virtual {v6}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v6

    move-object v2, v6

    .line 339
    .local v2, "fileHeaders":Ljava/util/ArrayList;
    const/4 v6, 0x0

    move v3, v6

    .local v3, "i":I
    :goto_1
    move v6, v3

    move-object v7, v2

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v6, v7, :cond_5

    .line 351
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0

    .line 340
    :cond_5
    move-object v6, v2

    move v7, v3

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/lingala/zip4j/model/FileHeader;

    move-object v4, v6

    .line 341
    .local v4, "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    move-object v6, v4

    invoke-virtual {v6}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 342
    .local v5, "fileNameForHdr":Ljava/lang/String;
    move-object v6, v5

    invoke-static {v6}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 343
    .line 339
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 346
    :cond_7
    move-object v6, v1

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 347
    move-object v6, v4

    move-object v0, v6

    goto :goto_0
.end method

.method public static getFileLengh(Ljava/io/File;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 244
    move-object v1, p0

    .local v1, "file":Ljava/io/File;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 245
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "input file is null, cannot calculate file length"

    invoke-direct {v3, v4}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 248
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 249
    const-wide/16 v2, -0x1

    move-wide v1, v2

    .line 252
    .end local v1    # "file":Ljava/io/File;
    :goto_0
    return-wide v1

    .restart local v1    # "file":Ljava/io/File;
    :cond_1
    move-object v2, v1

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    move-wide v1, v2

    goto :goto_0
.end method

.method public static getFileLengh(Ljava/lang/String;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 236
    move-object v0, p0

    .local v0, "file":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v1}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 237
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string/jumbo v3, "invalid file name"

    invoke-direct {v2, v3}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 240
    :cond_0
    new-instance v1, Ljava/io/File;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lnet/lingala/zip4j/util/Zip4jUtil;->getFileLengh(Ljava/io/File;)J

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "file":Ljava/lang/String;
    return-wide v0
.end method

.method public static getFileNameFromFilePath(Ljava/io/File;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 224
    move-object v0, p0

    .local v0, "file":Ljava/io/File;
    move-object v1, v0

    if-nez v1, :cond_0

    .line 225
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string/jumbo v3, "input file is null, cannot get file name"

    invoke-direct {v2, v3}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 228
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 229
    const/4 v1, 0x0

    move-object v0, v1

    .line 232
    .end local v0    # "file":Ljava/io/File;
    :goto_0
    return-object v0

    .restart local v0    # "file":Ljava/io/File;
    :cond_1
    move-object v1, v0

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public static getFilesInDirectoryRec(Ljava/io/File;Z)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 396
    move-object v0, p0

    .local v0, "path":Ljava/io/File;
    move v1, p1

    .local v1, "readHiddenFiles":Z
    move-object v8, v0

    if-nez v8, :cond_0

    .line 397
    new-instance v8, Lnet/lingala/zip4j/exception/ZipException;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    const-string/jumbo v10, "input path is null, cannot read files in the directory"

    invoke-direct {v9, v10}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 400
    :cond_0
    new-instance v8, Ljava/util/ArrayList;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v8

    .line 401
    .local v2, "result":Ljava/util/ArrayList;
    move-object v8, v0

    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    move-object v3, v8

    .line 402
    .local v3, "filesAndDirs":[Ljava/io/File;
    move-object v8, v3

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    move-object v4, v8

    .line 404
    .local v4, "filesDirs":Ljava/util/List;
    move-object v8, v0

    invoke-virtual {v8}, Ljava/io/File;->canRead()Z

    move-result v8

    if-nez v8, :cond_1

    .line 405
    move-object v8, v2

    move-object v0, v8

    .line 419
    .end local v0    # "path":Ljava/io/File;
    :goto_0
    return-object v0

    .line 408
    .restart local v0    # "path":Ljava/io/File;
    :cond_1
    const/4 v8, 0x0

    move v5, v8

    .local v5, "i":I
    :goto_1
    move v8, v5

    move-object v9, v4

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-lt v8, v9, :cond_2

    .line 419
    move-object v8, v2

    move-object v0, v8

    goto :goto_0

    .line 409
    :cond_2
    move-object v8, v4

    move v9, v5

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/File;

    move-object v6, v8

    .line 410
    .local v6, "file":Ljava/io/File;
    move-object v8, v6

    invoke-virtual {v8}, Ljava/io/File;->isHidden()Z

    move-result v8

    if-eqz v8, :cond_3

    move v8, v1

    if-nez v8, :cond_3

    .line 411
    move-object v8, v2

    move-object v0, v8

    goto :goto_0

    .line 413
    :cond_3
    move-object v8, v2

    move-object v9, v6

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 414
    move-object v8, v6

    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 415
    move-object v8, v6

    move v9, v1

    invoke-static {v8, v9}, Lnet/lingala/zip4j/util/Zip4jUtil;->getFilesInDirectoryRec(Ljava/io/File;Z)Ljava/util/ArrayList;

    move-result-object v8

    move-object v7, v8

    .line 416
    .local v7, "deeperList":Ljava/util/List;
    move-object v8, v2

    move-object v9, v7

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-result v8

    .line 408
    .end local v7    # "deeperList":Ljava/util/List;
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method public static getIndexOfFileHeader(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/model/FileHeader;)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 357
    move-object v0, p0

    .local v0, "zipModel":Lnet/lingala/zip4j/model/ZipModel;
    move-object v1, p1

    .local v1, "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    move-object v7, v0

    if-eqz v7, :cond_0

    move-object v7, v1

    if-nez v7, :cond_1

    .line 358
    :cond_0
    new-instance v7, Lnet/lingala/zip4j/exception/ZipException;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    const-string/jumbo v9, "input parameters is null, cannot determine index of file header"

    invoke-direct {v8, v9}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 361
    :cond_1
    move-object v7, v0

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v7

    if-nez v7, :cond_2

    .line 362
    new-instance v7, Lnet/lingala/zip4j/exception/ZipException;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    const-string/jumbo v9, "central directory is null, ccannot determine index of file header"

    invoke-direct {v8, v9}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 365
    :cond_2
    move-object v7, v0

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v7

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v7

    if-nez v7, :cond_3

    .line 366
    new-instance v7, Lnet/lingala/zip4j/exception/ZipException;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    const-string/jumbo v9, "file Headers are null, cannot determine index of file header"

    invoke-direct {v8, v9}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 369
    :cond_3
    move-object v7, v0

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v7

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-gtz v7, :cond_4

    .line 370
    const/4 v7, -0x1

    move v0, v7

    .line 390
    .end local v0    # "zipModel":Lnet/lingala/zip4j/model/ZipModel;
    :goto_0
    return v0

    .line 372
    .restart local v0    # "zipModel":Lnet/lingala/zip4j/model/ZipModel;
    :cond_4
    move-object v7, v1

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v7

    move-object v2, v7

    .line 374
    .local v2, "fileName":Ljava/lang/String;
    move-object v7, v2

    invoke-static {v7}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 375
    new-instance v7, Lnet/lingala/zip4j/exception/ZipException;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    const-string/jumbo v9, "file name in file header is empty or null, cannot determine index of file header"

    invoke-direct {v8, v9}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 378
    :cond_5
    move-object v7, v0

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v7

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v7

    move-object v3, v7

    .line 379
    .local v3, "fileHeaders":Ljava/util/ArrayList;
    const/4 v7, 0x0

    move v4, v7

    .local v4, "i":I
    :goto_1
    move v7, v4

    move-object v8, v3

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v7, v8, :cond_6

    .line 390
    const/4 v7, -0x1

    move v0, v7

    goto :goto_0

    .line 380
    :cond_6
    move-object v7, v3

    move v8, v4

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/lingala/zip4j/model/FileHeader;

    move-object v5, v7

    .line 381
    .local v5, "fileHeaderTmp":Lnet/lingala/zip4j/model/FileHeader;
    move-object v7, v5

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 382
    .local v6, "fileNameForHdr":Ljava/lang/String;
    move-object v7, v6

    invoke-static {v7}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 383
    .line 379
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 386
    :cond_8
    move-object v7, v2

    move-object v8, v6

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 387
    move v7, v4

    move v0, v7

    goto :goto_0
.end method

.method public static getLastModifiedFileTime(Ljava/io/File;Ljava/util/TimeZone;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 212
    move-object v0, p0

    .local v0, "file":Ljava/io/File;
    move-object v1, p1

    .local v1, "timeZone":Ljava/util/TimeZone;
    move-object v2, v0

    if-nez v2, :cond_0

    .line 213
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "input file is null, cannot read last modified file time"

    invoke-direct {v3, v4}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 216
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 217
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "input file does not exist, cannot read last modified file time"

    invoke-direct {v3, v4}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 220
    :cond_1
    move-object v2, v0

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    move-wide v0, v2

    .end local v0    # "file":Ljava/io/File;
    return-wide v0
.end method

.method public static getRelativeFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 703
    move-object v0, p0

    .local v0, "file":Ljava/lang/String;
    move-object v1, p1

    .local v1, "rootFolderInZip":Ljava/lang/String;
    move-object/from16 v2, p2

    .local v2, "rootFolderPath":Ljava/lang/String;
    move-object v9, v0

    invoke-static {v9}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 704
    new-instance v9, Lnet/lingala/zip4j/exception/ZipException;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const-string/jumbo v11, "input file path/name is empty, cannot calculate relative file name"

    invoke-direct {v10, v11}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 707
    :cond_0
    const/4 v9, 0x0

    move-object v3, v9

    .line 709
    .local v3, "fileName":Ljava/lang/String;
    move-object v9, v2

    invoke-static {v9}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 711
    new-instance v9, Ljava/io/File;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v2

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v4, v9

    .line 713
    .local v4, "rootFolderFile":Ljava/io/File;
    move-object v9, v4

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    move-object v5, v9

    .line 715
    .local v5, "rootFolderFileRef":Ljava/lang/String;
    move-object v9, v5

    sget-object v10, Lnet/lingala/zip4j/util/InternalZipConstants;->FILE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 716
    new-instance v9, Ljava/lang/StringBuffer;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v5

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-object v10, Lnet/lingala/zip4j/util/InternalZipConstants;->FILE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v5, v9

    .line 719
    :cond_1
    move-object v9, v0

    move-object v10, v5

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    move-object v6, v9

    .line 720
    .local v6, "tmpFileName":Ljava/lang/String;
    move-object v9, v6

    const-string/jumbo v10, "file.separator"

    invoke-static {v10}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 721
    move-object v9, v6

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    move-object v6, v9

    .line 724
    :cond_2
    new-instance v9, Ljava/io/File;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v0

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v7, v9

    .line 726
    .local v7, "tmpFile":Ljava/io/File;
    move-object v9, v7

    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 727
    move-object v9, v6

    const-string/jumbo v10, "\\\\"

    const-string/jumbo v11, "/"

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v6, v9

    .line 728
    new-instance v9, Ljava/lang/StringBuffer;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v6

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string/jumbo v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v6, v9

    .line 735
    :goto_0
    move-object v9, v6

    move-object v3, v9

    .line 745
    .end local v4    # "rootFolderFile":Ljava/io/File;
    .end local v5    # "rootFolderFileRef":Ljava/lang/String;
    .end local v6    # "tmpFileName":Ljava/lang/String;
    .end local v7    # "tmpFile":Ljava/io/File;
    :goto_1
    move-object v9, v1

    invoke-static {v9}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 746
    new-instance v9, Ljava/lang/StringBuffer;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v1

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v3, v9

    .line 749
    :cond_3
    move-object v9, v3

    invoke-static {v9}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 750
    new-instance v9, Lnet/lingala/zip4j/exception/ZipException;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const-string/jumbo v11, "Error determining file name"

    invoke-direct {v10, v11}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 730
    .restart local v4    # "rootFolderFile":Ljava/io/File;
    .restart local v5    # "rootFolderFileRef":Ljava/lang/String;
    .restart local v6    # "tmpFileName":Ljava/lang/String;
    .restart local v7    # "tmpFile":Ljava/io/File;
    :cond_4
    move-object v9, v6

    const/4 v10, 0x0

    move-object v11, v6

    move-object v12, v7

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    move-object v8, v9

    .line 731
    .local v8, "bkFileName":Ljava/lang/String;
    move-object v9, v8

    const-string/jumbo v10, "\\\\"

    const-string/jumbo v11, "/"

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v8, v9

    .line 732
    new-instance v9, Ljava/lang/StringBuffer;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v8

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v10, v7

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v6, v9

    goto :goto_0

    .line 737
    .end local v4    # "rootFolderFile":Ljava/io/File;
    .end local v5    # "rootFolderFileRef":Ljava/lang/String;
    .end local v6    # "tmpFileName":Ljava/lang/String;
    .end local v7    # "tmpFile":Ljava/io/File;
    .end local v8    # "bkFileName":Ljava/lang/String;
    :cond_5
    new-instance v9, Ljava/io/File;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v0

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v4, v9

    .line 738
    .local v4, "relFile":Ljava/io/File;
    move-object v9, v4

    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 739
    new-instance v9, Ljava/lang/StringBuffer;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v4

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string/jumbo v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v3, v9

    goto/16 :goto_1

    .line 741
    :cond_6
    new-instance v9, Ljava/io/File;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v0

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Lnet/lingala/zip4j/util/Zip4jUtil;->getFileNameFromFilePath(Ljava/io/File;)Ljava/lang/String;

    move-result-object v9

    move-object v3, v9

    goto/16 :goto_1

    .line 753
    .end local v4    # "relFile":Ljava/io/File;
    :cond_7
    move-object v9, v3

    move-object v0, v9

    .end local v0    # "file":Ljava/lang/String;
    return-object v0
.end method

.method public static getSplitZipFiles(Lnet/lingala/zip4j/model/ZipModel;)Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 657
    move-object v0, p0

    .local v0, "zipModel":Lnet/lingala/zip4j/model/ZipModel;
    move-object v8, v0

    if-nez v8, :cond_0

    .line 658
    new-instance v8, Lnet/lingala/zip4j/exception/ZipException;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const-string/jumbo v10, "cannot get split zip files: zipmodel is null"

    invoke-direct {v9, v10}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 661
    :cond_0
    move-object v8, v0

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v8

    if-nez v8, :cond_1

    .line 662
    const/4 v8, 0x0

    move-object v0, v8

    .line 699
    .end local v0    # "zipModel":Lnet/lingala/zip4j/model/ZipModel;
    .local v1, "retList":Ljava/util/ArrayList;
    .local v2, "currZipFile":Ljava/lang/String;
    .local v3, "zipFileName":Ljava/lang/String;
    .local v4, "partFile":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 665
    .end local v1    # "retList":Ljava/util/ArrayList;
    .end local v2    # "currZipFile":Ljava/lang/String;
    .end local v3    # "zipFileName":Ljava/lang/String;
    .end local v4    # "partFile":Ljava/lang/String;
    .restart local v0    # "zipModel":Lnet/lingala/zip4j/model/ZipModel;
    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v8

    .line 666
    .restart local v1    # "retList":Ljava/util/ArrayList;
    move-object v8, v0

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v8

    move-object v2, v8

    .line 667
    .restart local v2    # "currZipFile":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v2

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    move-object v3, v8

    .line 668
    .restart local v3    # "zipFileName":Ljava/lang/String;
    const/4 v8, 0x0

    move-object v4, v8

    .line 670
    .restart local v4    # "partFile":Ljava/lang/String;
    move-object v8, v2

    invoke-static {v8}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 671
    new-instance v8, Lnet/lingala/zip4j/exception/ZipException;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const-string/jumbo v10, "cannot get split zip files: zipfile is null"

    invoke-direct {v9, v10}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 674
    :cond_2
    move-object v8, v0

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/ZipModel;->isSplitArchive()Z

    move-result v8

    if-nez v8, :cond_3

    .line 675
    move-object v8, v1

    move-object v9, v2

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 676
    move-object v8, v1

    move-object v0, v8

    goto :goto_0

    .line 679
    :cond_3
    move-object v8, v0

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v8

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->getNoOfThisDisk()I

    move-result v8

    move v5, v8

    .line 681
    .local v5, "numberOfThisDisk":I
    move v8, v5

    if-nez v8, :cond_4

    .line 682
    move-object v8, v1

    move-object v9, v2

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 683
    move-object v8, v1

    move-object v0, v8

    goto :goto_0

    .line 685
    :cond_4
    const/4 v8, 0x0

    move v6, v8

    .local v6, "i":I
    :goto_1
    move v8, v6

    move v9, v5

    if-le v8, v9, :cond_5

    .line 699
    move-object v8, v1

    move-object v0, v8

    goto :goto_0

    .line 686
    :cond_5
    move v8, v6

    move v9, v5

    if-ne v8, v9, :cond_6

    .line 687
    move-object v8, v1

    move-object v9, v0

    invoke-virtual {v9}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 685
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 689
    :cond_6
    const-string/jumbo v8, ".z0"

    move-object v7, v8

    .line 690
    .local v7, "fileExt":Ljava/lang/String;
    move v8, v6

    const/16 v9, 0x9

    if-le v8, v9, :cond_7

    .line 691
    const-string/jumbo v8, ".z"

    move-object v7, v8

    .line 693
    :cond_7
    move-object v8, v3

    const-string/jumbo v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-ltz v8, :cond_8

    move-object v8, v2

    const/4 v9, 0x0

    move-object v10, v2

    const-string/jumbo v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    :goto_3
    move-object v4, v8

    .line 694
    new-instance v8, Ljava/lang/StringBuffer;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v4

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v9, v7

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    move v9, v6

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    .line 695
    move-object v8, v1

    move-object v9, v4

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v8

    goto :goto_2

    .line 693
    :cond_8
    move-object v8, v2

    goto :goto_3
.end method

.method public static getZipFileNameWithoutExt(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 423
    move-object v0, p0

    .local v0, "zipFile":Ljava/lang/String;
    move-object v2, v0

    invoke-static {v2}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 424
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string/jumbo v4, "zip file name is empty or null, cannot determine zip file name"

    invoke-direct {v3, v4}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 426
    :cond_0
    move-object v2, v0

    move-object v1, v2

    .line 427
    .local v1, "tmpFileName":Ljava/lang/String;
    move-object v2, v0

    const-string/jumbo v3, "file.separator"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_1

    .line 428
    move-object v2, v0

    move-object v3, v0

    const-string/jumbo v4, "file.separator"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 431
    :cond_1
    move-object v2, v1

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_2

    .line 432
    move-object v2, v1

    const/4 v3, 0x0

    move-object v4, v1

    const-string/jumbo v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 434
    :cond_2
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "zipFile":Ljava/lang/String;
    return-object v0
.end method

.method public static isStringNotNullAndNotEmpty(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "str":Ljava/lang/String;
    move-object v1, v0

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 36
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    .line 39
    .end local v0    # "str":Ljava/lang/String;
    :goto_0
    return v0

    .restart local v0    # "str":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0
.end method

.method public static isSupportedCharset(Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 642
    move-object v0, p0

    .local v0, "charset":Ljava/lang/String;
    move-object v2, v0

    invoke-static {v2}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 643
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "charset is null or empty, cannot check if it is supported"

    invoke-direct {v3, v4}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 647
    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/String;

    const-string/jumbo v3, "a"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    move-object v4, v0

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 648
    const/4 v2, 0x1

    move v0, v2

    .line 650
    .end local v0    # "charset":Ljava/lang/String;
    :goto_0
    return v0

    .line 649
    .restart local v0    # "charset":Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 650
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 651
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 652
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static isWindows()Z
    .locals 3

    .prologue
    .line 135
    const-string/jumbo v1, "os.name"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 136
    .local v0, "os":Ljava/lang/String;
    move-object v1, v0

    const-string/jumbo v2, "win"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "os":Ljava/lang/String;
    :goto_0
    return v0

    .restart local v0    # "os":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public static javaToDosTime(J)J
    .locals 8

    .prologue
    .line 262
    move-wide v0, p0

    .local v0, "time":J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    move-object v2, v4

    .line 263
    .local v2, "cal":Ljava/util/Calendar;
    move-object v4, v2

    move-wide v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 265
    move-object v4, v2

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    move v3, v4

    .line 266
    .local v3, "year":I
    move v4, v3

    const/16 v5, 0x7bc

    if-ge v4, v5, :cond_0

    .line 267
    const-wide/32 v4, 0x210000

    move-wide v0, v4

    .line 269
    .end local v0    # "time":J
    :goto_0
    return-wide v0

    .restart local v0    # "time":J
    :cond_0
    move v4, v3

    const/16 v5, 0x7bc

    add-int/lit16 v4, v4, -0x7bc

    const/16 v5, 0x19

    shl-int/lit8 v4, v4, 0x19

    move-object v5, v2

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    const/16 v6, 0x15

    shl-int/lit8 v5, v5, 0x15

    or-int/2addr v4, v5

    .line 270
    move-object v5, v2

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/16 v6, 0x10

    shl-int/lit8 v5, v5, 0x10

    .line 269
    or-int/2addr v4, v5

    .line 270
    move-object v5, v2

    const/16 v6, 0xb

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/16 v6, 0xb

    shl-int/lit8 v5, v5, 0xb

    .line 269
    or-int/2addr v4, v5

    .line 270
    move-object v5, v2

    const/16 v6, 0xc

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x5

    shl-int/lit8 v5, v5, 0x5

    .line 269
    or-int/2addr v4, v5

    .line 271
    move-object v5, v2

    const/16 v6, 0xd

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x1

    shr-int/lit8 v5, v5, 0x1

    .line 269
    or-int/2addr v4, v5

    int-to-long v4, v4

    move-wide v0, v4

    goto :goto_0
.end method

.method public static setFileArchive(Ljava/io/File;)V
    .locals 0
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 190
    return-void
.end method

.method public static setFileHidden(Ljava/io/File;)V
    .locals 0
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 166
    return-void
.end method

.method public static setFileReadOnly(Ljava/io/File;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "file":Ljava/io/File;
    move-object v1, v0

    if-nez v1, :cond_0

    .line 141
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string/jumbo v3, "input file is null. cannot set read only file attribute"

    invoke-direct {v2, v3}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 144
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 145
    move-object v1, v0

    invoke-virtual {v1}, Ljava/io/File;->setReadOnly()Z

    move-result v1

    .line 147
    :cond_1
    return-void
.end method

.method public static setFileSystemMode(Ljava/io/File;)V
    .locals 0
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 209
    return-void
.end method
