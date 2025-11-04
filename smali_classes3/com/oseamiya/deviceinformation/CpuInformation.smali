.class public Lcom/oseamiya/deviceinformation/CpuInformation;
.super Ljava/lang/Object;
.source "CpuInformation.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# instance fields
.field private final context:Landroid/content/Context;

.field private final hashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/CpuInformation;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 21
    move-object v2, v0

    new-instance v3, Ljava/util/HashMap;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v2, Lcom/oseamiya/deviceinformation/CpuInformation;->hashMap:Ljava/util/HashMap;

    .line 23
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/oseamiya/deviceinformation/CpuInformation;->context:Landroid/content/Context;

    .line 24
    return-void
.end method

.method public static getBogoMips()F
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 66
    const-string/jumbo v2, "/proc/cpuinfo"

    const-string/jumbo v3, "BogoMIPS[\\s]*:[\\s]*(\\d+\\.\\d+)[\\s]*\n"

    const/16 v4, 0x3e8

    invoke-static {v2, v3, v4}, Lcom/oseamiya/deviceinformation/CpuInformation;->matchSystemFile(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/regex/MatchResult;

    move-result-object v2

    move-object v0, v2

    .line 69
    .local v0, "matchResult":Ljava/util/regex/MatchResult;
    move-object v2, v0

    :try_start_0
    invoke-interface {v2}, Ljava/util/regex/MatchResult;->groupCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 70
    move-object v2, v0

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    move v0, v2

    .end local v0    # "matchResult":Ljava/util/regex/MatchResult;
    return v0

    .line 72
    .restart local v0    # "matchResult":Ljava/util/regex/MatchResult;
    :cond_0
    new-instance v2, Ljava/lang/Exception;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    throw v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 75
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/Exception;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static getClockSpeed()I
    .locals 1

    .prologue
    .line 84
    const-string/jumbo v0, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq"

    invoke-static {v0}, Lcom/oseamiya/deviceinformation/CpuInformation;->readSystemFileAsInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getGPUInformation()V
    .locals 9

    .prologue
    .line 244
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/CpuInformation;
    move-object v5, v0

    iget-object v5, v5, Lcom/oseamiya/deviceinformation/CpuInformation;->context:Landroid/content/Context;

    const-string/jumbo v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager;

    move-object v1, v5

    .line 245
    .local v1, "activityManager":Landroid/app/ActivityManager;
    move-object v5, v1

    .line 246
    invoke-virtual {v5}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v5

    move-object v2, v5

    .line 247
    .local v2, "configurationInfo":Landroid/content/pm/ConfigurationInfo;
    move-object v5, v2

    iget v5, v5, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    const/high16 v6, 0x20000

    if-lt v5, v6, :cond_0

    const/4 v5, 0x1

    :goto_0
    move v3, v5

    .line 249
    .local v3, "supportsEs2":Z
    new-instance v5, Landroid/opengl/GLSurfaceView;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    iget-object v7, v7, Lcom/oseamiya/deviceinformation/CpuInformation;->context:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    move-object v4, v5

    .line 250
    .local v4, "glSurfaceView":Landroid/opengl/GLSurfaceView;
    move-object v5, v4

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 251
    return-void

    .line 247
    .end local v3    # "supportsEs2":Z
    .end local v4    # "glSurfaceView":Landroid/opengl/GLSurfaceView;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static getMaxScalingFrequency()I
    .locals 1

    .prologue
    .line 108
    const-string/jumbo v0, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq"

    invoke-static {v0}, Lcom/oseamiya/deviceinformation/CpuInformation;->readSystemFileAsInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getMaximumFrequency()I
    .locals 1

    .prologue
    .line 56
    const-string/jumbo v0, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    invoke-static {v0}, Lcom/oseamiya/deviceinformation/CpuInformation;->readSystemFileAsInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getMinScalingFrequency()I
    .locals 1

    .prologue
    .line 100
    const-string/jumbo v0, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq"

    invoke-static {v0}, Lcom/oseamiya/deviceinformation/CpuInformation;->readSystemFileAsInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getMinimumFrequency()I
    .locals 1

    .prologue
    .line 48
    const-string/jumbo v0, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_min_freq"

    invoke-static {v0}, Lcom/oseamiya/deviceinformation/CpuInformation;->readSystemFileAsInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getSupportedABIs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    return-object v0
.end method

.method public static is64Bit()Z
    .locals 1

    .prologue
    .line 92
    sget-object v0, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static matchSystemFile(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/regex/MatchResult;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 205
    move-object v0, p0

    .local v0, "systemFile":Ljava/lang/String;
    move-object v1, p1

    .local v1, "pattern":Ljava/lang/String;
    move/from16 v2, p2

    .local v2, "horizon":I
    const/4 v7, 0x0

    move-object v3, v7

    .line 207
    .local v3, "in":Ljava/io/InputStream;
    :try_start_0
    new-instance v7, Ljava/lang/ProcessBuilder;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    const-string/jumbo v12, "/system/bin/cat"

    aput-object v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x1

    move-object v12, v0

    aput-object v12, v10, v11

    invoke-direct {v8, v9}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v7

    move-object v4, v7

    .line 209
    .local v4, "process":Ljava/lang/Process;
    move-object v7, v4

    invoke-virtual {v7}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    move-object v3, v7

    .line 210
    new-instance v7, Ljava/util/Scanner;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v3

    invoke-direct {v8, v9}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    move-object v5, v7

    .line 212
    .local v5, "scanner":Ljava/util/Scanner;
    move-object v7, v5

    move-object v8, v1

    move v9, v2

    invoke-virtual {v7, v8, v9}, Ljava/util/Scanner;->findWithinHorizon(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    :goto_0
    move v6, v7

    .line 213
    .local v6, "matchFound":Z
    move v7, v6

    if-eqz v7, :cond_1

    .line 214
    move-object v7, v5

    invoke-virtual {v7}, Ljava/util/Scanner;->match()Ljava/util/regex/MatchResult;

    move-result-object v7

    move-object v0, v7

    .end local v0    # "systemFile":Ljava/lang/String;
    return-object v0

    .line 212
    .end local v6    # "matchFound":Z
    .restart local v0    # "systemFile":Ljava/lang/String;
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 216
    .restart local v6    # "matchFound":Z
    :cond_1
    new-instance v7, Ljava/lang/Exception;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    invoke-direct {v8}, Ljava/lang/Exception;-><init>()V

    throw v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    .end local v4    # "process":Ljava/lang/Process;
    .end local v5    # "scanner":Ljava/util/Scanner;
    .end local v6    # "matchFound":Z
    :catch_0
    move-exception v7

    move-object v4, v7

    .line 219
    .local v4, "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/Exception;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v4

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v7
.end method

.method public static final readFully(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 197
    move-object v0, p0

    .local v0, "pInputStream":Ljava/io/InputStream;
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v3

    .line 198
    .local v1, "sb":Ljava/lang/StringBuilder;
    new-instance v3, Ljava/util/Scanner;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    move-object v2, v3

    .line 199
    .local v2, "sc":Ljava/util/Scanner;
    :goto_0
    move-object v3, v2

    invoke-virtual {v3}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 200
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    goto :goto_0

    .line 202
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "pInputStream":Ljava/io/InputStream;
    return-object v0
.end method

.method private static readSystemFileAsInt(Ljava/lang/String;)I
    .locals 11

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "systemFile":Ljava/lang/String;
    const/4 v4, 0x0

    move-object v1, v4

    .line 185
    .local v1, "inputStream":Ljava/io/InputStream;
    :try_start_0
    new-instance v4, Ljava/lang/ProcessBuilder;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    const-string/jumbo v9, "/system/bin/cat"

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    move-object v9, v0

    aput-object v9, v7, v8

    invoke-direct {v5, v6}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v4

    move-object v2, v4

    .line 186
    .local v2, "process":Ljava/lang/Process;
    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    move-object v1, v4

    .line 187
    move-object v4, v1

    invoke-static {v4}, Lcom/oseamiya/deviceinformation/CpuInformation;->readFully(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 188
    .local v3, "content":Ljava/lang/String;
    move-object v4, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    move v0, v4

    .line 191
    .end local v0    # "systemFile":Ljava/lang/String;
    .end local v2    # "process":Ljava/lang/Process;
    .end local v3    # "content":Ljava/lang/String;
    :goto_0
    return v0

    .line 189
    .restart local v0    # "systemFile":Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 190
    .local v2, "e":Ljava/io/IOException;
    move-object v4, v2

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 191
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method


# virtual methods
.method public getCpuInformation()Ljava/lang/String;
    .locals 13

    .prologue
    .line 160
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/CpuInformation;
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    const-string/jumbo v11, "/system/bin/cat"

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x1

    const-string/jumbo v11, "/proc/cpuinfo"

    aput-object v11, v9, v10

    move-object v3, v8

    .line 163
    .local v3, "DATA":[Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v8

    .line 165
    .local v6, "Holder":Ljava/lang/StringBuilder;
    new-instance v8, Ljava/lang/ProcessBuilder;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v3

    invoke-direct {v9, v10}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    move-object v1, v8

    .line 166
    .local v1, "processBuilder":Ljava/lang/ProcessBuilder;
    const/16 v8, 0x400

    new-array v8, v8, [B

    move-object v5, v8

    .line 168
    .local v5, "byteArray":[B
    move-object v8, v1

    :try_start_0
    invoke-virtual {v8}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v8

    move-object v2, v8

    .line 169
    .local v2, "process":Ljava/lang/Process;
    move-object v8, v2

    invoke-virtual {v8}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    move-object v4, v8

    .line 170
    .local v4, "inputStream":Ljava/io/InputStream;
    :goto_0
    move-object v8, v4

    move-object v9, v5

    invoke-virtual {v8, v9}, Ljava/io/InputStream;->read([B)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_0

    .line 171
    move-object v8, v6

    new-instance v9, Ljava/lang/String;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    move-object v11, v5

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    goto :goto_0

    .line 173
    :cond_0
    move-object v8, v4

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 174
    move-object v8, v6

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    move-object v0, v8

    .line 177
    .end local v0    # "this":Lcom/oseamiya/deviceinformation/CpuInformation;
    .end local v2    # "process":Ljava/lang/Process;
    .end local v4    # "inputStream":Ljava/io/InputStream;
    :goto_1
    return-object v0

    .line 175
    .restart local v0    # "this":Lcom/oseamiya/deviceinformation/CpuInformation;
    :catch_0
    move-exception v8

    move-object v7, v8

    .line 176
    .local v7, "e":Ljava/io/IOException;
    move-object v8, v7

    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .line 177
    const-string/jumbo v8, "Exception Occurred"

    move-object v0, v8

    goto :goto_1
.end method

.method public getGPUExtensions()Ljava/lang/String;
    .locals 3

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/CpuInformation;
    move-object v1, v0

    invoke-direct {v1}, Lcom/oseamiya/deviceinformation/CpuInformation;->getGPUInformation()V

    .line 135
    move-object v1, v0

    iget-object v1, v1, Lcom/oseamiya/deviceinformation/CpuInformation;->hashMap:Ljava/util/HashMap;

    const-string/jumbo v2, "EXTENSIONS"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/oseamiya/deviceinformation/CpuInformation;
    return-object v0
.end method

.method public getGPURenderer()Ljava/lang/String;
    .locals 3

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/CpuInformation;
    move-object v1, v0

    invoke-direct {v1}, Lcom/oseamiya/deviceinformation/CpuInformation;->getGPUInformation()V

    .line 117
    move-object v1, v0

    iget-object v1, v1, Lcom/oseamiya/deviceinformation/CpuInformation;->hashMap:Ljava/util/HashMap;

    const-string/jumbo v2, "RENDERER"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/oseamiya/deviceinformation/CpuInformation;
    return-object v0
.end method

.method public getGPUVendor()Ljava/lang/String;
    .locals 3

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/CpuInformation;
    move-object v1, v0

    invoke-direct {v1}, Lcom/oseamiya/deviceinformation/CpuInformation;->getGPUInformation()V

    .line 126
    move-object v1, v0

    iget-object v1, v1, Lcom/oseamiya/deviceinformation/CpuInformation;->hashMap:Ljava/util/HashMap;

    const-string/jumbo v2, "VENDOR"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/oseamiya/deviceinformation/CpuInformation;
    return-object v0
.end method

.method public getGPUVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/CpuInformation;
    move-object v1, v0

    invoke-direct {v1}, Lcom/oseamiya/deviceinformation/CpuInformation;->getGPUInformation()V

    .line 144
    move-object v1, v0

    iget-object v1, v1, Lcom/oseamiya/deviceinformation/CpuInformation;->hashMap:Ljava/util/HashMap;

    const-string/jumbo v2, "VERSION"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/oseamiya/deviceinformation/CpuInformation;
    return-object v0
.end method

.method public getNumberOfCores()I
    .locals 2

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/CpuInformation;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/oseamiya/deviceinformation/CpuInformation;
    return v0
.end method

.method public isGPUSupported()Z
    .locals 5

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/CpuInformation;
    move-object v3, v0

    iget-object v3, v3, Lcom/oseamiya/deviceinformation/CpuInformation;->context:Landroid/content/Context;

    const-string/jumbo v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    move-object v1, v3

    .line 153
    .local v1, "activityManager":Landroid/app/ActivityManager;
    move-object v3, v1

    .line 154
    invoke-virtual {v3}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v3

    move-object v2, v3

    .line 155
    .local v2, "configurationInfo":Landroid/content/pm/ConfigurationInfo;
    move-object v3, v2

    iget v3, v3, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    const/high16 v4, 0x20000

    if-lt v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .end local v0    # "this":Lcom/oseamiya/deviceinformation/CpuInformation;
    return v0

    .restart local v0    # "this":Lcom/oseamiya/deviceinformation/CpuInformation;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 242
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 237
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 7

    .prologue
    .line 227
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/CpuInformation;
    move-object v1, p1

    .local v1, "gl":Ljavax/microedition/khronos/opengles/GL10;
    move-object v2, p2

    .local v2, "config":Ljavax/microedition/khronos/egl/EGLConfig;
    move-object v3, v0

    iget-object v3, v3, Lcom/oseamiya/deviceinformation/CpuInformation;->hashMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 228
    move-object v3, v0

    iget-object v3, v3, Lcom/oseamiya/deviceinformation/CpuInformation;->hashMap:Ljava/util/HashMap;

    const-string/jumbo v4, "RENDERER"

    move-object v5, v1

    const/16 v6, 0x1f01

    invoke-interface {v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 229
    move-object v3, v0

    iget-object v3, v3, Lcom/oseamiya/deviceinformation/CpuInformation;->hashMap:Ljava/util/HashMap;

    const-string/jumbo v4, "VENDOR"

    move-object v5, v1

    const/16 v6, 0x1f00

    invoke-interface {v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 230
    move-object v3, v0

    iget-object v3, v3, Lcom/oseamiya/deviceinformation/CpuInformation;->hashMap:Ljava/util/HashMap;

    const-string/jumbo v4, "VERSION"

    move-object v5, v1

    const/16 v6, 0x1f02

    invoke-interface {v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 231
    move-object v3, v0

    iget-object v3, v3, Lcom/oseamiya/deviceinformation/CpuInformation;->hashMap:Ljava/util/HashMap;

    const-string/jumbo v4, "EXTENSIONS"

    move-object v5, v1

    const/16 v6, 0x1f03

    invoke-interface {v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 232
    return-void
.end method
