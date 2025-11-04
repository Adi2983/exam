.class public Lnet/lingala/zip4j/model/EndCentralDirRecord;
.super Ljava/lang/Object;
.source "EndCentralDirRecord.java"


# instance fields
.field private comment:Ljava/lang/String;

.field private commentBytes:[B

.field private commentLength:I

.field private noOfThisDisk:I

.field private noOfThisDiskStartOfCentralDir:I

.field private offsetOfStartOfCentralDir:J

.field private signature:J

.field private sizeOfCentralDir:I

.field private totNoOfEntriesInCentralDir:I

.field private totNoOfEntriesInCentralDirOnThisDisk:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/EndCentralDirRecord;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getComment()Ljava/lang/String;
    .locals 2

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/EndCentralDirRecord;
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/model/EndCentralDirRecord;->comment:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/EndCentralDirRecord;
    return-object v0
.end method

.method public getCommentBytes()[B
    .locals 2

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/EndCentralDirRecord;
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/model/EndCentralDirRecord;->commentBytes:[B

    move-object v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/EndCentralDirRecord;
    return-object v0
.end method

.method public getCommentLength()I
    .locals 2

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/EndCentralDirRecord;
    move-object v1, v0

    iget v1, v1, Lnet/lingala/zip4j/model/EndCentralDirRecord;->commentLength:I

    move v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/EndCentralDirRecord;
    return v0
.end method

.method public getNoOfThisDisk()I
    .locals 2

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/EndCentralDirRecord;
    move-object v1, v0

    iget v1, v1, Lnet/lingala/zip4j/model/EndCentralDirRecord;->noOfThisDisk:I

    move v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/EndCentralDirRecord;
    return v0
.end method

.method public getNoOfThisDiskStartOfCentralDir()I
    .locals 2

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/EndCentralDirRecord;
    move-object v1, v0

    iget v1, v1, Lnet/lingala/zip4j/model/EndCentralDirRecord;->noOfThisDiskStartOfCentralDir:I

    move v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/EndCentralDirRecord;
    return v0
.end method

.method public getOffsetOfStartOfCentralDir()J
    .locals 3

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/EndCentralDirRecord;
    move-object v1, v0

    iget-wide v1, v1, Lnet/lingala/zip4j/model/EndCentralDirRecord;->offsetOfStartOfCentralDir:J

    move-wide v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/EndCentralDirRecord;
    return-wide v0
.end method

.method public getSignature()J
    .locals 3

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/EndCentralDirRecord;
    move-object v1, v0

    iget-wide v1, v1, Lnet/lingala/zip4j/model/EndCentralDirRecord;->signature:J

    move-wide v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/EndCentralDirRecord;
    return-wide v0
.end method

.method public getSizeOfCentralDir()I
    .locals 2

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/EndCentralDirRecord;
    move-object v1, v0

    iget v1, v1, Lnet/lingala/zip4j/model/EndCentralDirRecord;->sizeOfCentralDir:I

    move v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/EndCentralDirRecord;
    return v0
.end method

.method public getTotNoOfEntriesInCentralDir()I
    .locals 2

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/EndCentralDirRecord;
    move-object v1, v0

    iget v1, v1, Lnet/lingala/zip4j/model/EndCentralDirRecord;->totNoOfEntriesInCentralDir:I

    move v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/EndCentralDirRecord;
    return v0
.end method

.method public getTotNoOfEntriesInCentralDirOnThisDisk()I
    .locals 2

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/EndCentralDirRecord;
    move-object v1, v0

    iget v1, v1, Lnet/lingala/zip4j/model/EndCentralDirRecord;->totNoOfEntriesInCentralDirOnThisDisk:I

    move v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/EndCentralDirRecord;
    return v0
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/EndCentralDirRecord;
    move-object v1, p1

    .local v1, "comment":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lnet/lingala/zip4j/model/EndCentralDirRecord;->comment:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setCommentBytes([B)V
    .locals 4

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/EndCentralDirRecord;
    move-object v1, p1

    .local v1, "commentBytes":[B
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lnet/lingala/zip4j/model/EndCentralDirRecord;->commentBytes:[B

    .line 120
    return-void
.end method

.method public setCommentLength(I)V
    .locals 4

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/EndCentralDirRecord;
    move v1, p1

    .local v1, "commentLength":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lnet/lingala/zip4j/model/EndCentralDirRecord;->commentLength:I

    .line 104
    return-void
.end method

.method public setNoOfThisDisk(I)V
    .locals 4

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/EndCentralDirRecord;
    move v1, p1

    .local v1, "noOfThisDisk":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lnet/lingala/zip4j/model/EndCentralDirRecord;->noOfThisDisk:I

    .line 55
    return-void
.end method

.method public setNoOfThisDiskStartOfCentralDir(I)V
    .locals 4

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/EndCentralDirRecord;
    move v1, p1

    .local v1, "noOfThisDiskStartOfCentralDir":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lnet/lingala/zip4j/model/EndCentralDirRecord;->noOfThisDiskStartOfCentralDir:I

    .line 63
    return-void
.end method

.method public setOffsetOfStartOfCentralDir(J)V
    .locals 7

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/EndCentralDirRecord;
    move-wide v1, p1

    .local v1, "offSetOfStartOfCentralDir":J
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lnet/lingala/zip4j/model/EndCentralDirRecord;->offsetOfStartOfCentralDir:J

    .line 96
    return-void
.end method

.method public setSignature(J)V
    .locals 7

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/EndCentralDirRecord;
    move-wide v1, p1

    .local v1, "signature":J
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lnet/lingala/zip4j/model/EndCentralDirRecord;->signature:J

    .line 47
    return-void
.end method

.method public setSizeOfCentralDir(I)V
    .locals 4

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/EndCentralDirRecord;
    move v1, p1

    .local v1, "sizeOfCentralDir":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lnet/lingala/zip4j/model/EndCentralDirRecord;->sizeOfCentralDir:I

    .line 88
    return-void
.end method

.method public setTotNoOfEntriesInCentralDir(I)V
    .locals 4

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/EndCentralDirRecord;
    move v1, p1

    .local v1, "totNoOfEntrisInCentralDir":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lnet/lingala/zip4j/model/EndCentralDirRecord;->totNoOfEntriesInCentralDir:I

    .line 80
    return-void
.end method

.method public setTotNoOfEntriesInCentralDirOnThisDisk(I)V
    .locals 4

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/EndCentralDirRecord;
    move v1, p1

    .local v1, "totNoOfEntriesInCentralDirOnThisDisk":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lnet/lingala/zip4j/model/EndCentralDirRecord;->totNoOfEntriesInCentralDirOnThisDisk:I

    .line 72
    return-void
.end method
