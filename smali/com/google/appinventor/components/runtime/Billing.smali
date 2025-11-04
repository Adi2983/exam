.class public Lcom/google/appinventor/components/runtime/Billing;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/android/billingclient/api/BillingClientStateListener;
.implements Lcom/android/billingclient/api/PurchasesUpdatedListener;
.implements Lcom/google/appinventor/components/runtime/OnDestroyListener;
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;
.implements Lcom/google/appinventor/components/runtime/util/OnInitializeListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MONETIZATION_GENERAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Google Play In-App Billing component"
    helpUrl = "https://docs.kodular.io/components/monetization/in-app-billing/"
    iconName = "images/billing.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesApplicationMetadata;
    metaDataElements = {
        .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/MetaDataElement;
            name = "com.google.android.play.billingclient.version"
            value = "4.1.0"
        .end subannotation
    }
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    value = {
        "play-billing.aar",
        "play-billing.jar"
    }
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "com.android.vending.BILLING",
        "android.permission.INTERNET"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "KodularBilling"

.field private static final TEST_PRODUCT_ID:Ljava/lang/String; = "android.test.purchased"


# instance fields
.field private activity:Landroid/app/Activity;

.field private billingClient:Lcom/android/billingclient/api/BillingClient;

.field private context:Landroid/content/Context;

