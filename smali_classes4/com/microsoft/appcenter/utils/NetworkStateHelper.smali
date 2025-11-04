.class public Lcom/microsoft/appcenter/utils/NetworkStateHelper;
.super Ljava/lang/Object;
.source "NetworkStateHelper.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/appcenter/utils/NetworkStateHelper$Listener;
    }
.end annotation


# static fields
.field private static sSharedInstance:Lcom/microsoft/appcenter/utils/NetworkStateHelper;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private final mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/microsoft/appcenter/utils/NetworkStateHelper$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/NetworkStateHelper;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 45
    move-object v2, v0

    new-instance v3, Ljava/util/concurrent/CopyOnWriteArraySet;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v3, v2, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->mListeners:Ljava/util/Set;

    .line 56
    move-object v2, v0

    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v3, v2, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 65
    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    iput-object v3, v2, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 66
    move-object v2, v0

    invoke-virtual {v2}, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->reopen()V

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/microsoft/appcenter/utils/NetworkStateHelper;Landroid/net/Network;)V
    .locals 4

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "x0":Lcom/microsoft/appcenter/utils/NetworkStateHelper;
    move-object v1, p1

    .local v1, "x1":Landroid/net/Network;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->onNetworkAvailable(Landroid/net/Network;)V

    return-void
.end method

.method static synthetic access$100(Lcom/microsoft/appcenter/utils/NetworkStateHelper;Landroid/net/Network;)V
    .locals 4

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "x0":Lcom/microsoft/appcenter/utils/NetworkStateHelper;
    move-object v1, p1

    .local v1, "x1":Landroid/net/Network;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->onNetworkLost(Landroid/net/Network;)V

    return-void
.end method

.method public static declared-synchronized getSharedInstance(Landroid/content/Context;)Lcom/microsoft/appcenter/utils/NetworkStateHelper;
    .locals 6

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    const-class v4, Lcom/microsoft/appcenter/utils/NetworkStateHelper;

    monitor-enter v4

    :try_start_0
    sget-object v1, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->sSharedInstance:Lcom/microsoft/appcenter/utils/NetworkStateHelper;

    if-nez v1, :cond_0

    .line 81
    new-instance v1, Lcom/microsoft/appcenter/utils/NetworkStateHelper;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/microsoft/appcenter/utils/NetworkStateHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->sSharedInstance:Lcom/microsoft/appcenter/utils/NetworkStateHelper;

    .line 83
    :cond_0
    sget-object v1, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->sSharedInstance:Lcom/microsoft/appcenter/utils/NetworkStateHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .end local v0    # "context":Landroid/content/Context;
    monitor-exit v4

    return-object v0

    .line 80
    .restart local v0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception v0

    monitor-exit v4

    .end local v0    # "context":Landroid/content/Context;
    throw v0
.end method

