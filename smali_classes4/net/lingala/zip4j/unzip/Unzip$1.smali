.class Lnet/lingala/zip4j/unzip/Unzip$1;
.super Ljava/lang/Thread;
.source "Unzip.java"


# instance fields
.field final this$0:Lnet/lingala/zip4j/unzip/Unzip;

.field private final val$fileHeaders:Ljava/util/ArrayList;

.field private final val$outPath:Ljava/lang/String;

.field private final val$progressMonitor:Lnet/lingala/zip4j/progress/ProgressMonitor;

.field private final val$unzipParameters:Lnet/lingala/zip4j/model/UnzipParameters;


# direct methods
.method constructor <init>(Lnet/lingala/zip4j/unzip/Unzip;Ljava/lang/String;Ljava/util/ArrayList;Lnet/lingala/zip4j/model/UnzipParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/unzip/Unzip$1;
    move-object v1, p1

    move-object v2, p2

    .local v2, "$anonymous0":Ljava/lang/String;
    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, v0

    move-object v8, v2

    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 1
    move-object v7, v0

    move-object v8, v1

    iput-object v8, v7, Lnet/lingala/zip4j/unzip/Unzip$1;->this$0:Lnet/lingala/zip4j/unzip/Unzip;

    move-object v7, v0

    move-object v8, v3

    iput-object v8, v7, Lnet/lingala/zip4j/unzip/Unzip$1;->val$fileHeaders:Ljava/util/ArrayList;

    move-object v7, v0

    move-object v8, v4

    iput-object v8, v7, Lnet/lingala/zip4j/unzip/Unzip$1;->val$unzipParameters:Lnet/lingala/zip4j/model/UnzipParameters;

    move-object v7, v0

    move-object v8, v5

    iput-object v8, v7, Lnet/lingala/zip4j/unzip/Unzip$1;->val$progressMonitor:Lnet/lingala/zip4j/progress/ProgressMonitor;

    move-object v7, v0

    move-object v8, v6

    iput-object v8, v7, Lnet/lingala/zip4j/unzip/Unzip$1;->val$outPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/unzip/Unzip$1;
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lnet/lingala/zip4j/unzip/Unzip$1;->this$0:Lnet/lingala/zip4j/unzip/Unzip;

    move-object v3, v0

    iget-object v3, v3, Lnet/lingala/zip4j/unzip/Unzip$1;->val$fileHeaders:Ljava/util/ArrayList;

    move-object v4, v0

    iget-object v4, v4, Lnet/lingala/zip4j/unzip/Unzip$1;->val$unzipParameters:Lnet/lingala/zip4j/model/UnzipParameters;

    move-object v5, v0

    iget-object v5, v5, Lnet/lingala/zip4j/unzip/Unzip$1;->val$progressMonitor:Lnet/lingala/zip4j/progress/ProgressMonitor;

    move-object v6, v0

    iget-object v6, v6, Lnet/lingala/zip4j/unzip/Unzip$1;->val$outPath:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5, v6}, Lnet/lingala/zip4j/unzip/Unzip;->access$0(Lnet/lingala/zip4j/unzip/Unzip;Ljava/util/ArrayList;Lnet/lingala/zip4j/model/UnzipParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;Ljava/lang/String;)V

    .line 66
    move-object v2, v0

    iget-object v2, v2, Lnet/lingala/zip4j/unzip/Unzip$1;->val$progressMonitor:Lnet/lingala/zip4j/progress/ProgressMonitor;

    invoke-virtual {v2}, Lnet/lingala/zip4j/progress/ProgressMonitor;->endProgressMonitorSuccess()V
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v2

    move-object v1, v2

    goto :goto_0
.end method
