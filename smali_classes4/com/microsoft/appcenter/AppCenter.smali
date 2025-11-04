.class public Lcom/microsoft/appcenter/AppCenter;
.super Ljava/lang/Object;
.source "AppCenter.java"


# static fields
.field static final APP_SECRET_KEY:Ljava/lang/String; = "appsecret"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final CORE_GROUP:Ljava/lang/String; = "group_core"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final DEFAULT_MAX_STORAGE_SIZE_IN_BYTES:J = 0xa00000L
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_VALUE_DELIMITER:Ljava/lang/String; = "="
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final LOG_TAG:Ljava/lang/String; = "AppCenter"

.field static final MINIMUM_STORAGE_SIZE:J = 0x6000L
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final PAIR_DELIMITER:Ljava/lang/String; = ";"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final RUNNING_IN_APP_CENTER:Ljava/lang/String; = "RUNNING_IN_APP_CENTER"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final TRANSMISSION_TARGET_TOKEN_KEY:Ljava/lang/String; = "target"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final TRUE_ENVIRONMENT_STRING:Ljava/lang/String; = "1"

.field private static sInstance:Lcom/microsoft/appcenter/AppCenter;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private mAllowedNetworkRequests:Ljava/lang/Boolean;

.field private mAppCenterHandler:Lcom/microsoft/appcenter/AppCenterHandler;

.field private mAppSecret:Ljava/lang/String;

.field private mApplication:Landroid/app/Application;

.field private mApplicationLifecycleListener:Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener;

.field private mChannel:Lcom/microsoft/appcenter/channel/Channel;

.field private mConfiguredFromApp:Z

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mLogLevelConfigured:Z

.field private mLogSerializer:Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;

.field private mLogUrl:Ljava/lang/String;

.field private mMaxStorageSizeInBytes:J

.field private mOneCollectorChannelListener:Lcom/microsoft/appcenter/channel/OneCollectorChannelListener;

.field private mServices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/microsoft/appcenter/AppCenterService;",
            ">;"
        }
    .end annotation
.end field

.field private mServicesStartedFromLibrary:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/microsoft/appcenter/AppCenterService;",
            ">;"
        }
    .end annotation
.end field

.field private mSetMaxStorageSizeFuture:Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mStartedServicesNamesToLog:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTransmissionTargetToken:Ljava/lang/String;

.field private mUncaughtExceptionHandler:Lcom/microsoft/appcenter/UncaughtExceptionHandler;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AppCenter;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 182
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/microsoft/appcenter/AppCenter;->mStartedServicesNamesToLog:Ljava/util/List;

    .line 222
    move-object v1, v0

    const-wide/32 v2, 0xa00000

    iput-wide v2, v1, Lcom/microsoft/appcenter/AppCenter;->mMaxStorageSizeInBytes:J

    return-void
.end method

.method static synthetic access$000(Lcom/microsoft/appcenter/AppCenter;)Lcom/microsoft/appcenter/channel/Channel;
    .locals 2

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "x0":Lcom/microsoft/appcenter/AppCenter;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/AppCenter;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    move-object v0, v1

    .end local v0    # "x0":Lcom/microsoft/appcenter/AppCenter;
    return-object v0
.end method

