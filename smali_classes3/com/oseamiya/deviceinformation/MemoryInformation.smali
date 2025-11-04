.class public Lcom/oseamiya/deviceinformation/MemoryInformation;
.super Ljava/lang/Object;
.source "MemoryInformation.java"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 10
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/MemoryInformation;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private memoryInfo()Landroid/app/ActivityManager$MemoryInfo;
    .locals 6

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/MemoryInformation;
    move-object v3, v0

    iget-object v3, v3, Lcom/oseamiya/deviceinformation/MemoryInformation;->context:Landroid/content/Context;

    const-string/jumbo v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    move-object v1, v3

    .line 138
    .local v1, "activityManager":Landroid/app/ActivityManager;
    new-instance v3, Landroid/app/ActivityManager$MemoryInfo;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    move-object v2, v3

    .line 139
    .local v2, "memoryInfo":Landroid/app/ActivityManager$MemoryInfo;
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 140
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lcom/oseamiya/deviceinformation/MemoryInformation;
    return-object v0
.end method


# virtual methods
.method public MemoryInformation(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 13
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/MemoryInformation;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/oseamiya/deviceinformation/MemoryInformation;->context:Landroid/content/Context;

    .line 14
    return-void
.end method

.method public getAvailableExternalStorageSize()J
    .locals 13

    .prologue
    .line 109
    move-object v1, p0

    .local v1, "this":Lcom/oseamiya/deviceinformation/MemoryInformation;
    move-object v8, v1

    invoke-virtual {v8}, Lcom/oseamiya/deviceinformation/MemoryInformation;->isExternalMemoryAvailable()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 110
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    move-object v2, v8

    .line 111
    .local v2, "path":Ljava/io/File;
    new-instance v8, Landroid/os/StatFs;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v2

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    move-object v3, v8

    .line 112
    .local v3, "statFs":Landroid/os/StatFs;
    move-object v8, v3

    invoke-virtual {v8}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v8

    move-wide v4, v8

    .line 113
    .local v4, "blockSize":J
    move-object v8, v3

    invoke-virtual {v8}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v8

    move-wide v6, v8

    .line 114
    .local v6, "availableBlocks":J
    move-wide v8, v4

    move-wide v10, v6

    mul-long/2addr v8, v10

    move-wide v1, v8

    .line 116
    .end local v1    # "this":Lcom/oseamiya/deviceinformation/MemoryInformation;
    :goto_0
    return-wide v1

    .end local v2    # "path":Ljava/io/File;
    .end local v3    # "statFs":Landroid/os/StatFs;
    .end local v4    # "blockSize":J
    .end local v6    # "availableBlocks":J
    .restart local v1    # "this":Lcom/oseamiya/deviceinformation/MemoryInformation;
    :cond_0
    const-wide/32 v8, -0x423a35c7

    move-wide v1, v8

    goto :goto_0
.end method

.method public getAvailableInternalMemorySize()J
    .locals 13

    .prologue
    .line 56
    move-object v1, p0

    .local v1, "this":Lcom/oseamiya/deviceinformation/MemoryInformation;
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v8

    move-object v2, v8

    .line 57
    .local v2, "path":Ljava/io/File;
    new-instance v8, Landroid/os/StatFs;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v2

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    move-object v3, v8

    .line 58
    .local v3, "statFs":Landroid/os/StatFs;
    move-object v8, v3

    invoke-virtual {v8}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v8

    move-wide v4, v8

    .line 59
    .local v4, "blockSize":J
    move-object v8, v3

    invoke-virtual {v8}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v8

    move-wide v6, v8

    .line 60
    .local v6, "availableBlocks":J
    move-wide v8, v6

    move-wide v10, v4

    mul-long/2addr v8, v10

    move-wide v1, v8

    .end local v1    # "this":Lcom/oseamiya/deviceinformation/MemoryInformation;
    return-wide v1
.end method

.method public getAvailableRam()J
    .locals 3

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/MemoryInformation;
    move-object v1, v0

    invoke-direct {v1}, Lcom/oseamiya/deviceinformation/MemoryInformation;->memoryInfo()Landroid/app/ActivityManager$MemoryInfo;

    move-result-object v1

    iget-wide v1, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    move-wide v0, v1

    .end local v0    # "this":Lcom/oseamiya/deviceinformation/MemoryInformation;
    return-wide v0
.end method

.method public getTotalExternalStorageSize()J
    .locals 13

    .prologue
    .line 93
    move-object v1, p0

    .local v1, "this":Lcom/oseamiya/deviceinformation/MemoryInformation;
    move-object v8, v1

    invoke-virtual {v8}, Lcom/oseamiya/deviceinformation/MemoryInformation;->isExternalMemoryAvailable()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 94
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    move-object v2, v8

    .line 95
    .local v2, "path":Ljava/io/File;
    new-instance v8, Landroid/os/StatFs;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v2

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    move-object v3, v8

    .line 96
    .local v3, "statFs":Landroid/os/StatFs;
    move-object v8, v3

    invoke-virtual {v8}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v8

    move-wide v4, v8

    .line 97
    .local v4, "blockSize":J
    move-object v8, v3

    invoke-virtual {v8}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v8

    move-wide v6, v8

    .line 98
    .local v6, "totalBlocks":J
    move-wide v8, v4

    move-wide v10, v6

    mul-long/2addr v8, v10

    move-wide v1, v8

    .line 100
    .end local v1    # "this":Lcom/oseamiya/deviceinformation/MemoryInformation;
    :goto_0
    return-wide v1

    .end local v2    # "path":Ljava/io/File;
    .end local v3    # "statFs":Landroid/os/StatFs;
    .end local v4    # "blockSize":J
    .end local v6    # "totalBlocks":J
    .restart local v1    # "this":Lcom/oseamiya/deviceinformation/MemoryInformation;
    :cond_0
    const-wide/32 v8, -0x423a35c7

    move-wide v1, v8

    goto :goto_0
.end method

.method public getTotalInternalMemorySize()J
    .locals 13

    .prologue
    .line 68
    move-object v1, p0

    .local v1, "this":Lcom/oseamiya/deviceinformation/MemoryInformation;
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v8

    move-object v2, v8

    .line 69
    .local v2, "path":Ljava/io/File;
    new-instance v8, Landroid/os/StatFs;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v2

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    move-object v3, v8

    .line 70
    .local v3, "statFs":Landroid/os/StatFs;
    move-object v8, v3

    invoke-virtual {v8}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v8

    move-wide v4, v8

    .line 71
    .local v4, "blockSize":J
    move-object v8, v3

    invoke-virtual {v8}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v8

    move-wide v6, v8

    .line 72
    .local v6, "totalBlocks":J
    move-wide v8, v4

    move-wide v10, v6

    mul-long/2addr v8, v10

    move-wide v1, v8

    .end local v1    # "this":Lcom/oseamiya/deviceinformation/MemoryInformation;
    return-wide v1
.end method

.method public getTotalRam()J
    .locals 3

    .prologue
    .line 24
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/MemoryInformation;
    move-object v1, v0

    invoke-direct {v1}, Lcom/oseamiya/deviceinformation/MemoryInformation;->memoryInfo()Landroid/app/ActivityManager$MemoryInfo;

    move-result-object v1

    iget-wide v1, v1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    move-wide v0, v1

    .end local v0    # "this":Lcom/oseamiya/deviceinformation/MemoryInformation;
    return-wide v0
.end method

.method public getUsedExternalStorageSize()J
    .locals 6

    .prologue
    .line 125
    move-object v1, p0

    .local v1, "this":Lcom/oseamiya/deviceinformation/MemoryInformation;
    move-object v2, v1

    invoke-virtual {v2}, Lcom/oseamiya/deviceinformation/MemoryInformation;->isExternalMemoryAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 126
    move-object v2, v1

    invoke-virtual {v2}, Lcom/oseamiya/deviceinformation/MemoryInformation;->getTotalExternalStorageSize()J

    move-result-wide v2

    move-object v4, v1

    invoke-virtual {v4}, Lcom/oseamiya/deviceinformation/MemoryInformation;->getAvailableExternalStorageSize()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 127
    move-object v2, v1

    invoke-virtual {v2}, Lcom/oseamiya/deviceinformation/MemoryInformation;->getTotalExternalStorageSize()J

    move-result-wide v2

    move-object v4, v1

    invoke-virtual {v4}, Lcom/oseamiya/deviceinformation/MemoryInformation;->getAvailableExternalStorageSize()J

    move-result-wide v4

    sub-long/2addr v2, v4

    move-wide v1, v2

    .line 132
    .end local v1    # "this":Lcom/oseamiya/deviceinformation/MemoryInformation;
    :goto_0
    return-wide v1

    .line 129
    .restart local v1    # "this":Lcom/oseamiya/deviceinformation/MemoryInformation;
    :cond_0
    const-wide/32 v2, -0x423a35c7

    move-wide v1, v2

    goto :goto_0

    .line 132
    :cond_1
    const-wide/32 v2, -0x423a35c7

    move-wide v1, v2

    goto :goto_0
.end method

.method public getUsedInternalMemorySize()J
    .locals 6

    .prologue
    .line 80
    move-object v1, p0

    .local v1, "this":Lcom/oseamiya/deviceinformation/MemoryInformation;
    move-object v2, v1

    invoke-virtual {v2}, Lcom/oseamiya/deviceinformation/MemoryInformation;->getTotalInternalMemorySize()J

    move-result-wide v2

    move-object v4, v1

    invoke-virtual {v4}, Lcom/oseamiya/deviceinformation/MemoryInformation;->getAvailableInternalMemorySize()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 81
    move-object v2, v1

    invoke-virtual {v2}, Lcom/oseamiya/deviceinformation/MemoryInformation;->getTotalInternalMemorySize()J

    move-result-wide v2

    move-object v4, v1

    invoke-virtual {v4}, Lcom/oseamiya/deviceinformation/MemoryInformation;->getAvailableInternalMemorySize()J

    move-result-wide v4

    sub-long/2addr v2, v4

    move-wide v1, v2

    .line 84
    .end local v1    # "this":Lcom/oseamiya/deviceinformation/MemoryInformation;
    :goto_0
    return-wide v1

    .restart local v1    # "this":Lcom/oseamiya/deviceinformation/MemoryInformation;
    :cond_0
    const-wide/32 v2, -0xa98ac7

    move-wide v1, v2

    goto :goto_0
.end method

.method public getUsedRam()J
    .locals 6

    .prologue
    .line 40
    move-object v1, p0

    .local v1, "this":Lcom/oseamiya/deviceinformation/MemoryInformation;
    move-object v2, v1

    invoke-virtual {v2}, Lcom/oseamiya/deviceinformation/MemoryInformation;->getTotalRam()J

    move-result-wide v2

    move-object v4, v1

    invoke-virtual {v4}, Lcom/oseamiya/deviceinformation/MemoryInformation;->getAvailableRam()J

    move-result-wide v4

    sub-long/2addr v2, v4

    move-wide v1, v2

    .end local v1    # "this":Lcom/oseamiya/deviceinformation/MemoryInformation;
    return-wide v1
.end method

.method public isExternalMemoryAvailable()Z
    .locals 3

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/MemoryInformation;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/oseamiya/deviceinformation/MemoryInformation;
    return v0
.end method
