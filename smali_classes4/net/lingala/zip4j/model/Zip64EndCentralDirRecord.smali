.class public Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;
.super Ljava/lang/Object;
.source "Zip64EndCentralDirRecord.java"


# instance fields
.field private extensibleDataSector:[B

.field private noOfThisDisk:I

.field private noOfThisDiskStartOfCentralDir:I

.field private offsetStartCenDirWRTStartDiskNo:J

.field private signature:J

.field private sizeOfCentralDir:J

.field private sizeOfZip64EndCentralDirRec:J

.field private totNoOfEntriesInCentralDir:J

.field private totNoOfEntriesInCentralDirOnThisDisk:J

.field private versionMadeBy:I

.field private versionNeededToExtract:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExtensibleDataSector()[B
    .locals 2

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->extensibleDataSector:[B

    move-object v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;
    return-object v0
.end method

.method public getNoOfThisDisk()I
    .locals 2

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;
    move-object v1, v0

    iget v1, v1, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->noOfThisDisk:I

    move v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;
    return v0
.end method

.method public getNoOfThisDiskStartOfCentralDir()I
    .locals 2

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;
    move-object v1, v0

    iget v1, v1, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->noOfThisDiskStartOfCentralDir:I

    move v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;
    return v0
.end method

.method public getOffsetStartCenDirWRTStartDiskNo()J
    .locals 3

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;
    move-object v1, v0

    iget-wide v1, v1, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->offsetStartCenDirWRTStartDiskNo:J

    move-wide v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;
    return-wide v0
.end method

.method public getSignature()J
    .locals 3

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;
    move-object v1, v0

    iget-wide v1, v1, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->signature:J

    move-wide v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;
    return-wide v0
.end method

.method public getSizeOfCentralDir()J
    .locals 3

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;
    move-object v1, v0

    iget-wide v1, v1, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->sizeOfCentralDir:J

    move-wide v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;
    return-wide v0
.end method

.method public getSizeOfZip64EndCentralDirRec()J
    .locals 3

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;
    move-object v1, v0

    iget-wide v1, v1, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->sizeOfZip64EndCentralDirRec:J

    move-wide v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;
    return-wide v0
.end method

.method public getTotNoOfEntriesInCentralDir()J
    .locals 3

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;
    move-object v1, v0

    iget-wide v1, v1, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->totNoOfEntriesInCentralDir:J

    move-wide v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;
    return-wide v0
.end method

.method public getTotNoOfEntriesInCentralDirOnThisDisk()J
    .locals 3

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;
    move-object v1, v0

    iget-wide v1, v1, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->totNoOfEntriesInCentralDirOnThisDisk:J

    move-wide v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;
    return-wide v0
.end method

.method public getVersionMadeBy()I
    .locals 2

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;
    move-object v1, v0

    iget v1, v1, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->versionMadeBy:I

    move v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;
    return v0
.end method

.method public getVersionNeededToExtract()I
    .locals 2

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;
    move-object v1, v0

    iget v1, v1, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->versionNeededToExtract:I

    move v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;
    return v0
.end method

.method public setExtensibleDataSector([B)V
    .locals 4

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;
    move-object v1, p1

    .local v1, "extensibleDataSector":[B
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->extensibleDataSector:[B

    .line 131
    return-void
.end method

.method public setNoOfThisDisk(I)V
    .locals 4

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;
    move v1, p1

    .local v1, "noOfThisDisk":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->noOfThisDisk:I

    .line 81
    return-void
.end method

.method public setNoOfThisDiskStartOfCentralDir(I)V
    .locals 4

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;
    move v1, p1

    .local v1, "noOfThisDiskStartOfCentralDir":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->noOfThisDiskStartOfCentralDir:I

    .line 89
    return-void
.end method

.method public setOffsetStartCenDirWRTStartDiskNo(J)V
    .locals 7

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;
    move-wide v1, p1

    .local v1, "offsetStartCenDirWRTStartDiskNo":J
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->offsetStartCenDirWRTStartDiskNo:J

    .line 123
    return-void
.end method

.method public setSignature(J)V
    .locals 7

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;
    move-wide v1, p1

    .local v1, "signature":J
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->signature:J

    .line 49
    return-void
.end method

.method public setSizeOfCentralDir(J)V
    .locals 7

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;
    move-wide v1, p1

    .local v1, "sizeOfCentralDir":J
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->sizeOfCentralDir:J

    .line 114
    return-void
.end method

.method public setSizeOfZip64EndCentralDirRec(J)V
    .locals 7

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;
    move-wide v1, p1

    .local v1, "sizeOfZip64EndCentralDirRec":J
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->sizeOfZip64EndCentralDirRec:J

    .line 57
    return-void
.end method

.method public setTotNoOfEntriesInCentralDir(J)V
    .locals 7

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;
    move-wide v1, p1

    .local v1, "totNoOfEntriesInCentralDir":J
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->totNoOfEntriesInCentralDir:J

    .line 106
    return-void
.end method

.method public setTotNoOfEntriesInCentralDirOnThisDisk(J)V
    .locals 7

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;
    move-wide v1, p1

    .local v1, "totNoOfEntriesInCentralDirOnThisDisk":J
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->totNoOfEntriesInCentralDirOnThisDisk:J

    .line 98
    return-void
.end method

.method public setVersionMadeBy(I)V
    .locals 4

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;
    move v1, p1

    .local v1, "versionMadeBy":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->versionMadeBy:I

    .line 65
    return-void
.end method

.method public setVersionNeededToExtract(I)V
    .locals 4

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;
    move v1, p1

    .local v1, "versionNeededToExtract":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->versionNeededToExtract:I

    .line 73
    return-void
.end method
