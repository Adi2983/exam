.class public abstract Lcom/google/appinventor/components/runtime/util/FileStreamReadOperation;
.super Lcom/google/appinventor/components/runtime/util/FileReadOperation;
.source "SourceFile"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/google/appinventor/components/runtime/util/FileStreamReadOperation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/util/FileStreamReadOperation;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;Z)V
    .locals 14

    .prologue
    .line 38
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    move-object v11, v4

    move-object v12, v5

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/google/appinventor/components/runtime/util/FileReadOperation;-><init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;Z)V

    .line 39
    return-void
.end method


# virtual methods
.method protected bridge synthetic process(Ljava/io/Closeable;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/io/InputStream;

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/util/FileStreamReadOperation;->process(Ljava/io/InputStream;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method protected process(Ljava/io/InputStream;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    move-object v0, p0

    move-object v1, p1

    const/4 v3, 0x0

    move-object v2, v3

    .line 46
    :try_start_0
    new-instance v3, Ljava/io/InputStreamReader;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object v2, v3

    .line 47
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/util/FileStreamReadOperation;->process(Ljava/io/InputStreamReader;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    move v1, v3

    .line 49
    move v3, v1

    if-eqz v3, :cond_0

    .line 50
    sget-object v3, Lcom/google/appinventor/components/runtime/util/FileStreamReadOperation;->LOG_TAG:Ljava/lang/String;

    move-object v4, v2

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/IOUtils;->closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 53
    :cond_0
    move v3, v1

    move v0, v3

    return v0

    .line 49
    :catchall_0
    move-exception v3

    move-object v1, v3

    .line 50
    sget-object v3, Lcom/google/appinventor/components/runtime/util/FileStreamReadOperation;->LOG_TAG:Ljava/lang/String;

    move-object v4, v2

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/IOUtils;->closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 52
    move-object v3, v1

    throw v3
.end method

.method protected process(Ljava/io/InputStreamReader;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/IOUtils;->readReader(Ljava/io/InputStreamReader;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/util/FileStreamReadOperation;->process(Ljava/lang/String;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method protected abstract process(Ljava/lang/String;)Z
.end method
