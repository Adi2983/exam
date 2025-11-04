.class Lcom/sunny/CustomWebView/CustomWebView$7;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sunny/CustomWebView/CustomWebView;->EvaluateJavaScript(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sunny/CustomWebView/CustomWebView;


# direct methods
.method constructor <init>(Lcom/sunny/CustomWebView/CustomWebView;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sunny/CustomWebView/CustomWebView$7;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sunny/CustomWebView/CustomWebView$7;->onReceiveValue(Ljava/lang/String;)V

    return-void
.end method

.method public onReceiveValue(Ljava/lang/String;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/sunny/CustomWebView/CustomWebView$7;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sunny/CustomWebView/CustomWebView;->AfterJavaScriptEvaluated(Ljava/lang/String;)V

    return-void
.end method
