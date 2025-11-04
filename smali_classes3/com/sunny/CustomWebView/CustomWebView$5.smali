.class Lcom/sunny/CustomWebView/CustomWebView$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnScrollChangeListener;


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

    iput-object v4, v3, Lcom/sunny/CustomWebView/CustomWebView$5;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sunny/CustomWebView/CustomWebView$5;->val$web:Landroid/webkit/WebView;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChange(Landroid/view/View;IIII)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v6, v0

    iget-object v6, v6, Lcom/sunny/CustomWebView/CustomWebView$5;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    move-object v7, v0

    iget-object v7, v7, Lcom/sunny/CustomWebView/CustomWebView$5;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    move-object v8, v0

    iget-object v8, v8, Lcom/sunny/CustomWebView/CustomWebView$5;->val$web:Landroid/webkit/WebView;

    invoke-virtual {v7, v8}, Lcom/sunny/CustomWebView/CustomWebView;->getIndex(Landroid/webkit/WebView;)I

    move-result v7

    move v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    move-object v12, v0

    iget-object v12, v12, Lcom/sunny/CustomWebView/CustomWebView$5;->val$web:Landroid/webkit/WebView;

    const/4 v13, -0x1

    invoke-virtual {v12, v13}, Landroid/webkit/WebView;->canScrollHorizontally(I)Z

    move-result v12

    move-object v13, v0

    iget-object v13, v13, Lcom/sunny/CustomWebView/CustomWebView$5;->val$web:Landroid/webkit/WebView;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/webkit/WebView;->canScrollHorizontally(I)Z

    move-result v13

    invoke-virtual/range {v6 .. v13}, Lcom/sunny/CustomWebView/CustomWebView;->OnScrollChanged(IIIIIZZ)V

    return-void
.end method
