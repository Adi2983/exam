.class public Lcom/google/appinventor/components/runtime/util/ScopedFile;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final fileName:Ljava/lang/String;

.field private final scope:Lcom/google/appinventor/components/common/FileScope;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 17
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 18
    move-object v3, v2

    const-string/jumbo v4, "//"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 20
    sget-object v3, Lcom/google/appinventor/components/common/FileScope;->Asset:Lcom/google/appinventor/components/common/FileScope;

    move-object v1, v3

    .line 21
    move-object v3, v2

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 28
    :cond_0
    :goto_0
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/util/ScopedFile;->scope:Lcom/google/appinventor/components/common/FileScope;

    .line 29
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/util/ScopedFile;->fileName:Ljava/lang/String;

    .line 30
    return-void

    .line 22
    :cond_1
    move-object v3, v2

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    move-object v3, v1

    sget-object v4, Lcom/google/appinventor/components/common/FileScope;->Legacy:Lcom/google/appinventor/components/common/FileScope;

    if-ne v3, v4, :cond_2

    .line 24
    sget-object v3, Lcom/google/appinventor/components/common/FileScope;->Private:Lcom/google/appinventor/components/common/FileScope;

    move-object v1, v3

    goto :goto_0

    .line 25
    :cond_2
    move-object v3, v2

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v1

    sget-object v4, Lcom/google/appinventor/components/common/FileScope;->Legacy:Lcom/google/appinventor/components/common/FileScope;

    if-eq v3, v4, :cond_0

    .line 26
    move-object v3, v2

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 47
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Lcom/google/appinventor/components/runtime/util/ScopedFile;

    if-eqz v2, :cond_4

    .line 48
    move-object v2, v1

    check-cast v2, Lcom/google/appinventor/components/runtime/util/ScopedFile;

    move-object v1, v2

    .line 49
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/ScopedFile;->scope:Lcom/google/appinventor/components/common/FileScope;

    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/ScopedFile;->scope:Lcom/google/appinventor/components/common/FileScope;

    if-eq v2, v3, :cond_0

    .line 50
    const/4 v2, 0x0

    move v0, v2

    .line 60
    :goto_0
    return v0

    .line 52
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/ScopedFile;->fileName:Ljava/lang/String;

    if-nez v2, :cond_1

    move-object v2, v1

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/ScopedFile;->fileName:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 53
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 54
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/ScopedFile;->fileName:Ljava/lang/String;

    if-eqz v2, :cond_2

    move-object v2, v1

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/ScopedFile;->fileName:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 55
    :cond_2
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 57
    :cond_3
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/ScopedFile;->fileName:Ljava/lang/String;

    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/ScopedFile;->fileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    goto :goto_0

    .line 60
    :cond_4
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/ScopedFile;->fileName:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getScope()Lcom/google/appinventor/components/common/FileScope;
    .locals 2

    .prologue
    .line 33
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/ScopedFile;->scope:Lcom/google/appinventor/components/common/FileScope;

    move-object v0, v1

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 42
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/ScopedFile;->scope:Lcom/google/appinventor/components/common/FileScope;

    invoke-virtual {v1}, Lcom/google/appinventor/components/common/FileScope;->hashCode()I

    move-result v1

    const/16 v2, 0x25

    mul-int/lit8 v1, v1, 0x25

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/ScopedFile;->fileName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    move v0, v1

    return v0
.end method

.method public resolve(Lcom/google/appinventor/components/runtime/Form;)Ljava/io/File;
    .locals 8

    .prologue
    .line 65
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Ljava/io/File;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/util/ScopedFile;->fileName:Ljava/lang/String;

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/util/ScopedFile;->scope:Lcom/google/appinventor/components/common/FileScope;

    invoke-static {v4, v5, v6}, Lcom/google/appinventor/components/runtime/util/FileUtil;->resolveFileName(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    move-object v0, v2

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 70
    move-object v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string/jumbo v3, "ScopedFile{scope="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/ScopedFile;->scope:Lcom/google/appinventor/components/common/FileScope;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", fileName=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/ScopedFile;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method
