.class public Lcom/sunny/CustomWebView/CustomWebView$PrintDocumentAdapterWrapper;
.super Landroid/print/PrintDocumentAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunny/CustomWebView/CustomWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PrintDocumentAdapterWrapper"
.end annotation


# instance fields
.field private final delegate:Landroid/print/PrintDocumentAdapter;

.field final synthetic this$0:Lcom/sunny/CustomWebView/CustomWebView;


# direct methods
.method public constructor <init>(Lcom/sunny/CustomWebView/CustomWebView;Landroid/print/PrintDocumentAdapter;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sunny/CustomWebView/CustomWebView$PrintDocumentAdapterWrapper;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    move-object v3, v0

    invoke-direct {v3}, Landroid/print/PrintDocumentAdapter;-><init>()V

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sunny/CustomWebView/CustomWebView$PrintDocumentAdapterWrapper;->delegate:Landroid/print/PrintDocumentAdapter;

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 6

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/sunny/CustomWebView/CustomWebView$PrintDocumentAdapterWrapper;->delegate:Landroid/print/PrintDocumentAdapter;

    invoke-virtual {v1}, Landroid/print/PrintDocumentAdapter;->onFinish()V

    move-object v1, v0

    iget-object v1, v1, Lcom/sunny/CustomWebView/CustomWebView$PrintDocumentAdapterWrapper;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    move-object v2, v0

    iget-object v2, v2, Lcom/sunny/CustomWebView/CustomWebView$PrintDocumentAdapterWrapper;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    iget-object v2, v2, Lcom/sunny/CustomWebView/CustomWebView;->jobName:Ljava/lang/String;

    move-object v3, v0

    iget-object v3, v3, Lcom/sunny/CustomWebView/CustomWebView$PrintDocumentAdapterWrapper;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    iget-object v3, v3, Lcom/sunny/CustomWebView/CustomWebView;->printJob:Landroid/print/PrintJob;

    invoke-virtual {v3}, Landroid/print/PrintJob;->isCompleted()Z

    move-result v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sunny/CustomWebView/CustomWebView$PrintDocumentAdapterWrapper;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    iget-object v4, v4, Lcom/sunny/CustomWebView/CustomWebView;->printJob:Landroid/print/PrintJob;

    invoke-virtual {v4}, Landroid/print/PrintJob;->isFailed()Z

    move-result v4

    move-object v5, v0

    iget-object v5, v5, Lcom/sunny/CustomWebView/CustomWebView$PrintDocumentAdapterWrapper;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    iget-object v5, v5, Lcom/sunny/CustomWebView/CustomWebView;->printJob:Landroid/print/PrintJob;

    invoke-virtual {v5}, Landroid/print/PrintJob;->isBlocked()Z

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sunny/CustomWebView/CustomWebView;->GotPrintResult(Ljava/lang/String;ZZZ)V

    return-void
.end method

.method public onLayout(Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$LayoutResultCallback;Landroid/os/Bundle;)V
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object v6, v0

    iget-object v6, v6, Lcom/sunny/CustomWebView/CustomWebView$PrintDocumentAdapterWrapper;->delegate:Landroid/print/PrintDocumentAdapter;

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/print/PrintDocumentAdapter;->onLayout(Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$LayoutResultCallback;Landroid/os/Bundle;)V

    return-void
.end method

.method public onWrite([Landroid/print/PageRange;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    iget-object v5, v5, Lcom/sunny/CustomWebView/CustomWebView$PrintDocumentAdapterWrapper;->delegate:Landroid/print/PrintDocumentAdapter;

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/print/PrintDocumentAdapter;->onWrite([Landroid/print/PageRange;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V

    return-void
.end method
