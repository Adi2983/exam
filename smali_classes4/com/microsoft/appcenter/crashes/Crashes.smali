.class public Lcom/microsoft/appcenter/crashes/Crashes;
.super Lcom/microsoft/appcenter/AbstractAppCenterService;
.source "Crashes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/appcenter/crashes/Crashes$ErrorLogReport;,
        Lcom/microsoft/appcenter/crashes/Crashes$DefaultCrashesListener;,
        Lcom/microsoft/appcenter/crashes/Crashes$CallbackProcessor;,
        Lcom/microsoft/appcenter/crashes/Crashes$ExceptionModelBuilder;
    }
.end annotation


# static fields
.field public static final ALWAYS_SEND:I = 0x2

.field private static final DEFAULT_ERROR_REPORTING_LISTENER:Lcom/microsoft/appcenter/crashes/CrashesListener;

.field public static final DONT_SEND:I = 0x1

.field static final ERROR_GROUP:Ljava/lang/String; = "groupErrors"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final LOG_TAG:Ljava/lang/String; = "AppCenterCrashes"

.field private static final MAX_ATTACHMENT_SIZE:I = 0x700000

.field static final MINIDUMP_FILE:Ljava/lang/String; = "minidump"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final PREF_KEY_ALWAYS_SEND:Ljava/lang/String; = "com.microsoft.appcenter.crashes.always.send"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final PREF_KEY_MEMORY_RUNNING_LEVEL:Ljava/lang/String; = "com.microsoft.appcenter.crashes.memory"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final SEND:I = 0x0

.field private static final SERVICE_NAME:Ljava/lang/String; = "Crashes"

.field private static sInstance:Lcom/microsoft/appcenter/crashes/Crashes;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private mAutomaticProcessing:Z

.field private mContext:Landroid/content/Context;

.field private mCrashesListener:Lcom/microsoft/appcenter/crashes/CrashesListener;

.field private mDevice:Lcom/microsoft/appcenter/ingestion/models/Device;

.field private final mErrorReportCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Lcom/microsoft/appcenter/crashes/Crashes$ErrorLogReport;",
            ">;"
        }
    .end annotation
.end field

.field private final mFactories:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/microsoft/appcenter/ingestion/models/json/LogFactory;",
            ">;"
        }
    .end annotation
.end field

.field private mHasReceivedMemoryWarningInLastSession:Z

.field private mInitializeTimestamp:J

.field private mLastSessionErrorReport:Lcom/microsoft/appcenter/crashes/model/ErrorReport;

.field private mLogSerializer:Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;

.field private mMemoryWarningListener:Landroid/content/ComponentCallbacks2;

.field private mSavedUncaughtException:Z

.field private mUncaughtExceptionHandler:Lcom/microsoft/appcenter/crashes/UncaughtExceptionHandler;

.field private final mUnprocessedErrorReports:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Lcom/microsoft/appcenter/crashes/Crashes$ErrorLogReport;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 134
    new-instance v0, Lcom/microsoft/appcenter/crashes/Crashes$DefaultCrashesListener;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/microsoft/appcenter/crashes/Crashes$DefaultCrashesListener;-><init>(Lcom/microsoft/appcenter/crashes/Crashes$1;)V

    sput-object v0, Lcom/microsoft/appcenter/crashes/Crashes;->DEFAULT_ERROR_REPORTING_LISTENER:Lcom/microsoft/appcenter/crashes/CrashesListener;

    .line 140
    const/4 v0, 0x0

    sput-object v0, Lcom/microsoft/appcenter/crashes/Crashes;->sInstance:Lcom/microsoft/appcenter/crashes/Crashes;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    .line 215
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/Crashes;
    move-object v1, v0

    invoke-direct {v1}, Lcom/microsoft/appcenter/AbstractAppCenterService;-><init>()V

    .line 205
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/microsoft/appcenter/crashes/Crashes;->mAutomaticProcessing:Z

    .line 216
    move-object v1, v0

    new-instance v2, Ljava/util/HashMap;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Lcom/microsoft/appcenter/crashes/Crashes;->mFactories:Ljava/util/Map;

    .line 217
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/crashes/Crashes;->mFactories:Ljava/util/Map;

    const-string/jumbo v2, "managedError"

    invoke-static {}, Lcom/microsoft/appcenter/crashes/ingestion/models/json/ManagedErrorLogFactory;->getInstance()Lcom/microsoft/appcenter/crashes/ingestion/models/json/ManagedErrorLogFactory;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 218
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/crashes/Crashes;->mFactories:Ljava/util/Map;

    const-string/jumbo v2, "handledError"

    invoke-static {}, Lcom/microsoft/appcenter/crashes/ingestion/models/json/HandledErrorLogFactory;->getInstance()Lcom/microsoft/appcenter/crashes/ingestion/models/json/HandledErrorLogFactory;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 219
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/crashes/Crashes;->mFactories:Ljava/util/Map;

    const-string/jumbo v2, "errorAttachment"

    invoke-static {}, Lcom/microsoft/appcenter/crashes/ingestion/models/json/ErrorAttachmentLogFactory;->getInstance()Lcom/microsoft/appcenter/crashes/ingestion/models/json/ErrorAttachmentLogFactory;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 220
    move-object v1, v0

    new-instance v2, Lcom/microsoft/appcenter/ingestion/models/json/DefaultLogSerializer;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/microsoft/appcenter/ingestion/models/json/DefaultLogSerializer;-><init>()V

    iput-object v2, v1, Lcom/microsoft/appcenter/crashes/Crashes;->mLogSerializer:Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;

    .line 221
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/crashes/Crashes;->mLogSerializer:Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;

    const-string/jumbo v2, "managedError"

    invoke-static {}, Lcom/microsoft/appcenter/crashes/ingestion/models/json/ManagedErrorLogFactory;->getInstance()Lcom/microsoft/appcenter/crashes/ingestion/models/json/ManagedErrorLogFactory;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;->addLogFactory(Ljava/lang/String;Lcom/microsoft/appcenter/ingestion/models/json/LogFactory;)V

    .line 222
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/crashes/Crashes;->mLogSerializer:Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;

    const-string/jumbo v2, "errorAttachment"

    invoke-static {}, Lcom/microsoft/appcenter/crashes/ingestion/models/json/ErrorAttachmentLogFactory;->getInstance()Lcom/microsoft/appcenter/crashes/ingestion/models/json/ErrorAttachmentLogFactory;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;->addLogFactory(Ljava/lang/String;Lcom/microsoft/appcenter/ingestion/models/json/LogFactory;)V

    .line 223
    move-object v1, v0

    sget-object v2, Lcom/microsoft/appcenter/crashes/Crashes;->DEFAULT_ERROR_REPORTING_LISTENER:Lcom/microsoft/appcenter/crashes/CrashesListener;

    iput-object v2, v1, Lcom/microsoft/appcenter/crashes/Crashes;->mCrashesListener:Lcom/microsoft/appcenter/crashes/CrashesListener;

    .line 224
    move-object v1, v0

    new-instance v2, Ljava/util/LinkedHashMap;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, v1, Lcom/microsoft/appcenter/crashes/Crashes;->mUnprocessedErrorReports:Ljava/util/Map;

    .line 225
    move-object v1, v0

    new-instance v2, Ljava/util/LinkedHashMap;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, v1, Lcom/microsoft/appcenter/crashes/Crashes;->mErrorReportCache:Ljava/util/Map;

    .line 226
    return-void
.end method

.method static synthetic access$100(Lcom/microsoft/appcenter/crashes/Crashes;)Landroid/content/Context;
    .locals 2

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "x0":Lcom/microsoft/appcenter/crashes/Crashes;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/crashes/Crashes;->mContext:Landroid/content/Context;

    move-object v0, v1

    .end local v0    # "x0":Lcom/microsoft/appcenter/crashes/Crashes;
    return-object v0
.end method

.method static synthetic access$1000(Lcom/microsoft/appcenter/crashes/Crashes;I)V
    .locals 4

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "x0":Lcom/microsoft/appcenter/crashes/Crashes;
    move v1, p1

    .local v1, "x1":I
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lcom/microsoft/appcenter/crashes/Crashes;->handleUserConfirmation(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/microsoft/appcenter/crashes/Crashes;)Z
    .locals 2

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "x0":Lcom/microsoft/appcenter/crashes/Crashes;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/microsoft/appcenter/crashes/Crashes;->mAutomaticProcessing:Z

    move v0, v1

    .end local v0    # "x0":Lcom/microsoft/appcenter/crashes/Crashes;
    return v0
.end method

.method static synthetic access$1400(Lcom/microsoft/appcenter/crashes/Crashes;Ljava/util/UUID;)V
    .locals 4

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "x0":Lcom/microsoft/appcenter/crashes/Crashes;
    move-object v1, p1

    .local v1, "x1":Ljava/util/UUID;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/microsoft/appcenter/crashes/Crashes;->removeAllStoredErrorLogFiles(Ljava/util/UUID;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/microsoft/appcenter/crashes/Crashes;)Lcom/microsoft/appcenter/channel/Channel;
    .locals 2

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "x0":Lcom/microsoft/appcenter/crashes/Crashes;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/crashes/Crashes;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    move-object v0, v1

    .end local v0    # "x0":Lcom/microsoft/appcenter/crashes/Crashes;
    return-object v0
.end method

.method static synthetic access$1700(Lcom/microsoft/appcenter/crashes/Crashes;)Z
    .locals 2

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "x0":Lcom/microsoft/appcenter/crashes/Crashes;
    move-object v1, v0

    invoke-direct {v1}, Lcom/microsoft/appcenter/crashes/Crashes;->sendCrashReportsOrAwaitUserConfirmation()Z

    move-result v1

    move v0, v1

    .end local v0    # "x0":Lcom/microsoft/appcenter/crashes/Crashes;
    return v0
.end method

.method static synthetic access$200(Lcom/microsoft/appcenter/crashes/Crashes;)Lcom/microsoft/appcenter/crashes/model/ErrorReport;
    .locals 2

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "x0":Lcom/microsoft/appcenter/crashes/Crashes;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/crashes/Crashes;->mLastSessionErrorReport:Lcom/microsoft/appcenter/crashes/model/ErrorReport;

    move-object v0, v1

    .end local v0    # "x0":Lcom/microsoft/appcenter/crashes/Crashes;
    return-object v0
.end method

.method static synthetic access$300(Lcom/microsoft/appcenter/crashes/Crashes;)Z
    .locals 2

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "x0":Lcom/microsoft/appcenter/crashes/Crashes;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/microsoft/appcenter/crashes/Crashes;->mHasReceivedMemoryWarningInLastSession:Z

    move v0, v1

    .end local v0    # "x0":Lcom/microsoft/appcenter/crashes/Crashes;
    return v0
.end method

