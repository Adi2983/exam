.class public final Lcom/google/zxing/client/android/result/ResultButtonListener;
.super Ljava/lang/Object;
.source "ResultButtonListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final index:I

.field private final resultHandler:Lcom/google/zxing/client/android/result/ResultHandler;


# direct methods
.method public constructor <init>(Lcom/google/zxing/client/android/result/ResultHandler;I)V
    .locals 5

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/result/ResultButtonListener;
    move-object v1, p1

    .local v1, "resultHandler":Lcom/google/zxing/client/android/result/ResultHandler;
    move v2, p2

    .local v2, "index":I
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 33
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/zxing/client/android/result/ResultButtonListener;->resultHandler:Lcom/google/zxing/client/android/result/ResultHandler;

    .line 34
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/google/zxing/client/android/result/ResultButtonListener;->index:I

    .line 35
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/result/ResultButtonListener;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/zxing/client/android/result/ResultButtonListener;->resultHandler:Lcom/google/zxing/client/android/result/ResultHandler;

    move-object v3, v0

    iget v3, v3, Lcom/google/zxing/client/android/result/ResultButtonListener;->index:I

    invoke-virtual {v2, v3}, Lcom/google/zxing/client/android/result/ResultHandler;->handleButtonPress(I)V

    .line 40
    return-void
.end method
