.class Lcom/sunny/CustomWebView/CustomWebView$10;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sunny/CustomWebView/CustomWebView;->GrantPermission(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sunny/CustomWebView/CustomWebView;

.field final synthetic val$permissions:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sunny/CustomWebView/CustomWebView;Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sunny/CustomWebView/CustomWebView$10;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sunny/CustomWebView/CustomWebView$10;->val$permissions:Ljava/lang/String;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/sunny/CustomWebView/CustomWebView$10;->val$permissions:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sunny/CustomWebView/CustomWebView$10;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    iget-object v1, v1, Lcom/sunny/CustomWebView/CustomWebView;->permissionRequest:Landroid/webkit/PermissionRequest;

    invoke-virtual {v1}, Landroid/webkit/PermissionRequest;->deny()V

    :goto_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sunny/CustomWebView/CustomWebView$10;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sunny/CustomWebView/CustomWebView;->permissionRequest:Landroid/webkit/PermissionRequest;

    return-void

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sunny/CustomWebView/CustomWebView$10;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    iget-object v1, v1, Lcom/sunny/CustomWebView/CustomWebView;->permissionRequest:Landroid/webkit/PermissionRequest;

    move-object v2, v0

    iget-object v2, v2, Lcom/sunny/CustomWebView/CustomWebView$10;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    iget-object v2, v2, Lcom/sunny/CustomWebView/CustomWebView;->permissionRequest:Landroid/webkit/PermissionRequest;

    invoke-virtual {v2}, Landroid/webkit/PermissionRequest;->getResources()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/PermissionRequest;->grant([Ljava/lang/String;)V

    goto :goto_0
.end method
