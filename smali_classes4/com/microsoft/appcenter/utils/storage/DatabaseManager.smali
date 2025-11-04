.class public Lcom/microsoft/appcenter/utils/storage/DatabaseManager;
.super Ljava/lang/Object;
.source "DatabaseManager.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/appcenter/utils/storage/DatabaseManager$Listener;
    }
.end annotation


# static fields
.field public static final OPERATION_FAILED_FLAG:J = -0x1L

.field public static final PRIMARY_KEY:Ljava/lang/String; = "oid"

.field public static final SELECT_PRIMARY_KEY:[Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDatabase:Ljava/lang/String;

.field private final mDefaultTable:Ljava/lang/String;

.field private final mListener:Lcom/microsoft/appcenter/utils/storage/DatabaseManager$Listener;

.field private mSQLiteOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

.field private final mSchema:Landroid/content/ContentValues;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 44
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string/jumbo v3, "oid"

    aput-object v3, v1, v2

    sput-object v0, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->SELECT_PRIMARY_KEY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/content/ContentValues;Ljava/lang/String;Lcom/microsoft/appcenter/utils/storage/DatabaseManager$Listener;)V
    .locals 18
    .param p7    # Lcom/microsoft/appcenter/utils/storage/DatabaseManager$Listener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 92
    move-object/from16 v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/storage/DatabaseManager;
    move-object/from16 v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object/from16 v2, p2

    .local v2, "database":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "defaultTable":Ljava/lang/String;
    move/from16 v4, p4

    .local v4, "version":I
    move-object/from16 v5, p5

    .local v5, "schema":Landroid/content/ContentValues;
    move-object/from16 v6, p6

    .local v6, "sqlCreateCommand":Ljava/lang/String;
    move-object/from16 v7, p7

    .local v7, "listener":Lcom/microsoft/appcenter/utils/storage/DatabaseManager$Listener;
    move-object v8, v0

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 93
    move-object v8, v0

    move-object v9, v1

    iput-object v9, v8, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->mContext:Landroid/content/Context;

    .line 94
    move-object v8, v0

    move-object v9, v2

    iput-object v9, v8, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->mDatabase:Ljava/lang/String;

    .line 95
    move-object v8, v0

    move-object v9, v3

    iput-object v9, v8, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->mDefaultTable:Ljava/lang/String;

    .line 96
    move-object v8, v0

    move-object v9, v5

    iput-object v9, v8, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->mSchema:Landroid/content/ContentValues;

    .line 97
    move-object v8, v0

    move-object v9, v7

    iput-object v9, v8, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->mListener:Lcom/microsoft/appcenter/utils/storage/DatabaseManager$Listener;

    .line 98
    move-object v8, v0

    new-instance v9, Lcom/microsoft/appcenter/utils/storage/DatabaseManager$1;

    move-object/from16 v17, v9

    move-object/from16 v9, v17

    move-object/from16 v10, v17

    move-object v11, v0

    move-object v12, v1

    move-object v13, v2

    const/4 v14, 0x0

    move v15, v4

    move-object/from16 v16, v6

    invoke-direct/range {v10 .. v16}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager$1;-><init>(Lcom/microsoft/appcenter/utils/storage/DatabaseManager;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILjava/lang/String;)V

    iput-object v9, v8, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->mSQLiteOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 111
    return-void
.end method

.method static synthetic access$000(Lcom/microsoft/appcenter/utils/storage/DatabaseManager;)Lcom/microsoft/appcenter/utils/storage/DatabaseManager$Listener;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "x0":Lcom/microsoft/appcenter/utils/storage/DatabaseManager;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->mListener:Lcom/microsoft/appcenter/utils/storage/DatabaseManager$Listener;

    move-object v0, v1

    .end local v0    # "x0":Lcom/microsoft/appcenter/utils/storage/DatabaseManager;
    return-object v0
.end method

