.class public Lnet/lingala/zip4j/model/DataDescriptor;
.super Ljava/lang/Object;
.source "DataDescriptor.java"


# instance fields
.field private compressedSize:I

.field private crc32:Ljava/lang/String;

.field private uncompressedSize:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/DataDescriptor;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCompressedSize()I
    .locals 2

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/DataDescriptor;
    move-object v1, v0

    iget v1, v1, Lnet/lingala/zip4j/model/DataDescriptor;->compressedSize:I

    move v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/DataDescriptor;
    return v0
.end method

.method public getCrc32()Ljava/lang/String;
    .locals 2

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/DataDescriptor;
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/model/DataDescriptor;->crc32:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/DataDescriptor;
    return-object v0
.end method

.method public getUncompressedSize()I
    .locals 2

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/DataDescriptor;
    move-object v1, v0

    iget v1, v1, Lnet/lingala/zip4j/model/DataDescriptor;->uncompressedSize:I

    move v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/DataDescriptor;
    return v0
.end method

.method public setCompressedSize(I)V
    .locals 4

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/DataDescriptor;
    move v1, p1

    .local v1, "compressedSize":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lnet/lingala/zip4j/model/DataDescriptor;->compressedSize:I

    .line 41
    return-void
.end method

.method public setCrc32(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/DataDescriptor;
    move-object v1, p1

    .local v1, "crc32":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lnet/lingala/zip4j/model/DataDescriptor;->crc32:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setUncompressedSize(I)V
    .locals 4

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/DataDescriptor;
    move v1, p1

    .local v1, "uncompressedSize":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lnet/lingala/zip4j/model/DataDescriptor;->uncompressedSize:I

    .line 49
    return-void
.end method
