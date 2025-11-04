.class Lnet/lingala/zip4j/unzip/Unzip$2;
.super Ljava/lang/Thread;
.source "Unzip.java"


# instance fields
.field final this$0:Lnet/lingala/zip4j/unzip/Unzip;

.field private final val$fileHeader:Lnet/lingala/zip4j/model/FileHeader;

.field private final val$newFileName:Ljava/lang/String;

.field private final val$outPath:Ljava/lang/String;

.field private final val$progressMonitor:Lnet/lingala/zip4j/progress/ProgressMonitor;

.field private final val$unzipParameters:Lnet/lingala/zip4j/model/UnzipParameters;


# direct methods
.method constructor <init>(Lnet/lingala/zip4j/unzip/Unzip;Ljava/lang/String;Lnet/lingala/zip4j/model/FileHeader;Ljava/lang/String;Lnet/lingala/zip4j/model/UnzipParameters;Ljava/lang/String;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    .locals 10

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/unzip/Unzip$2;
    move-object v1, p1

    move-object v2, p2

    .local v2, "$anonymous0":Ljava/lang/String;
    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object v8, v0

    move-object v9, v2

    invoke-direct {v8, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 1
    move-object v8, v0

    move-object v9, v1

    iput-object v9, v8, Lnet/lingala/zip4j/unzip/Unzip$2;->this$0:Lnet/lingala/zip4j/unzip/Unzip;

    move-object v8, v0

    move-object v9, v3

    iput-object v9, v8, Lnet/lingala/zip4j/unzip/Unzip$2;->val$fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    move-object v8, v0

    move-object v9, v4

    iput-object v9, v8, Lnet/lingala/zip4j/unzip/Unzip$2;->val$outPath:Ljava/lang/String;

    move-object v8, v0

    move-object v9, v5

    iput-object v9, v8, Lnet/lingala/zip4j/unzip/Unzip$2;->val$unzipParameters:Lnet/lingala/zip4j/model/UnzipParameters;

    move-object v8, v0

    move-object v9, v6

    iput-object v9, v8, Lnet/lingala/zip4j/unzip/Unzip$2;->val$newFileName:Ljava/lang/String;

    move-object v8, v0

    move-object v9, v7

    iput-object v9, v8, Lnet/lingala/zip4j/unzip/Unzip$2;->val$progressMonitor:Lnet/lingala/zip4j/progress/ProgressMonitor;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/unzip/Unzip$2;
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lnet/lingala/zip4j/unzip/Unzip$2;->this$0:Lnet/lingala/zip4j/unzip/Unzip;

    move-object v3, v0

    iget-object v3, v3, Lnet/lingala/zip4j/unzip/Unzip$2;->val$fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    move-object v4, v0

    iget-object v4, v4, Lnet/lingala/zip4j/unzip/Unzip$2;->val$outPath:Ljava/lang/String;

    move-object v5, v0

    iget-object v5, v5, Lnet/lingala/zip4j/unzip/Unzip$2;->val$unzipParameters:Lnet/lingala/zip4j/model/UnzipParameters;

    move-object v6, v0

    iget-object v6, v6, Lnet/lingala/zip4j/unzip/Unzip$2;->val$newFileName:Ljava/lang/String;

    move-object v7, v0

    iget-object v7, v7, Lnet/lingala/zip4j/unzip/Unzip$2;->val$progressMonitor:Lnet/lingala/zip4j/progress/ProgressMonitor;

    invoke-static/range {v2 .. v7}, Lnet/lingala/zip4j/unzip/Unzip;->access$1(Lnet/lingala/zip4j/unzip/Unzip;Lnet/lingala/zip4j/model/FileHeader;Ljava/lang/String;Lnet/lingala/zip4j/model/UnzipParameters;Ljava/lang/String;Lnet/lingala/zip4j/progress/ProgressMonitor;)V

    .line 110
    move-object v2, v0

    iget-object v2, v2, Lnet/lingala/zip4j/unzip/Unzip$2;->val$progressMonitor:Lnet/lingala/zip4j/progress/ProgressMonitor;

    invoke-virtual {v2}, Lnet/lingala/zip4j/progress/ProgressMonitor;->endProgressMonitorSuccess()V
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_0
    return-void

    .line 111
    :catch_0
    move-exception v2

    move-object v1, v2

    goto :goto_0
.end method
