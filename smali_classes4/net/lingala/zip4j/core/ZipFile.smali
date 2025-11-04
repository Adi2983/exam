.class public Lnet/lingala/zip4j/core/ZipFile;
.super Ljava/lang/Object;
.source "ZipFile.java"


# instance fields
.field private file:Ljava/lang/String;

.field private fileNameCharset:Ljava/lang/String;

.field private isEncrypted:Z

.field private mode:I

.field private progressMonitor:Lnet/lingala/zip4j/progress/ProgressMonitor;

.field private runInThread:Z

.field private zipModel:Lnet/lingala/zip4j/model/ZipModel;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/core/ZipFile;
    move-object v1, p1

    .local v1, "zipFile":Ljava/io/File;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 82
    move-object v2, v1

    if-nez v2, :cond_0

    .line 83
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string/jumbo v4, "Input zip file parameter is not null"

    .line 84
    const/4 v5, 0x1

    .line 83
    invoke-direct {v3, v4, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 87
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lnet/lingala/zip4j/core/ZipFile;->file:Ljava/lang/String;

    .line 88
    move-object v2, v0

    const/4 v3, 0x2

    iput v3, v2, Lnet/lingala/zip4j/core/ZipFile;->mode:I

    .line 89
    move-object v2, v0

    new-instance v3, Lnet/lingala/zip4j/progress/ProgressMonitor;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lnet/lingala/zip4j/progress/ProgressMonitor;-><init>()V

    iput-object v3, v2, Lnet/lingala/zip4j/core/ZipFile;->progressMonitor:Lnet/lingala/zip4j/progress/ProgressMonitor;

    .line 90
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lnet/lingala/zip4j/core/ZipFile;->runInThread:Z

    .line 91
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/core/ZipFile;
    move-object v1, p1

    .local v1, "zipFile":Ljava/lang/String;
    move-object v2, v0

    new-instance v3, Ljava/io/File;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lnet/lingala/zip4j/core/ZipFile;-><init>(Ljava/io/File;)V

    .line 73
    return-void
.end method

.method private addFolder(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 343
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/core/ZipFile;
    move-object v1, p1

    .local v1, "path":Ljava/io/File;
    move-object v2, p2

    .local v2, "parameters":Lnet/lingala/zip4j/model/ZipParameters;
    move v3, p3

    .local v3, "checkSplitArchive":Z
    move-object v5, v0

    invoke-direct {v5}, Lnet/lingala/zip4j/core/ZipFile;->checkZipModel()V

    .line 345
    move-object v5, v0

    iget-object v5, v5, Lnet/lingala/zip4j/core/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    if-nez v5, :cond_0

    .line 346
    new-instance v5, Lnet/lingala/zip4j/exception/ZipException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string/jumbo v7, "internal error: zip model is null"

    invoke-direct {v6, v7}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 349
    :cond_0
    move v5, v3

    if-eqz v5, :cond_1

    .line 350
    move-object v5, v0

    iget-object v5, v5, Lnet/lingala/zip4j/core/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/ZipModel;->isSplitArchive()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 351
    new-instance v5, Lnet/lingala/zip4j/exception/ZipException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string/jumbo v7, "This is a split archive. Zip file format does not allow updating split/spanned files"

    invoke-direct {v6, v7}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 355
    :cond_1
    new-instance v5, Lnet/lingala/zip4j/zip/ZipEngine;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    iget-object v7, v7, Lnet/lingala/zip4j/core/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-direct {v6, v7}, Lnet/lingala/zip4j/zip/ZipEngine;-><init>(Lnet/lingala/zip4j/model/ZipModel;)V

    move-object v4, v5

    .line 356
    .local v4, "zipEngine":Lnet/lingala/zip4j/zip/ZipEngine;
    move-object v5, v4

    move-object v6, v1

    move-object v7, v2

    move-object v8, v0

    iget-object v8, v8, Lnet/lingala/zip4j/core/ZipFile;->progressMonitor:Lnet/lingala/zip4j/progress/ProgressMonitor;

    move-object v9, v0

    iget-boolean v9, v9, Lnet/lingala/zip4j/core/ZipFile;->runInThread:Z

    invoke-virtual {v5, v6, v7, v8, v9}, Lnet/lingala/zip4j/zip/ZipEngine;->addFolderToZip(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;Z)V

    .line 358
    return-void
.end method

.method private checkZipModel()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 933
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/core/ZipFile;
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/core/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    if-nez v1, :cond_0

    .line 934
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/core/ZipFile;->file:Ljava/lang/String;

    invoke-static {v1}, Lnet/lingala/zip4j/util/Zip4jUtil;->checkFileExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 935
    move-object v1, v0

    invoke-direct {v1}, Lnet/lingala/zip4j/core/ZipFile;->readZipInfo()V

    .line 940
    :cond_0
    :goto_0
    return-void

    .line 937
    :cond_1
    move-object v1, v0

    invoke-direct {v1}, Lnet/lingala/zip4j/core/ZipFile;->createNewZipModel()V

    goto :goto_0
.end method

.method private createNewZipModel()V
    .locals 5

    .prologue
    .line 947
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/core/ZipFile;
    move-object v1, v0

    new-instance v2, Lnet/lingala/zip4j/model/ZipModel;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lnet/lingala/zip4j/model/ZipModel;-><init>()V

    iput-object v2, v1, Lnet/lingala/zip4j/core/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    .line 948
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/core/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    move-object v2, v0

    iget-object v2, v2, Lnet/lingala/zip4j/core/ZipFile;->file:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lnet/lingala/zip4j/model/ZipModel;->setZipFile(Ljava/lang/String;)V

    .line 949
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/core/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    move-object v2, v0

    iget-object v2, v2, Lnet/lingala/zip4j/core/ZipFile;->fileNameCharset:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lnet/lingala/zip4j/model/ZipModel;->setFileNameCharset(Ljava/lang/String;)V

    .line 950
    return-void
.end method

.method private readZipInfo()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 406
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/core/ZipFile;
    move-object v5, v0

    iget-object v5, v5, Lnet/lingala/zip4j/core/ZipFile;->file:Ljava/lang/String;

    invoke-static {v5}, Lnet/lingala/zip4j/util/Zip4jUtil;->checkFileExists(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 407
    new-instance v5, Lnet/lingala/zip4j/exception/ZipException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string/jumbo v7, "zip file does not exist"

    invoke-direct {v6, v7}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 410
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lnet/lingala/zip4j/core/ZipFile;->file:Ljava/lang/String;

    invoke-static {v5}, Lnet/lingala/zip4j/util/Zip4jUtil;->checkFileReadAccess(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 411
    new-instance v5, Lnet/lingala/zip4j/exception/ZipException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string/jumbo v7, "no read access for the input zip file"

    invoke-direct {v6, v7}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 414
    :cond_1
    move-object v5, v0

    iget v5, v5, Lnet/lingala/zip4j/core/ZipFile;->mode:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2

    .line 415
    new-instance v5, Lnet/lingala/zip4j/exception/ZipException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string/jumbo v7, "Invalid mode"

    invoke-direct {v6, v7}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 418
    :cond_2
    const/4 v5, 0x0

    move-object v1, v5

    .line 420
    .local v1, "raf":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v5, Ljava/io/RandomAccessFile;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    new-instance v7, Ljava/io/File;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v0

    iget-object v9, v9, Lnet/lingala/zip4j/core/ZipFile;->file:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "r"

    invoke-direct {v6, v7, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v5

    .line 422
    move-object v5, v0

    iget-object v5, v5, Lnet/lingala/zip4j/core/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    if-nez v5, :cond_3

    .line 424
    new-instance v5, Lnet/lingala/zip4j/core/HeaderReader;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v1

    invoke-direct {v6, v7}, Lnet/lingala/zip4j/core/HeaderReader;-><init>(Ljava/io/RandomAccessFile;)V

    move-object v2, v5

    .line 425
    .local v2, "headerReader":Lnet/lingala/zip4j/core/HeaderReader;
    move-object v5, v0

    move-object v6, v2

    move-object v7, v0

    iget-object v7, v7, Lnet/lingala/zip4j/core/ZipFile;->fileNameCharset:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lnet/lingala/zip4j/core/HeaderReader;->readAllHeaders(Ljava/lang/String;)Lnet/lingala/zip4j/model/ZipModel;

    move-result-object v6

    iput-object v6, v5, Lnet/lingala/zip4j/core/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    .line 426
    move-object v5, v0

    iget-object v5, v5, Lnet/lingala/zip4j/core/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    if-eqz v5, :cond_3

    .line 427
    move-object v5, v0

    iget-object v5, v5, Lnet/lingala/zip4j/core/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    move-object v6, v0

    iget-object v6, v6, Lnet/lingala/zip4j/core/ZipFile;->file:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lnet/lingala/zip4j/model/ZipModel;->setZipFile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 433
    .end local v2    # "headerReader":Lnet/lingala/zip4j/core/HeaderReader;
    :cond_3
    move-object v5, v1

    if-eqz v5, :cond_4

    .line 435
    move-object v5, v1

    :try_start_1
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 441
    :cond_4
    :goto_0
    return-void

    .line 430
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 431
    .local v2, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    new-instance v5, Lnet/lingala/zip4j/exception/ZipException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v2

    invoke-direct {v6, v7}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 432
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v5

    move-object v3, v5

    .line 433
    move-object v5, v1

    if-eqz v5, :cond_5

    .line 435
    move-object v5, v1

    :try_start_3
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 440
    :cond_5
    :goto_1
    move-object v5, v3

    throw v5

    .line 436
    :catch_1
    move-exception v5

    move-object v4, v5

    goto :goto_1

    :catch_2
    move-exception v5

    move-object v4, v5

    goto :goto_0
.end method


# virtual methods
.method public addFile(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 248
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/core/ZipFile;
    move-object v1, p1

    .local v1, "sourceFile":Ljava/io/File;
    move-object v2, p2

    .local v2, "parameters":Lnet/lingala/zip4j/model/ZipParameters;
    new-instance v4, Ljava/util/ArrayList;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v4

    .line 249
    .local v3, "sourceFileList":Ljava/util/ArrayList;
    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 250
    move-object v4, v0

    move-object v5, v3

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lnet/lingala/zip4j/core/ZipFile;->addFiles(Ljava/util/ArrayList;Lnet/lingala/zip4j/model/ZipParameters;)V

    .line 251
    return-void
.end method

.method public addFiles(Ljava/util/ArrayList;Lnet/lingala/zip4j/model/ZipParameters;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 263
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/core/ZipFile;
    move-object v1, p1

    .local v1, "sourceFileList":Ljava/util/ArrayList;
    move-object v2, p2

    .local v2, "parameters":Lnet/lingala/zip4j/model/ZipParameters;
    move-object v4, v0

    invoke-direct {v4}, Lnet/lingala/zip4j/core/ZipFile;->checkZipModel()V

    .line 265
    move-object v4, v0

    iget-object v4, v4, Lnet/lingala/zip4j/core/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    if-nez v4, :cond_0

    .line 266
    new-instance v4, Lnet/lingala/zip4j/exception/ZipException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string/jumbo v6, "internal error: zip model is null"

    invoke-direct {v5, v6}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 269
    :cond_0
    move-object v4, v1

    if-nez v4, :cond_1

    .line 270
    new-instance v4, Lnet/lingala/zip4j/exception/ZipException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string/jumbo v6, "input file ArrayList is null, cannot add files"

    invoke-direct {v5, v6}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 273
    :cond_1
    move-object v4, v1

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lnet/lingala/zip4j/util/Zip4jUtil;->checkArrayListTypes(Ljava/util/ArrayList;I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 274
    new-instance v4, Lnet/lingala/zip4j/exception/ZipException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string/jumbo v6, "One or more elements in the input ArrayList is not of type File"

    invoke-direct {v5, v6}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 277
    :cond_2
    move-object v4, v2

    if-nez v4, :cond_3

    .line 278
    new-instance v4, Lnet/lingala/zip4j/exception/ZipException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string/jumbo v6, "input parameters are null, cannot add files to zip"

    invoke-direct {v5, v6}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 281
    :cond_3
    move-object v4, v0

    iget-object v4, v4, Lnet/lingala/zip4j/core/ZipFile;->progressMonitor:Lnet/lingala/zip4j/progress/ProgressMonitor;

    invoke-virtual {v4}, Lnet/lingala/zip4j/progress/ProgressMonitor;->getState()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    .line 282
    new-instance v4, Lnet/lingala/zip4j/exception/ZipException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string/jumbo v6, "invalid operation - Zip4j is in busy state"

    invoke-direct {v5, v6}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 285
    :cond_4
    move-object v4, v0

    iget-object v4, v4, Lnet/lingala/zip4j/core/ZipFile;->file:Ljava/lang/String;

    invoke-static {v4}, Lnet/lingala/zip4j/util/Zip4jUtil;->checkFileExists(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 286
    move-object v4, v0

    iget-object v4, v4, Lnet/lingala/zip4j/core/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/ZipModel;->isSplitArchive()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 287
    new-instance v4, Lnet/lingala/zip4j/exception/ZipException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string/jumbo v6, "Zip file already exists. Zip file format does not allow updating split/spanned files"

    invoke-direct {v5, v6}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 291
    :cond_5
    new-instance v4, Lnet/lingala/zip4j/zip/ZipEngine;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    iget-object v6, v6, Lnet/lingala/zip4j/core/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-direct {v5, v6}, Lnet/lingala/zip4j/zip/ZipEngine;-><init>(Lnet/lingala/zip4j/model/ZipModel;)V

    move-object v3, v4

    .line 292
    .local v3, "zipEngine":Lnet/lingala/zip4j/zip/ZipEngine;
    move-object v4, v3

    move-object v5, v1

    move-object v6, v2

    move-object v7, v0

    iget-object v7, v7, Lnet/lingala/zip4j/core/ZipFile;->progressMonitor:Lnet/lingala/zip4j/progress/ProgressMonitor;

    move-object v8, v0

    iget-boolean v8, v8, Lnet/lingala/zip4j/core/ZipFile;->runInThread:Z

    invoke-virtual {v4, v5, v6, v7, v8}, Lnet/lingala/zip4j/zip/ZipEngine;->addFiles(Ljava/util/ArrayList;Lnet/lingala/zip4j/model/ZipParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;Z)V

    .line 293
    return-void
.end method

.method public addFolder(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 322
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/core/ZipFile;
    move-object v1, p1

    .local v1, "path":Ljava/io/File;
    move-object v2, p2

    .local v2, "parameters":Lnet/lingala/zip4j/model/ZipParameters;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 323
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string/jumbo v5, "input path is null, cannot add folder to zip file"

    invoke-direct {v4, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 326
    :cond_0
    move-object v3, v2

    if-nez v3, :cond_1

    .line 327
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string/jumbo v5, "input parameters are null, cannot add folder to zip file"

    invoke-direct {v4, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 330
    :cond_1
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x1

    invoke-direct {v3, v4, v5, v6}, Lnet/lingala/zip4j/core/ZipFile;->addFolder(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;Z)V

    .line 331
    return-void
.end method

.method public addFolder(Ljava/lang/String;Lnet/lingala/zip4j/model/ZipParameters;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 305
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/core/ZipFile;
    move-object v1, p1

    .local v1, "path":Ljava/lang/String;
    move-object v2, p2

    .local v2, "parameters":Lnet/lingala/zip4j/model/ZipParameters;
    move-object v3, v1

    invoke-static {v3}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 306
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string/jumbo v5, "input path is null or empty, cannot add folder to zip file"

    invoke-direct {v4, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 309
    :cond_0
    move-object v3, v0

    new-instance v4, Ljava/io/File;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lnet/lingala/zip4j/core/ZipFile;->addFolder(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;)V

    .line 310
    return-void
.end method

.method public addStream(Ljava/io/InputStream;Lnet/lingala/zip4j/model/ZipParameters;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 372
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/core/ZipFile;
    move-object v1, p1

    .local v1, "inputStream":Ljava/io/InputStream;
    move-object v2, p2

    .local v2, "parameters":Lnet/lingala/zip4j/model/ZipParameters;
    move-object v4, v1

    if-nez v4, :cond_0

    .line 373
    new-instance v4, Lnet/lingala/zip4j/exception/ZipException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string/jumbo v6, "inputstream is null, cannot add file to zip"

    invoke-direct {v5, v6}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 376
    :cond_0
    move-object v4, v2

    if-nez v4, :cond_1

    .line 377
    new-instance v4, Lnet/lingala/zip4j/exception/ZipException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string/jumbo v6, "zip parameters are null"

    invoke-direct {v5, v6}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 380
    :cond_1
    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lnet/lingala/zip4j/core/ZipFile;->setRunInThread(Z)V

    .line 382
    move-object v4, v0

    invoke-direct {v4}, Lnet/lingala/zip4j/core/ZipFile;->checkZipModel()V

    .line 384
    move-object v4, v0

    iget-object v4, v4, Lnet/lingala/zip4j/core/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    if-nez v4, :cond_2

    .line 385
    new-instance v4, Lnet/lingala/zip4j/exception/ZipException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string/jumbo v6, "internal error: zip model is null"

    invoke-direct {v5, v6}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 388
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lnet/lingala/zip4j/core/ZipFile;->file:Ljava/lang/String;

    invoke-static {v4}, Lnet/lingala/zip4j/util/Zip4jUtil;->checkFileExists(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 389
    move-object v4, v0

    iget-object v4, v4, Lnet/lingala/zip4j/core/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/ZipModel;->isSplitArchive()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 390
    new-instance v4, Lnet/lingala/zip4j/exception/ZipException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string/jumbo v6, "Zip file already exists. Zip file format does not allow updating split/spanned files"

    invoke-direct {v5, v6}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 394
    :cond_3
    new-instance v4, Lnet/lingala/zip4j/zip/ZipEngine;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    iget-object v6, v6, Lnet/lingala/zip4j/core/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-direct {v5, v6}, Lnet/lingala/zip4j/zip/ZipEngine;-><init>(Lnet/lingala/zip4j/model/ZipModel;)V

    move-object v3, v4

    .line 395
    .local v3, "zipEngine":Lnet/lingala/zip4j/zip/ZipEngine;
    move-object v4, v3

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lnet/lingala/zip4j/zip/ZipEngine;->addStreamToZip(Ljava/io/InputStream;Lnet/lingala/zip4j/model/ZipParameters;)V

    .line 396
    return-void
.end method

.method public createZipFile(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/core/ZipFile;
    move-object v1, p1

    .local v1, "sourceFile":Ljava/io/File;
    move-object v2, p2

    .local v2, "parameters":Lnet/lingala/zip4j/model/ZipParameters;
    new-instance v4, Ljava/util/ArrayList;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v4

    .line 103
    .local v3, "sourceFileList":Ljava/util/ArrayList;
    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 104
    move-object v4, v0

    move-object v5, v3

    move-object v6, v2

    const/4 v7, 0x0

    const-wide/16 v8, -0x1

    invoke-virtual/range {v4 .. v9}, Lnet/lingala/zip4j/core/ZipFile;->createZipFile(Ljava/util/ArrayList;Lnet/lingala/zip4j/model/ZipParameters;ZJ)V

    .line 105
    return-void
.end method

.method public createZipFile(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;ZJ)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/core/ZipFile;
    move-object v1, p1

    .local v1, "sourceFile":Ljava/io/File;
    move-object/from16 v2, p2

    .local v2, "parameters":Lnet/lingala/zip4j/model/ZipParameters;
    move/from16 v3, p3

    .local v3, "splitArchive":Z
    move-wide/from16 v4, p4

    .local v4, "splitLength":J
    new-instance v7, Ljava/util/ArrayList;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v7

    .line 124
    .local v6, "sourceFileList":Ljava/util/ArrayList;
    move-object v7, v6

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 125
    move-object v7, v0

    move-object v8, v6

    move-object v9, v2

    move v10, v3

    move-wide v11, v4

    invoke-virtual/range {v7 .. v12}, Lnet/lingala/zip4j/core/ZipFile;->createZipFile(Ljava/util/ArrayList;Lnet/lingala/zip4j/model/ZipParameters;ZJ)V

    .line 126
    return-void
.end method

.method public createZipFile(Ljava/util/ArrayList;Lnet/lingala/zip4j/model/ZipParameters;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 138
    move-object v1, p0

    .local v1, "this":Lnet/lingala/zip4j/core/ZipFile;
    move-object v2, p1

    .local v2, "sourceFileList":Ljava/util/ArrayList;
    move-object v3, p2

    .local v3, "parameters":Lnet/lingala/zip4j/model/ZipParameters;
    move-object v4, v1

    move-object v5, v2

    move-object v6, v3

    const/4 v7, 0x0

    const-wide/16 v8, -0x1

    invoke-virtual/range {v4 .. v9}, Lnet/lingala/zip4j/core/ZipFile;->createZipFile(Ljava/util/ArrayList;Lnet/lingala/zip4j/model/ZipParameters;ZJ)V

    .line 139
    return-void
.end method

.method public createZipFile(Ljava/util/ArrayList;Lnet/lingala/zip4j/model/ZipParameters;ZJ)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/core/ZipFile;
    move-object v1, p1

    .local v1, "sourceFileList":Ljava/util/ArrayList;
    move-object v2, p2

    .local v2, "parameters":Lnet/lingala/zip4j/model/ZipParameters;
    move v3, p3

    .local v3, "splitArchive":Z
    move-wide/from16 v4, p4

    .local v4, "splitLength":J
    move-object v6, v0

    iget-object v6, v6, Lnet/lingala/zip4j/core/ZipFile;->file:Ljava/lang/String;

    invoke-static {v6}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 158
    new-instance v6, Lnet/lingala/zip4j/exception/ZipException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const-string/jumbo v8, "zip file path is empty"

    invoke-direct {v7, v8}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 161
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lnet/lingala/zip4j/core/ZipFile;->file:Ljava/lang/String;

    invoke-static {v6}, Lnet/lingala/zip4j/util/Zip4jUtil;->checkFileExists(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 162
    new-instance v6, Lnet/lingala/zip4j/exception/ZipException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    new-instance v8, Ljava/lang/StringBuffer;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    const-string/jumbo v10, "zip file: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v9, v0

    iget-object v9, v9, Lnet/lingala/zip4j/core/ZipFile;->file:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string/jumbo v9, " already exists. To add files to existing zip file use addFile method"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 165
    :cond_1
    move-object v6, v1

    if-nez v6, :cond_2

    .line 166
    new-instance v6, Lnet/lingala/zip4j/exception/ZipException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const-string/jumbo v8, "input file ArrayList is null, cannot create zip file"

    invoke-direct {v7, v8}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 169
    :cond_2
    move-object v6, v1

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lnet/lingala/zip4j/util/Zip4jUtil;->checkArrayListTypes(Ljava/util/ArrayList;I)Z

    move-result v6

    if-nez v6, :cond_3

    .line 170
    new-instance v6, Lnet/lingala/zip4j/exception/ZipException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const-string/jumbo v8, "One or more elements in the input ArrayList is not of type File"

    invoke-direct {v7, v8}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 173
    :cond_3
    move-object v6, v0

    invoke-direct {v6}, Lnet/lingala/zip4j/core/ZipFile;->createNewZipModel()V

    .line 174
    move-object v6, v0

    iget-object v6, v6, Lnet/lingala/zip4j/core/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    move v7, v3

    invoke-virtual {v6, v7}, Lnet/lingala/zip4j/model/ZipModel;->setSplitArchive(Z)V

    .line 175
    move-object v6, v0

    iget-object v6, v6, Lnet/lingala/zip4j/core/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    move-wide v7, v4

    invoke-virtual {v6, v7, v8}, Lnet/lingala/zip4j/model/ZipModel;->setSplitLength(J)V

    .line 176
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Lnet/lingala/zip4j/core/ZipFile;->addFiles(Ljava/util/ArrayList;Lnet/lingala/zip4j/model/ZipParameters;)V

    .line 177
    return-void
.end method

.method public createZipFileFromFolder(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;ZJ)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 219
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/core/ZipFile;
    move-object v1, p1

    .local v1, "folderToAdd":Ljava/io/File;
    move-object v2, p2

    .local v2, "parameters":Lnet/lingala/zip4j/model/ZipParameters;
    move v3, p3

    .local v3, "splitArchive":Z
    move-wide/from16 v4, p4

    .local v4, "splitLength":J
    move-object v6, v1

    if-nez v6, :cond_0

    .line 220
    new-instance v6, Lnet/lingala/zip4j/exception/ZipException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const-string/jumbo v8, "folderToAdd is null, cannot create zip file from folder"

    invoke-direct {v7, v8}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 223
    :cond_0
    move-object v6, v2

    if-nez v6, :cond_1

    .line 224
    new-instance v6, Lnet/lingala/zip4j/exception/ZipException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const-string/jumbo v8, "input parameters are null, cannot create zip file from folder"

    invoke-direct {v7, v8}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 227
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Lnet/lingala/zip4j/core/ZipFile;->file:Ljava/lang/String;

    invoke-static {v6}, Lnet/lingala/zip4j/util/Zip4jUtil;->checkFileExists(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 228
    new-instance v6, Lnet/lingala/zip4j/exception/ZipException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    new-instance v8, Ljava/lang/StringBuffer;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    const-string/jumbo v10, "zip file: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v9, v0

    iget-object v9, v9, Lnet/lingala/zip4j/core/ZipFile;->file:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string/jumbo v9, " already exists. To add files to existing zip file use addFolder method"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 231
    :cond_2
    move-object v6, v0

    invoke-direct {v6}, Lnet/lingala/zip4j/core/ZipFile;->createNewZipModel()V

    .line 232
    move-object v6, v0

    iget-object v6, v6, Lnet/lingala/zip4j/core/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    move v7, v3

    invoke-virtual {v6, v7}, Lnet/lingala/zip4j/model/ZipModel;->setSplitArchive(Z)V

    .line 233
    move v6, v3

    if-eqz v6, :cond_3

    .line 234
    move-object v6, v0

    iget-object v6, v6, Lnet/lingala/zip4j/core/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    move-wide v7, v4

    invoke-virtual {v6, v7, v8}, Lnet/lingala/zip4j/model/ZipModel;->setSplitLength(J)V

    .line 236
    :cond_3
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Lnet/lingala/zip4j/core/ZipFile;->addFolder(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;Z)V

    .line 237
    return-void
.end method

.method public createZipFileFromFolder(Ljava/lang/String;Lnet/lingala/zip4j/model/ZipParameters;ZJ)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 195
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/core/ZipFile;
    move-object v1, p1

    .local v1, "folderToAdd":Ljava/lang/String;
    move-object/from16 v2, p2

    .local v2, "parameters":Lnet/lingala/zip4j/model/ZipParameters;
    move/from16 v3, p3

    .local v3, "splitArchive":Z
    move-wide/from16 v4, p4

    .local v4, "splitLength":J
    move-object v6, v1

    invoke-static {v6}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 196
    new-instance v6, Lnet/lingala/zip4j/exception/ZipException;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const-string/jumbo v8, "folderToAdd is empty or null, cannot create Zip File from folder"

    invoke-direct {v7, v8}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 199
    :cond_0
    move-object v6, v0

    new-instance v7, Ljava/io/File;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v1

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v8, v2

    move v9, v3

    move-wide v10, v4

    invoke-virtual/range {v6 .. v11}, Lnet/lingala/zip4j/core/ZipFile;->createZipFileFromFolder(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;ZJ)V

    .line 201
    return-void
.end method

.method public extractAll(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 451
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/core/ZipFile;
    move-object v1, p1

    .local v1, "destPath":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lnet/lingala/zip4j/core/ZipFile;->extractAll(Ljava/lang/String;Lnet/lingala/zip4j/model/UnzipParameters;)V

    .line 453
    return-void
.end method

.method public extractAll(Ljava/lang/String;Lnet/lingala/zip4j/model/UnzipParameters;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 466
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/core/ZipFile;
    move-object v1, p1

    .local v1, "destPath":Ljava/lang/String;
    move-object v2, p2

    .local v2, "unzipParameters":Lnet/lingala/zip4j/model/UnzipParameters;
    move-object v4, v1

    invoke-static {v4}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 467
    new-instance v4, Lnet/lingala/zip4j/exception/ZipException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string/jumbo v6, "output path is null or invalid"

    invoke-direct {v5, v6}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 470
    :cond_0
    move-object v4, v1

    invoke-static {v4}, Lnet/lingala/zip4j/util/Zip4jUtil;->checkOutputFolder(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 471
    new-instance v4, Lnet/lingala/zip4j/exception/ZipException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string/jumbo v6, "invalid output path"

    invoke-direct {v5, v6}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 474
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lnet/lingala/zip4j/core/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    if-nez v4, :cond_2

    .line 475
    move-object v4, v0

    invoke-direct {v4}, Lnet/lingala/zip4j/core/ZipFile;->readZipInfo()V

    .line 479
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lnet/lingala/zip4j/core/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    if-nez v4, :cond_3

    .line 480
    new-instance v4, Lnet/lingala/zip4j/exception/ZipException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string/jumbo v6, "Internal error occurred when extracting zip file"

    invoke-direct {v5, v6}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 483
    :cond_3
    move-object v4, v0

    iget-object v4, v4, Lnet/lingala/zip4j/core/ZipFile;->progressMonitor:Lnet/lingala/zip4j/progress/ProgressMonitor;

    invoke-virtual {v4}, Lnet/lingala/zip4j/progress/ProgressMonitor;->getState()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    .line 484
    new-instance v4, Lnet/lingala/zip4j/exception/ZipException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string/jumbo v6, "invalid operation - Zip4j is in busy state"

    invoke-direct {v5, v6}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 487
    :cond_4
    new-instance v4, Lnet/lingala/zip4j/unzip/Unzip;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    iget-object v6, v6, Lnet/lingala/zip4j/core/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-direct {v5, v6}, Lnet/lingala/zip4j/unzip/Unzip;-><init>(Lnet/lingala/zip4j/model/ZipModel;)V

    move-object v3, v4

    .line 488
    .local v3, "unzip":Lnet/lingala/zip4j/unzip/Unzip;
    move-object v4, v3

    move-object v5, v2

    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Lnet/lingala/zip4j/core/ZipFile;->progressMonitor:Lnet/lingala/zip4j/progress/ProgressMonitor;

    move-object v8, v0

    iget-boolean v8, v8, Lnet/lingala/zip4j/core/ZipFile;->runInThread:Z

    invoke-virtual {v4, v5, v6, v7, v8}, Lnet/lingala/zip4j/unzip/Unzip;->extractAll(Lnet/lingala/zip4j/model/UnzipParameters;Ljava/lang/String;Lnet/lingala/zip4j/progress/ProgressMonitor;Z)V

    .line 490
    return-void
.end method

.method public extractFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 566
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/core/ZipFile;
    move-object v1, p1

    .local v1, "fileName":Ljava/lang/String;
    move-object v2, p2

    .local v2, "destPath":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lnet/lingala/zip4j/core/ZipFile;->extractFile(Ljava/lang/String;Ljava/lang/String;Lnet/lingala/zip4j/model/UnzipParameters;)V

    .line 567
    return-void
.end method

.method public extractFile(Ljava/lang/String;Ljava/lang/String;Lnet/lingala/zip4j/model/UnzipParameters;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 587
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/core/ZipFile;
    move-object v1, p1

    .local v1, "fileName":Ljava/lang/String;
    move-object v2, p2

    .local v2, "destPath":Ljava/lang/String;
    move-object v3, p3

    .local v3, "unzipParameters":Lnet/lingala/zip4j/model/UnzipParameters;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Lnet/lingala/zip4j/core/ZipFile;->extractFile(Ljava/lang/String;Ljava/lang/String;Lnet/lingala/zip4j/model/UnzipParameters;Ljava/lang/String;)V

    .line 588
    return-void
.end method

.method public extractFile(Ljava/lang/String;Ljava/lang/String;Lnet/lingala/zip4j/model/UnzipParameters;Ljava/lang/String;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 614
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/core/ZipFile;
    move-object v1, p1

    .local v1, "fileName":Ljava/lang/String;
    move-object/from16 v2, p2

    .local v2, "destPath":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "unzipParameters":Lnet/lingala/zip4j/model/UnzipParameters;
    move-object/from16 v4, p4

    .local v4, "newFileName":Ljava/lang/String;
    move-object v6, v1

    invoke-static {v6}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 615
    new-instance v6, Lnet/lingala/zip4j/exception/ZipException;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    const-string/jumbo v8, "file to extract is null or empty, cannot extract file"

    invoke-direct {v7, v8}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 618
    :cond_0
    move-object v6, v2

    invoke-static {v6}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 619
    new-instance v6, Lnet/lingala/zip4j/exception/ZipException;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    const-string/jumbo v8, "destination string path is empty or null, cannot extract file"

    invoke-direct {v7, v8}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 622
    :cond_1
    move-object v6, v0

    invoke-direct {v6}, Lnet/lingala/zip4j/core/ZipFile;->readZipInfo()V

    .line 624
    move-object v6, v0

    iget-object v6, v6, Lnet/lingala/zip4j/core/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    move-object v7, v1

    invoke-static {v6, v7}, Lnet/lingala/zip4j/util/Zip4jUtil;->getFileHeader(Lnet/lingala/zip4j/model/ZipModel;Ljava/lang/String;)Lnet/lingala/zip4j/model/FileHeader;

    move-result-object v6

    move-object v5, v6

    .line 626
    .local v5, "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    move-object v6, v5

    if-nez v6, :cond_2

    .line 627
    new-instance v6, Lnet/lingala/zip4j/exception/ZipException;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    const-string/jumbo v8, "file header not found for given file name, cannot extract file"

    invoke-direct {v7, v8}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 630
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Lnet/lingala/zip4j/core/ZipFile;->progressMonitor:Lnet/lingala/zip4j/progress/ProgressMonitor;

    invoke-virtual {v6}, Lnet/lingala/zip4j/progress/ProgressMonitor;->getState()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    .line 631
    new-instance v6, Lnet/lingala/zip4j/exception/ZipException;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    const-string/jumbo v8, "invalid operation - Zip4j is in busy state"

    invoke-direct {v7, v8}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 634
    :cond_3
    move-object v6, v5

    move-object v7, v0

    iget-object v7, v7, Lnet/lingala/zip4j/core/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    move-object v11, v0

    iget-object v11, v11, Lnet/lingala/zip4j/core/ZipFile;->progressMonitor:Lnet/lingala/zip4j/progress/ProgressMonitor;

    move-object v12, v0

    iget-boolean v12, v12, Lnet/lingala/zip4j/core/ZipFile;->runInThread:Z

    invoke-virtual/range {v6 .. v12}, Lnet/lingala/zip4j/model/FileHeader;->extractFile(Lnet/lingala/zip4j/model/ZipModel;Ljava/lang/String;Lnet/lingala/zip4j/model/UnzipParameters;Ljava/lang/String;Lnet/lingala/zip4j/progress/ProgressMonitor;Z)V

    .line 636
    return-void
.end method

.method public extractFile(Lnet/lingala/zip4j/model/FileHeader;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 500
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/core/ZipFile;
    move-object v1, p1

    .local v1, "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    move-object v2, p2

    .local v2, "destPath":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lnet/lingala/zip4j/core/ZipFile;->extractFile(Lnet/lingala/zip4j/model/FileHeader;Ljava/lang/String;Lnet/lingala/zip4j/model/UnzipParameters;)V

    .line 501
    return-void
.end method

.method public extractFile(Lnet/lingala/zip4j/model/FileHeader;Ljava/lang/String;Lnet/lingala/zip4j/model/UnzipParameters;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 517
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/core/ZipFile;
    move-object v1, p1

    .local v1, "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    move-object v2, p2

    .local v2, "destPath":Ljava/lang/String;
    move-object v3, p3

    .local v3, "unzipParameters":Lnet/lingala/zip4j/model/UnzipParameters;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Lnet/lingala/zip4j/core/ZipFile;->extractFile(Lnet/lingala/zip4j/model/FileHeader;Ljava/lang/String;Lnet/lingala/zip4j/model/UnzipParameters;Ljava/lang/String;)V

    .line 518
    return-void
.end method

.method public extractFile(Lnet/lingala/zip4j/model/FileHeader;Ljava/lang/String;Lnet/lingala/zip4j/model/UnzipParameters;Ljava/lang/String;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 532
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/core/ZipFile;
    move-object v1, p1

    .local v1, "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    move-object v2, p2

    .local v2, "destPath":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "unzipParameters":Lnet/lingala/zip4j/model/UnzipParameters;
    move-object/from16 v4, p4

    .local v4, "newFileName":Ljava/lang/String;
    move-object v5, v1

    if-nez v5, :cond_0

    .line 533
    new-instance v5, Lnet/lingala/zip4j/exception/ZipException;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    const-string/jumbo v7, "input file header is null, cannot extract file"

    invoke-direct {v6, v7}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 536
    :cond_0
    move-object v5, v2

    invoke-static {v5}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 537
    new-instance v5, Lnet/lingala/zip4j/exception/ZipException;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    const-string/jumbo v7, "destination path is empty or null, cannot extract file"

    invoke-direct {v6, v7}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 540
    :cond_1
    move-object v5, v0

    invoke-direct {v5}, Lnet/lingala/zip4j/core/ZipFile;->readZipInfo()V

    .line 542
    move-object v5, v0

    iget-object v5, v5, Lnet/lingala/zip4j/core/ZipFile;->progressMonitor:Lnet/lingala/zip4j/progress/ProgressMonitor;

    invoke-virtual {v5}, Lnet/lingala/zip4j/progress/ProgressMonitor;->getState()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 543
    new-instance v5, Lnet/lingala/zip4j/exception/ZipException;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    const-string/jumbo v7, "invalid operation - Zip4j is in busy state"

    invoke-direct {v6, v7}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 546
    :cond_2
    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lnet/lingala/zip4j/core/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    move-object v10, v0

    iget-object v10, v10, Lnet/lingala/zip4j/core/ZipFile;->progressMonitor:Lnet/lingala/zip4j/progress/ProgressMonitor;

    move-object v11, v0

    iget-boolean v11, v11, Lnet/lingala/zip4j/core/ZipFile;->runInThread:Z

    invoke-virtual/range {v5 .. v11}, Lnet/lingala/zip4j/model/FileHeader;->extractFile(Lnet/lingala/zip4j/model/ZipModel;Ljava/lang/String;Lnet/lingala/zip4j/model/UnzipParameters;Ljava/lang/String;Lnet/lingala/zip4j/progress/ProgressMonitor;Z)V

    .line 548
    return-void
.end method

.method public getComment()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 884
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/core/ZipFile;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lnet/lingala/zip4j/core/ZipFile;->getComment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/core/ZipFile;
    return-object v0
.end method

.method public getComment(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 894
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/core/ZipFile;
    move-object v1, p1

    .local v1, "encoding":Ljava/lang/String;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 895
    const-string/jumbo v3, "windows-1254"

    invoke-static {v3}, Lnet/lingala/zip4j/util/Zip4jUtil;->isSupportedCharset(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 896
    const-string/jumbo v3, "windows-1254"

    move-object v1, v3

    .line 902
    :cond_0
    :goto_0
    move-object v3, v0

    iget-object v3, v3, Lnet/lingala/zip4j/core/ZipFile;->file:Ljava/lang/String;

    invoke-static {v3}, Lnet/lingala/zip4j/util/Zip4jUtil;->checkFileExists(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 903
    move-object v3, v0

    invoke-direct {v3}, Lnet/lingala/zip4j/core/ZipFile;->checkZipModel()V

    .line 908
    move-object v3, v0

    iget-object v3, v3, Lnet/lingala/zip4j/core/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    if-nez v3, :cond_3

    .line 909
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string/jumbo v5, "zip model is null, cannot read comment"

    invoke-direct {v4, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 898
    :cond_1
    sget-object v3, Lnet/lingala/zip4j/util/InternalZipConstants;->CHARSET_DEFAULT:Ljava/lang/String;

    move-object v1, v3

    goto :goto_0

    .line 905
    :cond_2
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string/jumbo v5, "zip file does not exist, cannot read comment"

    invoke-direct {v4, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 912
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Lnet/lingala/zip4j/core/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v3

    if-nez v3, :cond_4

    .line 913
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string/jumbo v5, "end of central directory record is null, cannot read comment"

    invoke-direct {v4, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 916
    :cond_4
    move-object v3, v0

    iget-object v3, v3, Lnet/lingala/zip4j/core/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v3

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->getCommentBytes()[B

    move-result-object v3

    if-eqz v3, :cond_5

    .line 917
    move-object v3, v0

    iget-object v3, v3, Lnet/lingala/zip4j/core/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v3

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->getCommentBytes()[B

    move-result-object v3

    array-length v3, v3

    if-gtz v3, :cond_6

    .line 918
    :cond_5
    const/4 v3, 0x0

    move-object v0, v3

    .line 922
    .end local v0    # "this":Lnet/lingala/zip4j/core/ZipFile;
    :goto_1
    return-object v0

    .restart local v0    # "this":Lnet/lingala/zip4j/core/ZipFile;
    :cond_6
    :try_start_0
    new-instance v3, Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    iget-object v5, v5, Lnet/lingala/zip4j/core/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v5

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->getCommentBytes()[B

    move-result-object v5

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    goto :goto_1

    .line 923
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 924
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v2

    invoke-direct {v4, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getFile()Ljava/io/File;
    .locals 5

    .prologue
    .line 1039
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/core/ZipFile;
    new-instance v1, Ljava/io/File;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    iget-object v3, v3, Lnet/lingala/zip4j/core/ZipFile;->file:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/core/ZipFile;
    return-object v0
.end method

.method public getFileHeader(Ljava/lang/String;)Lnet/lingala/zip4j/model/FileHeader;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 703
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/core/ZipFile;
    move-object v1, p1

    .local v1, "fileName":Ljava/lang/String;
    move-object v2, v1

    invoke-static {v2}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 704
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "input file name is emtpy or null, cannot get FileHeader"

    invoke-direct {v3, v4}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 707
    :cond_0
    move-object v2, v0

    invoke-direct {v2}, Lnet/lingala/zip4j/core/ZipFile;->readZipInfo()V

    .line 708
    move-object v2, v0

    iget-object v2, v2, Lnet/lingala/zip4j/core/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lnet/lingala/zip4j/core/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v2

    if-nez v2, :cond_2

    .line 709
    :cond_1
    const/4 v2, 0x0

    move-object v0, v2

    .line 712
    .end local v0    # "this":Lnet/lingala/zip4j/core/ZipFile;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lnet/lingala/zip4j/core/ZipFile;
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Lnet/lingala/zip4j/core/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    move-object v3, v1

    invoke-static {v2, v3}, Lnet/lingala/zip4j/util/Zip4jUtil;->getFileHeader(Lnet/lingala/zip4j/model/ZipModel;Ljava/lang/String;)Lnet/lingala/zip4j/model/FileHeader;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public getFileHeaders()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 688
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/core/ZipFile;
    move-object v1, v0

    invoke-direct {v1}, Lnet/lingala/zip4j/core/ZipFile;->readZipInfo()V

    .line 689
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/core/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/core/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v1

    if-nez v1, :cond_1

    .line 690
    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    .line 692
    .end local v0    # "this":Lnet/lingala/zip4j/core/ZipFile;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lnet/lingala/zip4j/core/ZipFile;
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/core/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v1

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public getInputStream(Lnet/lingala/zip4j/model/FileHeader;)Lnet/lingala/zip4j/io/ZipInputStream;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 979
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/core/ZipFile;
    move-object v1, p1

    .local v1, "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 980
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "FileHeader is null, cannot get InputStream"

    invoke-direct {v4, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 983
    :cond_0
    move-object v3, v0

    invoke-direct {v3}, Lnet/lingala/zip4j/core/ZipFile;->checkZipModel()V

    .line 985
    move-object v3, v0

    iget-object v3, v3, Lnet/lingala/zip4j/core/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    if-nez v3, :cond_1

    .line 986
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "zip model is null, cannot get inputstream"

    invoke-direct {v4, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 989
    :cond_1
    new-instance v3, Lnet/lingala/zip4j/unzip/Unzip;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    iget-object v5, v5, Lnet/lingala/zip4j/core/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-direct {v4, v5}, Lnet/lingala/zip4j/unzip/Unzip;-><init>(Lnet/lingala/zip4j/model/ZipModel;)V

    move-object v2, v3

    .line 990
    .local v2, "unzip":Lnet/lingala/zip4j/unzip/Unzip;
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Lnet/lingala/zip4j/unzip/Unzip;->getInputStream(Lnet/lingala/zip4j/model/FileHeader;)Lnet/lingala/zip4j/io/ZipInputStream;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lnet/lingala/zip4j/core/ZipFile;
    return-object v0
.end method

.method public getProgressMonitor()Lnet/lingala/zip4j/progress/ProgressMonitor;
    .locals 2

    .prologue
    .line 1023
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/core/ZipFile;
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/core/ZipFile;->progressMonitor:Lnet/lingala/zip4j/progress/ProgressMonitor;

    move-object v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/core/ZipFile;
    return-object v0
.end method

.method public getSplitZipFiles()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 1018
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/core/ZipFile;
    move-object v1, v0

    invoke-direct {v1}, Lnet/lingala/zip4j/core/ZipFile;->checkZipModel()V

    .line 1019
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/core/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-static {v1}, Lnet/lingala/zip4j/util/Zip4jUtil;->getSplitZipFiles(Lnet/lingala/zip4j/model/ZipModel;)Ljava/util/ArrayList;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/core/ZipFile;
    return-object v0
.end method

.method public isEncrypted()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 721
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/core/ZipFile;
    move-object v4, v0

    iget-object v4, v4, Lnet/lingala/zip4j/core/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    if-nez v4, :cond_0

    .line 722
    move-object v4, v0

    invoke-direct {v4}, Lnet/lingala/zip4j/core/ZipFile;->readZipInfo()V

    .line 723
    move-object v4, v0

    iget-object v4, v4, Lnet/lingala/zip4j/core/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    if-nez v4, :cond_0

    .line 724
    new-instance v4, Lnet/lingala/zip4j/exception/ZipException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string/jumbo v6, "Zip Model is null"

    invoke-direct {v5, v6}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 728
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lnet/lingala/zip4j/core/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v4

    if-eqz v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Lnet/lingala/zip4j/core/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v4

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v4

    if-nez v4, :cond_2

    .line 729
    :cond_1
    new-instance v4, Lnet/lingala/zip4j/exception/ZipException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string/jumbo v6, "invalid zip file"

    invoke-direct {v5, v6}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 732
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lnet/lingala/zip4j/core/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v4

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v4

    move-object v1, v4

    .line 733
    .local v1, "fileHeaderList":Ljava/util/ArrayList;
    const/4 v4, 0x0

    move v2, v4

    .local v2, "i":I
    :goto_0
    move v4, v2

    move-object v5, v1

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v4, v5, :cond_3

    .line 743
    :goto_1
    move-object v4, v0

    iget-boolean v4, v4, Lnet/lingala/zip4j/core/ZipFile;->isEncrypted:Z

    move v0, v4

    .end local v0    # "this":Lnet/lingala/zip4j/core/ZipFile;
    return v0

    .line 734
    .restart local v0    # "this":Lnet/lingala/zip4j/core/ZipFile;
    :cond_3
    move-object v4, v1

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/lingala/zip4j/model/FileHeader;

    move-object v3, v4

    .line 735
    .local v3, "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    move-object v4, v3

    if-eqz v4, :cond_4

    .line 736
    move-object v4, v3

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/FileHeader;->isEncrypted()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 737
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lnet/lingala/zip4j/core/ZipFile;->isEncrypted:Z

    .line 738
    goto :goto_1

    .line 733
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public isRunInThread()Z
    .locals 2

    .prologue
    .line 1027
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/core/ZipFile;
    move-object v1, v0

    iget-boolean v1, v1, Lnet/lingala/zip4j/core/ZipFile;->runInThread:Z

    move v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/core/ZipFile;
    return v0
.end method

.method public isSplitArchive()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 753
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/core/ZipFile;
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/core/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    if-nez v1, :cond_0

    .line 754
    move-object v1, v0

    invoke-direct {v1}, Lnet/lingala/zip4j/core/ZipFile;->readZipInfo()V

    .line 755
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/core/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    if-nez v1, :cond_0

    .line 756
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string/jumbo v3, "Zip Model is null"

    invoke-direct {v2, v3}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 760
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/core/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/ZipModel;->isSplitArchive()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/core/ZipFile;
    return v0
.end method

.method public isValidZipFile()Z
    .locals 3

    .prologue
    .line 1002
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/core/ZipFile;
    move-object v2, v0

    :try_start_0
    invoke-direct {v2}, Lnet/lingala/zip4j/core/ZipFile;->readZipInfo()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1003
    const/4 v2, 0x1

    move v0, v2

    .line 1005
    .end local v0    # "this":Lnet/lingala/zip4j/core/ZipFile;
    .local v1, "e":Ljava/lang/Exception;
    :goto_0
    return v0

    .line 1004
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "this":Lnet/lingala/zip4j/core/ZipFile;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 1005
    .restart local v1    # "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public mergeSplitFiles(Ljava/io/File;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 831
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/core/ZipFile;
    move-object v1, p1

    .local v1, "outputZipFile":Ljava/io/File;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 832
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const-string/jumbo v5, "outputZipFile is null, cannot merge split files"

    invoke-direct {v4, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 835
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 836
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const-string/jumbo v5, "output Zip File already exists"

    invoke-direct {v4, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 839
    :cond_1
    move-object v3, v0

    invoke-direct {v3}, Lnet/lingala/zip4j/core/ZipFile;->checkZipModel()V

    .line 841
    move-object v3, v0

    iget-object v3, v3, Lnet/lingala/zip4j/core/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    if-nez v3, :cond_2

    .line 842
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const-string/jumbo v5, "zip model is null, corrupt zip file?"

    invoke-direct {v4, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 845
    :cond_2
    new-instance v3, Lnet/lingala/zip4j/util/ArchiveMaintainer;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Lnet/lingala/zip4j/util/ArchiveMaintainer;-><init>()V

    move-object v2, v3

    .line 846
    .local v2, "archiveMaintainer":Lnet/lingala/zip4j/util/ArchiveMaintainer;
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lnet/lingala/zip4j/core/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    move-object v5, v0

    iget-object v5, v5, Lnet/lingala/zip4j/core/ZipFile;->progressMonitor:Lnet/lingala/zip4j/progress/ProgressMonitor;

    invoke-virtual {v3, v4, v5}, Lnet/lingala/zip4j/util/ArchiveMaintainer;->initProgressMonitorForMergeOp(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/progress/ProgressMonitor;)V

    .line 847
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lnet/lingala/zip4j/core/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lnet/lingala/zip4j/core/ZipFile;->progressMonitor:Lnet/lingala/zip4j/progress/ProgressMonitor;

    move-object v7, v0

    iget-boolean v7, v7, Lnet/lingala/zip4j/core/ZipFile;->runInThread:Z

    invoke-virtual {v3, v4, v5, v6, v7}, Lnet/lingala/zip4j/util/ArchiveMaintainer;->mergeSplitZipFiles(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/File;Lnet/lingala/zip4j/progress/ProgressMonitor;Z)V

    .line 848
    return-void
.end method

.method public removeFile(Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 775
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/core/ZipFile;
    move-object v1, p1

    .local v1, "fileName":Ljava/lang/String;
    move-object v3, v1

    invoke-static {v3}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 776
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const-string/jumbo v5, "file name is empty or null, cannot remove file"

    invoke-direct {v4, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 779
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lnet/lingala/zip4j/core/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    if-nez v3, :cond_1

    .line 780
    move-object v3, v0

    iget-object v3, v3, Lnet/lingala/zip4j/core/ZipFile;->file:Ljava/lang/String;

    invoke-static {v3}, Lnet/lingala/zip4j/util/Zip4jUtil;->checkFileExists(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 781
    move-object v3, v0

    invoke-direct {v3}, Lnet/lingala/zip4j/core/ZipFile;->readZipInfo()V

    .line 785
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lnet/lingala/zip4j/core/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ZipModel;->isSplitArchive()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 786
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const-string/jumbo v5, "Zip file format does not allow updating split/spanned files"

    invoke-direct {v4, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 789
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lnet/lingala/zip4j/core/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    move-object v4, v1

    invoke-static {v3, v4}, Lnet/lingala/zip4j/util/Zip4jUtil;->getFileHeader(Lnet/lingala/zip4j/model/ZipModel;Ljava/lang/String;)Lnet/lingala/zip4j/model/FileHeader;

    move-result-object v3

    move-object v2, v3

    .line 790
    .local v2, "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    move-object v3, v2

    if-nez v3, :cond_3

    .line 791
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    new-instance v5, Ljava/lang/StringBuffer;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string/jumbo v7, "could not find file header for file: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 794
    :cond_3
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lnet/lingala/zip4j/core/ZipFile;->removeFile(Lnet/lingala/zip4j/model/FileHeader;)V

    .line 795
    return-void
.end method

.method public removeFile(Lnet/lingala/zip4j/model/FileHeader;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 805
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/core/ZipFile;
    move-object v1, p1

    .local v1, "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 806
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const-string/jumbo v5, "file header is null, cannot remove file"

    invoke-direct {v4, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 809
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lnet/lingala/zip4j/core/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    if-nez v3, :cond_1

    .line 810
    move-object v3, v0

    iget-object v3, v3, Lnet/lingala/zip4j/core/ZipFile;->file:Ljava/lang/String;

    invoke-static {v3}, Lnet/lingala/zip4j/util/Zip4jUtil;->checkFileExists(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 811
    move-object v3, v0

    invoke-direct {v3}, Lnet/lingala/zip4j/core/ZipFile;->readZipInfo()V

    .line 815
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lnet/lingala/zip4j/core/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ZipModel;->isSplitArchive()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 816
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const-string/jumbo v5, "Zip file format does not allow updating split/spanned files"

    invoke-direct {v4, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 819
    :cond_2
    new-instance v3, Lnet/lingala/zip4j/util/ArchiveMaintainer;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Lnet/lingala/zip4j/util/ArchiveMaintainer;-><init>()V

    move-object v2, v3

    .line 820
    .local v2, "archiveMaintainer":Lnet/lingala/zip4j/util/ArchiveMaintainer;
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lnet/lingala/zip4j/core/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lnet/lingala/zip4j/core/ZipFile;->progressMonitor:Lnet/lingala/zip4j/progress/ProgressMonitor;

    invoke-virtual {v3, v4, v5, v6}, Lnet/lingala/zip4j/util/ArchiveMaintainer;->initProgressMonitorForRemoveOp(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/model/FileHeader;Lnet/lingala/zip4j/progress/ProgressMonitor;)V

    .line 821
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lnet/lingala/zip4j/core/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lnet/lingala/zip4j/core/ZipFile;->progressMonitor:Lnet/lingala/zip4j/progress/ProgressMonitor;

    move-object v7, v0

    iget-boolean v7, v7, Lnet/lingala/zip4j/core/ZipFile;->runInThread:Z

    invoke-virtual {v3, v4, v5, v6, v7}, Lnet/lingala/zip4j/util/ArchiveMaintainer;->removeZipFile(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/model/FileHeader;Lnet/lingala/zip4j/progress/ProgressMonitor;Z)Ljava/util/HashMap;

    move-result-object v3

    .line 822
    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 856
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/core/ZipFile;
    move-object v1, p1

    .local v1, "comment":Ljava/lang/String;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 857
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "input comment is null, cannot update zip file"

    invoke-direct {v4, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 860
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lnet/lingala/zip4j/core/ZipFile;->file:Ljava/lang/String;

    invoke-static {v3}, Lnet/lingala/zip4j/util/Zip4jUtil;->checkFileExists(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 861
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "zip file does not exist, cannot set comment for zip file"

    invoke-direct {v4, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 864
    :cond_1
    move-object v3, v0

    invoke-direct {v3}, Lnet/lingala/zip4j/core/ZipFile;->readZipInfo()V

    .line 866
    move-object v3, v0

    iget-object v3, v3, Lnet/lingala/zip4j/core/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    if-nez v3, :cond_2

    .line 867
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "zipModel is null, cannot update zip file"

    invoke-direct {v4, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 870
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lnet/lingala/zip4j/core/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v3

    if-nez v3, :cond_3

    .line 871
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "end of central directory is null, cannot set comment"

    invoke-direct {v4, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 874
    :cond_3
    new-instance v3, Lnet/lingala/zip4j/util/ArchiveMaintainer;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lnet/lingala/zip4j/util/ArchiveMaintainer;-><init>()V

    move-object v2, v3

    .line 875
    .local v2, "archiveMaintainer":Lnet/lingala/zip4j/util/ArchiveMaintainer;
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lnet/lingala/zip4j/core/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    move-object v5, v1

    invoke-virtual {v3, v4, v5}, Lnet/lingala/zip4j/util/ArchiveMaintainer;->setComment(Lnet/lingala/zip4j/model/ZipModel;Ljava/lang/String;)V

    .line 876
    return-void
.end method

.method public setFileNameCharset(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 959
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/core/ZipFile;
    move-object v1, p1

    .local v1, "charsetName":Ljava/lang/String;
    move-object v2, v1

    invoke-static {v2}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 960
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const-string/jumbo v4, "null or empty charset name"

    invoke-direct {v3, v4}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 963
    :cond_0
    move-object v2, v1

    invoke-static {v2}, Lnet/lingala/zip4j/util/Zip4jUtil;->isSupportedCharset(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 964
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    new-instance v4, Ljava/lang/StringBuffer;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string/jumbo v6, "unsupported charset: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 967
    :cond_1
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lnet/lingala/zip4j/core/ZipFile;->fileNameCharset:Ljava/lang/String;

    .line 968
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 649
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/core/ZipFile;
    move-object v1, p1

    .local v1, "password":Ljava/lang/String;
    move-object v2, v1

    invoke-static {v2}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 650
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 652
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/lingala/zip4j/core/ZipFile;->setPassword([C)V

    .line 653
    return-void
.end method

.method public setPassword([C)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 661
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/core/ZipFile;
    move-object v1, p1

    .local v1, "password":[C
    move-object v3, v0

    iget-object v3, v3, Lnet/lingala/zip4j/core/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    if-nez v3, :cond_0

    .line 662
    move-object v3, v0

    invoke-direct {v3}, Lnet/lingala/zip4j/core/ZipFile;->readZipInfo()V

    .line 663
    move-object v3, v0

    iget-object v3, v3, Lnet/lingala/zip4j/core/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    if-nez v3, :cond_0

    .line 664
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "Zip Model is null"

    invoke-direct {v4, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 668
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lnet/lingala/zip4j/core/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v3

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lnet/lingala/zip4j/core/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v3

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v3

    if-nez v3, :cond_2

    .line 669
    :cond_1
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "invalid zip file"

    invoke-direct {v4, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 672
    :cond_2
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Lnet/lingala/zip4j/core/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v4

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v3, v4, :cond_3

    .line 679
    return-void

    .line 673
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Lnet/lingala/zip4j/core/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v3

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v3

    move v4, v2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 674
    move-object v3, v0

    iget-object v3, v3, Lnet/lingala/zip4j/core/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v3

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v3

    move v4, v2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/FileHeader;->isEncrypted()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 675
    move-object v3, v0

    iget-object v3, v3, Lnet/lingala/zip4j/core/ZipFile;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v3

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v3

    move v4, v2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/lingala/zip4j/model/FileHeader;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lnet/lingala/zip4j/model/FileHeader;->setPassword([C)V

    .line 672
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public setRunInThread(Z)V
    .locals 4

    .prologue
    .line 1031
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/core/ZipFile;
    move v1, p1

    .local v1, "runInThread":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lnet/lingala/zip4j/core/ZipFile;->runInThread:Z

    .line 1032
    return-void
.end method