.method static synthetic access$400(I)V
    .locals 2

    .prologue
    .line 75
    move v0, p0

    .local v0, "x0":I
    move v1, v0

    invoke-static {v1}, Lcom/microsoft/appcenter/crashes/Crashes;->saveMemoryRunningLevel(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/microsoft/appcenter/crashes/Crashes;Ljava/lang/Runnable;)V
    .locals 4

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "x0":Lcom/microsoft/appcenter/crashes/Crashes;
    move-object v1, p1

    .local v1, "x1":Ljava/lang/Runnable;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/crashes/Crashes;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$600(Lcom/microsoft/appcenter/crashes/Crashes;)Lcom/microsoft/appcenter/crashes/CrashesListener;
    .locals 2

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "x0":Lcom/microsoft/appcenter/crashes/Crashes;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/crashes/Crashes;->mCrashesListener:Lcom/microsoft/appcenter/crashes/CrashesListener;

    move-object v0, v1

    .end local v0    # "x0":Lcom/microsoft/appcenter/crashes/Crashes;
    return-object v0
.end method

.method static synthetic access$700(Lcom/microsoft/appcenter/crashes/Crashes;)Lcom/microsoft/appcenter/channel/Channel;
    .locals 2

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "x0":Lcom/microsoft/appcenter/crashes/Crashes;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/crashes/Crashes;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    move-object v0, v1

    .end local v0    # "x0":Lcom/microsoft/appcenter/crashes/Crashes;
    return-object v0
.end method