.method static synthetic access$100(Lcom/microsoft/appcenter/AppCenter;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "x0":Lcom/microsoft/appcenter/AppCenter;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/AppCenter;->mAppSecret:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "x0":Lcom/microsoft/appcenter/AppCenter;
    return-object v0
.end method

.method static synthetic access$200(Lcom/microsoft/appcenter/AppCenter;)Lcom/microsoft/appcenter/channel/OneCollectorChannelListener;
    .locals 2

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "x0":Lcom/microsoft/appcenter/AppCenter;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/AppCenter;->mOneCollectorChannelListener:Lcom/microsoft/appcenter/channel/OneCollectorChannelListener;

    move-object v0, v1

    .end local v0    # "x0":Lcom/microsoft/appcenter/AppCenter;
    return-object v0
.end method

.method static synthetic access$300(Lcom/microsoft/appcenter/AppCenter;)V
    .locals 2

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "x0":Lcom/microsoft/appcenter/AppCenter;
    move-object v1, v0

    invoke-direct {v1}, Lcom/microsoft/appcenter/AppCenter;->applyStorageMaxSize()V

    return-void
.end method

.method static synthetic access$400(Lcom/microsoft/appcenter/AppCenter;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 6

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "x0":Lcom/microsoft/appcenter/AppCenter;
    move-object v1, p1

    .local v1, "x1":Ljava/lang/Runnable;
    move-object v2, p2

    .local v2, "x2":Ljava/lang/Runnable;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/microsoft/appcenter/AppCenter;->handlerAppCenterOperation(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$500(Lcom/microsoft/appcenter/AppCenter;Z)V
    .locals 4

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "x0":Lcom/microsoft/appcenter/AppCenter;
    move v1, p1

    .local v1, "x1":Z
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lcom/microsoft/appcenter/AppCenter;->finishConfiguration(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/microsoft/appcenter/AppCenter;Ljava/lang/Iterable;Ljava/lang/Iterable;Z)V
    .locals 8

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "x0":Lcom/microsoft/appcenter/AppCenter;
    move-object v1, p1

    .local v1, "x1":Ljava/lang/Iterable;
    move-object v2, p2

    .local v2, "x2":Ljava/lang/Iterable;
    move v3, p3

    .local v3, "x3":Z
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/microsoft/appcenter/AppCenter;->finishStartServices(Ljava/lang/Iterable;Ljava/lang/Iterable;Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/microsoft/appcenter/AppCenter;Z)V
    .locals 4

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "x0":Lcom/microsoft/appcenter/AppCenter;
    move v1, p1

    .local v1, "x1":Z
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lcom/microsoft/appcenter/AppCenter;->setInstanceEnabled(Z)V

    return-void
.end method

.method private applyStorageMaxSize()V
    .locals 6
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 915
    move-object v1, p0

    .local v1, "this":Lcom/microsoft/appcenter/AppCenter;
    move-object v3, v1

    iget-object v3, v3, Lcom/microsoft/appcenter/AppCenter;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    move-object v4, v1

    iget-wide v4, v4, Lcom/microsoft/appcenter/AppCenter;->mMaxStorageSizeInBytes:J

    invoke-interface {v3, v4, v5}, Lcom/microsoft/appcenter/channel/Channel;->setMaxStorageSize(J)Z

    move-result v3

    move v2, v3

    .line 916
    .local v2, "resizeResult":Z
    move-object v3, v1

    iget-object v3, v3, Lcom/microsoft/appcenter/AppCenter;->mSetMaxStorageSizeFuture:Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;

    if-eqz v3, :cond_0

    .line 917
    move-object v3, v1

    iget-object v3, v3, Lcom/microsoft/appcenter/AppCenter;->mSetMaxStorageSizeFuture:Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;

    move v4, v2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;->complete(Ljava/lang/Object;)V

    .line 919
    :cond_0
    return-void
.end method

.method private declared-synchronized checkPrecondition()Z
    .locals 4

    .prologue
    .line 531
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AppCenter;
    move-object v3, p0

    monitor-enter v3

    move-object v1, v0

    :try_start_0
    invoke-direct {v1}, Lcom/microsoft/appcenter/AppCenter;->isInstanceConfigured()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 532
    const/4 v1, 0x1

    move v0, v1

    .line 535
    .end local v0    # "this":Lcom/microsoft/appcenter/AppCenter;
    :goto_0
    monitor-exit v3

    return v0

    .line 534
    .restart local v0    # "this":Lcom/microsoft/appcenter/AppCenter;
    :cond_0
    :try_start_1
    const-string/jumbo v1, "AppCenter"

    const-string/jumbo v2, "App Center hasn\'t been configured. You need to call AppCenter.start with appSecret or AppCenter.configure first."

    invoke-static {v1, v2}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 535
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 531
    :catchall_0
    move-exception v0

    monitor-exit v3

    .end local v0    # "this":Lcom/microsoft/appcenter/AppCenter;
    throw v0
.end method

.method public static configure(Landroid/app/Application;)V
    .locals 5

    .prologue
    .line 364
    move-object v0, p0

    .local v0, "application":Landroid/app/Application;
    invoke-static {}, Lcom/microsoft/appcenter/AppCenter;->getInstance()Lcom/microsoft/appcenter/AppCenter;

    move-result-object v1

    move-object v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/microsoft/appcenter/AppCenter;->configureInstance(Landroid/app/Application;Ljava/lang/String;Z)Z

    move-result v1

    .line 365
    return-void
.end method

.method public static configure(Landroid/app/Application;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 354
    move-object v0, p0

    .local v0, "application":Landroid/app/Application;
    move-object v1, p1

    .local v1, "appSecret":Ljava/lang/String;
    invoke-static {}, Lcom/microsoft/appcenter/AppCenter;->getInstance()Lcom/microsoft/appcenter/AppCenter;

    move-result-object v2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v2, v3, v4}, Lcom/microsoft/appcenter/AppCenter;->configureInstanceWithRequiredAppSecret(Landroid/app/Application;Ljava/lang/String;)V

    .line 355
    return-void
.end method

.method private configureAndStartServices(Landroid/app/Application;Ljava/lang/String;Z[Ljava/lang/Class;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Ljava/lang/String;",
            "Z[",
            "Ljava/lang/Class",
            "<+",
            "Lcom/microsoft/appcenter/AppCenterService;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1087
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AppCenter;
    move-object v1, p1

    .local v1, "application":Landroid/app/Application;
    move-object v2, p2

    .local v2, "appSecret":Ljava/lang/String;
    move v3, p3

    .local v3, "startFromApp":Z
    move-object v4, p4

    .local v4, "services":[Ljava/lang/Class;, "[Ljava/lang/Class<+Lcom/microsoft/appcenter/AppCenterService;>;"
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move v9, v3

    invoke-direct {v6, v7, v8, v9}, Lcom/microsoft/appcenter/AppCenter;->configureInstance(Landroid/app/Application;Ljava/lang/String;Z)Z

    move-result v6

    move v5, v6

    .line 1088
    .local v5, "configuredSuccessfully":Z
    move v6, v5

    if-eqz v6, :cond_0

    .line 1089
    move-object v6, v0

    move v7, v3

    move-object v8, v4

    invoke-direct {v6, v7, v8}, Lcom/microsoft/appcenter/AppCenter;->startServices(Z[Ljava/lang/Class;)V

    .line 1091
    :cond_0
    return-void
.end method

.method private declared-synchronized configureAndStartServices(Landroid/app/Application;Ljava/lang/String;[Ljava/lang/Class;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<+",
            "Lcom/microsoft/appcenter/AppCenterService;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1074
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AppCenter;
    move-object v1, p1

    .local v1, "application":Landroid/app/Application;
    move-object v2, p2

    .local v2, "appSecret":Ljava/lang/String;
    move-object v3, p3

    .local v3, "services":[Ljava/lang/Class;, "[Ljava/lang/Class<+Lcom/microsoft/appcenter/AppCenterService;>;"
    move-object v9, p0

    monitor-enter v9

    move-object v4, v2

    if-eqz v4, :cond_0

    move-object v4, v2

    :try_start_0
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1075
    :cond_0
    const-string/jumbo v4, "AppCenter"

    const-string/jumbo v5, "appSecret may not be null or empty."

    invoke-static {v4, v5}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1079
    :goto_0
    monitor-exit v9

    return-void

    .line 1077
    :cond_1
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    const/4 v7, 0x1

    move-object v8, v3

    :try_start_1
    invoke-direct {v4, v5, v6, v7, v8}, Lcom/microsoft/appcenter/AppCenter;->configureAndStartServices(Landroid/app/Application;Ljava/lang/String;Z[Ljava/lang/Class;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1074
    :catchall_0
    move-exception v0

    monitor-exit v9

    .end local v0    # "this":Lcom/microsoft/appcenter/AppCenter;
    throw v0
.end method

.method private declared-synchronized configureInstance(Landroid/app/Application;Ljava/lang/String;Z)Z
    .locals 12

    .prologue
    .line 690
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AppCenter;
    move-object v1, p1

    .local v1, "application":Landroid/app/Application;
    move-object v2, p2

    .local v2, "secretString":Ljava/lang/String;
    move v3, p3

    .local v3, "configureFromApp":Z
    move-object v10, p0

    monitor-enter v10

    move-object v5, v1

    if-nez v5, :cond_0

    .line 691
    :try_start_0
    const-string/jumbo v5, "AppCenter"

    const-string/jumbo v6, "Application context may not be null."

    invoke-static {v5, v6}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 692
    const/4 v5, 0x0

    move v0, v5

    .line 763
    .end local v0    # "this":Lcom/microsoft/appcenter/AppCenter;
    :goto_0
    monitor-exit v10

    return v0

    .line 696
    .restart local v0    # "this":Lcom/microsoft/appcenter/AppCenter;
    :cond_0
    move-object v5, v0

    :try_start_1
    iget-boolean v5, v5, Lcom/microsoft/appcenter/AppCenter;->mLogLevelConfigured:Z

    if-nez v5, :cond_1

    move-object v5, v1

    invoke-virtual {v5}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v6, 0x2

    and-int/lit8 v5, v5, 0x2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 697
    const/4 v5, 0x5

    invoke-static {v5}, Lcom/microsoft/appcenter/utils/AppCenterLog;->setLogLevel(I)V

    .line 701
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lcom/microsoft/appcenter/AppCenter;->mAppSecret:Ljava/lang/String;

    move-object v4, v5

    .line 702
    .local v4, "previousAppSecret":Ljava/lang/String;
    move v5, v3

    if-eqz v5, :cond_2

    move-object v5, v0

    move-object v6, v2

    invoke-direct {v5, v6}, Lcom/microsoft/appcenter/AppCenter;->configureSecretString(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 703
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 707
    :cond_2
    move-object v5, v0

    iget-object v5, v5, Lcom/microsoft/appcenter/AppCenter;->mHandler:Landroid/os/Handler;

    if-eqz v5, :cond_4

    .line 710
    move-object v5, v0

    iget-object v5, v5, Lcom/microsoft/appcenter/AppCenter;->mAppSecret:Ljava/lang/String;

    if-eqz v5, :cond_3

    move-object v5, v0

    iget-object v5, v5, Lcom/microsoft/appcenter/AppCenter;->mAppSecret:Ljava/lang/String;

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 711
    move-object v5, v0

    iget-object v5, v5, Lcom/microsoft/appcenter/AppCenter;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/microsoft/appcenter/AppCenter$3;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    invoke-direct {v7, v8}, Lcom/microsoft/appcenter/AppCenter$3;-><init>(Lcom/microsoft/appcenter/AppCenter;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v5

    .line 720
    :cond_3
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0

    .line 724
    :cond_4
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/microsoft/appcenter/AppCenter;->mApplication:Landroid/app/Application;

    .line 725
    move-object v5, v0

    move-object v6, v1

    invoke-static {v6}, Lcom/microsoft/appcenter/ApplicationContextUtils;->getApplicationContext(Landroid/app/Application;)Landroid/content/Context;

    move-result-object v6

    iput-object v6, v5, Lcom/microsoft/appcenter/AppCenter;->mContext:Landroid/content/Context;

    .line 726
    move-object v5, v0

    iget-object v5, v5, Lcom/microsoft/appcenter/AppCenter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/microsoft/appcenter/ApplicationContextUtils;->isDeviceProtectedStorage(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 732
    const-string/jumbo v5, "AppCenter"

    const-string/jumbo v6, "A user is locked, credential-protected private app data storage is not available.\nApp Center will use device-protected data storage that available without user authentication.\nPlease note that it\'s a separate storage, all settings and pending logs won\'t be shared with regular storage."

    invoke-static {v5, v6}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    :cond_5
    move-object v5, v0

    new-instance v6, Landroid/os/HandlerThread;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const-string/jumbo v8, "AppCenter.Looper"

    invoke-direct {v7, v8}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v6, v5, Lcom/microsoft/appcenter/AppCenter;->mHandlerThread:Landroid/os/HandlerThread;

    .line 740
    move-object v5, v0

    iget-object v5, v5, Lcom/microsoft/appcenter/AppCenter;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->start()V

    .line 741
    move-object v5, v0

    new-instance v6, Landroid/os/Handler;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    iget-object v8, v8, Lcom/microsoft/appcenter/AppCenter;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v8}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v6, v5, Lcom/microsoft/appcenter/AppCenter;->mHandler:Landroid/os/Handler;

    .line 742
    move-object v5, v0

    new-instance v6, Lcom/microsoft/appcenter/AppCenter$4;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    invoke-direct {v7, v8}, Lcom/microsoft/appcenter/AppCenter$4;-><init>(Lcom/microsoft/appcenter/AppCenter;)V

    iput-object v6, v5, Lcom/microsoft/appcenter/AppCenter;->mAppCenterHandler:Lcom/microsoft/appcenter/AppCenterHandler;

    .line 749
    move-object v5, v0

    new-instance v6, Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    iget-object v8, v8, Lcom/microsoft/appcenter/AppCenter;->mHandler:Landroid/os/Handler;

    invoke-direct {v7, v8}, Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener;-><init>(Landroid/os/Handler;)V

    iput-object v6, v5, Lcom/microsoft/appcenter/AppCenter;->mApplicationLifecycleListener:Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener;

    .line 750
    move-object v5, v0

    iget-object v5, v5, Lcom/microsoft/appcenter/AppCenter;->mApplication:Landroid/app/Application;

    move-object v6, v0

    iget-object v6, v6, Lcom/microsoft/appcenter/AppCenter;->mApplicationLifecycleListener:Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener;

    invoke-virtual {v5, v6}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 753
    move-object v5, v0

    new-instance v6, Ljava/util/HashSet;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    iput-object v6, v5, Lcom/microsoft/appcenter/AppCenter;->mServices:Ljava/util/Set;

    .line 754
    move-object v5, v0

    new-instance v6, Ljava/util/HashSet;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    iput-object v6, v5, Lcom/microsoft/appcenter/AppCenter;->mServicesStartedFromLibrary:Ljava/util/Set;

    .line 755
    move-object v5, v0

    iget-object v5, v5, Lcom/microsoft/appcenter/AppCenter;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/microsoft/appcenter/AppCenter$5;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    move v9, v3

    invoke-direct {v7, v8, v9}, Lcom/microsoft/appcenter/AppCenter$5;-><init>(Lcom/microsoft/appcenter/AppCenter;Z)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v5

    .line 762
    const-string/jumbo v5, "AppCenter"

    const-string/jumbo v6, "App Center SDK configured successfully."

    invoke-static {v5, v6}, Lcom/microsoft/appcenter/utils/AppCenterLog;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 763
    const/4 v5, 0x1

    move v0, v5

    goto/16 :goto_0

    .line 690
    .end local v4    # "previousAppSecret":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit v10

    .end local v0    # "this":Lcom/microsoft/appcenter/AppCenter;
    throw v0
.end method

.method private configureInstanceWithRequiredAppSecret(Landroid/app/Application;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 671
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AppCenter;
    move-object v1, p1

    .local v1, "application":Landroid/app/Application;
    move-object v2, p2

    .local v2, "appSecret":Ljava/lang/String;
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 672
    :cond_0
    const-string/jumbo v3, "AppCenter"

    const-string/jumbo v4, "appSecret may not be null or empty."

    invoke-static {v3, v4}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    :goto_0
    return-void

    .line 674
    :cond_1
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x1

    invoke-direct {v3, v4, v5, v6}, Lcom/microsoft/appcenter/AppCenter;->configureInstance(Landroid/app/Application;Ljava/lang/String;Z)Z

    move-result v3

    goto :goto_0
.end method

.method private configureSecretString(Ljava/lang/String;)Z
    .locals 13

    .prologue
    .line 777
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AppCenter;
    move-object v1, p1

    .local v1, "secretString":Ljava/lang/String;
    move-object v10, v0

    iget-boolean v10, v10, Lcom/microsoft/appcenter/AppCenter;->mConfiguredFromApp:Z

    if-eqz v10, :cond_0

    .line 778
    const-string/jumbo v10, "AppCenter"

    const-string/jumbo v11, "App Center may only be configured once."

    invoke-static {v10, v11}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    const/4 v10, 0x0

    move v0, v10

    .line 813
    .end local v0    # "this":Lcom/microsoft/appcenter/AppCenter;
    :goto_0
    return v0

    .line 781
    .restart local v0    # "this":Lcom/microsoft/appcenter/AppCenter;
    :cond_0
    move-object v10, v0

    const/4 v11, 0x1

    iput-boolean v11, v10, Lcom/microsoft/appcenter/AppCenter;->mConfiguredFromApp:Z

    .line 784
    move-object v10, v1

    if-eqz v10, :cond_4

    .line 787
    move-object v10, v1

    const-string/jumbo v11, ";"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    move-object v2, v10

    .line 790
    .local v2, "pairs":[Ljava/lang/String;
    move-object v10, v2

    move-object v3, v10

    move-object v10, v3

    array-length v10, v10

    move v4, v10

    const/4 v10, 0x0

    move v5, v10

    :goto_1
    move v10, v5

    move v11, v4

    if-ge v10, v11, :cond_4

    move-object v10, v3

    move v11, v5

    aget-object v10, v10, v11

    move-object v6, v10

    .line 793
    .local v6, "pair":Ljava/lang/String;
    move-object v10, v6

    const-string/jumbo v11, "="

    const/4 v12, -0x1

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v10

    move-object v7, v10

    .line 794
    .local v7, "keyValue":[Ljava/lang/String;
    move-object v10, v7

    const/4 v11, 0x0

    aget-object v10, v10, v11

    move-object v8, v10

    .line 797
    .local v8, "key":Ljava/lang/String;
    move-object v10, v7

    array-length v10, v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    .line 798
    move-object v10, v8

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1

    .line 799
    move-object v10, v0

    move-object v11, v8

    iput-object v11, v10, Lcom/microsoft/appcenter/AppCenter;->mAppSecret:Ljava/lang/String;

    .line 790
    :cond_1
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 801
    :cond_2
    move-object v10, v7

    const/4 v11, 0x1

    aget-object v10, v10, v11

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1

    .line 802
    move-object v10, v7

    const/4 v11, 0x1

    aget-object v10, v10, v11

    move-object v9, v10

    .line 805
    .local v9, "value":Ljava/lang/String;
    const-string/jumbo v10, "appsecret"

    move-object v11, v8

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 806
    move-object v10, v0

    move-object v11, v9

    iput-object v11, v10, Lcom/microsoft/appcenter/AppCenter;->mAppSecret:Ljava/lang/String;

    goto :goto_2

    .line 807
    :cond_3
    const-string/jumbo v10, "target"

    move-object v11, v8

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 808
    move-object v10, v0

    move-object v11, v9

    iput-object v11, v10, Lcom/microsoft/appcenter/AppCenter;->mTransmissionTargetToken:Ljava/lang/String;

    goto :goto_2

    .line 813
    .end local v2    # "pairs":[Ljava/lang/String;
    .end local v6    # "pair":Ljava/lang/String;
    .end local v7    # "keyValue":[Ljava/lang/String;
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    :cond_4
    const/4 v10, 0x1

    move v0, v10

    goto :goto_0
.end method

.method private finishConfiguration(Z)V
    .locals 14
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 850
    move-object v1, p0

    .local v1, "this":Lcom/microsoft/appcenter/AppCenter;
    move v2, p1

    .local v2, "configureFromApp":Z
    move-object v5, v1

    iget-object v5, v5, Lcom/microsoft/appcenter/AppCenter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/microsoft/appcenter/Constants;->loadFromContext(Landroid/content/Context;)V

    .line 853
    move-object v5, v1

    iget-object v5, v5, Lcom/microsoft/appcenter/AppCenter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/microsoft/appcenter/utils/storage/FileManager;->initialize(Landroid/content/Context;)V

    .line 854
    move-object v5, v1

    iget-object v5, v5, Lcom/microsoft/appcenter/AppCenter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->initialize(Landroid/content/Context;)V

    .line 857
    move-object v5, v1

    iget-object v5, v5, Lcom/microsoft/appcenter/AppCenter;->mAllowedNetworkRequests:Ljava/lang/Boolean;

    if-eqz v5, :cond_0

    .line 858
    const-string/jumbo v5, "allowedNetworkRequests"

    move-object v6, v1

    iget-object v6, v6, Lcom/microsoft/appcenter/AppCenter;->mAllowedNetworkRequests:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-static {v5, v6}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->putBoolean(Ljava/lang/String;Z)V

    .line 862
    :cond_0
    invoke-static {}, Lcom/microsoft/appcenter/utils/context/SessionContext;->getInstance()Lcom/microsoft/appcenter/utils/context/SessionContext;

    move-result-object v5

    .line 865
    move-object v5, v1

    invoke-virtual {v5}, Lcom/microsoft/appcenter/AppCenter;->isInstanceEnabled()Z

    move-result v5

    move v3, v5

    .line 868
    .local v3, "enabled":Z
    invoke-static {}, Lcom/microsoft/appcenter/DependencyConfiguration;->getHttpClient()Lcom/microsoft/appcenter/http/HttpClient;

    move-result-object v5

    move-object v4, v5

    .line 869
    .local v4, "httpClient":Lcom/microsoft/appcenter/http/HttpClient;
    move-object v5, v4

    if-nez v5, :cond_1

    .line 870
    move-object v5, v1

    iget-object v5, v5, Lcom/microsoft/appcenter/AppCenter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/microsoft/appcenter/http/HttpUtils;->createHttpClient(Landroid/content/Context;)Lcom/microsoft/appcenter/http/HttpClient;

    move-result-object v5

    move-object v4, v5

    .line 874
    :cond_1
    move-object v5, v1

    new-instance v6, Lcom/microsoft/appcenter/ingestion/models/json/DefaultLogSerializer;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    invoke-direct {v7}, Lcom/microsoft/appcenter/ingestion/models/json/DefaultLogSerializer;-><init>()V

    iput-object v6, v5, Lcom/microsoft/appcenter/AppCenter;->mLogSerializer:Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;

    .line 875
    move-object v5, v1

    iget-object v5, v5, Lcom/microsoft/appcenter/AppCenter;->mLogSerializer:Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;

    const-string/jumbo v6, "startService"

    new-instance v7, Lcom/microsoft/appcenter/ingestion/models/json/StartServiceLogFactory;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    invoke-direct {v8}, Lcom/microsoft/appcenter/ingestion/models/json/StartServiceLogFactory;-><init>()V

    invoke-interface {v5, v6, v7}, Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;->addLogFactory(Ljava/lang/String;Lcom/microsoft/appcenter/ingestion/models/json/LogFactory;)V

    .line 876
    move-object v5, v1

    new-instance v6, Lcom/microsoft/appcenter/channel/DefaultChannel;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-object v8, v1

    iget-object v8, v8, Lcom/microsoft/appcenter/AppCenter;->mContext:Landroid/content/Context;

    move-object v9, v1

    iget-object v9, v9, Lcom/microsoft/appcenter/AppCenter;->mAppSecret:Ljava/lang/String;

    move-object v10, v1

    iget-object v10, v10, Lcom/microsoft/appcenter/AppCenter;->mLogSerializer:Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;

    move-object v11, v4

    move-object v12, v1

    iget-object v12, v12, Lcom/microsoft/appcenter/AppCenter;->mHandler:Landroid/os/Handler;

    invoke-direct/range {v7 .. v12}, Lcom/microsoft/appcenter/channel/DefaultChannel;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;Lcom/microsoft/appcenter/http/HttpClient;Landroid/os/Handler;)V

    iput-object v6, v5, Lcom/microsoft/appcenter/AppCenter;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    .line 879
    move v5, v2

    if-eqz v5, :cond_5

    .line 880
    move-object v5, v1

    invoke-direct {v5}, Lcom/microsoft/appcenter/AppCenter;->applyStorageMaxSize()V

    .line 886
    :goto_0
    move-object v5, v1

    iget-object v5, v5, Lcom/microsoft/appcenter/AppCenter;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    move v6, v3

    invoke-interface {v5, v6}, Lcom/microsoft/appcenter/channel/Channel;->setEnabled(Z)V

    .line 887
    move-object v5, v1

    iget-object v5, v5, Lcom/microsoft/appcenter/AppCenter;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    const-string/jumbo v6, "group_core"

    const/16 v7, 0x32

    const-wide/16 v8, 0xbb8

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-interface/range {v5 .. v12}, Lcom/microsoft/appcenter/channel/Channel;->addGroup(Ljava/lang/String;IJILcom/microsoft/appcenter/ingestion/Ingestion;Lcom/microsoft/appcenter/channel/Channel$GroupListener;)V

    .line 888
    move-object v5, v1

    new-instance v6, Lcom/microsoft/appcenter/channel/OneCollectorChannelListener;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-object v8, v1

    iget-object v8, v8, Lcom/microsoft/appcenter/AppCenter;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    move-object v9, v1

    iget-object v9, v9, Lcom/microsoft/appcenter/AppCenter;->mLogSerializer:Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;

    move-object v10, v4

    invoke-static {}, Lcom/microsoft/appcenter/utils/IdHelper;->getInstallId()Ljava/util/UUID;

    move-result-object v11

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/microsoft/appcenter/channel/OneCollectorChannelListener;-><init>(Lcom/microsoft/appcenter/channel/Channel;Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;Lcom/microsoft/appcenter/http/HttpClient;Ljava/util/UUID;)V

    iput-object v6, v5, Lcom/microsoft/appcenter/AppCenter;->mOneCollectorChannelListener:Lcom/microsoft/appcenter/channel/OneCollectorChannelListener;

    .line 889
    move-object v5, v1

    iget-object v5, v5, Lcom/microsoft/appcenter/AppCenter;->mLogUrl:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 890
    move-object v5, v1

    iget-object v5, v5, Lcom/microsoft/appcenter/AppCenter;->mAppSecret:Ljava/lang/String;

    if-eqz v5, :cond_6

    .line 891
    const-string/jumbo v5, "AppCenter"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "The log url of App Center endpoint has been changed to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    iget-object v7, v7, Lcom/microsoft/appcenter/AppCenter;->mLogUrl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/microsoft/appcenter/utils/AppCenterLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    move-object v5, v1

    iget-object v5, v5, Lcom/microsoft/appcenter/AppCenter;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    move-object v6, v1

    iget-object v6, v6, Lcom/microsoft/appcenter/AppCenter;->mLogUrl:Ljava/lang/String;

    invoke-interface {v5, v6}, Lcom/microsoft/appcenter/channel/Channel;->setLogUrl(Ljava/lang/String;)V

    .line 898
    :cond_2
    :goto_1
    move-object v5, v1

    iget-object v5, v5, Lcom/microsoft/appcenter/AppCenter;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    move-object v6, v1

    iget-object v6, v6, Lcom/microsoft/appcenter/AppCenter;->mOneCollectorChannelListener:Lcom/microsoft/appcenter/channel/OneCollectorChannelListener;

    invoke-interface {v5, v6}, Lcom/microsoft/appcenter/channel/Channel;->addListener(Lcom/microsoft/appcenter/channel/Channel$Listener;)V

    .line 901
    move v5, v3

    if-nez v5, :cond_3

    .line 902
    move-object v5, v1

    iget-object v5, v5, Lcom/microsoft/appcenter/AppCenter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->getSharedInstance(Landroid/content/Context;)Lcom/microsoft/appcenter/utils/NetworkStateHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->close()V

    .line 906
    :cond_3
    move-object v5, v1

    new-instance v6, Lcom/microsoft/appcenter/UncaughtExceptionHandler;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-object v8, v1

    iget-object v8, v8, Lcom/microsoft/appcenter/AppCenter;->mHandler:Landroid/os/Handler;

    move-object v9, v1

    iget-object v9, v9, Lcom/microsoft/appcenter/AppCenter;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    invoke-direct {v7, v8, v9}, Lcom/microsoft/appcenter/UncaughtExceptionHandler;-><init>(Landroid/os/Handler;Lcom/microsoft/appcenter/channel/Channel;)V

    iput-object v6, v5, Lcom/microsoft/appcenter/AppCenter;->mUncaughtExceptionHandler:Lcom/microsoft/appcenter/UncaughtExceptionHandler;

    .line 907
    move v5, v3

    if-eqz v5, :cond_4

    .line 908
    move-object v5, v1

    iget-object v5, v5, Lcom/microsoft/appcenter/AppCenter;->mUncaughtExceptionHandler:Lcom/microsoft/appcenter/UncaughtExceptionHandler;

    invoke-virtual {v5}, Lcom/microsoft/appcenter/UncaughtExceptionHandler;->register()V

    .line 910
    :cond_4
    const-string/jumbo v5, "AppCenter"

    const-string/jumbo v6, "App Center initialized."

    invoke-static {v5, v6}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    return-void

    .line 884
    :cond_5
    move-object v5, v1

    iget-object v5, v5, Lcom/microsoft/appcenter/AppCenter;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    const-wide/32 v6, 0xa00000

    invoke-interface {v5, v6, v7}, Lcom/microsoft/appcenter/channel/Channel;->setMaxStorageSize(J)Z

    move-result v5

    goto/16 :goto_0

    .line 894
    :cond_6
    const-string/jumbo v5, "AppCenter"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "The log url of One Collector endpoint has been changed to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    iget-object v7, v7, Lcom/microsoft/appcenter/AppCenter;->mLogUrl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/microsoft/appcenter/utils/AppCenterLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    move-object v5, v1

    iget-object v5, v5, Lcom/microsoft/appcenter/AppCenter;->mOneCollectorChannelListener:Lcom/microsoft/appcenter/channel/OneCollectorChannelListener;

    move-object v6, v1

    iget-object v6, v6, Lcom/microsoft/appcenter/AppCenter;->mLogUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/microsoft/appcenter/channel/OneCollectorChannelListener;->setLogUrl(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private finishStartServices(Ljava/lang/Iterable;Ljava/lang/Iterable;Z)V
    .locals 17
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/microsoft/appcenter/AppCenterService;",
            ">;",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/microsoft/appcenter/AppCenterService;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1018
    move-object/from16 v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AppCenter;
    move-object/from16 v1, p1

    .local v1, "updatedServices":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/microsoft/appcenter/AppCenterService;>;"
    move-object/from16 v2, p2

    .local v2, "startedServices":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/microsoft/appcenter/AppCenterService;>;"
    move/from16 v3, p3

    .local v3, "startFromApp":Z
    move-object v10, v1

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v4, v10

    :goto_0
    move-object v10, v4

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    move-object v10, v4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/microsoft/appcenter/AppCenterService;

    move-object v5, v10

    .line 1019
    .local v5, "service":Lcom/microsoft/appcenter/AppCenterService;
    move-object v10, v5

    move-object v11, v0

    iget-object v11, v11, Lcom/microsoft/appcenter/AppCenter;->mAppSecret:Ljava/lang/String;

    move-object v12, v0

    iget-object v12, v12, Lcom/microsoft/appcenter/AppCenter;->mTransmissionTargetToken:Ljava/lang/String;

    invoke-interface {v10, v11, v12}, Lcom/microsoft/appcenter/AppCenterService;->onConfigurationUpdated(Ljava/lang/String;Ljava/lang/String;)V

    .line 1020
    const-string/jumbo v10, "AppCenter"

    new-instance v11, Ljava/lang/StringBuilder;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object v12, v5

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " service configuration updated."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/microsoft/appcenter/utils/AppCenterLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    goto :goto_0

    .line 1024
    .end local v5    # "service":Lcom/microsoft/appcenter/AppCenterService;
    :cond_0
    move-object v10, v0

    invoke-virtual {v10}, Lcom/microsoft/appcenter/AppCenter;->isInstanceEnabled()Z

    move-result v10

    move v4, v10

    .line 1025
    .local v4, "enabled":Z
    move-object v10, v2

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v5, v10

    :goto_1
    move-object v10, v5

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    move-object v10, v5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/microsoft/appcenter/AppCenterService;

    move-object v6, v10

    .line 1026
    .local v6, "service":Lcom/microsoft/appcenter/AppCenterService;
    move-object v10, v6

    invoke-interface {v10}, Lcom/microsoft/appcenter/AppCenterService;->getLogFactories()Ljava/util/Map;

    move-result-object v10

    move-object v7, v10

    .line 1027
    .local v7, "logFactories":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/microsoft/appcenter/ingestion/models/json/LogFactory;>;"
    move-object v10, v7

    if-eqz v10, :cond_1

    .line 1028
    move-object v10, v7

    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v8, v10

    :goto_2
    move-object v10, v8

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    move-object v10, v8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    move-object v9, v10

    .line 1029
    .local v9, "logFactory":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/microsoft/appcenter/ingestion/models/json/LogFactory;>;"
    move-object v10, v0

    iget-object v10, v10, Lcom/microsoft/appcenter/AppCenter;->mLogSerializer:Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;

    move-object v11, v9

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    move-object v12, v9

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/microsoft/appcenter/ingestion/models/json/LogFactory;

    invoke-interface {v10, v11, v12}, Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;->addLogFactory(Ljava/lang/String;Lcom/microsoft/appcenter/ingestion/models/json/LogFactory;)V

    .line 1030
    goto :goto_2

    .line 1032
    .end local v9    # "logFactory":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/microsoft/appcenter/ingestion/models/json/LogFactory;>;"
    :cond_1
    move v10, v4

    if-nez v10, :cond_2

    move-object v10, v6

    invoke-interface {v10}, Lcom/microsoft/appcenter/AppCenterService;->isInstanceEnabled()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1033
    move-object v10, v6

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lcom/microsoft/appcenter/AppCenterService;->setInstanceEnabled(Z)V

    .line 1035
    :cond_2
    move v10, v3

    if-eqz v10, :cond_3

    .line 1036
    move-object v10, v6

    move-object v11, v0

    iget-object v11, v11, Lcom/microsoft/appcenter/AppCenter;->mContext:Landroid/content/Context;

    move-object v12, v0

    iget-object v12, v12, Lcom/microsoft/appcenter/AppCenter;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    move-object v13, v0

    iget-object v13, v13, Lcom/microsoft/appcenter/AppCenter;->mAppSecret:Ljava/lang/String;

    move-object v14, v0

    iget-object v14, v14, Lcom/microsoft/appcenter/AppCenter;->mTransmissionTargetToken:Ljava/lang/String;

    const/4 v15, 0x1

    invoke-interface/range {v10 .. v15}, Lcom/microsoft/appcenter/AppCenterService;->onStarted(Landroid/content/Context;Lcom/microsoft/appcenter/channel/Channel;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1037
    const-string/jumbo v10, "AppCenter"

    new-instance v11, Ljava/lang/StringBuilder;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object v12, v6

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " service started from application."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/microsoft/appcenter/utils/AppCenterLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    :goto_3
    goto/16 :goto_1

    .line 1039
    :cond_3
    move-object v10, v6

    move-object v11, v0

    iget-object v11, v11, Lcom/microsoft/appcenter/AppCenter;->mContext:Landroid/content/Context;

    move-object v12, v0

    iget-object v12, v12, Lcom/microsoft/appcenter/AppCenter;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-interface/range {v10 .. v15}, Lcom/microsoft/appcenter/AppCenterService;->onStarted(Landroid/content/Context;Lcom/microsoft/appcenter/channel/Channel;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1040
    const-string/jumbo v10, "AppCenter"

    new-instance v11, Ljava/lang/StringBuilder;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object v12, v6

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " service started from library."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/microsoft/appcenter/utils/AppCenterLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1045
    .end local v6    # "service":Lcom/microsoft/appcenter/AppCenterService;
    .end local v7    # "logFactories":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/microsoft/appcenter/ingestion/models/json/LogFactory;>;"
    :cond_4
    move v10, v3

    if-eqz v10, :cond_7

    .line 1048
    move-object v10, v1

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v5, v10

    :goto_4
    move-object v10, v5

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    move-object v10, v5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/microsoft/appcenter/AppCenterService;

    move-object v6, v10

    .line 1049
    .restart local v6    # "service":Lcom/microsoft/appcenter/AppCenterService;
    move-object v10, v0

    iget-object v10, v10, Lcom/microsoft/appcenter/AppCenter;->mStartedServicesNamesToLog:Ljava/util/List;

    move-object v11, v6

    invoke-interface {v11}, Lcom/microsoft/appcenter/AppCenterService;->getServiceName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v10

    .line 1050
    goto :goto_4

    .line 1051
    .end local v6    # "service":Lcom/microsoft/appcenter/AppCenterService;
    :cond_5
    move-object v10, v2

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v5, v10

    :goto_5
    move-object v10, v5

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    move-object v10, v5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/microsoft/appcenter/AppCenterService;

    move-object v6, v10

    .line 1052
    .restart local v6    # "service":Lcom/microsoft/appcenter/AppCenterService;
    move-object v10, v0

    iget-object v10, v10, Lcom/microsoft/appcenter/AppCenter;->mStartedServicesNamesToLog:Ljava/util/List;

    move-object v11, v6

    invoke-interface {v11}, Lcom/microsoft/appcenter/AppCenterService;->getServiceName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v10

    .line 1053
    goto :goto_5

    .line 1054
    .end local v6    # "service":Lcom/microsoft/appcenter/AppCenterService;
    :cond_6
    move-object v10, v0

    invoke-direct {v10}, Lcom/microsoft/appcenter/AppCenter;->sendStartServiceLog()V

    .line 1056
    :cond_7
    return-void
.end method

.method public static getInstallId()Lcom/microsoft/appcenter/utils/async/AppCenterFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/microsoft/appcenter/utils/async/AppCenterFuture",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation

    .prologue
    .line 483
    invoke-static {}, Lcom/microsoft/appcenter/AppCenter;->getInstance()Lcom/microsoft/appcenter/AppCenter;

    move-result-object v0

    invoke-direct {v0}, Lcom/microsoft/appcenter/AppCenter;->getInstanceInstallIdAsync()Lcom/microsoft/appcenter/utils/async/AppCenterFuture;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/microsoft/appcenter/AppCenter;
    .locals 4

    .prologue
    .line 245
    const-class v2, Lcom/microsoft/appcenter/AppCenter;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/microsoft/appcenter/AppCenter;->sInstance:Lcom/microsoft/appcenter/AppCenter;

    if-nez v0, :cond_0

    .line 246
    new-instance v0, Lcom/microsoft/appcenter/AppCenter;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-direct {v1}, Lcom/microsoft/appcenter/AppCenter;-><init>()V

    sput-object v0, Lcom/microsoft/appcenter/AppCenter;->sInstance:Lcom/microsoft/appcenter/AppCenter;

    .line 248
    :cond_0
    sget-object v0, Lcom/microsoft/appcenter/AppCenter;->sInstance:Lcom/microsoft/appcenter/AppCenter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v0

    .line 245
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private declared-synchronized getInstanceInstallIdAsync()Lcom/microsoft/appcenter/utils/async/AppCenterFuture;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/microsoft/appcenter/utils/async/AppCenterFuture",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1207
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AppCenter;
    move-object v8, p0

    monitor-enter v8

    :try_start_0
    new-instance v2, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    invoke-direct {v3}, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;-><init>()V

    move-object v1, v2

    .line 1208
    .local v1, "future":Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;, "Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture<Ljava/util/UUID;>;"
    move-object v2, v0

    invoke-direct {v2}, Lcom/microsoft/appcenter/AppCenter;->checkPrecondition()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1209
    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/AppCenter;->mAppCenterHandler:Lcom/microsoft/appcenter/AppCenterHandler;

    new-instance v3, Lcom/microsoft/appcenter/AppCenter$11;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/microsoft/appcenter/AppCenter$11;-><init>(Lcom/microsoft/appcenter/AppCenter;Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;)V

    new-instance v4, Lcom/microsoft/appcenter/AppCenter$12;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v5, v6, v7}, Lcom/microsoft/appcenter/AppCenter$12;-><init>(Lcom/microsoft/appcenter/AppCenter;Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;)V

    invoke-interface {v2, v3, v4}, Lcom/microsoft/appcenter/AppCenterHandler;->post(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1225
    :goto_0
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/microsoft/appcenter/AppCenter;
    monitor-exit v8

    return-object v0

    .line 1223
    .restart local v0    # "this":Lcom/microsoft/appcenter/AppCenter;
    :cond_0
    move-object v2, v1

    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;->complete(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1207
    .end local v1    # "future":Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;, "Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture<Ljava/util/UUID;>;"
    :catchall_0
    move-exception v0

    monitor-exit v8

    .end local v0    # "this":Lcom/microsoft/appcenter/AppCenter;
    throw v0
.end method

.method public static getLogLevel()I
    .locals 1
    .annotation build Landroidx/annotation/IntRange;
        from = 0x2L
        to = 0x8L
    .end annotation

    .prologue
    .line 274
    invoke-static {}, Lcom/microsoft/appcenter/utils/AppCenterLog;->getLogLevel()I

    move-result v0

    return v0
.end method

.method public static getSdkVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 318
    const-string/jumbo v0, "5.0.0"

    return-object v0
.end method

.method private declared-synchronized handlerAppCenterOperation(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 11

    .prologue
    .line 817
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AppCenter;
    move-object v1, p1

    .local v1, "runnable":Ljava/lang/Runnable;
    move-object v2, p2

    .local v2, "disabledRunnable":Ljava/lang/Runnable;
    move-object v9, p0

    monitor-enter v9

    move-object v4, v0

    :try_start_0
    invoke-direct {v4}, Lcom/microsoft/appcenter/AppCenter;->checkPrecondition()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 818
    new-instance v4, Lcom/microsoft/appcenter/AppCenter$6;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    invoke-direct {v5, v6, v7, v8}, Lcom/microsoft/appcenter/AppCenter$6;-><init>(Lcom/microsoft/appcenter/AppCenter;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    move-object v3, v4

    .line 838
    .local v3, "wrapperRunnable":Ljava/lang/Runnable;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/microsoft/appcenter/AppCenter;->mHandlerThread:Landroid/os/HandlerThread;

    if-ne v4, v5, :cond_1

    .line 839
    move-object v4, v1

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 844
    .end local v3    # "wrapperRunnable":Ljava/lang/Runnable;
    :cond_0
    :goto_0
    monitor-exit v9

    return-void

    .line 841
    .restart local v3    # "wrapperRunnable":Ljava/lang/Runnable;
    :cond_1
    move-object v4, v0

    :try_start_1
    iget-object v4, v4, Lcom/microsoft/appcenter/AppCenter;->mHandler:Landroid/os/Handler;

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    goto :goto_0

    .line 817
    .end local v3    # "wrapperRunnable":Ljava/lang/Runnable;
    :catchall_0
    move-exception v0

    monitor-exit v9

    .end local v0    # "this":Lcom/microsoft/appcenter/AppCenter;
    throw v0
.end method

.method public static isConfigured()Z
    .locals 1

    .prologue
    .line 327
    invoke-static {}, Lcom/microsoft/appcenter/AppCenter;->getInstance()Lcom/microsoft/appcenter/AppCenter;

    move-result-object v0

    invoke-direct {v0}, Lcom/microsoft/appcenter/AppCenter;->isInstanceConfigured()Z

    move-result v0

    return v0
.end method

.method public static isEnabled()Lcom/microsoft/appcenter/utils/async/AppCenterFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/microsoft/appcenter/utils/async/AppCenterFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 458
    invoke-static {}, Lcom/microsoft/appcenter/AppCenter;->getInstance()Lcom/microsoft/appcenter/AppCenter;

    move-result-object v0

    invoke-direct {v0}, Lcom/microsoft/appcenter/AppCenter;->isInstanceEnabledAsync()Lcom/microsoft/appcenter/utils/async/AppCenterFuture;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized isInstanceConfigured()Z
    .locals 3

    .prologue
    .line 664
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AppCenter;
    move-object v2, p0

    monitor-enter v2

    move-object v1, v0

    :try_start_0
    iget-object v1, v1, Lcom/microsoft/appcenter/AppCenter;->mApplication:Landroid/app/Application;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/AppCenter;
    monitor-exit v2

    return v0

    .restart local v0    # "this":Lcom/microsoft/appcenter/AppCenter;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    .end local v0    # "this":Lcom/microsoft/appcenter/AppCenter;
    throw v0
.end method

.method private declared-synchronized isInstanceEnabledAsync()Lcom/microsoft/appcenter/utils/async/AppCenterFuture;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/microsoft/appcenter/utils/async/AppCenterFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1097
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AppCenter;
    move-object v8, p0

    monitor-enter v8

    :try_start_0
    new-instance v2, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    invoke-direct {v3}, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;-><init>()V

    move-object v1, v2

    .line 1098
    .local v1, "future":Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;, "Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture<Ljava/lang/Boolean;>;"
    move-object v2, v0

    invoke-direct {v2}, Lcom/microsoft/appcenter/AppCenter;->checkPrecondition()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1099
    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/AppCenter;->mAppCenterHandler:Lcom/microsoft/appcenter/AppCenterHandler;

    new-instance v3, Lcom/microsoft/appcenter/AppCenter$8;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/microsoft/appcenter/AppCenter$8;-><init>(Lcom/microsoft/appcenter/AppCenter;Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;)V

    new-instance v4, Lcom/microsoft/appcenter/AppCenter$9;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v5, v6, v7}, Lcom/microsoft/appcenter/AppCenter$9;-><init>(Lcom/microsoft/appcenter/AppCenter;Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;)V

    invoke-interface {v2, v3, v4}, Lcom/microsoft/appcenter/AppCenterHandler;->post(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1115
    :goto_0
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/microsoft/appcenter/AppCenter;
    monitor-exit v8

    return-object v0

    .line 1113
    .restart local v0    # "this":Lcom/microsoft/appcenter/AppCenter;
    :cond_0
    move-object v2, v1

    const/4 v3, 0x0

    :try_start_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;->complete(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1097
    .end local v1    # "future":Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;, "Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture<Ljava/lang/Boolean;>;"
    :catchall_0
    move-exception v0

    monitor-exit v8

    .end local v0    # "this":Lcom/microsoft/appcenter/AppCenter;
    throw v0
.end method

.method private declared-synchronized isInstanceNetworkRequestsAllowed()Z
    .locals 5

    .prologue
    .line 625
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AppCenter;
    move-object v4, p0

    monitor-enter v4

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/microsoft/appcenter/AppCenter;->mAllowedNetworkRequests:Ljava/lang/Boolean;

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v1, v2

    .line 626
    .local v1, "defaultValue":Z
    invoke-static {}, Lcom/microsoft/appcenter/AppCenter;->isConfigured()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 627
    move v2, v1

    move v0, v2

    .line 629
    .end local v0    # "this":Lcom/microsoft/appcenter/AppCenter;
    :goto_1
    monitor-exit v4

    return v0

    .line 625
    .end local v1    # "defaultValue":Z
    .restart local v0    # "this":Lcom/microsoft/appcenter/AppCenter;
    :cond_0
    move-object v2, v0

    :try_start_1
    iget-object v2, v2, Lcom/microsoft/appcenter/AppCenter;->mAllowedNetworkRequests:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0

    .line 629
    .restart local v1    # "defaultValue":Z
    :cond_1
    const-string/jumbo v2, "allowedNetworkRequests"

    move v3, v1

    invoke-static {v2, v3}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    move v0, v2

    goto :goto_1

    .line 625
    .end local v1    # "defaultValue":Z
    :catchall_0
    move-exception v0

    monitor-exit v4

    .end local v0    # "this":Lcom/microsoft/appcenter/AppCenter;
    throw v0
.end method

.method public static isNetworkRequestsAllowed()Z
    .locals 1

    .prologue
    .line 447
    invoke-static {}, Lcom/microsoft/appcenter/AppCenter;->getInstance()Lcom/microsoft/appcenter/AppCenter;

    move-result-object v0

    invoke-direct {v0}, Lcom/microsoft/appcenter/AppCenter;->isInstanceNetworkRequestsAllowed()Z

    move-result v0

    return v0
.end method

.method public static isRunningInAppCenterTestCloud()Z
    .locals 4

    .prologue
    .line 338
    :try_start_0
    invoke-static {}, Lcom/microsoft/appcenter/utils/InstrumentationRegistryHelper;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    move-object v0, v2

    .line 339
    .local v0, "arguments":Landroid/os/Bundle;
    move-object v2, v0

    const-string/jumbo v3, "RUNNING_IN_APP_CENTER"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 340
    .local v1, "runningValue":Ljava/lang/String;
    const-string/jumbo v2, "1"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    move v0, v2

    .line 342
    .end local v0    # "arguments":Landroid/os/Bundle;
    :goto_0
    return v0

    .line 341
    .end local v1    # "runningValue":Ljava/lang/String;
    .restart local v0    # "arguments":Landroid/os/Bundle;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 342
    .local v0, "e":Ljava/lang/IllegalStateException;
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method private sendStartServiceLog()V
    .locals 8
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 1063
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AppCenter;
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/AppCenter;->mStartedServicesNamesToLog:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Lcom/microsoft/appcenter/AppCenter;->isInstanceEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1064
    new-instance v3, Ljava/util/ArrayList;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    iget-object v5, v5, Lcom/microsoft/appcenter/AppCenter;->mStartedServicesNamesToLog:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v1, v3

    .line 1065
    .local v1, "allServiceNamesToStart":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/AppCenter;->mStartedServicesNamesToLog:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1066
    new-instance v3, Lcom/microsoft/appcenter/ingestion/models/StartServiceLog;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Lcom/microsoft/appcenter/ingestion/models/StartServiceLog;-><init>()V

    move-object v2, v3

    .line 1067
    .local v2, "startServiceLog":Lcom/microsoft/appcenter/ingestion/models/StartServiceLog;
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/microsoft/appcenter/ingestion/models/StartServiceLog;->setServices(Ljava/util/List;)V

    .line 1068
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/microsoft/appcenter/AppCenter;->mTransmissionTargetToken:Ljava/lang/String;

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/microsoft/appcenter/ingestion/models/StartServiceLog;->oneCollectorEnabled(Ljava/lang/Boolean;)V

    .line 1069
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/AppCenter;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    move-object v4, v2

    const-string/jumbo v5, "group_core"

    const/4 v6, 0x1

    invoke-interface {v3, v4, v5, v6}, Lcom/microsoft/appcenter/channel/Channel;->enqueue(Lcom/microsoft/appcenter/ingestion/models/Log;Ljava/lang/String;I)V

    .line 1071
    .end local v1    # "allServiceNamesToStart":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "startServiceLog":Lcom/microsoft/appcenter/ingestion/models/StartServiceLog;
    :cond_0
    return-void

    .line 1068
    .restart local v1    # "allServiceNamesToStart":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "startServiceLog":Lcom/microsoft/appcenter/ingestion/models/StartServiceLog;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static setCountryCode(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 308
    move-object v0, p0

    .local v0, "countryCode":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v1}, Lcom/microsoft/appcenter/utils/DeviceInfoHelper;->setCountryCode(Ljava/lang/String;)V

    .line 309
    return-void
.end method

.method public static setEnabled(Z)Lcom/microsoft/appcenter/utils/async/AppCenterFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/microsoft/appcenter/utils/async/AppCenterFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 471
    move v0, p0

    .local v0, "enabled":Z
    invoke-static {}, Lcom/microsoft/appcenter/AppCenter;->getInstance()Lcom/microsoft/appcenter/AppCenter;

    move-result-object v1

    move v2, v0

    invoke-direct {v1, v2}, Lcom/microsoft/appcenter/AppCenter;->setInstanceEnabledAsync(Z)Lcom/microsoft/appcenter/utils/async/AppCenterFuture;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "enabled":Z
    return-object v0
.end method

.method private setInstanceEnabled(Z)V
    .locals 11
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 1133
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AppCenter;
    move v1, p1

    .local v1, "enabled":Z
    move-object v7, v0

    iget-object v7, v7, Lcom/microsoft/appcenter/AppCenter;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    move v8, v1

    invoke-interface {v7, v8}, Lcom/microsoft/appcenter/channel/Channel;->setEnabled(Z)V

    .line 1136
    move-object v7, v0

    invoke-virtual {v7}, Lcom/microsoft/appcenter/AppCenter;->isInstanceEnabled()Z

    move-result v7

    move v2, v7

    .line 1137
    .local v2, "previouslyEnabled":Z
    move v7, v2

    if-eqz v7, :cond_4

    move v7, v1

    if-nez v7, :cond_4

    const/4 v7, 0x1

    :goto_0
    move v3, v7

    .line 1138
    .local v3, "switchToDisabled":Z
    move v7, v2

    if-nez v7, :cond_5

    move v7, v1

    if-eqz v7, :cond_5

    const/4 v7, 0x1

    :goto_1
    move v4, v7

    .line 1141
    .local v4, "switchToEnabled":Z
    move v7, v4

    if-eqz v7, :cond_6

    .line 1142
    move-object v7, v0

    iget-object v7, v7, Lcom/microsoft/appcenter/AppCenter;->mUncaughtExceptionHandler:Lcom/microsoft/appcenter/UncaughtExceptionHandler;

    invoke-virtual {v7}, Lcom/microsoft/appcenter/UncaughtExceptionHandler;->register()V

    .line 1143
    move-object v7, v0

    iget-object v7, v7, Lcom/microsoft/appcenter/AppCenter;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->getSharedInstance(Landroid/content/Context;)Lcom/microsoft/appcenter/utils/NetworkStateHelper;

    move-result-object v7

    invoke-virtual {v7}, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->reopen()V

    .line 1150
    :cond_0
    :goto_2
    move v7, v1

    if-eqz v7, :cond_1

    .line 1151
    const-string/jumbo v7, "enabled"

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->putBoolean(Ljava/lang/String;Z)V

    .line 1155
    :cond_1
    move-object v7, v0

    iget-object v7, v7, Lcom/microsoft/appcenter/AppCenter;->mStartedServicesNamesToLog:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    move v7, v4

    if-eqz v7, :cond_2

    .line 1156
    move-object v7, v0

    invoke-direct {v7}, Lcom/microsoft/appcenter/AppCenter;->sendStartServiceLog()V

    .line 1160
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Lcom/microsoft/appcenter/AppCenter;->mServices:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v5, v7

    :goto_3
    move-object v7, v5

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    move-object v7, v5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/microsoft/appcenter/AppCenterService;

    move-object v6, v7

    .line 1163
    .local v6, "service":Lcom/microsoft/appcenter/AppCenterService;
    move-object v7, v6

    invoke-interface {v7}, Lcom/microsoft/appcenter/AppCenterService;->isInstanceEnabled()Z

    move-result v7

    move v8, v1

    if-eq v7, v8, :cond_3

    .line 1164
    move-object v7, v6

    move v8, v1

    invoke-interface {v7, v8}, Lcom/microsoft/appcenter/AppCenterService;->setInstanceEnabled(Z)V

    .line 1166
    :cond_3
    goto :goto_3

    .line 1137
    .end local v3    # "switchToDisabled":Z
    .end local v4    # "switchToEnabled":Z
    .end local v6    # "service":Lcom/microsoft/appcenter/AppCenterService;
    :cond_4
    const/4 v7, 0x0

    goto :goto_0

    .line 1138
    .restart local v3    # "switchToDisabled":Z
    :cond_5
    const/4 v7, 0x0

    goto :goto_1

    .line 1144
    .restart local v4    # "switchToEnabled":Z
    :cond_6
    move v7, v3

    if-eqz v7, :cond_0

    .line 1145
    move-object v7, v0

    iget-object v7, v7, Lcom/microsoft/appcenter/AppCenter;->mUncaughtExceptionHandler:Lcom/microsoft/appcenter/UncaughtExceptionHandler;

    invoke-virtual {v7}, Lcom/microsoft/appcenter/UncaughtExceptionHandler;->unregister()V

    .line 1146
    move-object v7, v0

    iget-object v7, v7, Lcom/microsoft/appcenter/AppCenter;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->getSharedInstance(Landroid/content/Context;)Lcom/microsoft/appcenter/utils/NetworkStateHelper;

    move-result-object v7

    invoke-virtual {v7}, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->close()V

    goto :goto_2

    .line 1169
    :cond_7
    move v7, v1

    if-nez v7, :cond_8

    .line 1170
    const-string/jumbo v7, "enabled"

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->putBoolean(Ljava/lang/String;Z)V

    .line 1174
    :cond_8
    move v7, v3

    if-eqz v7, :cond_9

    .line 1175
    const-string/jumbo v7, "AppCenter"

    const-string/jumbo v8, "App Center has been disabled."

    invoke-static {v7, v8}, Lcom/microsoft/appcenter/utils/AppCenterLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1181
    :goto_4
    return-void

    .line 1176
    :cond_9
    move v7, v4

    if-eqz v7, :cond_a

    .line 1177
    const-string/jumbo v7, "AppCenter"

    const-string/jumbo v8, "App Center has been enabled."

    invoke-static {v7, v8}, Lcom/microsoft/appcenter/utils/AppCenterLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1179
    :cond_a
    const-string/jumbo v7, "AppCenter"

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "App Center has already been "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move v9, v1

    if-eqz v9, :cond_b

    const-string/jumbo v9, "enabled"

    :goto_5
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/microsoft/appcenter/utils/AppCenterLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_b
    const-string/jumbo v9, "disabled"

    goto :goto_5
.end method

.method private declared-synchronized setInstanceEnabledAsync(Z)Lcom/microsoft/appcenter/utils/async/AppCenterFuture;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/microsoft/appcenter/utils/async/AppCenterFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1187
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AppCenter;
    move v1, p1

    .local v1, "enabled":Z
    move-object v9, p0

    monitor-enter v9

    :try_start_0
    new-instance v3, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    invoke-direct {v4}, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;-><init>()V

    move-object v2, v3

    .line 1188
    .local v2, "future":Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;, "Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture<Ljava/lang/Void;>;"
    move-object v3, v0

    invoke-direct {v3}, Lcom/microsoft/appcenter/AppCenter;->checkPrecondition()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1189
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/AppCenter;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/microsoft/appcenter/AppCenter$10;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    move v7, v1

    move-object v8, v2

    invoke-direct {v5, v6, v7, v8}, Lcom/microsoft/appcenter/AppCenter$10;-><init>(Lcom/microsoft/appcenter/AppCenter;ZLcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 1200
    :goto_0
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lcom/microsoft/appcenter/AppCenter;
    monitor-exit v9

    return-object v0

    .line 1198
    .restart local v0    # "this":Lcom/microsoft/appcenter/AppCenter;
    :cond_0
    move-object v3, v2

    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v3, v4}, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;->complete(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1187
    .end local v2    # "future":Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;, "Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture<Ljava/lang/Void;>;"
    :catchall_0
    move-exception v0

    monitor-exit v9

    .end local v0    # "this":Lcom/microsoft/appcenter/AppCenter;
    throw v0
.end method

.method private declared-synchronized setInstanceLogLevel(I)V
    .locals 5

    .prologue
    .line 566
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AppCenter;
    move v1, p1

    .local v1, "logLevel":I
    move-object v4, p0

    monitor-enter v4

    move-object v2, v0

    const/4 v3, 0x1

    :try_start_0
    iput-boolean v3, v2, Lcom/microsoft/appcenter/AppCenter;->mLogLevelConfigured:Z

    .line 567
    move v2, v1

    invoke-static {v2}, Lcom/microsoft/appcenter/utils/AppCenterLog;->setLogLevel(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 568
    monitor-exit v4

    return-void

    .line 566
    :catchall_0
    move-exception v0

    monitor-exit v4

    .end local v0    # "this":Lcom/microsoft/appcenter/AppCenter;
    throw v0
.end method

.method private declared-synchronized setInstanceLogUrl(Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 576
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AppCenter;
    move-object v1, p1

    .local v1, "logUrl":Ljava/lang/String;
    move-object v7, p0

    monitor-enter v7

    move-object v2, v0

    move-object v3, v1

    :try_start_0
    iput-object v3, v2, Lcom/microsoft/appcenter/AppCenter;->mLogUrl:Ljava/lang/String;

    .line 579
    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/AppCenter;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 582
    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/AppCenter;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/microsoft/appcenter/AppCenter$2;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/microsoft/appcenter/AppCenter$2;-><init>(Lcom/microsoft/appcenter/AppCenter;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 596
    :cond_0
    monitor-exit v7

    return-void

    .line 576
    :catchall_0
    move-exception v0

    monitor-exit v7

    .end local v0    # "this":Lcom/microsoft/appcenter/AppCenter;
    throw v0
.end method

.method private declared-synchronized setInstanceMaxStorageSizeAsync(J)Lcom/microsoft/appcenter/utils/async/AppCenterFuture;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/microsoft/appcenter/utils/async/AppCenterFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 639
    move-object v1, p0

    .local v1, "this":Lcom/microsoft/appcenter/AppCenter;
    move-wide v2, p1

    .local v2, "storageSizeInBytes":J
    move-object v9, p0

    monitor-enter v9

    :try_start_0
    new-instance v5, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;-><init>()V

    move-object v4, v5

    .line 640
    .local v4, "setMaxStorageSizeFuture":Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;, "Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture<Ljava/lang/Boolean;>;"
    move-object v5, v1

    iget-boolean v5, v5, Lcom/microsoft/appcenter/AppCenter;->mConfiguredFromApp:Z

    if-eqz v5, :cond_0

    .line 641
    const-string/jumbo v5, "AppCenter"

    const-string/jumbo v6, "setMaxStorageSize may not be called after App Center has been configured."

    invoke-static {v5, v6}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    move-object v5, v4

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;->complete(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 643
    move-object v5, v4

    move-object v1, v5

    .line 657
    .end local v1    # "this":Lcom/microsoft/appcenter/AppCenter;
    :goto_0
    monitor-exit v9

    return-object v1

    .line 645
    .restart local v1    # "this":Lcom/microsoft/appcenter/AppCenter;
    :cond_0
    move-wide v5, v2

    const-wide/16 v7, 0x6000

    cmp-long v5, v5, v7

    if-gez v5, :cond_1

    .line 646
    :try_start_1
    const-string/jumbo v5, "AppCenter"

    const-string/jumbo v6, "Maximum storage size must be at least 24576 bytes."

    invoke-static {v5, v6}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    move-object v5, v4

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;->complete(Ljava/lang/Object;)V

    .line 648
    move-object v5, v4

    move-object v1, v5

    goto :goto_0

    .line 650
    :cond_1
    move-object v5, v1

    iget-object v5, v5, Lcom/microsoft/appcenter/AppCenter;->mSetMaxStorageSizeFuture:Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;

    if-eqz v5, :cond_2

    .line 651
    const-string/jumbo v5, "AppCenter"

    const-string/jumbo v6, "setMaxStorageSize may only be called once per app launch."

    invoke-static {v5, v6}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    move-object v5, v4

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;->complete(Ljava/lang/Object;)V

    .line 653
    move-object v5, v4

    move-object v1, v5

    goto :goto_0

    .line 655
    :cond_2
    move-object v5, v1

    move-wide v6, v2

    iput-wide v6, v5, Lcom/microsoft/appcenter/AppCenter;->mMaxStorageSizeInBytes:J

    .line 656
    move-object v5, v1

    move-object v6, v4

    iput-object v6, v5, Lcom/microsoft/appcenter/AppCenter;->mSetMaxStorageSizeFuture:Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 657
    move-object v5, v4

    move-object v1, v5

    goto :goto_0

    .line 639
    .end local v4    # "setMaxStorageSizeFuture":Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;, "Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture<Ljava/lang/Boolean;>;"
    :catchall_0
    move-exception v1

    monitor-exit v9

    .end local v1    # "this":Lcom/microsoft/appcenter/AppCenter;
    throw v1
.end method

.method private declared-synchronized setInstanceNetworkRequestsAllowed(Z)V
    .locals 7

    .prologue
    .line 604
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AppCenter;
    move v1, p1

    .local v1, "isAllowed":Z
    move-object v5, p0

    monitor-enter v5

    :try_start_0
    invoke-static {}, Lcom/microsoft/appcenter/AppCenter;->isConfigured()Z

    move-result v2

    if-nez v2, :cond_0

    .line 605
    move-object v2, v0

    move v3, v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lcom/microsoft/appcenter/AppCenter;->mAllowedNetworkRequests:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 606
    .line 617
    :goto_0
    monitor-exit v5

    return-void

    .line 608
    :cond_0
    move-object v2, v0

    :try_start_1
    invoke-direct {v2}, Lcom/microsoft/appcenter/AppCenter;->isInstanceNetworkRequestsAllowed()Z

    move-result v2

    move v3, v1

    if-ne v2, v3, :cond_2

    .line 609
    const-string/jumbo v2, "AppCenter"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Network requests are already "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move v4, v1

    if-eqz v4, :cond_1

    const-string/jumbo v4, "allowed"

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/microsoft/appcenter/utils/AppCenterLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    goto :goto_0

    .line 609
    :cond_1
    const-string/jumbo v4, "forbidden"

    goto :goto_1

    .line 612
    :cond_2
    const-string/jumbo v2, "allowedNetworkRequests"

    move v3, v1

    invoke-static {v2, v3}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->putBoolean(Ljava/lang/String;Z)V

    .line 613
    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/AppCenter;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    if-eqz v2, :cond_3

    .line 614
    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/AppCenter;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    move v3, v1

    invoke-interface {v2, v3}, Lcom/microsoft/appcenter/channel/Channel;->setNetworkRequests(Z)V

    .line 616
    :cond_3
    const-string/jumbo v2, "AppCenter"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Set network requests "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move v4, v1

    if-eqz v4, :cond_4

    const-string/jumbo v4, "allowed"

    :goto_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/microsoft/appcenter/utils/AppCenterLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    goto :goto_0

    .line 616
    :cond_4
    const-string/jumbo v4, "forbidden"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 604
    :catchall_0
    move-exception v0

    monitor-exit v5

    .end local v0    # "this":Lcom/microsoft/appcenter/AppCenter;
    throw v0
.end method

.method private declared-synchronized setInstanceUserId(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 506
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AppCenter;
    move-object v1, p1

    .local v1, "userId":Ljava/lang/String;
    move-object v4, p0

    monitor-enter v4

    move-object v2, v0

    :try_start_0
    iget-boolean v2, v2, Lcom/microsoft/appcenter/AppCenter;->mConfiguredFromApp:Z

    if-nez v2, :cond_0

    .line 507
    const-string/jumbo v2, "AppCenter"

    const-string/jumbo v3, "AppCenter must be configured from application, libraries cannot use call setUserId."

    invoke-static {v2, v3}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 508
    .line 523
    :goto_0
    monitor-exit v4

    return-void

    .line 510
    :cond_0
    move-object v2, v0

    :try_start_1
    iget-object v2, v2, Lcom/microsoft/appcenter/AppCenter;->mAppSecret:Ljava/lang/String;

    if-nez v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/AppCenter;->mTransmissionTargetToken:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 511
    const-string/jumbo v2, "AppCenter"

    const-string/jumbo v3, "AppCenter must be configured with a secret from application to call setUserId."

    invoke-static {v2, v3}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    goto :goto_0

    .line 514
    :cond_1
    move-object v2, v1

    if-eqz v2, :cond_3

    .line 515
    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/AppCenter;->mAppSecret:Ljava/lang/String;

    if-eqz v2, :cond_2

    move-object v2, v1

    invoke-static {v2}, Lcom/microsoft/appcenter/utils/context/UserIdContext;->checkUserIdValidForAppCenter(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 516
    goto :goto_0

    .line 518
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/AppCenter;->mTransmissionTargetToken:Ljava/lang/String;

    if-eqz v2, :cond_3

    move-object v2, v1

    invoke-static {v2}, Lcom/microsoft/appcenter/utils/context/UserIdContext;->checkUserIdValidForOneCollector(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 519
    goto :goto_0

    .line 522
    :cond_3
    invoke-static {}, Lcom/microsoft/appcenter/utils/context/UserIdContext;->getInstance()Lcom/microsoft/appcenter/utils/context/UserIdContext;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/utils/context/UserIdContext;->setUserId(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 523
    goto :goto_0

    .line 506
    :catchall_0
    move-exception v0

    monitor-exit v4

    .end local v0    # "this":Lcom/microsoft/appcenter/AppCenter;
    throw v0
.end method

.method private declared-synchronized setInstanceWrapperSdk(Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;)V
    .locals 8

    .prologue
    .line 544
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AppCenter;
    move-object v1, p1

    .local v1, "wrapperSdk":Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;
    move-object v6, p0

    monitor-enter v6

    move-object v2, v1

    :try_start_0
    invoke-static {v2}, Lcom/microsoft/appcenter/utils/DeviceInfoHelper;->setWrapperSdk(Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;)V

    .line 547
    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/AppCenter;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 550
    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/AppCenter;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/microsoft/appcenter/AppCenter$1;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/microsoft/appcenter/AppCenter$1;-><init>(Lcom/microsoft/appcenter/AppCenter;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 558
    :cond_0
    monitor-exit v6

    return-void

    .line 544
    :catchall_0
    move-exception v0

    monitor-exit v6

    .end local v0    # "this":Lcom/microsoft/appcenter/AppCenter;
    throw v0
.end method

.method public static setLogLevel(I)V
    .locals 3
    .param p0    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x2L
            to = 0x8L
        .end annotation
    .end param

    .prologue
    .line 290
    move v0, p0

    .local v0, "logLevel":I
    invoke-static {}, Lcom/microsoft/appcenter/AppCenter;->getInstance()Lcom/microsoft/appcenter/AppCenter;

    move-result-object v1

    move v2, v0

    invoke-direct {v1, v2}, Lcom/microsoft/appcenter/AppCenter;->setInstanceLogLevel(I)V

    .line 291
    return-void
.end method

.method public static setLogUrl(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 299
    move-object v0, p0

    .local v0, "logUrl":Ljava/lang/String;
    invoke-static {}, Lcom/microsoft/appcenter/AppCenter;->getInstance()Lcom/microsoft/appcenter/AppCenter;

    move-result-object v1

    move-object v2, v0

    invoke-direct {v1, v2}, Lcom/microsoft/appcenter/AppCenter;->setInstanceLogUrl(Ljava/lang/String;)V

    .line 300
    return-void
.end method

.method public static setLogger(Ljava/util/logging/Logger;)V
    .locals 2

    .prologue
    .line 426
    move-object v0, p0

    .local v0, "logger":Ljava/util/logging/Logger;
    move-object v1, v0

    invoke-static {v1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->setLogger(Ljava/util/logging/Logger;)V

    .line 427
    return-void
.end method

.method public static setMaxStorageSize(J)Lcom/microsoft/appcenter/utils/async/AppCenterFuture;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/microsoft/appcenter/utils/async/AppCenterFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 499
    move-wide v0, p0

    .local v0, "storageSizeInBytes":J
    invoke-static {}, Lcom/microsoft/appcenter/AppCenter;->getInstance()Lcom/microsoft/appcenter/AppCenter;

    move-result-object v2

    move-wide v3, v0

    invoke-direct {v2, v3, v4}, Lcom/microsoft/appcenter/AppCenter;->setInstanceMaxStorageSizeAsync(J)Lcom/microsoft/appcenter/utils/async/AppCenterFuture;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "storageSizeInBytes":J
    return-object v0
.end method

.method public static setNetworkRequestsAllowed(Z)V
    .locals 3

    .prologue
    .line 437
    move v0, p0

    .local v0, "isAllowed":Z
    invoke-static {}, Lcom/microsoft/appcenter/AppCenter;->getInstance()Lcom/microsoft/appcenter/AppCenter;

    move-result-object v1

    move v2, v0

    invoke-direct {v1, v2}, Lcom/microsoft/appcenter/AppCenter;->setInstanceNetworkRequestsAllowed(Z)V

    .line 438
    return-void
.end method

.method public static setUserId(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1239
    move-object v0, p0

    .local v0, "userId":Ljava/lang/String;
    invoke-static {}, Lcom/microsoft/appcenter/AppCenter;->getInstance()Lcom/microsoft/appcenter/AppCenter;

    move-result-object v1

    move-object v2, v0

    invoke-direct {v1, v2}, Lcom/microsoft/appcenter/AppCenter;->setInstanceUserId(Ljava/lang/String;)V

    .line 1240
    return-void
.end method

.method public static setWrapperSdk(Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;)V
    .locals 3

    .prologue
    .line 264
    move-object v0, p0

    .local v0, "wrapperSdk":Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;
    invoke-static {}, Lcom/microsoft/appcenter/AppCenter;->getInstance()Lcom/microsoft/appcenter/AppCenter;

    move-result-object v1

    move-object v2, v0

    invoke-direct {v1, v2}, Lcom/microsoft/appcenter/AppCenter;->setInstanceWrapperSdk(Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;)V

    .line 265
    return-void
.end method

.method public static varargs start(Landroid/app/Application;Ljava/lang/String;[Ljava/lang/Class;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<+",
            "Lcom/microsoft/appcenter/AppCenterService;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .prologue
    .line 388
    move-object v0, p0

    .local v0, "application":Landroid/app/Application;
    move-object v1, p1

    .local v1, "appSecret":Ljava/lang/String;
    move-object v2, p2

    .local v2, "services":[Ljava/lang/Class;, "[Ljava/lang/Class<+Lcom/microsoft/appcenter/AppCenterService;>;"
    invoke-static {}, Lcom/microsoft/appcenter/AppCenter;->getInstance()Lcom/microsoft/appcenter/AppCenter;

    move-result-object v3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v3, v4, v5, v6}, Lcom/microsoft/appcenter/AppCenter;->configureAndStartServices(Landroid/app/Application;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 389
    return-void
.end method

.method public static varargs start(Landroid/app/Application;[Ljava/lang/Class;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "[",
            "Ljava/lang/Class",
            "<+",
            "Lcom/microsoft/appcenter/AppCenterService;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .prologue
    .line 400
    move-object v0, p0

    .local v0, "application":Landroid/app/Application;
    move-object v1, p1

    .local v1, "services":[Ljava/lang/Class;, "[Ljava/lang/Class<+Lcom/microsoft/appcenter/AppCenterService;>;"
    invoke-static {}, Lcom/microsoft/appcenter/AppCenter;->getInstance()Lcom/microsoft/appcenter/AppCenter;

    move-result-object v2

    move-object v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v6, v1

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/microsoft/appcenter/AppCenter;->configureAndStartServices(Landroid/app/Application;Ljava/lang/String;Z[Ljava/lang/Class;)V

    .line 401
    return-void
.end method

.method public static varargs start([Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<+",
            "Lcom/microsoft/appcenter/AppCenterService;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .prologue
    .line 375
    move-object v0, p0

    .local v0, "services":[Ljava/lang/Class;, "[Ljava/lang/Class<+Lcom/microsoft/appcenter/AppCenterService;>;"
    invoke-static {}, Lcom/microsoft/appcenter/AppCenter;->getInstance()Lcom/microsoft/appcenter/AppCenter;

    move-result-object v1

    const/4 v2, 0x1

    move-object v3, v0

    invoke-direct {v1, v2, v3}, Lcom/microsoft/appcenter/AppCenter;->startServices(Z[Ljava/lang/Class;)V

    .line 376
    return-void
.end method

.method public static varargs startFromLibrary(Landroid/content/Context;[Ljava/lang/Class;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Ljava/lang/Class",
            "<+",
            "Lcom/microsoft/appcenter/AppCenterService;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .prologue
    .line 417
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object v1, p1

    .local v1, "services":[Ljava/lang/Class;, "[Ljava/lang/Class<+Lcom/microsoft/appcenter/AppCenterService;>;"
    invoke-static {}, Lcom/microsoft/appcenter/AppCenter;->getInstance()Lcom/microsoft/appcenter/AppCenter;

    move-result-object v2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v2, v3, v4}, Lcom/microsoft/appcenter/AppCenter;->startInstanceFromLibrary(Landroid/content/Context;[Ljava/lang/Class;)V

    .line 418
    return-void
.end method

.method private declared-synchronized startInstanceFromLibrary(Landroid/content/Context;[Ljava/lang/Class;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Ljava/lang/Class",
            "<+",
            "Lcom/microsoft/appcenter/AppCenterService;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1082
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AppCenter;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "services":[Ljava/lang/Class;, "[Ljava/lang/Class<+Lcom/microsoft/appcenter/AppCenterService;>;"
    move-object v9, p0

    monitor-enter v9

    move-object v4, v1

    if-eqz v4, :cond_0

    move-object v4, v1

    :try_start_0
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Landroid/app/Application;

    :goto_0
    move-object v3, v4

    .line 1083
    .local v3, "application":Landroid/app/Application;
    move-object v4, v0

    move-object v5, v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v8, v2

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/microsoft/appcenter/AppCenter;->configureAndStartServices(Landroid/app/Application;Ljava/lang/String;Z[Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1084
    monitor-exit v9

    return-void

    .line 1082
    .end local v3    # "application":Landroid/app/Application;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v9

    .end local v0    # "this":Lcom/microsoft/appcenter/AppCenter;
    throw v0
.end method

.method private startOrUpdateService(Lcom/microsoft/appcenter/AppCenterService;Ljava/util/Collection;Ljava/util/Collection;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/appcenter/AppCenterService;",
            "Ljava/util/Collection",
            "<",
            "Lcom/microsoft/appcenter/AppCenterService;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/microsoft/appcenter/AppCenterService;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 963
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AppCenter;
    move-object v1, p1

    .local v1, "serviceInstance":Lcom/microsoft/appcenter/AppCenterService;
    move-object v2, p2

    .local v2, "startedServices":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/microsoft/appcenter/AppCenterService;>;"
    move-object v3, p3

    .local v3, "updatedServices":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/microsoft/appcenter/AppCenterService;>;"
    move v4, p4

    .local v4, "startFromApp":Z
    move v5, v4

    if-eqz v5, :cond_1

    .line 964
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-direct {v5, v6, v7, v8}, Lcom/microsoft/appcenter/AppCenter;->startOrUpdateServiceFromApp(Lcom/microsoft/appcenter/AppCenterService;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 968
    :cond_0
    :goto_0
    return-void

    .line 965
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lcom/microsoft/appcenter/AppCenter;->mServices:Ljava/util/Set;

    move-object v6, v1

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 966
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lcom/microsoft/appcenter/AppCenter;->startServiceFromLibrary(Lcom/microsoft/appcenter/AppCenterService;Ljava/util/Collection;)V

    goto :goto_0
.end method

.method private startOrUpdateServiceFromApp(Lcom/microsoft/appcenter/AppCenterService;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/appcenter/AppCenterService;",
            "Ljava/util/Collection",
            "<",
            "Lcom/microsoft/appcenter/AppCenterService;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/microsoft/appcenter/AppCenterService;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 971
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AppCenter;
    move-object v1, p1

    .local v1, "serviceInstance":Lcom/microsoft/appcenter/AppCenterService;
    move-object v2, p2

    .local v2, "startedServices":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/microsoft/appcenter/AppCenterService;>;"
    move-object v3, p3

    .local v3, "updatedServices":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/microsoft/appcenter/AppCenterService;>;"
    move-object v5, v1

    invoke-interface {v5}, Lcom/microsoft/appcenter/AppCenterService;->getServiceName()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 972
    .local v4, "serviceName":Ljava/lang/String;
    move-object v5, v0

    iget-object v5, v5, Lcom/microsoft/appcenter/AppCenter;->mServices:Ljava/util/Set;

    move-object v6, v1

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 973
    move-object v5, v0

    iget-object v5, v5, Lcom/microsoft/appcenter/AppCenter;->mServicesStartedFromLibrary:Ljava/util/Set;

    move-object v6, v1

    invoke-interface {v5, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 974
    move-object v5, v3

    move-object v6, v1

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 983
    :goto_0
    return-void

    .line 976
    :cond_0
    const-string/jumbo v5, "AppCenter"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "App Center has already started the service with class name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-interface {v7}, Lcom/microsoft/appcenter/AppCenterService;->getServiceName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 978
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lcom/microsoft/appcenter/AppCenter;->mAppSecret:Ljava/lang/String;

    if-nez v5, :cond_2

    move-object v5, v1

    invoke-interface {v5}, Lcom/microsoft/appcenter/AppCenterService;->isAppSecretRequired()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 979
    const-string/jumbo v5, "AppCenter"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "App Center was started without app secret, but the service requires it; not starting service "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 981
    :cond_2
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lcom/microsoft/appcenter/AppCenter;->startService(Lcom/microsoft/appcenter/AppCenterService;Ljava/util/Collection;)Z

    move-result v5

    goto :goto_0
.end method

.method private startService(Lcom/microsoft/appcenter/AppCenterService;Ljava/util/Collection;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/appcenter/AppCenterService;",
            "Ljava/util/Collection",
            "<",
            "Lcom/microsoft/appcenter/AppCenterService;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1000
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AppCenter;
    move-object v1, p1

    .local v1, "serviceInstance":Lcom/microsoft/appcenter/AppCenterService;
    move-object v2, p2

    .local v2, "startedServices":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/microsoft/appcenter/AppCenterService;>;"
    move-object v4, v1

    invoke-interface {v4}, Lcom/microsoft/appcenter/AppCenterService;->getServiceName()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 1001
    .local v3, "serviceName":Ljava/lang/String;
    move-object v4, v3

    invoke-static {v4}, Lcom/microsoft/appcenter/ServiceInstrumentationUtils;->isServiceDisabledByInstrumentation(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1002
    const-string/jumbo v4, "AppCenter"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Instrumentation variable to disable service has been set; not starting service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    const/4 v4, 0x0

    move v0, v4

    .line 1010
    .end local v0    # "this":Lcom/microsoft/appcenter/AppCenter;
    :goto_0
    return v0

    .line 1005
    .restart local v0    # "this":Lcom/microsoft/appcenter/AppCenter;
    :cond_0
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/microsoft/appcenter/AppCenter;->mAppCenterHandler:Lcom/microsoft/appcenter/AppCenterHandler;

    invoke-interface {v4, v5}, Lcom/microsoft/appcenter/AppCenterService;->onStarting(Lcom/microsoft/appcenter/AppCenterHandler;)V

    .line 1006
    move-object v4, v0

    iget-object v4, v4, Lcom/microsoft/appcenter/AppCenter;->mApplicationLifecycleListener:Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener;

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener;->registerApplicationLifecycleCallbacks(Lcom/microsoft/appcenter/utils/ApplicationLifecycleListener$ApplicationLifecycleCallbacks;)V

    .line 1007
    move-object v4, v0

    iget-object v4, v4, Lcom/microsoft/appcenter/AppCenter;->mApplication:Landroid/app/Application;

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 1008
    move-object v4, v0

    iget-object v4, v4, Lcom/microsoft/appcenter/AppCenter;->mServices:Ljava/util/Set;

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 1009
    move-object v4, v2

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 1010
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0
.end method

.method private startServiceFromLibrary(Lcom/microsoft/appcenter/AppCenterService;Ljava/util/Collection;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/appcenter/AppCenterService;",
            "Ljava/util/Collection",
            "<",
            "Lcom/microsoft/appcenter/AppCenterService;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 991
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AppCenter;
    move-object v1, p1

    .local v1, "serviceInstance":Lcom/microsoft/appcenter/AppCenterService;
    move-object v2, p2

    .local v2, "startedServices":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/microsoft/appcenter/AppCenterService;>;"
    move-object v4, v1

    invoke-interface {v4}, Lcom/microsoft/appcenter/AppCenterService;->getServiceName()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 992
    .local v3, "serviceName":Ljava/lang/String;
    move-object v4, v1

    invoke-interface {v4}, Lcom/microsoft/appcenter/AppCenterService;->isAppSecretRequired()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 993
    const-string/jumbo v4, "AppCenter"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "This service cannot be started from a library: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    :cond_0
    :goto_0
    return-void

    .line 994
    :cond_1
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lcom/microsoft/appcenter/AppCenter;->startService(Lcom/microsoft/appcenter/AppCenterService;Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 995
    move-object v4, v0

    iget-object v4, v4, Lcom/microsoft/appcenter/AppCenter;->mServicesStartedFromLibrary:Ljava/util/Set;

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_0
.end method

.method private final varargs declared-synchronized startServices(Z[Ljava/lang/Class;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z[",
            "Ljava/lang/Class",
            "<+",
            "Lcom/microsoft/appcenter/AppCenterService;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .prologue
    .line 923
    move-object/from16 v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AppCenter;
    move/from16 v1, p1

    .local v1, "startFromApp":Z
    move-object/from16 v2, p2

    .local v2, "services":[Ljava/lang/Class;, "[Ljava/lang/Class<+Lcom/microsoft/appcenter/AppCenterService;>;"
    move-object/from16 v17, p0

    monitor-enter v17

    move-object v10, v2

    if-nez v10, :cond_0

    .line 924
    :try_start_0
    const-string/jumbo v10, "AppCenter"

    const-string/jumbo v11, "Cannot start services, services array is null. Failed to start services."

    invoke-static {v10, v11}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 925
    .line 960
    :goto_0
    monitor-exit v17

    return-void

    .line 927
    :cond_0
    move-object v10, v0

    :try_start_1
    invoke-direct {v10}, Lcom/microsoft/appcenter/AppCenter;->isInstanceConfigured()Z

    move-result v10

    if-nez v10, :cond_2

    .line 928
    new-instance v10, Ljava/lang/StringBuilder;

    move-object/from16 v18, v10

    move-object/from16 v10, v18

    move-object/from16 v11, v18

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v10

    .line 929
    .local v3, "serviceNames":Ljava/lang/StringBuilder;
    move-object v10, v2

    move-object v4, v10

    move-object v10, v4

    array-length v10, v10

    move v5, v10

    const/4 v10, 0x0

    move v6, v10

    :goto_1
    move v10, v6

    move v11, v5

    if-ge v10, v11, :cond_1

    move-object v10, v4

    move v11, v6

    aget-object v10, v10, v11

    move-object v7, v10

    .line 930
    .local v7, "service":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/microsoft/appcenter/AppCenterService;>;"
    move-object v10, v3

    const-string/jumbo v11, "\t"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v7

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 929
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 932
    .end local v7    # "service":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/microsoft/appcenter/AppCenterService;>;"
    :cond_1
    const-string/jumbo v10, "AppCenter"

    new-instance v11, Ljava/lang/StringBuilder;

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Cannot start services, App Center has not been configured. Failed to start the following services:\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v3

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    goto :goto_0

    .line 937
    .end local v3    # "serviceNames":Ljava/lang/StringBuilder;
    :cond_2
    new-instance v10, Ljava/util/ArrayList;

    move-object/from16 v18, v10

    move-object/from16 v10, v18

    move-object/from16 v11, v18

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v10

    .line 938
    .local v3, "startedServices":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/microsoft/appcenter/AppCenterService;>;"
    new-instance v10, Ljava/util/ArrayList;

    move-object/from16 v18, v10

    move-object/from16 v10, v18

    move-object/from16 v11, v18

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v10

    .line 939
    .local v4, "updatedServices":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/microsoft/appcenter/AppCenterService;>;"
    move-object v10, v2

    move-object v5, v10

    move-object v10, v5

    array-length v10, v10

    move v6, v10

    const/4 v10, 0x0

    move v7, v10

    :goto_2
    move v10, v7

    move v11, v6

    if-ge v10, v11, :cond_4

    move-object v10, v5

    move v11, v7

    aget-object v10, v10, v11

    move-object v8, v10

    .line 940
    .local v8, "service":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/microsoft/appcenter/AppCenterService;>;"
    move-object v10, v8

    if-nez v10, :cond_3

    .line 941
    const-string/jumbo v10, "AppCenter"

    const-string/jumbo v11, "Skipping null service, please check your varargs/array does not contain any null reference."

    invoke-static {v10, v11}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 939
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 944
    :cond_3
    move-object v10, v8

    :try_start_2
    const-string/jumbo v11, "getInstance"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Class;

    invoke-virtual {v10, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {v10, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/microsoft/appcenter/AppCenterService;

    move-object v9, v10

    .line 945
    .local v9, "serviceInstance":Lcom/microsoft/appcenter/AppCenterService;
    move-object v10, v0

    move-object v11, v9

    move-object v12, v3

    move-object v13, v4

    move v14, v1

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/microsoft/appcenter/AppCenter;->startOrUpdateService(Lcom/microsoft/appcenter/AppCenterService;Ljava/util/Collection;Ljava/util/Collection;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 948
    goto :goto_3

    .line 946
    .end local v9    # "serviceInstance":Lcom/microsoft/appcenter/AppCenterService;
    :catch_0
    move-exception v10

    move-object v9, v10

    .line 947
    .local v9, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v10, "AppCenter"

    new-instance v11, Ljava/lang/StringBuilder;

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Failed to get service instance \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v8

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\', skipping it."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v12, v9

    invoke-static {v10, v11, v12}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 923
    .end local v3    # "startedServices":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/microsoft/appcenter/AppCenterService;>;"
    .end local v4    # "updatedServices":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/microsoft/appcenter/AppCenterService;>;"
    .end local v8    # "service":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/microsoft/appcenter/AppCenterService;>;"
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit v17

    .end local v0    # "this":Lcom/microsoft/appcenter/AppCenter;
    throw v0

    .line 953
    .restart local v0    # "this":Lcom/microsoft/appcenter/AppCenter;
    .restart local v3    # "startedServices":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/microsoft/appcenter/AppCenterService;>;"
    .restart local v4    # "updatedServices":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/microsoft/appcenter/AppCenterService;>;"
    :cond_4
    move-object v10, v0

    :try_start_4
    iget-object v10, v10, Lcom/microsoft/appcenter/AppCenter;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/microsoft/appcenter/AppCenter$7;

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    move-object v13, v0

    move-object v14, v4

    move-object v15, v3

    move/from16 v16, v1

    invoke-direct/range {v12 .. v16}, Lcom/microsoft/appcenter/AppCenter$7;-><init>(Lcom/microsoft/appcenter/AppCenter;Ljava/util/Collection;Ljava/util/Collection;Z)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v10

    .line 960
    goto/16 :goto_0
.end method

.method static declared-synchronized unsetInstance()V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 253
    const-class v1, Lcom/microsoft/appcenter/AppCenter;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/microsoft/appcenter/AppCenter;->sInstance:Lcom/microsoft/appcenter/AppCenter;

    .line 254
    invoke-static {}, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->unsetInstance()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    monitor-exit v1

    return-void

    .line 253
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method getAppCenterHandler()Lcom/microsoft/appcenter/AppCenterHandler;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 1259
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AppCenter;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/AppCenter;->mAppCenterHandler:Lcom/microsoft/appcenter/AppCenterHandler;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/AppCenter;
    return-object v0
.end method

.method getApplication()Landroid/app/Application;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 1249
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AppCenter;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/AppCenter;->mApplication:Landroid/app/Application;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/AppCenter;
    return-object v0
.end method

.method getServices()Ljava/util/Set;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/microsoft/appcenter/AppCenterService;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1244
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AppCenter;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/AppCenter;->mServices:Ljava/util/Set;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/AppCenter;
    return-object v0
.end method

.method getUncaughtExceptionHandler()Lcom/microsoft/appcenter/UncaughtExceptionHandler;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 1264
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AppCenter;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/AppCenter;->mUncaughtExceptionHandler:Lcom/microsoft/appcenter/UncaughtExceptionHandler;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/AppCenter;
    return-object v0
.end method

.method isInstanceEnabled()Z
    .locals 3

    .prologue
    .line 1123
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AppCenter;
    const-string/jumbo v1, "enabled"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/AppCenter;
    return v0
.end method

.method resetApplication()V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 1254
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AppCenter;
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/microsoft/appcenter/AppCenter;->mApplication:Landroid/app/Application;

    .line 1255
    return-void
.end method

.method public setChannel(Lcom/microsoft/appcenter/channel/Channel;)V
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 1269
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/AppCenter;
    move-object v1, p1

    .local v1, "channel":Lcom/microsoft/appcenter/channel/Channel;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/AppCenter;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    .line 1270
    return-void
.end method
