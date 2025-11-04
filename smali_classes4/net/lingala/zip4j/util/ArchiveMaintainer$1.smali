.class Lnet/lingala/zip4j/util/ArchiveMaintainer$1;
.super Ljava/lang/Thread;
.source "ArchiveMaintainer.java"


# instance fields
.field final this$0:Lnet/lingala/zip4j/util/ArchiveMaintainer;

.field private final val$fileHeader:Lnet/lingala/zip4j/model/FileHeader;

.field private final val$progressMonitor:Lnet/lingala/zip4j/progress/ProgressMonitor;

.field private final val$zipModel:Lnet/lingala/zip4j/model/ZipModel;


# direct methods
.method constructor <init>(Lnet/lingala/zip4j/util/ArchiveMaintainer;Ljava/lang/String;Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/model/FileHeader;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    .locals 8

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/util/ArchiveMaintainer$1;
    move-object v1, p1

    move-object v2, p2

    .local v2, "$anonymous0":Ljava/lang/String;
    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, v0

    move-object v7, v2

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 1
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lnet/lingala/zip4j/util/ArchiveMaintainer$1;->this$0:Lnet/lingala/zip4j/util/ArchiveMaintainer;

    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Lnet/lingala/zip4j/util/ArchiveMaintainer$1;->val$zipModel:Lnet/lingala/zip4j/model/ZipModel;

    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Lnet/lingala/zip4j/util/ArchiveMaintainer$1;->val$fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Lnet/lingala/zip4j/util/ArchiveMaintainer$1;->val$progressMonitor:Lnet/lingala/zip4j/progress/ProgressMonitor;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/util/ArchiveMaintainer$1;
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lnet/lingala/zip4j/util/ArchiveMaintainer$1;->this$0:Lnet/lingala/zip4j/util/ArchiveMaintainer;

    move-object v3, v0

    iget-object v3, v3, Lnet/lingala/zip4j/util/ArchiveMaintainer$1;->val$zipModel:Lnet/lingala/zip4j/model/ZipModel;

    move-object v4, v0

    iget-object v4, v4, Lnet/lingala/zip4j/util/ArchiveMaintainer$1;->val$fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    move-object v5, v0

    iget-object v5, v5, Lnet/lingala/zip4j/util/ArchiveMaintainer$1;->val$progressMonitor:Lnet/lingala/zip4j/progress/ProgressMonitor;

    invoke-virtual {v2, v3, v4, v5}, Lnet/lingala/zip4j/util/ArchiveMaintainer;->initRemoveZipFile(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/model/FileHeader;Lnet/lingala/zip4j/progress/ProgressMonitor;)Ljava/util/HashMap;

    move-result-object v2

    .line 53
    move-object v2, v0

    iget-object v2, v2, Lnet/lingala/zip4j/util/ArchiveMaintainer$1;->val$progressMonitor:Lnet/lingala/zip4j/progress/ProgressMonitor;

    invoke-virtual {v2}, Lnet/lingala/zip4j/progress/ProgressMonitor;->endProgressMonitorSuccess()V
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v2

    move-object v1, v2

    goto :goto_0
.end method
