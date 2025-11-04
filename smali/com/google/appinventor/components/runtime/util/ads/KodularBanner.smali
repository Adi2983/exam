.class public Lcom/google/appinventor/components/runtime/util/ads/KodularBanner;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/util/ads/KodularBanner$OnAdsSwitcherListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private OOU2L6ZPvPBvVsNChdspsFDAiRPppRoUY09Zs89r9dCXQgf8whit7Vv4m0wrV8PG:Ljava/lang/String;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/ads/KodularBanner$OnAdsSwitcherListener;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/startapp/sdk/ads/banner/Banner;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/unity3d/services/banners/BannerView;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 34
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 27
    move-object v1, v0

    const-string/jumbo v2, "startapp"

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/util/ads/KodularBanner;->OOU2L6ZPvPBvVsNChdspsFDAiRPppRoUY09Zs89r9dCXQgf8whit7Vv4m0wrV8PG:Ljava/lang/String;

    .line 35
    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/ads/KodularBanner;)Lcom/google/appinventor/components/runtime/util/ads/KodularBanner$OnAdsSwitcherListener;
    .locals 2

    .prologue
    .line 26
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/ads/KodularBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/ads/KodularBanner$OnAdsSwitcherListener;

    move-object v0, v1

    return-object v0
.end method


# virtual methods
.method public loadAd(Landroid/widget/LinearLayout;Lcom/google/appinventor/components/runtime/Form;Z)V
    .locals 18

    .prologue
    .line 70
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object v8, v2

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    move-object v5, v8

    .line 72
    move-object v8, v1

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/util/ads/KodularBanner;->OOU2L6ZPvPBvVsNChdspsFDAiRPppRoUY09Zs89r9dCXQgf8whit7Vv4m0wrV8PG:Ljava/lang/String;

    move-object v6, v8

    const/4 v8, -0x1

    move v7, v8

    move-object v8, v6

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    :cond_0
    :goto_0
    move v8, v7

    packed-switch v8, :pswitch_data_1

    .line 119
    move-object v8, v2

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 121
    move-object v8, v5

    const/16 v9, 0x11

    iput v9, v8, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 122
    move-object v8, v2

    move-object v9, v5

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    move-object v8, v3

    const-string/jumbo v9, "3140736"

    move v10, v4

    invoke-static {v8, v9, v10}, Lcom/unity3d/ads/UnityAds;->initialize(Landroid/app/Activity;Ljava/lang/String;Z)V

    .line 126
    move-object v8, v1

    new-instance v9, Lcom/unity3d/services/banners/BannerView;

    move-object/from16 v17, v9

    move-object/from16 v9, v17

    move-object/from16 v10, v17

    move-object v11, v3

    const-string/jumbo v12, "banner"

    new-instance v13, Lcom/unity3d/services/banners/UnityBannerSize;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    const/16 v15, 0x140

    const/16 v16, 0x32

    invoke-direct/range {v14 .. v16}, Lcom/unity3d/services/banners/UnityBannerSize;-><init>(II)V

    invoke-direct {v10, v11, v12, v13}, Lcom/unity3d/services/banners/BannerView;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/unity3d/services/banners/UnityBannerSize;)V

    iput-object v9, v8, Lcom/google/appinventor/components/runtime/util/ads/KodularBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/unity3d/services/banners/BannerView;

    .line 127
    move-object v8, v1

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/util/ads/KodularBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/unity3d/services/banners/BannerView;

    new-instance v9, Lcom/google/appinventor/components/runtime/util/ads/KodularBanner$2;

    move-object/from16 v17, v9

    move-object/from16 v9, v17

    move-object/from16 v10, v17

    move-object v11, v1

    invoke-direct {v10, v11}, Lcom/google/appinventor/components/runtime/util/ads/KodularBanner$2;-><init>(Lcom/google/appinventor/components/runtime/util/ads/KodularBanner;)V

    invoke-virtual {v8, v9}, Lcom/unity3d/services/banners/BannerView;->setListener(Lcom/unity3d/services/banners/BannerView$IListener;)V

    .line 155
    move-object v8, v2

    move-object v9, v1

    iget-object v9, v9, Lcom/google/appinventor/components/runtime/util/ads/KodularBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/unity3d/services/banners/BannerView;

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 157
    move-object v8, v1

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/util/ads/KodularBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/unity3d/services/banners/BannerView;

    invoke-virtual {v8}, Lcom/unity3d/services/banners/BannerView;->load()V

    .line 159
    :goto_1
    return-void

    .line 72
    :pswitch_0
    move-object v8, v6

    const-string/jumbo v9, "startapp"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x0

    move v7, v8

    goto :goto_0

    .line 74
    :pswitch_1
    move-object v8, v2

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 76
    move-object v8, v5

    const/4 v9, 0x1

    iput v9, v8, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 77
    move-object v8, v2

    move-object v9, v5

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    move-object v8, v3

    invoke-virtual {v8}, Lcom/google/appinventor/components/runtime/Form;->$context()Landroid/app/Activity;

    move-result-object v8

    const-string/jumbo v9, "204085028"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lcom/startapp/sdk/adsbase/StartAppSDK;->init(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 80
    const/4 v8, 0x0

    invoke-static {v8}, Lcom/startapp/sdk/adsbase/StartAppSDK;->enableReturnAds(Z)V

    .line 81
    invoke-static {}, Lcom/startapp/sdk/adsbase/StartAppAd;->disableSplash()V

    .line 82
    move-object v8, v3

    invoke-virtual {v8}, Lcom/google/appinventor/components/runtime/Form;->$context()Landroid/app/Activity;

    move-result-object v8

    const-string/jumbo v9, "pas"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const/4 v12, 0x0

    invoke-static {v8, v9, v10, v11, v12}, Lcom/startapp/sdk/adsbase/StartAppSDK;->setUserConsent(Landroid/content/Context;Ljava/lang/String;JZ)V

    .line 84
    move-object v8, v1

    new-instance v9, Lcom/startapp/sdk/ads/banner/Banner;

    move-object/from16 v17, v9

    move-object/from16 v9, v17

    move-object/from16 v10, v17

    move-object v11, v3

    invoke-virtual {v11}, Lcom/google/appinventor/components/runtime/Form;->$context()Landroid/app/Activity;

    move-result-object v11

    new-instance v12, Lcom/google/appinventor/components/runtime/util/ads/KodularBanner$1;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v1

    invoke-direct {v13, v14}, Lcom/google/appinventor/components/runtime/util/ads/KodularBanner$1;-><init>(Lcom/google/appinventor/components/runtime/util/ads/KodularBanner;)V

    invoke-direct {v10, v11, v12}, Lcom/startapp/sdk/ads/banner/Banner;-><init>(Landroid/app/Activity;Lcom/startapp/sdk/ads/banner/BannerListener;)V

    iput-object v9, v8, Lcom/google/appinventor/components/runtime/util/ads/KodularBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/startapp/sdk/ads/banner/Banner;

    .line 112
    move-object v8, v2

    move-object v9, v1

    iget-object v9, v9, Lcom/google/appinventor/components/runtime/util/ads/KodularBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/startapp/sdk/ads/banner/Banner;

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 114
    move-object v8, v1

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/util/ads/KodularBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/startapp/sdk/ads/banner/Banner;

    const/16 v9, 0x140

    const/16 v10, 0x32

    invoke-virtual {v8, v9, v10}, Lcom/startapp/sdk/ads/banner/Banner;->loadAd(II)V

    .line 115
    goto :goto_1

    .line 72
    nop

    :pswitch_data_0
    .packed-switch 0x4e7cc27f
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public setOnAdsSwitcherListener(Lcom/google/appinventor/components/runtime/util/ads/KodularBanner$OnAdsSwitcherListener;)V
    .locals 4

    .prologue
    .line 54
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/util/ads/KodularBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/ads/KodularBanner$OnAdsSwitcherListener;

    .line 55
    return-void
.end method

.method public updateNetwork(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 63
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/util/ads/KodularBanner;->OOU2L6ZPvPBvVsNChdspsFDAiRPppRoUY09Zs89r9dCXQgf8whit7Vv4m0wrV8PG:Ljava/lang/String;

    .line 64
    return-void
.end method
