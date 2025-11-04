.class public Lcom/google/appinventor/components/runtime/OptionHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final l557Ll1q9gLt3cEfyQaLTgWgvIutpQIPuKKLXX2glk42j33zjQ1xoBSDeCkOGk6j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 26
    new-instance v0, Ljava/util/HashMap;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/OptionHelper;->l557Ll1q9gLt3cEfyQaLTgWgvIutpQIPuKKLXX2glk42j33zjQ1xoBSDeCkOGk6j:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 24
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 8

    .prologue
    .line 124
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    .line 125
    move-object v0, v5

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 126
    sget-object v4, Lcom/google/appinventor/components/runtime/OptionHelper;->l557Ll1q9gLt3cEfyQaLTgWgvIutpQIPuKKLXX2glk42j33zjQ1xoBSDeCkOGk6j:Ljava/util/Map;

    move-object v5, v2

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    .line 128
    move-object v3, v5

    if-nez v4, :cond_0

    .line 129
    move-object v4, v0

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/OptionHelper;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v4

    move-object v3, v4

    .line 130
    sget-object v4, Lcom/google/appinventor/components/runtime/OptionHelper;->l557Ll1q9gLt3cEfyQaLTgWgvIutpQIPuKKLXX2glk42j33zjQ1xoBSDeCkOGk6j:Ljava/util/Map;

    move-object v5, v2

    move-object v6, v3

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 133
    :cond_0
    move-object v4, v3

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Method;

    move-object v0, v4

    return-object v0
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/Class;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    move-object v0, p0

    new-instance v6, Ljava/util/HashMap;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    move-object v1, v6

    .line 142
    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v6

    .line 145
    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v0, v7

    array-length v6, v6

    move v2, v6

    const/4 v6, 0x0

    move v3, v6

    :goto_0
    move v6, v3

    move v7, v2

    if-ge v6, v7, :cond_3

    move-object v6, v0

    move v7, v3

    aget-object v6, v6, v7

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    .line 146
    move-object v4, v7

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v6

    const/4 v7, 0x1

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_0

    .line 149
    move-object v6, v4

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 152
    move-object v6, v4

    const-class v7, Lcom/google/appinventor/components/annotations/SimpleEvent;

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lcom/google/appinventor/components/annotations/SimpleEvent;

    .line 153
    if-eqz v6, :cond_1

    .line 154
    move-object v6, v1

    move-object v7, v5

    move-object v8, v4

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 155
    .line 145
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 159
    :cond_1
    move-object v6, v4

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    sget-object v7, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v6, v7, :cond_0

    .line 160
    move-object v6, v4

    const-class v7, Lcom/google/appinventor/components/annotations/SimpleFunction;

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lcom/google/appinventor/components/annotations/SimpleFunction;

    .line 161
    if-eqz v6, :cond_2

    .line 162
    move-object v6, v1

    move-object v7, v5

    move-object v8, v4

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 163
    goto :goto_1

    .line 165
    :cond_2
    move-object v6, v4

    const-class v7, Lcom/google/appinventor/components/annotations/SimpleProperty;

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lcom/google/appinventor/components/annotations/SimpleProperty;

    .line 166
    if-eqz v6, :cond_0

    .line 167
    move-object v6, v1

    move-object v7, v5

    move-object v8, v4

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_1

    .line 171
    :cond_3
    move-object v6, v1

    move-object v0, v6

    return-object v0
.end method

