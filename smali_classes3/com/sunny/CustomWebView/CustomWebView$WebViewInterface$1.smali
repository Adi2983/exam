.class Lcom/sunny/CustomWebView/CustomWebView$WebViewInterface$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sunny/CustomWebView/CustomWebView$WebViewInterface;->setWebViewString(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sunny/CustomWebView/CustomWebView$WebViewInterface;

.field final synthetic val$newString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sunny/CustomWebView/CustomWebView$WebViewInterface;Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sunny/CustomWebView/CustomWebView$WebViewInterface$1;->this$1:Lcom/sunny/CustomWebView/CustomWebView$WebViewInterface;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sunny/CustomWebView/CustomWebView$WebViewInterface$1;->val$newString:Ljava/lang/String;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/sunny/CustomWebView/CustomWebView$WebViewInterface$1;->this$1:Lcom/sunny/CustomWebView/CustomWebView$WebViewInterface;

    iget-object v1, v1, Lcom/sunny/CustomWebView/CustomWebView$WebViewInterface;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    move-object v2, v0

    iget-object v2, v2, Lcom/sunny/CustomWebView/CustomWebView$WebViewInterface$1;->val$newString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sunny/CustomWebView/CustomWebView;->WebViewStringChanged(Ljava/lang/String;)V

    return-void
.end method
