.class public Lcom/microsoft/appcenter/ingestion/AppCenterIngestion;
.super Lcom/microsoft/appcenter/ingestion/AbstractAppCenterIngestion;
.source "AppCenterIngestion.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/appcenter/ingestion/AppCenterIngestion$IngestionCallTemplate;
    }
.end annotation


# static fields
.field static final API_PATH:Ljava/lang/String; = "/logs?api-version=1.0.0"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final DEFAULT_LOG_URL:Ljava/lang/String; = "https://in.appcenter.ms"

.field static final INSTALL_ID:Ljava/lang/String; = "Install-ID"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mLogSerializer:Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;


# direct methods
.method public constructor <init>(Lcom/microsoft/appcenter/http/HttpClient;Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;)V
    .locals 6
    .param p1    # Lcom/microsoft/appcenter/http/HttpClient;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/AppCenterIngestion;
    move-object v1, p1

    .local v1, "httpClient":Lcom/microsoft/appcenter/http/HttpClient;
    move-object v2, p2

    .local v2, "logSerializer":Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;
    move-object v3, v0

    move-object v4, v1

    const-string/jumbo v5, "https://in.appcenter.ms"

    invoke-direct {v3, v4, v5}, Lcom/microsoft/appcenter/ingestion/AbstractAppCenterIngestion;-><init>(Lcom/microsoft/appcenter/http/HttpClient;Ljava/lang/String;)V

    .line 64
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/microsoft/appcenter/ingestion/AppCenterIngestion;->mLogSerializer:Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;

    .line 65
    return-void
.end method


# virtual methods
.method public sendAsync(Ljava/lang/String;Ljava/util/UUID;Lcom/microsoft/appcenter/ingestion/models/LogContainer;Lcom/microsoft/appcenter/http/ServiceCallback;)Lcom/microsoft/appcenter/http/ServiceCall;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/AppCenterIngestion;
    move-object v1, p1

    .local v1, "appSecret":Ljava/lang/String;
    move-object/from16 v2, p2

    .local v2, "installId":Ljava/util/UUID;
    move-object/from16 v3, p3

    .local v3, "logContainer":Lcom/microsoft/appcenter/ingestion/models/LogContainer;
    move-object/from16 v4, p4

    .local v4, "serviceCallback":Lcom/microsoft/appcenter/http/ServiceCallback;
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    move-object v11, v4

    invoke-super {v7, v8, v9, v10, v11}, Lcom/microsoft/appcenter/ingestion/AbstractAppCenterIngestion;->sendAsync(Ljava/lang/String;Ljava/util/UUID;Lcom/microsoft/appcenter/ingestion/models/LogContainer;Lcom/microsoft/appcenter/http/ServiceCallback;)Lcom/microsoft/appcenter/http/ServiceCall;

    move-result-object v7

    .line 70
    new-instance v7, Ljava/util/HashMap;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    move-object v5, v7

    .line 71
    .local v5, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v7, v5

    const-string/jumbo v8, "Install-ID"

    move-object v9, v2

    invoke-virtual {v9}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 72
    move-object v7, v5

    const-string/jumbo v8, "App-Secret"

    move-object v9, v1

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 73
    new-instance v7, Lcom/microsoft/appcenter/ingestion/AppCenterIngestion$IngestionCallTemplate;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v0

    iget-object v9, v9, Lcom/microsoft/appcenter/ingestion/AppCenterIngestion;->mLogSerializer:Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;

    move-object v10, v3

    invoke-direct {v8, v9, v10}, Lcom/microsoft/appcenter/ingestion/AppCenterIngestion$IngestionCallTemplate;-><init>(Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;Lcom/microsoft/appcenter/ingestion/models/LogContainer;)V

    move-object v6, v7

    .line 74
    .local v6, "callTemplate":Lcom/microsoft/appcenter/http/HttpClient$CallTemplate;
    move-object v7, v0

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v0

    invoke-virtual {v9}, Lcom/microsoft/appcenter/ingestion/AppCenterIngestion;->getLogUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "/logs?api-version=1.0.0"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "POST"

    move-object v10, v5

    move-object v11, v6

    move-object v12, v4

    invoke-virtual/range {v7 .. v12}, Lcom/microsoft/appcenter/ingestion/AppCenterIngestion;->getServiceCall(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/microsoft/appcenter/http/HttpClient$CallTemplate;Lcom/microsoft/appcenter/http/ServiceCallback;)Lcom/microsoft/appcenter/http/ServiceCall;

    move-result-object v7

    move-object v0, v7

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/AppCenterIngestion;
    return-object v0
.end method
