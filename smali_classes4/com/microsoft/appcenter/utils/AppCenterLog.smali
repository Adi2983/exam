.class public Lcom/microsoft/appcenter/utils/AppCenterLog;
.super Ljava/lang/Object;
.source "AppCenterLog.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "AppCenter"

.field public static final NONE:I = 0x8

.field private static mCustomLogger:Ljava/util/logging/Logger;

.field private static sLogLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x7

    sput v0, Lcom/microsoft/appcenter/utils/AppCenterLog;->sLogLevel:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/AppCenterLog;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "tag":Ljava/lang/String;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    sget v2, Lcom/microsoft/appcenter/utils/AppCenterLog;->sLogLevel:I

    const/4 v3, 0x3

    if-gt v2, v3, :cond_0

    .line 120
    sget-object v2, Lcom/microsoft/appcenter/utils/AppCenterLog;->mCustomLogger:Ljava/util/logging/Logger;

    if-eqz v2, :cond_1

    .line 121
    sget-object v2, Lcom/microsoft/appcenter/utils/AppCenterLog;->mCustomLogger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    move-object v4, v0

    move-object v5, v1

    invoke-static {v4, v5}, Lcom/microsoft/appcenter/utils/AppCenterLog;->getMessageWithTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 7
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "tag":Ljava/lang/String;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    move-object v2, p2

    .local v2, "throwable":Ljava/lang/Throwable;
    sget v3, Lcom/microsoft/appcenter/utils/AppCenterLog;->sLogLevel:I

    const/4 v4, 0x3

    if-gt v3, v4, :cond_0

    .line 137
    sget-object v3, Lcom/microsoft/appcenter/utils/AppCenterLog;->mCustomLogger:Ljava/util/logging/Logger;

    if-eqz v3, :cond_1

    .line 138
    sget-object v3, Lcom/microsoft/appcenter/utils/AppCenterLog;->mCustomLogger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    move-object v5, v0

    move-object v6, v1

    invoke-static {v5, v6}, Lcom/microsoft/appcenter/utils/AppCenterLog;->getMessageWithTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-static {v3, v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v3

    goto :goto_0
.end method

.method public static error(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 219
    move-object v0, p0

    .local v0, "tag":Ljava/lang/String;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    sget v2, Lcom/microsoft/appcenter/utils/AppCenterLog;->sLogLevel:I

    const/4 v3, 0x6

    if-gt v2, v3, :cond_0

    .line 220
    sget-object v2, Lcom/microsoft/appcenter/utils/AppCenterLog;->mCustomLogger:Ljava/util/logging/Logger;

    if-eqz v2, :cond_1

    .line 221
    sget-object v2, Lcom/microsoft/appcenter/utils/AppCenterLog;->mCustomLogger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    move-object v4, v0

    move-object v5, v1

    invoke-static {v4, v5}, Lcom/microsoft/appcenter/utils/AppCenterLog;->getMessageWithTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public static error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 7
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 236
    move-object v0, p0

    .local v0, "tag":Ljava/lang/String;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    move-object v2, p2

    .local v2, "throwable":Ljava/lang/Throwable;
    sget v3, Lcom/microsoft/appcenter/utils/AppCenterLog;->sLogLevel:I

    const/4 v4, 0x6

    if-gt v3, v4, :cond_0

    .line 237
    sget-object v3, Lcom/microsoft/appcenter/utils/AppCenterLog;->mCustomLogger:Ljava/util/logging/Logger;

    if-eqz v3, :cond_1

    .line 238
    sget-object v3, Lcom/microsoft/appcenter/utils/AppCenterLog;->mCustomLogger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    move-object v5, v0

    move-object v6, v1

    invoke-static {v5, v6}, Lcom/microsoft/appcenter/utils/AppCenterLog;->getMessageWithTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-static {v3, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v3

    goto :goto_0
.end method

.method public static getLogLevel()I
    .locals 1
    .annotation build Landroidx/annotation/IntRange;
        from = 0x2L
        to = 0x8L
    .end annotation

    .prologue
    .line 66
    sget v0, Lcom/microsoft/appcenter/utils/AppCenterLog;->sLogLevel:I

    return v0
.end method

.method private static getMessageWithTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 273
    move-object v0, p0

    .local v0, "tag":Ljava/lang/String;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    const-string/jumbo v2, "%s: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    move-object v6, v0

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    move-object v6, v1

    aput-object v6, v4, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "tag":Ljava/lang/String;
    return-object v0
.end method

.method public static info(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "tag":Ljava/lang/String;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    sget v2, Lcom/microsoft/appcenter/utils/AppCenterLog;->sLogLevel:I

    const/4 v3, 0x4

    if-gt v2, v3, :cond_0

    .line 153
    sget-object v2, Lcom/microsoft/appcenter/utils/AppCenterLog;->mCustomLogger:Ljava/util/logging/Logger;

    if-eqz v2, :cond_1

    .line 154
    sget-object v2, Lcom/microsoft/appcenter/utils/AppCenterLog;->mCustomLogger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    move-object v4, v0

    move-object v5, v1

    invoke-static {v4, v5}, Lcom/microsoft/appcenter/utils/AppCenterLog;->getMessageWithTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public static info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 7
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 170
    move-object v0, p0

    .local v0, "tag":Ljava/lang/String;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    move-object v2, p2

    .local v2, "throwable":Ljava/lang/Throwable;
    sget v3, Lcom/microsoft/appcenter/utils/AppCenterLog;->sLogLevel:I

    const/4 v4, 0x4

    if-gt v3, v4, :cond_0

    .line 171
    sget-object v3, Lcom/microsoft/appcenter/utils/AppCenterLog;->mCustomLogger:Ljava/util/logging/Logger;

    if-eqz v3, :cond_1

    .line 172
    sget-object v3, Lcom/microsoft/appcenter/utils/AppCenterLog;->mCustomLogger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    move-object v5, v0

    move-object v6, v1

    invoke-static {v5, v6}, Lcom/microsoft/appcenter/utils/AppCenterLog;->getMessageWithTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-static {v3, v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v3

    goto :goto_0
.end method

.method public static logAssert(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 253
    move-object v0, p0

    .local v0, "tag":Ljava/lang/String;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    sget v2, Lcom/microsoft/appcenter/utils/AppCenterLog;->sLogLevel:I

    const/4 v3, 0x7

    if-gt v2, v3, :cond_0

    .line 254
    const/4 v2, 0x7

    move-object v3, v0

    move-object v4, v1

    invoke-static {v2, v3, v4}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 256
    :cond_0
    return-void
.end method

.method public static logAssert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 8
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 267
    move-object v0, p0

    .local v0, "tag":Ljava/lang/String;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    move-object v2, p2

    .local v2, "throwable":Ljava/lang/Throwable;
    sget v3, Lcom/microsoft/appcenter/utils/AppCenterLog;->sLogLevel:I

    const/4 v4, 0x7

    if-gt v3, v4, :cond_0

    .line 268
    const/4 v3, 0x7

    move-object v4, v0

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v2

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 270
    :cond_0
    return-void
.end method

.method public static setLogLevel(I)V
    .locals 2
    .param p0    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x2L
            to = 0x8L
        .end annotation
    .end param

    .prologue
    .line 75
    move v0, p0

    .local v0, "logLevel":I
    move v1, v0

    sput v1, Lcom/microsoft/appcenter/utils/AppCenterLog;->sLogLevel:I

    .line 76
    return-void
.end method

.method public static setLogger(Ljava/util/logging/Logger;)V
    .locals 2

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "logger":Ljava/util/logging/Logger;
    move-object v1, v0

    sput-object v1, Lcom/microsoft/appcenter/utils/AppCenterLog;->mCustomLogger:Ljava/util/logging/Logger;

    .line 56
    return-void
.end method

.method public static verbose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "tag":Ljava/lang/String;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    sget v2, Lcom/microsoft/appcenter/utils/AppCenterLog;->sLogLevel:I

    const/4 v3, 0x2

    if-gt v2, v3, :cond_0

    .line 86
    sget-object v2, Lcom/microsoft/appcenter/utils/AppCenterLog;->mCustomLogger:Ljava/util/logging/Logger;

    if-eqz v2, :cond_1

    .line 87
    sget-object v2, Lcom/microsoft/appcenter/utils/AppCenterLog;->mCustomLogger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    move-object v4, v0

    move-object v5, v1

    invoke-static {v4, v5}, Lcom/microsoft/appcenter/utils/AppCenterLog;->getMessageWithTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public static verbose(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 7
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "tag":Ljava/lang/String;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    move-object v2, p2

    .local v2, "throwable":Ljava/lang/Throwable;
    sget v3, Lcom/microsoft/appcenter/utils/AppCenterLog;->sLogLevel:I

    const/4 v4, 0x2

    if-gt v3, v4, :cond_0

    .line 104
    sget-object v3, Lcom/microsoft/appcenter/utils/AppCenterLog;->mCustomLogger:Ljava/util/logging/Logger;

    if-eqz v3, :cond_1

    .line 105
    sget-object v3, Lcom/microsoft/appcenter/utils/AppCenterLog;->mCustomLogger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    move-object v5, v0

    move-object v6, v1

    invoke-static {v5, v6}, Lcom/microsoft/appcenter/utils/AppCenterLog;->getMessageWithTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-static {v3, v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v3

    goto :goto_0
.end method

.method public static warn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 186
    move-object v0, p0

    .local v0, "tag":Ljava/lang/String;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    sget v2, Lcom/microsoft/appcenter/utils/AppCenterLog;->sLogLevel:I

    const/4 v3, 0x5

    if-gt v2, v3, :cond_0

    .line 187
    sget-object v2, Lcom/microsoft/appcenter/utils/AppCenterLog;->mCustomLogger:Ljava/util/logging/Logger;

    if-eqz v2, :cond_1

    .line 188
    sget-object v2, Lcom/microsoft/appcenter/utils/AppCenterLog;->mCustomLogger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    move-object v4, v0

    move-object v5, v1

    invoke-static {v4, v5}, Lcom/microsoft/appcenter/utils/AppCenterLog;->getMessageWithTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public static warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 7
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 203
    move-object v0, p0

    .local v0, "tag":Ljava/lang/String;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    move-object v2, p2

    .local v2, "throwable":Ljava/lang/Throwable;
    sget v3, Lcom/microsoft/appcenter/utils/AppCenterLog;->sLogLevel:I

    const/4 v4, 0x5

    if-gt v3, v4, :cond_0

    .line 204
    sget-object v3, Lcom/microsoft/appcenter/utils/AppCenterLog;->mCustomLogger:Ljava/util/logging/Logger;

    if-eqz v3, :cond_1

    .line 205
    sget-object v3, Lcom/microsoft/appcenter/utils/AppCenterLog;->mCustomLogger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    move-object v5, v0

    move-object v6, v1

    invoke-static {v5, v6}, Lcom/microsoft/appcenter/utils/AppCenterLog;->getMessageWithTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-static {v3, v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v3

    goto :goto_0
.end method
