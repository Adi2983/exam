.class public Lnet/lingala/zip4j/progress/ProgressMonitor;
.super Ljava/lang/Object;
.source "ProgressMonitor.java"


# static fields
.field public static final OPERATION_ADD:I = 0x0

.field public static final OPERATION_CALC_CRC:I = 0x3

.field public static final OPERATION_EXTRACT:I = 0x1

.field public static final OPERATION_MERGE:I = 0x4

.field public static final OPERATION_NONE:I = -0x1

.field public static final OPERATION_REMOVE:I = 0x2

.field public static final RESULT_CANCELLED:I = 0x3

.field public static final RESULT_ERROR:I = 0x2

.field public static final RESULT_SUCCESS:I = 0x0

.field public static final RESULT_WORKING:I = 0x1

.field public static final STATE_BUSY:I = 0x1

.field public static final STATE_READY:I


# instance fields
.field private cancelAllTasks:Z

.field private currentOperation:I

.field private exception:Ljava/lang/Throwable;

.field private fileName:Ljava/lang/String;

.field private pause:Z

.field private percentDone:I

.field private result:I

.field private state:I

.field private totalWork:J

.field private workCompleted:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/progress/ProgressMonitor;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 57
    move-object v1, v0

    invoke-virtual {v1}, Lnet/lingala/zip4j/progress/ProgressMonitor;->reset()V

    .line 58
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lnet/lingala/zip4j/progress/ProgressMonitor;->percentDone:I

    .line 59
    return-void
.end method


# virtual methods
.method public cancelAllTasks()V
    .locals 3

    .prologue
    .line 170
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/progress/ProgressMonitor;
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lnet/lingala/zip4j/progress/ProgressMonitor;->cancelAllTasks:Z

    .line 171
    return-void
.end method

