.class public abstract Lcom/microsoft/appcenter/ingestion/AbstractAppCenterIngestion;
.super Ljava/lang/Object;
.source "AbstractAppCenterIngestion.java"

# interfaces
.implements Lcom/microsoft/appcenter/ingestion/Ingestion;


# instance fields
.field private mHttpClient:Lcom/microsoft/appcenter/http/HttpClient;

.field private mLogUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/AbstractAppCenterIngestion;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/microsoft/appcenter/http/HttpClient;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/AbstractAppCenterIngestion;
    move-object v1, p1

    .local v1, "httpClient":Lcom/microsoft/appcenter/http/HttpClient;
    move-object v2, p2

    .local v2, "logUrl":Ljava/lang/String;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 39
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/microsoft/appcenter/ingestion/AbstractAppCenterIngestion;->mLogUrl:Ljava/lang/String;

    .line 40
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/microsoft/appcenter/ingestion/AbstractAppCenterIngestion;->mHttpClient:Lcom/microsoft/appcenter/http/HttpClient;

    .line 41
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/AbstractAppCenterIngestion;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/ingestion/AbstractAppCenterIngestion;->mHttpClient:Lcom/microsoft/appcenter/http/HttpClient;

    invoke-interface {v1}, Lcom/microsoft/appcenter/http/HttpClient;->close()V

    .line 70
    return-void
.end method

.method public getLogUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/AbstractAppCenterIngestion;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/ingestion/AbstractAppCenterIngestion;->mLogUrl:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/AbstractAppCenterIngestion;
    return-object v0
.end method

.method public getServiceCall(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/microsoft/appcenter/http/HttpClient$CallTemplate;Lcom/microsoft/appcenter/http/ServiceCallback;)Lcom/microsoft/appcenter/http/ServiceCall;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/microsoft/appcenter/http/HttpClient$CallTemplate;",
            "Lcom/microsoft/appcenter/http/ServiceCallback;",
            ")",
            "Lcom/microsoft/appcenter/http/ServiceCall;"
        }
    .end annotation

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/AbstractAppCenterIngestion;
    move-object v1, p1

    .local v1, "url":Ljava/lang/String;
    move-object v2, p2

    .local v2, "method":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v4, p4

    .local v4, "callTemplate":Lcom/microsoft/appcenter/http/HttpClient$CallTemplate;
    move-object/from16 v5, p5

    .local v5, "serviceCallback":Lcom/microsoft/appcenter/http/ServiceCallback;
    move-object v6, v0

    invoke-virtual {v6}, Lcom/microsoft/appcenter/ingestion/AbstractAppCenterIngestion;->isEnabled()Z

    move-result v6

    if-nez v6, :cond_0

    .line 78
    move-object v6, v5

    new-instance v7, Ljava/net/ConnectException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const-string/jumbo v9, "SDK is in offline mode."

    invoke-direct {v8, v9}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v7}, Lcom/microsoft/appcenter/http/ServiceCallback;->onCallFailed(Ljava/lang/Exception;)V

    .line 79
    const/4 v6, 0x0

    move-object v0, v6

    .line 81
    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/AbstractAppCenterIngestion;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/microsoft/appcenter/ingestion/AbstractAppCenterIngestion;
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lcom/microsoft/appcenter/ingestion/AbstractAppCenterIngestion;->mHttpClient:Lcom/microsoft/appcenter/http/HttpClient;

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    invoke-interface/range {v6 .. v11}, Lcom/microsoft/appcenter/http/HttpClient;->callAsync(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/microsoft/appcenter/http/HttpClient$CallTemplate;Lcom/microsoft/appcenter/http/ServiceCallback;)Lcom/microsoft/appcenter/http/ServiceCall;

    move-result-object v6

    move-object v0, v6

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 3

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/AbstractAppCenterIngestion;
    const-string/jumbo v1, "allowedNetworkRequests"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/AbstractAppCenterIngestion;
    return v0
.end method

.method public reopen()V
    .locals 2

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/AbstractAppCenterIngestion;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/ingestion/AbstractAppCenterIngestion;->mHttpClient:Lcom/microsoft/appcenter/http/HttpClient;

    invoke-interface {v1}, Lcom/microsoft/appcenter/http/HttpClient;->reopen()V

    .line 65
    return-void
.end method

.method public sendAsync(Ljava/lang/String;Ljava/util/UUID;Lcom/microsoft/appcenter/ingestion/models/LogContainer;Lcom/microsoft/appcenter/http/ServiceCallback;)Lcom/microsoft/appcenter/http/ServiceCall;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/AbstractAppCenterIngestion;
    move-object v1, p1

    .local v1, "appSecret":Ljava/lang/String;
    move-object v2, p2

    .local v2, "installId":Ljava/util/UUID;
    move-object v3, p3

    .local v3, "logContainer":Lcom/microsoft/appcenter/ingestion/models/LogContainer;
    move-object v4, p4

    .local v4, "serviceCallback":Lcom/microsoft/appcenter/http/ServiceCallback;
    const/4 v5, 0x0

    move-object v0, v5

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/AbstractAppCenterIngestion;
    return-object v0
.end method

.method public setHttpClient(Lcom/microsoft/appcenter/http/HttpClient;)V
    .locals 4

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/AbstractAppCenterIngestion;
    move-object v1, p1

    .local v1, "httpClient":Lcom/microsoft/appcenter/http/HttpClient;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/ingestion/AbstractAppCenterIngestion;->mHttpClient:Lcom/microsoft/appcenter/http/HttpClient;

    .line 74
    return-void
.end method

.method public setLogUrl(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/AbstractAppCenterIngestion;
    move-object v1, p1

    .local v1, "logUrl":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/ingestion/AbstractAppCenterIngestion;->mLogUrl:Ljava/lang/String;

    .line 51
    return-void
.end method
