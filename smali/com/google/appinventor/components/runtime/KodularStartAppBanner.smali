.class public final Lcom/google/appinventor/components/runtime/KodularStartAppBanner;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"

# interfaces
.implements Lcom/startapp/sdk/ads/banner/BannerListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->ADVERTISING:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Component for displaying banner ads from StartApp"
    iconName = "images/kodularStartAppBanner.png"
    nonVisible = false
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


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "StartApp Banner"


# instance fields
.field private activity:Landroid/app/Activity;

.field private appId:Ljava/lang/String;

.field private bannerView:Lcom/startapp/sdk/ads/banner/Banner;

.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private form:Lcom/google/appinventor/components/runtime/Form;

.field private isAddedToContainer:Z

.field private isInitialized:Z

.field mainLayout:Landroid/widget/LinearLayout;

.field private startAppAd:Lcom/startapp/sdk/adsbase/StartAppAd;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 7

    .prologue
    .line 122
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 111
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/KodularStartAppBanner;->isInitialized:Z

    .line 114
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/KodularStartAppBanner;->isAddedToContainer:Z

    .line 123
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularStartAppBanner;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 124
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularStartAppBanner;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 125
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularStartAppBanner;->activity:Landroid/app/Activity;

    .line 128
    move-object v2, v0

    new-instance v3, Landroid/widget/LinearLayout;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-interface {v5}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularStartAppBanner;->mainLayout:Landroid/widget/LinearLayout;

    .line 129
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularStartAppBanner;->mainLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 132
    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 134
    return-void
.end method

.method private initStartAppSdk()V
    .locals 8

    .prologue
    .line 207
    move-object v1, p0

    move-object v2, v1

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularStartAppBanner;->activity:Landroid/app/Activity;

    const-string/jumbo v3, ""

    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularStartAppBanner;->appId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "204085028"

    :goto_0
    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/startapp/sdk/adsbase/StartAppSDK;->init(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 208
    const-string/jumbo v2, "StartApp Banner"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string/jumbo v5, "Initializing Startapp SDK wit APP ID"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularStartAppBanner;->appId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 209
    invoke-static {}, Lcom/startapp/sdk/adsbase/StartAppAd;->disableSplash()V

    .line 210
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/startapp/sdk/adsbase/StartAppSDK;->enableReturnAds(Z)V

    .line 211
    move-object v2, v1

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularStartAppBanner;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "pas"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lcom/startapp/sdk/adsbase/StartAppSDK;->setUserConsent(Landroid/content/Context;Ljava/lang/String;JZ)V

    .line 213
    return-void

    .line 207
    :cond_0
    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularStartAppBanner;->appId:Ljava/lang/String;

    goto :goto_0
.end method

.method private littleBannerHelper(Z)V
    .locals 9

    .prologue
    .line 137
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-eqz v2, :cond_0

    .line 138
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularStartAppBanner;->mainLayout:Landroid/widget/LinearLayout;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularStartAppBanner;->bannerView:Lcom/startapp/sdk/ads/banner/Banner;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 140
    :cond_0
    move-object v2, v0

    new-instance v3, Lcom/startapp/sdk/ads/banner/Banner;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/KodularStartAppBanner;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v5}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v5

    move-object v6, v0

    invoke-direct {v4, v5, v6}, Lcom/startapp/sdk/ads/banner/Banner;-><init>(Landroid/app/Activity;Lcom/startapp/sdk/ads/banner/BannerListener;)V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularStartAppBanner;->bannerView:Lcom/startapp/sdk/ads/banner/Banner;

    .line 141
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularStartAppBanner;->mainLayout:Landroid/widget/LinearLayout;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularStartAppBanner;->bannerView:Lcom/startapp/sdk/ads/banner/Banner;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    return-void
.end method


# virtual methods
.method public final AdClicked()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that the user has clicked on the banner ad."
    .end annotation

    .prologue
    .line 192
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "AdClicked"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 193
    return-void
.end method

