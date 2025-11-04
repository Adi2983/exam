.class public Lnet/lingala/zip4j/model/AESExtraDataRecord;
.super Ljava/lang/Object;
.source "AESExtraDataRecord.java"


# instance fields
.field private aesStrength:I

.field private compressionMethod:I

.field private dataSize:I

.field private signature:J

.field private vendorID:Ljava/lang/String;

.field private versionNumber:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/AESExtraDataRecord;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 29
    move-object v1, v0

    const-wide/16 v2, -0x1

    iput-wide v2, v1, Lnet/lingala/zip4j/model/AESExtraDataRecord;->signature:J

    .line 30
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Lnet/lingala/zip4j/model/AESExtraDataRecord;->dataSize:I

    .line 31
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Lnet/lingala/zip4j/model/AESExtraDataRecord;->versionNumber:I

    .line 32
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lnet/lingala/zip4j/model/AESExtraDataRecord;->vendorID:Ljava/lang/String;

    .line 33
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Lnet/lingala/zip4j/model/AESExtraDataRecord;->aesStrength:I

    .line 34
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Lnet/lingala/zip4j/model/AESExtraDataRecord;->compressionMethod:I

    .line 35
    return-void
.end method


# virtual methods
.method public getAesStrength()I
    .locals 2

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/AESExtraDataRecord;
    move-object v1, v0

    iget v1, v1, Lnet/lingala/zip4j/model/AESExtraDataRecord;->aesStrength:I

    move v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/AESExtraDataRecord;
    return v0
.end method

.method public getCompressionMethod()I
    .locals 2

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/AESExtraDataRecord;
    move-object v1, v0

    iget v1, v1, Lnet/lingala/zip4j/model/AESExtraDataRecord;->compressionMethod:I

    move v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/AESExtraDataRecord;
    return v0
.end method

.method public getDataSize()I
    .locals 2

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/AESExtraDataRecord;
    move-object v1, v0

    iget v1, v1, Lnet/lingala/zip4j/model/AESExtraDataRecord;->dataSize:I

    move v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/AESExtraDataRecord;
    return v0
.end method

.method public getSignature()J
    .locals 3

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/AESExtraDataRecord;
    move-object v1, v0

    iget-wide v1, v1, Lnet/lingala/zip4j/model/AESExtraDataRecord;->signature:J

    move-wide v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/AESExtraDataRecord;
    return-wide v0
.end method

.method public getVendorID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/AESExtraDataRecord;
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/model/AESExtraDataRecord;->vendorID:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/AESExtraDataRecord;
    return-object v0
.end method

.method public getVersionNumber()I
    .locals 2

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/AESExtraDataRecord;
    move-object v1, v0

    iget v1, v1, Lnet/lingala/zip4j/model/AESExtraDataRecord;->versionNumber:I

    move v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/AESExtraDataRecord;
    return v0
.end method

.method public setAesStrength(I)V
    .locals 4

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/AESExtraDataRecord;
    move v1, p1

    .local v1, "aesStrength":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lnet/lingala/zip4j/model/AESExtraDataRecord;->aesStrength:I

    .line 85
    return-void
.end method

.method public setCompressionMethod(I)V
    .locals 4

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/AESExtraDataRecord;
    move v1, p1

    .local v1, "compressionMethod":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lnet/lingala/zip4j/model/AESExtraDataRecord;->compressionMethod:I

    .line 95
    return-void
.end method

.method public setDataSize(I)V
    .locals 4

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/AESExtraDataRecord;
    move v1, p1

    .local v1, "dataSize":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lnet/lingala/zip4j/model/AESExtraDataRecord;->dataSize:I

    .line 55
    return-void
.end method

.method public setSignature(J)V
    .locals 7

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/AESExtraDataRecord;
    move-wide v1, p1

    .local v1, "signature":J
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lnet/lingala/zip4j/model/AESExtraDataRecord;->signature:J

    .line 45
    return-void
.end method

.method public setVendorID(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/AESExtraDataRecord;
    move-object v1, p1

    .local v1, "vendorID":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lnet/lingala/zip4j/model/AESExtraDataRecord;->vendorID:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setVersionNumber(I)V
    .locals 4

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/AESExtraDataRecord;
    move v1, p1

    .local v1, "versionNumber":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lnet/lingala/zip4j/model/AESExtraDataRecord;->versionNumber:I

    .line 65
    return-void
.end method
