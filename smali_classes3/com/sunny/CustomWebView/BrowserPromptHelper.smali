.class public Lcom/sunny/CustomWebView/BrowserPromptHelper;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;

# interfaces
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    androidMinSdk = 0x15
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->EXTENSION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Helper class of CustomWebView extension to add app to browsers list<br> Developed by Sunny Gupta"
    helpUrl = "https://github.com/vknow360/CustomWebView"
    iconName = "https://res.cloudinary.com/andromedaviewflyvipul/image/upload/c_scale,h_20,w_20/v1571472765/ktvu4bapylsvnykoyhdm.png"
    nonVisible = true
    version = 0x1
    versionName = "1.1"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
    external = true
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesActivities;
    activities = {
        .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/ActivityElement;
            intentFilters = {
                .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/IntentFilterElement;
                    actionElements = {
                        .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/ActionElement;
                            name = "android.intent.action.VIEW"
                        .end subannotation
                    }
                    categoryElements = {
                        .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/CategoryElement;
                            name = "android.intent.category.DEFAULT"
                        .end subannotation,
                        .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/CategoryElement;
                            name = "android.intent.category.BROWSABLE"
                        .end subannotation
                    }
                    dataElements = {
                        .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/DataElement;
                            scheme = "http"
                        .end subannotation,
                        .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/DataElement;
                            scheme = "https"
                        .end subannotation
                    }
                .end subannotation,
                .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/IntentFilterElement;
                    actionElements = {
                        .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/ActionElement;
                            name = "android.intent.action.VIEW"
                        .end subannotation
                    }
                    categoryElements = {
                        .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/CategoryElement;
                            name = "android.intent.category.DEFAULT"
                        .end subannotation,
                        .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/CategoryElement;
                            name = "android.intent.category.BROWSABLE"
                        .end subannotation
                    }
                    dataElements = {
                        .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/DataElement;
                            scheme = "http"
                        .end subannotation,
                        .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/DataElement;
                            scheme = "https"
                        .end subannotation,
                        .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/DataElement;
                            mimeType = "text/html"
                        .end subannotation,
                        .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/DataElement;
                            mimeType = "text/plain"
                        .end subannotation,
                        .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/DataElement;
                            mimeType = "application/xhtml+xml"
                        .end subannotation
                    }
                .end subannotation
            }
            launchMode = "singleTask"
            name = "appinventor.ai_vknow360.CustomWebView.Screen1"
        .end subannotation
    }
.end annotation


# instance fields
.field public activity:Landroid/app/Activity;


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

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, v2, Lcom/sunny/CustomWebView/BrowserPromptHelper;->activity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public GetStartUrl()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the url which started the current activity"
    .end annotation

    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/sunny/CustomWebView/BrowserPromptHelper;->getUrl()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public OnResume(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event raised when app gets resumed and gives the url which started this activity/screen if there is any else empty string"
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "OnResume"

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

    return-void
.end method

.method public getUrl()Ljava/lang/String;
    .locals 3

    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/sunny/CustomWebView/BrowserPromptHelper;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    move-object v1, v2

    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v2, ""

    move-object v0, v2

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sunny/CustomWebView/BrowserPromptHelper;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sunny/CustomWebView/BrowserPromptHelper;->OnResume(Ljava/lang/String;)V

    return-void
.end method