.method public static optionListFromValue(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/appinventor/components/runtime/Component;",
            "Ljava/lang/String;",
            "TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 39
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/OptionHelper;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v3

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    .line 40
    move-object v0, v4

    if-nez v3, :cond_0

    .line 42
    move-object v3, v2

    move-object v0, v3

    .line 64
    :goto_0
    return-object v0

    .line 44
    :cond_0
    move-object v3, v0

    const-class v4, Lcom/google/appinventor/components/annotations/Options;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lcom/google/appinventor/components/annotations/Options;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    .line 45
    move-object v0, v4

    if-nez v3, :cond_1

    .line 46
    move-object v3, v2

    move-object v0, v3

    goto :goto_0

    .line 48
    :cond_1
    move-object v3, v0

    invoke-interface {v3}, Lcom/google/appinventor/components/annotations/Options;->value()Ljava/lang/Class;

    move-result-object v3

    move-object v0, v3

    .line 50
    move-object v3, v0

    :try_start_0
    const-string/jumbo v4, "fromUnderlyingValue"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v2

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 54
    move-object v4, v0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v2

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    .line 55
    move-object v0, v4

    if-eqz v3, :cond_2

    .line 56
    move-object v3, v0

    move-object v0, v3

    goto :goto_0

    .line 58
    :cond_2
    move-object v3, v2

    move-object v0, v3

    goto :goto_0

    .line 60
    :catch_0
    move-exception v3

    move-object v3, v2

    move-object v0, v3

    goto :goto_0

    .line 62
    :catch_1
    move-exception v3

    move-object v3, v2

    move-object v0, v3

    goto :goto_0

    .line 64
    :catch_2
    move-exception v3

    move-object v3, v2

    move-object v0, v3

    goto :goto_0
.end method

.method public static varargs optionListsFromValues(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 17

    .prologue
    .line 78
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v9, v2

    array-length v9, v9

    if-nez v9, :cond_0

    .line 79
    move-object v9, v2

    move-object v0, v9

    .line 113
    :goto_0
    return-object v0

    .line 81
    :cond_0
    move-object v9, v0

    move-object v10, v1

    invoke-static {v9, v10}, Lcom/google/appinventor/components/runtime/OptionHelper;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v9

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    .line 82
    move-object v0, v10

    if-nez v9, :cond_1

    .line 83
    move-object v9, v2

    move-object v0, v9

    goto :goto_0

    .line 85
    :cond_1
    move-object v9, v0

    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v9

    move-object v0, v9

    .line 86
    const/4 v9, 0x0

    move v1, v9

    .line 87
    move-object v9, v0

    array-length v9, v9

    move v3, v9

    const/4 v9, 0x0

    move v4, v9

    :goto_1
    move v9, v4

    move v10, v3

    if-ge v9, v10, :cond_4

    move-object v9, v0

    move v10, v4

    aget-object v9, v9, v10

    .line 88
    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    move-object v5, v10

    array-length v9, v9

    move v6, v9

    const/4 v9, 0x0

    move v7, v9

    :goto_2
    move v9, v7

    move v10, v6

    if-ge v9, v10, :cond_2

    move-object v9, v5

    move v10, v7

    aget-object v9, v9, v10

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    .line 89
    move-object v8, v10

    invoke-interface {v9}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v9

    const-class v10, Lcom/google/appinventor/components/annotations/Options;

    if-ne v9, v10, :cond_3

    .line 90
    move-object v9, v8

    check-cast v9, Lcom/google/appinventor/components/annotations/Options;

    .line 91
    invoke-interface {v9}, Lcom/google/appinventor/components/annotations/Options;->value()Ljava/lang/Class;

    move-result-object v9

    move-object v5, v9

    .line 93
    move-object v9, v5

    :try_start_0
    const-string/jumbo v10, "fromUnderlyingValue"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Class;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    const/4 v13, 0x0

    move-object v14, v2

    move v15, v1

    aget-object v14, v14, v15

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 97
    move-object v10, v5

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    const/4 v13, 0x0

    move-object v14, v2

    move v15, v1

    aget-object v14, v14, v15

    aput-object v14, v12, v13

    invoke-virtual {v9, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    .line 98
    move-object v5, v10

    if-eqz v9, :cond_2

    .line 99
    move-object v9, v2

    move v10, v1

    move-object v11, v5

    aput-object v11, v9, v10
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 107
    .line 111
    :cond_2
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 87
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 107
    :catch_0
    move-exception v9

    goto :goto_3

    :catch_1
    move-exception v9

    goto :goto_3

    .line 108
    :catch_2
    move-exception v9

    goto :goto_3

    .line 88
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 113
    :cond_4
    move-object v9, v2

    move-object v0, v9

    goto/16 :goto_0
.end method
