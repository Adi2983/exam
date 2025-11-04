.class public Lcom/microsoft/appcenter/persistence/DatabasePersistence;
.super Lcom/microsoft/appcenter/persistence/Persistence;
.source "DatabasePersistence.java"


# static fields
.field private static final COLUMN_DATA_TYPE:Ljava/lang/String; = "type"

.field static final COLUMN_GROUP:Ljava/lang/String; = "persistence_group"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final COLUMN_LOG:Ljava/lang/String; = "log"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final COLUMN_PRIORITY:Ljava/lang/String; = "priority"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final COLUMN_TARGET_KEY:Ljava/lang/String; = "target_key"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final COLUMN_TARGET_TOKEN:Ljava/lang/String; = "target_token"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final CREATE_LOGS_SQL:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS `logs`(`oid` INTEGER PRIMARY KEY AUTOINCREMENT,`target_token` TEXT,`type` TEXT,`priority` INTEGER,`log` TEXT,`persistence_group` TEXT,`target_key` TEXT);"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final CREATE_PRIORITY_INDEX_LOGS:Ljava/lang/String; = "CREATE INDEX `ix_logs_priority` ON logs (`priority`)"

.field static final DATABASE:Ljava/lang/String; = "com.microsoft.appcenter.persistence"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final DROP_LOGS_SQL:Ljava/lang/String; = "DROP TABLE `logs`"

.field private static final GET_SORT_ORDER:Ljava/lang/String; = "priority DESC, oid"

.field private static final PAYLOAD_FILE_EXTENSION:Ljava/lang/String; = ".json"

.field private static final PAYLOAD_LARGE_DIRECTORY:Ljava/lang/String; = "/appcenter/database_large_payloads"

.field static final PAYLOAD_MAX_SIZE:I = 0x1e6666
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final SCHEMA:Landroid/content/ContentValues;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final TABLE:Ljava/lang/String; = "logs"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final VERSION:I = 0x6

.field static final VERSION_TIMESTAMP_COLUMN:I = 0x5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field final mDatabaseManager:Lcom/microsoft/appcenter/utils/storage/DatabaseManager;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final mLargePayloadDirectory:Ljava/io/File;

.field private mLargePayloadsSize:J

.field final mPendingDbIdentifiers:Ljava/util/Set;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final mPendingDbIdentifiersGroups:Ljava/util/Map;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 119
    const-string/jumbo v0, ""

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->getContentValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v0

    sput-object v0, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->SCHEMA:Landroid/content/ContentValues;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 205
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/persistence/DatabasePersistence;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x6

    sget-object v5, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->SCHEMA:Landroid/content/ContentValues;

    invoke-direct {v2, v3, v4, v5}, Lcom/microsoft/appcenter/persistence/DatabasePersistence;-><init>(Landroid/content/Context;ILandroid/content/ContentValues;)V

    .line 206
    return-void
.end method

.method constructor <init>(Landroid/content/Context;ILandroid/content/ContentValues;)V
    .locals 18

    .prologue
    .line 215
    move-object/from16 v1, p0

    .local v1, "this":Lcom/microsoft/appcenter/persistence/DatabasePersistence;
    move-object/from16 v2, p1

    .local v2, "context":Landroid/content/Context;
    move/from16 v3, p2

    .local v3, "version":I
    move-object/from16 v4, p3

    .local v4, "schema":Landroid/content/ContentValues;
    move-object v5, v1

    invoke-direct {v5}, Lcom/microsoft/appcenter/persistence/Persistence;-><init>()V

    .line 216
    move-object v5, v1

    move-object v6, v2

    iput-object v6, v5, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mContext:Landroid/content/Context;

    .line 217
    move-object v5, v1

    new-instance v6, Ljava/util/HashMap;

    move-object/from16 v17, v6

    move-object/from16 v6, v17

    move-object/from16 v7, v17

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v6, v5, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mPendingDbIdentifiersGroups:Ljava/util/Map;

    .line 218
    move-object v5, v1

    new-instance v6, Ljava/util/HashSet;

    move-object/from16 v17, v6

    move-object/from16 v6, v17

    move-object/from16 v7, v17

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    iput-object v6, v5, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mPendingDbIdentifiers:Ljava/util/Set;

    .line 219
    move-object v5, v1

    new-instance v6, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;

    move-object/from16 v17, v6

    move-object/from16 v6, v17

    move-object/from16 v7, v17

    move-object v8, v2

    const-string/jumbo v9, "com.microsoft.appcenter.persistence"

    const-string/jumbo v10, "logs"

    move v11, v3

    move-object v12, v4

    const-string/jumbo v13, "CREATE TABLE IF NOT EXISTS `logs`(`oid` INTEGER PRIMARY KEY AUTOINCREMENT,`target_token` TEXT,`type` TEXT,`priority` INTEGER,`log` TEXT,`persistence_group` TEXT,`target_key` TEXT);"

    new-instance v14, Lcom/microsoft/appcenter/persistence/DatabasePersistence$1;

    move-object/from16 v17, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v17

    move-object/from16 v16, v1

    invoke-direct/range {v15 .. v16}, Lcom/microsoft/appcenter/persistence/DatabasePersistence$1;-><init>(Lcom/microsoft/appcenter/persistence/DatabasePersistence;)V

    invoke-direct/range {v7 .. v14}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/content/ContentValues;Ljava/lang/String;Lcom/microsoft/appcenter/utils/storage/DatabaseManager$Listener;)V

    iput-object v6, v5, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mDatabaseManager:Lcom/microsoft/appcenter/utils/storage/DatabaseManager;

    .line 241
    move-object v5, v1

    new-instance v6, Ljava/io/File;

    move-object/from16 v17, v6

    move-object/from16 v6, v17

    move-object/from16 v7, v17

    new-instance v8, Ljava/lang/StringBuilder;

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/microsoft/appcenter/Constants;->FILES_PATH:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "/appcenter/database_large_payloads"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v6, v5, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mLargePayloadDirectory:Ljava/io/File;

    .line 244
    move-object v5, v1

    iget-object v5, v5, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mLargePayloadDirectory:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    move-result v5

    .line 246
    move-object v5, v1

    move-object v6, v1

    invoke-direct {v6}, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->checkLargePayloadFilesAndCollectTheirSize()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mLargePayloadsSize:J

    .line 247
    return-void
.end method

