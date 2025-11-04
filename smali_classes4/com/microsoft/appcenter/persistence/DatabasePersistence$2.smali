.class Lcom/microsoft/appcenter/persistence/DatabasePersistence$2;
.super Ljava/lang/Object;
.source "DatabasePersistence.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/persistence/DatabasePersistence;->checkLargePayloadFilesAndCollectTheirSize()J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/appcenter/persistence/DatabasePersistence;


# direct methods
.method constructor <init>(Lcom/microsoft/appcenter/persistence/DatabasePersistence;)V
    .locals 4

    .prologue
    .line 663
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/persistence/DatabasePersistence$2;
    move-object v1, p1

    .local v1, "this$0":Lcom/microsoft/appcenter/persistence/DatabasePersistence;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/persistence/DatabasePersistence$2;->this$0:Lcom/microsoft/appcenter/persistence/DatabasePersistence;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 5

    .prologue
    .line 666
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/persistence/DatabasePersistence$2;
    move-object v1, p1

    .local v1, "file":Ljava/io/File;
    move-object v2, p2

    .local v2, "fileName":Ljava/lang/String;
    move-object v3, v2

    const-string/jumbo v4, ".json"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    move v0, v3

    .end local v0    # "this":Lcom/microsoft/appcenter/persistence/DatabasePersistence$2;
    return v0
.end method
