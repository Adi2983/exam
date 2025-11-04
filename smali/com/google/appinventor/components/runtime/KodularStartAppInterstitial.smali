.class public final Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->ADVERTISING:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "The component for showing Interstial Ads from StartApp"
    iconName = "images/startAppInterstitial.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesActivities;
    activities = {
        .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/ActivityElement;
            configChanges = "orientation|screenSize|screenLayout|keyboardHidden"
            name = "com.startapp.sdk.adsbase.consent.ConsentActivity"
            theme = "@android:style/Theme.Translucent"
        .end subannotation,
        .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/ActivityElement;
            name = "com.startapp.sdk.ads.list3d.List3DActivity"
            theme = "@android:style/Theme"
        .end subannotation,
        .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/ActivityElement;
            configChanges = "orientation|screenSize|screenLayout|keyboardHidden"
            name = "com.startapp.sdk.ads.interstitials.OverlayActivity"
            theme = "@android:style/Theme.Translucent"
        .end subannotation
    }
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesBroadcastReceivers;
    receivers = {
        .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/ReceiverElement;
            exported = "true"
            intentFilters = {
                .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/IntentFilterElement;
                    actionElements = {
                        .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/ActionElement;
                            name = "android.intent.action.BOOT_COMPLETED"
                        .end subannotation
                    }
                .end subannotation
            }
            name = "com.startapp.sdk.adsbase.remoteconfig.BootCompleteListener"
        .end subannotation
    }
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesContentProviders;
    providers = {
        .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/ProviderElement;
            authorities = "%packageName%.startappinitprovider"
            exported = "false"
            name = "com.startapp.sdk.adsbase.StartAppInitProvider"
        .end subannotation
    }
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    value = {
        "startapp-ads.jar"
    }
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.INTERNET",
        "android.permission.ACCESS_NETWORK_STATE",
        "android.permission.ACCESS_WIFI_STATE",
        "android.permission.RECEIVE_BOOT_COMPLETED",
        "com.google.android.finsky.permission.BIND_GET_INSTALL_REFERRER_SERVICE",
        "com.google.android.gms.permission.AD_ID"
    }
.end annotation

.annotation build Lcom/google/appinventor/components/annotations/UsesQueries;
    intents = {
        .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/IntentFilterElement;
            actionElements = {
                .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/ActionElement;
                    name = "android.intent.action.MAIN"
                .end subannotation
            }
        .end subannotation
    }
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesServices;
    services = {
        .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/ServiceElement;
            name = "com.startapp.sdk.cachedservice.BackgroundService"
        .end subannotation,
        .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/ServiceElement;
            name = "com.startapp.sdk.jobs.SchedulerService"
            permission = "android.permission.BIND_JOB_SERVICE"
        .end subannotation
    }
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private appId:Ljava/lang/String;

.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private f9MsIiC6MxciaFVJmtpdDaPCPu1tdZDTYoHbgfSwKXBhLXF2LgZTKbRmVlZ1kb0Z:Z

.field private startAppAd:Lcom/startapp/sdk/adsbase/StartAppAd;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 7

    .prologue
    .line 114
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 105
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;->f9MsIiC6MxciaFVJmtpdDaPCPu1tdZDTYoHbgfSwKXBhLXF2LgZTKbRmVlZ1kb0Z:Z

    .line 115
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 116
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;->activity:Landroid/app/Activity;

    .line 121
    move-object v2, v0

    new-instance v3, Lcom/startapp/sdk/adsbase/StartAppAd;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;->activity:Landroid/app/Activity;

    invoke-direct {v4, v5}, Lcom/startapp/sdk/adsbase/StartAppAd;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;->startAppAd:Lcom/startapp/sdk/adsbase/StartAppAd;

    .line 122
    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;Z)Z
    .locals 7

    .prologue
    .line 98
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;->f9MsIiC6MxciaFVJmtpdDaPCPu1tdZDTYoHbgfSwKXBhLXF2LgZTKbRmVlZ1kb0Z:Z

    move v0, v2

    return v0
.end method


