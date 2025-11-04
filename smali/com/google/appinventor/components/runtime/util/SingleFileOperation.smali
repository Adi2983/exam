.class public abstract Lcom/google/appinventor/components/runtime/util/SingleFileOperation;
.super Lcom/google/appinventor/components/runtime/util/FileOperation;
.source "SourceFile"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field protected final accessMode:Lcom/google/appinventor/components/runtime/util/FileAccessMode;

.field protected final file:Ljava/io/File;

.field protected final fileName:Ljava/lang/String;

.field protected final resolvedPath:Ljava/lang/String;

.field protected final scope:Lcom/google/appinventor/components/common/FileScope;

.field protected final scopedFile:Lcom/google/appinventor/components/runtime/util/ScopedFile;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/google/appinventor/components/runtime/util/FileOperation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/util/SingleFileOperation;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/ScopedFile;Lcom/google/appinventor/components/runtime/util/FileAccessMode;Z)V
    .locals 13

    .prologue
    .line 68
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    move v11, v6

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/google/appinventor/components/runtime/util/FileOperation;-><init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Z)V

    .line 69
    move-object v7, v0

    move-object v8, v4

    invoke-virtual {v8}, Lcom/google/appinventor/components/runtime/util/ScopedFile;->getScope()Lcom/google/appinventor/components/common/FileScope;

    move-result-object v8

    iput-object v8, v7, Lcom/google/appinventor/components/runtime/util/SingleFileOperation;->scope:Lcom/google/appinventor/components/common/FileScope;

    .line 70
    move-object v7, v0

    move-object v8, v5

    iput-object v8, v7, Lcom/google/appinventor/components/runtime/util/SingleFileOperation;->accessMode:Lcom/google/appinventor/components/runtime/util/FileAccessMode;

    .line 71
    move-object v7, v0

    move-object v8, v4

    invoke-virtual {v8}, Lcom/google/appinventor/components/runtime/util/ScopedFile;->getFileName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/google/appinventor/components/runtime/util/SingleFileOperation;->fileName:Ljava/lang/String;

    .line 72
    move-object v7, v0

    move-object v8, v4

    iput-object v8, v7, Lcom/google/appinventor/components/runtime/util/SingleFileOperation;->scopedFile:Lcom/google/appinventor/components/runtime/util/ScopedFile;

    .line 73
    move-object v7, v0

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/util/SingleFileOperation;->scopedFile:Lcom/google/appinventor/components/runtime/util/ScopedFile;

    move-object v9, v1

    invoke-virtual {v8, v9}, Lcom/google/appinventor/components/runtime/util/ScopedFile;->resolve(Lcom/google/appinventor/components/runtime/Form;)Ljava/io/File;

    move-result-object v8

    iput-object v8, v7, Lcom/google/appinventor/components/runtime/util/SingleFileOperation;->file:Ljava/io/File;

    .line 74
    move-object v7, v0

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/util/SingleFileOperation;->file:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/google/appinventor/components/runtime/util/SingleFileOperation;->resolvedPath:Ljava/lang/String;

    .line 75
    sget-object v7, Lcom/google/appinventor/components/runtime/util/SingleFileOperation;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const-string/jumbo v10, "resolvedPath = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v9, v0

    iget-object v9, v9, Lcom/google/appinventor/components/runtime/util/SingleFileOperation;->resolvedPath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 76
    return-void
.end method

.method protected constructor <init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;Lcom/google/appinventor/components/runtime/util/FileAccessMode;)V
    .locals 15

    .prologue
    .line 90
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    move-object v11, v4

    move-object v12, v5

    move-object v13, v6

    const/4 v14, 0x1

    invoke-direct/range {v7 .. v14}, Lcom/google/appinventor/components/runtime/util/SingleFileOperation;-><init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;Lcom/google/appinventor/components/runtime/util/FileAccessMode;Z)V

    .line 91
    return-void
.end method

