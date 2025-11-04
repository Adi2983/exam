.class Lcom/sunny/CustomWebView/CustomWebView$ChromeClient$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sunny/CustomWebView/CustomWebView$ChromeClient;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sunny/CustomWebView/CustomWebView$ChromeClient;


# direct methods
.method constructor <init>(Lcom/sunny/CustomWebView/CustomWebView$ChromeClient;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sunny/CustomWebView/CustomWebView$ChromeClient$1;->this$1:Lcom/sunny/CustomWebView/CustomWebView$ChromeClient;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 3

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/sunny/CustomWebView/CustomWebView$ChromeClient$1;->this$1:Lcom/sunny/CustomWebView/CustomWebView$ChromeClient;

    invoke-virtual {v2}, Lcom/sunny/CustomWebView/CustomWebView$ChromeClient;->updateControls()V

    return-void
.end method
