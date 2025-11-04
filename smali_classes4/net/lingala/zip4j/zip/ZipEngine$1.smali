.class Lnet/lingala/zip4j/zip/ZipEngine$1;
.super Ljava/lang/Thread;
.source "ZipEngine.java"


# instance fields
.field final this$0:Lnet/lingala/zip4j/zip/ZipEngine;

.field private final val$fileList:Ljava/util/ArrayList;

.field private final val$parameters:Lnet/lingala/zip4j/model/ZipParameters;

.field private final val$progressMonitor:Lnet/lingala/zip4j/progress/ProgressMonitor;


# direct methods
.method constructor <init>(Lnet/lingala/zip4j/zip/ZipEngine;Ljava/lang/String;Ljava/util/ArrayList;Lnet/lingala/zip4j/model/ZipParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    .locals 8

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/zip/ZipEngine$1;
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

    iput-object v7, v6, Lnet/lingala/zip4j/zip/ZipEngine$1;->this$0:Lnet/lingala/zip4j/zip/ZipEngine;

    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Lnet/lingala/zip4j/zip/ZipEngine$1;->val$fileList:Ljava/util/ArrayList;

    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Lnet/lingala/zip4j/zip/ZipEngine$1;->val$parameters:Lnet/lingala/zip4j/model/ZipParameters;

    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Lnet/lingala/zip4j/zip/ZipEngine$1;->val$progressMonitor:Lnet/lingala/zip4j/progress/ProgressMonitor;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/zip/ZipEngine$1;
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lnet/lingala/zip4j/zip/ZipEngine$1;->this$0:Lnet/lingala/zip4j/zip/ZipEngine;

    move-object v3, v0

    iget-object v3, v3, Lnet/lingala/zip4j/zip/ZipEngine$1;->val$fileList:Ljava/util/ArrayList;

    move-object v4, v0

    iget-object v4, v4, Lnet/lingala/zip4j/zip/ZipEngine$1;->val$parameters:Lnet/lingala/zip4j/model/ZipParameters;

    move-object v5, v0

    iget-object v5, v5, Lnet/lingala/zip4j/zip/ZipEngine$1;->val$progressMonitor:Lnet/lingala/zip4j/progress/ProgressMonitor;

    invoke-static {v2, v3, v4, v5}, Lnet/lingala/zip4j/zip/ZipEngine;->access$0(Lnet/lingala/zip4j/zip/ZipEngine;Ljava/util/ArrayList;Lnet/lingala/zip4j/model/ZipParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v2

    move-object v1, v2

    goto :goto_0
.end method