.method static synthetic access$800(Lcom/microsoft/appcenter/crashes/Crashes;Ljava/util/UUID;Ljava/lang/Iterable;)V
    .locals 6

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "x0":Lcom/microsoft/appcenter/crashes/Crashes;
    move-object v1, p1

    .local v1, "x1":Ljava/util/UUID;
    move-object v2, p2

    .local v2, "x2":Ljava/lang/Iterable;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/microsoft/appcenter/crashes/Crashes;->sendErrorAttachment(Ljava/util/UUID;Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$900(Lcom/microsoft/appcenter/crashes/Crashes;)Ljava/util/Map;
    .locals 2

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "x0":Lcom/microsoft/appcenter/crashes/Crashes;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/crashes/Crashes;->mUnprocessedErrorReports:Ljava/util/Map;

    move-object v0, v1

    .end local v0    # "x0":Lcom/microsoft/appcenter/crashes/Crashes;
    return-object v0
.end method

.method public static generateTestCrash()V
    .locals 3

    .prologue
    .line 293
    sget-boolean v0, Lcom/microsoft/appcenter/Constants;->APPLICATION_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    .line 294
    new-instance v0, Lcom/microsoft/appcenter/crashes/model/TestCrashException;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/microsoft/appcenter/crashes/model/TestCrashException;-><init>()V

    throw v0

    .line 296
    :cond_0
    const-string/jumbo v0, "AppCenterCrashes"

    const-string/jumbo v1, "The application is not debuggable so SDK won\'t generate test crash"

    invoke-static {v0, v1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/microsoft/appcenter/crashes/Crashes;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 230
    const-class v2, Lcom/microsoft/appcenter/crashes/Crashes;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/microsoft/appcenter/crashes/Crashes;->sInstance:Lcom/microsoft/appcenter/crashes/Crashes;

    if-nez v0, :cond_0

    .line 231
    new-instance v0, Lcom/microsoft/appcenter/crashes/Crashes;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-direct {v1}, Lcom/microsoft/appcenter/crashes/Crashes;-><init>()V

    sput-object v0, Lcom/microsoft/appcenter/crashes/Crashes;->sInstance:Lcom/microsoft/appcenter/crashes/Crashes;

    .line 233
    :cond_0
    sget-object v0, Lcom/microsoft/appcenter/crashes/Crashes;->sInstance:Lcom/microsoft/appcenter/crashes/Crashes;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v0

    .line 230
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private declared-synchronized getInstanceLastSessionCrashReport()Lcom/microsoft/appcenter/utils/async/AppCenterFuture;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/microsoft/appcenter/utils/async/AppCenterFuture",
            "<",
            "Lcom/microsoft/appcenter/crashes/model/ErrorReport;",
            ">;"
        }
    .end annotation

    .prologue
    .line 410
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/Crashes;
    move-object v7, p0

    monitor-enter v7

    :try_start_0
    new-instance v2, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    invoke-direct {v3}, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;-><init>()V

    move-object v1, v2

    .line 411
    .local v1, "future":Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;, "Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture<Lcom/microsoft/appcenter/crashes/model/ErrorReport;>;"
    move-object v2, v0

    new-instance v3, Lcom/microsoft/appcenter/crashes/Crashes$4;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/microsoft/appcenter/crashes/Crashes$4;-><init>(Lcom/microsoft/appcenter/crashes/Crashes;Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;)V

    move-object v4, v1

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/microsoft/appcenter/crashes/Crashes;->postAsyncGetter(Ljava/lang/Runnable;Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 418
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/Crashes;
    monitor-exit v7

    return-object v0

    .line 410
    .end local v1    # "future":Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;, "Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture<Lcom/microsoft/appcenter/crashes/model/ErrorReport;>;"
    .restart local v0    # "this":Lcom/microsoft/appcenter/crashes/Crashes;
    :catchall_0
    move-exception v0

    monitor-exit v7

    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/Crashes;
    throw v0
.end method

.method public static getLastSessionCrashReport()Lcom/microsoft/appcenter/utils/async/AppCenterFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/microsoft/appcenter/utils/async/AppCenterFuture",
            "<",
            "Lcom/microsoft/appcenter/crashes/model/ErrorReport;",
            ">;"
        }
    .end annotation

    .prologue
    .line 348
    invoke-static {}, Lcom/microsoft/appcenter/crashes/Crashes;->getInstance()Lcom/microsoft/appcenter/crashes/Crashes;

    move-result-object v0

    invoke-direct {v0}, Lcom/microsoft/appcenter/crashes/Crashes;->getInstanceLastSessionCrashReport()Lcom/microsoft/appcenter/utils/async/AppCenterFuture;

    move-result-object v0

    return-object v0
.end method

.method public static getMinidumpDirectory()Lcom/microsoft/appcenter/utils/async/AppCenterFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/microsoft/appcenter/utils/async/AppCenterFuture",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 316
    invoke-static {}, Lcom/microsoft/appcenter/crashes/Crashes;->getInstance()Lcom/microsoft/appcenter/crashes/Crashes;

    move-result-object v0

    invoke-direct {v0}, Lcom/microsoft/appcenter/crashes/Crashes;->getNewMinidumpDirectoryAsync()Lcom/microsoft/appcenter/utils/async/AppCenterFuture;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized getNewMinidumpDirectoryAsync()Lcom/microsoft/appcenter/utils/async/AppCenterFuture;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/microsoft/appcenter/utils/async/AppCenterFuture",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 365
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/Crashes;
    move-object v7, p0

    monitor-enter v7

    :try_start_0
    new-instance v2, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    invoke-direct {v3}, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;-><init>()V

    move-object v1, v2

    .line 366
    .local v1, "future":Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;, "Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture<Ljava/lang/String;>;"
    move-object v2, v0

    new-instance v3, Lcom/microsoft/appcenter/crashes/Crashes$1;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/microsoft/appcenter/crashes/Crashes$1;-><init>(Lcom/microsoft/appcenter/crashes/Crashes;Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;)V

    move-object v4, v1

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/microsoft/appcenter/crashes/Crashes;->postAsyncGetter(Ljava/lang/Runnable;Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/Crashes;
    monitor-exit v7

    return-object v0

    .line 365
    .end local v1    # "future":Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;, "Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture<Ljava/lang/String;>;"
    .restart local v0    # "this":Lcom/microsoft/appcenter/crashes/Crashes;
    :catchall_0
    move-exception v0

    monitor-exit v7

    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/Crashes;
    throw v0
.end method

.method private declared-synchronized handleUserConfirmation(I)V
    .locals 9
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 977
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/Crashes;
    move v1, p1

    .local v1, "userConfirmation":I
    move-object v7, p0

    monitor-enter v7

    move-object v2, v0

    :try_start_0
    new-instance v3, Lcom/microsoft/appcenter/crashes/Crashes$12;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move v6, v1

    invoke-direct {v4, v5, v6}, Lcom/microsoft/appcenter/crashes/Crashes$12;-><init>(Lcom/microsoft/appcenter/crashes/Crashes;I)V

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/crashes/Crashes;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1065
    monitor-exit v7

    return-void

    .line 977
    :catchall_0
    move-exception v0

    monitor-exit v7

    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/Crashes;
    throw v0
.end method

.method public static hasCrashedInLastSession()Lcom/microsoft/appcenter/utils/async/AppCenterFuture;
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
    .line 338
    invoke-static {}, Lcom/microsoft/appcenter/crashes/Crashes;->getInstance()Lcom/microsoft/appcenter/crashes/Crashes;

    move-result-object v0

    invoke-direct {v0}, Lcom/microsoft/appcenter/crashes/Crashes;->hasInstanceCrashedInLastSession()Lcom/microsoft/appcenter/utils/async/AppCenterFuture;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized hasInstanceCrashedInLastSession()Lcom/microsoft/appcenter/utils/async/AppCenterFuture;
    .locals 9
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
    .line 380
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/Crashes;
    move-object v7, p0

    monitor-enter v7

    :try_start_0
    new-instance v2, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    invoke-direct {v3}, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;-><init>()V

    move-object v1, v2

    .line 381
    .local v1, "future":Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;, "Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture<Ljava/lang/Boolean;>;"
    move-object v2, v0

    new-instance v3, Lcom/microsoft/appcenter/crashes/Crashes$2;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/microsoft/appcenter/crashes/Crashes$2;-><init>(Lcom/microsoft/appcenter/crashes/Crashes;Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;)V

    move-object v4, v1

    const/4 v5, 0x0

    .line 387
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 381
    invoke-virtual {v2, v3, v4, v5}, Lcom/microsoft/appcenter/crashes/Crashes;->postAsyncGetter(Ljava/lang/Runnable;Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/Crashes;
    monitor-exit v7

    return-object v0

    .line 380
    .end local v1    # "future":Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;, "Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture<Ljava/lang/Boolean;>;"
    .restart local v0    # "this":Lcom/microsoft/appcenter/crashes/Crashes;
    :catchall_0
    move-exception v0

    monitor-exit v7

    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/Crashes;
    throw v0
.end method

.method private declared-synchronized hasInstanceReceivedMemoryWarningInLastSession()Lcom/microsoft/appcenter/utils/async/AppCenterFuture;
    .locals 9
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
    .line 395
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/Crashes;
    move-object v7, p0

    monitor-enter v7

    :try_start_0
    new-instance v2, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    invoke-direct {v3}, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;-><init>()V

    move-object v1, v2

    .line 396
    .local v1, "future":Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;, "Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture<Ljava/lang/Boolean;>;"
    move-object v2, v0

    new-instance v3, Lcom/microsoft/appcenter/crashes/Crashes$3;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/microsoft/appcenter/crashes/Crashes$3;-><init>(Lcom/microsoft/appcenter/crashes/Crashes;Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;)V

    move-object v4, v1

    const/4 v5, 0x0

    .line 402
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 396
    invoke-virtual {v2, v3, v4, v5}, Lcom/microsoft/appcenter/crashes/Crashes;->postAsyncGetter(Ljava/lang/Runnable;Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 403
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/Crashes;
    monitor-exit v7

    return-object v0

    .line 395
    .end local v1    # "future":Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;, "Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture<Ljava/lang/Boolean;>;"
    .restart local v0    # "this":Lcom/microsoft/appcenter/crashes/Crashes;
    :catchall_0
    move-exception v0

    monitor-exit v7

    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/Crashes;
    throw v0
.end method

.method public static hasReceivedMemoryWarningInLastSession()Lcom/microsoft/appcenter/utils/async/AppCenterFuture;
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
    .line 358
    invoke-static {}, Lcom/microsoft/appcenter/crashes/Crashes;->getInstance()Lcom/microsoft/appcenter/crashes/Crashes;

    move-result-object v0

    invoke-direct {v0}, Lcom/microsoft/appcenter/crashes/Crashes;->hasInstanceReceivedMemoryWarningInLastSession()Lcom/microsoft/appcenter/utils/async/AppCenterFuture;

    move-result-object v0

    return-object v0
.end method

.method private initialize()V
    .locals 7

    .prologue
    .line 663
    move-object v1, p0

    .local v1, "this":Lcom/microsoft/appcenter/crashes/Crashes;
    move-object v3, v1

    invoke-virtual {v3}, Lcom/microsoft/appcenter/crashes/Crashes;->isInstanceEnabled()Z

    move-result v3

    move v2, v3

    .line 664
    .local v2, "enabled":Z
    move-object v3, v1

    move v4, v2

    if-eqz v4, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    :goto_0
    iput-wide v4, v3, Lcom/microsoft/appcenter/crashes/Crashes;->mInitializeTimestamp:J

    .line 665
    move v3, v2

    if-nez v3, :cond_2

    .line 666
    move-object v3, v1

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/Crashes;->mUncaughtExceptionHandler:Lcom/microsoft/appcenter/crashes/UncaughtExceptionHandler;

    if-eqz v3, :cond_0

    .line 667
    move-object v3, v1

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/Crashes;->mUncaughtExceptionHandler:Lcom/microsoft/appcenter/crashes/UncaughtExceptionHandler;

    invoke-virtual {v3}, Lcom/microsoft/appcenter/crashes/UncaughtExceptionHandler;->unregister()V

    .line 668
    move-object v3, v1

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/microsoft/appcenter/crashes/Crashes;->mUncaughtExceptionHandler:Lcom/microsoft/appcenter/crashes/UncaughtExceptionHandler;

    .line 679
    :cond_0
    :goto_1
    return-void

    .line 664
    :cond_1
    const-wide/16 v4, -0x1

    goto :goto_0

    .line 673
    :cond_2
    move-object v3, v1

    new-instance v4, Lcom/microsoft/appcenter/crashes/UncaughtExceptionHandler;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Lcom/microsoft/appcenter/crashes/UncaughtExceptionHandler;-><init>()V

    iput-object v4, v3, Lcom/microsoft/appcenter/crashes/Crashes;->mUncaughtExceptionHandler:Lcom/microsoft/appcenter/crashes/UncaughtExceptionHandler;

    .line 674
    move-object v3, v1

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/Crashes;->mUncaughtExceptionHandler:Lcom/microsoft/appcenter/crashes/UncaughtExceptionHandler;

    invoke-virtual {v3}, Lcom/microsoft/appcenter/crashes/UncaughtExceptionHandler;->register()V

    .line 677
    move-object v3, v1

    invoke-direct {v3}, Lcom/microsoft/appcenter/crashes/Crashes;->processMinidumpFiles()V

    goto :goto_1
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
    .line 248
    invoke-static {}, Lcom/microsoft/appcenter/crashes/Crashes;->getInstance()Lcom/microsoft/appcenter/crashes/Crashes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/appcenter/crashes/Crashes;->isInstanceEnabledAsync()Lcom/microsoft/appcenter/utils/async/AppCenterFuture;

    move-result-object v0

    return-object v0
.end method

.method private static isMemoryRunningLevelWasReceived(I)Z
    .locals 3

    .prologue
    .line 851
    move v0, p0

    .local v0, "memoryLevel":I
    move v1, v0

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    move v1, v0

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    move v1, v0

    const/16 v2, 0xf

    if-eq v1, v2, :cond_0

    move v1, v0

    const/16 v2, 0x50

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "memoryLevel":I
    return v0

    .restart local v0    # "memoryLevel":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static notifyUserConfirmation(I)V
    .locals 3

    .prologue
    .line 328
    move v0, p0

    .local v0, "userConfirmation":I
    invoke-static {}, Lcom/microsoft/appcenter/crashes/Crashes;->getInstance()Lcom/microsoft/appcenter/crashes/Crashes;

    move-result-object v1

    move v2, v0

    invoke-direct {v1, v2}, Lcom/microsoft/appcenter/crashes/Crashes;->handleUserConfirmation(I)V

    .line 329
    return-void
.end method

.method private processMinidumpFiles()V
    .locals 15

    .prologue
    .line 684
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/Crashes;
    invoke-static {}, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->getNewMinidumpFiles()[Ljava/io/File;

    move-result-object v10

    move-object v1, v10

    move-object v10, v1

    array-length v10, v10

    move v2, v10

    const/4 v10, 0x0

    move v3, v10

    :goto_0
    move v10, v3

    move v11, v2

    if-ge v10, v11, :cond_3

    move-object v10, v1

    move v11, v3

    aget-object v10, v10, v11

    move-object v4, v10

    .line 687
    .local v4, "minidumpSubfolder":Ljava/io/File;
    move-object v10, v4

    invoke-virtual {v10}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-nez v10, :cond_1

    .line 688
    const-string/jumbo v10, "AppCenterCrashes"

    const-string/jumbo v11, "Found a minidump from a previous SDK version."

    invoke-static {v10, v11}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    move-object v10, v0

    move-object v11, v4

    move-object v12, v4

    invoke-direct {v10, v11, v12}, Lcom/microsoft/appcenter/crashes/Crashes;->processSingleMinidump(Ljava/io/File;Ljava/io/File;)V

    .line 690
    .line 684
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 692
    :cond_1
    move-object v10, v4

    new-instance v11, Lcom/microsoft/appcenter/crashes/Crashes$10;

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    move-object v13, v0

    invoke-direct {v12, v13}, Lcom/microsoft/appcenter/crashes/Crashes$10;-><init>(Lcom/microsoft/appcenter/crashes/Crashes;)V

    invoke-virtual {v10, v11}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v10

    move-object v5, v10

    .line 699
    .local v5, "minidumpSubfolderFiles":[Ljava/io/File;
    move-object v10, v5

    if-eqz v10, :cond_0

    move-object v10, v5

    array-length v10, v10

    if-nez v10, :cond_2

    .line 700
    goto :goto_1

    .line 702
    :cond_2
    move-object v10, v5

    move-object v6, v10

    move-object v10, v6

    array-length v10, v10

    move v7, v10

    const/4 v10, 0x0

    move v8, v10

    :goto_2
    move v10, v8

    move v11, v7

    if-ge v10, v11, :cond_0

    move-object v10, v6

    move v11, v8

    aget-object v10, v10, v11

    move-object v9, v10

    .line 703
    .local v9, "minidumpFile":Ljava/io/File;
    move-object v10, v0

    move-object v11, v9

    move-object v12, v4

    invoke-direct {v10, v11, v12}, Lcom/microsoft/appcenter/crashes/Crashes;->processSingleMinidump(Ljava/io/File;Ljava/io/File;)V

    .line 702
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 708
    .end local v4    # "minidumpSubfolder":Ljava/io/File;
    .end local v5    # "minidumpSubfolderFiles":[Ljava/io/File;
    .end local v9    # "minidumpFile":Ljava/io/File;
    :cond_3
    invoke-static {}, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->getLastErrorLogFile()Ljava/io/File;

    move-result-object v10

    move-object v1, v10

    .line 709
    .local v1, "logFile":Ljava/io/File;
    :goto_3
    move-object v10, v1

    if-eqz v10, :cond_4

    move-object v10, v1

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_4

    .line 710
    const-string/jumbo v10, "AppCenterCrashes"

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Deleting empty error file: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    move-object v10, v1

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    move-result v10

    .line 714
    invoke-static {}, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->getLastErrorLogFile()Ljava/io/File;

    move-result-object v10

    move-object v1, v10

    goto :goto_3

    .line 716
    :cond_4
    move-object v10, v1

    if-eqz v10, :cond_5

    .line 717
    const-string/jumbo v10, "AppCenterCrashes"

    const-string/jumbo v11, "Processing crash report for the last session."

    invoke-static {v10, v11}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    move-object v10, v1

    invoke-static {v10}, Lcom/microsoft/appcenter/utils/storage/FileManager;->read(Ljava/io/File;)Ljava/lang/String;

    move-result-object v10

    move-object v2, v10

    .line 719
    .local v2, "logFileContents":Ljava/lang/String;
    move-object v10, v2

    if-nez v10, :cond_6

    .line 720
    const-string/jumbo v10, "AppCenterCrashes"

    const-string/jumbo v11, "Error reading last session error log."

    invoke-static {v10, v11}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    .end local v2    # "logFileContents":Ljava/lang/String;
    :cond_5
    :goto_4
    invoke-static {}, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->removeStaleMinidumpSubfolders()V

    .line 734
    return-void

    .line 723
    .restart local v2    # "logFileContents":Ljava/lang/String;
    :cond_6
    move-object v10, v0

    :try_start_0
    iget-object v10, v10, Lcom/microsoft/appcenter/crashes/Crashes;->mLogSerializer:Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;

    move-object v11, v2

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;->deserializeLog(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/appcenter/ingestion/models/Log;

    move-result-object v10

    check-cast v10, Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;

    move-object v3, v10

    .line 724
    .local v3, "log":Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;
    move-object v10, v0

    move-object v11, v0

    move-object v12, v3

    invoke-virtual {v11, v12}, Lcom/microsoft/appcenter/crashes/Crashes;->buildErrorReport(Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;)Lcom/microsoft/appcenter/crashes/model/ErrorReport;

    move-result-object v11

    iput-object v11, v10, Lcom/microsoft/appcenter/crashes/Crashes;->mLastSessionErrorReport:Lcom/microsoft/appcenter/crashes/model/ErrorReport;

    .line 725
    const-string/jumbo v10, "AppCenterCrashes"

    const-string/jumbo v11, "Processed crash report for the last session."

    invoke-static {v10, v11}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 728
    goto :goto_4

    .line 726
    .end local v3    # "log":Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;
    :catch_0
    move-exception v10

    move-object v3, v10

    .line 727
    .local v3, "e":Lorg/json/JSONException;
    const-string/jumbo v10, "AppCenterCrashes"

    const-string/jumbo v11, "Error parsing last session error log."

    move-object v12, v3

    invoke-static {v10, v11, v12}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4
.end method

.method private processPendingErrors()V
    .locals 14

    .prologue
    .line 809
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/Crashes;
    invoke-static {}, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->getStoredErrorLogFiles()[Ljava/io/File;

    move-result-object v9

    move-object v1, v9

    move-object v9, v1

    array-length v9, v9

    move v2, v9

    const/4 v9, 0x0

    move v3, v9

    :goto_0
    move v9, v3

    move v10, v2

    if-ge v9, v10, :cond_5

    move-object v9, v1

    move v10, v3

    aget-object v9, v9, v10

    move-object v4, v9

    .line 810
    .local v4, "logFile":Ljava/io/File;
    const-string/jumbo v9, "AppCenterCrashes"

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Process pending error file: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    move-object v9, v4

    invoke-static {v9}, Lcom/microsoft/appcenter/utils/storage/FileManager;->read(Ljava/io/File;)Ljava/lang/String;

    move-result-object v9

    move-object v5, v9

    .line 812
    .local v5, "logfileContents":Ljava/lang/String;
    move-object v9, v5

    if-eqz v9, :cond_0

    .line 814
    move-object v9, v0

    :try_start_0
    iget-object v9, v9, Lcom/microsoft/appcenter/crashes/Crashes;->mLogSerializer:Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;

    move-object v10, v5

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;->deserializeLog(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/appcenter/ingestion/models/Log;

    move-result-object v9

    check-cast v9, Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;

    move-object v6, v9

    .line 815
    .local v6, "log":Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;
    move-object v9, v6

    invoke-virtual {v9}, Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;->getId()Ljava/util/UUID;

    move-result-object v9

    move-object v7, v9

    .line 816
    .local v7, "id":Ljava/util/UUID;
    move-object v9, v0

    move-object v10, v6

    invoke-virtual {v9, v10}, Lcom/microsoft/appcenter/crashes/Crashes;->buildErrorReport(Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;)Lcom/microsoft/appcenter/crashes/model/ErrorReport;

    move-result-object v9

    move-object v8, v9

    .line 817
    .local v8, "report":Lcom/microsoft/appcenter/crashes/model/ErrorReport;
    move-object v9, v8

    if-nez v9, :cond_1

    .line 818
    move-object v9, v0

    move-object v10, v7

    invoke-direct {v9, v10}, Lcom/microsoft/appcenter/crashes/Crashes;->removeAllStoredErrorLogFiles(Ljava/util/UUID;)V

    .line 833
    .line 809
    .end local v6    # "log":Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;
    .end local v7    # "id":Ljava/util/UUID;
    .end local v8    # "report":Lcom/microsoft/appcenter/crashes/model/ErrorReport;
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 819
    .restart local v6    # "log":Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;
    .restart local v7    # "id":Ljava/util/UUID;
    .restart local v8    # "report":Lcom/microsoft/appcenter/crashes/model/ErrorReport;
    :cond_1
    move-object v9, v0

    iget-boolean v9, v9, Lcom/microsoft/appcenter/crashes/Crashes;->mAutomaticProcessing:Z

    if-eqz v9, :cond_2

    move-object v9, v0

    iget-object v9, v9, Lcom/microsoft/appcenter/crashes/Crashes;->mCrashesListener:Lcom/microsoft/appcenter/crashes/CrashesListener;

    move-object v10, v8

    invoke-interface {v9, v10}, Lcom/microsoft/appcenter/crashes/CrashesListener;->shouldProcess(Lcom/microsoft/appcenter/crashes/model/ErrorReport;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 820
    :cond_2
    move-object v9, v0

    iget-boolean v9, v9, Lcom/microsoft/appcenter/crashes/Crashes;->mAutomaticProcessing:Z

    if-nez v9, :cond_3

    .line 821
    const-string/jumbo v9, "AppCenterCrashes"

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "CrashesListener.shouldProcess returned true, continue processing log: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v7

    invoke-virtual {v11}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    :cond_3
    move-object v9, v0

    iget-object v9, v9, Lcom/microsoft/appcenter/crashes/Crashes;->mUnprocessedErrorReports:Ljava/util/Map;

    move-object v10, v7

    move-object v11, v0

    iget-object v11, v11, Lcom/microsoft/appcenter/crashes/Crashes;->mErrorReportCache:Ljava/util/Map;

    move-object v12, v7

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/microsoft/appcenter/crashes/Crashes$ErrorLogReport;

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    goto :goto_1

    .line 825
    :cond_4
    const-string/jumbo v9, "AppCenterCrashes"

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "CrashesListener.shouldProcess returned false, clean up and ignore log: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v7

    invoke-virtual {v11}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    move-object v9, v0

    move-object v10, v7

    invoke-direct {v9, v10}, Lcom/microsoft/appcenter/crashes/Crashes;->removeAllStoredErrorLogFiles(Ljava/util/UUID;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 828
    .end local v6    # "log":Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;
    .end local v7    # "id":Ljava/util/UUID;
    .end local v8    # "report":Lcom/microsoft/appcenter/crashes/model/ErrorReport;
    :catch_0
    move-exception v9

    move-object v6, v9

    .line 829
    .local v6, "e":Lorg/json/JSONException;
    const-string/jumbo v9, "AppCenterCrashes"

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Error parsing error log. Deleting invalid file: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v11, v6

    invoke-static {v9, v10, v11}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 832
    move-object v9, v4

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    move-result v9

    goto/16 :goto_1

    .line 836
    .end local v4    # "logFile":Ljava/io/File;
    .end local v5    # "logfileContents":Ljava/lang/String;
    .end local v6    # "e":Lorg/json/JSONException;
    :cond_5
    move-object v9, v0

    const-string/jumbo v10, "com.microsoft.appcenter.crashes.memory"

    const/4 v11, -0x1

    invoke-static {v10, v11}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->getInt(Ljava/lang/String;I)I

    move-result v10

    invoke-static {v10}, Lcom/microsoft/appcenter/crashes/Crashes;->isMemoryRunningLevelWasReceived(I)Z

    move-result v10

    iput-boolean v10, v9, Lcom/microsoft/appcenter/crashes/Crashes;->mHasReceivedMemoryWarningInLastSession:Z

    .line 837
    move-object v9, v0

    iget-boolean v9, v9, Lcom/microsoft/appcenter/crashes/Crashes;->mHasReceivedMemoryWarningInLastSession:Z

    if-eqz v9, :cond_6

    .line 838
    const-string/jumbo v9, "AppCenterCrashes"

    const-string/jumbo v10, "The application received a low memory warning in the last session."

    invoke-static {v9, v10}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    :cond_6
    const-string/jumbo v9, "com.microsoft.appcenter.crashes.memory"

    invoke-static {v9}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->remove(Ljava/lang/String;)V

    .line 843
    move-object v9, v0

    iget-boolean v9, v9, Lcom/microsoft/appcenter/crashes/Crashes;->mAutomaticProcessing:Z

    if-eqz v9, :cond_7

    .line 846
    move-object v9, v0

    invoke-direct {v9}, Lcom/microsoft/appcenter/crashes/Crashes;->sendCrashReportsOrAwaitUserConfirmation()Z

    move-result v9

    .line 848
    :cond_7
    return-void
.end method

.method private processSingleMinidump(Ljava/io/File;Ljava/io/File;)V
    .locals 18

    .prologue
    .line 745
    move-object/from16 v1, p0

    .local v1, "this":Lcom/microsoft/appcenter/crashes/Crashes;
    move-object/from16 v2, p1

    .local v2, "minidumpFile":Ljava/io/File;
    move-object/from16 v3, p2

    .local v3, "minidumpFolder":Ljava/io/File;
    const-string/jumbo v12, "AppCenterCrashes"

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Process pending minidump file: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v2

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    move-object v12, v2

    invoke-virtual {v12}, Ljava/io/File;->lastModified()J

    move-result-wide v12

    move-wide v4, v12

    .line 747
    .local v4, "minidumpDate":J
    new-instance v12, Ljava/io/File;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    invoke-static {}, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->getPendingMinidumpDirectory()Ljava/io/File;

    move-result-object v14

    move-object v15, v2

    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v6, v12

    .line 748
    .local v6, "dest":Ljava/io/File;
    new-instance v12, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    invoke-direct {v13}, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;-><init>()V

    move-object v7, v12

    .line 749
    .local v7, "modelException":Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;
    move-object v12, v7

    const-string/jumbo v13, "minidump"

    invoke-virtual {v12, v13}, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->setType(Ljava/lang/String;)V

    .line 750
    move-object v12, v7

    const-string/jumbo v13, "appcenter.ndk"

    invoke-virtual {v12, v13}, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->setWrapperSdkName(Ljava/lang/String;)V

    .line 751
    move-object v12, v7

    move-object v13, v6

    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->setMinidumpFilePath(Ljava/lang/String;)V

    .line 752
    new-instance v12, Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    invoke-direct {v13}, Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;-><init>()V

    move-object v8, v12

    .line 753
    .local v8, "errorLog":Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;
    move-object v12, v8

    move-object v13, v7

    invoke-virtual {v12, v13}, Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;->setException(Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;)V

    .line 754
    move-object v12, v8

    new-instance v13, Ljava/util/Date;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    move-wide v15, v4

    invoke-direct/range {v14 .. v16}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v12, v13}, Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;->setTimestamp(Ljava/util/Date;)V

    .line 755
    move-object v12, v8

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;->setFatal(Ljava/lang/Boolean;)V

    .line 756
    move-object v12, v8

    move-object v13, v3

    invoke-static {v13}, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->parseLogFolderUuid(Ljava/io/File;)Ljava/util/UUID;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;->setId(Ljava/util/UUID;)V

    .line 759
    invoke-static {}, Lcom/microsoft/appcenter/utils/context/SessionContext;->getInstance()Lcom/microsoft/appcenter/utils/context/SessionContext;

    move-result-object v12

    move-wide v13, v4

    invoke-virtual {v12, v13, v14}, Lcom/microsoft/appcenter/utils/context/SessionContext;->getSessionAt(J)Lcom/microsoft/appcenter/utils/context/SessionContext$SessionInfo;

    move-result-object v12

    move-object v9, v12

    .line 760
    .local v9, "session":Lcom/microsoft/appcenter/utils/context/SessionContext$SessionInfo;
    move-object v12, v9

    if-eqz v12, :cond_1

    move-object v12, v9

    invoke-virtual {v12}, Lcom/microsoft/appcenter/utils/context/SessionContext$SessionInfo;->getAppLaunchTimestamp()J

    move-result-wide v12

    move-wide v14, v4

    cmp-long v12, v12, v14

    if-gtz v12, :cond_1

    .line 761
    move-object v12, v8

    new-instance v13, Ljava/util/Date;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    move-object v15, v9

    invoke-virtual {v15}, Lcom/microsoft/appcenter/utils/context/SessionContext$SessionInfo;->getAppLaunchTimestamp()J

    move-result-wide v15

    invoke-direct/range {v14 .. v16}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v12, v13}, Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;->setAppLaunchTimestamp(Ljava/util/Date;)V

    .line 779
    :goto_0
    move-object v12, v8

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;->setProcessId(Ljava/lang/Integer;)V

    .line 780
    move-object v12, v8

    const-string/jumbo v13, ""

    invoke-virtual {v12, v13}, Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;->setProcessName(Ljava/lang/String;)V

    .line 782
    move-object v12, v3

    :try_start_0
    invoke-static {v12}, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->getStoredUserInfo(Ljava/io/File;)Ljava/lang/String;

    move-result-object v12

    move-object v10, v12

    .line 783
    .local v10, "savedUserId":Ljava/lang/String;
    move-object v12, v3

    invoke-static {v12}, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->getStoredDeviceInfo(Ljava/io/File;)Lcom/microsoft/appcenter/ingestion/models/Device;

    move-result-object v12

    move-object v11, v12

    .line 784
    .local v11, "savedDeviceInfo":Lcom/microsoft/appcenter/ingestion/models/Device;
    move-object v12, v11

    if-nez v12, :cond_0

    .line 790
    move-object v12, v1

    move-object v13, v1

    iget-object v13, v13, Lcom/microsoft/appcenter/crashes/Crashes;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v13}, Lcom/microsoft/appcenter/crashes/Crashes;->getDeviceInfo(Landroid/content/Context;)Lcom/microsoft/appcenter/ingestion/models/Device;

    move-result-object v12

    move-object v11, v12

    .line 791
    move-object v12, v11

    const-string/jumbo v13, "appcenter.ndk"

    invoke-virtual {v12, v13}, Lcom/microsoft/appcenter/ingestion/models/Device;->setWrapperSdkName(Ljava/lang/String;)V

    .line 793
    :cond_0
    move-object v12, v8

    move-object v13, v11

    invoke-virtual {v12, v13}, Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;->setDevice(Lcom/microsoft/appcenter/ingestion/models/Device;)V

    .line 794
    move-object v12, v8

    move-object v13, v10

    invoke-virtual {v12, v13}, Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;->setUserId(Ljava/lang/String;)V

    .line 795
    move-object v12, v1

    new-instance v13, Lcom/microsoft/appcenter/crashes/model/NativeException;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    invoke-direct {v14}, Lcom/microsoft/appcenter/crashes/model/NativeException;-><init>()V

    move-object v14, v8

    invoke-direct {v12, v13, v14}, Lcom/microsoft/appcenter/crashes/Crashes;->saveErrorLogFiles(Ljava/lang/Throwable;Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;)Ljava/util/UUID;

    move-result-object v12

    .line 796
    move-object v12, v2

    move-object v13, v6

    invoke-virtual {v12, v13}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 797
    new-instance v12, Ljava/io/IOException;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    const-string/jumbo v14, "Failed to move file"

    invoke-direct {v13, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 799
    .end local v10    # "savedUserId":Ljava/lang/String;
    .end local v11    # "savedDeviceInfo":Lcom/microsoft/appcenter/ingestion/models/Device;
    :catch_0
    move-exception v12

    move-object v10, v12

    .line 802
    .local v10, "e":Ljava/lang/Exception;
    move-object v12, v2

    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    move-result v12

    .line 803
    move-object v12, v1

    move-object v13, v8

    invoke-virtual {v13}, Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;->getId()Ljava/util/UUID;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/microsoft/appcenter/crashes/Crashes;->removeAllStoredErrorLogFiles(Ljava/util/UUID;)V

    .line 804
    const-string/jumbo v12, "AppCenterCrashes"

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Failed to process new minidump file: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v2

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object v14, v10

    invoke-static {v12, v13, v14}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 806
    .end local v10    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 772
    :cond_1
    move-object v12, v8

    move-object v13, v8

    invoke-virtual {v13}, Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;->getTimestamp()Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;->setAppLaunchTimestamp(Ljava/util/Date;)V

    goto/16 :goto_0

    .line 805
    .local v10, "savedUserId":Ljava/lang/String;
    .restart local v11    # "savedDeviceInfo":Lcom/microsoft/appcenter/ingestion/models/Device;
    :cond_2
    goto :goto_1
.end method

.method private declared-synchronized queueException(Lcom/microsoft/appcenter/crashes/Crashes$ExceptionModelBuilder;Ljava/util/Map;Ljava/lang/Iterable;)Ljava/util/UUID;
    .locals 18
    .param p1    # Lcom/microsoft/appcenter/crashes/Crashes$ExceptionModelBuilder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/appcenter/crashes/Crashes$ExceptionModelBuilder;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;",
            ">;)",
            "Ljava/util/UUID;"
        }
    .end annotation

    .prologue
    .line 639
    move-object/from16 v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/Crashes;
    move-object/from16 v1, p1

    .local v1, "exceptionModelBuilder":Lcom/microsoft/appcenter/crashes/Crashes$ExceptionModelBuilder;
    move-object/from16 v2, p2

    .local v2, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v3, p3

    .local v3, "attachments":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;>;"
    move-object/from16 v16, p0

    monitor-enter v16

    :try_start_0
    invoke-static {}, Lcom/microsoft/appcenter/utils/context/UserIdContext;->getInstance()Lcom/microsoft/appcenter/utils/context/UserIdContext;

    move-result-object v7

    invoke-virtual {v7}, Lcom/microsoft/appcenter/utils/context/UserIdContext;->getUserId()Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    .line 640
    .local v4, "userId":Ljava/lang/String;
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v7

    move-object v5, v7

    .line 641
    .local v5, "errorId":Ljava/util/UUID;
    move-object v7, v2

    const-string/jumbo v8, "HandledError"

    invoke-static {v7, v8}, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->validateProperties(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v7

    move-object v6, v7

    .line 642
    .local v6, "validatedProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v7, v0

    new-instance v8, Lcom/microsoft/appcenter/crashes/Crashes$9;

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    move-object v10, v0

    move-object v11, v5

    move-object v12, v4

    move-object v13, v1

    move-object v14, v6

    move-object v15, v3

    invoke-direct/range {v9 .. v15}, Lcom/microsoft/appcenter/crashes/Crashes$9;-><init>(Lcom/microsoft/appcenter/crashes/Crashes;Ljava/util/UUID;Ljava/lang/String;Lcom/microsoft/appcenter/crashes/Crashes$ExceptionModelBuilder;Ljava/util/Map;Ljava/lang/Iterable;)V

    invoke-virtual {v7, v8}, Lcom/microsoft/appcenter/crashes/Crashes;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 659
    move-object v7, v5

    move-object v0, v7

    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/Crashes;
    monitor-exit v16

    return-object v0

    .line 639
    .end local v4    # "userId":Ljava/lang/String;
    .end local v5    # "errorId":Ljava/util/UUID;
    .end local v6    # "validatedProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v0    # "this":Lcom/microsoft/appcenter/crashes/Crashes;
    :catchall_0
    move-exception v0

    monitor-exit v16

    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/Crashes;
    throw v0
.end method

.method private declared-synchronized queueException(Ljava/lang/Throwable;Ljava/util/Map;Ljava/lang/Iterable;)V
    .locals 11
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 609
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/Crashes;
    move-object v1, p1

    .local v1, "throwable":Ljava/lang/Throwable;
    move-object v2, p2

    .local v2, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v3, p3

    .local v3, "attachments":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;>;"
    move-object v9, p0

    monitor-enter v9

    move-object v4, v0

    :try_start_0
    new-instance v5, Lcom/microsoft/appcenter/crashes/Crashes$7;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    move-object v8, v1

    invoke-direct {v6, v7, v8}, Lcom/microsoft/appcenter/crashes/Crashes$7;-><init>(Lcom/microsoft/appcenter/crashes/Crashes;Ljava/lang/Throwable;)V

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/microsoft/appcenter/crashes/Crashes;->queueException(Lcom/microsoft/appcenter/crashes/Crashes$ExceptionModelBuilder;Ljava/util/Map;Ljava/lang/Iterable;)Ljava/util/UUID;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 616
    monitor-exit v9

    return-void

    .line 609
    :catchall_0
    move-exception v0

    monitor-exit v9

    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/Crashes;
    throw v0
.end method

.method private removeAllStoredErrorLogFiles(Ljava/util/UUID;)V
    .locals 4

    .prologue
    .line 901
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/Crashes;
    move-object v1, p1

    .local v1, "id":Ljava/util/UUID;
    move-object v2, v1

    invoke-static {v2}, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->removeStoredErrorLogFile(Ljava/util/UUID;)V

    .line 902
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/microsoft/appcenter/crashes/Crashes;->removeStoredThrowable(Ljava/util/UUID;)V

    .line 903
    return-void
.end method

.method private removeStoredThrowable(Ljava/util/UUID;)V
    .locals 4

    .prologue
    .line 906
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/Crashes;
    move-object v1, p1

    .local v1, "id":Ljava/util/UUID;
    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/crashes/Crashes;->mErrorReportCache:Ljava/util/Map;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 907
    move-object v2, v1

    invoke-static {v2}, Lcom/microsoft/appcenter/crashes/WrapperSdkExceptionManager;->deleteWrapperExceptionData(Ljava/util/UUID;)V

    .line 908
    return-void
.end method

.method private saveErrorLogFiles(Ljava/lang/Throwable;Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;)Ljava/util/UUID;
    .locals 14
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1152
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/Crashes;
    move-object v1, p1

    .local v1, "throwable":Ljava/lang/Throwable;
    move-object/from16 v2, p2

    .local v2, "errorLog":Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;
    invoke-static {}, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->getErrorStorageDirectory()Ljava/io/File;

    move-result-object v8

    move-object v3, v8

    .line 1153
    .local v3, "errorStorageDirectory":Ljava/io/File;
    move-object v8, v2

    invoke-virtual {v8}, Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;->getId()Ljava/util/UUID;

    move-result-object v8

    move-object v4, v8

    .line 1154
    .local v4, "errorLogId":Ljava/util/UUID;
    move-object v8, v4

    invoke-virtual {v8}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    .line 1155
    .local v5, "filename":Ljava/lang/String;
    const-string/jumbo v8, "AppCenterCrashes"

    const-string/jumbo v9, "Saving uncaught exception."

    invoke-static {v8, v9}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1156
    new-instance v8, Ljava/io/File;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v3

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v13, v11

    move-object v11, v13

    move-object v12, v13

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object v12, v5

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ".json"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v6, v8

    .line 1159
    .local v6, "errorLogFile":Ljava/io/File;
    move-object v8, v0

    iget-object v8, v8, Lcom/microsoft/appcenter/crashes/Crashes;->mLogSerializer:Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;

    move-object v9, v2

    invoke-interface {v8, v9}, Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;->serializeLog(Lcom/microsoft/appcenter/ingestion/models/Log;)Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 1160
    .local v7, "errorLogString":Ljava/lang/String;
    move-object v8, v6

    move-object v9, v7

    invoke-static {v8, v9}, Lcom/microsoft/appcenter/utils/storage/FileManager;->write(Ljava/io/File;Ljava/lang/String;)V

    .line 1161
    const-string/jumbo v8, "AppCenterCrashes"

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Saved JSON content for ingestion into "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1162
    move-object v8, v4

    move-object v0, v8

    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/Crashes;
    return-object v0
.end method

.method private static saveMemoryRunningLevel(I)V
    .locals 8
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 1250
    move v0, p0

    .local v0, "level":I
    const-string/jumbo v1, "com.microsoft.appcenter.crashes.memory"

    move v2, v0

    invoke-static {v1, v2}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->putInt(Ljava/lang/String;I)V

    .line 1251
    const-string/jumbo v1, "AppCenterCrashes"

    const-string/jumbo v2, "The memory running level (%s) was saved."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    move v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1252
    return-void
.end method

.method private sendCrashReportsOrAwaitUserConfirmation()Z
    .locals 7

    .prologue
    .line 865
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/Crashes;
    const-string/jumbo v2, "com.microsoft.appcenter.crashes.always.send"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move v1, v2

    .line 866
    .local v1, "alwaysSend":Z
    new-instance v2, Lcom/microsoft/appcenter/crashes/Crashes$11;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move v5, v1

    invoke-direct {v3, v4, v5}, Lcom/microsoft/appcenter/crashes/Crashes$11;-><init>(Lcom/microsoft/appcenter/crashes/Crashes;Z)V

    invoke-static {v2}, Lcom/microsoft/appcenter/utils/HandlerUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 897
    move v2, v1

    move v0, v2

    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/Crashes;
    return v0
.end method

.method private sendErrorAttachment(Ljava/util/UUID;Ljava/lang/Iterable;)V
    .locals 13
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1072
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/Crashes;
    move-object v1, p1

    .local v1, "errorId":Ljava/util/UUID;
    move-object v2, p2

    .local v2, "attachments":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;>;"
    move-object v5, v2

    if-nez v5, :cond_1

    .line 1073
    const-string/jumbo v5, "AppCenterCrashes"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Error report: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v7}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " does not have any attachment."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    :cond_0
    return-void

    .line 1075
    :cond_1
    move-object v5, v2

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_0
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;

    move-object v4, v5

    .line 1076
    .local v4, "attachment":Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;
    move-object v5, v4

    if-eqz v5, :cond_4

    .line 1077
    move-object v5, v4

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->setId(Ljava/util/UUID;)V

    .line 1078
    move-object v5, v4

    move-object v6, v1

    invoke-virtual {v5, v6}, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->setErrorId(Ljava/util/UUID;)V

    .line 1079
    move-object v5, v4

    invoke-virtual {v5}, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->isValid()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1080
    const-string/jumbo v5, "AppCenterCrashes"

    const-string/jumbo v6, "Not all required fields are present in ErrorAttachmentLog."

    invoke-static {v5, v6}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    :goto_1
    goto :goto_0

    .line 1081
    :cond_2
    move-object v5, v4

    invoke-virtual {v5}, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->getData()[B

    move-result-object v5

    array-length v5, v5

    const/high16 v6, 0x700000

    if-le v5, v6, :cond_3

    .line 1082
    const-string/jumbo v5, "AppCenterCrashes"

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v7, "Discarding attachment with size above %d bytes: size=%d, fileName=%s."

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    const/high16 v11, 0x700000

    .line 1084
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x1

    move-object v11, v4

    invoke-virtual {v11}, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->getData()[B

    move-result-object v11

    array-length v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x2

    move-object v11, v4

    invoke-virtual {v11}, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->getFileName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 1082
    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1086
    :cond_3
    move-object v5, v0

    iget-object v5, v5, Lcom/microsoft/appcenter/crashes/Crashes;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    move-object v6, v4

    const-string/jumbo v7, "groupErrors"

    const/4 v8, 0x1

    invoke-interface {v5, v6, v7, v8}, Lcom/microsoft/appcenter/channel/Channel;->enqueue(Lcom/microsoft/appcenter/ingestion/models/Log;Ljava/lang/String;I)V

    goto :goto_1

    .line 1089
    :cond_4
    const-string/jumbo v5, "AppCenterCrashes"

    const-string/jumbo v6, "Skipping null ErrorAttachmentLog."

    invoke-static {v5, v6}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
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
    .line 260
    move v0, p0

    .local v0, "enabled":Z
    invoke-static {}, Lcom/microsoft/appcenter/crashes/Crashes;->getInstance()Lcom/microsoft/appcenter/crashes/Crashes;

    move-result-object v1

    move v2, v0

    invoke-virtual {v1, v2}, Lcom/microsoft/appcenter/crashes/Crashes;->setInstanceEnabledAsync(Z)Lcom/microsoft/appcenter/utils/async/AppCenterFuture;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "enabled":Z
    return-object v0
.end method

.method public static setListener(Lcom/microsoft/appcenter/crashes/CrashesListener;)V
    .locals 3

    .prologue
    .line 306
    move-object v0, p0

    .local v0, "listener":Lcom/microsoft/appcenter/crashes/CrashesListener;
    invoke-static {}, Lcom/microsoft/appcenter/crashes/Crashes;->getInstance()Lcom/microsoft/appcenter/crashes/Crashes;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v1, v2}, Lcom/microsoft/appcenter/crashes/Crashes;->setInstanceListener(Lcom/microsoft/appcenter/crashes/CrashesListener;)V

    .line 307
    return-void
.end method

.method public static trackError(Ljava/lang/Throwable;)V
    .locals 4
    .param p0    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 270
    move-object v0, p0

    .local v0, "throwable":Ljava/lang/Throwable;
    move-object v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/microsoft/appcenter/crashes/Crashes;->trackError(Ljava/lang/Throwable;Ljava/util/Map;Ljava/lang/Iterable;)V

    .line 271
    return-void
.end method

.method public static trackError(Ljava/lang/Throwable;Ljava/util/Map;Ljava/lang/Iterable;)V
    .locals 7
    .param p0    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 286
    move-object v0, p0

    .local v0, "throwable":Ljava/lang/Throwable;
    move-object v1, p1

    .local v1, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v2, p2

    .local v2, "attachments":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;>;"
    invoke-static {}, Lcom/microsoft/appcenter/crashes/Crashes;->getInstance()Lcom/microsoft/appcenter/crashes/Crashes;

    move-result-object v3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v3, v4, v5, v6}, Lcom/microsoft/appcenter/crashes/Crashes;->queueException(Ljava/lang/Throwable;Ljava/util/Map;Ljava/lang/Iterable;)V

    .line 287
    return-void
.end method

.method static declared-synchronized unsetInstance()V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 238
    const-class v1, Lcom/microsoft/appcenter/crashes/Crashes;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/microsoft/appcenter/crashes/Crashes;->sInstance:Lcom/microsoft/appcenter/crashes/Crashes;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    monitor-exit v1

    return-void

    .line 238
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected declared-synchronized applyEnabledState(Z)V
    .locals 13

    .prologue
    .line 424
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/Crashes;
    move v1, p1

    .local v1, "enabled":Z
    move-object v11, p0

    monitor-enter v11

    move-object v7, v0

    :try_start_0
    invoke-direct {v7}, Lcom/microsoft/appcenter/crashes/Crashes;->initialize()V

    .line 425
    move v7, v1

    if-eqz v7, :cond_0

    .line 426
    move-object v7, v0

    new-instance v8, Lcom/microsoft/appcenter/crashes/Crashes$5;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v0

    invoke-direct {v9, v10}, Lcom/microsoft/appcenter/crashes/Crashes$5;-><init>(Lcom/microsoft/appcenter/crashes/Crashes;)V

    iput-object v8, v7, Lcom/microsoft/appcenter/crashes/Crashes;->mMemoryWarningListener:Landroid/content/ComponentCallbacks2;

    .line 442
    move-object v7, v0

    iget-object v7, v7, Lcom/microsoft/appcenter/crashes/Crashes;->mContext:Landroid/content/Context;

    move-object v8, v0

    iget-object v8, v8, Lcom/microsoft/appcenter/crashes/Crashes;->mMemoryWarningListener:Landroid/content/ComponentCallbacks2;

    invoke-virtual {v7, v8}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 464
    :goto_0
    monitor-exit v11

    return-void

    .line 446
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->getErrorStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    move-object v2, v7

    .line 447
    .local v2, "files":[Ljava/io/File;
    move-object v7, v2

    if-eqz v7, :cond_2

    .line 448
    move-object v7, v2

    move-object v3, v7

    move-object v7, v3

    array-length v7, v7

    move v4, v7

    const/4 v7, 0x0

    move v5, v7

    :goto_1
    move v7, v5

    move v8, v4

    if-ge v7, v8, :cond_2

    move-object v7, v3

    move v8, v5

    aget-object v7, v7, v8

    move-object v6, v7

    .line 449
    .local v6, "file":Ljava/io/File;
    const-string/jumbo v7, "AppCenterCrashes"

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Deleting file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    move-object v7, v6

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v7

    if-nez v7, :cond_1

    .line 451
    const-string/jumbo v7, "AppCenterCrashes"

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Failed to delete file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 455
    .end local v6    # "file":Ljava/io/File;
    :cond_2
    const-string/jumbo v7, "AppCenterCrashes"

    const-string/jumbo v8, "Deleted crashes local files"

    invoke-static {v7, v8}, Lcom/microsoft/appcenter/utils/AppCenterLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    move-object v7, v0

    iget-object v7, v7, Lcom/microsoft/appcenter/crashes/Crashes;->mErrorReportCache:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->clear()V

    .line 459
    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Lcom/microsoft/appcenter/crashes/Crashes;->mLastSessionErrorReport:Lcom/microsoft/appcenter/crashes/model/ErrorReport;

    .line 460
    move-object v7, v0

    iget-object v7, v7, Lcom/microsoft/appcenter/crashes/Crashes;->mContext:Landroid/content/Context;

    move-object v8, v0

    iget-object v8, v8, Lcom/microsoft/appcenter/crashes/Crashes;->mMemoryWarningListener:Landroid/content/ComponentCallbacks2;

    invoke-virtual {v7, v8}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 461
    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Lcom/microsoft/appcenter/crashes/Crashes;->mMemoryWarningListener:Landroid/content/ComponentCallbacks2;

    .line 462
    const-string/jumbo v7, "com.microsoft.appcenter.crashes.memory"

    invoke-static {v7}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->remove(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 424
    .end local v2    # "files":[Ljava/io/File;
    :catchall_0
    move-exception v0

    monitor-exit v11

    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/Crashes;
    throw v0
.end method

.method buildErrorReport(Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;)Lcom/microsoft/appcenter/crashes/model/ErrorReport;
    .locals 14
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 934
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/Crashes;
    move-object v1, p1

    .local v1, "log":Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;
    move-object v6, v1

    invoke-virtual {v6}, Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;->getId()Ljava/util/UUID;

    move-result-object v6

    move-object v2, v6

    .line 935
    .local v2, "id":Ljava/util/UUID;
    move-object v6, v0

    iget-object v6, v6, Lcom/microsoft/appcenter/crashes/Crashes;->mErrorReportCache:Ljava/util/Map;

    move-object v7, v2

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 936
    move-object v6, v0

    iget-object v6, v6, Lcom/microsoft/appcenter/crashes/Crashes;->mErrorReportCache:Ljava/util/Map;

    move-object v7, v2

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/microsoft/appcenter/crashes/Crashes$ErrorLogReport;

    invoke-static {v6}, Lcom/microsoft/appcenter/crashes/Crashes$ErrorLogReport;->access$1200(Lcom/microsoft/appcenter/crashes/Crashes$ErrorLogReport;)Lcom/microsoft/appcenter/crashes/model/ErrorReport;

    move-result-object v6

    move-object v3, v6

    .line 937
    .local v3, "report":Lcom/microsoft/appcenter/crashes/model/ErrorReport;
    move-object v6, v3

    move-object v7, v1

    invoke-virtual {v7}, Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;->getDevice()Lcom/microsoft/appcenter/ingestion/models/Device;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/microsoft/appcenter/crashes/model/ErrorReport;->setDevice(Lcom/microsoft/appcenter/ingestion/models/Device;)V

    .line 938
    move-object v6, v3

    move-object v0, v6

    .line 958
    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/Crashes;
    .end local v3    # "report":Lcom/microsoft/appcenter/crashes/model/ErrorReport;
    :goto_0
    return-object v0

    .line 940
    .restart local v0    # "this":Lcom/microsoft/appcenter/crashes/Crashes;
    :cond_0
    const/4 v6, 0x0

    move-object v3, v6

    .line 943
    .local v3, "stackTrace":Ljava/lang/String;
    move-object v6, v2

    invoke-static {v6}, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->getStoredThrowableFile(Ljava/util/UUID;)Ljava/io/File;

    move-result-object v6

    move-object v4, v6

    .line 944
    .local v4, "file":Ljava/io/File;
    move-object v6, v4

    if-eqz v6, :cond_1

    .line 945
    move-object v6, v4

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    .line 946
    move-object v6, v4

    invoke-static {v6}, Lcom/microsoft/appcenter/utils/storage/FileManager;->read(Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 949
    :cond_1
    move-object v6, v3

    if-nez v6, :cond_2

    .line 950
    const-string/jumbo v6, "minidump"

    move-object v7, v1

    invoke-virtual {v7}, Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;->getException()Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;

    move-result-object v7

    invoke-virtual {v7}, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 951
    new-instance v6, Lcom/microsoft/appcenter/crashes/model/NativeException;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    invoke-direct {v7}, Lcom/microsoft/appcenter/crashes/model/NativeException;-><init>()V

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 956
    :cond_2
    :goto_1
    move-object v6, v1

    move-object v7, v3

    invoke-static {v6, v7}, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->getErrorReportFromErrorLog(Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;Ljava/lang/String;)Lcom/microsoft/appcenter/crashes/model/ErrorReport;

    move-result-object v6

    move-object v5, v6

    .line 957
    .local v5, "report":Lcom/microsoft/appcenter/crashes/model/ErrorReport;
    move-object v6, v0

    iget-object v6, v6, Lcom/microsoft/appcenter/crashes/Crashes;->mErrorReportCache:Ljava/util/Map;

    move-object v7, v2

    new-instance v8, Lcom/microsoft/appcenter/crashes/Crashes$ErrorLogReport;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v1

    move-object v11, v5

    const/4 v12, 0x0

    invoke-direct {v9, v10, v11, v12}, Lcom/microsoft/appcenter/crashes/Crashes$ErrorLogReport;-><init>(Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;Lcom/microsoft/appcenter/crashes/model/ErrorReport;Lcom/microsoft/appcenter/crashes/Crashes$1;)V

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 958
    move-object v6, v5

    move-object v0, v6

    goto :goto_0

    .line 953
    .end local v5    # "report":Lcom/microsoft/appcenter/crashes/model/ErrorReport;
    :cond_3
    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v7}, Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;->getException()Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/microsoft/appcenter/crashes/Crashes;->buildStackTrace(Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;)Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    goto :goto_1
.end method

.method buildStackTrace(Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;)Ljava/lang/String;
    .locals 12
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 922
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/Crashes;
    move-object v1, p1

    .local v1, "exception":Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;
    const-string/jumbo v5, "%s: %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const/4 v8, 0x0

    move-object v9, v1

    invoke-virtual {v9}, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->getType()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const/4 v8, 0x1

    move-object v9, v1

    invoke-virtual {v9}, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 923
    .local v2, "stacktrace":Ljava/lang/String;
    move-object v5, v1

    invoke-virtual {v5}, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->getFrames()Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_0

    .line 924
    move-object v5, v2

    move-object v0, v5

    .line 929
    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/Crashes;
    :goto_0
    return-object v0

    .line 926
    .restart local v0    # "this":Lcom/microsoft/appcenter/crashes/Crashes;
    :cond_0
    move-object v5, v1

    invoke-virtual {v5}, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->getFrames()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_1
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/microsoft/appcenter/crashes/ingestion/models/StackFrame;

    move-object v4, v5

    .line 927
    .local v4, "frame":Lcom/microsoft/appcenter/crashes/ingestion/models/StackFrame;
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n\t at %s.%s(%s:%s)"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move-object v10, v4

    invoke-virtual {v10}, Lcom/microsoft/appcenter/crashes/ingestion/models/StackFrame;->getClassName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x1

    move-object v10, v4

    invoke-virtual {v10}, Lcom/microsoft/appcenter/crashes/ingestion/models/StackFrame;->getMethodName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x2

    move-object v10, v4

    invoke-virtual {v10}, Lcom/microsoft/appcenter/crashes/ingestion/models/StackFrame;->getFileName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x3

    move-object v10, v4

    invoke-virtual {v10}, Lcom/microsoft/appcenter/crashes/ingestion/models/StackFrame;->getLineNumber()Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 928
    goto :goto_1

    .line 929
    .end local v4    # "frame":Lcom/microsoft/appcenter/crashes/ingestion/models/StackFrame;
    :cond_1
    move-object v5, v2

    move-object v0, v5

    goto :goto_0
.end method

.method protected getChannelListener()Lcom/microsoft/appcenter/channel/Channel$GroupListener;
    .locals 5

    .prologue
    .line 518
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/Crashes;
    new-instance v1, Lcom/microsoft/appcenter/crashes/Crashes$6;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/microsoft/appcenter/crashes/Crashes$6;-><init>(Lcom/microsoft/appcenter/crashes/Crashes;)V

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/Crashes;
    return-object v0
.end method

.method declared-synchronized getDeviceInfo(Landroid/content/Context;)Lcom/microsoft/appcenter/ingestion/models/Device;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/appcenter/utils/DeviceInfoHelper$DeviceInfoException;
        }
    .end annotation

    .prologue
    .line 586
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/Crashes;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v4, p0

    monitor-enter v4

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/microsoft/appcenter/crashes/Crashes;->mDevice:Lcom/microsoft/appcenter/ingestion/models/Device;

    if-nez v2, :cond_0

    .line 587
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Lcom/microsoft/appcenter/utils/DeviceInfoHelper;->getDeviceInfo(Landroid/content/Context;)Lcom/microsoft/appcenter/ingestion/models/Device;

    move-result-object v3

    iput-object v3, v2, Lcom/microsoft/appcenter/crashes/Crashes;->mDevice:Lcom/microsoft/appcenter/ingestion/models/Device;

    .line 589
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/crashes/Crashes;->mDevice:Lcom/microsoft/appcenter/ingestion/models/Device;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/Crashes;
    monitor-exit v4

    return-object v0

    .line 586
    .restart local v0    # "this":Lcom/microsoft/appcenter/crashes/Crashes;
    :catchall_0
    move-exception v0

    monitor-exit v4

    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/Crashes;
    throw v0
.end method

.method protected getGroupName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 498
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/Crashes;
    const-string/jumbo v1, "groupErrors"

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/Crashes;
    return-object v0
.end method

.method declared-synchronized getInitializeTimestamp()J
    .locals 4

    .prologue
    .line 598
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/Crashes;
    move-object v3, p0

    monitor-enter v3

    move-object v1, v0

    :try_start_0
    iget-wide v1, v1, Lcom/microsoft/appcenter/crashes/Crashes;->mInitializeTimestamp:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/Crashes;
    monitor-exit v3

    return-wide v0

    .restart local v0    # "this":Lcom/microsoft/appcenter/crashes/Crashes;
    :catchall_0
    move-exception v0

    monitor-exit v3

    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/Crashes;
    throw v0
.end method

.method getInstanceListener()Lcom/microsoft/appcenter/crashes/CrashesListener;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 964
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/Crashes;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/crashes/Crashes;->mCrashesListener:Lcom/microsoft/appcenter/crashes/CrashesListener;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/Crashes;
    return-object v0
.end method

.method public getLogFactories()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/microsoft/appcenter/ingestion/models/json/LogFactory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 493
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/Crashes;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/crashes/Crashes;->mFactories:Ljava/util/Map;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/Crashes;
    return-object v0
.end method

.method protected getLoggerTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 508
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/Crashes;
    const-string/jumbo v1, "AppCenterCrashes"

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/Crashes;
    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 503
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/Crashes;
    const-string/jumbo v1, "Crashes"

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/Crashes;
    return-object v0
.end method

.method protected getTriggerCount()I
    .locals 2

    .prologue
    .line 513
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/Crashes;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/Crashes;
    return v0
.end method

.method getUncaughtExceptionHandler()Lcom/microsoft/appcenter/crashes/UncaughtExceptionHandler;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 912
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/Crashes;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/crashes/Crashes;->mUncaughtExceptionHandler:Lcom/microsoft/appcenter/crashes/UncaughtExceptionHandler;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/Crashes;
    return-object v0
.end method

.method getUnprocessedErrorReports()Lcom/microsoft/appcenter/utils/async/AppCenterFuture;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/microsoft/appcenter/utils/async/AppCenterFuture",
            "<",
            "Ljava/util/Collection",
            "<",
            "Lcom/microsoft/appcenter/crashes/model/ErrorReport;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1176
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/Crashes;
    new-instance v2, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    invoke-direct {v3}, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;-><init>()V

    move-object v1, v2

    .line 1177
    .local v1, "future":Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;, "Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture<Ljava/util/Collection<Lcom/microsoft/appcenter/crashes/model/ErrorReport;>;>;"
    move-object v2, v0

    new-instance v3, Lcom/microsoft/appcenter/crashes/Crashes$13;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/microsoft/appcenter/crashes/Crashes$13;-><init>(Lcom/microsoft/appcenter/crashes/Crashes;Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;)V

    move-object v4, v1

    .line 1187
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    .line 1177
    invoke-virtual {v2, v3, v4, v5}, Lcom/microsoft/appcenter/crashes/Crashes;->postAsyncGetter(Ljava/lang/Runnable;Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;Ljava/lang/Object;)V

    .line 1188
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/Crashes;
    return-object v0
.end method

.method public declared-synchronized onStarted(Landroid/content/Context;Lcom/microsoft/appcenter/channel/Channel;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 13
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/microsoft/appcenter/channel/Channel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 468
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/Crashes;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "channel":Lcom/microsoft/appcenter/channel/Channel;
    move-object/from16 v3, p3

    .local v3, "appSecret":Ljava/lang/String;
    move-object/from16 v4, p4

    .local v4, "transmissionTargetToken":Ljava/lang/String;
    move/from16 v5, p5

    .local v5, "startedFromApp":Z
    move-object v12, p0

    monitor-enter v12

    move-object v6, v0

    move-object v7, v1

    :try_start_0
    iput-object v7, v6, Lcom/microsoft/appcenter/crashes/Crashes;->mContext:Landroid/content/Context;

    .line 469
    move-object v6, v0

    invoke-virtual {v6}, Lcom/microsoft/appcenter/crashes/Crashes;->isInstanceEnabled()Z

    move-result v6

    if-nez v6, :cond_0

    .line 476
    invoke-static {}, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->removeMinidumpFolder()V

    .line 477
    const-string/jumbo v6, "AppCenterCrashes"

    const-string/jumbo v7, "Clean up minidump folder."

    invoke-static {v6, v7}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    :cond_0
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    move v11, v5

    invoke-super/range {v6 .. v11}, Lcom/microsoft/appcenter/AbstractAppCenterService;->onStarted(Landroid/content/Context;Lcom/microsoft/appcenter/channel/Channel;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 480
    move-object v6, v0

    invoke-virtual {v6}, Lcom/microsoft/appcenter/crashes/Crashes;->isInstanceEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 481
    move-object v6, v0

    invoke-direct {v6}, Lcom/microsoft/appcenter/crashes/Crashes;->processPendingErrors()V

    .line 483
    move-object v6, v0

    iget-object v6, v6, Lcom/microsoft/appcenter/crashes/Crashes;->mErrorReportCache:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 486
    invoke-static {}, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->removeLostThrowableFiles()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 489
    :cond_1
    monitor-exit v12

    return-void

    .line 468
    :catchall_0
    move-exception v0

    monitor-exit v12

    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/Crashes;
    throw v0
.end method

.method declared-synchronized queueException(Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;Ljava/util/Map;Ljava/lang/Iterable;)Ljava/util/UUID;
    .locals 11
    .param p1    # Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;",
            ">;)",
            "Ljava/util/UUID;"
        }
    .end annotation

    .prologue
    .line 627
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/Crashes;
    move-object v1, p1

    .local v1, "modelException":Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;
    move-object v2, p2

    .local v2, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v3, p3

    .local v3, "attachments":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;>;"
    move-object v9, p0

    monitor-enter v9

    move-object v4, v0

    :try_start_0
    new-instance v5, Lcom/microsoft/appcenter/crashes/Crashes$8;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    move-object v8, v1

    invoke-direct {v6, v7, v8}, Lcom/microsoft/appcenter/crashes/Crashes$8;-><init>(Lcom/microsoft/appcenter/crashes/Crashes;Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;)V

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/microsoft/appcenter/crashes/Crashes;->queueException(Lcom/microsoft/appcenter/crashes/Crashes$ExceptionModelBuilder;Ljava/util/Map;Ljava/lang/Iterable;)Ljava/util/UUID;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/Crashes;
    monitor-exit v9

    return-object v0

    .restart local v0    # "this":Lcom/microsoft/appcenter/crashes/Crashes;
    :catchall_0
    move-exception v0

    monitor-exit v9

    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/Crashes;
    throw v0
.end method

.method public saveUncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)Ljava/util/UUID;
    .locals 9

    .prologue
    .line 1108
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/Crashes;
    move-object v1, p1

    .local v1, "thread":Ljava/lang/Thread;
    move-object v2, p2

    .local v2, "throwable":Ljava/lang/Throwable;
    const/4 v5, 0x0

    move-object v3, v5

    .line 1110
    .local v3, "reportUUID":Ljava/util/UUID;
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v2

    :try_start_0
    invoke-static {v8}, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->getModelExceptionFromThrowable(Ljava/lang/Throwable;)Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Lcom/microsoft/appcenter/crashes/Crashes;->saveUncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;)Ljava/util/UUID;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    move-object v3, v5

    .line 1115
    .line 1116
    :goto_0
    move-object v5, v3

    move-object v0, v5

    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/Crashes;
    return-object v0

    .line 1111
    .restart local v0    # "this":Lcom/microsoft/appcenter/crashes/Crashes;
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 1112
    .local v4, "e":Lorg/json/JSONException;
    const-string/jumbo v5, "AppCenterCrashes"

    const-string/jumbo v6, "Error serializing error log to JSON"

    move-object v7, v4

    invoke-static {v5, v6, v7}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1115
    goto :goto_0

    .line 1113
    .end local v4    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v5

    move-object v4, v5

    .line 1114
    .local v4, "e":Ljava/io/IOException;
    const-string/jumbo v5, "AppCenterCrashes"

    const-string/jumbo v6, "Error writing error log to file"

    move-object v7, v4

    invoke-static {v5, v6, v7}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method saveUncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;)Ljava/util/UUID;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1132
    move-object v1, p0

    .local v1, "this":Lcom/microsoft/appcenter/crashes/Crashes;
    move-object v2, p1

    .local v2, "thread":Ljava/lang/Thread;
    move-object v3, p2

    .local v3, "throwable":Ljava/lang/Throwable;
    move-object/from16 v4, p3

    .local v4, "modelException":Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;
    invoke-static {}, Lcom/microsoft/appcenter/crashes/Crashes;->isEnabled()Lcom/microsoft/appcenter/utils/async/AppCenterFuture;

    move-result-object v6

    invoke-interface {v6}, Lcom/microsoft/appcenter/utils/async/AppCenterFuture;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1133
    const/4 v6, 0x0

    move-object v1, v6

    .line 1147
    .end local v1    # "this":Lcom/microsoft/appcenter/crashes/Crashes;
    :goto_0
    return-object v1

    .line 1140
    .restart local v1    # "this":Lcom/microsoft/appcenter/crashes/Crashes;
    :cond_0
    move-object v6, v1

    iget-boolean v6, v6, Lcom/microsoft/appcenter/crashes/Crashes;->mSavedUncaughtException:Z

    if-eqz v6, :cond_1

    .line 1141
    const/4 v6, 0x0

    move-object v1, v6

    goto :goto_0

    .line 1143
    :cond_1
    move-object v6, v1

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/microsoft/appcenter/crashes/Crashes;->mSavedUncaughtException:Z

    .line 1146
    move-object v6, v1

    iget-object v6, v6, Lcom/microsoft/appcenter/crashes/Crashes;->mContext:Landroid/content/Context;

    move-object v7, v2

    move-object v8, v4

    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v9

    move-object v10, v1

    iget-wide v10, v10, Lcom/microsoft/appcenter/crashes/Crashes;->mInitializeTimestamp:J

    const/4 v12, 0x1

    invoke-static/range {v6 .. v12}, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->createErrorLog(Landroid/content/Context;Ljava/lang/Thread;Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;Ljava/util/Map;JZ)Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;

    move-result-object v6

    move-object v5, v6

    .line 1147
    .local v5, "errorLog":Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;
    move-object v6, v1

    move-object v7, v3

    move-object v8, v5

    invoke-direct {v6, v7, v8}, Lcom/microsoft/appcenter/crashes/Crashes;->saveErrorLogFiles(Ljava/lang/Throwable;Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;)Ljava/util/UUID;

    move-result-object v6

    move-object v1, v6

    goto :goto_0
.end method

.method sendCrashReportsOrAwaitUserConfirmation(Ljava/util/Collection;)Lcom/microsoft/appcenter/utils/async/AppCenterFuture;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/microsoft/appcenter/utils/async/AppCenterFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1195
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/Crashes;
    move-object v1, p1

    .local v1, "filteredReportIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v3, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    invoke-direct {v4}, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;-><init>()V

    move-object v2, v3

    .line 1196
    .local v2, "future":Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;, "Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture<Ljava/lang/Boolean;>;"
    move-object v3, v0

    new-instance v4, Lcom/microsoft/appcenter/crashes/Crashes$14;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    invoke-direct {v5, v6, v7, v8}, Lcom/microsoft/appcenter/crashes/Crashes$14;-><init>(Lcom/microsoft/appcenter/crashes/Crashes;Ljava/util/Collection;Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;)V

    move-object v5, v2

    const/4 v6, 0x0

    .line 1219
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 1196
    invoke-virtual {v3, v4, v5, v6}, Lcom/microsoft/appcenter/crashes/Crashes;->postAsyncGetter(Ljava/lang/Runnable;Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;Ljava/lang/Object;)V

    .line 1220
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/Crashes;
    return-object v0
.end method

.method sendErrorAttachments(Ljava/lang/String;Ljava/lang/Iterable;)V
    .locals 10
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1228
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/Crashes;
    move-object v1, p1

    .local v1, "errorReportId":Ljava/lang/String;
    move-object v2, p2

    .local v2, "attachments":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;>;"
    move-object v3, v0

    new-instance v4, Lcom/microsoft/appcenter/crashes/Crashes$15;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    invoke-direct {v5, v6, v7, v8}, Lcom/microsoft/appcenter/crashes/Crashes$15;-><init>(Lcom/microsoft/appcenter/crashes/Crashes;Ljava/lang/String;Ljava/lang/Iterable;)V

    invoke-virtual {v3, v4}, Lcom/microsoft/appcenter/crashes/Crashes;->post(Ljava/lang/Runnable;)V

    .line 1246
    return-void
.end method

.method setAutomaticProcessing(Z)V
    .locals 4

    .prologue
    .line 1169
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/Crashes;
    move v1, p1

    .local v1, "automaticProcessing":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/microsoft/appcenter/crashes/Crashes;->mAutomaticProcessing:Z

    .line 1170
    return-void
.end method

.method declared-synchronized setInstanceListener(Lcom/microsoft/appcenter/crashes/CrashesListener;)V
    .locals 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 969
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/Crashes;
    move-object v1, p1

    .local v1, "listener":Lcom/microsoft/appcenter/crashes/CrashesListener;
    move-object v4, p0

    monitor-enter v4

    move-object v2, v1

    if-nez v2, :cond_0

    .line 970
    :try_start_0
    sget-object v2, Lcom/microsoft/appcenter/crashes/Crashes;->DEFAULT_ERROR_REPORTING_LISTENER:Lcom/microsoft/appcenter/crashes/CrashesListener;

    move-object v1, v2

    .line 972
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/crashes/Crashes;->mCrashesListener:Lcom/microsoft/appcenter/crashes/CrashesListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 973
    monitor-exit v4

    return-void

    .line 969
    :catchall_0
    move-exception v0

    monitor-exit v4

    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/Crashes;
    throw v0
.end method

.method setLogSerializer(Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;)V
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 1097
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/Crashes;
    move-object v1, p1

    .local v1, "logSerializer":Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/crashes/Crashes;->mLogSerializer:Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;

    .line 1098
    return-void
.end method

.method setUncaughtExceptionHandler(Lcom/microsoft/appcenter/crashes/UncaughtExceptionHandler;)V
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 917
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/Crashes;
    move-object v1, p1

    .local v1, "handler":Lcom/microsoft/appcenter/crashes/UncaughtExceptionHandler;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/crashes/Crashes;->mUncaughtExceptionHandler:Lcom/microsoft/appcenter/crashes/UncaughtExceptionHandler;

    .line 918
    return-void
.end method
