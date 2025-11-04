.class public Lnet/lingala/zip4j/model/Zip64ExtendedInfo;
.super Ljava/lang/Object;
.source "Zip64ExtendedInfo.java"


# instance fields
.field private compressedSize:J

.field private diskNumberStart:I

.field private header:I

.field private offsetLocalHeader:J

.field private size:I

.field private unCompressedSize:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/Zip64ExtendedInfo;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 34
    move-object v1, v0

    const-wide/16 v2, -0x1

    iput-wide v2, v1, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->compressedSize:J

    .line 35
    move-object v1, v0

    const-wide/16 v2, -0x1

    iput-wide v2, v1, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->unCompressedSize:J

    .line 36
    move-object v1, v0

    const-wide/16 v2, -0x1

    iput-wide v2, v1, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->offsetLocalHeader:J

    .line 37
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->diskNumberStart:I

    .line 38
    return-void
.end method


# virtual methods
.method public getCompressedSize()J
    .locals 3

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/Zip64ExtendedInfo;
    move-object v1, v0

    iget-wide v1, v1, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->compressedSize:J

    move-wide v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/Zip64ExtendedInfo;
    return-wide v0
.end method

.method public getDiskNumberStart()I
    .locals 2

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/Zip64ExtendedInfo;
    move-object v1, v0

    iget v1, v1, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->diskNumberStart:I

    move v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/Zip64ExtendedInfo;
    return v0
.end method

.method public getHeader()I
    .locals 2

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/Zip64ExtendedInfo;
    move-object v1, v0

    iget v1, v1, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->header:I

    move v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/Zip64ExtendedInfo;
    return v0
.end method

.method public getOffsetLocalHeader()J
    .locals 3

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/Zip64ExtendedInfo;
    move-object v1, v0

    iget-wide v1, v1, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->offsetLocalHeader:J

    move-wide v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/Zip64ExtendedInfo;
    return-wide v0
.end method

.method public getSize()I
    .locals 2

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/Zip64ExtendedInfo;
    move-object v1, v0

    iget v1, v1, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->size:I

    move v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/Zip64ExtendedInfo;
    return v0
.end method

.method public getUnCompressedSize()J
    .locals 3

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/Zip64ExtendedInfo;
    move-object v1, v0

    iget-wide v1, v1, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->unCompressedSize:J

    move-wide v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/Zip64ExtendedInfo;
    return-wide v0
.end method

.method public setCompressedSize(J)V
    .locals 7

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/Zip64ExtendedInfo;
    move-wide v1, p1

    .local v1, "compressedSize":J
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->compressedSize:J

    .line 62
    return-void
.end method

.method public setDiskNumberStart(I)V
    .locals 4

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/Zip64ExtendedInfo;
    move v1, p1

    .local v1, "diskNumberStart":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->diskNumberStart:I

    .line 86
    return-void
.end method

.method public setHeader(I)V
    .locals 4

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/Zip64ExtendedInfo;
    move v1, p1

    .local v1, "header":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->header:I

    .line 46
    return-void
.end method

.method public setOffsetLocalHeader(J)V
    .locals 7

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/Zip64ExtendedInfo;
    move-wide v1, p1

    .local v1, "offsetLocalHeader":J
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->offsetLocalHeader:J

    .line 78
    return-void
.end method

.method public setSize(I)V
    .locals 4

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/Zip64ExtendedInfo;
    move v1, p1

    .local v1, "size":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->size:I

    .line 54
    return-void
.end method

.method public setUnCompressedSize(J)V
    .locals 7

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/Zip64ExtendedInfo;
    move-wide v1, p1

    .local v1, "unCompressedSize":J
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->unCompressedSize:J

    .line 70
    return-void
.end method
