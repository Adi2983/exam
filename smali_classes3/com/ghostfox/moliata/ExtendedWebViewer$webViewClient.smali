.class public Lcom/ghostfox/moliata/ExtendedWebViewer$webViewClient;
.super Landroid/webkit/WebViewClient;
.source "ExtendedWebViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ghostfox/moliata/ExtendedWebViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "webViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghostfox/moliata/ExtendedWebViewer;


# direct methods
.method public constructor <init>(Lcom/ghostfox/moliata/ExtendedWebViewer;)V
    .locals 4

    .prologue
    .line 229
    move-object v0, p0

    .local v0, "this":Lcom/ghostfox/moliata/ExtendedWebViewer$webViewClient;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/ghostfox/moliata/ExtendedWebViewer$webViewClient;->this$0:Lcom/ghostfox/moliata/ExtendedWebViewer;

    move-object v2, v0

    invoke-direct {v2}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 238
    move-object v0, p0

    .local v0, "this":Lcom/ghostfox/moliata/ExtendedWebViewer$webViewClient;
    move-object v1, p1

    .local v1, "view":Landroid/webkit/WebView;
    move-object v2, p2

    .local v2, "url":Ljava/lang/String;
    move-object v3, v0

    iget-object v3, v3, Lcom/ghostfox/moliata/ExtendedWebViewer$webViewClient;->this$0:Lcom/ghostfox/moliata/ExtendedWebViewer;

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/ghostfox/moliata/ExtendedWebViewer;->OnLoadingFinished(Ljava/lang/String;)V

    .line 239
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 6

    .prologue
    .line 233
    move-object v0, p0

    .local v0, "this":Lcom/ghostfox/moliata/ExtendedWebViewer$webViewClient;
    move-object v1, p1

    .local v1, "view":Landroid/webkit/WebView;
    move-object v2, p2

    .local v2, "url":Ljava/lang/String;
    move-object v3, p3

    .local v3, "favicon":Landroid/graphics/Bitmap;
    move-object v4, v0

    iget-object v4, v4, Lcom/ghostfox/moliata/ExtendedWebViewer$webViewClient;->this$0:Lcom/ghostfox/moliata/ExtendedWebViewer;

    move-object v5, v2

    invoke-virtual {v4, v5}, Lcom/ghostfox/moliata/ExtendedWebViewer;->OnLoadingStarted(Ljava/lang/String;)V

    .line 234
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 243
    move-object v0, p0

    .local v0, "this":Lcom/ghostfox/moliata/ExtendedWebViewer$webViewClient;
    move-object v1, p1

    .local v1, "view":Landroid/webkit/WebView;
    move v2, p2

    .local v2, "errorCode":I
    move-object v3, p3

    .local v3, "description":Ljava/lang/String;
    move-object v4, p4

    .local v4, "failingUrl":Ljava/lang/String;
    move-object v5, v0

    iget-object v5, v5, Lcom/ghostfox/moliata/ExtendedWebViewer$webViewClient;->this$0:Lcom/ghostfox/moliata/ExtendedWebViewer;

    move v6, v2

    move-object v7, v3

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Lcom/ghostfox/moliata/ExtendedWebViewer;->OnErrorOccured(ILjava/lang/String;Ljava/lang/String;)V

    .line 244
    return-void
.end method
