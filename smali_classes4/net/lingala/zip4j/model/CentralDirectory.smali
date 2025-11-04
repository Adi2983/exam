.class public Lnet/lingala/zip4j/model/CentralDirectory;
.super Ljava/lang/Object;
.source "CentralDirectory.java"


# instance fields
.field private digitalSignature:Lnet/lingala/zip4j/model/DigitalSignature;

.field private fileHeaders:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/CentralDirectory;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDigitalSignature()Lnet/lingala/zip4j/model/DigitalSignature;
    .locals 2

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/CentralDirectory;
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/model/CentralDirectory;->digitalSignature:Lnet/lingala/zip4j/model/DigitalSignature;

    move-object v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/CentralDirectory;
    return-object v0
.end method

.method public getFileHeaders()Ljava/util/ArrayList;
    .locals 2

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/CentralDirectory;
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/model/CentralDirectory;->fileHeaders:Ljava/util/ArrayList;

    move-object v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/CentralDirectory;
    return-object v0
.end method

.method public setDigitalSignature(Lnet/lingala/zip4j/model/DigitalSignature;)V
    .locals 4

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/CentralDirectory;
    move-object v1, p1

    .local v1, "digitalSignature":Lnet/lingala/zip4j/model/DigitalSignature;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lnet/lingala/zip4j/model/CentralDirectory;->digitalSignature:Lnet/lingala/zip4j/model/DigitalSignature;

    .line 41
    return-void
.end method

.method public setFileHeaders(Ljava/util/ArrayList;)V
    .locals 4

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/CentralDirectory;
    move-object v1, p1

    .local v1, "fileHeaders":Ljava/util/ArrayList;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lnet/lingala/zip4j/model/CentralDirectory;->fileHeaders:Ljava/util/ArrayList;

    .line 33
    return-void
.end method