# virtual methods
.method public final AdClicked()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that the user has clicked on the interstial ad"
    .end annotation

    .prologue
    .line 165
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "AdClicked"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 166
    return-void
.end method

.method public final AdDisplayed()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that an Ad is shown to the user."
    .end annotation

    .prologue
    .line 170
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "AdDisplayed"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 171
    return-void
.end method

.method public final AdFailedToLoad(ILjava/lang/String;)V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when an ad request failed to load. The message will display the error code and error message."
    .end annotation

    .prologue
    .line 180
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    const-string/jumbo v4, "AdFailedToLoad"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move v8, v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x1

    move-object v8, v2

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v3

    .line 181
    return-void
.end method

.method public final AdFailedToShow(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when an an attempt was made to display the ad, but the ad was not ready to display."
    .end annotation

    .prologue
    .line 160
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "AdFailedToShow"

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

    .line 161
    return-void
.end method

.method public final AdHidden()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that an Ad which was shown to the user is now hidden."
    .end annotation

    .prologue
    .line 175
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "AdHidden"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 176
    return-void
.end method

.method public final AppId(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 144
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;->appId:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public final LoadAd()V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Load a new StartApp Interstitial ad."
    .end annotation

    .prologue
    .line 125
    move-object v0, p0

    move-object v2, v0

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    .line 1189
    move-object v1, v3

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;->activity:Landroid/app/Activity;

    const-string/jumbo v3, ""

    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;->appId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "204085028"

    :goto_0
    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/startapp/sdk/adsbase/StartAppSDK;->init(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1190
    invoke-static {}, Lcom/startapp/sdk/adsbase/StartAppAd;->disableSplash()V

    .line 1191
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/startapp/sdk/adsbase/StartAppSDK;->enableReturnAds(Z)V

    .line 1192
    move-object v2, v1

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "pas"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lcom/startapp/sdk/adsbase/StartAppSDK;->setUserConsent(Landroid/content/Context;Ljava/lang/String;JZ)V

    .line 126
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;->startAppAd:Lcom/startapp/sdk/adsbase/StartAppAd;

    new-instance v3, Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial$1;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial$1;-><init>(Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;)V

    invoke-virtual {v2, v3}, Lcom/startapp/sdk/adsbase/StartAppAd;->loadAd(Lcom/startapp/sdk/adsbase/adlisteners/AdEventListener;)V

    .line 139
    return-void

    .line 1189
    :cond_0
    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;->appId:Ljava/lang/String;

    goto :goto_0
.end method

.method public final OnFailedToReceiveAd(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when an ad request failed to load."
    .end annotation

    .prologue
    .line 150
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "OnFailedToReceiveAd"

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

    .line 151
    return-void
.end method

.method public final OnReceiveAd()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when an ad request failed to load. The message will display the error code and error message."
    .end annotation

    .prologue
    .line 156
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "OnReceiveAd"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 157
    return-void
.end method

.method public final ShowInterstitialAd()V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "It will show the Interstitial Ad"
    .end annotation

    .prologue
    .line 197
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;->f9MsIiC6MxciaFVJmtpdDaPCPu1tdZDTYoHbgfSwKXBhLXF2LgZTKbRmVlZ1kb0Z:Z

    if-nez v1, :cond_0

    .line 201
    move-object v1, v0

    const-string/jumbo v2, "An Ad should be loaded initially before it can be displayed."

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;->AdFailedToShow(Ljava/lang/String;)V

    .line 202
    .line 246
    :goto_0
    return-void

    .line 204
    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;->f9MsIiC6MxciaFVJmtpdDaPCPu1tdZDTYoHbgfSwKXBhLXF2LgZTKbRmVlZ1kb0Z:Z

    .line 205
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;->startAppAd:Lcom/startapp/sdk/adsbase/StartAppAd;

    new-instance v2, Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial$2;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial$2;-><init>(Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;)V

    invoke-virtual {v1, v2}, Lcom/startapp/sdk/adsbase/StartAppAd;->showAd(Lcom/startapp/sdk/adsbase/adlisteners/AdDisplayListener;)Z

    move-result v1

    .line 246
    goto :goto_0
.end method
