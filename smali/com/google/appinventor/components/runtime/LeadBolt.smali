.class public Lcom/google/appinventor/components/runtime/LeadBolt;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->ADVERTISING:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "LeadBolt is a non-visible component allowing you to show Network and Rewarded ads."
    helpUrl = "https://docs.kodular.io/components/monetization/leadbolt/"
    iconName = "images/leadbolt.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    value = {
        "AppTracker.jar",
        "AdMobAppTracker.jar"
    }
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.INTERNET",
        "android.permission.ACCESS_NETWORK_STATE"
    }
.end annotation


# instance fields
.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private context:Landroid/content/Context;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/apptracker/android/listener/AppModuleListener;

.field private nn72cmMvpJDARAoxBpvS24CN9Of9fpinGcvMsNPLOdwkLzCSrjpb4bynF9b6riOG:Z

.field private op7m9tjL9FfXtQ4MVagpcEhDmFIa6xyIVDUYWgTs5INAROZGTkftwWcRnCCOYoFx:Z

.field private sR32qIN7Ar1u7i1api4nHQx9ll4d2UKsyYwGlFPHAR6MP73rw39BVQBnLHX3cktp:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 7

    .prologue
    .line 60
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 49
    move-object v2, v0

    const-string/jumbo v3, ""

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/LeadBolt;->sR32qIN7Ar1u7i1api4nHQx9ll4d2UKsyYwGlFPHAR6MP73rw39BVQBnLHX3cktp:Ljava/lang/String;

    .line 50
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/LeadBolt;->nn72cmMvpJDARAoxBpvS24CN9Of9fpinGcvMsNPLOdwkLzCSrjpb4bynF9b6riOG:Z

    .line 52
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/LeadBolt;->op7m9tjL9FfXtQ4MVagpcEhDmFIa6xyIVDUYWgTs5INAROZGTkftwWcRnCCOYoFx:Z

    .line 153
    move-object v2, v0

    new-instance v3, Lcom/google/appinventor/components/runtime/LeadBolt$1;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/LeadBolt$1;-><init>(Lcom/google/appinventor/components/runtime/LeadBolt;)V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/LeadBolt;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/apptracker/android/listener/AppModuleListener;

    .line 61
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/LeadBolt;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 62
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/LeadBolt;->context:Landroid/content/Context;

    .line 63
    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/LeadBolt;)Z
    .locals 2

    .prologue
    .line 44
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/LeadBolt;->op7m9tjL9FfXtQ4MVagpcEhDmFIa6xyIVDUYWgTs5INAROZGTkftwWcRnCCOYoFx:Z

    move v0, v1

    return v0
.end method

