.class Lcom/ghostfox/moliata/ExtendedWebViewer$2;
.super Ljava/lang/Object;
.source "ExtendedWebViewer.java"

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghostfox/moliata/ExtendedWebViewer;->WebViewer(Lcom/google/appinventor/components/runtime/WebViewer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghostfox/moliata/ExtendedWebViewer;


# direct methods
.method constructor <init>(Lcom/ghostfox/moliata/ExtendedWebViewer;)V
    .locals 4

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "this":Lcom/ghostfox/moliata/ExtendedWebViewer$2;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/ghostfox/moliata/ExtendedWebViewer$2;->this$0:Lcom/ghostfox/moliata/ExtendedWebViewer;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 15

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "this":Lcom/ghostfox/moliata/ExtendedWebViewer$2;
    move-object/from16 v1, p1

    .local v1, "url":Ljava/lang/String;
    move-object/from16 v2, p2

    .local v2, "userAgent":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "contentDisposition":Ljava/lang/String;
    move-object/from16 v4, p4

    .local v4, "mimeType":Ljava/lang/String;
    move-wide/from16 v5, p5

    .local v5, "contentLength":J
    move-object v7, v0

    iget-object v7, v7, Lcom/ghostfox/moliata/ExtendedWebViewer$2;->this$0:Lcom/ghostfox/moliata/ExtendedWebViewer;

    move-object v8, v1

    move-object v9, v4

    move-object v10, v2

    move-object v11, v3

    move-wide v12, v5

    invoke-virtual/range {v7 .. v13}, Lcom/ghostfox/moliata/ExtendedWebViewer;->OnDownloadNeeded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 157
    return-void
.end method
