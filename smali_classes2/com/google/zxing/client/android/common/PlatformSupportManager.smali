.class public abstract Lcom/google/zxing/client/android/common/PlatformSupportManager;
.super Ljava/lang/Object;
.source "PlatformSupportManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final defaultImplementation:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final implementations:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final managedInterface:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/google/zxing/client/android/common/PlatformSupportManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/common/PlatformSupportManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/common/PlatformSupportManager;, "Lcom/google/zxing/client/android/common/PlatformSupportManager<TT;>;"
    move-object v1, p1

    .local v1, "managedInterface":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    move-object v2, p2

    .local v2, "defaultImplementation":Ljava/lang/Object;, "TT;"
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 54
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Class;->isInterface()Z

    move-result v3

    if-nez v3, :cond_0

    .line 55
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 57
    :cond_0
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 58
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 60
    :cond_1
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/zxing/client/android/common/PlatformSupportManager;->managedInterface:Ljava/lang/Class;

    .line 61
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/google/zxing/client/android/common/PlatformSupportManager;->defaultImplementation:Ljava/lang/Object;

    .line 62
    move-object v3, v0

    new-instance v4, Ljava/util/TreeMap;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v4, v3, Lcom/google/zxing/client/android/common/PlatformSupportManager;->implementations:Ljava/util/SortedMap;

    .line 63
    return-void
.end method


# virtual methods
.method protected addImplementationClass(ILjava/lang/String;)V
    .locals 6

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/common/PlatformSupportManager;, "Lcom/google/zxing/client/android/common/PlatformSupportManager<TT;>;"
    move v1, p1

    .local v1, "minVersion":I
    move-object v2, p2

    .local v2, "className":Ljava/lang/String;
    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/client/android/common/PlatformSupportManager;->implementations:Ljava/util/SortedMap;

    move v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 67
    return-void
.end method

.method public build()Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/common/PlatformSupportManager;, "Lcom/google/zxing/client/android/common/PlatformSupportManager<TT;>;"
    move-object v5, v0

    iget-object v5, v5, Lcom/google/zxing/client/android/common/PlatformSupportManager;->implementations:Ljava/util/SortedMap;

    invoke-interface {v5}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v1, v5

    :goto_0
    move-object v5, v1

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    move-object v2, v5

    .line 71
    .local v2, "minVersion":Ljava/lang/Integer;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    move-object v6, v2

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lt v5, v6, :cond_0

    .line 72
    move-object v5, v0

    iget-object v5, v5, Lcom/google/zxing/client/android/common/PlatformSupportManager;->implementations:Ljava/util/SortedMap;

    move-object v6, v2

    invoke-interface {v5, v6}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v3, v5

    .line 74
    .local v3, "className":Ljava/lang/String;
    move-object v5, v3

    :try_start_0
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/google/zxing/client/android/common/PlatformSupportManager;->managedInterface:Ljava/lang/Class;

    invoke-virtual {v5, v6}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v5

    move-object v4, v5

    .line 75
    .local v4, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    sget-object v5, Lcom/google/zxing/client/android/common/PlatformSupportManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Using implementation "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lcom/google/zxing/client/android/common/PlatformSupportManager;->managedInterface:Ljava/lang/Class;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " for SDK "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 76
    move-object v5, v4

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v5

    move-object v0, v5

    .line 91
    .end local v0    # "this":Lcom/google/zxing/client/android/common/PlatformSupportManager;, "Lcom/google/zxing/client/android/common/PlatformSupportManager<TT;>;"
    .end local v2    # "minVersion":Ljava/lang/Integer;
    .end local v3    # "className":Ljava/lang/String;
    .end local v4    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    :goto_1
    return-object v0

    .line 77
    .restart local v0    # "this":Lcom/google/zxing/client/android/common/PlatformSupportManager;, "Lcom/google/zxing/client/android/common/PlatformSupportManager<TT;>;"
    .restart local v2    # "minVersion":Ljava/lang/Integer;
    .restart local v3    # "className":Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 78
    .local v4, "cnfe":Ljava/lang/ClassNotFoundException;
    sget-object v5, Lcom/google/zxing/client/android/common/PlatformSupportManager;->TAG:Ljava/lang/String;

    move-object v6, v4

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v5

    .line 87
    .line 89
    .end local v3    # "className":Ljava/lang/String;
    .end local v4    # "cnfe":Ljava/lang/ClassNotFoundException;
    :cond_0
    :goto_2
    goto/16 :goto_0

    .line 79
    .restart local v3    # "className":Ljava/lang/String;
    :catch_1
    move-exception v5

    move-object v4, v5

    .line 80
    .local v4, "iae":Ljava/lang/IllegalAccessException;
    sget-object v5, Lcom/google/zxing/client/android/common/PlatformSupportManager;->TAG:Ljava/lang/String;

    move-object v6, v4

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v5

    .line 87
    goto :goto_2

    .line 81
    .end local v4    # "iae":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v5

    move-object v4, v5

    .line 82
    .local v4, "ie":Ljava/lang/InstantiationException;
    sget-object v5, Lcom/google/zxing/client/android/common/PlatformSupportManager;->TAG:Ljava/lang/String;

    move-object v6, v4

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v5

    .line 87
    goto :goto_2

    .line 83
    .end local v4    # "ie":Ljava/lang/InstantiationException;
    :catch_3
    move-exception v5

    move-object v4, v5

    .line 84
    .local v4, "nsme":Ljava/lang/NoSuchMethodException;
    sget-object v5, Lcom/google/zxing/client/android/common/PlatformSupportManager;->TAG:Ljava/lang/String;

    move-object v6, v4

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v5

    .line 87
    goto :goto_2

    .line 85
    .end local v4    # "nsme":Ljava/lang/NoSuchMethodException;
    :catch_4
    move-exception v5

    move-object v4, v5

    .line 86
    .local v4, "ite":Ljava/lang/reflect/InvocationTargetException;
    sget-object v5, Lcom/google/zxing/client/android/common/PlatformSupportManager;->TAG:Ljava/lang/String;

    move-object v6, v4

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v5

    goto :goto_2

    .line 90
    .end local v2    # "minVersion":Ljava/lang/Integer;
    .end local v3    # "className":Ljava/lang/String;
    .end local v4    # "ite":Ljava/lang/reflect/InvocationTargetException;
    :cond_1
    sget-object v5, Lcom/google/zxing/client/android/common/PlatformSupportManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Using default implementation "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lcom/google/zxing/client/android/common/PlatformSupportManager;->defaultImplementation:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lcom/google/zxing/client/android/common/PlatformSupportManager;->managedInterface:Ljava/lang/Class;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 91
    move-object v5, v0

    iget-object v5, v5, Lcom/google/zxing/client/android/common/PlatformSupportManager;->defaultImplementation:Ljava/lang/Object;

    move-object v0, v5

    goto :goto_1
.end method