.method public endProgressMonitorError(Ljava/lang/Throwable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/progress/ProgressMonitor;
    move-object v1, p1

    .local v1, "e":Ljava/lang/Throwable;
    move-object v2, v0

    invoke-virtual {v2}, Lnet/lingala/zip4j/progress/ProgressMonitor;->reset()V

    .line 146
    move-object v2, v0

    const/4 v3, 0x2

    iput v3, v2, Lnet/lingala/zip4j/progress/ProgressMonitor;->result:I

    .line 147
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lnet/lingala/zip4j/progress/ProgressMonitor;->exception:Ljava/lang/Throwable;

    .line 148
    return-void
.end method

.method public endProgressMonitorSuccess()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/progress/ProgressMonitor;
    move-object v1, v0

    invoke-virtual {v1}, Lnet/lingala/zip4j/progress/ProgressMonitor;->reset()V

    .line 141
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lnet/lingala/zip4j/progress/ProgressMonitor;->result:I

    .line 142
    return-void
.end method

.method public fullReset()V
    .locals 3

    .prologue
    .line 160
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/progress/ProgressMonitor;
    move-object v1, v0

    invoke-virtual {v1}, Lnet/lingala/zip4j/progress/ProgressMonitor;->reset()V

    .line 161
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lnet/lingala/zip4j/progress/ProgressMonitor;->exception:Ljava/lang/Throwable;

    .line 162
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lnet/lingala/zip4j/progress/ProgressMonitor;->result:I

    .line 163
    return-void
.end method

.method public getCurrentOperation()I
    .locals 2

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/progress/ProgressMonitor;
    move-object v1, v0

    iget v1, v1, Lnet/lingala/zip4j/progress/ProgressMonitor;->currentOperation:I

    move v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/progress/ProgressMonitor;
    return v0
.end method

.method public getException()Ljava/lang/Throwable;
    .locals 2

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/progress/ProgressMonitor;
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/progress/ProgressMonitor;->exception:Ljava/lang/Throwable;

    move-object v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/progress/ProgressMonitor;
    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/progress/ProgressMonitor;
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/progress/ProgressMonitor;->fileName:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/progress/ProgressMonitor;
    return-object v0
.end method

.method public getPercentDone()I
    .locals 2

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/progress/ProgressMonitor;
    move-object v1, v0

    iget v1, v1, Lnet/lingala/zip4j/progress/ProgressMonitor;->percentDone:I

    move v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/progress/ProgressMonitor;
    return v0
.end method

.method public getResult()I
    .locals 2

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/progress/ProgressMonitor;
    move-object v1, v0

    iget v1, v1, Lnet/lingala/zip4j/progress/ProgressMonitor;->result:I

    move v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/progress/ProgressMonitor;
    return v0
.end method

.method public getState()I
    .locals 2

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/progress/ProgressMonitor;
    move-object v1, v0

    iget v1, v1, Lnet/lingala/zip4j/progress/ProgressMonitor;->state:I

    move v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/progress/ProgressMonitor;
    return v0
.end method

.method public getTotalWork()J
    .locals 3

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/progress/ProgressMonitor;
    move-object v1, v0

    iget-wide v1, v1, Lnet/lingala/zip4j/progress/ProgressMonitor;->totalWork:J

    move-wide v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/progress/ProgressMonitor;
    return-wide v0
.end method

.method public getWorkCompleted()J
    .locals 3

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/progress/ProgressMonitor;
    move-object v1, v0

    iget-wide v1, v1, Lnet/lingala/zip4j/progress/ProgressMonitor;->workCompleted:J

    move-wide v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/progress/ProgressMonitor;
    return-wide v0
.end method

.method public isCancelAllTasks()Z
    .locals 2

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/progress/ProgressMonitor;
    move-object v1, v0

    iget-boolean v1, v1, Lnet/lingala/zip4j/progress/ProgressMonitor;->cancelAllTasks:Z

    move v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/progress/ProgressMonitor;
    return v0
.end method

.method public isPause()Z
    .locals 2

    .prologue
    .line 174
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/progress/ProgressMonitor;
    move-object v1, v0

    iget-boolean v1, v1, Lnet/lingala/zip4j/progress/ProgressMonitor;->pause:Z

    move v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/progress/ProgressMonitor;
    return v0
.end method

.method public reset()V
    .locals 4

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/progress/ProgressMonitor;
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Lnet/lingala/zip4j/progress/ProgressMonitor;->currentOperation:I

    .line 152
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lnet/lingala/zip4j/progress/ProgressMonitor;->state:I

    .line 153
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lnet/lingala/zip4j/progress/ProgressMonitor;->fileName:Ljava/lang/String;

    .line 154
    move-object v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lnet/lingala/zip4j/progress/ProgressMonitor;->totalWork:J

    .line 155
    move-object v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lnet/lingala/zip4j/progress/ProgressMonitor;->workCompleted:J

    .line 156
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lnet/lingala/zip4j/progress/ProgressMonitor;->percentDone:I

    .line 157
    return-void
.end method

.method public setCurrentOperation(I)V
    .locals 4

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/progress/ProgressMonitor;
    move v1, p1

    .local v1, "currentOperation":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lnet/lingala/zip4j/progress/ProgressMonitor;->currentOperation:I

    .line 129
    return-void
.end method

.method public setException(Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/progress/ProgressMonitor;
    move-object v1, p1

    .local v1, "exception":Ljava/lang/Throwable;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lnet/lingala/zip4j/progress/ProgressMonitor;->exception:Ljava/lang/Throwable;

    .line 137
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/progress/ProgressMonitor;
    move-object v1, p1

    .local v1, "fileName":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lnet/lingala/zip4j/progress/ProgressMonitor;->fileName:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setPause(Z)V
    .locals 4

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/progress/ProgressMonitor;
    move v1, p1

    .local v1, "pause":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lnet/lingala/zip4j/progress/ProgressMonitor;->pause:Z

    .line 179
    return-void
.end method

.method public setPercentDone(I)V
    .locals 4

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/progress/ProgressMonitor;
    move v1, p1

    .local v1, "percentDone":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lnet/lingala/zip4j/progress/ProgressMonitor;->percentDone:I

    .line 105
    return-void
.end method

.method public setResult(I)V
    .locals 4

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/progress/ProgressMonitor;
    move v1, p1

    .local v1, "result":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lnet/lingala/zip4j/progress/ProgressMonitor;->result:I

    .line 113
    return-void
.end method

.method public setState(I)V
    .locals 4

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/progress/ProgressMonitor;
    move v1, p1

    .local v1, "state":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lnet/lingala/zip4j/progress/ProgressMonitor;->state:I

    .line 67
    return-void
.end method

.method public setTotalWork(J)V
    .locals 7

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/progress/ProgressMonitor;
    move-wide v1, p1

    .local v1, "totalWork":J
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lnet/lingala/zip4j/progress/ProgressMonitor;->totalWork:J

    .line 75
    return-void
.end method

.method public updateWorkCompleted(J)V
    .locals 11

    .prologue
    .line 82
    move-object v1, p0

    .local v1, "this":Lnet/lingala/zip4j/progress/ProgressMonitor;
    move-wide v2, p1

    .local v2, "workCompleted":J
    move-object v5, v1

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget-wide v6, v6, Lnet/lingala/zip4j/progress/ProgressMonitor;->workCompleted:J

    move-wide v8, v2

    add-long/2addr v6, v8

    iput-wide v6, v5, Lnet/lingala/zip4j/progress/ProgressMonitor;->workCompleted:J

    .line 84
    move-object v5, v1

    iget-wide v5, v5, Lnet/lingala/zip4j/progress/ProgressMonitor;->totalWork:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_0

    .line 85
    move-object v5, v1

    move-object v6, v1

    iget-wide v6, v6, Lnet/lingala/zip4j/progress/ProgressMonitor;->workCompleted:J

    const-wide/16 v8, 0x64

    mul-long/2addr v6, v8

    move-object v8, v1

    iget-wide v8, v8, Lnet/lingala/zip4j/progress/ProgressMonitor;->totalWork:J

    div-long/2addr v6, v8

    long-to-int v6, v6

    iput v6, v5, Lnet/lingala/zip4j/progress/ProgressMonitor;->percentDone:I

    .line 86
    move-object v5, v1

    iget v5, v5, Lnet/lingala/zip4j/progress/ProgressMonitor;->percentDone:I

    const/16 v6, 0x64

    if-le v5, v6, :cond_0

    .line 87
    move-object v5, v1

    const/16 v6, 0x64

    iput v6, v5, Lnet/lingala/zip4j/progress/ProgressMonitor;->percentDone:I

    .line 90
    :cond_0
    :goto_0
    move-object v5, v1

    iget-boolean v5, v5, Lnet/lingala/zip4j/progress/ProgressMonitor;->pause:Z

    if-nez v5, :cond_1

    .line 97
    return-void

    .line 92
    :cond_1
    const-wide/16 v5, 0x96

    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 93
    :catch_0
    move-exception v5

    move-object v4, v5

    goto :goto_0
.end method
