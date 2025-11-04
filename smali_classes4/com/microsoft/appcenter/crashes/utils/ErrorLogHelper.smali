.class public Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;
.super Ljava/lang/Object;
.source "ErrorLogHelper.java"


# static fields
.field static final CAUSE_LIMIT:I = 0x10
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final CAUSE_LIMIT_HALF:I = 0x8

.field public static final DEVICE_INFO_FILE:Ljava/lang/String; = "deviceInfo"

.field static DEVICE_INFO_KEY:Ljava/lang/String; = null
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final ERROR_DIRECTORY:Ljava/lang/String; = "error"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final ERROR_LOG_FILE_EXTENSION:Ljava/lang/String; = ".json"

.field public static final FRAME_LIMIT:I = 0x100
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final FRAME_LIMIT_HALF:I = 0x80

.field private static final MAX_PROPERTY_COUNT:I = 0x14

.field public static final MAX_PROPERTY_ITEM_LENGTH:I = 0x7d

.field private static final MINIDUMP_DIRECTORY:Ljava/lang/String; = "minidump"

.field public static final MINIDUMP_FILE_EXTENSION:Ljava/lang/String; = ".dmp"

.field private static final NEW_MINIDUMP_DIRECTORY:Ljava/lang/String; = "new"

.field private static final PENDING_MINIDUMP_DIRECTORY:Ljava/lang/String; = "pending"

.field public static final THROWABLE_FILE_EXTENSION:Ljava/lang/String; = ".throwable"

.field static USER_ID_KEY:Ljava/lang/String;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static sErrorLogDirectory:Ljava/io/File;

.field private static sNewMinidumpDirectory:Ljava/io/File;

.field private static sPendingMinidumpDirectory:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 145
    const-string/jumbo v0, "DEVICE_INFO"

    sput-object v0, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->DEVICE_INFO_KEY:Ljava/lang/String;

    .line 151
    const-string/jumbo v0, "USER_ID"

    sput-object v0, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->USER_ID_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/io/File;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->sNewMinidumpDirectory:Ljava/io/File;

    return-object v0
.end method

.method public static cleanPendingMinidumps()V
    .locals 1

    .prologue
    .line 670
    invoke-static {}, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->getPendingMinidumpDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/appcenter/utils/storage/FileManager;->cleanDirectory(Ljava/io/File;)V

    .line 671
    return-void
.end method

.method public static clearStaticState()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 694
    const/4 v0, 0x0

    sput-object v0, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->sNewMinidumpDirectory:Ljava/io/File;

    .line 695
    const/4 v0, 0x0

    sput-object v0, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->sErrorLogDirectory:Ljava/io/File;

    .line 696
    const/4 v0, 0x0

    sput-object v0, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->sPendingMinidumpDirectory:Ljava/io/File;

    .line 697
    return-void
.end method

