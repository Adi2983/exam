.class Lcom/ghostfox/moliata/ExtendedWebViewer$3;
.super Landroid/content/BroadcastReceiver;
.source "ExtendedWebViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ghostfox/moliata/ExtendedWebViewer;
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
    .line 249
    move-object v0, p0

    .local v0, "this":Lcom/ghostfox/moliata/ExtendedWebViewer$3;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/ghostfox/moliata/ExtendedWebViewer$3;->this$0:Lcom/ghostfox/moliata/ExtendedWebViewer;

    move-object v2, v0

    invoke-direct {v2}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 253
    move-object v0, p0

    .local v0, "this":Lcom/ghostfox/moliata/ExtendedWebViewer$3;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "intent":Landroid/content/Intent;
    move-object v3, v0

    iget-object v3, v3, Lcom/ghostfox/moliata/ExtendedWebViewer$3;->this$0:Lcom/ghostfox/moliata/ExtendedWebViewer;

    invoke-virtual {v3}, Lcom/ghostfox/moliata/ExtendedWebViewer;->OnDownloadFinished()V

    .line 254
    return-void
.end method
