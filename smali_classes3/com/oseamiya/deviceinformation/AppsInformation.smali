.class public Lcom/oseamiya/deviceinformation/AppsInformation;
.super Ljava/lang/Object;
.source "AppsInformation.java"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 13
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/AppsInformation;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 14
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/oseamiya/deviceinformation/AppsInformation;->context:Landroid/content/Context;

    .line 15
    return-void
.end method

.method private getApplicationInfo(Ljava/lang/String;I)Ljava/lang/String;
    .locals 8

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/AppsInformation;
    move-object v1, p1

    .local v1, "packageName":Ljava/lang/String;
    move v2, p2

    .local v2, "identity":I
    move-object v5, v0

    iget-object v5, v5, Lcom/oseamiya/deviceinformation/AppsInformation;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    move-object v3, v5

    .line 132
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    move-object v5, v3

    move-object v6, v1

    const/16 v7, 0x80

    :try_start_0
    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    move-object v4, v5

    .line 133
    .local v4, "packageInfo":Landroid/content/pm/PackageInfo;
    move v5, v2

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 134
    move-object v5, v4

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object v0, v5

    .line 142
    .end local v0    # "this":Lcom/oseamiya/deviceinformation/AppsInformation;
    .end local v4    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v0

    .line 135
    .restart local v0    # "this":Lcom/oseamiya/deviceinformation/AppsInformation;
    .restart local v4    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    move v5, v2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 136
    move-object v5, v4

    iget v5, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 138
    :cond_1
    const-string/jumbo v5, "0"
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v5

    goto :goto_0

    .line 140
    .end local v4    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 141
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v5, v4

    invoke-virtual {v5}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 142
    const-string/jumbo v5, "0"

    move-object v0, v5

    goto :goto_0
.end method


