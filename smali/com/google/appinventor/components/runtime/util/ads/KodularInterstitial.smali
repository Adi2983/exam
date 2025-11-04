.class public Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial$a;,
        Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial$OnAdsSwitcherListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private OOU2L6ZPvPBvVsNChdspsFDAiRPppRoUY09Zs89r9dCXQgf8whit7Vv4m0wrV8PG:Ljava/lang/String;

.field private bxHyewHDU6tjPjcIzbzXfzV01j8NQWoss5bSPV3aTV9R2HuXrtdJDRKZiMMA21Bn:Z

.field private context:Landroid/content/Context;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial$OnAdsSwitcherListener;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .prologue
    .line 31
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 23
    move-object v2, v0

    const-string/jumbo v3, "unity"

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial;->OOU2L6ZPvPBvVsNChdspsFDAiRPppRoUY09Zs89r9dCXQgf8whit7Vv4m0wrV8PG:Ljava/lang/String;

    .line 28
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial;->bxHyewHDU6tjPjcIzbzXfzV01j8NQWoss5bSPV3aTV9R2HuXrtdJDRKZiMMA21Bn:Z

    .line 32
    const-string/jumbo v2, "Kodular Commission Interstitial"

    const-string/jumbo v3, "INITIALIZED"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 33
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial;->context:Landroid/content/Context;

    .line 35
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial;->OOU2L6ZPvPBvVsNChdspsFDAiRPppRoUY09Zs89r9dCXQgf8whit7Vv4m0wrV8PG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    .line 38
    const-string/jumbo v2, "Kodular Commission Interstitial"

    const-string/jumbo v3, "Using Unity Ads"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 39
    move-object v2, v0

    new-instance v3, Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial$a;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial$a;-><init>(Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial;B)V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial$a;

    .line 42
    return-void
.end method

.method static synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial;)Z
    .locals 6

    .prologue
    .line 20
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    move-object v4, v1

    move v5, v2

    move v1, v5

    move-object v2, v4

    move v3, v5

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial;->bxHyewHDU6tjPjcIzbzXfzV01j8NQWoss5bSPV3aTV9R2HuXrtdJDRKZiMMA21Bn:Z

    move v0, v1

    return v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial;)Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial$OnAdsSwitcherListener;
    .locals 2

    .prologue
    .line 20
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial$OnAdsSwitcherListener;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial;)Z
    .locals 2

    .prologue
    .line 20
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial;->bxHyewHDU6tjPjcIzbzXfzV01j8NQWoss5bSPV3aTV9R2HuXrtdJDRKZiMMA21Bn:Z

    move v0, v1

    return v0
.end method


# virtual methods
.method public loadAd(Z)V
    .locals 5

    .prologue
    .line 75
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial;->OOU2L6ZPvPBvVsNChdspsFDAiRPppRoUY09Zs89r9dCXQgf8whit7Vv4m0wrV8PG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    .line 77
    const-string/jumbo v2, "Kodular Commission Interstitial"

    const-string/jumbo v3, "Loading Unity Ads Interstitial"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 78
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial;->context:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    const-string/jumbo v3, "3140736"

    move v4, v1

    invoke-static {v2, v3, v4}, Lcom/unity3d/ads/UnityAds;->initialize(Landroid/app/Activity;Ljava/lang/String;Z)V

    .line 79
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial$a;

    invoke-static {v2}, Lcom/unity3d/ads/UnityAds;->addListener(Lcom/unity3d/ads/IUnityAdsListener;)V

    .line 80
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial;->bxHyewHDU6tjPjcIzbzXfzV01j8NQWoss5bSPV3aTV9R2HuXrtdJDRKZiMMA21Bn:Z

    .line 83
    return-void
.end method

.method public setOnAdsSwitcherListener(Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial$OnAdsSwitcherListener;)V
    .locals 4

    .prologue
    .line 59
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial$OnAdsSwitcherListener;

    .line 60
    return-void
.end method

.method public showAd()Z
    .locals 3

    .prologue
    .line 90
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial;->OOU2L6ZPvPBvVsNChdspsFDAiRPppRoUY09Zs89r9dCXQgf8whit7Vv4m0wrV8PG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 92
    const-string/jumbo v1, "Kodular Commission Interstitial"

    const-string/jumbo v2, "Showing Unity Ads Interstitial"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 93
    invoke-static {}, Lcom/unity3d/ads/UnityAds;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial;->context:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcom/unity3d/ads/UnityAds;->show(Landroid/app/Activity;)V

    .line 95
    const/4 v1, 0x1

    move v0, v1

    .line 97
    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public updateNetwork(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 67
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/util/ads/KodularInterstitial;->OOU2L6ZPvPBvVsNChdspsFDAiRPppRoUY09Zs89r9dCXQgf8whit7Vv4m0wrV8PG:Ljava/lang/String;

    .line 68
    return-void
.end method