.method private checkLargePayloadFilesAndCollectTheirSize()J
    .locals 27

    .prologue
    .line 663
    move-object/from16 v3, p0

    .local v3, "this":Lcom/microsoft/appcenter/persistence/DatabasePersistence;
    new-instance v22, Lcom/microsoft/appcenter/persistence/DatabasePersistence$2;

    move-object/from16 v26, v22

    move-object/from16 v22, v26

    move-object/from16 v23, v26

    move-object/from16 v24, v3

    invoke-direct/range {v23 .. v24}, Lcom/microsoft/appcenter/persistence/DatabasePersistence$2;-><init>(Lcom/microsoft/appcenter/persistence/DatabasePersistence;)V

    move-object/from16 v4, v22

    .line 669
    .local v4, "filter":Ljava/io/FilenameFilter;
    const-wide/16 v22, 0x0

    move-wide/from16 v5, v22

    .line 670
    .local v5, "size":J
    invoke-static {}, Lcom/microsoft/appcenter/utils/storage/SQLiteUtils;->newSQLiteQueryBuilder()Landroid/database/sqlite/SQLiteQueryBuilder;

    move-result-object v22

    move-object/from16 v7, v22

    .line 671
    .local v7, "builder":Landroid/database/sqlite/SQLiteQueryBuilder;
    move-object/from16 v22, v3

    move-object/from16 v23, v7

    const/16 v24, 0x0

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-direct/range {v22 .. v24}, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->getLogsIds(Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v22

    move-object/from16 v8, v22

    .line 672
    .local v8, "logsIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mLargePayloadDirectory:Ljava/io/File;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v22

    move-object/from16 v9, v22

    .line 673
    .local v9, "groupFiles":[Ljava/io/File;
    move-object/from16 v22, v9

    if-nez v22, :cond_0

    .line 674
    move-wide/from16 v22, v5

    move-wide/from16 v3, v22

    .line 700
    .end local v3    # "this":Lcom/microsoft/appcenter/persistence/DatabasePersistence;
    :goto_0
    return-wide v3

    .line 676
    .restart local v3    # "this":Lcom/microsoft/appcenter/persistence/DatabasePersistence;
    :cond_0
    move-object/from16 v22, v9

    move-object/from16 v10, v22

    move-object/from16 v22, v10

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v11, v22

    const/16 v22, 0x0

    move/from16 v12, v22

    :goto_1
    move/from16 v22, v12

    move/from16 v23, v11

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_5

    move-object/from16 v22, v10

    move/from16 v23, v12

    aget-object v22, v22, v23

    move-object/from16 v13, v22

    .line 677
    .local v13, "groupFile":Ljava/io/File;
    move-object/from16 v22, v13

    move-object/from16 v23, v4

    invoke-virtual/range {v22 .. v23}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v22

    move-object/from16 v14, v22

    .line 678
    .local v14, "files":[Ljava/io/File;
    move-object/from16 v22, v14

    if-nez v22, :cond_2

    .line 679
    .line 676
    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 681
    :cond_2
    move-object/from16 v22, v14

    move-object/from16 v15, v22

    move-object/from16 v22, v15

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v16, v22

    const/16 v22, 0x0

    move/from16 v17, v22

    :goto_2
    move/from16 v22, v17

    move/from16 v23, v16

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_1

    move-object/from16 v22, v15

    move/from16 v23, v17

    aget-object v22, v22, v23

    move-object/from16 v18, v22

    .line 684
    .local v18, "file":Ljava/io/File;
    move-object/from16 v22, v18

    :try_start_0
    invoke-static/range {v22 .. v22}, Lcom/microsoft/appcenter/utils/storage/FileManager;->getNameWithoutExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v19, v22

    .line 688
    .line 689
    .local v19, "id":J
    move-object/from16 v22, v8

    move-wide/from16 v23, v19

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 690
    move-wide/from16 v22, v5

    move-object/from16 v24, v18

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->length()J

    move-result-wide v24

    add-long v22, v22, v24

    move-wide/from16 v5, v22

    .line 681
    .end local v19    # "id":J
    :goto_3
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 685
    :catch_0
    move-exception v22

    move-object/from16 v21, v22

    .line 686
    .local v21, "exception":Ljava/lang/NumberFormatException;
    const-string/jumbo v22, "AppCenter"

    new-instance v23, Ljava/lang/StringBuilder;

    move-object/from16 v26, v23

    move-object/from16 v23, v26

    move-object/from16 v24, v26

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "A file was found whose name does not match the pattern of naming log files: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v24, v18

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    goto :goto_3

    .line 693
    .end local v21    # "exception":Ljava/lang/NumberFormatException;
    .restart local v19    # "id":J
    :cond_3
    move-object/from16 v22, v18

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->delete()Z

    move-result v22

    if-nez v22, :cond_4

    .line 694
    const-string/jumbo v22, "AppCenter"

    new-instance v23, Ljava/lang/StringBuilder;

    move-object/from16 v26, v23

    move-object/from16 v23, v26

    move-object/from16 v24, v26

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Cannot delete redundant large payload file with id "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-wide/from16 v24, v19

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    goto :goto_3

    .line 697
    :cond_4
    const-string/jumbo v22, "AppCenter"

    new-instance v23, Ljava/lang/StringBuilder;

    move-object/from16 v26, v23

    move-object/from16 v23, v26

    move-object/from16 v24, v26

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Lasted large payload file with name "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v24, v18

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, " has been deleted."

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 700
    .end local v13    # "groupFile":Ljava/io/File;
    .end local v14    # "files":[Ljava/io/File;
    .end local v18    # "file":Ljava/io/File;
    .end local v19    # "id":J
    :cond_5
    move-wide/from16 v22, v5

    move-wide/from16 v3, v22

    goto/16 :goto_0
.end method

.method private deleteLog(Ljava/io/File;J)V
    .locals 8

    .prologue
    .line 376
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/persistence/DatabasePersistence;
    move-object v1, p1

    .local v1, "groupLargePayloadDirectory":Ljava/io/File;
    move-wide v2, p2

    .local v2, "id":J
    move-object v4, v0

    move-object v5, v1

    move-wide v6, v2

    invoke-virtual {v4, v5, v6, v7}, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->getLargePayloadFile(Ljava/io/File;J)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v4

    .line 377
    move-object v4, v0

    iget-object v4, v4, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mDatabaseManager:Lcom/microsoft/appcenter/utils/storage/DatabaseManager;

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->delete(J)V

    .line 378
    return-void
.end method

.method private deleteTheOldestLog(I)J
    .locals 16

    .prologue
    .line 639
    move-object/from16 v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/persistence/DatabasePersistence;
    move/from16 v1, p1

    .local v1, "priority":I
    new-instance v10, Ljava/util/HashSet;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    move-object v2, v10

    .line 640
    .local v2, "columnsToGet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v10, v2

    const-string/jumbo v11, "oid"

    invoke-interface {v10, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v10

    .line 641
    move-object v10, v2

    const-string/jumbo v11, "persistence_group"

    invoke-interface {v10, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v10

    .line 642
    move-object v10, v0

    iget-object v10, v10, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mDatabaseManager:Lcom/microsoft/appcenter/utils/storage/DatabaseManager;

    move-object v11, v2

    const-string/jumbo v12, "priority"

    move v13, v1

    invoke-virtual {v10, v11, v12, v13}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->deleteTheOldestRecord(Ljava/util/Set;Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v10

    move-object v3, v10

    .line 643
    .local v3, "deletedRow":Landroid/content/ContentValues;
    move-object v10, v3

    if-nez v10, :cond_0

    .line 644
    const-wide/16 v10, -0x1

    move-wide v0, v10

    .line 659
    .end local v0    # "this":Lcom/microsoft/appcenter/persistence/DatabasePersistence;
    :goto_0
    return-wide v0

    .line 646
    .restart local v0    # "this":Lcom/microsoft/appcenter/persistence/DatabasePersistence;
    :cond_0
    move-object v10, v3

    const-string/jumbo v11, "oid"

    invoke-virtual {v10, v11}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    move-wide v4, v10

    .line 647
    .local v4, "deletedId":J
    move-object v10, v3

    const-string/jumbo v11, "persistence_group"

    invoke-virtual {v10, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v6, v10

    .line 648
    .local v6, "group":Ljava/lang/String;
    move-object v10, v0

    move-object v11, v0

    move-object v12, v6

    invoke-virtual {v11, v12}, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->getLargePayloadGroupDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    move-wide v12, v4

    invoke-virtual {v10, v11, v12, v13}, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->getLargePayloadFile(Ljava/io/File;J)Ljava/io/File;

    move-result-object v10

    move-object v7, v10

    .line 649
    .local v7, "file":Ljava/io/File;
    move-object v10, v7

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_1

    .line 650
    move-wide v10, v4

    move-wide v0, v10

    goto :goto_0

    .line 652
    :cond_1
    move-object v10, v7

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v10

    move-wide v8, v10

    .line 653
    .local v8, "fileSize":J
    move-object v10, v7

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 654
    move-object v10, v0

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    iget-wide v11, v11, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mLargePayloadsSize:J

    move-wide v13, v8

    sub-long/2addr v11, v13

    iput-wide v11, v10, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mLargePayloadsSize:J

    .line 655
    const-string/jumbo v10, "AppCenter"

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Large payload file with id "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide v12, v4

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " has been deleted. "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide v12, v8

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " KB of memory has been freed."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/microsoft/appcenter/utils/AppCenterLog;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    :goto_1
    move-wide v10, v4

    move-wide v0, v10

    goto :goto_0

    .line 657
    :cond_2
    const-string/jumbo v10, "AppCenter"

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Cannot delete large payload file with id "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide v12, v4

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static getContentValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/ContentValues;
    .locals 11
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 260
    move-object v0, p0

    .local v0, "group":Ljava/lang/String;
    move-object v1, p1

    .local v1, "logJ":Ljava/lang/String;
    move-object v2, p2

    .local v2, "targetToken":Ljava/lang/String;
    move-object v3, p3

    .local v3, "type":Ljava/lang/String;
    move-object v4, p4

    .local v4, "targetKey":Ljava/lang/String;
    move/from16 v5, p5

    .local v5, "priority":I
    new-instance v7, Landroid/content/ContentValues;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    move-object v6, v7

    .line 261
    .local v6, "values":Landroid/content/ContentValues;
    move-object v7, v6

    const-string/jumbo v8, "persistence_group"

    move-object v9, v0

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    move-object v7, v6

    const-string/jumbo v8, "log"

    move-object v9, v1

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    move-object v7, v6

    const-string/jumbo v8, "target_token"

    move-object v9, v2

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    move-object v7, v6

    const-string/jumbo v8, "type"

    move-object v9, v3

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    move-object v7, v6

    const-string/jumbo v8, "target_key"

    move-object v9, v4

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    move-object v7, v6

    const-string/jumbo v8, "priority"

    move v9, v5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 267
    move-object v7, v6

    move-object v0, v7

    .end local v0    # "group":Ljava/lang/String;
    return-object v0
.end method

.method private varargs getLogsIds(Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;)Ljava/util/Set;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteQueryBuilder;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 704
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/persistence/DatabasePersistence;
    move-object v1, p1

    .local v1, "builder":Landroid/database/sqlite/SQLiteQueryBuilder;
    move-object/from16 v2, p2

    .local v2, "selectionArgs":[Ljava/lang/String;
    new-instance v8, Ljava/util/HashSet;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    move-object v3, v8

    .line 706
    .local v3, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    move-object v8, v0

    :try_start_0
    iget-object v8, v8, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mDatabaseManager:Lcom/microsoft/appcenter/utils/storage/DatabaseManager;

    move-object v9, v1

    sget-object v10, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->SELECT_PRIMARY_KEY:[Ljava/lang/String;

    move-object v11, v2

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->getCursor(Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    move-object v4, v8

    .line 708
    .local v4, "cursor":Landroid/database/Cursor;
    :goto_0
    move-object v8, v4

    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 709
    move-object v8, v0

    iget-object v8, v8, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mDatabaseManager:Lcom/microsoft/appcenter/utils/storage/DatabaseManager;

    move-object v9, v4

    invoke-virtual {v8, v9}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->buildValues(Landroid/database/Cursor;)Landroid/content/ContentValues;

    move-result-object v8

    move-object v5, v8

    .line 710
    .local v5, "idValues":Landroid/content/ContentValues;
    move-object v8, v5

    const-string/jumbo v9, "oid"

    invoke-virtual {v8, v9}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    move-object v6, v8

    .line 711
    .local v6, "id":Ljava/lang/Long;
    move-object v8, v3

    move-object v9, v6

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    .line 712
    goto :goto_0

    .line 714
    .end local v5    # "idValues":Landroid/content/ContentValues;
    .end local v6    # "id":Ljava/lang/Long;
    :cond_0
    move-object v8, v4

    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 715
    .line 718
    .line 719
    .end local v4    # "cursor":Landroid/database/Cursor;
    :goto_1
    move-object v8, v3

    move-object v0, v8

    .end local v0    # "this":Lcom/microsoft/appcenter/persistence/DatabasePersistence;
    return-object v0

    .line 714
    .restart local v0    # "this":Lcom/microsoft/appcenter/persistence/DatabasePersistence;
    .restart local v4    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v8

    move-object v7, v8

    move-object v8, v4

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 715
    move-object v8, v7

    throw v8
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 716
    .end local v4    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v8

    move-object v4, v8

    .line 717
    .local v4, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v8, "AppCenter"

    const-string/jumbo v9, "Failed to get corrupted ids: "

    move-object v10, v4

    invoke-static {v8, v9, v10}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private getStoredDataSize()J
    .locals 6

    .prologue
    .line 629
    move-object v1, p0

    .local v1, "this":Lcom/microsoft/appcenter/persistence/DatabasePersistence;
    move-object v2, v1

    iget-object v2, v2, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mDatabaseManager:Lcom/microsoft/appcenter/utils/storage/DatabaseManager;

    invoke-virtual {v2}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->getCurrentSize()J

    move-result-wide v2

    move-object v4, v1

    iget-wide v4, v4, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mLargePayloadsSize:J

    add-long/2addr v2, v4

    move-wide v1, v2

    .end local v1    # "this":Lcom/microsoft/appcenter/persistence/DatabasePersistence;
    return-wide v1
.end method


# virtual methods
.method public clearPendingLogState()V
    .locals 3

    .prologue
    .line 606
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/persistence/DatabasePersistence;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mPendingDbIdentifiers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 607
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mPendingDbIdentifiersGroups:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 608
    const-string/jumbo v1, "AppCenter"

    const-string/jumbo v2, "Cleared pending log states"

    invoke-static {v1, v2}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    return-void
.end method

.method public close()V
    .locals 2

    .prologue
    .line 613
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/persistence/DatabasePersistence;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mDatabaseManager:Lcom/microsoft/appcenter/utils/storage/DatabaseManager;

    invoke-virtual {v1}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->close()V

    .line 614
    return-void
.end method

.method public countLogs(Ljava/lang/String;)I
    .locals 14
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 436
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/persistence/DatabasePersistence;
    move-object v1, p1

    .local v1, "group":Ljava/lang/String;
    invoke-static {}, Lcom/microsoft/appcenter/utils/storage/SQLiteUtils;->newSQLiteQueryBuilder()Landroid/database/sqlite/SQLiteQueryBuilder;

    move-result-object v6

    move-object v2, v6

    .line 437
    .local v2, "builder":Landroid/database/sqlite/SQLiteQueryBuilder;
    move-object v6, v2

    const-string/jumbo v7, "persistence_group = ?"

    invoke-virtual {v6, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 438
    const/4 v6, 0x0

    move v3, v6

    .line 440
    .local v3, "count":I
    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mDatabaseManager:Lcom/microsoft/appcenter/utils/storage/DatabaseManager;

    move-object v7, v2

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const/4 v10, 0x0

    const-string/jumbo v11, "COUNT(*)"

    aput-object v11, v9, v10

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    move-object v12, v1

    aput-object v12, v10, v11

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->getCursor(Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    move-object v4, v6

    .line 442
    .local v4, "cursor":Landroid/database/Cursor;
    move-object v6, v4

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    .line 443
    move-object v6, v4

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    move v3, v6

    .line 445
    move-object v6, v4

    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 446
    .line 449
    .line 450
    .end local v4    # "cursor":Landroid/database/Cursor;
    :goto_0
    move v6, v3

    move v0, v6

    .end local v0    # "this":Lcom/microsoft/appcenter/persistence/DatabasePersistence;
    return v0

    .line 445
    .restart local v0    # "this":Lcom/microsoft/appcenter/persistence/DatabasePersistence;
    .restart local v4    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 446
    move-object v6, v5

    throw v6
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 447
    .end local v4    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v6

    move-object v4, v6

    .line 448
    .local v4, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v6, "AppCenter"

    const-string/jumbo v7, "Failed to get logs count: "

    move-object v8, v4

    invoke-static {v6, v7, v8}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public deleteLogs(Ljava/lang/String;)V
    .locals 12

    .prologue
    .line 403
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/persistence/DatabasePersistence;
    move-object v1, p1

    .local v1, "group":Ljava/lang/String;
    const-string/jumbo v8, "AppCenter"

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Deleting all logs from the Persistence database for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    move-object v8, v0

    move-object v9, v1

    invoke-virtual {v8, v9}, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->getLargePayloadGroupDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    move-object v2, v8

    .line 407
    .local v2, "directory":Ljava/io/File;
    move-object v8, v2

    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    move-object v3, v8

    .line 408
    .local v3, "files":[Ljava/io/File;
    move-object v8, v3

    if-eqz v8, :cond_0

    .line 409
    move-object v8, v3

    move-object v4, v8

    move-object v8, v4

    array-length v8, v8

    move v5, v8

    const/4 v8, 0x0

    move v6, v8

    :goto_0
    move v8, v6

    move v9, v5

    if-ge v8, v9, :cond_0

    move-object v8, v4

    move v9, v6

    aget-object v8, v8, v9

    move-object v7, v8

    .line 412
    .local v7, "file":Ljava/io/File;
    move-object v8, v7

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    move-result v8

    .line 409
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 417
    .end local v7    # "file":Ljava/io/File;
    :cond_0
    move-object v8, v2

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    move-result v8

    .line 420
    move-object v8, v0

    iget-object v8, v8, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mDatabaseManager:Lcom/microsoft/appcenter/utils/storage/DatabaseManager;

    const-string/jumbo v9, "persistence_group"

    move-object v10, v1

    invoke-virtual {v8, v9, v10}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->delete(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v8

    move v4, v8

    .line 421
    .local v4, "deletedCount":I
    const-string/jumbo v8, "AppCenter"

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Deleted "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " logs."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    move-object v8, v0

    iget-object v8, v8, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mPendingDbIdentifiersGroups:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v5, v8

    .local v5, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    move-object v8, v5

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 425
    move-object v8, v5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object v6, v8

    .line 426
    .local v6, "key":Ljava/lang/String;
    move-object v8, v6

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 427
    move-object v8, v5

    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    .line 429
    :cond_1
    goto :goto_1

    .line 430
    .end local v6    # "key":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public deleteLogs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 384
    move-object v1, p0

    .local v1, "this":Lcom/microsoft/appcenter/persistence/DatabasePersistence;
    move-object v2, p1

    .local v2, "group":Ljava/lang/String;
    move-object v3, p2

    .local v3, "id":Ljava/lang/String;
    const-string/jumbo v8, "AppCenter"

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Deleting logs from the Persistence database for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " with "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    const-string/jumbo v8, "AppCenter"

    const-string/jumbo v9, "The IDs for deleting log(s) is/are:"

    invoke-static {v8, v9}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    move-object v8, v1

    iget-object v8, v8, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mPendingDbIdentifiersGroups:Ljava/util/Map;

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    move-object v4, v8

    .line 389
    .local v4, "dbIdentifiers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    move-object v8, v1

    move-object v9, v2

    invoke-virtual {v8, v9}, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->getLargePayloadGroupDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    move-object v5, v8

    .line 390
    .local v5, "directory":Ljava/io/File;
    move-object v8, v4

    if-eqz v8, :cond_0

    .line 391
    move-object v8, v4

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v6, v8

    :goto_0
    move-object v8, v6

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v8, v6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    move-object v7, v8

    .line 392
    .local v7, "dbIdentifier":Ljava/lang/Long;
    const-string/jumbo v8, "AppCenter"

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "\t"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    move-object v8, v1

    move-object v9, v5

    move-object v10, v7

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-direct {v8, v9, v10, v11}, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->deleteLog(Ljava/io/File;J)V

    .line 394
    move-object v8, v1

    iget-object v8, v8, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mPendingDbIdentifiers:Ljava/util/Set;

    move-object v9, v7

    invoke-interface {v8, v9}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v8

    .line 395
    goto :goto_0

    .line 397
    .end local v7    # "dbIdentifier":Ljava/lang/Long;
    :cond_0
    return-void
.end method

.method public deleteLogsThatNotFitMaxSize()V
    .locals 6

    .prologue
    .line 620
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/persistence/DatabasePersistence;
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/microsoft/appcenter/Flags;->getPersistenceFlag(IZ)I

    move-result v2

    move v1, v2

    .line 621
    .local v1, "normalPriority":I
    :cond_0
    move-object v2, v0

    invoke-direct {v2}, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->getStoredDataSize()J

    move-result-wide v2

    move-object v4, v0

    iget-object v4, v4, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mDatabaseManager:Lcom/microsoft/appcenter/utils/storage/DatabaseManager;

    invoke-virtual {v4}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->getMaxSize()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    .line 622
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->deleteTheOldestLog(I)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 623
    .line 626
    :cond_1
    return-void
.end method

.method getLargePayloadFile(Ljava/io/File;J)Ljava/io/File;
    .locals 12
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 370
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/persistence/DatabasePersistence;
    move-object v1, p1

    .local v1, "directory":Ljava/io/File;
    move-wide v2, p2

    .local v2, "databaseId":J
    new-instance v4, Ljava/io/File;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v1

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-wide v8, v2

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ".json"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v4

    .end local v0    # "this":Lcom/microsoft/appcenter/persistence/DatabasePersistence;
    return-object v0
.end method

.method getLargePayloadGroupDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 7
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 364
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/persistence/DatabasePersistence;
    move-object v1, p1

    .local v1, "group":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    iget-object v4, v4, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mLargePayloadDirectory:Ljava/io/File;

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v2

    .end local v0    # "this":Lcom/microsoft/appcenter/persistence/DatabasePersistence;
    return-object v0
.end method

.method public getLogs(Ljava/lang/String;Ljava/util/Collection;ILjava/util/List;)Ljava/lang/String;
    .locals 30
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/List",
            "<",
            "Lcom/microsoft/appcenter/ingestion/models/Log;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 458
    move-object/from16 v3, p0

    .local v3, "this":Lcom/microsoft/appcenter/persistence/DatabasePersistence;
    move-object/from16 v4, p1

    .local v4, "group":Ljava/lang/String;
    move-object/from16 v5, p2

    .local v5, "pausedTargetKeys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    move/from16 v6, p3

    .local v6, "limit":I
    move-object/from16 v7, p4

    .local v7, "outLogs":Ljava/util/List;, "Ljava/util/List<Lcom/microsoft/appcenter/ingestion/models/Log;>;"
    const-string/jumbo v24, "AppCenter"

    new-instance v25, Ljava/lang/StringBuilder;

    move-object/from16 v29, v25

    move-object/from16 v25, v29

    move-object/from16 v26, v29

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Trying to get "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move/from16 v26, v6

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " logs from the Persistence database for "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v26, v4

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    invoke-static {}, Lcom/microsoft/appcenter/utils/storage/SQLiteUtils;->newSQLiteQueryBuilder()Landroid/database/sqlite/SQLiteQueryBuilder;

    move-result-object v24

    move-object/from16 v8, v24

    .line 462
    .local v8, "builder":Landroid/database/sqlite/SQLiteQueryBuilder;
    move-object/from16 v24, v8

    const-string/jumbo v25, "persistence_group = ?"

    invoke-virtual/range {v24 .. v25}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 463
    new-instance v24, Ljava/util/ArrayList;

    move-object/from16 v29, v24

    move-object/from16 v24, v29

    move-object/from16 v25, v29

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v9, v24

    .line 464
    .local v9, "selectionArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v24, v9

    move-object/from16 v25, v4

    invoke-interface/range {v24 .. v25}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v24

    .line 465
    move-object/from16 v24, v5

    invoke-interface/range {v24 .. v24}, Ljava/util/Collection;->isEmpty()Z

    move-result v24

    if-nez v24, :cond_1

    .line 466
    new-instance v24, Ljava/lang/StringBuilder;

    move-object/from16 v29, v24

    move-object/from16 v24, v29

    move-object/from16 v25, v29

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v10, v24

    .line 467
    .local v10, "filter":Ljava/lang/StringBuilder;
    const/16 v24, 0x0

    move/from16 v11, v24

    .local v11, "i":I
    :goto_0
    move/from16 v24, v11

    move-object/from16 v25, v5

    invoke-interface/range {v25 .. v25}, Ljava/util/Collection;->size()I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_0

    .line 468
    move-object/from16 v24, v10

    const-string/jumbo v25, "?,"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 467
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 470
    :cond_0
    move-object/from16 v24, v10

    move-object/from16 v25, v10

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->length()I

    move-result v25

    const/16 v26, 0x1

    add-int/lit8 v25, v25, -0x1

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 471
    move-object/from16 v24, v8

    const-string/jumbo v25, " AND "

    invoke-virtual/range {v24 .. v25}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 472
    move-object/from16 v24, v8

    new-instance v25, Ljava/lang/StringBuilder;

    move-object/from16 v29, v25

    move-object/from16 v25, v29

    move-object/from16 v26, v29

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "target_key NOT IN ("

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v26, v10

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, ")"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 473
    move-object/from16 v24, v9

    move-object/from16 v25, v5

    invoke-interface/range {v24 .. v25}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v24

    .line 477
    .end local v10    # "filter":Ljava/lang/StringBuilder;
    .end local v11    # "i":I
    :cond_1
    const/16 v24, 0x0

    move/from16 v10, v24

    .line 478
    .local v10, "count":I
    new-instance v24, Ljava/util/LinkedHashMap;

    move-object/from16 v29, v24

    move-object/from16 v24, v29

    move-object/from16 v25, v29

    invoke-direct/range {v25 .. v25}, Ljava/util/LinkedHashMap;-><init>()V

    move-object/from16 v11, v24

    .line 479
    .local v11, "candidates":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/microsoft/appcenter/ingestion/models/Log;>;"
    new-instance v24, Ljava/util/ArrayList;

    move-object/from16 v29, v24

    move-object/from16 v24, v29

    move-object/from16 v25, v29

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v12, v24

    .line 480
    .local v12, "failedDbIdentifiers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    move-object/from16 v24, v3

    move-object/from16 v25, v4

    invoke-virtual/range {v24 .. v25}, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->getLargePayloadGroupDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v24

    move-object/from16 v13, v24

    .line 481
    .local v13, "largePayloadGroupDirectory":Ljava/io/File;
    move-object/from16 v24, v9

    const/16 v25, 0x0

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-interface/range {v24 .. v25}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v24

    check-cast v24, [Ljava/lang/String;

    move-object/from16 v14, v24

    .line 482
    .local v14, "selectionArgsArray":[Ljava/lang/String;
    const/16 v24, 0x0

    move-object/from16 v15, v24

    .line 485
    .local v15, "cursor":Landroid/database/Cursor;
    move-object/from16 v24, v3

    :try_start_0
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mDatabaseManager:Lcom/microsoft/appcenter/utils/storage/DatabaseManager;

    move-object/from16 v24, v0

    move-object/from16 v25, v8

    const/16 v26, 0x0

    move-object/from16 v27, v14

    const-string/jumbo v28, "priority DESC, oid"

    invoke-virtual/range {v24 .. v28}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->getCursor(Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v24

    move-object/from16 v15, v24

    .line 488
    .line 489
    :goto_1
    move-object/from16 v24, v15

    if-eqz v24, :cond_9

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mDatabaseManager:Lcom/microsoft/appcenter/utils/storage/DatabaseManager;

    move-object/from16 v24, v0

    move-object/from16 v25, v15

    .line 490
    invoke-virtual/range {v24 .. v25}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->nextValues(Landroid/database/Cursor;)Landroid/content/ContentValues;

    move-result-object v24

    move-object/from16 v29, v24

    move-object/from16 v24, v29

    move-object/from16 v25, v29

    move-object/from16 v16, v25

    .local v16, "values":Landroid/content/ContentValues;
    if-eqz v24, :cond_9

    move/from16 v24, v10

    move/from16 v25, v6

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_9

    .line 492
    move-object/from16 v24, v16

    const-string/jumbo v25, "oid"

    invoke-virtual/range {v24 .. v25}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v24

    move-object/from16 v17, v24

    .line 500
    .local v17, "dbIdentifier":Ljava/lang/Long;
    move-object/from16 v24, v17

    if-nez v24, :cond_4

    .line 501
    const-string/jumbo v24, "AppCenter"

    const-string/jumbo v25, "Empty database record, probably content was larger than 2MB, need to delete as it\'s now corrupted."

    invoke-static/range {v24 .. v25}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    move-object/from16 v24, v3

    move-object/from16 v25, v8

    move-object/from16 v26, v14

    invoke-direct/range {v24 .. v26}, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->getLogsIds(Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v24

    move-object/from16 v18, v24

    .line 503
    .local v18, "corruptedIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    move-object/from16 v24, v18

    invoke-interface/range {v24 .. v24}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v24

    move-object/from16 v19, v24

    :goto_2
    move-object/from16 v24, v19

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_2

    move-object/from16 v24, v19

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Long;

    move-object/from16 v20, v24

    .line 504
    .local v20, "corruptedId":Ljava/lang/Long;
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mPendingDbIdentifiers:Ljava/util/Set;

    move-object/from16 v24, v0

    move-object/from16 v25, v20

    invoke-interface/range {v24 .. v25}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_3

    move-object/from16 v24, v11

    move-object/from16 v25, v20

    invoke-interface/range {v24 .. v25}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_3

    .line 507
    move-object/from16 v24, v3

    move-object/from16 v25, v13

    move-object/from16 v26, v20

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    invoke-direct/range {v24 .. v27}, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->deleteLog(Ljava/io/File;J)V

    .line 508
    const-string/jumbo v24, "AppCenter"

    new-instance v25, Ljava/lang/StringBuilder;

    move-object/from16 v29, v25

    move-object/from16 v25, v29

    move-object/from16 v26, v29

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Empty database corrupted empty record deleted, id="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v26, v20

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    .line 512
    .end local v20    # "corruptedId":Ljava/lang/Long;
    :cond_2
    goto/16 :goto_1

    .line 486
    .end local v16    # "values":Landroid/content/ContentValues;
    .end local v17    # "dbIdentifier":Ljava/lang/Long;
    .end local v18    # "corruptedIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    :catch_0
    move-exception v24

    move-object/from16 v17, v24

    .line 487
    .local v17, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v24, "AppCenter"

    const-string/jumbo v25, "Failed to get logs: "

    move-object/from16 v26, v17

    invoke-static/range {v24 .. v26}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 511
    .restart local v16    # "values":Landroid/content/ContentValues;
    .local v17, "dbIdentifier":Ljava/lang/Long;
    .restart local v18    # "corruptedIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .restart local v20    # "corruptedId":Ljava/lang/Long;
    :cond_3
    goto :goto_2

    .line 516
    .end local v18    # "corruptedIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .end local v20    # "corruptedId":Ljava/lang/Long;
    :cond_4
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mPendingDbIdentifiers:Ljava/util/Set;

    move-object/from16 v24, v0

    move-object/from16 v25, v17

    invoke-interface/range {v24 .. v25}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_5

    .line 521
    move-object/from16 v24, v16

    :try_start_1
    const-string/jumbo v25, "log"

    invoke-virtual/range {v24 .. v25}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v19, v24

    .line 522
    .local v19, "databasePayload":Ljava/lang/String;
    move-object/from16 v24, v19

    if-nez v24, :cond_8

    .line 523
    move-object/from16 v24, v3

    move-object/from16 v25, v13

    move-object/from16 v26, v17

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    invoke-virtual/range {v24 .. v27}, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->getLargePayloadFile(Ljava/io/File;J)Ljava/io/File;

    move-result-object v24

    move-object/from16 v20, v24

    .line 524
    .local v20, "file":Ljava/io/File;
    const-string/jumbo v24, "AppCenter"

    new-instance v25, Ljava/lang/StringBuilder;

    move-object/from16 v29, v25

    move-object/from16 v25, v29

    move-object/from16 v26, v29

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Read payload file "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v26, v20

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    move-object/from16 v24, v20

    invoke-static/range {v24 .. v24}, Lcom/microsoft/appcenter/utils/storage/FileManager;->read(Ljava/io/File;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v18, v24

    .line 526
    .local v18, "logPayload":Ljava/lang/String;
    move-object/from16 v24, v18

    if-nez v24, :cond_6

    .line 527
    new-instance v24, Lorg/json/JSONException;

    move-object/from16 v29, v24

    move-object/from16 v24, v29

    move-object/from16 v25, v29

    const-string/jumbo v26, "Log payload is null and not stored as a file."

    invoke-direct/range {v25 .. v26}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v24
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 545
    .end local v18    # "logPayload":Ljava/lang/String;
    .end local v19    # "databasePayload":Ljava/lang/String;
    .end local v20    # "file":Ljava/io/File;
    :catch_1
    move-exception v24

    move-object/from16 v18, v24

    .line 548
    .local v18, "e":Lorg/json/JSONException;
    const-string/jumbo v24, "AppCenter"

    const-string/jumbo v25, "Cannot deserialize a log in the database"

    move-object/from16 v26, v18

    invoke-static/range {v24 .. v26}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 551
    move-object/from16 v24, v12

    move-object/from16 v25, v17

    invoke-interface/range {v24 .. v25}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v24

    .line 554
    .end local v18    # "e":Lorg/json/JSONException;
    :cond_5
    :goto_3
    goto/16 :goto_1

    .line 529
    .line 532
    .local v18, "logPayload":Ljava/lang/String;
    .restart local v19    # "databasePayload":Ljava/lang/String;
    :cond_6
    :goto_4
    move-object/from16 v24, v16

    :try_start_2
    const-string/jumbo v25, "type"

    invoke-virtual/range {v24 .. v25}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v20, v24

    .line 533
    .local v20, "databasePayloadType":Ljava/lang/String;
    move-object/from16 v24, v3

    invoke-virtual/range {v24 .. v24}, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->getLogSerializer()Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;

    move-result-object v24

    move-object/from16 v25, v18

    move-object/from16 v26, v20

    invoke-interface/range {v24 .. v26}, Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;->deserializeLog(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/appcenter/ingestion/models/Log;

    move-result-object v24

    move-object/from16 v21, v24

    .line 536
    .local v21, "log":Lcom/microsoft/appcenter/ingestion/models/Log;
    move-object/from16 v24, v16

    const-string/jumbo v25, "target_token"

    invoke-virtual/range {v24 .. v25}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v22, v24

    .line 537
    .local v22, "targetToken":Ljava/lang/String;
    move-object/from16 v24, v22

    if-eqz v24, :cond_7

    .line 538
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->getInstance(Landroid/content/Context;)Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;

    move-result-object v24

    move-object/from16 v25, v22

    invoke-virtual/range {v24 .. v25}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->decrypt(Ljava/lang/String;)Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$DecryptedData;

    move-result-object v24

    move-object/from16 v23, v24

    .line 539
    .local v23, "data":Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$DecryptedData;
    move-object/from16 v24, v21

    move-object/from16 v25, v23

    invoke-virtual/range {v25 .. v25}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$DecryptedData;->getDecryptedData()Ljava/lang/String;

    move-result-object v25

    invoke-interface/range {v24 .. v25}, Lcom/microsoft/appcenter/ingestion/models/Log;->addTransmissionTarget(Ljava/lang/String;)V

    .line 543
    .end local v23    # "data":Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$DecryptedData;
    :cond_7
    move-object/from16 v24, v11

    move-object/from16 v25, v17

    move-object/from16 v26, v21

    invoke-interface/range {v24 .. v26}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v24

    .line 544
    add-int/lit8 v10, v10, 0x1

    .line 552
    goto :goto_3

    .line 530
    .end local v18    # "logPayload":Ljava/lang/String;
    .end local v20    # "databasePayloadType":Ljava/lang/String;
    .end local v21    # "log":Lcom/microsoft/appcenter/ingestion/models/Log;
    .end local v22    # "targetToken":Ljava/lang/String;
    :cond_8
    move-object/from16 v24, v19

    move-object/from16 v18, v24

    .restart local v18    # "logPayload":Ljava/lang/String;
    goto :goto_4

    .line 555
    .end local v16    # "values":Landroid/content/ContentValues;
    .end local v17    # "dbIdentifier":Ljava/lang/Long;
    .end local v18    # "logPayload":Ljava/lang/String;
    .end local v19    # "databasePayload":Ljava/lang/String;
    :cond_9
    move-object/from16 v24, v15

    if-eqz v24, :cond_a

    .line 557
    move-object/from16 v24, v15

    :try_start_3
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    .line 559
    .line 563
    :cond_a
    :goto_5
    move-object/from16 v24, v12

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v24

    if-lez v24, :cond_c

    .line 564
    move-object/from16 v24, v12

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    move-object/from16 v17, v24

    :goto_6
    move-object/from16 v24, v17

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_b

    move-object/from16 v24, v17

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Long;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    move-wide/from16 v18, v24

    .line 565
    .local v18, "id":J
    move-object/from16 v24, v3

    move-object/from16 v25, v13

    move-wide/from16 v26, v18

    invoke-direct/range {v24 .. v27}, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->deleteLog(Ljava/io/File;J)V

    .line 566
    goto :goto_6

    .line 558
    .end local v18    # "id":J
    :catch_2
    move-exception v24

    move-object/from16 v17, v24

    goto :goto_5

    .line 567
    :cond_b
    const-string/jumbo v24, "AppCenter"

    const-string/jumbo v25, "Deleted logs that cannot be deserialized"

    invoke-static/range {v24 .. v25}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    :cond_c
    move-object/from16 v24, v11

    invoke-interface/range {v24 .. v24}, Ljava/util/Map;->size()I

    move-result v24

    if-gtz v24, :cond_d

    .line 572
    const-string/jumbo v24, "AppCenter"

    const-string/jumbo v25, "No logs found in the Persistence database at the moment"

    invoke-static/range {v24 .. v25}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    const/16 v24, 0x0

    move-object/from16 v3, v24

    .line 601
    .end local v3    # "this":Lcom/microsoft/appcenter/persistence/DatabasePersistence;
    :goto_7
    return-object v3

    .line 577
    .restart local v3    # "this":Lcom/microsoft/appcenter/persistence/DatabasePersistence;
    :cond_d
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v17, v24

    .line 580
    .local v17, "id":Ljava/lang/String;
    const-string/jumbo v24, "AppCenter"

    new-instance v25, Ljava/lang/StringBuilder;

    move-object/from16 v29, v25

    move-object/from16 v25, v29

    move-object/from16 v26, v29

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Returning "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v26, v11

    invoke-interface/range {v26 .. v26}, Ljava/util/Map;->size()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " log(s) with an ID, "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v26, v17

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    const-string/jumbo v24, "AppCenter"

    const-string/jumbo v25, "The SID/ID pairs for returning log(s) is/are:"

    invoke-static/range {v24 .. v25}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    new-instance v24, Ljava/util/ArrayList;

    move-object/from16 v29, v24

    move-object/from16 v24, v29

    move-object/from16 v25, v29

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v18, v24

    .line 583
    .local v18, "pendingDbIdentifiersGroup":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    move-object/from16 v24, v11

    invoke-interface/range {v24 .. v24}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v24

    move-object/from16 v19, v24

    :goto_8
    move-object/from16 v24, v19

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_e

    move-object/from16 v24, v19

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/util/Map$Entry;

    move-object/from16 v20, v24

    .line 584
    .local v20, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/microsoft/appcenter/ingestion/models/Log;>;"
    move-object/from16 v24, v20

    invoke-interface/range {v24 .. v24}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Long;

    move-object/from16 v21, v24

    .line 587
    .local v21, "dbIdentifier":Ljava/lang/Long;
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mPendingDbIdentifiers:Ljava/util/Set;

    move-object/from16 v24, v0

    move-object/from16 v25, v21

    invoke-interface/range {v24 .. v25}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v24

    .line 590
    move-object/from16 v24, v18

    move-object/from16 v25, v21

    invoke-interface/range {v24 .. v25}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v24

    .line 593
    move-object/from16 v24, v7

    move-object/from16 v25, v20

    invoke-interface/range {v25 .. v25}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/microsoft/appcenter/ingestion/models/Log;

    invoke-interface/range {v24 .. v25}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v24

    .line 596
    const-string/jumbo v24, "AppCenter"

    new-instance v25, Ljava/lang/StringBuilder;

    move-object/from16 v29, v25

    move-object/from16 v25, v29

    move-object/from16 v26, v29

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "\t"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v26, v20

    invoke-interface/range {v26 .. v26}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/microsoft/appcenter/ingestion/models/Log;

    invoke-interface/range {v26 .. v26}, Lcom/microsoft/appcenter/ingestion/models/Log;->getSid()Ljava/util/UUID;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " / "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v26, v21

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    goto :goto_8

    .line 600
    .end local v20    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/microsoft/appcenter/ingestion/models/Log;>;"
    .end local v21    # "dbIdentifier":Ljava/lang/Long;
    :cond_e
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mPendingDbIdentifiersGroups:Ljava/util/Map;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    move-object/from16 v29, v25

    move-object/from16 v25, v29

    move-object/from16 v26, v29

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v26, v4

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v26, v17

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v26, v18

    invoke-interface/range {v24 .. v26}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    .line 601
    move-object/from16 v24, v17

    move-object/from16 v3, v24

    goto/16 :goto_7
.end method

.method public putLog(Lcom/microsoft/appcenter/ingestion/models/Log;Ljava/lang/String;I)J
    .locals 27
    .param p1    # Lcom/microsoft/appcenter/ingestion/models/Log;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
            to = 0x2L
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/appcenter/persistence/Persistence$PersistenceException;
        }
    .end annotation

    .prologue
    .line 282
    move-object/from16 v3, p0

    .local v3, "this":Lcom/microsoft/appcenter/persistence/DatabasePersistence;
    move-object/from16 v4, p1

    .local v4, "log":Lcom/microsoft/appcenter/ingestion/models/Log;
    move-object/from16 v5, p2

    .local v5, "group":Ljava/lang/String;
    move/from16 v6, p3

    .local v6, "flags":I
    :try_start_0
    const-string/jumbo v20, "AppCenter"

    new-instance v21, Ljava/lang/StringBuilder;

    move-object/from16 v26, v21

    move-object/from16 v21, v26

    move-object/from16 v22, v26

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Storing a log to the Persistence database for log type "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v22, v4

    invoke-interface/range {v22 .. v22}, Lcom/microsoft/appcenter/ingestion/models/Log;->getType()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " with flags="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move/from16 v22, v6

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->getLogSerializer()Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;

    move-result-object v20

    move-object/from16 v21, v4

    invoke-interface/range {v20 .. v21}, Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;->serializeLog(Lcom/microsoft/appcenter/ingestion/models/Log;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v7, v20

    .line 287
    .local v7, "payload":Ljava/lang/String;
    move-object/from16 v20, v7

    const-string/jumbo v21, "UTF-8"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v20

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v9, v20

    .line 288
    .local v9, "payloadSize":I
    move/from16 v20, v9

    const v21, 0x1e6666

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_0

    const/16 v20, 0x1

    :goto_0
    move/from16 v10, v20

    .line 291
    .local v10, "isLargePayload":Z
    move-object/from16 v20, v4

    move-object/from16 v0, v20

    instance-of v0, v0, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;

    move/from16 v20, v0

    if-eqz v20, :cond_2

    .line 292
    move/from16 v20, v10

    if-eqz v20, :cond_1

    .line 293
    new-instance v20, Lcom/microsoft/appcenter/persistence/Persistence$PersistenceException;

    move-object/from16 v26, v20

    move-object/from16 v20, v26

    move-object/from16 v21, v26

    const-string/jumbo v22, "Log is larger than 1992294 bytes, cannot send to OneCollector."

    invoke-direct/range {v21 .. v22}, Lcom/microsoft/appcenter/persistence/Persistence$PersistenceException;-><init>(Ljava/lang/String;)V

    throw v20
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 354
    .end local v7    # "payload":Ljava/lang/String;
    .end local v9    # "payloadSize":I
    .end local v10    # "isLargePayload":Z
    :catch_0
    move-exception v20

    move-object/from16 v7, v20

    .line 355
    .local v7, "e":Lorg/json/JSONException;
    new-instance v20, Lcom/microsoft/appcenter/persistence/Persistence$PersistenceException;

    move-object/from16 v26, v20

    move-object/from16 v20, v26

    move-object/from16 v21, v26

    const-string/jumbo v22, "Cannot convert to JSON string."

    move-object/from16 v23, v7

    invoke-direct/range {v21 .. v23}, Lcom/microsoft/appcenter/persistence/Persistence$PersistenceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v20

    .line 288
    .local v7, "payload":Ljava/lang/String;
    .restart local v9    # "payloadSize":I
    :cond_0
    const/16 v20, 0x0

    goto :goto_0

    .line 295
    .restart local v10    # "isLargePayload":Z
    :cond_1
    move-object/from16 v20, v4

    :try_start_1
    invoke-interface/range {v20 .. v20}, Lcom/microsoft/appcenter/ingestion/models/Log;->getTransmissionTargetTokens()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v12, v20

    .line 296
    .local v12, "targetToken":Ljava/lang/String;
    move-object/from16 v20, v12

    invoke-static/range {v20 .. v20}, Lcom/microsoft/appcenter/ingestion/models/one/PartAUtils;->getTargetKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v11, v20

    .line 297
    .local v11, "targetKey":Ljava/lang/String;
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->getInstance(Landroid/content/Context;)Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;

    move-result-object v20

    move-object/from16 v21, v12

    invoke-virtual/range {v20 .. v21}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v12, v20

    .line 302
    :goto_1
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mDatabaseManager:Lcom/microsoft/appcenter/utils/storage/DatabaseManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->getMaxSize()J

    move-result-wide v20

    move-wide/from16 v13, v20

    .line 303
    .local v13, "maxSize":J
    move-wide/from16 v20, v13

    const-wide/16 v22, -0x1

    cmp-long v20, v20, v22

    if-nez v20, :cond_3

    .line 304
    new-instance v20, Lcom/microsoft/appcenter/persistence/Persistence$PersistenceException;

    move-object/from16 v26, v20

    move-object/from16 v20, v26

    move-object/from16 v21, v26

    const-string/jumbo v22, "Failed to store a log to the Persistence database."

    invoke-direct/range {v21 .. v22}, Lcom/microsoft/appcenter/persistence/Persistence$PersistenceException;-><init>(Ljava/lang/String;)V

    throw v20
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 356
    .end local v7    # "payload":Ljava/lang/String;
    .end local v9    # "payloadSize":I
    .end local v10    # "isLargePayload":Z
    .end local v11    # "targetKey":Ljava/lang/String;
    .end local v12    # "targetToken":Ljava/lang/String;
    .end local v13    # "maxSize":J
    :catch_1
    move-exception v20

    move-object/from16 v7, v20

    .line 357
    .local v7, "e":Ljava/io/IOException;
    new-instance v20, Lcom/microsoft/appcenter/persistence/Persistence$PersistenceException;

    move-object/from16 v26, v20

    move-object/from16 v20, v26

    move-object/from16 v21, v26

    const-string/jumbo v22, "Cannot save large payload in a file."

    move-object/from16 v23, v7

    invoke-direct/range {v21 .. v23}, Lcom/microsoft/appcenter/persistence/Persistence$PersistenceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v20

    .line 299
    .local v7, "payload":Ljava/lang/String;
    .restart local v9    # "payloadSize":I
    .restart local v10    # "isLargePayload":Z
    :cond_2
    const/16 v20, 0x0

    move-object/from16 v11, v20

    .line 300
    .restart local v11    # "targetKey":Ljava/lang/String;
    const/16 v20, 0x0

    move-object/from16 v12, v20

    .restart local v12    # "targetToken":Ljava/lang/String;
    goto :goto_1

    .line 306
    .restart local v13    # "maxSize":J
    :cond_3
    move-wide/from16 v20, v13

    move/from16 v22, v9

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    cmp-long v20, v20, v22

    if-gtz v20, :cond_4

    .line 307
    :try_start_2
    new-instance v20, Lcom/microsoft/appcenter/persistence/Persistence$PersistenceException;

    move-object/from16 v26, v20

    move-object/from16 v20, v26

    move-object/from16 v21, v26

    new-instance v22, Ljava/lang/StringBuilder;

    move-object/from16 v26, v22

    move-object/from16 v22, v26

    move-object/from16 v23, v26

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Log is too large ("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move/from16 v23, v9

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " bytes) to store in database. Current maximum database size is "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-wide/from16 v23, v13

    invoke-virtual/range {v22 .. v24}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " bytes."

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Lcom/microsoft/appcenter/persistence/Persistence$PersistenceException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 310
    :cond_4
    move/from16 v20, v6

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lcom/microsoft/appcenter/Flags;->getPersistenceFlag(IZ)I

    move-result v20

    move/from16 v15, v20

    .line 311
    .local v15, "priority":I
    move-object/from16 v20, v5

    move/from16 v21, v10

    if-eqz v21, :cond_6

    const/16 v21, 0x0

    :goto_2
    move-object/from16 v22, v12

    move-object/from16 v23, v4

    invoke-interface/range {v23 .. v23}, Lcom/microsoft/appcenter/ingestion/models/Log;->getType()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v24, v11

    move/from16 v25, v15

    invoke-static/range {v20 .. v25}, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->getContentValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v20

    move-object/from16 v8, v20

    .line 312
    .local v8, "contentValues":Landroid/content/ContentValues;
    :cond_5
    move/from16 v20, v10

    if-eqz v20, :cond_7

    move/from16 v20, v9

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v22, v3

    invoke-direct/range {v22 .. v22}, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->getStoredDataSize()J

    move-result-wide v22

    add-long v20, v20, v22

    move-wide/from16 v22, v13

    cmp-long v20, v20, v22

    if-lez v20, :cond_7

    .line 313
    const-string/jumbo v20, "AppCenter"

    const-string/jumbo v21, "Storage is full, trying to delete the oldest log that has the lowest priority which is lower or equal priority than the new log."

    invoke-static/range {v20 .. v21}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    move-object/from16 v20, v3

    move/from16 v21, v15

    invoke-direct/range {v20 .. v21}, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->deleteTheOldestLog(I)J

    move-result-wide v20

    const-wide/16 v22, -0x1

    cmp-long v20, v20, v22

    if-nez v20, :cond_5

    .line 315
    new-instance v20, Lcom/microsoft/appcenter/persistence/Persistence$PersistenceException;

    move-object/from16 v26, v20

    move-object/from16 v20, v26

    move-object/from16 v21, v26

    const-string/jumbo v22, "Failed to clear space for new log record."

    invoke-direct/range {v21 .. v22}, Lcom/microsoft/appcenter/persistence/Persistence$PersistenceException;-><init>(Ljava/lang/String;)V

    throw v20
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 311
    .end local v8    # "contentValues":Landroid/content/ContentValues;
    :cond_6
    move-object/from16 v21, v7

    goto :goto_2

    .line 318
    .restart local v8    # "contentValues":Landroid/content/ContentValues;
    :cond_7
    const/16 v20, 0x0

    move-object/from16 v16, v20

    .line 319
    .local v16, "databaseId":Ljava/lang/Long;
    :goto_3
    move-object/from16 v20, v16

    if-nez v20, :cond_9

    .line 321
    move-object/from16 v20, v3

    :try_start_3
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mDatabaseManager:Lcom/microsoft/appcenter/utils/storage/DatabaseManager;

    move-object/from16 v20, v0

    move-object/from16 v21, v8

    invoke-virtual/range {v20 .. v21}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->put(Landroid/content/ContentValues;)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v20

    move-object/from16 v16, v20

    .line 327
    goto :goto_3

    .line 322
    :catch_2
    move-exception v20

    move-object/from16 v17, v20

    .line 323
    .local v17, "e":Landroid/database/sqlite/SQLiteFullException;
    :try_start_4
    const-string/jumbo v20, "AppCenter"

    const-string/jumbo v21, "Storage is full, trying to delete the oldest log that has the lowest priority which is lower or equal priority than the new log."

    invoke-static/range {v20 .. v21}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    move-object/from16 v20, v3

    move/from16 v21, v15

    invoke-direct/range {v20 .. v21}, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->deleteTheOldestLog(I)J

    move-result-wide v20

    const-wide/16 v22, -0x1

    cmp-long v20, v20, v22

    if-nez v20, :cond_8

    .line 325
    const-wide/16 v20, -0x1

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v16, v20

    .line 327
    :cond_8
    goto :goto_3

    .line 329
    .end local v17    # "e":Landroid/database/sqlite/SQLiteFullException;
    :cond_9
    move-object/from16 v20, v16

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    const-wide/16 v22, -0x1

    cmp-long v20, v20, v22

    if-nez v20, :cond_a

    .line 330
    new-instance v20, Lcom/microsoft/appcenter/persistence/Persistence$PersistenceException;

    move-object/from16 v26, v20

    move-object/from16 v20, v26

    move-object/from16 v21, v26

    new-instance v22, Ljava/lang/StringBuilder;

    move-object/from16 v26, v22

    move-object/from16 v22, v26

    move-object/from16 v23, v26

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Failed to store a log to the Persistence database for log type "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v23, v4

    invoke-interface/range {v23 .. v23}, Lcom/microsoft/appcenter/ingestion/models/Log;->getType()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "."

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Lcom/microsoft/appcenter/persistence/Persistence$PersistenceException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 332
    :cond_a
    const-string/jumbo v20, "AppCenter"

    new-instance v21, Ljava/lang/StringBuilder;

    move-object/from16 v26, v21

    move-object/from16 v21, v26

    move-object/from16 v22, v26

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Stored a log to the Persistence database for log type "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v22, v4

    invoke-interface/range {v22 .. v22}, Lcom/microsoft/appcenter/ingestion/models/Log;->getType()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " with databaseId="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v22, v16

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    move/from16 v20, v10

    if-eqz v20, :cond_b

    .line 334
    const-string/jumbo v20, "AppCenter"

    const-string/jumbo v21, "Payload is larger than what SQLite supports, storing payload in a separate file."

    invoke-static/range {v20 .. v21}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    move-object/from16 v20, v3

    move-object/from16 v21, v5

    invoke-virtual/range {v20 .. v21}, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->getLargePayloadGroupDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v20

    move-object/from16 v17, v20

    .line 338
    .local v17, "directory":Ljava/io/File;
    move-object/from16 v20, v17

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->mkdir()Z

    move-result v20

    .line 339
    move-object/from16 v20, v3

    move-object/from16 v21, v17

    move-object/from16 v22, v16

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    invoke-virtual/range {v20 .. v23}, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->getLargePayloadFile(Ljava/io/File;J)Ljava/io/File;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v20

    move-object/from16 v18, v20

    .line 341
    .local v18, "payloadFile":Ljava/io/File;
    move-object/from16 v20, v18

    move-object/from16 v21, v7

    :try_start_5
    invoke-static/range {v20 .. v21}, Lcom/microsoft/appcenter/utils/storage/FileManager;->write(Ljava/io/File;Ljava/lang/String;)V

    .line 342
    move-object/from16 v20, v3

    move-object/from16 v26, v20

    move-object/from16 v20, v26

    move-object/from16 v21, v26

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mLargePayloadsSize:J

    move-wide/from16 v21, v0

    move-object/from16 v23, v18

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->length()J

    move-result-wide v23

    add-long v21, v21, v23

    move-wide/from16 v0, v21

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mLargePayloadsSize:J

    .line 343
    const-string/jumbo v20, "AppCenter"

    new-instance v21, Ljava/lang/StringBuilder;

    move-object/from16 v26, v21

    move-object/from16 v21, v26

    move-object/from16 v22, v26

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Store extra "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v22, v18

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->length()J

    move-result-wide v22

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " KB as a separated payload file."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/microsoft/appcenter/utils/AppCenterLog;->verbose(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    .line 349
    .line 350
    :try_start_6
    const-string/jumbo v20, "AppCenter"

    new-instance v21, Ljava/lang/StringBuilder;

    move-object/from16 v26, v21

    move-object/from16 v21, v26

    move-object/from16 v22, v26

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Payload written to "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v22, v18

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    .end local v17    # "directory":Ljava/io/File;
    .end local v18    # "payloadFile":Ljava/io/File;
    :cond_b
    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->deleteLogsThatNotFitMaxSize()V

    .line 353
    move-object/from16 v20, v16

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    move-wide/from16 v3, v20

    .end local v3    # "this":Lcom/microsoft/appcenter/persistence/DatabasePersistence;
    return-wide v3

    .line 344
    .restart local v3    # "this":Lcom/microsoft/appcenter/persistence/DatabasePersistence;
    .restart local v17    # "directory":Ljava/io/File;
    .restart local v18    # "payloadFile":Ljava/io/File;
    :catch_3
    move-exception v20

    move-object/from16 v19, v20

    .line 347
    .local v19, "e":Ljava/io/IOException;
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mDatabaseManager:Lcom/microsoft/appcenter/utils/storage/DatabaseManager;

    move-object/from16 v20, v0

    move-object/from16 v21, v16

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    invoke-virtual/range {v20 .. v22}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->delete(J)V

    .line 348
    move-object/from16 v20, v19

    throw v20
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
.end method

.method public setMaxStorageSize(J)Z
    .locals 9

    .prologue
    .line 272
    move-object v1, p0

    .local v1, "this":Lcom/microsoft/appcenter/persistence/DatabasePersistence;
    move-wide v2, p1

    .local v2, "maxStorageSizeInBytes":J
    move-object v5, v1

    iget-object v5, v5, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mDatabaseManager:Lcom/microsoft/appcenter/utils/storage/DatabaseManager;

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->setMaxSize(J)Z

    move-result v5

    move v4, v5

    .line 273
    .local v4, "success":Z
    move-object v5, v1

    invoke-virtual {v5}, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->deleteLogsThatNotFitMaxSize()V

    .line 274
    move v5, v4

    move v1, v5

    .end local v1    # "this":Lcom/microsoft/appcenter/persistence/DatabasePersistence;
    return v1
.end method