.method public static createErrorLog(Landroid/content/Context;Ljava/lang/Thread;Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;Ljava/util/Map;JZ)Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;
    .locals 20
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Thread;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Thread;",
            "Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Thread;",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;JZ)",
            "Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;"
        }
    .end annotation

    .prologue
    .line 162
    move-object/from16 v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object/from16 v1, p1

    .local v1, "thread":Ljava/lang/Thread;
    move-object/from16 v2, p2

    .local v2, "exception":Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;
    move-object/from16 v3, p3

    .local v3, "allStackTraces":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    move-wide/from16 v4, p4

    .local v4, "initializeTimestamp":J
    move/from16 v6, p6

    .local v6, "fatal":Z
    new-instance v13, Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    invoke-direct {v14}, Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;-><init>()V

    move-object v7, v13

    .line 163
    .local v7, "errorLog":Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;
    move-object v13, v7

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;->setId(Ljava/util/UUID;)V

    .line 166
    move-object v13, v7

    new-instance v14, Ljava/util/Date;

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    invoke-direct {v15}, Ljava/util/Date;-><init>()V

    invoke-virtual {v13, v14}, Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;->setTimestamp(Ljava/util/Date;)V

    .line 169
    move-object v13, v7

    invoke-static {}, Lcom/microsoft/appcenter/utils/context/UserIdContext;->getInstance()Lcom/microsoft/appcenter/utils/context/UserIdContext;

    move-result-object v14

    invoke-virtual {v14}, Lcom/microsoft/appcenter/utils/context/UserIdContext;->getUserId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;->setUserId(Ljava/lang/String;)V

    .line 173
    move-object v13, v7

    move-object v14, v0

    :try_start_0
    invoke-static {v14}, Lcom/microsoft/appcenter/utils/DeviceInfoHelper;->getDeviceInfo(Landroid/content/Context;)Lcom/microsoft/appcenter/ingestion/models/Device;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;->setDevice(Lcom/microsoft/appcenter/ingestion/models/Device;)V
    :try_end_0
    .catch Lcom/microsoft/appcenter/utils/DeviceInfoHelper$DeviceInfoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    .line 179
    :goto_0
    move-object v13, v7

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;->setProcessId(Ljava/lang/Integer;)V

    .line 180
    move-object v13, v0

    const-string/jumbo v14, "activity"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/ActivityManager;

    move-object v8, v13

    .line 181
    .local v8, "activityManager":Landroid/app/ActivityManager;
    move-object v13, v8

    if-eqz v13, :cond_1

    .line 182
    move-object v13, v8

    invoke-virtual {v13}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v13

    move-object v9, v13

    .line 183
    .local v9, "runningAppProcesses":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    move-object v13, v9

    if-eqz v13, :cond_1

    .line 184
    move-object v13, v9

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move-object v10, v13

    :goto_1
    move-object v13, v10

    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    move-object v13, v10

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object v11, v13

    .line 185
    .local v11, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    move-object v13, v11

    iget v13, v13, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v14

    if-ne v13, v14, :cond_0

    .line 186
    move-object v13, v7

    move-object v14, v11

    iget-object v14, v14, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;->setProcessName(Ljava/lang/String;)V

    .line 188
    :cond_0
    goto :goto_1

    .line 174
    .end local v8    # "activityManager":Landroid/app/ActivityManager;
    .end local v9    # "runningAppProcesses":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v11    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :catch_0
    move-exception v13

    move-object v8, v13

    .line 175
    .local v8, "e":Lcom/microsoft/appcenter/utils/DeviceInfoHelper$DeviceInfoException;
    const-string/jumbo v13, "AppCenterCrashes"

    const-string/jumbo v14, "Could not attach device properties snapshot to error log, will attach at sending time"

    move-object v15, v8

    invoke-static {v13, v14, v15}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 196
    .local v8, "activityManager":Landroid/app/ActivityManager;
    :cond_1
    move-object v13, v7

    invoke-virtual {v13}, Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;->getProcessName()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_2

    .line 197
    move-object v13, v7

    const-string/jumbo v14, ""

    invoke-virtual {v13, v14}, Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;->setProcessName(Ljava/lang/String;)V

    .line 201
    :cond_2
    move-object v13, v7

    invoke-static {}, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->getArchitecture()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;->setArchitecture(Ljava/lang/String;)V

    .line 204
    move-object v13, v7

    move-object v14, v1

    invoke-virtual {v14}, Ljava/lang/Thread;->getId()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;->setErrorThreadId(Ljava/lang/Long;)V

    .line 205
    move-object v13, v7

    move-object v14, v1

    invoke-virtual {v14}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;->setErrorThreadName(Ljava/lang/String;)V

    .line 208
    move-object v13, v7

    move v14, v6

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;->setFatal(Ljava/lang/Boolean;)V

    .line 211
    move-object v13, v7

    new-instance v14, Ljava/util/Date;

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    move-wide/from16 v16, v4

    invoke-direct/range {v15 .. v17}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v13, v14}, Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;->setAppLaunchTimestamp(Ljava/util/Date;)V

    .line 214
    move-object v13, v7

    move-object v14, v2

    invoke-virtual {v13, v14}, Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;->setException(Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;)V

    .line 217
    new-instance v13, Ljava/util/ArrayList;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    move-object v15, v3

    invoke-interface {v15}, Ljava/util/Map;->size()I

    move-result v15

    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(I)V

    move-object v9, v13

    .line 218
    .local v9, "threads":Ljava/util/List;, "Ljava/util/List<Lcom/microsoft/appcenter/crashes/ingestion/models/Thread;>;"
    move-object v13, v3

    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move-object v10, v13

    :goto_2
    move-object v13, v10

    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    move-object v13, v10

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    move-object v11, v13

    .line 219
    .local v11, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    new-instance v13, Lcom/microsoft/appcenter/crashes/ingestion/models/Thread;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    invoke-direct {v14}, Lcom/microsoft/appcenter/crashes/ingestion/models/Thread;-><init>()V

    move-object v12, v13

    .line 220
    .local v12, "javaThread":Lcom/microsoft/appcenter/crashes/ingestion/models/Thread;
    move-object v13, v12

    move-object v14, v11

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Thread;

    invoke-virtual {v14}, Ljava/lang/Thread;->getId()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Lcom/microsoft/appcenter/crashes/ingestion/models/Thread;->setId(J)V

    .line 221
    move-object v13, v12

    move-object v14, v11

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Thread;

    invoke-virtual {v14}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/microsoft/appcenter/crashes/ingestion/models/Thread;->setName(Ljava/lang/String;)V

    .line 222
    move-object v13, v12

    move-object v14, v11

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/StackTraceElement;

    invoke-static {v14}, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->getModelFramesFromStackTrace([Ljava/lang/StackTraceElement;)Ljava/util/List;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/microsoft/appcenter/crashes/ingestion/models/Thread;->setFrames(Ljava/util/List;)V

    .line 223
    move-object v13, v9

    move-object v14, v12

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v13

    .line 224
    goto :goto_2

    .line 225
    .end local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    .end local v12    # "javaThread":Lcom/microsoft/appcenter/crashes/ingestion/models/Thread;
    :cond_3
    move-object v13, v7

    move-object v14, v9

    invoke-virtual {v13, v14}, Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;->setThreads(Ljava/util/List;)V

    .line 226
    move-object v13, v7

    move-object v0, v13

    .end local v0    # "context":Landroid/content/Context;
    return-object v0
.end method

.method public static createErrorLog(Landroid/content/Context;Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/util/Map;J)Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;
    .locals 14
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Thread;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Thread;",
            "Ljava/lang/Throwable;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Thread;",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;J)",
            "Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;"
        }
    .end annotation

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object v1, p1

    .local v1, "thread":Ljava/lang/Thread;
    move-object/from16 v2, p2

    .local v2, "throwable":Ljava/lang/Throwable;
    move-object/from16 v3, p3

    .local v3, "allStackTraces":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    move-wide/from16 v4, p4

    .local v4, "initializeTimestamp":J
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    invoke-static {v8}, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->getModelExceptionFromThrowable(Ljava/lang/Throwable;)Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;

    move-result-object v8

    move-object v9, v3

    move-wide v10, v4

    const/4 v12, 0x1

    invoke-static/range {v6 .. v12}, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->createErrorLog(Landroid/content/Context;Ljava/lang/Thread;Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;Ljava/util/Map;JZ)Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "context":Landroid/content/Context;
    return-object v0
.end method

.method private static getArchitecture()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 232
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 233
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 235
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    goto :goto_0
.end method

