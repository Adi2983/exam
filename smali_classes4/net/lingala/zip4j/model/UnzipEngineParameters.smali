.class public Lnet/lingala/zip4j/model/UnzipEngineParameters;
.super Ljava/lang/Object;
.source "UnzipEngineParameters.java"


# instance fields
.field private fileHeader:Lnet/lingala/zip4j/model/FileHeader;

.field private iDecryptor:Lnet/lingala/zip4j/crypto/IDecrypter;

.field private localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

.field private outputStream:Ljava/io/FileOutputStream;

.field private unzipEngine:Lnet/lingala/zip4j/unzip/UnzipEngine;

.field private zipModel:Lnet/lingala/zip4j/model/ZipModel;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 24
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/UnzipEngineParameters;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFileHeader()Lnet/lingala/zip4j/model/FileHeader;
    .locals 2

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/UnzipEngineParameters;
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/model/UnzipEngineParameters;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    move-object v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/UnzipEngineParameters;
    return-object v0
.end method

.method public getIDecryptor()Lnet/lingala/zip4j/crypto/IDecrypter;
    .locals 2

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/UnzipEngineParameters;
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/model/UnzipEngineParameters;->iDecryptor:Lnet/lingala/zip4j/crypto/IDecrypter;

    move-object v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/UnzipEngineParameters;
    return-object v0
.end method

.method public getLocalFileHeader()Lnet/lingala/zip4j/model/LocalFileHeader;
    .locals 2

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/UnzipEngineParameters;
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/model/UnzipEngineParameters;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    move-object v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/UnzipEngineParameters;
    return-object v0
.end method

.method public getOutputStream()Ljava/io/FileOutputStream;
    .locals 2

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/UnzipEngineParameters;
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/model/UnzipEngineParameters;->outputStream:Ljava/io/FileOutputStream;

    move-object v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/UnzipEngineParameters;
    return-object v0
.end method

.method public getUnzipEngine()Lnet/lingala/zip4j/unzip/UnzipEngine;
    .locals 2

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/UnzipEngineParameters;
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/model/UnzipEngineParameters;->unzipEngine:Lnet/lingala/zip4j/unzip/UnzipEngine;

    move-object v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/UnzipEngineParameters;
    return-object v0
.end method

.method public getZipModel()Lnet/lingala/zip4j/model/ZipModel;
    .locals 2

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/UnzipEngineParameters;
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/model/UnzipEngineParameters;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    move-object v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/UnzipEngineParameters;
    return-object v0
.end method

.method public setFileHeader(Lnet/lingala/zip4j/model/FileHeader;)V
    .locals 4

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/UnzipEngineParameters;
    move-object v1, p1

    .local v1, "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lnet/lingala/zip4j/model/UnzipEngineParameters;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    .line 52
    return-void
.end method

.method public setIDecryptor(Lnet/lingala/zip4j/crypto/IDecrypter;)V
    .locals 4

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/UnzipEngineParameters;
    move-object v1, p1

    .local v1, "decrypter":Lnet/lingala/zip4j/crypto/IDecrypter;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lnet/lingala/zip4j/model/UnzipEngineParameters;->iDecryptor:Lnet/lingala/zip4j/crypto/IDecrypter;

    .line 68
    return-void
.end method

.method public setLocalFileHeader(Lnet/lingala/zip4j/model/LocalFileHeader;)V
    .locals 4

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/UnzipEngineParameters;
    move-object v1, p1

    .local v1, "localFileHeader":Lnet/lingala/zip4j/model/LocalFileHeader;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lnet/lingala/zip4j/model/UnzipEngineParameters;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    .line 60
    return-void
.end method

.method public setOutputStream(Ljava/io/FileOutputStream;)V
    .locals 4

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/UnzipEngineParameters;
    move-object v1, p1

    .local v1, "outputStream":Ljava/io/FileOutputStream;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lnet/lingala/zip4j/model/UnzipEngineParameters;->outputStream:Ljava/io/FileOutputStream;

    .line 76
    return-void
.end method

.method public setUnzipEngine(Lnet/lingala/zip4j/unzip/UnzipEngine;)V
    .locals 4

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/UnzipEngineParameters;
    move-object v1, p1

    .local v1, "unzipEngine":Lnet/lingala/zip4j/unzip/UnzipEngine;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lnet/lingala/zip4j/model/UnzipEngineParameters;->unzipEngine:Lnet/lingala/zip4j/unzip/UnzipEngine;

    .line 84
    return-void
.end method

.method public setZipModel(Lnet/lingala/zip4j/model/ZipModel;)V
    .locals 4

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/UnzipEngineParameters;
    move-object v1, p1

    .local v1, "zipModel":Lnet/lingala/zip4j/model/ZipModel;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lnet/lingala/zip4j/model/UnzipEngineParameters;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    .line 44
    return-void
.end method
