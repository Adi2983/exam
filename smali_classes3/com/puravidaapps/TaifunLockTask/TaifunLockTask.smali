.class public Lcom/puravidaapps/TaifunLockTask/TaifunLockTask;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# static fields
.field public static final VERSION:I = 0x1


# instance fields
.field private a:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    move-object v2, v0

    iget-object v2, v2, Lcom/puravidaapps/TaifunLockTask/TaifunLockTask;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v2, v1

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, v2, Lcom/puravidaapps/TaifunLockTask/TaifunLockTask;->a:Landroid/app/Activity;

    const-string/jumbo v2, "TaifunLockTask"

    const-string/jumbo v3, "TaifunLockTask Created"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    return-void
.end method


# virtual methods
.method public Mode()Ljava/lang/String;
    .locals 5

    move-object v0, p0

    const-string/jumbo v3, "TaifunLockTask"

    const-string/jumbo v4, "Mode"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    move-object v3, v0

    iget-object v3, v3, Lcom/puravidaapps/TaifunLockTask/TaifunLockTask;->a:Landroid/app/Activity;

    const-string/jumbo v4, "activity"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    move-object v1, v3

    const/4 v3, -0x1

    move v2, v3

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/app/ActivityManager;->getLockTaskModeState()I

    move-result v3

    move v2, v3

    :cond_0
    move v3, v2

    packed-switch v3, :pswitch_data_0

    const-string/jumbo v3, "Unknown"

    move-object v1, v3

    :goto_0
    move-object v3, v1

    move-object v0, v3

    return-object v0

    :pswitch_0
    const-string/jumbo v3, "None"

    move-object v1, v3

    goto :goto_0

    :pswitch_1
    const-string/jumbo v3, "Pinned"

    move-object v1, v3

    goto :goto_0

    :pswitch_2
    const-string/jumbo v3, "Locked"

    move-object v1, v3

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public Start()V
    .locals 3

    move-object v0, p0

    const-string/jumbo v1, "TaifunLockTask"

    const-string/jumbo v2, "Start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    move-object v1, v0

    iget-object v1, v1, Lcom/puravidaapps/TaifunLockTask/TaifunLockTask;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->startLockTask()V

    return-void
.end method

.method public Stop()V
    .locals 3

    move-object v0, p0

    const-string/jumbo v1, "TaifunLockTask"

    const-string/jumbo v2, "Stop"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    move-object v1, v0

    iget-object v1, v1, Lcom/puravidaapps/TaifunLockTask/TaifunLockTask;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->stopLockTask()V

    return-void
.end method
