.class public Lnet/lingala/zip4j/model/ExtraDataRecord;
.super Ljava/lang/Object;
.source "ExtraDataRecord.java"


# instance fields
.field private data:[B

.field private header:J

.field private sizeOfData:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/ExtraDataRecord;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 2

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/ExtraDataRecord;
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/model/ExtraDataRecord;->data:[B

    move-object v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/ExtraDataRecord;
    return-object v0
.end method

.method public getHeader()J
    .locals 3

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/ExtraDataRecord;
    move-object v1, v0

    iget-wide v1, v1, Lnet/lingala/zip4j/model/ExtraDataRecord;->header:J

    move-wide v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/ExtraDataRecord;
    return-wide v0
.end method

.method public getSizeOfData()I
    .locals 2

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/ExtraDataRecord;
    move-object v1, v0

    iget v1, v1, Lnet/lingala/zip4j/model/ExtraDataRecord;->sizeOfData:I

    move v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/ExtraDataRecord;
    return v0
.end method

.method public setData([B)V
    .locals 4

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/ExtraDataRecord;
    move-object v1, p1

    .local v1, "data":[B
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lnet/lingala/zip4j/model/ExtraDataRecord;->data:[B

    .line 49
    return-void
.end method

.method public setHeader(J)V
    .locals 7

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/ExtraDataRecord;
    move-wide v1, p1

    .local v1, "header":J
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lnet/lingala/zip4j/model/ExtraDataRecord;->header:J

    .line 33
    return-void
.end method

.method public setSizeOfData(I)V
    .locals 4

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/ExtraDataRecord;
    move v1, p1

    .local v1, "sizeOfData":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lnet/lingala/zip4j/model/ExtraDataRecord;->sizeOfData:I

    .line 41
    return-void
.end method
