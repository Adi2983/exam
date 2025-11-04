.class final Lcom/google/zxing/client/android/ViewfinderResultPointCallback;
.super Ljava/lang/Object;
.source "ViewfinderResultPointCallback.java"

# interfaces
.implements Lcom/google/zxing/ResultPointCallback;


# instance fields
.field private final viewfinderView:Lcom/google/zxing/client/android/ViewfinderView;


# direct methods
.method constructor <init>(Lcom/google/zxing/client/android/ViewfinderView;)V
    .locals 4

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/ViewfinderResultPointCallback;
    move-object v1, p1

    .local v1, "viewfinderView":Lcom/google/zxing/client/android/ViewfinderView;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 27
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/zxing/client/android/ViewfinderResultPointCallback;->viewfinderView:Lcom/google/zxing/client/android/ViewfinderView;

    .line 28
    return-void
.end method


# virtual methods
.method public foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V
    .locals 4

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/ViewfinderResultPointCallback;
    move-object v1, p1

    .local v1, "point":Lcom/google/zxing/ResultPoint;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/zxing/client/android/ViewfinderResultPointCallback;->viewfinderView:Lcom/google/zxing/client/android/ViewfinderView;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/zxing/client/android/ViewfinderView;->addPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    .line 33
    return-void
.end method
