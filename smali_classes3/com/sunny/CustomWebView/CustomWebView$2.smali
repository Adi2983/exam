.class Lcom/sunny/CustomWebView/CustomWebView$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/webkit/WebView$FindListener;


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

    iput-object v4, v3, Lcom/sunny/CustomWebView/CustomWebView$2;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sunny/CustomWebView/CustomWebView$2;->val$web:Landroid/webkit/WebView;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFindResultReceived(IIZ)V
    .locals 9

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    iget-object v4, v4, Lcom/sunny/CustomWebView/CustomWebView$2;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    move-object v5, v0

    iget-object v5, v5, Lcom/sunny/CustomWebView/CustomWebView$2;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    move-object v6, v0

    iget-object v6, v6, Lcom/sunny/CustomWebView/CustomWebView$2;->val$web:Landroid/webkit/WebView;

    invoke-virtual {v5, v6}, Lcom/sunny/CustomWebView/CustomWebView;->getIndex(Landroid/webkit/WebView;)I

    move-result v5

    move v6, v1

    move v7, v2

    move v8, v3

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/sunny/CustomWebView/CustomWebView;->FindResultReceived(IIIZ)V

    return-void
.end method
