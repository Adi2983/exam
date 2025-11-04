.class public final Lcom/google/zxing/client/android/FinishListener;
.super Ljava/lang/Object;
.source "FinishListener.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field private final activityToFinish:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/FinishListener;
    move-object v1, p1

    .local v1, "activityToFinish":Landroid/app/Activity;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 32
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/zxing/client/android/FinishListener;->activityToFinish:Landroid/app/Activity;

    .line 33
    return-void
.end method

.method private run()V
    .locals 2

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/FinishListener;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/client/android/FinishListener;->activityToFinish:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 47
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/FinishListener;
    move-object v1, p1

    .local v1, "dialogInterface":Landroid/content/DialogInterface;
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/zxing/client/android/FinishListener;->run()V

    .line 38
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/FinishListener;
    move-object v1, p1

    .local v1, "dialogInterface":Landroid/content/DialogInterface;
    move v2, p2

    .local v2, "i":I
    move-object v3, v0

    invoke-direct {v3}, Lcom/google/zxing/client/android/FinishListener;->run()V

    .line 43
    return-void
.end method
