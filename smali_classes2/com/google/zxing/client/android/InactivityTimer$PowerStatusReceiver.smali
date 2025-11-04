.class final Lcom/google/zxing/client/android/InactivityTimer$PowerStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InactivityTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/client/android/InactivityTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PowerStatusReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/zxing/client/android/InactivityTimer;


# direct methods
.method private constructor <init>(Lcom/google/zxing/client/android/InactivityTimer;)V
    .locals 4

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/InactivityTimer$PowerStatusReceiver;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/zxing/client/android/InactivityTimer$PowerStatusReceiver;->this$0:Lcom/google/zxing/client/android/InactivityTimer;

    move-object v2, v0

    invoke-direct {v2}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/zxing/client/android/InactivityTimer;Lcom/google/zxing/client/android/InactivityTimer$1;)V
    .locals 5

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/InactivityTimer$PowerStatusReceiver;
    move-object v1, p1

    .local v1, "x0":Lcom/google/zxing/client/android/InactivityTimer;
    move-object v2, p2

    .local v2, "x1":Lcom/google/zxing/client/android/InactivityTimer$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/google/zxing/client/android/InactivityTimer$PowerStatusReceiver;-><init>(Lcom/google/zxing/client/android/InactivityTimer;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/InactivityTimer$PowerStatusReceiver;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "android.intent.action.BATTERY_CHANGED"

    move-object v5, v2

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 85
    move-object v4, v2

    const-string/jumbo v5, "plugged"

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-gtz v4, :cond_1

    const/4 v4, 0x1

    :goto_0
    move v3, v4

    .line 86
    .local v3, "onBatteryNow":Z
    move v4, v3

    if-eqz v4, :cond_2

    .line 87
    move-object v4, v0

    iget-object v4, v4, Lcom/google/zxing/client/android/InactivityTimer$PowerStatusReceiver;->this$0:Lcom/google/zxing/client/android/InactivityTimer;

    invoke-virtual {v4}, Lcom/google/zxing/client/android/InactivityTimer;->onActivity()V

    .line 92
    .end local v3    # "onBatteryNow":Z
    :cond_0
    :goto_1
    return-void

    .line 85
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 89
    .restart local v3    # "onBatteryNow":Z
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lcom/google/zxing/client/android/InactivityTimer$PowerStatusReceiver;->this$0:Lcom/google/zxing/client/android/InactivityTimer;

    invoke-static {v4}, Lcom/google/zxing/client/android/InactivityTimer;->access$200(Lcom/google/zxing/client/android/InactivityTimer;)V

    goto :goto_1
.end method