.method private isAnyNetworkConnected()Z
    .locals 9

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/NetworkStateHelper;
    move-object v7, v0

    iget-object v7, v7, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v7}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v7

    move-object v1, v7

    .line 142
    .local v1, "networks":[Landroid/net/Network;
    move-object v7, v1

    if-nez v7, :cond_0

    .line 143
    const/4 v7, 0x0

    move v0, v7

    .line 151
    .end local v0    # "this":Lcom/microsoft/appcenter/utils/NetworkStateHelper;
    :goto_0
    return v0

    .line 145
    .restart local v0    # "this":Lcom/microsoft/appcenter/utils/NetworkStateHelper;
    :cond_0
    move-object v7, v1

    move-object v2, v7

    move-object v7, v2

    array-length v7, v7

    move v3, v7

    const/4 v7, 0x0

    move v4, v7

    :goto_1
    move v7, v4

    move v8, v3

    if-ge v7, v8, :cond_2

    move-object v7, v2

    move v8, v4

    aget-object v7, v7, v8

    move-object v5, v7

    .line 146
    .local v5, "network":Landroid/net/Network;
    move-object v7, v0

    iget-object v7, v7, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->mConnectivityManager:Landroid/net/ConnectivityManager;

    move-object v8, v5

    invoke-virtual {v7, v8}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v7

    move-object v6, v7

    .line 147
    .local v6, "info":Landroid/net/NetworkInfo;
    move-object v7, v6

    if-eqz v7, :cond_1

    move-object v7, v6

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 148
    const/4 v7, 0x1

    move v0, v7

    goto :goto_0

    .line 145
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 151
    .end local v5    # "network":Landroid/net/Network;
    .end local v6    # "info":Landroid/net/NetworkInfo;
    :cond_2
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0
.end method

.method private notifyNetworkStateUpdated(Z)V
    .locals 8

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/NetworkStateHelper;
    move v1, p1

    .local v1, "connected":Z
    const-string/jumbo v4, "AppCenter"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Network has been "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v1

    if-eqz v6, :cond_0

    const-string/jumbo v6, "connected."

    :goto_0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    move-object v4, v0

    iget-object v4, v4, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->mListeners:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_1
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/microsoft/appcenter/utils/NetworkStateHelper$Listener;

    move-object v3, v4

    .line 185
    .local v3, "listener":Lcom/microsoft/appcenter/utils/NetworkStateHelper$Listener;
    move-object v4, v3

    move v5, v1

    invoke-interface {v4, v5}, Lcom/microsoft/appcenter/utils/NetworkStateHelper$Listener;->onNetworkStateUpdated(Z)V

    .line 186
    goto :goto_1

    .line 183
    .end local v3    # "listener":Lcom/microsoft/appcenter/utils/NetworkStateHelper$Listener;
    :cond_0
    const-string/jumbo v6, "disconnected."

    goto :goto_0

    .line 187
    :cond_1
    return-void
.end method

.method private onNetworkAvailable(Landroid/net/Network;)V
    .locals 6

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/NetworkStateHelper;
    move-object v1, p1

    .local v1, "network":Landroid/net/Network;
    const-string/jumbo v2, "AppCenter"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Network "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is available."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 160
    move-object v2, v0

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->notifyNetworkStateUpdated(Z)V

    .line 162
    :cond_0
    return-void
.end method

.method private onNetworkLost(Landroid/net/Network;)V
    .locals 10

    .prologue
    .line 168
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/NetworkStateHelper;
    move-object v1, p1

    .local v1, "network":Landroid/net/Network;
    const-string/jumbo v4, "AppCenter"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Network "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " is lost."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    move-object v4, v0

    iget-object v4, v4, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v4

    move-object v2, v4

    .line 170
    .local v2, "networks":[Landroid/net/Network;
    move-object v4, v2

    if-eqz v4, :cond_0

    move-object v4, v2

    array-length v4, v4

    if-eqz v4, :cond_0

    move-object v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/net/Network;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v1

    aput-object v8, v6, v7

    .line 171
    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    const/4 v4, 0x1

    :goto_0
    move v3, v4

    .line 172
    .local v3, "noNetwork":Z
    move v4, v3

    if-eqz v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 173
    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->notifyNetworkStateUpdated(Z)V

    .line 175
    :cond_1
    return-void

    .line 171
    .end local v3    # "noNetwork":Z
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized unsetInstance()V
    .locals 2

    .prologue
    .line 70
    const-class v1, Lcom/microsoft/appcenter/utils/NetworkStateHelper;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->sSharedInstance:Lcom/microsoft/appcenter/utils/NetworkStateHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    monitor-exit v1

    return-void

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public addListener(Lcom/microsoft/appcenter/utils/NetworkStateHelper$Listener;)V
    .locals 4

    .prologue
    .line 201
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/NetworkStateHelper;
    move-object v1, p1

    .local v1, "listener":Lcom/microsoft/appcenter/utils/NetworkStateHelper$Listener;
    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->mListeners:Ljava/util/Set;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 202
    return-void
.end method

.method public close()V
    .locals 3

    .prologue
    .line 191
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/NetworkStateHelper;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 192
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->mConnectivityManager:Landroid/net/ConnectivityManager;

    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 193
    return-void
.end method

.method public isNetworkConnected()Z
    .locals 2

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/NetworkStateHelper;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    invoke-direct {v1}, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->isAnyNetworkConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/utils/NetworkStateHelper;
    return v0

    .restart local v0    # "this":Lcom/microsoft/appcenter/utils/NetworkStateHelper;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeListener(Lcom/microsoft/appcenter/utils/NetworkStateHelper$Listener;)V
    .locals 4

    .prologue
    .line 210
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/NetworkStateHelper;
    move-object v1, p1

    .local v1, "listener":Lcom/microsoft/appcenter/utils/NetworkStateHelper$Listener;
    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->mListeners:Ljava/util/Set;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 211
    return-void
.end method

.method public reopen()V
    .locals 7

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/NetworkStateHelper;
    :try_start_0
    new-instance v2, Landroid/net/NetworkRequest$Builder;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Landroid/net/NetworkRequest$Builder;-><init>()V

    move-object v1, v2

    .line 99
    .local v1, "request":Landroid/net/NetworkRequest$Builder;
    move-object v2, v1

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    .line 100
    move-object v2, v0

    new-instance v3, Lcom/microsoft/appcenter/utils/NetworkStateHelper$1;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/microsoft/appcenter/utils/NetworkStateHelper$1;-><init>(Lcom/microsoft/appcenter/utils/NetworkStateHelper;)V

    iput-object v3, v2, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 112
    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->mConnectivityManager:Landroid/net/ConnectivityManager;

    move-object v3, v1

    invoke-virtual {v3}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v2, v3, v4}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .line 124
    .end local v1    # "request":Landroid/net/NetworkRequest$Builder;
    :goto_0
    return-void

    .line 113
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 119
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v2, "AppCenter"

    const-string/jumbo v3, "Cannot access network state information."

    move-object v4, v1

    invoke-static {v2, v3, v4}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 122
    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0
.end method
