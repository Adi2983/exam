.class public Lnet/lingala/zip4j/model/ZipModel;
.super Ljava/lang/Object;
.source "ZipModel.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private archiveExtraDataRecord:Lnet/lingala/zip4j/model/ArchiveExtraDataRecord;

.field private centralDirectory:Lnet/lingala/zip4j/model/CentralDirectory;

.field private dataDescriptorList:Ljava/util/List;

.field private end:J

.field private endCentralDirRecord:Lnet/lingala/zip4j/model/EndCentralDirRecord;

.field private fileNameCharset:Ljava/lang/String;

.field private isNestedZipFile:Z

.field private isZip64Format:Z

.field private localFileHeaderList:Ljava/util/List;

.field private splitArchive:Z

.field private splitLength:J

.field private start:J

.field private zip64EndCentralDirLocator:Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

.field private zip64EndCentralDirRecord:Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;

.field private zipFile:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/ZipModel;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 54
    move-object v1, v0

    const-wide/16 v2, -0x1

    iput-wide v2, v1, Lnet/lingala/zip4j/model/ZipModel;->splitLength:J

    .line 55
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 173
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/ZipModel;
    move-object v1, v0

    invoke-super {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/ZipModel;
    return-object v0
.end method

.method public getArchiveExtraDataRecord()Lnet/lingala/zip4j/model/ArchiveExtraDataRecord;
    .locals 2

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/ZipModel;
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/model/ZipModel;->archiveExtraDataRecord:Lnet/lingala/zip4j/model/ArchiveExtraDataRecord;

    move-object v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/ZipModel;
    return-object v0
.end method

.method public getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;
    .locals 2

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/ZipModel;
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/model/ZipModel;->centralDirectory:Lnet/lingala/zip4j/model/CentralDirectory;

    move-object v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/ZipModel;
    return-object v0
.end method

.method public getDataDescriptorList()Ljava/util/List;
    .locals 2

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/ZipModel;
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/model/ZipModel;->dataDescriptorList:Ljava/util/List;

    move-object v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/ZipModel;
    return-object v0
.end method

.method public getEnd()J
    .locals 3

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/ZipModel;
    move-object v1, v0

    iget-wide v1, v1, Lnet/lingala/zip4j/model/ZipModel;->end:J

    move-wide v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/ZipModel;
    return-wide v0
.end method

.method public getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;
    .locals 2

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/ZipModel;
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/model/ZipModel;->endCentralDirRecord:Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-object v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/ZipModel;
    return-object v0
.end method

.method public getFileNameCharset()Ljava/lang/String;
    .locals 2

    .prologue
    .line 177
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/ZipModel;
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/model/ZipModel;->fileNameCharset:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/ZipModel;
    return-object v0
.end method

.method public getLocalFileHeaderList()Ljava/util/List;
    .locals 2

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/ZipModel;
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/model/ZipModel;->localFileHeaderList:Ljava/util/List;

    move-object v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/ZipModel;
    return-object v0
.end method

.method public getSplitLength()J
    .locals 3

    .prologue
    .line 165
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/ZipModel;
    move-object v1, v0

    iget-wide v1, v1, Lnet/lingala/zip4j/model/ZipModel;->splitLength:J

    move-wide v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/ZipModel;
    return-wide v0
.end method

.method public getStart()J
    .locals 3

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/ZipModel;
    move-object v1, v0

    iget-wide v1, v1, Lnet/lingala/zip4j/model/ZipModel;->start:J

    move-wide v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/ZipModel;
    return-wide v0
.end method

.method public getZip64EndCentralDirLocator()Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;
    .locals 2

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/ZipModel;
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/model/ZipModel;->zip64EndCentralDirLocator:Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    move-object v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/ZipModel;
    return-object v0
.end method

.method public getZip64EndCentralDirRecord()Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;
    .locals 2

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/ZipModel;
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/model/ZipModel;->zip64EndCentralDirRecord:Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;

    move-object v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/ZipModel;
    return-object v0
.end method

.method public getZipFile()Ljava/lang/String;
    .locals 2

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/ZipModel;
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/model/ZipModel;->zipFile:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/ZipModel;
    return-object v0
.end method

.method public isNestedZipFile()Z
    .locals 2

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/ZipModel;
    move-object v1, v0

    iget-boolean v1, v1, Lnet/lingala/zip4j/model/ZipModel;->isNestedZipFile:Z

    move v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/ZipModel;
    return v0
.end method

.method public isSplitArchive()Z
    .locals 2

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/ZipModel;
    move-object v1, v0

    iget-boolean v1, v1, Lnet/lingala/zip4j/model/ZipModel;->splitArchive:Z

    move v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/ZipModel;
    return v0
.end method

.method public isZip64Format()Z
    .locals 2

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/ZipModel;
    move-object v1, v0

    iget-boolean v1, v1, Lnet/lingala/zip4j/model/ZipModel;->isZip64Format:Z

    move v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/ZipModel;
    return v0
.end method

.method public setArchiveExtraDataRecord(Lnet/lingala/zip4j/model/ArchiveExtraDataRecord;)V
    .locals 4

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/ZipModel;
    move-object v1, p1

    .local v1, "archiveExtraDataRecord":Lnet/lingala/zip4j/model/ArchiveExtraDataRecord;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lnet/lingala/zip4j/model/ZipModel;->archiveExtraDataRecord:Lnet/lingala/zip4j/model/ArchiveExtraDataRecord;

    .line 96
    return-void
.end method

.method public setCentralDirectory(Lnet/lingala/zip4j/model/CentralDirectory;)V
    .locals 4

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/ZipModel;
    move-object v1, p1

    .local v1, "centralDirectory":Lnet/lingala/zip4j/model/CentralDirectory;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lnet/lingala/zip4j/model/ZipModel;->centralDirectory:Lnet/lingala/zip4j/model/CentralDirectory;

    .line 79
    return-void
.end method

.method public setDataDescriptorList(Ljava/util/List;)V
    .locals 4

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/ZipModel;
    move-object v1, p1

    .local v1, "dataDescriptorList":Ljava/util/List;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lnet/lingala/zip4j/model/ZipModel;->dataDescriptorList:Ljava/util/List;

    .line 71
    return-void
.end method

.method public setEnd(J)V
    .locals 7

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/ZipModel;
    move-wide v1, p1

    .local v1, "end":J
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lnet/lingala/zip4j/model/ZipModel;->end:J

    .line 162
    return-void
.end method

.method public setEndCentralDirRecord(Lnet/lingala/zip4j/model/EndCentralDirRecord;)V
    .locals 4

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/ZipModel;
    move-object v1, p1

    .local v1, "endCentralDirRecord":Lnet/lingala/zip4j/model/EndCentralDirRecord;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lnet/lingala/zip4j/model/ZipModel;->endCentralDirRecord:Lnet/lingala/zip4j/model/EndCentralDirRecord;

    .line 87
    return-void
.end method

.method public setFileNameCharset(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 181
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/ZipModel;
    move-object v1, p1

    .local v1, "fileNameCharset":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lnet/lingala/zip4j/model/ZipModel;->fileNameCharset:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public setLocalFileHeaderList(Ljava/util/List;)V
    .locals 4

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/ZipModel;
    move-object v1, p1

    .local v1, "localFileHeaderList":Ljava/util/List;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lnet/lingala/zip4j/model/ZipModel;->localFileHeaderList:Ljava/util/List;

    .line 63
    return-void
.end method

.method public setNestedZipFile(Z)V
    .locals 4

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/ZipModel;
    move v1, p1

    .local v1, "isNestedZipFile":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lnet/lingala/zip4j/model/ZipModel;->isNestedZipFile:Z

    .line 146
    return-void
.end method

.method public setSplitArchive(Z)V
    .locals 4

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/ZipModel;
    move v1, p1

    .local v1, "splitArchive":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lnet/lingala/zip4j/model/ZipModel;->splitArchive:Z

    .line 104
    return-void
.end method

.method public setSplitLength(J)V
    .locals 7

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/ZipModel;
    move-wide v1, p1

    .local v1, "splitLength":J
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lnet/lingala/zip4j/model/ZipModel;->splitLength:J

    .line 170
    return-void
.end method

.method public setStart(J)V
    .locals 7

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/ZipModel;
    move-wide v1, p1

    .local v1, "start":J
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lnet/lingala/zip4j/model/ZipModel;->start:J

    .line 154
    return-void
.end method

.method public setZip64EndCentralDirLocator(Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;)V
    .locals 4

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/ZipModel;
    move-object v1, p1

    .local v1, "zip64EndCentralDirLocator":Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lnet/lingala/zip4j/model/ZipModel;->zip64EndCentralDirLocator:Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    .line 121
    return-void
.end method

.method public setZip64EndCentralDirRecord(Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;)V
    .locals 4

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/ZipModel;
    move-object v1, p1

    .local v1, "zip64EndCentralDirRecord":Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lnet/lingala/zip4j/model/ZipModel;->zip64EndCentralDirRecord:Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;

    .line 130
    return-void
.end method

.method public setZip64Format(Z)V
    .locals 4

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/ZipModel;
    move v1, p1

    .local v1, "isZip64Format":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lnet/lingala/zip4j/model/ZipModel;->isZip64Format:Z

    .line 138
    return-void
.end method

.method public setZipFile(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/ZipModel;
    move-object v1, p1

    .local v1, "zipFile":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lnet/lingala/zip4j/model/ZipModel;->zipFile:Ljava/lang/String;

    .line 112
    return-void
.end method
