.class Lcom/sunny/CustomWebView/CustomWebView$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sunny/CustomWebView/CustomWebView;->resetWebView(Landroid/webkit/WebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sunny/CustomWebView/CustomWebView;

.field final synthetic val$web:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/sunny/CustomWebView/CustomWebView;Landroid/webkit/WebView;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sunny/CustomWebView/CustomWebView$1;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sunny/CustomWebView/CustomWebView$1;->val$web:Landroid/webkit/WebView;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-wide/from16 v5, p5

    move-object v7, v0

    iget-object v7, v7, Lcom/sunny/CustomWebView/CustomWebView$1;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    move-object v8, v0

    iget-object v8, v8, Lcom/sunny/CustomWebView/CustomWebView$1;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    move-object v9, v0

    iget-object v9, v9, Lcom/sunny/CustomWebView/CustomWebView$1;->val$web:Landroid/webkit/WebView;

    invoke-virtual {v8, v9}, Lcom/sunny/CustomWebView/CustomWebView;->getIndex(Landroid/webkit/WebView;)I

    move-result v8

    move-object v9, v1

    move-object v10, v3

    move-object v11, v4

    move-wide v12, v5

    invoke-virtual/range {v7 .. v13}, Lcom/sunny/CustomWebView/CustomWebView;->OnDownloadNeeded(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
