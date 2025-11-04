.class public final Lcom/google/zxing/client/android/camera/open/GingerbreadOpenCameraInterface;
.super Ljava/lang/Object;
.source "GingerbreadOpenCameraInterface.java"

# interfaces
.implements Lcom/google/zxing/client/android/camera/open/OpenCameraInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "GingerbreadOpenCamera"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/camera/open/GingerbreadOpenCameraInterface;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 7

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "clazz":Ljava/lang/Class;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    :try_start_0
    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v0, v3

    .end local v0    # "clazz":Ljava/lang/Class;
    return-object v0

    .line 90
    .restart local v0    # "clazz":Ljava/lang/Class;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 91
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    new-instance v3, Ljava/lang/RuntimeException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v2

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method private static varargs getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "clazz":Ljava/lang/Class;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    :try_start_0
    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move-object v0, v4

    .end local v0    # "clazz":Ljava/lang/Class;
    return-object v0

    .line 98
    .restart local v0    # "clazz":Ljava/lang/Class;
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 99
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    new-instance v4, Ljava/lang/RuntimeException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v3

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method private static varargs invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "method":Ljava/lang/reflect/Method;
    move-object v1, p1

    .local v1, "thisObject":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "args":[Ljava/lang/Object;
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    :try_start_0
    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    move-object v0, v5

    .end local v0    # "method":Ljava/lang/reflect/Method;
    return-object v0

    .line 122
    .restart local v0    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 123
    .local v3, "e":Ljava/lang/IllegalAccessException;
    new-instance v5, Ljava/lang/RuntimeException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v3

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 124
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v5

    move-object v3, v5

    .line 125
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    move-object v4, v5

    .line 126
    .local v4, "cause":Ljava/lang/Throwable;
    move-object v5, v4

    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 127
    move-object v5, v4

    instance-of v5, v5, Ljava/lang/RuntimeException;

    if-eqz v5, :cond_0

    .line 128
    move-object v5, v4

    check-cast v5, Ljava/lang/RuntimeException;

    throw v5

    .line 130
    :cond_0
    new-instance v5, Ljava/lang/RuntimeException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v4

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method private static varargs invokeMethodThrowsIOException(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "method":Ljava/lang/reflect/Method;
    move-object v1, p1

    .local v1, "thisObject":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "args":[Ljava/lang/Object;
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    :try_start_0
    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    move-object v0, v5

    .end local v0    # "method":Ljava/lang/reflect/Method;
    return-object v0

    .line 158
    .restart local v0    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 159
    .local v3, "e":Ljava/lang/IllegalAccessException;
    new-instance v5, Ljava/lang/RuntimeException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v3

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 160
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v5

    move-object v3, v5

    .line 161
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    move-object v4, v5

    .line 162
    .local v4, "cause":Ljava/lang/Throwable;
    move-object v5, v4

    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 163
    move-object v5, v4

    instance-of v5, v5, Ljava/io/IOException;

    if-eqz v5, :cond_0

    .line 164
    move-object v5, v4

    check-cast v5, Ljava/io/IOException;

    throw v5

    .line 165
    :cond_0
    move-object v5, v4

    instance-of v5, v5, Ljava/lang/RuntimeException;

    if-eqz v5, :cond_1

    .line 166
    move-object v5, v4

    check-cast v5, Ljava/lang/RuntimeException;

    throw v5

    .line 168
    :cond_1
    new-instance v5, Ljava/lang/RuntimeException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v3

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method private static varargs invokeMethodThrowsIllegalArgumentException(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "method":Ljava/lang/reflect/Method;
    move-object v1, p1

    .local v1, "thisObject":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "args":[Ljava/lang/Object;
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    :try_start_0
    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    move-object v0, v5

    .end local v0    # "method":Ljava/lang/reflect/Method;
    return-object v0

    .line 139
    .restart local v0    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 140
    .local v3, "e":Ljava/lang/IllegalAccessException;
    new-instance v5, Ljava/lang/RuntimeException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v3

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 141
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v5

    move-object v3, v5

    .line 142
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    move-object v4, v5

    .line 143
    .local v4, "cause":Ljava/lang/Throwable;
    move-object v5, v4

    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 144
    move-object v5, v4

    instance-of v5, v5, Ljava/lang/IllegalArgumentException;

    if-eqz v5, :cond_0

    .line 145
    move-object v5, v4

    check-cast v5, Ljava/lang/IllegalArgumentException;

    throw v5

    .line 146
    :cond_0
    move-object v5, v4

    instance-of v5, v5, Ljava/lang/RuntimeException;

    if-eqz v5, :cond_1

    .line 147
    move-object v5, v4

    check-cast v5, Ljava/lang/RuntimeException;

    throw v5

    .line 149
    :cond_1
    new-instance v5, Ljava/lang/RuntimeException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v3

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method private static invokeStaticMethod(Ljava/lang/reflect/Method;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "method":Ljava/lang/reflect/Method;
    move-object v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    move-object v0, v3

    .end local v0    # "method":Ljava/lang/reflect/Method;
    return-object v0

    .line 106
    .restart local v0    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 107
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/RuntimeException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 108
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 109
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    move-object v2, v3

    .line 110
    .local v2, "cause":Ljava/lang/Throwable;
    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 111
    move-object v3, v2

    instance-of v3, v3, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_0

    .line 112
    move-object v3, v2

    check-cast v3, Ljava/lang/RuntimeException;

    throw v3

    .line 114
    :cond_0
    new-instance v3, Ljava/lang/RuntimeException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v2

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method


# virtual methods
.method public open()Landroid/hardware/Camera;
    .locals 14

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/camera/open/GingerbreadOpenCameraInterface;
    :try_start_0
    const-string/jumbo v7, "android.hardware.Camera"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    move-object v1, v7

    .line 51
    .local v1, "AndroidCamera":Ljava/lang/Class;
    move-object v7, v1

    const-string/jumbo v8, "getNumberOfCameras"

    invoke-static {v7, v8}, Lcom/google/zxing/client/android/camera/open/GingerbreadOpenCameraInterface;->getMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-static {v7}, Lcom/google/zxing/client/android/camera/open/GingerbreadOpenCameraInterface;->invokeStaticMethod(Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move v2, v7

    .line 52
    .local v2, "numCameras":I
    move v7, v2

    if-nez v7, :cond_0

    .line 53
    const-string/jumbo v7, "GingerbreadOpenCamera"

    const-string/jumbo v8, "No cameras!"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 54
    const/4 v7, 0x0

    move-object v0, v7

    .line 77
    .end local v0    # "this":Lcom/google/zxing/client/android/camera/open/GingerbreadOpenCameraInterface;
    :goto_0
    return-object v0

    .line 57
    .restart local v0    # "this":Lcom/google/zxing/client/android/camera/open/GingerbreadOpenCameraInterface;
    :cond_0
    const/4 v7, 0x0

    move v3, v7

    .line 58
    .local v3, "index":I
    const-string/jumbo v7, "android.hardware.Camera$CameraInfo"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    move-object v4, v7

    .line 60
    .local v4, "CameraInfo":Ljava/lang/Class;
    move-object v7, v4

    const-string/jumbo v8, "facing"

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    move-object v5, v7

    .line 61
    .local v5, "facingField":Ljava/lang/reflect/Field;
    :goto_1
    move v7, v3

    move v8, v2

    if-ge v7, v8, :cond_1

    .line 62
    move-object v7, v4

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v6, v7

    .line 63
    .local v6, "cameraInfo":Ljava/lang/Object;
    move-object v7, v1

    const-string/jumbo v8, "getCameraInfo"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Class;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x1

    move-object v12, v4

    aput-object v12, v10, v11

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    move v12, v3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x1

    move-object v12, v6

    aput-object v12, v10, v11

    invoke-virtual {v7, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 64
    move-object v7, v5

    move-object v8, v6

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v7

    move-object v8, v4

    const-string/jumbo v9, "CAMERA_FACING_BACK"

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    move-object v9, v4

    invoke-virtual {v8, v9}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v8

    if-ne v7, v8, :cond_2

    .line 65
    .line 69
    .end local v6    # "cameraInfo":Ljava/lang/Object;
    :cond_1
    move v7, v3

    move v8, v2

    if-ge v7, v8, :cond_3

    .line 70
    const-string/jumbo v7, "GingerbreadOpenCamera"

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Opening camera #"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 76
    :goto_2
    move-object v7, v1

    const-string/jumbo v8, "open"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    invoke-static {v7, v8, v9}, Lcom/google/zxing/client/android/camera/open/GingerbreadOpenCameraInterface;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    move v12, v3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v7, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/Camera;

    move-object v6, v7

    .line 77
    .local v6, "camera":Landroid/hardware/Camera;
    move-object v7, v6

    move-object v0, v7

    goto/16 :goto_0

    .line 66
    .local v6, "cameraInfo":Ljava/lang/Object;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 67
    goto/16 :goto_1

    .line 72
    .end local v6    # "cameraInfo":Ljava/lang/Object;
    :cond_3
    const-string/jumbo v7, "GingerbreadOpenCamera"

    const-string/jumbo v8, "No camera facing back; returning camera #0"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 73
    const/4 v7, 0x0

    move v3, v7

    goto :goto_2

    .line 79
    .end local v1    # "AndroidCamera":Ljava/lang/Class;
    .end local v2    # "numCameras":I
    .end local v3    # "index":I
    .end local v4    # "CameraInfo":Ljava/lang/Class;
    .end local v5    # "facingField":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 80
    .local v1, "e":Ljava/lang/Exception;
    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 81
    new-instance v7, Ljava/lang/RuntimeException;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v1

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7
.end method
