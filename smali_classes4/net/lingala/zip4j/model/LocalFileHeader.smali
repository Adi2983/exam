.class public Lnet/lingala/zip4j/model/LocalFileHeader;
.super Ljava/lang/Object;
.source "LocalFileHeader.java"


# instance fields
.field private aesExtraDataRecord:Lnet/lingala/zip4j/model/AESExtraDataRecord;

.field private compressedSize:J

.field private compressionMethod:I

.field private crc32:J

.field private crcBuff:[B

.field private dataDescriptorExists:Z

.field private encryptionMethod:I

.field private extraDataRecords:Ljava/util/ArrayList;

.field private extraField:[B

.field private extraFieldLength:I

.field private fileName:Ljava/lang/String;

.field private fileNameLength:I

.field private fileNameUTF8Encoded:Z

.field private generalPurposeFlag:[B

.field private isEncrypted:Z

.field private lastModFileTime:I

.field private offsetStartOfData:J

.field private password:[C

.field private signature:I

.field private uncompressedSize:J

.field private versionNeededToExtract:I

.field private writeComprSizeInZip64ExtraRecord:Z

.field private zip64ExtendedInfo:Lnet/lingala/zip4j/model/Zip64ExtendedInfo;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/LocalFileHeader;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 70
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Lnet/lingala/zip4j/model/LocalFileHeader;->encryptionMethod:I

    .line 71
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lnet/lingala/zip4j/model/LocalFileHeader;->writeComprSizeInZip64ExtraRecord:Z

    .line 72
    move-object v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lnet/lingala/zip4j/model/LocalFileHeader;->crc32:J

    .line 73
    move-object v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lnet/lingala/zip4j/model/LocalFileHeader;->uncompressedSize:J

    .line 74
    return-void
.end method


# virtual methods
.method public getAesExtraDataRecord()Lnet/lingala/zip4j/model/AESExtraDataRecord;
    .locals 2

    .prologue
    .line 237
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/LocalFileHeader;
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/model/LocalFileHeader;->aesExtraDataRecord:Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-object v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/LocalFileHeader;
    return-object v0
.end method

.method public getCompressedSize()J
    .locals 3

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/LocalFileHeader;
    move-object v1, v0

    iget-wide v1, v1, Lnet/lingala/zip4j/model/LocalFileHeader;->compressedSize:J

    move-wide v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/LocalFileHeader;
    return-wide v0
.end method

.method public getCompressionMethod()I
    .locals 2

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/LocalFileHeader;
    move-object v1, v0

    iget v1, v1, Lnet/lingala/zip4j/model/LocalFileHeader;->compressionMethod:I

    move v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/LocalFileHeader;
    return v0
.end method

.method public getCrc32()J
    .locals 3

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/LocalFileHeader;
    move-object v1, v0

    iget-wide v1, v1, Lnet/lingala/zip4j/model/LocalFileHeader;->crc32:J

    move-wide v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/LocalFileHeader;
    return-wide v0
.end method

.method public getCrcBuff()[B
    .locals 2

    .prologue
    .line 197
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/LocalFileHeader;
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/model/LocalFileHeader;->crcBuff:[B

    move-object v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/LocalFileHeader;
    return-object v0
.end method

.method public getEncryptionMethod()I
    .locals 2

    .prologue
    .line 189
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/LocalFileHeader;
    move-object v1, v0

    iget v1, v1, Lnet/lingala/zip4j/model/LocalFileHeader;->encryptionMethod:I

    move v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/LocalFileHeader;
    return v0
.end method

.method public getExtraDataRecords()Ljava/util/ArrayList;
    .locals 2

    .prologue
    .line 213
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/LocalFileHeader;
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/model/LocalFileHeader;->extraDataRecords:Ljava/util/ArrayList;

    move-object v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/LocalFileHeader;
    return-object v0
.end method

.method public getExtraField()[B
    .locals 2

    .prologue
    .line 165
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/LocalFileHeader;
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/model/LocalFileHeader;->extraField:[B

    move-object v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/LocalFileHeader;
    return-object v0
.end method

.method public getExtraFieldLength()I
    .locals 2

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/LocalFileHeader;
    move-object v1, v0

    iget v1, v1, Lnet/lingala/zip4j/model/LocalFileHeader;->extraFieldLength:I

    move v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/LocalFileHeader;
    return v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/LocalFileHeader;
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/model/LocalFileHeader;->fileName:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/LocalFileHeader;
    return-object v0
.end method

.method public getFileNameLength()I
    .locals 2

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/LocalFileHeader;
    move-object v1, v0

    iget v1, v1, Lnet/lingala/zip4j/model/LocalFileHeader;->fileNameLength:I

    move v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/LocalFileHeader;
    return v0
.end method

.method public getGeneralPurposeFlag()[B
    .locals 2

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/LocalFileHeader;
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/model/LocalFileHeader;->generalPurposeFlag:[B

    move-object v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/LocalFileHeader;
    return-object v0
.end method

.method public getLastModFileTime()I
    .locals 2

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/LocalFileHeader;
    move-object v1, v0

    iget v1, v1, Lnet/lingala/zip4j/model/LocalFileHeader;->lastModFileTime:I

    move v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/LocalFileHeader;
    return v0
.end method

.method public getOffsetStartOfData()J
    .locals 3

    .prologue
    .line 173
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/LocalFileHeader;
    move-object v1, v0

    iget-wide v1, v1, Lnet/lingala/zip4j/model/LocalFileHeader;->offsetStartOfData:J

    move-wide v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/LocalFileHeader;
    return-wide v0
.end method

.method public getPassword()[C
    .locals 2

    .prologue
    .line 205
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/LocalFileHeader;
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/model/LocalFileHeader;->password:[C

    move-object v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/LocalFileHeader;
    return-object v0
.end method

.method public getSignature()I
    .locals 2

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/LocalFileHeader;
    move-object v1, v0

    iget v1, v1, Lnet/lingala/zip4j/model/LocalFileHeader;->signature:I

    move v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/LocalFileHeader;
    return v0
.end method

.method public getUncompressedSize()J
    .locals 3

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/LocalFileHeader;
    move-object v1, v0

    iget-wide v1, v1, Lnet/lingala/zip4j/model/LocalFileHeader;->uncompressedSize:J

    move-wide v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/LocalFileHeader;
    return-wide v0
.end method

.method public getVersionNeededToExtract()I
    .locals 2

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/LocalFileHeader;
    move-object v1, v0

    iget v1, v1, Lnet/lingala/zip4j/model/LocalFileHeader;->versionNeededToExtract:I

    move v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/LocalFileHeader;
    return v0
.end method

.method public getZip64ExtendedInfo()Lnet/lingala/zip4j/model/Zip64ExtendedInfo;
    .locals 2

    .prologue
    .line 229
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/LocalFileHeader;
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/model/LocalFileHeader;->zip64ExtendedInfo:Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    move-object v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/LocalFileHeader;
    return-object v0
.end method

.method public isDataDescriptorExists()Z
    .locals 2

    .prologue
    .line 221
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/LocalFileHeader;
    move-object v1, v0

    iget-boolean v1, v1, Lnet/lingala/zip4j/model/LocalFileHeader;->dataDescriptorExists:Z

    move v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/LocalFileHeader;
    return v0
.end method

.method public isEncrypted()Z
    .locals 2

    .prologue
    .line 181
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/LocalFileHeader;
    move-object v1, v0

    iget-boolean v1, v1, Lnet/lingala/zip4j/model/LocalFileHeader;->isEncrypted:Z

    move v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/LocalFileHeader;
    return v0
.end method

.method public isFileNameUTF8Encoded()Z
    .locals 2

    .prologue
    .line 254
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/LocalFileHeader;
    move-object v1, v0

    iget-boolean v1, v1, Lnet/lingala/zip4j/model/LocalFileHeader;->fileNameUTF8Encoded:Z

    move v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/LocalFileHeader;
    return v0
.end method

.method public isWriteComprSizeInZip64ExtraRecord()Z
    .locals 2

    .prologue
    .line 245
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/LocalFileHeader;
    move-object v1, v0

    iget-boolean v1, v1, Lnet/lingala/zip4j/model/LocalFileHeader;->writeComprSizeInZip64ExtraRecord:Z

    move v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/LocalFileHeader;
    return v0
.end method

.method public setAesExtraDataRecord(Lnet/lingala/zip4j/model/AESExtraDataRecord;)V
    .locals 4

    .prologue
    .line 241
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/LocalFileHeader;
    move-object v1, p1

    .local v1, "aesExtraDataRecord":Lnet/lingala/zip4j/model/AESExtraDataRecord;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lnet/lingala/zip4j/model/LocalFileHeader;->aesExtraDataRecord:Lnet/lingala/zip4j/model/AESExtraDataRecord;

    .line 242
    return-void
.end method

.method public setCompressedSize(J)V
    .locals 7

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/LocalFileHeader;
    move-wide v1, p1

    .local v1, "compressedSize":J
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lnet/lingala/zip4j/model/LocalFileHeader;->compressedSize:J

    .line 130
    return-void
.end method

.method public setCompressionMethod(I)V
    .locals 4

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/LocalFileHeader;
    move v1, p1

    .local v1, "compressionMethod":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lnet/lingala/zip4j/model/LocalFileHeader;->compressionMethod:I

    .line 106
    return-void
.end method

.method public setCrc32(J)V
    .locals 7

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/LocalFileHeader;
    move-wide v1, p1

    .local v1, "crc32":J
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lnet/lingala/zip4j/model/LocalFileHeader;->crc32:J

    .line 122
    return-void
.end method

.method public setCrcBuff([B)V
    .locals 4

    .prologue
    .line 201
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/LocalFileHeader;
    move-object v1, p1

    .local v1, "crcBuff":[B
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lnet/lingala/zip4j/model/LocalFileHeader;->crcBuff:[B

    .line 202
    return-void
.end method

.method public setDataDescriptorExists(Z)V
    .locals 4

    .prologue
    .line 225
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/LocalFileHeader;
    move v1, p1

    .local v1, "dataDescriptorExists":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lnet/lingala/zip4j/model/LocalFileHeader;->dataDescriptorExists:Z

    .line 226
    return-void
.end method

.method public setEncrypted(Z)V
    .locals 4

    .prologue
    .line 185
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/LocalFileHeader;
    move v1, p1

    .local v1, "isEncrypted":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lnet/lingala/zip4j/model/LocalFileHeader;->isEncrypted:Z

    .line 186
    return-void
.end method

.method public setEncryptionMethod(I)V
    .locals 4

    .prologue
    .line 193
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/LocalFileHeader;
    move v1, p1

    .local v1, "encryptionMethod":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lnet/lingala/zip4j/model/LocalFileHeader;->encryptionMethod:I

    .line 194
    return-void
.end method

.method public setExtraDataRecords(Ljava/util/ArrayList;)V
    .locals 4

    .prologue
    .line 217
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/LocalFileHeader;
    move-object v1, p1

    .local v1, "extraDataRecords":Ljava/util/ArrayList;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lnet/lingala/zip4j/model/LocalFileHeader;->extraDataRecords:Ljava/util/ArrayList;

    .line 218
    return-void
.end method

.method public setExtraField([B)V
    .locals 4

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/LocalFileHeader;
    move-object v1, p1

    .local v1, "extraField":[B
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lnet/lingala/zip4j/model/LocalFileHeader;->extraField:[B

    .line 170
    return-void
.end method

.method public setExtraFieldLength(I)V
    .locals 4

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/LocalFileHeader;
    move v1, p1

    .local v1, "extraFieldLength":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lnet/lingala/zip4j/model/LocalFileHeader;->extraFieldLength:I

    .line 154
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/LocalFileHeader;
    move-object v1, p1

    .local v1, "fileName":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lnet/lingala/zip4j/model/LocalFileHeader;->fileName:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public setFileNameLength(I)V
    .locals 4

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/LocalFileHeader;
    move v1, p1

    .local v1, "fileNameLength":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lnet/lingala/zip4j/model/LocalFileHeader;->fileNameLength:I

    .line 146
    return-void
.end method

.method public setFileNameUTF8Encoded(Z)V
    .locals 4

    .prologue
    .line 258
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/LocalFileHeader;
    move v1, p1

    .local v1, "fileNameUTF8Encoded":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lnet/lingala/zip4j/model/LocalFileHeader;->fileNameUTF8Encoded:Z

    .line 259
    return-void
.end method

.method public setGeneralPurposeFlag([B)V
    .locals 4

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/LocalFileHeader;
    move-object v1, p1

    .local v1, "generalPurposeFlag":[B
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lnet/lingala/zip4j/model/LocalFileHeader;->generalPurposeFlag:[B

    .line 98
    return-void
.end method

.method public setLastModFileTime(I)V
    .locals 4

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/LocalFileHeader;
    move v1, p1

    .local v1, "lastModFileTime":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lnet/lingala/zip4j/model/LocalFileHeader;->lastModFileTime:I

    .line 114
    return-void
.end method

.method public setOffsetStartOfData(J)V
    .locals 7

    .prologue
    .line 177
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/LocalFileHeader;
    move-wide v1, p1

    .local v1, "offsetStartOfData":J
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lnet/lingala/zip4j/model/LocalFileHeader;->offsetStartOfData:J

    .line 178
    return-void
.end method

.method public setPassword([C)V
    .locals 4

    .prologue
    .line 209
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/LocalFileHeader;
    move-object v1, p1

    .local v1, "password":[C
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lnet/lingala/zip4j/model/LocalFileHeader;->password:[C

    .line 210
    return-void
.end method

.method public setSignature(I)V
    .locals 4

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/LocalFileHeader;
    move v1, p1

    .local v1, "signature":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lnet/lingala/zip4j/model/LocalFileHeader;->signature:I

    .line 82
    return-void
.end method

.method public setUncompressedSize(J)V
    .locals 7

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/LocalFileHeader;
    move-wide v1, p1

    .local v1, "uncompressedSize":J
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lnet/lingala/zip4j/model/LocalFileHeader;->uncompressedSize:J

    .line 138
    return-void
.end method

.method public setVersionNeededToExtract(I)V
    .locals 4

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/LocalFileHeader;
    move v1, p1

    .local v1, "versionNeededToExtract":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lnet/lingala/zip4j/model/LocalFileHeader;->versionNeededToExtract:I

    .line 90
    return-void
.end method

.method public setWriteComprSizeInZip64ExtraRecord(Z)V
    .locals 4

    .prologue
    .line 250
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/LocalFileHeader;
    move v1, p1

    .local v1, "writeComprSizeInZip64ExtraRecord":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lnet/lingala/zip4j/model/LocalFileHeader;->writeComprSizeInZip64ExtraRecord:Z

    .line 251
    return-void
.end method

.method public setZip64ExtendedInfo(Lnet/lingala/zip4j/model/Zip64ExtendedInfo;)V
    .locals 4

    .prologue
    .line 233
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/LocalFileHeader;
    move-object v1, p1

    .local v1, "zip64ExtendedInfo":Lnet/lingala/zip4j/model/Zip64ExtendedInfo;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lnet/lingala/zip4j/model/LocalFileHeader;->zip64ExtendedInfo:Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    .line 234
    return-void
.end method
