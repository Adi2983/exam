.class public abstract Lcom/google/appinventor/components/runtime/util/CompositeFileOperation;
.super Lcom/google/appinventor/components/runtime/util/FileOperation;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/util/CompositeFileOperation$FileOperand;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/appinventor/components/runtime/util/FileOperation;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/google/appinventor/components/runtime/util/CompositeFileOperation$FileOperand;",
        ">;"
    }
.end annotation


# instance fields
.field private final DmQGLROFyZ9Eo0RSsJcpZNxJZjgcsPDfYPi3awNwmyyErT71sGU5mvgG4PDW3yL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/appinventor/components/runtime/util/CompositeFileOperation$FileOperand;",
            ">;"
        }
    .end annotation
.end field

.field private dNRA8zk5IiUh4Pp3hPTF1cOQ5zFA2APl8kyLVDxMBtQN7HXMvFLEdGqNCHj4PKNw:Z

.field private final permissions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Z)V
    .locals 11

    .prologue
    .line 38
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move v9, v4

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/util/FileOperation;-><init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Z)V

    .line 33
    move-object v5, v0

    new-instance v6, Ljava/util/ArrayList;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v5, Lcom/google/appinventor/components/runtime/util/CompositeFileOperation;->DmQGLROFyZ9Eo0RSsJcpZNxJZjgcsPDfYPi3awNwmyyErT71sGU5mvgG4PDW3yL:Ljava/util/List;

    .line 34
    move-object v5, v0

    new-instance v6, Ljava/util/HashSet;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    iput-object v6, v5, Lcom/google/appinventor/components/runtime/util/CompositeFileOperation;->permissions:Ljava/util/Set;

    .line 35
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/google/appinventor/components/runtime/util/CompositeFileOperation;->dNRA8zk5IiUh4Pp3hPTF1cOQ5zFA2APl8kyLVDxMBtQN7HXMvFLEdGqNCHj4PKNw:Z

    .line 39
    return-void
.end method


# virtual methods
.method public addFile(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/FileAccessMode;)V
    .locals 10

    .prologue
    .line 42
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    new-instance v4, Lcom/google/appinventor/components/runtime/util/CompositeFileOperation$FileOperand;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/util/CompositeFileOperation;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v7, v2

    move-object v8, v1

    invoke-static {v6, v7, v8}, Lcom/google/appinventor/components/runtime/util/FileUtil;->resolveFileName(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;)Ljava/lang/String;

    move-result-object v6

    move-object v7, v3

    invoke-direct {v5, v6, v7}, Lcom/google/appinventor/components/runtime/util/CompositeFileOperation$FileOperand;-><init>(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/FileAccessMode;)V

    move-object v1, v4

    .line 43
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/util/CompositeFileOperation;->DmQGLROFyZ9Eo0RSsJcpZNxJZjgcsPDfYPi3awNwmyyErT71sGU5mvgG4PDW3yL:Ljava/util/List;

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 44
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/util/CompositeFileOperation;->permissions:Ljava/util/Set;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/util/CompositeFileOperation;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v6, v2

    move-object v7, v3

    invoke-static {v5, v6, v7}, Lcom/google/appinventor/components/runtime/util/FileUtil;->getNeededPermission(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/FileAccessMode;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 45
    move-object v4, v0

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    iget-boolean v5, v5, Lcom/google/appinventor/components/runtime/util/CompositeFileOperation;->dNRA8zk5IiUh4Pp3hPTF1cOQ5zFA2APl8kyLVDxMBtQN7HXMvFLEdGqNCHj4PKNw:Z

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/util/CompositeFileOperation;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v7, v1

    invoke-static {v7}, Lcom/google/appinventor/components/runtime/util/CompositeFileOperation$FileOperand;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/CompositeFileOperation$FileOperand;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/appinventor/components/runtime/util/FileUtil;->isExternalStorageUri(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Z

    move-result v6

    or-int/2addr v5, v6

    iput-boolean v5, v4, Lcom/google/appinventor/components/runtime/util/CompositeFileOperation;->dNRA8zk5IiUh4Pp3hPTF1cOQ5zFA2APl8kyLVDxMBtQN7HXMvFLEdGqNCHj4PKNw:Z

    .line 46
    return-void
.end method

.method public getPermissions()Ljava/util/List;
    .locals 5
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
    .line 50
    move-object v0, p0

    new-instance v1, Ljava/util/ArrayList;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/CompositeFileOperation;->permissions:Ljava/util/Set;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/appinventor/components/runtime/util/CompositeFileOperation$FileOperand;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/CompositeFileOperation;->DmQGLROFyZ9Eo0RSsJcpZNxJZjgcsPDfYPi3awNwmyyErT71sGU5mvgG4PDW3yL:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method protected needsExternalStorage()Z
    .locals 2

    .prologue
    .line 58
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/util/CompositeFileOperation;->dNRA8zk5IiUh4Pp3hPTF1cOQ5zFA2APl8kyLVDxMBtQN7HXMvFLEdGqNCHj4PKNw:Z

    move v0, v1

    return v0
.end method

.method protected abstract performOperation()V
.end method