.method private wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 66
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/LeadBolt;->nn72cmMvpJDARAoxBpvS24CN9Of9fpinGcvMsNPLOdwkLzCSrjpb4bynF9b6riOG:Z

    if-eqz v2, :cond_0

    .line 67
    .line 77
    :goto_0
    return-void

    .line 69
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/LeadBolt;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/apptracker/android/listener/AppModuleListener;

    invoke-static {v2}, Lcom/apptracker/android/track/AppTracker;->setModuleListener(Lcom/apptracker/android/listener/AppModuleListener;)V

    .line 70
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/LeadBolt;->context:Landroid/content/Context;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/LeadBolt;->sR32qIN7Ar1u7i1api4nHQx9ll4d2UKsyYwGlFPHAR6MP73rw39BVQBnLHX3cktp:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/apptracker/android/track/AppTracker;->startSession(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 71
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/LeadBolt;->nn72cmMvpJDARAoxBpvS24CN9Of9fpinGcvMsNPLOdwkLzCSrjpb4bynF9b6riOG:Z

    .line 72
    move-object v2, v1

    const-string/jumbo v3, "NetworkAd"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 73
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/LeadBolt;->LoadNetworkAd()V

    goto :goto_0

    .line 74
    :cond_1
    move-object v2, v1

    const-string/jumbo v3, "RewardedAd"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 75
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/LeadBolt;->LoadRewardedAd()V

    .line 77
    :cond_2
    goto :goto_0
.end method


# virtual methods
.method public APIKey(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .prologue
    .line 82
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/LeadBolt;->sR32qIN7Ar1u7i1api4nHQx9ll4d2UKsyYwGlFPHAR6MP73rw39BVQBnLHX3cktp:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public CommissionInterstitialAdsNetwork(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "unity"
        editorType = "commission_interstitial_ads_network"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the ad network used to take the commission."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 90
    return-void
.end method

.method public CommissionRewardedAdsNetwork(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "unity"
        editorType = "commission_rewarded_ads_network"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the ad network used to take the commission."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 97
    return-void
.end method

.method public IsNetworkAdReady()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Use this block after loading an ad to check whether it\'s ready to show."
    .end annotation

    .prologue
    .line 145
    move-object v0, p0

    const-string/jumbo v1, "inapp"

    invoke-static {v1}, Lcom/apptracker/android/track/AppTracker;->isAdReady(Ljava/lang/String;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public IsRewardedAdReady()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Use this block after loading an ad to check whether it\'s ready to show."
    .end annotation

    .prologue
    .line 150
    move-object v0, p0

    const-string/jumbo v1, "reward"

    invoke-static {v1}, Lcom/apptracker/android/track/AppTracker;->isAdReady(Ljava/lang/String;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public LBCached(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event triggered when ads are loaded"
    .end annotation

    .prologue
    .line 207
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "LBCached"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v2

    .line 208
    return-void
.end method

.method public LBClicked(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event triggered when ads are clicked"
    .end annotation

    .prologue
    .line 202
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "LBClicked"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v2

    .line 203
    return-void
.end method

.method public LBClosed(Ljava/lang/String;Z)V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event triggered when ads are closed"
    .end annotation

    .prologue
    .line 197
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    const-string/jumbo v4, "LBClosed"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v1

    aput-object v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x1

    move v8, v2

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v3

    .line 198
    return-void
.end method

.method public LBFailed(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event triggered when ads are failed to load"
    .end annotation

    .prologue
    .line 192
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    const-string/jumbo v5, "LBFailed"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v1

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    move-object v9, v2

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x2

    move v9, v3

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v4, v5, v6}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v4

    .line 193
    return-void
.end method

.method public LBLoaded(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event triggered when ads are shown"
    .end annotation

    .prologue
    .line 187
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "LBLoaded"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v2

    .line 188
    return-void
.end method

.method public LoadNetworkAd()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Use this block to load a Network ad."
    .end annotation

    .prologue
    .line 101
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/google/appinventor/components/runtime/LeadBolt;->op7m9tjL9FfXtQ4MVagpcEhDmFIa6xyIVDUYWgTs5INAROZGTkftwWcRnCCOYoFx:Z

    .line 102
    move-object v1, v0

    const-string/jumbo v2, "NetworkAd"

    invoke-direct {v1, v2}, Lcom/google/appinventor/components/runtime/LeadBolt;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Ljava/lang/String;)V

    .line 103
    const-string/jumbo v1, "inapp"

    invoke-static {v1}, Lcom/apptracker/android/track/AppTracker;->isAdReady(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/LeadBolt;->context:Landroid/content/Context;

    const-string/jumbo v2, "inapp"

    invoke-static {v1, v2}, Lcom/apptracker/android/track/AppTracker;->loadModuleToCache(Landroid/content/Context;Ljava/lang/String;)V

    .line 109
    :goto_0
    return-void

    .line 106
    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/google/appinventor/components/runtime/LeadBolt;->nn72cmMvpJDARAoxBpvS24CN9Of9fpinGcvMsNPLOdwkLzCSrjpb4bynF9b6riOG:Z

    .line 107
    const-string/jumbo v1, "LeadBolt"

    const-string/jumbo v2, "No ads ready"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 109
    goto :goto_0
.end method

.method public LoadRewardedAd()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Use this block to load a Rewarded Video ad."
    .end annotation

    .prologue
    .line 123
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/appinventor/components/runtime/LeadBolt;->op7m9tjL9FfXtQ4MVagpcEhDmFIa6xyIVDUYWgTs5INAROZGTkftwWcRnCCOYoFx:Z

    .line 124
    move-object v1, v0

    const-string/jumbo v2, "RewardedAd"

    invoke-direct {v1, v2}, Lcom/google/appinventor/components/runtime/LeadBolt;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Ljava/lang/String;)V

    .line 125
    const-string/jumbo v1, "reward"

    invoke-static {v1}, Lcom/apptracker/android/track/AppTracker;->isAdReady(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/LeadBolt;->context:Landroid/content/Context;

    const-string/jumbo v2, "reward"

    invoke-static {v1, v2}, Lcom/apptracker/android/track/AppTracker;->loadModuleToCache(Landroid/content/Context;Ljava/lang/String;)V

    .line 131
    :goto_0
    return-void

    .line 128
    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/google/appinventor/components/runtime/LeadBolt;->nn72cmMvpJDARAoxBpvS24CN9Of9fpinGcvMsNPLOdwkLzCSrjpb4bynF9b6riOG:Z

    .line 129
    const-string/jumbo v1, "LeadBolt"

    const-string/jumbo v2, "No ads ready"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 131
    goto :goto_0
.end method

.method public ShowNetworkAd()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Use this block after LoadNetworkAd to show the loaded ad."
    .end annotation

    .prologue
    .line 113
    move-object v0, p0

    const-string/jumbo v1, "inapp"

    invoke-static {v1}, Lcom/apptracker/android/track/AppTracker;->isAdReady(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/LeadBolt;->context:Landroid/content/Context;

    const-string/jumbo v2, "inapp"

    invoke-static {v1, v2}, Lcom/apptracker/android/track/AppTracker;->loadModule(Landroid/content/Context;Ljava/lang/String;)V

    .line 119
    :goto_0
    return-void

    .line 116
    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/google/appinventor/components/runtime/LeadBolt;->nn72cmMvpJDARAoxBpvS24CN9Of9fpinGcvMsNPLOdwkLzCSrjpb4bynF9b6riOG:Z

    .line 117
    const-string/jumbo v1, "LeadBolt"

    const-string/jumbo v2, "No ads ready"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 119
    goto :goto_0
.end method

.method public ShowRewardedAd()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Use this block after LoadRewardedAd to show the loaded ad."
    .end annotation

    .prologue
    .line 135
    move-object v0, p0

    const-string/jumbo v1, "reward"

    invoke-static {v1}, Lcom/apptracker/android/track/AppTracker;->isAdReady(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/LeadBolt;->context:Landroid/content/Context;

    const-string/jumbo v2, "reward"

    invoke-static {v1, v2}, Lcom/apptracker/android/track/AppTracker;->loadModule(Landroid/content/Context;Ljava/lang/String;)V

    .line 141
    :goto_0
    return-void

    .line 138
    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/google/appinventor/components/runtime/LeadBolt;->nn72cmMvpJDARAoxBpvS24CN9Of9fpinGcvMsNPLOdwkLzCSrjpb4bynF9b6riOG:Z

    .line 139
    const-string/jumbo v1, "LeadBolt"

    const-string/jumbo v2, "No ads ready"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 141
    goto :goto_0
.end method
