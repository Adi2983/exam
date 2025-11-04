.class public Lnet/lingala/zip4j/model/ZipParameters;
.super Ljava/lang/Object;
.source "ZipParameters.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private aesKeyStrength:I

.field private compressionLevel:I

.field private compressionMethod:I

.field private defaultFolderPath:Ljava/lang/String;

.field private encryptFiles:Z

.field private encryptionMethod:I

.field private fileNameInZip:Ljava/lang/String;

.field private includeRootFolder:Z

.field private isSourceExternalStream:Z

.field private password:[C

.field private readHiddenFiles:Z

.field private rootFolderInZip:Ljava/lang/String;

.field private sourceFileCRC:I

.field private timeZone:Ljava/util/TimeZone;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/ZipParameters;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 43
    move-object v1, v0

    const/16 v2, 0x8

    iput v2, v1, Lnet/lingala/zip4j/model/ZipParameters;->compressionMethod:I

    .line 44
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lnet/lingala/zip4j/model/ZipParameters;->encryptFiles:Z

    .line 45
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lnet/lingala/zip4j/model/ZipParameters;->readHiddenFiles:Z

    .line 46
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Lnet/lingala/zip4j/model/ZipParameters;->encryptionMethod:I

    .line 47
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Lnet/lingala/zip4j/model/ZipParameters;->aesKeyStrength:I

    .line 48
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lnet/lingala/zip4j/model/ZipParameters;->includeRootFolder:Z

    .line 49
    move-object v1, v0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    iput-object v2, v1, Lnet/lingala/zip4j/model/ZipParameters;->timeZone:Ljava/util/TimeZone;

    .line 50
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/ZipParameters;
    move-object v1, v0

    invoke-super {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/ZipParameters;
    return-object v0
.end method

.method public getAesKeyStrength()I
    .locals 2

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/ZipParameters;
    move-object v1, v0

    iget v1, v1, Lnet/lingala/zip4j/model/ZipParameters;->aesKeyStrength:I

    move v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/ZipParameters;
    return v0
.end method

.method public getCompressionLevel()I
    .locals 2

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/ZipParameters;
    move-object v1, v0

    iget v1, v1, Lnet/lingala/zip4j/model/ZipParameters;->compressionLevel:I

    move v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/ZipParameters;
    return v0
.end method

.method public getCompressionMethod()I
    .locals 2

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/ZipParameters;
    move-object v1, v0

    iget v1, v1, Lnet/lingala/zip4j/model/ZipParameters;->compressionMethod:I

    move v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/ZipParameters;
    return v0
.end method

.method public getDefaultFolderPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 172
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/ZipParameters;
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/model/ZipParameters;->defaultFolderPath:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/ZipParameters;
    return-object v0
.end method

.method public getEncryptionMethod()I
    .locals 2

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/ZipParameters;
    move-object v1, v0

    iget v1, v1, Lnet/lingala/zip4j/model/ZipParameters;->encryptionMethod:I

    move v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/ZipParameters;
    return v0
.end method

.method public getFileNameInZip()Ljava/lang/String;
    .locals 2

    .prologue
    .line 180
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/ZipParameters;
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/model/ZipParameters;->fileNameInZip:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/ZipParameters;
    return-object v0
.end method

.method public getPassword()[C
    .locals 2

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/ZipParameters;
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/model/ZipParameters;->password:[C

    move-object v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/ZipParameters;
    return-object v0
.end method

.method public getRootFolderInZip()Ljava/lang/String;
    .locals 2

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/ZipParameters;
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/model/ZipParameters;->rootFolderInZip:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/ZipParameters;
    return-object v0
.end method

.method public getSourceFileCRC()I
    .locals 2

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/ZipParameters;
    move-object v1, v0

    iget v1, v1, Lnet/lingala/zip4j/model/ZipParameters;->sourceFileCRC:I

    move v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/ZipParameters;
    return v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 2

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/ZipParameters;
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/model/ZipParameters;->timeZone:Ljava/util/TimeZone;

    move-object v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/ZipParameters;
    return-object v0
.end method

.method public isEncryptFiles()Z
    .locals 2

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/ZipParameters;
    move-object v1, v0

    iget-boolean v1, v1, Lnet/lingala/zip4j/model/ZipParameters;->encryptFiles:Z

    move v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/ZipParameters;
    return v0
.end method

.method public isIncludeRootFolder()Z
    .locals 2

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/ZipParameters;
    move-object v1, v0

    iget-boolean v1, v1, Lnet/lingala/zip4j/model/ZipParameters;->includeRootFolder:Z

    move v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/ZipParameters;
    return v0
.end method

.method public isReadHiddenFiles()Z
    .locals 2

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/ZipParameters;
    move-object v1, v0

    iget-boolean v1, v1, Lnet/lingala/zip4j/model/ZipParameters;->readHiddenFiles:Z

    move v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/ZipParameters;
    return v0
.end method

.method public isSourceExternalStream()Z
    .locals 2

    .prologue
    .line 188
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/ZipParameters;
    move-object v1, v0

    iget-boolean v1, v1, Lnet/lingala/zip4j/model/ZipParameters;->isSourceExternalStream:Z

    move v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/ZipParameters;
    return v0
.end method

.method public setAesKeyStrength(I)V
    .locals 4

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/ZipParameters;
    move v1, p1

    .local v1, "aesKeyStrength":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lnet/lingala/zip4j/model/ZipParameters;->aesKeyStrength:I

    .line 124
    return-void
.end method

.method public setCompressionLevel(I)V
    .locals 4

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/ZipParameters;
    move v1, p1

    .local v1, "compressionLevel":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lnet/lingala/zip4j/model/ZipParameters;->compressionLevel:I

    .line 82
    return-void
.end method

.method public setCompressionMethod(I)V
    .locals 4

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/ZipParameters;
    move v1, p1

    .local v1, "compressionMethod":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lnet/lingala/zip4j/model/ZipParameters;->compressionMethod:I

    .line 58
    return-void
.end method

.method public setDefaultFolderPath(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 176
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/ZipParameters;
    move-object v1, p1

    .local v1, "defaultFolderPath":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lnet/lingala/zip4j/model/ZipParameters;->defaultFolderPath:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public setEncryptFiles(Z)V
    .locals 4

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/ZipParameters;
    move v1, p1

    .local v1, "encryptFiles":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lnet/lingala/zip4j/model/ZipParameters;->encryptFiles:Z

    .line 66
    return-void
.end method

.method public setEncryptionMethod(I)V
    .locals 4

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/ZipParameters;
    move v1, p1

    .local v1, "encryptionMethod":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lnet/lingala/zip4j/model/ZipParameters;->encryptionMethod:I

    .line 74
    return-void
.end method

.method public setFileNameInZip(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 184
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/ZipParameters;
    move-object v1, p1

    .local v1, "fileNameInZip":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lnet/lingala/zip4j/model/ZipParameters;->fileNameInZip:Ljava/lang/String;

    .line 185
    return-void
.end method

.method public setIncludeRootFolder(Z)V
    .locals 4

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/ZipParameters;
    move v1, p1

    .local v1, "includeRootFolder":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lnet/lingala/zip4j/model/ZipParameters;->includeRootFolder:Z

    .line 132
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/ZipParameters;
    move-object v1, p1

    .local v1, "password":Ljava/lang/String;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 112
    :goto_0
    return-void

    .line 111
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/lingala/zip4j/model/ZipParameters;->setPassword([C)V

    .line 112
    goto :goto_0
.end method

.method public setPassword([C)V
    .locals 4

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/ZipParameters;
    move-object v1, p1

    .local v1, "password":[C
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lnet/lingala/zip4j/model/ZipParameters;->password:[C

    .line 116
    return-void
.end method

.method public setReadHiddenFiles(Z)V
    .locals 4

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/ZipParameters;
    move v1, p1

    .local v1, "readHiddenFiles":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lnet/lingala/zip4j/model/ZipParameters;->readHiddenFiles:Z

    .line 90
    return-void
.end method

.method public setRootFolderInZip(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/ZipParameters;
    move-object v1, p1

    .local v1, "rootFolderInZip":Ljava/lang/String;
    move-object v2, v1

    invoke-static {v2}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 141
    move-object v2, v1

    const-string/jumbo v3, "\\"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v1

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 142
    new-instance v2, Ljava/lang/StringBuffer;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-object v3, Lnet/lingala/zip4j/util/InternalZipConstants;->FILE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 145
    :cond_0
    move-object v2, v1

    const-string/jumbo v3, "\\\\"

    const-string/jumbo v4, "/"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 152
    :cond_1
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lnet/lingala/zip4j/model/ZipParameters;->rootFolderInZip:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public setSourceExternalStream(Z)V
    .locals 4

    .prologue
    .line 192
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/ZipParameters;
    move v1, p1

    .local v1, "isSourceExternalStream":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lnet/lingala/zip4j/model/ZipParameters;->isSourceExternalStream:Z

    .line 193
    return-void
.end method

.method public setSourceFileCRC(I)V
    .locals 4

    .prologue
    .line 168
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/ZipParameters;
    move v1, p1

    .local v1, "sourceFileCRC":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lnet/lingala/zip4j/model/ZipParameters;->sourceFileCRC:I

    .line 169
    return-void
.end method

.method public setTimeZone(Ljava/util/TimeZone;)V
    .locals 4

    .prologue
    .line 160
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/ZipParameters;
    move-object v1, p1

    .local v1, "timeZone":Ljava/util/TimeZone;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lnet/lingala/zip4j/model/ZipParameters;->timeZone:Ljava/util/TimeZone;

    .line 161
    return-void
.end method