.method private static buildValues(Landroid/database/Cursor;Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 11

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "cursor":Landroid/database/Cursor;
    move-object v1, p1

    .local v1, "schema":Landroid/content/ContentValues;
    new-instance v6, Landroid/content/ContentValues;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    move-object v2, v6

    .line 122
    .local v2, "values":Landroid/content/ContentValues;
    const/4 v6, 0x0

    move v3, v6

    .local v3, "i":I
    :goto_0
    move v6, v3

    move-object v7, v0

    invoke-interface {v7}, Landroid/database/Cursor;->getColumnCount()I

    move-result v7

    if-ge v6, v7, :cond_a

    .line 123
    move-object v6, v0

    move v7, v3

    invoke-interface {v6, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 124
    .line 122
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 126
    :cond_0
    move-object v6, v0

    move v7, v3

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 127
    .local v4, "key":Ljava/lang/String;
    move-object v6, v4

    const-string/jumbo v7, "oid"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 128
    move-object v6, v2

    move-object v7, v4

    move-object v8, v0

    move v9, v3

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_1

    .line 130
    :cond_1
    move-object v6, v1

    move-object v7, v4

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    .line 131
    .local v5, "specimen":Ljava/lang/Object;
    move-object v6, v5

    instance-of v6, v6, [B

    if-eqz v6, :cond_2

    .line 132
    move-object v6, v2

    move-object v7, v4

    move-object v8, v0

    move v9, v3

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_1

    .line 133
    :cond_2
    move-object v6, v5

    instance-of v6, v6, Ljava/lang/Double;

    if-eqz v6, :cond_3

    .line 134
    move-object v6, v2

    move-object v7, v4

    move-object v8, v0

    move v9, v3

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    goto :goto_1

    .line 135
    :cond_3
    move-object v6, v5

    instance-of v6, v6, Ljava/lang/Float;

    if-eqz v6, :cond_4

    .line 136
    move-object v6, v2

    move-object v7, v4

    move-object v8, v0

    move v9, v3

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getFloat(I)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    goto :goto_1

    .line 137
    :cond_4
    move-object v6, v5

    instance-of v6, v6, Ljava/lang/Integer;

    if-eqz v6, :cond_5

    .line 138
    move-object v6, v2

    move-object v7, v4

    move-object v8, v0

    move v9, v3

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 139
    :cond_5
    move-object v6, v5

    instance-of v6, v6, Ljava/lang/Long;

    if-eqz v6, :cond_6

    .line 140
    move-object v6, v2

    move-object v7, v4

    move-object v8, v0

    move v9, v3

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_1

    .line 141
    :cond_6
    move-object v6, v5

    instance-of v6, v6, Ljava/lang/Short;

    if-eqz v6, :cond_7

    .line 142
    move-object v6, v2

    move-object v7, v4

    move-object v8, v0

    move v9, v3

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getShort(I)S

    move-result v8

    invoke-static {v8}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Short;)V

    goto/16 :goto_1

    .line 143
    :cond_7
    move-object v6, v5

    instance-of v6, v6, Ljava/lang/Boolean;

    if-eqz v6, :cond_9

    .line 144
    move-object v6, v2

    move-object v7, v4

    move-object v8, v0

    move v9, v3

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_8

    const/4 v8, 0x1

    :goto_2
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto/16 :goto_1

    :cond_8
    const/4 v8, 0x0

    goto :goto_2

    .line 146
    :cond_9
    move-object v6, v2

    move-object v7, v4

    move-object v8, v0

    move v9, v3

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 150
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "specimen":Ljava/lang/Object;
    :cond_a
    move-object v6, v2

    move-object v0, v6

    .end local v0    # "cursor":Landroid/database/Cursor;
    return-object v0
.end method

.method private delete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)I
    .locals 14
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 260
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/storage/DatabaseManager;
    move-object v1, p1

    .local v1, "table":Ljava/lang/String;
    move-object/from16 v2, p2

    .local v2, "key":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "value":Ljava/lang/Object;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    const/4 v8, 0x0

    move-object v9, v3

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    move-object v4, v6

    .line 262
    .local v4, "whereArgs":[Ljava/lang/String;
    move-object v6, v0

    :try_start_0
    invoke-virtual {v6}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    move-object v7, v1

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " = ?"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v9, v4

    invoke-virtual {v6, v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    move v0, v6

    .line 265
    .end local v0    # "this":Lcom/microsoft/appcenter/utils/storage/DatabaseManager;
    :goto_0
    return v0

    .line 263
    .restart local v0    # "this":Lcom/microsoft/appcenter/utils/storage/DatabaseManager;
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 264
    .local v5, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v6, "AppCenter"

    const-string/jumbo v7, "Failed to delete values that match condition=\"%s\" and values=\"%s\" from database %s."

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v13, v11

    move-object v11, v13

    move-object v12, v13

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object v12, v2

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " = ?"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const/4 v10, 0x1

    move-object v11, v4

    invoke-static {v11}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const/4 v10, 0x2

    move-object v11, v0

    iget-object v11, v11, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->mDatabase:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move-object v8, v5

    invoke-static {v6, v7, v8}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 265
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0
.end method


# virtual methods
.method public buildValues(Landroid/database/Cursor;)Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 160
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/storage/DatabaseManager;
    move-object v1, p1

    .local v1, "cursor":Landroid/database/Cursor;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->mSchema:Landroid/content/ContentValues;

    invoke-static {v2, v3}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->buildValues(Landroid/database/Cursor;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/microsoft/appcenter/utils/storage/DatabaseManager;
    return-object v0
.end method

.method public clear()V
    .locals 6

    .prologue
    .line 274
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/storage/DatabaseManager;
    move-object v2, v0

    :try_start_0
    invoke-virtual {v2}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->mDefaultTable:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 277
    .line 278
    :goto_0
    return-void

    .line 275
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 276
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v2, "AppCenter"

    const-string/jumbo v3, "Failed to clear the table."

    move-object v4, v1

    invoke-static {v2, v3, v4}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public close()V
    .locals 5

    .prologue
    .line 288
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/storage/DatabaseManager;
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->mSQLiteOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    .line 292
    :goto_0
    return-void

    .line 289
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 290
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v2, "AppCenter"

    const-string/jumbo v3, "Failed to close the database."

    move-object v4, v1

    invoke-static {v2, v3, v4}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public delete(Ljava/lang/String;Ljava/lang/Object;)I
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 248
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/storage/DatabaseManager;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->mDefaultTable:Ljava/lang/String;

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v3, v4, v5, v6}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->delete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)I

    move-result v3

    move v0, v3

    .end local v0    # "this":Lcom/microsoft/appcenter/utils/storage/DatabaseManager;
    return v0
.end method

.method public delete(J)V
    .locals 9
    .param p1    # J
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .prologue
    .line 211
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/storage/DatabaseManager;
    move-wide v1, p1

    .local v1, "id":J
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->mDefaultTable:Ljava/lang/String;

    const-string/jumbo v5, "oid"

    move-wide v6, v1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->delete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)I

    move-result v3

    .line 212
    return-void
.end method

.method public deleteTheOldestRecord(Ljava/util/Set;Ljava/lang/String;I)Landroid/content/ContentValues;
    .locals 18
    .param p1    # Ljava/util/Set;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/ContentValues;"
        }
    .end annotation

    .prologue
    .line 225
    move-object/from16 v1, p0

    .local v1, "this":Lcom/microsoft/appcenter/utils/storage/DatabaseManager;
    move-object/from16 v2, p1

    .local v2, "columnsToReturn":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v3, p2

    .local v3, "priorityColumn":Ljava/lang/String;
    move/from16 v4, p3

    .local v4, "priority":I
    invoke-static {}, Lcom/microsoft/appcenter/utils/storage/SQLiteUtils;->newSQLiteQueryBuilder()Landroid/database/sqlite/SQLiteQueryBuilder;

    move-result-object v10

    move-object v5, v10

    .line 226
    .local v5, "queryBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    move-object v10, v5

    new-instance v11, Ljava/lang/StringBuilder;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object v12, v3

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " <= ?"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 227
    move-object v10, v2

    const-string/jumbo v11, "oid"

    invoke-interface {v10, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v10

    .line 228
    move-object v10, v1

    move-object v11, v5

    move-object v12, v2

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/String;

    invoke-interface {v12, v13}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/String;

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    const/4 v15, 0x0

    move/from16 v16, v4

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v17, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v17

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object v15, v3

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " , "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "oid"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v11, v12, v13, v14}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->getCursor(Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    move-object v6, v10

    .line 229
    .local v6, "cursor":Landroid/database/Cursor;
    move-object v10, v1

    move-object v11, v6

    invoke-virtual {v10, v11}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->nextValues(Landroid/database/Cursor;)Landroid/content/ContentValues;

    move-result-object v10

    move-object v7, v10

    .line 230
    .local v7, "rowData":Landroid/content/ContentValues;
    move-object v10, v7

    if-eqz v10, :cond_0

    .line 231
    move-object v10, v7

    const-string/jumbo v11, "oid"

    invoke-virtual {v10, v11}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    move-wide v8, v10

    .line 232
    .local v8, "deletedId":J
    move-object v10, v1

    move-wide v11, v8

    invoke-virtual {v10, v11, v12}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->delete(J)V

    .line 233
    const-string/jumbo v10, "AppCenter"

    new-instance v11, Ljava/lang/StringBuilder;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Deleted log id="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide v12, v8

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    move-object v10, v7

    move-object v1, v10

    .line 237
    .end local v1    # "this":Lcom/microsoft/appcenter/utils/storage/DatabaseManager;
    .end local v8    # "deletedId":J
    :goto_0
    return-object v1

    .line 236
    .restart local v1    # "this":Lcom/microsoft/appcenter/utils/storage/DatabaseManager;
    :cond_0
    const-string/jumbo v10, "AppCenter"

    const-string/jumbo v11, "Failed to delete the oldest log from database %s."

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    const/4 v14, 0x0

    move-object v15, v1

    iget-object v15, v15, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->mDatabase:Ljava/lang/String;

    aput-object v15, v13, v14

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const/4 v10, 0x0

    move-object v1, v10

    goto :goto_0
.end method

.method public getCurrentSize()J
    .locals 4

    .prologue
    .line 436
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/storage/DatabaseManager;
    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->mContext:Landroid/content/Context;

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->mDatabase:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    move-object v1, v2

    .line 437
    .local v1, "dbFile":Ljava/io/File;
    move-object v2, v1

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    move-wide v0, v2

    .end local v0    # "this":Lcom/microsoft/appcenter/utils/storage/DatabaseManager;
    return-wide v0
.end method

.method public getCursor(Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .param p1    # Landroid/database/sqlite/SQLiteQueryBuilder;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 319
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/storage/DatabaseManager;
    move-object v1, p1

    .local v1, "queryBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    move-object v2, p2

    .local v2, "columns":[Ljava/lang/String;
    move-object v3, p3

    .local v3, "selectionArgs":[Ljava/lang/String;
    move-object v4, p4

    .local v4, "sortOrder":Ljava/lang/String;
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->mDefaultTable:Ljava/lang/String;

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    invoke-virtual/range {v5 .. v10}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->getCursor(Ljava/lang/String;Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Lcom/microsoft/appcenter/utils/storage/DatabaseManager;
    return-object v0
.end method

.method getCursor(Ljava/lang/String;Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 14
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/database/sqlite/SQLiteQueryBuilder;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 334
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/storage/DatabaseManager;
    move-object v1, p1

    .local v1, "table":Ljava/lang/String;
    move-object/from16 v2, p2

    .local v2, "queryBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    move-object/from16 v3, p3

    .local v3, "columns":[Ljava/lang/String;
    move-object/from16 v4, p4

    .local v4, "selectionArgs":[Ljava/lang/String;
    move-object/from16 v5, p5

    .local v5, "sortOrder":Ljava/lang/String;
    move-object v6, v2

    if-nez v6, :cond_0

    .line 335
    invoke-static {}, Lcom/microsoft/appcenter/utils/storage/SQLiteUtils;->newSQLiteQueryBuilder()Landroid/database/sqlite/SQLiteQueryBuilder;

    move-result-object v6

    move-object v2, v6

    .line 337
    :cond_0
    move-object v6, v2

    move-object v7, v1

    invoke-virtual {v6, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 338
    move-object v6, v2

    move-object v7, v0

    invoke-virtual {v7}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    move-object v8, v3

    const/4 v9, 0x0

    move-object v10, v4

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v13, v5

    invoke-virtual/range {v6 .. v13}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "this":Lcom/microsoft/appcenter/utils/storage/DatabaseManager;
    return-object v0
.end method

.method getDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 352
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/storage/DatabaseManager;
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->mSQLiteOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v0, v2

    .line 364
    .end local v0    # "this":Lcom/microsoft/appcenter/utils/storage/DatabaseManager;
    .local v1, "e":Ljava/lang/RuntimeException;
    :goto_0
    return-object v0

    .line 353
    .end local v1    # "e":Ljava/lang/RuntimeException;
    .restart local v0    # "this":Lcom/microsoft/appcenter/utils/storage/DatabaseManager;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 354
    .restart local v1    # "e":Ljava/lang/RuntimeException;
    const-string/jumbo v2, "AppCenter"

    const-string/jumbo v3, "Failed to open database. Trying to delete database (may be corrupted)."

    move-object v4, v1

    invoke-static {v2, v3, v4}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 357
    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->mContext:Landroid/content/Context;

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->mDatabase:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 358
    const-string/jumbo v2, "AppCenter"

    const-string/jumbo v3, "The database was successfully deleted."

    invoke-static {v2, v3}, Lcom/microsoft/appcenter/utils/AppCenterLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    :goto_1
    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->mSQLiteOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 360
    :cond_0
    const-string/jumbo v2, "AppCenter"

    const-string/jumbo v3, "Failed to delete database."

    invoke-static {v2, v3}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getMaxSize()J
    .locals 5

    .prologue
    .line 422
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/storage/DatabaseManager;
    move-object v2, v0

    :try_start_0
    invoke-virtual {v2}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->getMaximumSize()J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    move-wide v0, v2

    .line 425
    .end local v0    # "this":Lcom/microsoft/appcenter/utils/storage/DatabaseManager;
    .local v1, "e":Ljava/lang/RuntimeException;
    :goto_0
    return-wide v0

    .line 423
    .end local v1    # "e":Ljava/lang/RuntimeException;
    .restart local v0    # "this":Lcom/microsoft/appcenter/utils/storage/DatabaseManager;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 424
    .restart local v1    # "e":Ljava/lang/RuntimeException;
    const-string/jumbo v2, "AppCenter"

    const-string/jumbo v3, "Could not get maximum database size."

    move-object v4, v1

    invoke-static {v2, v3, v4}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 425
    const-wide/16 v2, -0x1

    move-wide v0, v2

    goto :goto_0
.end method

.method public final getRowCount()J
    .locals 5

    .prologue
    .line 301
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/storage/DatabaseManager;
    move-object v2, v0

    :try_start_0
    invoke-virtual {v2}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->mDefaultTable:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    move-wide v0, v2

    .line 304
    .end local v0    # "this":Lcom/microsoft/appcenter/utils/storage/DatabaseManager;
    .local v1, "e":Ljava/lang/RuntimeException;
    :goto_0
    return-wide v0

    .line 302
    .end local v1    # "e":Ljava/lang/RuntimeException;
    .restart local v0    # "this":Lcom/microsoft/appcenter/utils/storage/DatabaseManager;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 303
    .restart local v1    # "e":Ljava/lang/RuntimeException;
    const-string/jumbo v2, "AppCenter"

    const-string/jumbo v3, "Failed to get row count of database."

    move-object v4, v1

    invoke-static {v2, v3, v4}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 304
    const-wide/16 v2, -0x1

    move-wide v0, v2

    goto :goto_0
.end method

.method public nextValues(Landroid/database/Cursor;)Landroid/content/ContentValues;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 172
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/storage/DatabaseManager;
    move-object v1, p1

    .local v1, "cursor":Landroid/database/Cursor;
    move-object v3, v1

    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 173
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->buildValues(Landroid/database/Cursor;)Landroid/content/ContentValues;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v0, v3

    .line 178
    .end local v0    # "this":Lcom/microsoft/appcenter/utils/storage/DatabaseManager;
    :goto_0
    return-object v0

    .line 177
    .line 178
    .restart local v0    # "this":Lcom/microsoft/appcenter/utils/storage/DatabaseManager;
    :cond_0
    :goto_1
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0

    .line 175
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 176
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v3, "AppCenter"

    const-string/jumbo v4, "Failed to get next cursor value: "

    move-object v5, v2

    invoke-static {v3, v4, v5}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public put(Landroid/content/ContentValues;)J
    .locals 13
    .param p1    # Landroid/content/ContentValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteFullException;
        }
    .end annotation

    .prologue
    .line 195
    move-object v1, p0

    .local v1, "this":Lcom/microsoft/appcenter/utils/storage/DatabaseManager;
    move-object v2, p1

    .local v2, "values":Landroid/content/ContentValues;
    move-object v6, v1

    :try_start_0
    invoke-virtual {v6}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    move-object v7, v1

    iget-object v7, v7, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->mDefaultTable:Ljava/lang/String;

    const/4 v8, 0x0

    move-object v9, v2

    invoke-virtual {v6, v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v6

    move-wide v3, v6

    .line 201
    .line 202
    .local v3, "id":J
    :goto_0
    move-wide v6, v3

    move-wide v1, v6

    .end local v1    # "this":Lcom/microsoft/appcenter/utils/storage/DatabaseManager;
    return-wide v1

    .line 196
    .end local v3    # "id":J
    .restart local v1    # "this":Lcom/microsoft/appcenter/utils/storage/DatabaseManager;
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 197
    .local v5, "e":Landroid/database/sqlite/SQLiteFullException;
    move-object v6, v5

    throw v6

    .line 198
    .end local v5    # "e":Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v6

    move-object v5, v6

    .line 199
    .local v5, "e":Ljava/lang/RuntimeException;
    const-wide/16 v6, -0x1

    move-wide v3, v6

    .line 200
    .restart local v3    # "id":J
    const-string/jumbo v6, "AppCenter"

    const-string/jumbo v7, "Failed to insert values (%s) to database %s."

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v2

    invoke-virtual {v11}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x1

    move-object v11, v1

    iget-object v11, v11, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->mDatabase:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move-object v8, v5

    invoke-static {v6, v7, v8}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setMaxSize(J)Z
    .locals 15

    .prologue
    .line 387
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/storage/DatabaseManager;
    move-wide/from16 v1, p1

    .local v1, "maxStorageSizeInBytes":J
    move-object v10, v0

    :try_start_0
    invoke-virtual {v10}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    move-object v3, v10

    .line 388
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    move-object v10, v3

    move-wide v11, v1

    invoke-virtual {v10, v11, v12}, Landroid/database/sqlite/SQLiteDatabase;->setMaximumSize(J)J

    move-result-wide v10

    move-wide v4, v10

    .line 391
    .local v4, "newMaxSize":J
    move-object v10, v3

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->getPageSize()J

    move-result-wide v10

    move-wide v6, v10

    .line 392
    .local v6, "pageSize":J
    move-wide v10, v1

    move-wide v12, v6

    div-long/2addr v10, v12

    move-wide v8, v10

    .line 393
    .local v8, "expectedMultipleMaxSize":J
    move-wide v10, v1

    move-wide v12, v6

    rem-long/2addr v10, v12

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_0

    .line 394
    move-wide v10, v8

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    move-wide v8, v10

    .line 396
    :cond_0
    move-wide v10, v8

    move-wide v12, v6

    mul-long/2addr v10, v12

    move-wide v8, v10

    .line 399
    move-wide v10, v4

    move-wide v12, v8

    cmp-long v10, v10, v12

    if-eqz v10, :cond_1

    .line 400
    const-string/jumbo v10, "AppCenter"

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Could not change maximum database size to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide v12, v1

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " bytes, current maximum size is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide v12, v4

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " bytes."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    const/4 v10, 0x0

    move v0, v10

    .line 411
    .end local v0    # "this":Lcom/microsoft/appcenter/utils/storage/DatabaseManager;
    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v4    # "newMaxSize":J
    .end local v6    # "pageSize":J
    .end local v8    # "expectedMultipleMaxSize":J
    :goto_0
    return v0

    .line 403
    .restart local v0    # "this":Lcom/microsoft/appcenter/utils/storage/DatabaseManager;
    .restart local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v4    # "newMaxSize":J
    .restart local v6    # "pageSize":J
    .restart local v8    # "expectedMultipleMaxSize":J
    :cond_1
    move-wide v10, v1

    move-wide v12, v4

    cmp-long v10, v10, v12

    if-nez v10, :cond_2

    .line 404
    const-string/jumbo v10, "AppCenter"

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Changed maximum database size to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide v12, v4

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " bytes."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/microsoft/appcenter/utils/AppCenterLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    :goto_1
    const/4 v10, 0x1

    move v0, v10

    goto :goto_0

    .line 406
    :cond_2
    const-string/jumbo v10, "AppCenter"

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Changed maximum database size to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide v12, v4

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " bytes (next multiple of page size)."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/microsoft/appcenter/utils/AppCenterLog;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 409
    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v4    # "newMaxSize":J
    .end local v6    # "pageSize":J
    .end local v8    # "expectedMultipleMaxSize":J
    :catch_0
    move-exception v10

    move-object v3, v10

    .line 410
    .local v3, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v10, "AppCenter"

    const-string/jumbo v11, "Could not change maximum database size."

    move-object v12, v3

    invoke-static {v10, v11, v12}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 411
    const/4 v10, 0x0

    move v0, v10

    goto :goto_0
.end method

.method setSQLiteOpenHelper(Landroid/database/sqlite/SQLiteOpenHelper;)V
    .locals 4
    .param p1    # Landroid/database/sqlite/SQLiteOpenHelper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 375
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/storage/DatabaseManager;
    move-object v1, p1

    .local v1, "helper":Landroid/database/sqlite/SQLiteOpenHelper;
    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->mSQLiteOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 376
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->mSQLiteOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 377
    return-void
.end method
