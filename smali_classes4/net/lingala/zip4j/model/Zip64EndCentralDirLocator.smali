.class public Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;
.super Ljava/lang/Object;
.source "Zip64EndCentralDirLocator.java"


# instance fields
.field private noOfDiskStartOfZip64EndOfCentralDirRec:I

.field private offsetZip64EndOfCentralDirRec:J

.field private signature:J

.field private totNumberOfDiscs:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNoOfDiskStartOfZip64EndOfCentralDirRec()I
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;
    move-object v1, v0

    iget v1, v1, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->noOfDiskStartOfZip64EndOfCentralDirRec:I

    move v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;
    return v0
.end method

.method public getOffsetZip64EndOfCentralDirRec()J
    .locals 3

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;
    move-object v1, v0

    iget-wide v1, v1, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->offsetZip64EndOfCentralDirRec:J

    move-wide v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;
    return-wide v0
.end method

.method public getSignature()J
    .locals 3

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;
    move-object v1, v0

    iget-wide v1, v1, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->signature:J

    move-wide v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;
    return-wide v0
.end method

.method public getTotNumberOfDiscs()I
    .locals 2

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;
    move-object v1, v0

    iget v1, v1, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->totNumberOfDiscs:I

    move v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;
    return v0
.end method

.method public setNoOfDiskStartOfZip64EndOfCentralDirRec(I)V
    .locals 4

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;
    move v1, p1

    .local v1, "noOfDiskStartOfZip64EndOfCentralDirRec":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->noOfDiskStartOfZip64EndOfCentralDirRec:I

    .line 44
    return-void
.end method

.method public setOffsetZip64EndOfCentralDirRec(J)V
    .locals 7

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;
    move-wide v1, p1

    .local v1, "offsetZip64EndOfCentralDirRec":J
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->offsetZip64EndOfCentralDirRec:J

    .line 52
    return-void
.end method

.method public setSignature(J)V
    .locals 7

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;
    move-wide v1, p1

    .local v1, "signature":J
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->signature:J

    .line 35
    return-void
.end method

.method public setTotNumberOfDiscs(I)V
    .locals 4

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;
    move v1, p1

    .local v1, "totNumberOfDiscs":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->totNumberOfDiscs:I

    .line 60
    return-void
.end method
