.class public Lnet/lingala/zip4j/model/ArchiveExtraDataRecord;
.super Ljava/lang/Object;
.source "ArchiveExtraDataRecord.java"


# instance fields
.field private extraFieldData:Ljava/lang/String;

.field private extraFieldLength:I

.field private signature:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/ArchiveExtraDataRecord;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExtraFieldData()Ljava/lang/String;
    .locals 2

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/ArchiveExtraDataRecord;
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/model/ArchiveExtraDataRecord;->extraFieldData:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/ArchiveExtraDataRecord;
    return-object v0
.end method

.method public getExtraFieldLength()I
    .locals 2

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/ArchiveExtraDataRecord;
    move-object v1, v0

    iget v1, v1, Lnet/lingala/zip4j/model/ArchiveExtraDataRecord;->extraFieldLength:I

    move v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/ArchiveExtraDataRecord;
    return v0
.end method

.method public getSignature()I
    .locals 2

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/ArchiveExtraDataRecord;
    move-object v1, v0

    iget v1, v1, Lnet/lingala/zip4j/model/ArchiveExtraDataRecord;->signature:I

    move v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/ArchiveExtraDataRecord;
    return v0
.end method

.method public setExtraFieldData(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/ArchiveExtraDataRecord;
    move-object v1, p1

    .local v1, "extraFieldData":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lnet/lingala/zip4j/model/ArchiveExtraDataRecord;->extraFieldData:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setExtraFieldLength(I)V
    .locals 4

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/ArchiveExtraDataRecord;
    move v1, p1

    .local v1, "extraFieldLength":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lnet/lingala/zip4j/model/ArchiveExtraDataRecord;->extraFieldLength:I

    .line 41
    return-void
.end method

.method public setSignature(I)V
    .locals 4

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/ArchiveExtraDataRecord;
    move v1, p1

    .local v1, "signature":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lnet/lingala/zip4j/model/ArchiveExtraDataRecord;->signature:I

    .line 33
    return-void
.end method
