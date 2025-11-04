.class public Lnet/lingala/zip4j/model/DigitalSignature;
.super Ljava/lang/Object;
.source "DigitalSignature.java"


# instance fields
.field private headerSignature:I

.field private signatureData:Ljava/lang/String;

.field private sizeOfData:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/DigitalSignature;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHeaderSignature()I
    .locals 2

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/DigitalSignature;
    move-object v1, v0

    iget v1, v1, Lnet/lingala/zip4j/model/DigitalSignature;->headerSignature:I

    move v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/DigitalSignature;
    return v0
.end method

.method public getSignatureData()Ljava/lang/String;
    .locals 2

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/DigitalSignature;
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/model/DigitalSignature;->signatureData:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/DigitalSignature;
    return-object v0
.end method

.method public getSizeOfData()I
    .locals 2

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/DigitalSignature;
    move-object v1, v0

    iget v1, v1, Lnet/lingala/zip4j/model/DigitalSignature;->sizeOfData:I

    move v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/DigitalSignature;
    return v0
.end method

.method public setHeaderSignature(I)V
    .locals 4

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/DigitalSignature;
    move v1, p1

    .local v1, "headerSignature":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lnet/lingala/zip4j/model/DigitalSignature;->headerSignature:I

    .line 33
    return-void
.end method

.method public setSignatureData(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/DigitalSignature;
    move-object v1, p1

    .local v1, "signatureData":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lnet/lingala/zip4j/model/DigitalSignature;->signatureData:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setSizeOfData(I)V
    .locals 4

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/DigitalSignature;
    move v1, p1

    .local v1, "sizeOfData":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lnet/lingala/zip4j/model/DigitalSignature;->sizeOfData:I

    .line 41
    return-void
.end method
