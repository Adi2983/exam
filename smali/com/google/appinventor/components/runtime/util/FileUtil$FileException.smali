.class public Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;
.super Lcom/google/appinventor/components/runtime/errors/RuntimeError;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/FileUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileException"
.end annotation


# instance fields
.field private final CfJsMCmg8U782C2ivbbep8ZFrAD6R9Wq7P09zMpUKCFkpiEYodk6t8FdSxHzlHKV:I


# direct methods
.method public constructor <init>(I)V
    .locals 4

    .prologue
    .line 968
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/errors/RuntimeError;-><init>()V

    .line 969
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;->CfJsMCmg8U782C2ivbbep8ZFrAD6R9Wq7P09zMpUKCFkpiEYodk6t8FdSxHzlHKV:I

    .line 970
    return-void
.end method


# virtual methods
.method public getErrorMessageNumber()I
    .locals 2

    .prologue
    .line 973
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;->CfJsMCmg8U782C2ivbbep8ZFrAD6R9Wq7P09zMpUKCFkpiEYodk6t8FdSxHzlHKV:I

    move v0, v1

    return v0
.end method