# virtual methods
.method public getAllAppsPackageName()[Ljava/lang/String;
    .locals 8

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/AppsInformation;
    move-object v4, v0

    invoke-virtual {v4}, Lcom/oseamiya/deviceinformation/AppsInformation;->getListOfApplicationInfo()Ljava/util/List;

    move-result-object v4

    move-object v1, v4

    .line 30
    .local v1, "infoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    move-object v4, v1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    move-object v2, v4

    .line 32
    .local v2, "packageNames":[Ljava/lang/String;
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move-object v5, v1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 33
    move-object v4, v2

    move v5, v3

    move-object v6, v1

    move v7, v3

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v6, v4, v5

    .line 32
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 35
    :cond_0
    move-object v4, v2

    move-object v0, v4

    .end local v0    # "this":Lcom/oseamiya/deviceinformation/AppsInformation;
    return-object v0
.end method

.method public getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/AppsInformation;
    move-object v1, p1

    .local v1, "packageName":Ljava/lang/String;
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/oseamiya/deviceinformation/AppsInformation;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v0, v3

    .line 81
    .end local v0    # "this":Lcom/oseamiya/deviceinformation/AppsInformation;
    :goto_0
    return-object v0

    .line 79
    .restart local v0    # "this":Lcom/oseamiya/deviceinformation/AppsInformation;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 80
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v3, v2

    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 81
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method public getApplicationName(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/AppsInformation;
    move-object v1, p1

    .local v1, "packageName":Ljava/lang/String;
    move-object v4, v0

    iget-object v4, v4, Lcom/oseamiya/deviceinformation/AppsInformation;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    move-object v2, v4

    .line 46
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    move-object v4, v2

    move-object v5, v2

    move-object v6, v1

    const/16 v7, 0x80

    :try_start_0
    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    .line 49
    .end local v0    # "this":Lcom/oseamiya/deviceinformation/AppsInformation;
    :goto_0
    return-object v0

    .line 47
    .restart local v0    # "this":Lcom/oseamiya/deviceinformation/AppsInformation;
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 48
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v4, v3

    invoke-virtual {v4}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 49
    const-string/jumbo v4, "Unknown"

    move-object v0, v4

    goto :goto_0
.end method

.method public getInstalledTime(Ljava/lang/String;)J
    .locals 7

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/AppsInformation;
    move-object v1, p1

    .local v1, "packageName":Ljava/lang/String;
    move-object v4, v0

    iget-object v4, v4, Lcom/oseamiya/deviceinformation/AppsInformation;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    move-object v2, v4

    .line 93
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    move-object v4, v2

    move-object v5, v1

    const/16 v6, 0x80

    :try_start_0
    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    move-object v3, v4

    .line 94
    .local v3, "packageInfo":Landroid/content/pm/PackageInfo;
    move-object v4, v3

    iget-wide v4, v4, Landroid/content/pm/PackageInfo;->firstInstallTime:J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v4

    .line 99
    .end local v0    # "this":Lcom/oseamiya/deviceinformation/AppsInformation;
    .end local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return-wide v0

    .line 95
    .restart local v0    # "this":Lcom/oseamiya/deviceinformation/AppsInformation;
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 96
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v4, v3

    invoke-virtual {v4}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 99
    const-wide/16 v4, 0x0

    move-wide v0, v4

    goto :goto_0
.end method

.method public getLastUpdatedTime(Ljava/lang/String;)J
    .locals 7

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/AppsInformation;
    move-object v1, p1

    .local v1, "packageName":Ljava/lang/String;
    move-object v4, v0

    iget-object v4, v4, Lcom/oseamiya/deviceinformation/AppsInformation;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    move-object v2, v4

    .line 105
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    move-object v4, v2

    move-object v5, v1

    const/16 v6, 0x80

    :try_start_0
    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    move-object v3, v4

    .line 106
    .local v3, "packageInfo":Landroid/content/pm/PackageInfo;
    move-object v4, v3

    iget-wide v4, v4, Landroid/content/pm/PackageInfo;->lastUpdateTime:J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v4

    .line 111
    .end local v0    # "this":Lcom/oseamiya/deviceinformation/AppsInformation;
    .end local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return-wide v0

    .line 107
    .restart local v0    # "this":Lcom/oseamiya/deviceinformation/AppsInformation;
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 108
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v4, v3

    invoke-virtual {v4}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 111
    const-wide/16 v4, 0x0

    move-wide v0, v4

    goto :goto_0
.end method

.method public getListOfApplicationInfo()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/AppsInformation;
    move-object v3, v0

    iget-object v3, v3, Lcom/oseamiya/deviceinformation/AppsInformation;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    move-object v1, v3

    .line 19
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    move-object v3, v1

    const/16 v4, 0x80

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v3

    move-object v2, v3

    .line 20
    .local v2, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lcom/oseamiya/deviceinformation/AppsInformation;
    return-object v0
.end method

.method public getRequestedPermissions(Ljava/lang/String;)[Ljava/lang/String;
    .locals 7

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/AppsInformation;
    move-object v1, p1

    .local v1, "packageName":Ljava/lang/String;
    move-object v4, v0

    iget-object v4, v4, Lcom/oseamiya/deviceinformation/AppsInformation;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    move-object v2, v4

    .line 122
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    move-object v4, v2

    move-object v5, v1

    const/16 v6, 0x80

    :try_start_0
    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    move-object v3, v4

    .line 123
    .local v3, "packageInfo":Landroid/content/pm/PackageInfo;
    move-object v4, v3

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    .line 126
    .end local v0    # "this":Lcom/oseamiya/deviceinformation/AppsInformation;
    .end local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v0

    .line 124
    .restart local v0    # "this":Lcom/oseamiya/deviceinformation/AppsInformation;
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 125
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v4, v3

    invoke-virtual {v4}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 126
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0
.end method

.method public getVersionCode(Ljava/lang/String;)I
    .locals 5

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/AppsInformation;
    move-object v1, p1

    .local v1, "packageName":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/oseamiya/deviceinformation/AppsInformation;->getApplicationInfo(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/oseamiya/deviceinformation/AppsInformation;
    return v0
.end method

.method public getVersionName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/AppsInformation;
    move-object v1, p1

    .local v1, "packageName":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/oseamiya/deviceinformation/AppsInformation;->getApplicationInfo(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/oseamiya/deviceinformation/AppsInformation;
    return-object v0
.end method
