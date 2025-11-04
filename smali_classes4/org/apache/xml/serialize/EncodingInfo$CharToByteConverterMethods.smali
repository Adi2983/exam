.class Lorg/apache/xml/serialize/EncodingInfo$CharToByteConverterMethods;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/serialize/EncodingInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CharToByteConverterMethods"
.end annotation


# static fields
.field static class$java$lang$String:Ljava/lang/Class;

.field private static fgCanConvertMethod:Ljava/lang/reflect/Method;

.field private static fgConvertersAvailable:Z

.field private static fgGetConverterMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v1, 0x0

    sput-object v1, Lorg/apache/xml/serialize/EncodingInfo$CharToByteConverterMethods;->fgGetConverterMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    sput-object v1, Lorg/apache/xml/serialize/EncodingInfo$CharToByteConverterMethods;->fgCanConvertMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    sput-boolean v1, Lorg/apache/xml/serialize/EncodingInfo$CharToByteConverterMethods;->fgConvertersAvailable:Z

    :try_start_0
    const-string/jumbo v1, "sun.io.CharToByteConverter"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    move-object v0, v1

    move-object v1, v0

    const-string/jumbo v2, "getConverter"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x0

    sget-object v6, Lorg/apache/xml/serialize/EncodingInfo$CharToByteConverterMethods;->class$java$lang$String:Ljava/lang/Class;

    if-nez v6, :cond_0

    const-string/jumbo v6, "java.lang.String"

    invoke-static {v6}, Lorg/apache/xml/serialize/EncodingInfo$CharToByteConverterMethods;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    sput-object v7, Lorg/apache/xml/serialize/EncodingInfo$CharToByteConverterMethods;->class$java$lang$String:Ljava/lang/Class;

    :goto_0
    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/apache/xml/serialize/EncodingInfo$CharToByteConverterMethods;->fgGetConverterMethod:Ljava/lang/reflect/Method;

    move-object v1, v0

    const-string/jumbo v2, "canConvert"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/apache/xml/serialize/EncodingInfo$CharToByteConverterMethods;->fgCanConvertMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    sput-boolean v1, Lorg/apache/xml/serialize/EncodingInfo$CharToByteConverterMethods;->fgConvertersAvailable:Z

    :goto_1
    return-void

    :cond_0
    sget-object v6, Lorg/apache/xml/serialize/EncodingInfo$CharToByteConverterMethods;->class$java$lang$String:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v0, v1

    const/4 v1, 0x0

    sput-object v1, Lorg/apache/xml/serialize/EncodingInfo$CharToByteConverterMethods;->fgGetConverterMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    sput-object v1, Lorg/apache/xml/serialize/EncodingInfo$CharToByteConverterMethods;->fgCanConvertMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    sput-boolean v1, Lorg/apache/xml/serialize/EncodingInfo$CharToByteConverterMethods;->fgConvertersAvailable:Z

    goto :goto_1
.end method

.method private constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static access$500()Z
    .locals 1

    sget-boolean v0, Lorg/apache/xml/serialize/EncodingInfo$CharToByteConverterMethods;->fgConvertersAvailable:Z

    return v0
.end method

.method static access$600()Ljava/lang/reflect/Method;
    .locals 1

    sget-object v0, Lorg/apache/xml/serialize/EncodingInfo$CharToByteConverterMethods;->fgGetConverterMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static access$700()Ljava/lang/reflect/Method;
    .locals 1

    sget-object v0, Lorg/apache/xml/serialize/EncodingInfo$CharToByteConverterMethods;->fgCanConvertMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 6

    move-object v0, p0

    move-object v2, v0

    :try_start_0
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v0, v2

    return-object v0

    :catch_0
    move-exception v2

    move-object v1, v2

    new-instance v2, Ljava/lang/NoClassDefFoundError;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v2
.end method