.field private testMode:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/Form;)V
    .locals 6

    .prologue
    .line 86
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 82
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/Billing;->testMode:Z

    .line 88
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Form;->$context()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Billing;->context:Landroid/content/Context;

    .line 89
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Form;->$context()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Billing;->activity:Landroid/app/Activity;

    .line 91
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->registerForOnInitialize(Lcom/google/appinventor/components/runtime/util/OnInitializeListener;)V

    .line 92
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    .line 93
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V

    .line 95
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Billing;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/billingclient/api/BillingClient;->newBuilder(Landroid/content/Context;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object v3

    move-object v4, v0

    .line 96
    invoke-virtual {v3, v4}, Lcom/android/billingclient/api/BillingClient$Builder;->setListener(Lcom/android/billingclient/api/PurchasesUpdatedListener;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object v3

    .line 97
    invoke-virtual {v3}, Lcom/android/billingclient/api/BillingClient$Builder;->enablePendingPurchases()Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object v3

    .line 98
    invoke-virtual {v3}, Lcom/android/billingclient/api/BillingClient$Builder;->build()Lcom/android/billingclient/api/BillingClient;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Billing;->billingClient:Lcom/android/billingclient/api/BillingClient;

    .line 99
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Billing;->billingClient:Lcom/android/billingclient/api/BillingClient;

    move-object v3, v0

    invoke-virtual {v2, v3}, Lcom/android/billingclient/api/BillingClient;->startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V

    .line 101
    const-string/jumbo v2, "KodularBilling"

    const-string/jumbo v3, "Billing Created"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 102
    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/Billing;Lcom/android/billingclient/api/BillingResult;)Z
    .locals 4

    .prologue
    .line 73
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/Billing;->isSuccessful(Lcom/android/billingclient/api/BillingResult;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method static synthetic access$100(Ljava/util/List;)Z
    .locals 2

    .prologue
    .line 73
    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Billing;->isListNonNullAndNotEmpty(Ljava/util/List;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method static synthetic access$200(Lcom/google/appinventor/components/runtime/Billing;)Lcom/android/billingclient/api/BillingClient;
    .locals 2

    .prologue
    .line 73
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Billing;->billingClient:Lcom/android/billingclient/api/BillingClient;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/appinventor/components/runtime/Billing;Lcom/android/billingclient/api/SkuDetails;)V
    .locals 4

    .prologue
    .line 73
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/Billing;->startBillingFlow(Lcom/android/billingclient/api/SkuDetails;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/appinventor/components/runtime/Billing;)Landroid/app/Activity;
    .locals 2

    .prologue
    .line 73
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Billing;->activity:Landroid/app/Activity;

    move-object v0, v1

    return-object v0
.end method

.method private getSkuDetailsParams(Ljava/lang/String;Ljava/lang/String;)Lcom/android/billingclient/api/SkuDetailsParams;
    .locals 7

    .prologue
    .line 439
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v4, Ljava/util/ArrayList;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    .line 440
    move-object v3, v5

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 442
    invoke-static {}, Lcom/android/billingclient/api/SkuDetailsParams;->newBuilder()Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    move-result-object v4

    move-object v5, v3

    .line 443
    invoke-virtual {v4, v5}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->setSkusList(Ljava/util/List;)Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    move-result-object v4

    move-object v5, v2

    .line 444
    invoke-virtual {v4, v5}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->setType(Ljava/lang/String;)Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    move-result-object v4

    .line 445
    invoke-virtual {v4}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->build()Lcom/android/billingclient/api/SkuDetailsParams;

    move-result-object v4

    .line 442
    move-object v0, v4

    return-object v0
.end method

.method private handlePurchase(Lcom/android/billingclient/api/Purchase;)V
    .locals 10

    .prologue
    .line 462
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/Billing;->isPurchased(Lcom/android/billingclient/api/Purchase;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-virtual {v3}, Lcom/android/billingclient/api/Purchase;->isAcknowledged()Z

    move-result v3

    if-nez v3, :cond_0

    .line 463
    invoke-static {}, Lcom/android/billingclient/api/AcknowledgePurchaseParams;->newBuilder()Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;

    move-result-object v3

    move-object v4, v1

    .line 464
    invoke-virtual {v4}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;->setPurchaseToken(Ljava/lang/String;)Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;

    move-result-object v3

    .line 465
    invoke-virtual {v3}, Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;->build()Lcom/android/billingclient/api/AcknowledgePurchaseParams;

    move-result-object v3

    move-object v2, v3

    .line 466
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Billing;->billingClient:Lcom/android/billingclient/api/BillingClient;

    move-object v4, v2

    new-instance v5, Lcom/google/appinventor/components/runtime/Billing$6;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    move-object v8, v1

    invoke-direct {v6, v7, v8}, Lcom/google/appinventor/components/runtime/Billing$6;-><init>(Lcom/google/appinventor/components/runtime/Billing;Lcom/android/billingclient/api/Purchase;)V

    invoke-virtual {v3, v4, v5}, Lcom/android/billingclient/api/BillingClient;->acknowledgePurchase(Lcom/android/billingclient/api/AcknowledgePurchaseParams;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V

    .line 476
    :cond_0
    return-void
.end method

.method private isFeatureSupported(Ljava/lang/String;)Z
    .locals 6

    .prologue
    .line 412
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Billing;->billingClient:Lcom/android/billingclient/api/BillingClient;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/android/billingclient/api/BillingClient;->isFeatureSupported(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/Billing;->isSuccessful(Lcom/android/billingclient/api/BillingResult;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method private static isListNonNullAndNotEmpty(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 435
    move-object v0, p0

    move-object v1, v0

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method private isPurchased(Lcom/android/billingclient/api/Purchase;)Z
    .locals 4

    .prologue
    .line 416
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-virtual {v2}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method private isPurchased(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    .prologue
    .line 420
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Billing;->billingClient:Lcom/android/billingclient/api/BillingClient;

    move-object v5, v2

    invoke-virtual {v4, v5}, Lcom/android/billingclient/api/BillingClient;->queryPurchases(Ljava/lang/String;)Lcom/android/billingclient/api/Purchase$PurchasesResult;

    move-result-object v4

    move-object v2, v4

    .line 421
    move-object v4, v0

    move-object v5, v2

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/Billing;->isSuccessful(Lcom/android/billingclient/api/Purchase$PurchasesResult;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 422
    move-object v4, v2

    invoke-virtual {v4}, Lcom/android/billingclient/api/Purchase$PurchasesResult;->getPurchasesList()Ljava/util/List;

    move-result-object v4

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    .line 423
    move-object v2, v5

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Billing;->isListNonNullAndNotEmpty(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 424
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/billingclient/api/Purchase;

    move-object v3, v4

    .line 425
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v5}, Lcom/android/billingclient/api/Purchase;->getSkus()Ljava/util/ArrayList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 426
    const/4 v4, 0x1

    move v0, v4

    .line 431
    :goto_1
    return v0

    .line 428
    :cond_0
    goto :goto_0

    .line 431
    :cond_1
    const/4 v4, 0x0

    move v0, v4

    goto :goto_1
.end method

.method private isSuccessful(Lcom/android/billingclient/api/BillingResult;)Z
    .locals 3

    .prologue
    .line 404
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-virtual {v2}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method private isSuccessful(Lcom/android/billingclient/api/Purchase$PurchasesResult;)Z
    .locals 3

    .prologue
    .line 408
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-virtual {v2}, Lcom/android/billingclient/api/Purchase$PurchasesResult;->getResponseCode()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method private startBillingFlow(Lcom/android/billingclient/api/SkuDetails;)V
    .locals 8

    .prologue
    .line 449
    move-object v0, p0

    move-object v1, p1

    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object v2

    move-object v3, v1

    .line 450
    invoke-virtual {v2, v3}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setSkuDetails(Lcom/android/billingclient/api/SkuDetails;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object v2

    .line 451
    invoke-virtual {v2}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams;

    move-result-object v2

    move-object v1, v2

    .line 453
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Billing;->activity:Landroid/app/Activity;

    new-instance v3, Lcom/google/appinventor/components/runtime/Billing$5;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/google/appinventor/components/runtime/Billing$5;-><init>(Lcom/google/appinventor/components/runtime/Billing;Lcom/android/billingclient/api/BillingFlowParams;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 459
    return-void
.end method


# virtual methods
.method public AfterPurchase(Ljava/lang/String;)V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "After purchase event."
    .end annotation

    .prologue
    .line 326
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Billing;->activity:Landroid/app/Activity;

    new-instance v3, Lcom/google/appinventor/components/runtime/Billing$13;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/google/appinventor/components/runtime/Billing$13;-><init>(Lcom/google/appinventor/components/runtime/Billing;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 332
    return-void
.end method

.method public Consume(Ljava/lang/String;)V
    .locals 12
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Consumes a purchase to enable users to buy it again."
    .end annotation

    .prologue
    .line 158
    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v5, "KodularBilling"

    const-string/jumbo v6, "Consuming purchase: "

    move-object v7, v1

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 160
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Billing;->billingClient:Lcom/android/billingclient/api/BillingClient;

    const-string/jumbo v6, "inapp"

    invoke-virtual {v5, v6}, Lcom/android/billingclient/api/BillingClient;->queryPurchases(Ljava/lang/String;)Lcom/android/billingclient/api/Purchase$PurchasesResult;

    move-result-object v5

    move-object v2, v5

    .line 162
    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v6}, Lcom/android/billingclient/api/Purchase$PurchasesResult;->getBillingResult()Lcom/android/billingclient/api/BillingResult;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/appinventor/components/runtime/Billing;->isSuccessful(Lcom/android/billingclient/api/BillingResult;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 163
    move-object v5, v0

    const/4 v6, 0x0

    move-object v7, v1

    invoke-virtual {v5, v6, v7}, Lcom/google/appinventor/components/runtime/Billing;->Consumed(ZLjava/lang/String;)V

    .line 164
    .line 196
    :goto_0
    return-void

    .line 167
    :cond_0
    move-object v5, v2

    invoke-virtual {v5}, Lcom/android/billingclient/api/Purchase$PurchasesResult;->getPurchasesList()Ljava/util/List;

    move-result-object v5

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    .line 169
    move-object v2, v6

    if-eqz v5, :cond_1

    move-object v5, v2

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 170
    :cond_1
    move-object v5, v0

    const/4 v6, 0x0

    move-object v7, v1

    invoke-virtual {v5, v6, v7}, Lcom/google/appinventor/components/runtime/Billing;->Consumed(ZLjava/lang/String;)V

    .line 171
    goto :goto_0

    .line 174
    :cond_2
    const/4 v5, 0x0

    move v3, v5

    .line 175
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v2, v5

    :goto_1
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/billingclient/api/Purchase;

    move-object v4, v5

    .line 176
    move-object v5, v1

    move-object v6, v4

    invoke-virtual {v6}, Lcom/android/billingclient/api/Purchase;->getSkus()Ljava/util/ArrayList;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    move-object v5, v0

    move-object v6, v4

    invoke-direct {v5, v6}, Lcom/google/appinventor/components/runtime/Billing;->isPurchased(Lcom/android/billingclient/api/Purchase;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 177
    invoke-static {}, Lcom/android/billingclient/api/ConsumeParams;->newBuilder()Lcom/android/billingclient/api/ConsumeParams$Builder;

    move-result-object v5

    move-object v6, v4

    .line 178
    invoke-virtual {v6}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/billingclient/api/ConsumeParams$Builder;->setPurchaseToken(Ljava/lang/String;)Lcom/android/billingclient/api/ConsumeParams$Builder;

    move-result-object v5

    .line 179
    invoke-virtual {v5}, Lcom/android/billingclient/api/ConsumeParams$Builder;->build()Lcom/android/billingclient/api/ConsumeParams;

    move-result-object v5

    move-object v2, v5

    .line 181
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Billing;->billingClient:Lcom/android/billingclient/api/BillingClient;

    move-object v6, v2

    new-instance v7, Lcom/google/appinventor/components/runtime/Billing$8;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v0

    move-object v10, v1

    invoke-direct {v8, v9, v10}, Lcom/google/appinventor/components/runtime/Billing$8;-><init>(Lcom/google/appinventor/components/runtime/Billing;Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Lcom/android/billingclient/api/BillingClient;->consumeAsync(Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)V

    .line 189
    const/4 v5, 0x1

    move v3, v5

    .line 193
    :cond_3
    move v5, v3

    if-nez v5, :cond_4

    .line 194
    move-object v5, v0

    const/4 v6, 0x0

    move-object v7, v1

    invoke-virtual {v5, v6, v7}, Lcom/google/appinventor/components/runtime/Billing;->Consumed(ZLjava/lang/String;)V

    .line 196
    :cond_4
    goto :goto_0

    .line 192
    :cond_5
    goto :goto_1
.end method

.method public Consumed(ZLjava/lang/String;)V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "When product is consumed."
    .end annotation

    .prologue
    .line 336
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Billing;->activity:Landroid/app/Activity;

    new-instance v4, Lcom/google/appinventor/components/runtime/Billing$14;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    move v7, v1

    move-object v8, v2

    invoke-direct {v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/Billing$14;-><init>(Lcom/google/appinventor/components/runtime/Billing;ZLjava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 342
    return-void
.end method

.method public ErrorOccurred(Ljava/lang/String;)V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Error occurred event."
    .end annotation

    .prologue
    .line 313
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Billing;->activity:Landroid/app/Activity;

    new-instance v3, Lcom/google/appinventor/components/runtime/Billing$12;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/google/appinventor/components/runtime/Billing$12;-><init>(Lcom/google/appinventor/components/runtime/Billing;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 319
    return-void
.end method

.method public GotOwnedPurchases(Ljava/util/List;Ljava/util/List;)V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Got Owned Purchases"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 371
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Billing;->activity:Landroid/app/Activity;

    new-instance v4, Lcom/google/appinventor/components/runtime/Billing$4;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    invoke-direct {v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/Billing$4;-><init>(Lcom/google/appinventor/components/runtime/Billing;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 377
    return-void
.end method

.method public GotProductDetails(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 18
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Got Product Details"
    .end annotation

    .prologue
    .line 348
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/Billing;->activity:Landroid/app/Activity;

    new-instance v8, Lcom/google/appinventor/components/runtime/Billing$2;

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    move-object v10, v0

    move v11, v1

    move-object v12, v2

    move-object v13, v3

    move-object v14, v4

    move-object v15, v5

    move-object/from16 v16, v6

    invoke-direct/range {v9 .. v16}, Lcom/google/appinventor/components/runtime/Billing$2;-><init>(Lcom/google/appinventor/components/runtime/Billing;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 354
    return-void
.end method

.method public GotSubscriptionDetails(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 20
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Got Subscription Details"
    .end annotation

    .prologue
    .line 361
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object v8, v0

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/Billing;->activity:Landroid/app/Activity;

    new-instance v9, Lcom/google/appinventor/components/runtime/Billing$3;

    move-object/from16 v19, v9

    move-object/from16 v9, v19

    move-object/from16 v10, v19

    move-object v11, v0

    move v12, v1

    move v13, v2

    move-object v14, v3

    move-object v15, v4

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    invoke-direct/range {v10 .. v18}, Lcom/google/appinventor/components/runtime/Billing$3;-><init>(Lcom/google/appinventor/components/runtime/Billing;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 367
    return-void
.end method

.method public Initialize(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Do not use this block anymore. This block is deprecated and does nothing and will be removed in the future!"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 485
    return-void
.end method

.method public IsIabServiceAvailable()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Check Play Market services availability."
    .end annotation

    .prologue
    .line 278
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Billing;->billingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v1}, Lcom/android/billingclient/api/BillingClient;->isReady()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public IsOneTimePurchaseSupported()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Is one time purchase supported."
    .end annotation

    .prologue
    .line 283
    move-object v0, p0

    const/4 v1, 0x1

    move v0, v1

    return v0
.end method

.method public IsPurchased(Ljava/lang/String;)Z
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns true if the product with the specific id is purchased."
    .end annotation

    .prologue
    .line 201
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "inapp"

    invoke-direct {v2, v3, v4}, Lcom/google/appinventor/components/runtime/Billing;->isPurchased(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public IsSubscribed(Ljava/lang/String;)Z
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns true if the product is subscribed."
    .end annotation

    .prologue
    .line 245
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "subs"

    invoke-direct {v2, v3, v4}, Lcom/google/appinventor/components/runtime/Billing;->isPurchased(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public IsSubscriptionUpdateSupported()Z
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Is subscription update supported."
    .end annotation

    .prologue
    .line 293
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "subscriptionsUpdate"

    invoke-direct {v1, v2}, Lcom/google/appinventor/components/runtime/Billing;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public IsSubscriptionsSupported()Z
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Is subscriptions supported."
    .end annotation

    .prologue
    .line 288
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "subscriptions"

    invoke-direct {v1, v2}, Lcom/google/appinventor/components/runtime/Billing;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public LoadOwnedPurchases()V
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Load Owned Purchases from Google."
    .end annotation

    .prologue
    .line 108
    move-object v0, p0

    new-instance v3, Ljava/util/ArrayList;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v3

    .line 109
    new-instance v3, Ljava/util/ArrayList;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v3

    .line 111
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Billing;->billingClient:Lcom/android/billingclient/api/BillingClient;

    const-string/jumbo v4, "inapp"

    new-instance v5, Lcom/google/appinventor/components/runtime/Billing$1;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    invoke-direct {v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/Billing$1;-><init>(Lcom/google/appinventor/components/runtime/Billing;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v3, v4, v5}, Lcom/android/billingclient/api/BillingClient;->queryPurchaseHistoryAsync(Ljava/lang/String;Lcom/android/billingclient/api/PurchaseHistoryResponseListener;)V

    .line 135
    const-string/jumbo v3, "KodularBilling"

    const-string/jumbo v4, "Load Owned Purchases called"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 136
    return-void
.end method

.method public ProductDetails(Ljava/lang/String;)V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get product details from the specific product id."
    .end annotation

    .prologue
    .line 207
    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v2, "KodularBilling"

    const-string/jumbo v3, "ProductDetails: "

    move-object v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 209
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Billing;->billingClient:Lcom/android/billingclient/api/BillingClient;

    move-object v3, v0

    move-object v4, v1

    const-string/jumbo v5, "inapp"

    invoke-direct {v3, v4, v5}, Lcom/google/appinventor/components/runtime/Billing;->getSkuDetailsParams(Ljava/lang/String;Ljava/lang/String;)Lcom/android/billingclient/api/SkuDetailsParams;

    move-result-object v3

    new-instance v4, Lcom/google/appinventor/components/runtime/Billing$9;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/google/appinventor/components/runtime/Billing$9;-><init>(Lcom/google/appinventor/components/runtime/Billing;)V

    invoke-virtual {v2, v3, v4}, Lcom/android/billingclient/api/BillingClient;->querySkuDetailsAsync(Lcom/android/billingclient/api/SkuDetailsParams;Lcom/android/billingclient/api/SkuDetailsResponseListener;)V

    .line 220
    return-void
.end method

.method public Purchase(Ljava/lang/String;)V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Purchase a product with the given product id."
    .end annotation

    .prologue
    .line 141
    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v2, "KodularBilling"

    const-string/jumbo v3, "Purchase: "

    move-object v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 143
    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/Billing;->testMode:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "android.test.purchased"

    move-object v1, v2

    .line 145
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Billing;->billingClient:Lcom/android/billingclient/api/BillingClient;

    move-object v3, v0

    move-object v4, v1

    const-string/jumbo v5, "inapp"

    invoke-direct {v3, v4, v5}, Lcom/google/appinventor/components/runtime/Billing;->getSkuDetailsParams(Ljava/lang/String;Ljava/lang/String;)Lcom/android/billingclient/api/SkuDetailsParams;

    move-result-object v3

    new-instance v4, Lcom/google/appinventor/components/runtime/Billing$7;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/google/appinventor/components/runtime/Billing$7;-><init>(Lcom/google/appinventor/components/runtime/Billing;)V

    invoke-virtual {v2, v3, v4}, Lcom/android/billingclient/api/BillingClient;->querySkuDetailsAsync(Lcom/android/billingclient/api/SkuDetailsParams;Lcom/android/billingclient/api/SkuDetailsResponseListener;)V

    .line 154
    return-void
.end method

.method public ReadyToPurchase()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether In-app billing service is ready to purchase."
    .end annotation

    .prologue
    .line 272
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Billing;->billingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v1}, Lcom/android/billingclient/api/BillingClient;->isReady()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public Subscribe(Ljava/lang/String;)V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Subscribe a product with the given product id."
    .end annotation

    .prologue
    .line 225
    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v2, "KodularBilling"

    const-string/jumbo v3, "Subscribe: "

    move-object v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 227
    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/Billing;->testMode:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "android.test.purchased"

    move-object v1, v2

    .line 229
    :cond_0
    move-object v2, v0

    const-string/jumbo v3, "subscriptions"

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/Billing;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 240
    :goto_0
    return-void

    .line 231
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Billing;->billingClient:Lcom/android/billingclient/api/BillingClient;

    move-object v3, v0

    move-object v4, v1

    const-string/jumbo v5, "subs"

    invoke-direct {v3, v4, v5}, Lcom/google/appinventor/components/runtime/Billing;->getSkuDetailsParams(Ljava/lang/String;Ljava/lang/String;)Lcom/android/billingclient/api/SkuDetailsParams;

    move-result-object v3

    new-instance v4, Lcom/google/appinventor/components/runtime/Billing$10;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/google/appinventor/components/runtime/Billing$10;-><init>(Lcom/google/appinventor/components/runtime/Billing;)V

    invoke-virtual {v2, v3, v4}, Lcom/android/billingclient/api/BillingClient;->querySkuDetailsAsync(Lcom/android/billingclient/api/SkuDetailsParams;Lcom/android/billingclient/api/SkuDetailsResponseListener;)V

    .line 240
    goto :goto_0
.end method

.method public SubscriptionDetails(Ljava/lang/String;)V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get subscription details from the given id."
    .end annotation

    .prologue
    .line 251
    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v2, "KodularBilling"

    const-string/jumbo v3, "SubscriptionDetails: "

    move-object v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 253
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Billing;->billingClient:Lcom/android/billingclient/api/BillingClient;

    move-object v3, v0

    move-object v4, v1

    const-string/jumbo v5, "subs"

    invoke-direct {v3, v4, v5}, Lcom/google/appinventor/components/runtime/Billing;->getSkuDetailsParams(Ljava/lang/String;Ljava/lang/String;)Lcom/android/billingclient/api/SkuDetailsParams;

    move-result-object v3

    new-instance v4, Lcom/google/appinventor/components/runtime/Billing$11;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/google/appinventor/components/runtime/Billing$11;-><init>(Lcom/google/appinventor/components/runtime/Billing;)V

    invoke-virtual {v2, v3, v4}, Lcom/android/billingclient/api/BillingClient;->querySkuDetailsAsync(Lcom/android/billingclient/api/SkuDetailsParams;Lcom/android/billingclient/api/SkuDetailsResponseListener;)V

    .line 264
    return-void
.end method

.method public SuppressToast(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "true"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 498
    return-void
.end method

.method public SuppressToast()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Do not use this block anymore. This block is deprecated and does nothing and will be removed in the future!"
        userVisible = false
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 504
    move-object v0, p0

    const/4 v1, 0x1

    move v0, v1

    return v0
.end method

.method public TestMode(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "false"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 299
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/Billing;->testMode:Z

    .line 300
    return-void
.end method

.method public TestMode()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether it is testing mode enabled or not."
    .end annotation

    .prologue
    .line 304
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/Billing;->testMode:Z

    move v0, v1

    return v0
.end method

.method public UpdateSubscription(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Do not use this block anymore. This block is deprecated and does nothing and will be removed in the future!"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 491
    return-void
.end method

.method public onBillingServiceDisconnected()V
    .locals 0

    .prologue
    .line 389
    return-void
.end method

.method public onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V
    .locals 0
    .param p1    # Lcom/android/billingclient/api/BillingResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 384
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 523
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Billing;->billingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v1}, Lcom/android/billingclient/api/BillingClient;->endConnection()V

    .line 524
    return-void
.end method

.method public onInitialize()V
    .locals 3

    .prologue
    .line 511
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Billing;->billingClient:Lcom/android/billingclient/api/BillingClient;

    const-string/jumbo v2, "inapp"

    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/BillingClient;->queryPurchases(Ljava/lang/String;)Lcom/android/billingclient/api/Purchase$PurchasesResult;

    move-result-object v1

    .line 512
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Billing;->billingClient:Lcom/android/billingclient/api/BillingClient;

    const-string/jumbo v2, "subs"

    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/BillingClient;->queryPurchases(Ljava/lang/String;)Lcom/android/billingclient/api/Purchase$PurchasesResult;

    move-result-object v1

    .line 513
    return-void
.end method

.method public onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 5
    .param p1    # Lcom/android/billingclient/api/BillingResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List",
            "<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 394
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/Billing;->isSuccessful(Lcom/android/billingclient/api/BillingResult;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v2

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Billing;->isListNonNullAndNotEmpty(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 395
    move-object v3, v2

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v3

    :goto_0
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/billingclient/api/Purchase;

    move-object v2, v3

    .line 396
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/Billing;->handlePurchase(Lcom/android/billingclient/api/Purchase;)V

    .line 397
    goto :goto_0

    .line 399
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 517
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Billing;->billingClient:Lcom/android/billingclient/api/BillingClient;

    const-string/jumbo v2, "inapp"

    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/BillingClient;->queryPurchases(Ljava/lang/String;)Lcom/android/billingclient/api/Purchase$PurchasesResult;

    move-result-object v1

    .line 518
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Billing;->billingClient:Lcom/android/billingclient/api/BillingClient;

    const-string/jumbo v2, "subs"

    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/BillingClient;->queryPurchases(Ljava/lang/String;)Lcom/android/billingclient/api/Purchase$PurchasesResult;

    move-result-object v1

    .line 519
    return-void
.end method