.method public final AdFailedToLoad(ILjava/lang/String;)V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when an ad request failed to load. The message will display the error code and error message."
    .end annotation

    .prologue
    .line 197
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

    .line 198
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
    .line 163
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularStartAppBanner;->appId:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public final Height()I
    .locals 2

    .prologue
    .line 217
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/KodularStartAppBanner;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public final Height(I)V
    .locals 5

    .prologue
    .line 222
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularStartAppBanner;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    move-object v3, v0

    move v4, v1

    invoke-interface {v2, v3, v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->setChildHeight(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V

    .line 223
    return-void
.end method

.method public final HeightPercent(I)V
    .locals 0

    .prologue
    .line 236
    return-void
.end method

.method public final LoadAd()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Load a new StartApp Banner ad."
    .end annotation

    .prologue
    .line 167
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/KodularStartAppBanner;->isAddedToContainer:Z

    if-nez v1, :cond_0

    .line 168
    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/appinventor/components/runtime/KodularStartAppBanner;->littleBannerHelper(Z)V

    .line 169
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/appinventor/components/runtime/KodularStartAppBanner;->isAddedToContainer:Z

    .line 174
    :goto_0
    const-string/jumbo v1, "StartApp"

    const-string/jumbo v2, "Banner"

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularStartAppBanner;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil;->adEvent(Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/Form;)V

    .line 175
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/KodularStartAppBanner;->initStartAppSdk()V

    .line 176
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularStartAppBanner;->bannerView:Lcom/startapp/sdk/ads/banner/Banner;

    const/16 v2, 0x140

    const/16 v3, 0x32

    invoke-virtual {v1, v2, v3}, Lcom/startapp/sdk/ads/banner/Banner;->loadAd(II)V

    .line 177
    const-string/jumbo v1, "StartApp Banner"

    const-string/jumbo v2, "Loading banner ad"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 178
    return-void

    .line 171
    :cond_0
    move-object v1, v0

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/google/appinventor/components/runtime/KodularStartAppBanner;->littleBannerHelper(Z)V

    goto :goto_0
.end method

.method public final OnFailedToReceiveAd(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when an ad request failed to load."
    .end annotation

    .prologue
    .line 182
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

    .line 183
    return-void
.end method

.method public final OnReceiveAd()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when an ad request succeeds."
    .end annotation

    .prologue
    .line 187
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "OnReceiveAd"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 188
    return-void
.end method

.method public final Visible(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "visibility"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies whether the component should be visible on the screen. Value is true if the component is showing and false if hidden."
    .end annotation

    .prologue
    .line 150
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularStartAppBanner;->bannerView:Lcom/startapp/sdk/ads/banner/Banner;

    if-eqz v2, :cond_0

    .line 151
    move v2, v1

    if-eqz v2, :cond_1

    .line 152
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularStartAppBanner;->bannerView:Lcom/startapp/sdk/ads/banner/Banner;

    invoke-virtual {v2}, Lcom/startapp/sdk/ads/banner/Banner;->showBanner()V

    .line 156
    :goto_0
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Visible(Z)V

    .line 158
    :cond_0
    return-void

    .line 154
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularStartAppBanner;->bannerView:Lcom/startapp/sdk/ads/banner/Banner;

    invoke-virtual {v2}, Lcom/startapp/sdk/ads/banner/Banner;->hideBanner()V

    goto :goto_0
.end method

.method public final Width()I
    .locals 2

    .prologue
    .line 227
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/KodularStartAppBanner;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public final Width(I)V
    .locals 5

    .prologue
    .line 232
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularStartAppBanner;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    move-object v3, v0

    move v4, v1

    invoke-interface {v2, v3, v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V

    .line 233
    return-void
.end method

.method public final WidthPercent(I)V
    .locals 0

    .prologue
    .line 239
    return-void
.end method

.method public final getView()Landroid/view/View;
    .locals 2

    .prologue
    .line 243
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularStartAppBanner;->mainLayout:Landroid/widget/LinearLayout;

    move-object v0, v1

    return-object v0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 265
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/KodularStartAppBanner;->AdClicked()V

    .line 266
    return-void
.end method

.method public final onFailedToReceiveAd(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 255
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "Cannot load banner ad"

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/KodularStartAppBanner;->OnFailedToReceiveAd(Ljava/lang/String;)V

    .line 256
    return-void
.end method

.method public final onImpression(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 261
    return-void
.end method

.method public final onReceiveAd(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 251
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/KodularStartAppBanner;->OnReceiveAd()V

    .line 252
    return-void
.end method