.method protected constructor <init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;Lcom/google/appinventor/components/runtime/util/FileAccessMode;Z)V
    .locals 14

    .prologue
    .line 45
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    move-object v11, v3

    move v12, v7

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/google/appinventor/components/runtime/util/FileOperation;-><init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Z)V

    .line 46
    move-object v8, v0

    move-object v9, v5

    iput-object v9, v8, Lcom/google/appinventor/components/runtime/util/SingleFileOperation;->scope:Lcom/google/appinventor/components/common/FileScope;

    .line 47
    move-object v8, v0

    move-object v9, v6

    iput-object v9, v8, Lcom/google/appinventor/components/runtime/util/SingleFileOperation;->accessMode:Lcom/google/appinventor/components/runtime/util/FileAccessMode;

    .line 48
    move-object v8, v0

    move-object v9, v4

    iput-object v9, v8, Lcom/google/appinventor/components/runtime/util/SingleFileOperation;->fileName:Ljava/lang/String;

    .line 49
    move-object v8, v0

    new-instance v9, Lcom/google/appinventor/components/runtime/util/ScopedFile;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v5

    move-object v12, v4

    invoke-direct {v10, v11, v12}, Lcom/google/appinventor/components/runtime/util/ScopedFile;-><init>(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;)V

    iput-object v9, v8, Lcom/google/appinventor/components/runtime/util/SingleFileOperation;->scopedFile:Lcom/google/appinventor/components/runtime/util/ScopedFile;

    .line 50
    move-object v8, v0

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    iget-object v9, v9, Lcom/google/appinventor/components/runtime/util/SingleFileOperation;->scopedFile:Lcom/google/appinventor/components/runtime/util/ScopedFile;

    move-object v10, v1

    invoke-virtual {v9, v10}, Lcom/google/appinventor/components/runtime/util/ScopedFile;->resolve(Lcom/google/appinventor/components/runtime/Form;)Ljava/io/File;

    move-result-object v9

    iput-object v9, v8, Lcom/google/appinventor/components/runtime/util/SingleFileOperation;->file:Ljava/io/File;

    .line 51
    move-object v8, v0

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    iget-object v9, v9, Lcom/google/appinventor/components/runtime/util/SingleFileOperation;->file:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/google/appinventor/components/runtime/util/SingleFileOperation;->resolvedPath:Ljava/lang/String;

    .line 52
    sget-object v8, Lcom/google/appinventor/components/runtime/util/SingleFileOperation;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const-string/jumbo v11, "resolvedPath = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v10, v0

    iget-object v10, v10, Lcom/google/appinventor/components/runtime/util/SingleFileOperation;->resolvedPath:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 53
    return-void
.end method


# virtual methods
.method public final getFile()Ljava/io/File;
    .locals 2

    .prologue
    .line 109
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/SingleFileOperation;->file:Ljava/io/File;

    move-object v0, v1

    return-object v0
.end method

.method public getPermissions()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/SingleFileOperation;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/SingleFileOperation;->resolvedPath:Ljava/lang/String;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/util/SingleFileOperation;->accessMode:Lcom/google/appinventor/components/runtime/util/FileAccessMode;

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/FileUtil;->getNeededPermission(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/FileAccessMode;)Ljava/lang/String;

    move-result-object v2

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    .line 96
    move-object v1, v3

    if-nez v2, :cond_0

    .line 97
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    move-object v0, v2

    .line 99
    :goto_0
    return-object v0

    :cond_0
    move-object v2, v1

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public final getScope()Lcom/google/appinventor/components/common/FileScope;
    .locals 2

    .prologue
    .line 136
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/SingleFileOperation;->scope:Lcom/google/appinventor/components/common/FileScope;

    move-object v0, v1

    return-object v0
.end method

.method public final getScopedFile()Lcom/google/appinventor/components/runtime/util/ScopedFile;
    .locals 2

    .prologue
    .line 118
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/SingleFileOperation;->scopedFile:Lcom/google/appinventor/components/runtime/util/ScopedFile;

    move-object v0, v1

    return-object v0
.end method

.method public final isAsset()Z
    .locals 3

    .prologue
    .line 127
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/SingleFileOperation;->fileName:Ljava/lang/String;

    const-string/jumbo v2, "//"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/SingleFileOperation;->scope:Lcom/google/appinventor/components/common/FileScope;

    sget-object v2, Lcom/google/appinventor/components/common/FileScope;->Asset:Lcom/google/appinventor/components/common/FileScope;

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    move v0, v1

    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method protected needsExternalStorage()Z
    .locals 3

    .prologue
    .line 158
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/SingleFileOperation;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/SingleFileOperation;->resolvedPath:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/util/FileUtil;->isExternalStorageUri(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method protected final needsPermission()Z
    .locals 3

    .prologue
    .line 162
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/SingleFileOperation;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/SingleFileOperation;->resolvedPath:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/util/FileUtil;->needsPermission(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method protected performOperation()V
    .locals 4

    .prologue
    .line 153
    move-object v0, p0

    move-object v1, v0

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/SingleFileOperation;->scopedFile:Lcom/google/appinventor/components/runtime/util/ScopedFile;

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/util/SingleFileOperation;->processFile(Lcom/google/appinventor/components/runtime/util/ScopedFile;)V

    .line 154
    return-void
.end method

.method protected abstract processFile(Lcom/google/appinventor/components/runtime/util/ScopedFile;)V
.end method
