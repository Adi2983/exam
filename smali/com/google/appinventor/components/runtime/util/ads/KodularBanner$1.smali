.class final Lcom/google/appinventor/components/runtime/util/ads/KodularBanner$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/startapp/sdk/ads/banner/BannerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/ads/KodularBanner;->loadAd(Landroid/widget/LinearLayout;Lcom/google/appinventor/components/runtime/Form;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/ads/KodularBanner;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/util/ads/KodularBanner;)V
    .locals 4

    .prologue
    .line 84
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/util/ads/KodularBanner$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/ads/KodularBanner;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 106
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/ads/KodularBanner$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/ads/KodularBanner;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/ads/KodularBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/ads/KodularBanner;)Lcom/google/appinventor/components/runtime/util/ads/KodularBanner$OnAdsSwitcherListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 107
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/ads/KodularBanner$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/ads/KodularBanner;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/ads/KodularBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/ads/KodularBanner;)Lcom/google/appinventor/components/runtime/util/ads/KodularBanner$OnAdsSwitcherListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/util/ads/KodularBanner$OnAdsSwitcherListener;->onAdsClick()V

    .line 109
    :cond_0
    return-void
.end method

.method public final onFailedToReceiveAd(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 94
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/ads/KodularBanner$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/ads/KodularBanner;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/ads/KodularBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/ads/KodularBanner;)Lcom/google/appinventor/components/runtime/util/ads/KodularBanner$OnAdsSwitcherListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 95
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/ads/KodularBanner$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/ads/KodularBanner;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/ads/KodularBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/ads/KodularBanner;)Lcom/google/appinventor/components/runtime/util/ads/KodularBanner$OnAdsSwitcherListener;

    move-result-object v2

    const-string/jumbo v3, "Could not load ad"

    invoke-interface {v2, v3}, Lcom/google/appinventor/components/runtime/util/ads/KodularBanner$OnAdsSwitcherListener;->onAdsError(Ljava/lang/String;)V

    .line 97
    :cond_0
    return-void
.end method

.method public final onImpression(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

.method public final onReceiveAd(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 87
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/ads/KodularBanner$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/ads/KodularBanner;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/ads/KodularBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/ads/KodularBanner;)Lcom/google/appinventor/components/runtime/util/ads/KodularBanner$OnAdsSwitcherListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 88
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/ads/KodularBanner$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/ads/KodularBanner;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/ads/KodularBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/ads/KodularBanner;)Lcom/google/appinventor/components/runtime/util/ads/KodularBanner$OnAdsSwitcherListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/util/ads/KodularBanner$OnAdsSwitcherListener;->onAdsReady()V

    .line 90
    :cond_0
    return-void
.end method
