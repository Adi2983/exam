.class public Lnet/lingala/zip4j/model/UnzipParameters;
.super Ljava/lang/Object;
.source "UnzipParameters.java"


# instance fields
.field private ignoreAllFileAttributes:Z

.field private ignoreArchiveFileAttribute:Z

.field private ignoreDateTimeAttributes:Z

.field private ignoreHiddenFileAttribute:Z

.field private ignoreReadOnlyFileAttribute:Z

.field private ignoreSystemFileAttribute:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/UnzipParameters;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isIgnoreAllFileAttributes()Z
    .locals 2

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/UnzipParameters;
    move-object v1, v0

    iget-boolean v1, v1, Lnet/lingala/zip4j/model/UnzipParameters;->ignoreAllFileAttributes:Z

    move v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/UnzipParameters;
    return v0
.end method

.method public isIgnoreArchiveFileAttribute()Z
    .locals 2

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/UnzipParameters;
    move-object v1, v0

    iget-boolean v1, v1, Lnet/lingala/zip4j/model/UnzipParameters;->ignoreArchiveFileAttribute:Z

    move v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/UnzipParameters;
    return v0
.end method

.method public isIgnoreDateTimeAttributes()Z
    .locals 2

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/UnzipParameters;
    move-object v1, v0

    iget-boolean v1, v1, Lnet/lingala/zip4j/model/UnzipParameters;->ignoreDateTimeAttributes:Z

    move v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/UnzipParameters;
    return v0
.end method

.method public isIgnoreHiddenFileAttribute()Z
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/UnzipParameters;
    move-object v1, v0

    iget-boolean v1, v1, Lnet/lingala/zip4j/model/UnzipParameters;->ignoreHiddenFileAttribute:Z

    move v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/UnzipParameters;
    return v0
.end method

.method public isIgnoreReadOnlyFileAttribute()Z
    .locals 2

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/UnzipParameters;
    move-object v1, v0

    iget-boolean v1, v1, Lnet/lingala/zip4j/model/UnzipParameters;->ignoreReadOnlyFileAttribute:Z

    move v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/UnzipParameters;
    return v0
.end method

.method public isIgnoreSystemFileAttribute()Z
    .locals 2

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/UnzipParameters;
    move-object v1, v0

    iget-boolean v1, v1, Lnet/lingala/zip4j/model/UnzipParameters;->ignoreSystemFileAttribute:Z

    move v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/model/UnzipParameters;
    return v0
.end method

.method public setIgnoreAllFileAttributes(Z)V
    .locals 4

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/UnzipParameters;
    move v1, p1

    .local v1, "ignoreAllFileAttributes":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lnet/lingala/zip4j/model/UnzipParameters;->ignoreAllFileAttributes:Z

    .line 66
    return-void
.end method

.method public setIgnoreArchiveFileAttribute(Z)V
    .locals 4

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/UnzipParameters;
    move v1, p1

    .local v1, "ignoreArchiveFileAttribute":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lnet/lingala/zip4j/model/UnzipParameters;->ignoreArchiveFileAttribute:Z

    .line 50
    return-void
.end method

.method public setIgnoreDateTimeAttributes(Z)V
    .locals 4

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/UnzipParameters;
    move v1, p1

    .local v1, "ignoreDateTimeAttributes":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lnet/lingala/zip4j/model/UnzipParameters;->ignoreDateTimeAttributes:Z

    .line 74
    return-void
.end method

.method public setIgnoreHiddenFileAttribute(Z)V
    .locals 4

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/UnzipParameters;
    move v1, p1

    .local v1, "ignoreHiddenFileAttribute":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lnet/lingala/zip4j/model/UnzipParameters;->ignoreHiddenFileAttribute:Z

    .line 42
    return-void
.end method

.method public setIgnoreReadOnlyFileAttribute(Z)V
    .locals 4

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/UnzipParameters;
    move v1, p1

    .local v1, "ignoreReadOnlyFileAttribute":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lnet/lingala/zip4j/model/UnzipParameters;->ignoreReadOnlyFileAttribute:Z

    .line 34
    return-void
.end method

.method public setIgnoreSystemFileAttribute(Z)V
    .locals 4

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/model/UnzipParameters;
    move v1, p1

    .local v1, "ignoreSystemFileAttribute":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lnet/lingala/zip4j/model/UnzipParameters;->ignoreSystemFileAttribute:Z

    .line 58
    return-void
.end method
