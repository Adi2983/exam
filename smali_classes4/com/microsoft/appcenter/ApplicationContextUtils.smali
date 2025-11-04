.class Lcom/microsoft/appcenter/ApplicationContextUtils;
.super Ljava/lang/Object;
.source "ApplicationContextUtils.java"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 16
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ApplicationContextUtils;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getApplicationContext(Landroid/app/Application;)Landroid/content/Context;
    .locals 4

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "application":Landroid/app/Application;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    .line 28
    move-object v2, v0

    const-string/jumbo v3, "user"

    invoke-virtual {v2, v3}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    move-object v1, v2

    .line 34
    .local v1, "userManager":Landroid/os/UserManager;
    move-object v2, v1

    invoke-virtual {v2}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v2

    if-nez v2, :cond_0

    .line 35
    move-object v2, v0

    invoke-virtual {v2}, Landroid/app/Application;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v2

    move-object v0, v2

    .line 38
    .end local v0    # "application":Landroid/app/Application;
    :goto_0
    return-object v0

    .end local v1    # "userManager":Landroid/os/UserManager;
    .restart local v0    # "application":Landroid/app/Application;
    :cond_0
    move-object v2, v0

    move-object v0, v2

    goto :goto_0
.end method

.method static isDeviceProtectedStorage(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 49
    move-object v1, v0

    invoke-virtual {v1}, Landroid/content/Context;->isDeviceProtectedStorage()Z

    move-result v1

    move v0, v1

    .line 51
    .end local v0    # "context":Landroid/content/Context;
    :goto_0
    return v0

    .restart local v0    # "context":Landroid/content/Context;
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method
