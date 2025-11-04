.class Lcom/ghostfox/moliata/ExtendedWebViewer$1;
.super Landroid/webkit/WebChromeClient;
.source "ExtendedWebViewer.java"


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
    .line 143
    move-object v0, p0

    .local v0, "this":Lcom/ghostfox/moliata/ExtendedWebViewer$1;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/ghostfox/moliata/ExtendedWebViewer$1;->this$0:Lcom/ghostfox/moliata/ExtendedWebViewer;

    move-object v2, v0

    invoke-direct {v2}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 5

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Lcom/ghostfox/moliata/ExtendedWebViewer$1;
    move-object v1, p1

    .local v1, "view":Landroid/webkit/WebView;
    move v2, p2

    .local v2, "progress":I
    move-object v3, v0

    iget-object v3, v3, Lcom/ghostfox/moliata/ExtendedWebViewer$1;->this$0:Lcom/ghostfox/moliata/ExtendedWebViewer;

    move v4, v2

    invoke-virtual {v3, v4}, Lcom/ghostfox/moliata/ExtendedWebViewer;->OnProgressChanged(I)V

    .line 147
    return-void
.end method