.method static getContextInformation(Ljava/io/File;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 380
    move-object v0, p0

    .local v0, "logFolder":Ljava/io/File;
    move-object v4, v0

    new-instance v5, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper$2;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper$2;-><init>()V

    invoke-virtual {v4, v5}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v4

    move-object v1, v4

    .line 387
    .local v1, "files":[Ljava/io/File;
    move-object v4, v1

    if-eqz v4, :cond_0

    move-object v4, v1

    array-length v4, v4

    if-nez v4, :cond_1

    .line 388
    :cond_0
    const-string/jumbo v4, "AppCenterCrashes"

    const-string/jumbo v5, "No stored deviceinfo file found in a minidump folder."

    invoke-static {v4, v5}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    const/4 v4, 0x0

    move-object v0, v4

    .line 397
    .end local v0    # "logFolder":Ljava/io/File;
    :goto_0
    return-object v0

    .line 391
    .restart local v0    # "logFolder":Ljava/io/File;
    :cond_1
    move-object v4, v1

    const/4 v5, 0x0

    aget-object v4, v4, v5

    move-object v2, v4

    .line 392
    .local v2, "deviceInfoFile":Ljava/io/File;
    move-object v4, v2

    invoke-static {v4}, Lcom/microsoft/appcenter/utils/storage/FileManager;->read(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 393
    .local v3, "contextInfoString":Ljava/lang/String;
    move-object v4, v3

    if-nez v4, :cond_2

    .line 394
    const-string/jumbo v4, "AppCenterCrashes"

    const-string/jumbo v5, "Failed to read stored device info."

    invoke-static {v4, v5}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0

    .line 397
    :cond_2
    move-object v4, v3

    move-object v0, v4

    goto :goto_0
.end method

.method public static getErrorReportFromErrorLog(Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;Ljava/lang/String;)Lcom/microsoft/appcenter/crashes/model/ErrorReport;
    .locals 6
    .param p0    # Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 532
    move-object v0, p0

    .local v0, "log":Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;
    move-object v1, p1

    .local v1, "stackTrace":Ljava/lang/String;
    new-instance v3, Lcom/microsoft/appcenter/crashes/model/ErrorReport;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lcom/microsoft/appcenter/crashes/model/ErrorReport;-><init>()V

    move-object v2, v3

    .line 533
    .local v2, "report":Lcom/microsoft/appcenter/crashes/model/ErrorReport;
    move-object v3, v2

    move-object v4, v0

    invoke-virtual {v4}, Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;->getId()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/microsoft/appcenter/crashes/model/ErrorReport;->setId(Ljava/lang/String;)V

    .line 534
    move-object v3, v2

    move-object v4, v0

    invoke-virtual {v4}, Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;->getErrorThreadName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/microsoft/appcenter/crashes/model/ErrorReport;->setThreadName(Ljava/lang/String;)V

    .line 535
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/microsoft/appcenter/crashes/model/ErrorReport;->setStackTrace(Ljava/lang/String;)V

    .line 536
    move-object v3, v2

    move-object v4, v0

    invoke-virtual {v4}, Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;->getAppLaunchTimestamp()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/microsoft/appcenter/crashes/model/ErrorReport;->setAppStartTime(Ljava/util/Date;)V

    .line 537
    move-object v3, v2

    move-object v4, v0

    invoke-virtual {v4}, Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;->getTimestamp()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/microsoft/appcenter/crashes/model/ErrorReport;->setAppErrorTime(Ljava/util/Date;)V

    .line 538
    move-object v3, v2

    move-object v4, v0

    invoke-virtual {v4}, Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;->getDevice()Lcom/microsoft/appcenter/ingestion/models/Device;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/microsoft/appcenter/crashes/model/ErrorReport;->setDevice(Lcom/microsoft/appcenter/ingestion/models/Device;)V

    .line 539
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "log":Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;
    return-object v0
.end method

.method public static declared-synchronized getErrorStorageDirectory()Ljava/io/File;
    .locals 6
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 241
    const-class v4, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;

    monitor-enter v4

    :try_start_0
    sget-object v0, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->sErrorLogDirectory:Ljava/io/File;

    if-nez v0, :cond_0

    .line 242
    new-instance v0, Ljava/io/File;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    sget-object v2, Lcom/microsoft/appcenter/Constants;->FILES_PATH:Ljava/lang/String;

    const-string/jumbo v3, "error"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->sErrorLogDirectory:Ljava/io/File;

    .line 243
    sget-object v0, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->sErrorLogDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/appcenter/utils/storage/FileManager;->mkdir(Ljava/lang/String;)V

    .line 245
    :cond_0
    sget-object v0, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->sErrorLogDirectory:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    return-object v0

    .line 241
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method public static getLastErrorLogFile()Ljava/io/File;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 478
    invoke-static {}, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->getErrorStorageDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v1, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper$4;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper$4;-><init>()V

    invoke-static {v0, v1}, Lcom/microsoft/appcenter/utils/storage/FileManager;->lastModifiedFile(Ljava/io/File;Ljava/io/FilenameFilter;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getModelExceptionFromThrowable(Ljava/lang/Throwable;)Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;
    .locals 12
    .param p0    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 560
    move-object v0, p0

    .local v0, "t":Ljava/lang/Throwable;
    const/4 v7, 0x0

    move-object v1, v7

    .line 561
    .local v1, "topException":Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;
    const/4 v7, 0x0

    move-object v2, v7

    .line 562
    .local v2, "parentException":Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;
    new-instance v7, Ljava/util/LinkedList;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    move-object v3, v7

    .line 563
    .local v3, "causeChain":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    move-object v7, v0

    move-object v4, v7

    .local v4, "cause":Ljava/lang/Throwable;
    :goto_0
    move-object v7, v4

    if-eqz v7, :cond_0

    .line 564
    move-object v7, v3

    move-object v8, v4

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 563
    move-object v7, v4

    invoke-virtual {v7}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    move-object v4, v7

    goto :goto_0

    .line 566
    :cond_0
    move-object v7, v3

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/16 v8, 0x10

    if-le v7, v8, :cond_1

    .line 567
    const-string/jumbo v7, "AppCenterCrashes"

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Crash causes truncated from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v3

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " causes."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    move-object v7, v3

    const/16 v8, 0x8

    move-object v9, v3

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    const/16 v10, 0x8

    add-int/lit8 v9, v9, -0x8

    invoke-interface {v7, v8, v9}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 570
    :cond_1
    move-object v7, v3

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v4, v7

    .end local v4    # "cause":Ljava/lang/Throwable;
    :goto_1
    move-object v7, v4

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v7, v4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Throwable;

    move-object v5, v7

    .line 571
    .local v5, "cause":Ljava/lang/Throwable;
    new-instance v7, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;-><init>()V

    move-object v6, v7

    .line 572
    .local v6, "exception":Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;
    move-object v7, v6

    move-object v8, v5

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->setType(Ljava/lang/String;)V

    .line 573
    move-object v7, v6

    move-object v8, v5

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->setMessage(Ljava/lang/String;)V

    .line 574
    move-object v7, v6

    move-object v8, v5

    invoke-static {v8}, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->getModelFramesFromStackTrace(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->setFrames(Ljava/util/List;)V

    .line 575
    move-object v7, v1

    if-nez v7, :cond_2

    .line 576
    move-object v7, v6

    move-object v1, v7

    .line 580
    :goto_2
    move-object v7, v6

    move-object v2, v7

    .line 581
    goto :goto_1

    .line 578
    :cond_2
    move-object v7, v2

    move-object v8, v6

    invoke-static {v8}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->setInnerExceptions(Ljava/util/List;)V

    goto :goto_2

    .line 584
    .end local v5    # "cause":Ljava/lang/Throwable;
    .end local v6    # "exception":Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;
    :cond_3
    move-object v7, v1

    move-object v0, v7

    .end local v0    # "t":Ljava/lang/Throwable;
    return-object v0
.end method

.method private static getModelFramesFromStackTrace(Ljava/lang/Throwable;)Ljava/util/List;
    .locals 9
    .param p0    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/microsoft/appcenter/crashes/ingestion/models/StackFrame;",
            ">;"
        }
    .end annotation

    .prologue
    .line 589
    move-object v0, p0

    .local v0, "throwable":Ljava/lang/Throwable;
    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    move-object v1, v3

    .line 590
    .local v1, "stackTrace":[Ljava/lang/StackTraceElement;
    move-object v3, v1

    array-length v3, v3

    const/16 v4, 0x100

    if-le v3, v4, :cond_0

    .line 591
    const/16 v3, 0x100

    new-array v3, v3, [Ljava/lang/StackTraceElement;

    move-object v2, v3

    .line 592
    .local v2, "stackTraceTruncated":[Ljava/lang/StackTraceElement;
    move-object v3, v1

    const/4 v4, 0x0

    move-object v5, v2

    const/4 v6, 0x0

    const/16 v7, 0x80

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 593
    move-object v3, v1

    move-object v4, v1

    array-length v4, v4

    const/16 v5, 0x80

    add-int/lit8 v4, v4, -0x80

    move-object v5, v2

    const/16 v6, 0x80

    const/16 v7, 0x80

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 594
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 595
    const-string/jumbo v3, "AppCenterCrashes"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Crash frames truncated from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v2

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " frames."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    move-object v3, v2

    move-object v1, v3

    .line 598
    .end local v2    # "stackTraceTruncated":[Ljava/lang/StackTraceElement;
    :cond_0
    move-object v3, v1

    invoke-static {v3}, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->getModelFramesFromStackTrace([Ljava/lang/StackTraceElement;)Ljava/util/List;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "throwable":Ljava/lang/Throwable;
    return-object v0
.end method

.method private static getModelFramesFromStackTrace([Ljava/lang/StackTraceElement;)Ljava/util/List;
    .locals 9
    .param p0    # [Ljava/lang/StackTraceElement;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/StackTraceElement;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/microsoft/appcenter/crashes/ingestion/models/StackFrame;",
            ">;"
        }
    .end annotation

    .prologue
    .line 603
    move-object v0, p0

    .local v0, "stackTrace":[Ljava/lang/StackTraceElement;
    new-instance v6, Ljava/util/ArrayList;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v6

    .line 604
    .local v1, "stackFrames":Ljava/util/List;, "Ljava/util/List<Lcom/microsoft/appcenter/crashes/ingestion/models/StackFrame;>;"
    move-object v6, v0

    move-object v2, v6

    move-object v6, v2

    array-length v6, v6

    move v3, v6

    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_0

    move-object v6, v2

    move v7, v4

    aget-object v6, v6, v7

    move-object v5, v6

    .line 605
    .local v5, "stackTraceElement":Ljava/lang/StackTraceElement;
    move-object v6, v1

    move-object v7, v5

    invoke-static {v7}, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->getModelStackFrame(Ljava/lang/StackTraceElement;)Lcom/microsoft/appcenter/crashes/ingestion/models/StackFrame;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 604
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 607
    .end local v5    # "stackTraceElement":Ljava/lang/StackTraceElement;
    :cond_0
    move-object v6, v1

    move-object v0, v6

    .end local v0    # "stackTrace":[Ljava/lang/StackTraceElement;
    return-object v0
.end method

.method private static getModelStackFrame(Ljava/lang/StackTraceElement;)Lcom/microsoft/appcenter/crashes/ingestion/models/StackFrame;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 612
    move-object v0, p0

    .local v0, "stackTraceElement":Ljava/lang/StackTraceElement;
    new-instance v2, Lcom/microsoft/appcenter/crashes/ingestion/models/StackFrame;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/microsoft/appcenter/crashes/ingestion/models/StackFrame;-><init>()V

    move-object v1, v2

    .line 613
    .local v1, "stackFrame":Lcom/microsoft/appcenter/crashes/ingestion/models/StackFrame;
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/crashes/ingestion/models/StackFrame;->setClassName(Ljava/lang/String;)V

    .line 614
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/crashes/ingestion/models/StackFrame;->setMethodName(Ljava/lang/String;)V

    .line 615
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/crashes/ingestion/models/StackFrame;->setLineNumber(Ljava/lang/Integer;)V

    .line 616
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/crashes/ingestion/models/StackFrame;->setFileName(Ljava/lang/String;)V

    .line 617
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "stackTraceElement":Ljava/lang/StackTraceElement;
    return-object v0
.end method

.method public static declared-synchronized getNewMinidumpDirectory()Ljava/io/File;
    .locals 8
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 255
    const-class v6, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;

    monitor-enter v6

    :try_start_0
    invoke-static {}, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->getErrorStorageDirectory()Ljava/io/File;

    move-result-object v2

    move-object v0, v2

    .line 256
    .local v0, "errorStorageDirectory":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "minidump"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .line 257
    .local v1, "minidumpDirectory":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v1

    const-string/jumbo v5, "new"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    .end local v0    # "errorStorageDirectory":Ljava/io/File;
    monitor-exit v6

    return-object v0

    .line 255
    .end local v1    # "minidumpDirectory":Ljava/io/File;
    .restart local v0    # "errorStorageDirectory":Ljava/io/File;
    :catchall_0
    move-exception v0

    monitor-exit v6

    .end local v0    # "errorStorageDirectory":Ljava/io/File;
    throw v0
.end method

.method public static getNewMinidumpFiles()[Ljava/io/File;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 342
    invoke-static {}, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->getNewMinidumpDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    move-object v0, v1

    .line 343
    .local v0, "files":[Ljava/io/File;
    move-object v1, v0

    if-eqz v1, :cond_0

    move-object v1, v0

    :goto_0
    move-object v0, v1

    .end local v0    # "files":[Ljava/io/File;
    return-object v0

    .restart local v0    # "files":[Ljava/io/File;
    :cond_0
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/io/File;

    goto :goto_0
.end method

.method public static declared-synchronized getNewMinidumpSubfolder()Ljava/io/File;
    .locals 7
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 267
    const-class v5, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;

    monitor-enter v5

    :try_start_0
    sget-object v1, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->sNewMinidumpDirectory:Ljava/io/File;

    if-nez v1, :cond_0

    .line 268
    invoke-static {}, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->getNewMinidumpDirectory()Ljava/io/File;

    move-result-object v1

    move-object v0, v1

    .line 269
    .local v0, "minidumpDirectory":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    move-object v3, v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v1, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->sNewMinidumpDirectory:Ljava/io/File;

    .line 270
    sget-object v1, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->sNewMinidumpDirectory:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/appcenter/utils/storage/FileManager;->mkdir(Ljava/lang/String;)V

    .line 272
    :cond_0
    sget-object v1, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->sNewMinidumpDirectory:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .end local v0    # "minidumpDirectory":Ljava/io/File;
    monitor-exit v5

    return-object v0

    .line 267
    .restart local v0    # "minidumpDirectory":Ljava/io/File;
    :catchall_0
    move-exception v0

    monitor-exit v5

    .end local v0    # "minidumpDirectory":Ljava/io/File;
    throw v0
.end method

.method public static declared-synchronized getNewMinidumpSubfolderWithContextData(Landroid/content/Context;)Ljava/io/File;
    .locals 14
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 285
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    const-class v12, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;

    monitor-enter v12

    :try_start_0
    invoke-static {}, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->getNewMinidumpSubfolder()Ljava/io/File;

    move-result-object v8

    move-object v1, v8

    .line 286
    .local v1, "directorySubfolder":Ljava/io/File;
    new-instance v8, Ljava/io/File;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v1

    const-string/jumbo v11, "deviceInfo"

    invoke-direct {v9, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v8

    .line 288
    .local v2, "deviceInfoFile":Ljava/io/File;
    move-object v8, v0

    :try_start_1
    invoke-static {v8}, Lcom/microsoft/appcenter/utils/DeviceInfoHelper;->getDeviceInfo(Landroid/content/Context;)Lcom/microsoft/appcenter/ingestion/models/Device;

    move-result-object v8

    move-object v3, v8

    .line 289
    .local v3, "deviceInfo":Lcom/microsoft/appcenter/ingestion/models/Device;
    invoke-static {}, Lcom/microsoft/appcenter/utils/context/UserIdContext;->getInstance()Lcom/microsoft/appcenter/utils/context/UserIdContext;

    move-result-object v8

    invoke-virtual {v8}, Lcom/microsoft/appcenter/utils/context/UserIdContext;->getUserId()Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    .line 290
    .local v4, "userIdContext":Ljava/lang/String;
    move-object v8, v3

    const-string/jumbo v9, "appcenter.ndk"

    invoke-virtual {v8, v9}, Lcom/microsoft/appcenter/ingestion/models/Device;->setWrapperSdkName(Ljava/lang/String;)V

    .line 293
    new-instance v8, Lorg/json/JSONStringer;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Lorg/json/JSONStringer;-><init>()V

    move-object v5, v8

    .line 294
    .local v5, "writer":Lorg/json/JSONStringer;
    move-object v8, v5

    invoke-virtual {v8}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v8

    .line 295
    move-object v8, v3

    move-object v9, v5

    invoke-virtual {v8, v9}, Lcom/microsoft/appcenter/ingestion/models/Device;->write(Lorg/json/JSONStringer;)V

    .line 296
    move-object v8, v5

    invoke-virtual {v8}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    move-result-object v8

    .line 297
    move-object v8, v5

    invoke-virtual {v8}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    .line 298
    .local v6, "deviceInfoString":Ljava/lang/String;
    new-instance v8, Lorg/json/JSONObject;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    move-object v7, v8

    .line 299
    .local v7, "jsonObject":Lorg/json/JSONObject;
    move-object v8, v7

    sget-object v9, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->DEVICE_INFO_KEY:Ljava/lang/String;

    move-object v10, v6

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v8

    .line 300
    move-object v8, v7

    sget-object v9, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->USER_ID_KEY:Ljava/lang/String;

    move-object v10, v4

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v8

    .line 303
    move-object v8, v2

    move-object v9, v7

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/microsoft/appcenter/utils/storage/FileManager;->write(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/microsoft/appcenter/utils/DeviceInfoHelper$DeviceInfoException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 309
    .line 310
    .end local v3    # "deviceInfo":Lcom/microsoft/appcenter/ingestion/models/Device;
    .end local v4    # "userIdContext":Ljava/lang/String;
    .end local v5    # "writer":Lorg/json/JSONStringer;
    .end local v6    # "deviceInfoString":Ljava/lang/String;
    .end local v7    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    move-object v8, v1

    move-object v0, v8

    .end local v0    # "context":Landroid/content/Context;
    monitor-exit v12

    return-object v0

    .line 304
    .restart local v0    # "context":Landroid/content/Context;
    :catch_0
    move-exception v8

    :goto_1
    move-object v3, v8

    .line 305
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v8, "AppCenterCrashes"

    const-string/jumbo v9, "Failed to store device info in a minidump folder."

    move-object v10, v3

    invoke-static {v8, v9, v10}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 308
    move-object v8, v2

    invoke-virtual {v8}, Ljava/io/File;->delete()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v8

    goto :goto_0

    .line 304
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v8

    goto :goto_1

    :catch_2
    move-exception v8

    goto :goto_1

    .line 285
    .end local v1    # "directorySubfolder":Ljava/io/File;
    .end local v2    # "deviceInfoFile":Ljava/io/File;
    :catchall_0
    move-exception v0

    monitor-exit v12

    .end local v0    # "context":Landroid/content/Context;
    throw v0
.end method

.method public static declared-synchronized getPendingMinidumpDirectory()Ljava/io/File;
    .locals 8
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 320
    const-class v6, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;

    monitor-enter v6

    :try_start_0
    sget-object v2, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->sPendingMinidumpDirectory:Ljava/io/File;

    if-nez v2, :cond_0

    .line 321
    invoke-static {}, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->getErrorStorageDirectory()Ljava/io/File;

    move-result-object v2

    move-object v0, v2

    .line 322
    .local v0, "errorStorageDirectory":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "minidump"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .line 323
    .local v1, "minidumpDirectory":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v1

    const-string/jumbo v5, "pending"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v2, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->sPendingMinidumpDirectory:Ljava/io/File;

    .line 324
    sget-object v2, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->sPendingMinidumpDirectory:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/microsoft/appcenter/utils/storage/FileManager;->mkdir(Ljava/lang/String;)V

    .line 326
    :cond_0
    sget-object v2, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->sPendingMinidumpDirectory:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    .end local v0    # "errorStorageDirectory":Ljava/io/File;
    monitor-exit v6

    return-object v0

    .line 320
    .end local v1    # "minidumpDirectory":Ljava/io/File;
    .restart local v0    # "errorStorageDirectory":Ljava/io/File;
    :catchall_0
    move-exception v0

    monitor-exit v6

    .end local v0    # "errorStorageDirectory":Ljava/io/File;
    throw v0
.end method

.method public static getStoredDeviceInfo(Ljava/io/File;)Lcom/microsoft/appcenter/ingestion/models/Device;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 354
    move-object v0, p0

    .local v0, "logFolder":Ljava/io/File;
    move-object v2, v0

    invoke-static {v2}, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->getContextInformation(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 355
    .local v1, "deviceInfoString":Ljava/lang/String;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 356
    const/4 v2, 0x0

    move-object v0, v2

    .line 358
    .end local v0    # "logFolder":Ljava/io/File;
    :goto_0
    return-object v0

    .restart local v0    # "logFolder":Ljava/io/File;
    :cond_0
    move-object v2, v1

    invoke-static {v2}, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->parseDevice(Ljava/lang/String;)Lcom/microsoft/appcenter/ingestion/models/Device;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method static getStoredErrorLogFile(Ljava/util/UUID;)Ljava/io/File;
    .locals 3
    .param p0    # Ljava/util/UUID;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 501
    move-object v0, p0

    .local v0, "id":Ljava/util/UUID;
    move-object v1, v0

    const-string/jumbo v2, ".json"

    invoke-static {v1, v2}, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->getStoredFile(Ljava/util/UUID;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "id":Ljava/util/UUID;
    return-object v0
.end method

.method public static getStoredErrorLogFiles()[Ljava/io/File;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 331
    invoke-static {}, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->getErrorStorageDirectory()Ljava/io/File;

    move-result-object v1

    new-instance v2, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper$1;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper$1;-><init>()V

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    move-object v0, v1

    .line 337
    .local v0, "files":[Ljava/io/File;
    move-object v1, v0

    if-eqz v1, :cond_0

    move-object v1, v0

    :goto_0
    move-object v0, v1

    .end local v0    # "files":[Ljava/io/File;
    return-object v0

    .restart local v0    # "files":[Ljava/io/File;
    :cond_0
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/io/File;

    goto :goto_0
.end method

.method private static getStoredFile(Ljava/util/UUID;Ljava/lang/String;)Ljava/io/File;
    .locals 9
    .param p0    # Ljava/util/UUID;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 548
    move-object v0, p0

    .local v0, "id":Ljava/util/UUID;
    move-object v1, p1

    .local v1, "extension":Ljava/lang/String;
    invoke-static {}, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->getErrorStorageDirectory()Ljava/io/File;

    move-result-object v3

    new-instance v4, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper$6;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v5, v6, v7}, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper$6;-><init>(Ljava/util/UUID;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v3

    move-object v2, v3

    .line 555
    .local v2, "files":[Ljava/io/File;
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    array-length v3, v3

    if-lez v3, :cond_0

    move-object v3, v2

    const/4 v4, 0x0

    aget-object v3, v3, v4

    :goto_0
    move-object v0, v3

    .end local v0    # "id":Ljava/util/UUID;
    return-object v0

    .restart local v0    # "id":Ljava/util/UUID;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getStoredThrowableFile(Ljava/util/UUID;)Ljava/io/File;
    .locals 3
    .param p0    # Ljava/util/UUID;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 488
    move-object v0, p0

    .local v0, "id":Ljava/util/UUID;
    move-object v1, v0

    const-string/jumbo v2, ".throwable"

    invoke-static {v1, v2}, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->getStoredFile(Ljava/util/UUID;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "id":Ljava/util/UUID;
    return-object v0
.end method

.method public static getStoredUserInfo(Ljava/io/File;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 367
    move-object v0, p0

    .local v0, "logFolder":Ljava/io/File;
    move-object v2, v0

    invoke-static {v2}, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->getContextInformation(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 368
    .local v1, "userInformationString":Ljava/lang/String;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 369
    const/4 v2, 0x0

    move-object v0, v2

    .line 371
    .end local v0    # "logFolder":Ljava/io/File;
    :goto_0
    return-object v0

    .restart local v0    # "logFolder":Ljava/io/File;
    :cond_0
    move-object v2, v1

    invoke-static {v2}, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->parseUserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method static parseDevice(Ljava/lang/String;)Lcom/microsoft/appcenter/ingestion/models/Device;
    .locals 9
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 426
    move-object v0, p0

    .local v0, "contextInformation":Ljava/lang/String;
    :try_start_0
    new-instance v4, Lcom/microsoft/appcenter/ingestion/models/Device;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Lcom/microsoft/appcenter/ingestion/models/Device;-><init>()V

    move-object v1, v4

    .line 427
    .local v1, "device":Lcom/microsoft/appcenter/ingestion/models/Device;
    new-instance v4, Lorg/json/JSONObject;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    .line 429
    .local v2, "jsonObject":Lorg/json/JSONObject;
    move-object v4, v2

    sget-object v5, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->DEVICE_INFO_KEY:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 430
    new-instance v4, Lorg/json/JSONObject;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v2

    sget-object v7, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->DEVICE_INFO_KEY:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    .line 434
    .local v3, "deviceJson":Lorg/json/JSONObject;
    :goto_0
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v4, v5}, Lcom/microsoft/appcenter/ingestion/models/Device;->read(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    move-object v4, v1

    move-object v0, v4

    .line 439
    .end local v0    # "contextInformation":Ljava/lang/String;
    .end local v1    # "device":Lcom/microsoft/appcenter/ingestion/models/Device;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "deviceJson":Lorg/json/JSONObject;
    :goto_1
    return-object v0

    .line 432
    .restart local v0    # "contextInformation":Ljava/lang/String;
    .restart local v1    # "device":Lcom/microsoft/appcenter/ingestion/models/Device;
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    move-object v4, v2

    move-object v3, v4

    .restart local v3    # "deviceJson":Lorg/json/JSONObject;
    goto :goto_0

    .line 436
    .end local v1    # "device":Lcom/microsoft/appcenter/ingestion/models/Device;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "deviceJson":Lorg/json/JSONObject;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 437
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v4, "AppCenterCrashes"

    const-string/jumbo v5, "Failed to deserialize device info."

    move-object v6, v1

    invoke-static {v4, v5, v6}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 439
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_1
.end method

.method public static parseLogFolderUuid(Ljava/io/File;)Ljava/util/UUID;
    .locals 6
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 681
    move-object v0, p0

    .local v0, "logFolder":Ljava/io/File;
    const/4 v3, 0x0

    move-object v1, v3

    .line 682
    .local v1, "uuid":Ljava/util/UUID;
    move-object v3, v0

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 684
    move-object v3, v0

    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v1, v3

    .line 687
    .line 689
    :cond_0
    :goto_0
    move-object v3, v1

    if-nez v3, :cond_1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    :goto_1
    move-object v0, v3

    .end local v0    # "logFolder":Ljava/io/File;
    return-object v0

    .line 685
    .restart local v0    # "logFolder":Ljava/io/File;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 686
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v3, "AppCenterCrashes"

    const-string/jumbo v4, "Cannot parse minidump folder name to UUID."

    move-object v5, v2

    invoke-static {v3, v4, v5}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 689
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    move-object v3, v1

    goto :goto_1
.end method

.method static parseUserId(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 408
    move-object v0, p0

    .local v0, "contextInformation":Ljava/lang/String;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 409
    .local v1, "jsonObject":Lorg/json/JSONObject;
    move-object v2, v1

    sget-object v3, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->USER_ID_KEY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 410
    move-object v2, v1

    sget-object v3, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->USER_ID_KEY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v0, v2

    .line 415
    .end local v0    # "contextInformation":Ljava/lang/String;
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return-object v0

    .line 414
    .line 415
    .restart local v0    # "contextInformation":Ljava/lang/String;
    :cond_0
    :goto_1
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0

    .line 412
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 413
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "AppCenterCrashes"

    const-string/jumbo v3, "Failed to deserialize user info."

    move-object v4, v1

    invoke-static {v2, v3, v4}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static removeLostThrowableFiles()V
    .locals 9

    .prologue
    .line 516
    invoke-static {}, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->getErrorStorageDirectory()Ljava/io/File;

    move-result-object v5

    new-instance v6, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper$5;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper$5;-><init>()V

    invoke-virtual {v5, v6}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v5

    move-object v0, v5

    .line 523
    .local v0, "throwableFiles":[Ljava/io/File;
    move-object v5, v0

    if-eqz v5, :cond_0

    move-object v5, v0

    array-length v5, v5

    if-lez v5, :cond_0

    .line 524
    move-object v5, v0

    move-object v1, v5

    move-object v5, v1

    array-length v5, v5

    move v2, v5

    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_0

    move-object v5, v1

    move v6, v3

    aget-object v5, v5, v6

    move-object v4, v5

    .line 525
    .local v4, "file":Ljava/io/File;
    move-object v5, v4

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "\\.[^.]+$"

    const-string/jumbo v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v5

    invoke-static {v5}, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->removeStoredThrowableFile(Ljava/util/UUID;)V

    .line 524
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 528
    .end local v4    # "file":Ljava/io/File;
    :cond_0
    return-void
.end method

.method public static removeMinidumpFolder()V
    .locals 7

    .prologue
    .line 471
    invoke-static {}, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->getErrorStorageDirectory()Ljava/io/File;

    move-result-object v2

    move-object v0, v2

    .line 472
    .local v0, "errorStorageDirectory":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "minidump"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .line 473
    .local v1, "minidumpDirectory":Ljava/io/File;
    move-object v2, v1

    invoke-static {v2}, Lcom/microsoft/appcenter/utils/storage/FileManager;->deleteDirectory(Ljava/io/File;)Z

    move-result v2

    .line 474
    return-void
.end method

.method public static removeStaleMinidumpSubfolders()V
    .locals 9

    .prologue
    .line 448
    invoke-static {}, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->getNewMinidumpDirectory()Ljava/io/File;

    move-result-object v5

    new-instance v6, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper$3;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper$3;-><init>()V

    invoke-virtual {v5, v6}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v5

    move-object v0, v5

    .line 458
    .local v0, "previousSubFolders":[Ljava/io/File;
    move-object v5, v0

    if-eqz v5, :cond_0

    move-object v5, v0

    array-length v5, v5

    if-nez v5, :cond_1

    .line 459
    :cond_0
    const-string/jumbo v5, "AppCenterCrashes"

    const-string/jumbo v6, "No previous minidump sub-folders."

    invoke-static {v5, v6}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    .line 465
    :goto_0
    return-void

    .line 462
    :cond_1
    move-object v5, v0

    move-object v1, v5

    move-object v5, v1

    array-length v5, v5

    move v2, v5

    const/4 v5, 0x0

    move v3, v5

    :goto_1
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_2

    move-object v5, v1

    move v6, v3

    aget-object v5, v5, v6

    move-object v4, v5

    .line 463
    .local v4, "file":Ljava/io/File;
    move-object v5, v4

    invoke-static {v5}, Lcom/microsoft/appcenter/utils/storage/FileManager;->deleteDirectory(Ljava/io/File;)Z

    move-result v5

    .line 462
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 465
    .end local v4    # "file":Ljava/io/File;
    :cond_2
    goto :goto_0
.end method

.method public static removeStoredErrorLogFile(Ljava/util/UUID;)V
    .locals 6
    .param p0    # Ljava/util/UUID;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 505
    move-object v0, p0

    .local v0, "id":Ljava/util/UUID;
    move-object v2, v0

    invoke-static {v2}, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->getStoredErrorLogFile(Ljava/util/UUID;)Ljava/io/File;

    move-result-object v2

    move-object v1, v2

    .line 506
    .local v1, "file":Ljava/io/File;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 507
    const-string/jumbo v2, "AppCenterCrashes"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Deleting error log file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/microsoft/appcenter/utils/AppCenterLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    move-object v2, v1

    invoke-static {v2}, Lcom/microsoft/appcenter/utils/storage/FileManager;->delete(Ljava/io/File;)Z

    move-result v2

    .line 510
    :cond_0
    return-void
.end method

.method public static removeStoredThrowableFile(Ljava/util/UUID;)V
    .locals 6
    .param p0    # Ljava/util/UUID;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 492
    move-object v0, p0

    .local v0, "id":Ljava/util/UUID;
    move-object v2, v0

    invoke-static {v2}, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->getStoredThrowableFile(Ljava/util/UUID;)Ljava/io/File;

    move-result-object v2

    move-object v1, v2

    .line 493
    .local v1, "file":Ljava/io/File;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 494
    const-string/jumbo v2, "AppCenterCrashes"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Deleting throwable file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/microsoft/appcenter/utils/AppCenterLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    move-object v2, v1

    invoke-static {v2}, Lcom/microsoft/appcenter/utils/storage/FileManager;->delete(Ljava/io/File;)Z

    move-result v2

    .line 497
    :cond_0
    return-void
.end method

.method public static setErrorLogDirectory(Ljava/io/File;)V
    .locals 2

    .prologue
    .line 543
    move-object v0, p0

    .local v0, "file":Ljava/io/File;
    move-object v1, v0

    sput-object v1, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->sErrorLogDirectory:Ljava/io/File;

    .line 544
    return-void
.end method

.method public static validateProperties(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 628
    move-object v0, p0

    .local v0, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v1, p1

    .local v1, "logType":Ljava/lang/String;
    move-object v8, v0

    if-nez v8, :cond_0

    .line 629
    const/4 v8, 0x0

    move-object v0, v8

    .line 663
    .end local v0    # "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-object v0

    .line 632
    .restart local v0    # "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    new-instance v8, Ljava/util/HashMap;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    move-object v3, v8

    .line 633
    .local v3, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v8, v0

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v4, v8

    :goto_1
    move-object v8, v4

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v8, v4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    move-object v5, v8

    .line 634
    .local v5, "property":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v8, v5

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object v6, v8

    .line 635
    .local v6, "key":Ljava/lang/String;
    move-object v8, v5

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object v7, v8

    .line 636
    .local v7, "value":Ljava/lang/String;
    move-object v8, v3

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v8

    const/16 v9, 0x14

    if-lt v8, v9, :cond_2

    .line 637
    const-string/jumbo v8, "%s : properties cannot contain more than %s items. Skipping other properties."

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    move-object v12, v1

    aput-object v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x1

    const/16 v12, 0x14

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    move-object v2, v8

    .line 638
    .local v2, "message":Ljava/lang/String;
    const-string/jumbo v8, "AppCenterCrashes"

    move-object v9, v2

    invoke-static {v8, v9}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    .line 663
    .end local v2    # "message":Ljava/lang/String;
    .end local v5    # "property":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    :cond_1
    move-object v8, v3

    move-object v0, v8

    goto :goto_0

    .line 641
    .restart local v5    # "property":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v6    # "key":Ljava/lang/String;
    .restart local v7    # "value":Ljava/lang/String;
    :cond_2
    move-object v8, v6

    if-eqz v8, :cond_3

    move-object v8, v6

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 642
    :cond_3
    const-string/jumbo v8, "%s : a property key cannot be null or empty. Property will be skipped."

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    move-object v12, v1

    aput-object v12, v10, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    move-object v2, v8

    .line 643
    .restart local v2    # "message":Ljava/lang/String;
    const-string/jumbo v8, "AppCenterCrashes"

    move-object v9, v2

    invoke-static {v8, v9}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    goto :goto_1

    .line 646
    .end local v2    # "message":Ljava/lang/String;
    :cond_4
    move-object v8, v7

    if-nez v8, :cond_5

    .line 647
    const-string/jumbo v8, "%s : property \'%s\' : property value cannot be null. Property \'%s\' will be skipped."

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    move-object v12, v1

    aput-object v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x1

    move-object v12, v6

    aput-object v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x2

    move-object v12, v6

    aput-object v12, v10, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    move-object v2, v8

    .line 648
    .restart local v2    # "message":Ljava/lang/String;
    const-string/jumbo v8, "AppCenterCrashes"

    move-object v9, v2

    invoke-static {v8, v9}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    goto/16 :goto_1

    .line 651
    .end local v2    # "message":Ljava/lang/String;
    :cond_5
    move-object v8, v6

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x7d

    if-le v8, v9, :cond_6

    .line 652
    const-string/jumbo v8, "%s : property \'%s\' : property key length cannot be longer than %s characters. Property key will be truncated."

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    move-object v12, v1

    aput-object v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x1

    move-object v12, v6

    aput-object v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x2

    const/16 v12, 0x7d

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    move-object v2, v8

    .line 653
    .restart local v2    # "message":Ljava/lang/String;
    const-string/jumbo v8, "AppCenterCrashes"

    move-object v9, v2

    invoke-static {v8, v9}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    move-object v8, v6

    const/4 v9, 0x0

    const/16 v10, 0x7d

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    .line 656
    .end local v2    # "message":Ljava/lang/String;
    :cond_6
    move-object v8, v7

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x7d

    if-le v8, v9, :cond_7

    .line 657
    const-string/jumbo v8, "%s : property \'%s\' : property value cannot be longer than %s characters. Property value will be truncated."

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    move-object v12, v1

    aput-object v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x1

    move-object v12, v6

    aput-object v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x2

    const/16 v12, 0x7d

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    move-object v2, v8

    .line 658
    .restart local v2    # "message":Ljava/lang/String;
    const-string/jumbo v8, "AppCenterCrashes"

    move-object v9, v2

    invoke-static {v8, v9}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    move-object v8, v7

    const/4 v9, 0x0

    const/16 v10, 0x7d

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 661
    .end local v2    # "message":Ljava/lang/String;
    :cond_7
    move-object v8, v3

    move-object v9, v6

    move-object v10, v7

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 662
    goto/16 :goto_1
.end method
