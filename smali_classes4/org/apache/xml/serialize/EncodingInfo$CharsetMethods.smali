.class Lorg/apache/xml/serialize/EncodingInfo$CharsetMethods;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/serialize/EncodingInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CharsetMethods"
.end annotation


# static fields
.field static class$java$lang$String:Ljava/lang/Class;

.field private static fgCharsetCanEncodeMethod:Ljava/lang/reflect/Method;

.field private static fgCharsetEncoderCanEncodeMethod:Ljava/lang/reflect/Method;

.field private static fgCharsetForNameMethod:Ljava/lang/reflect/Method;

.field private static fgCharsetNewEncoderMethod:Ljava/lang/reflect/Method;

.field private static fgNIOCharsetAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v2, 0x0

    sput-object v2, Lorg/apache/xml/serialize/EncodingInfo$CharsetMethods;->fgCharsetForNameMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    sput-object v2, Lorg/apache/xml/serialize/EncodingInfo$CharsetMethods;->fgCharsetCanEncodeMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    sput-object v2, Lorg/apache/xml/serialize/EncodingInfo$CharsetMethods;->fgCharsetNewEncoderMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    sput-object v2, Lorg/apache/xml/serialize/EncodingInfo$CharsetMethods;->fgCharsetEncoderCanEncodeMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    sput-boolean v2, Lorg/apache/xml/serialize/EncodingInfo$CharsetMethods;->fgNIOCharsetAvailable:Z

    :try_start_0
    const-string/jumbo v2, "java.nio.charset.Charset"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    move-object v0, v2

    const-string/jumbo v2, "java.nio.charset.CharsetEncoder"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    move-object v1, v2

    move-object v2, v0

    const-string/jumbo v3, "forName"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const/4 v6, 0x0

    sget-object v7, Lorg/apache/xml/serialize/EncodingInfo$CharsetMethods;->class$java$lang$String:Ljava/lang/Class;

    if-nez v7, :cond_0

    const-string/jumbo v7, "java.lang.String"

    invoke-static {v7}, Lorg/apache/xml/serialize/EncodingInfo$CharsetMethods;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    sput-object v8, Lorg/apache/xml/serialize/EncodingInfo$CharsetMethods;->class$java$lang$String:Ljava/lang/Class;

    :goto_0
    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lorg/apache/xml/serialize/EncodingInfo$CharsetMethods;->fgCharsetForNameMethod:Ljava/lang/reflect/Method;

    move-object v2, v0

    const-string/jumbo v3, "canEncode"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lorg/apache/xml/serialize/EncodingInfo$CharsetMethods;->fgCharsetCanEncodeMethod:Ljava/lang/reflect/Method;

    move-object v2, v0

    const-string/jumbo v3, "newEncoder"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lorg/apache/xml/serialize/EncodingInfo$CharsetMethods;->fgCharsetNewEncoderMethod:Ljava/lang/reflect/Method;

    move-object v2, v1

    const-string/jumbo v3, "canEncode"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lorg/apache/xml/serialize/EncodingInfo$CharsetMethods;->fgCharsetEncoderCanEncodeMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    sput-boolean v2, Lorg/apache/xml/serialize/EncodingInfo$CharsetMethods;->fgNIOCharsetAvailable:Z

    :goto_1
    return-void

    :cond_0
    sget-object v7, Lorg/apache/xml/serialize/EncodingInfo$CharsetMethods;->class$java$lang$String:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v0, v2

    const/4 v2, 0x0

    sput-object v2, Lorg/apache/xml/serialize/EncodingInfo$CharsetMethods;->fgCharsetForNameMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    sput-object v2, Lorg/apache/xml/serialize/EncodingInfo$CharsetMethods;->fgCharsetCanEncodeMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    sput-object v2, Lorg/apache/xml/serialize/EncodingInfo$CharsetMethods;->fgCharsetEncoderCanEncodeMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    sput-object v2, Lorg/apache/xml/serialize/EncodingInfo$CharsetMethods;->fgCharsetNewEncoderMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    sput-boolean v2, Lorg/apache/xml/serialize/EncodingInfo$CharsetMethods;->fgNIOCharsetAvailable:Z

    goto :goto_1
.end method

.method private constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static access$000()Z
    .locals 1

    sget-boolean v0, Lorg/apache/xml/serialize/EncodingInfo$CharsetMethods;->fgNIOCharsetAvailable:Z

    return v0
.end method

.method static access$100()Ljava/lang/reflect/Method;
    .locals 1

    sget-object v0, Lorg/apache/xml/serialize/EncodingInfo$CharsetMethods;->fgCharsetForNameMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static access$200()Ljava/lang/reflect/Method;
    .locals 1

    sget-object v0, Lorg/apache/xml/serialize/EncodingInfo$CharsetMethods;->fgCharsetCanEncodeMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static access$300()Ljava/lang/reflect/Method;
    .locals 1

    sget-object v0, Lorg/apache/xml/serialize/EncodingInfo$CharsetMethods;->fgCharsetNewEncoderMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static access$400()Ljava/lang/reflect/Method;
    .locals 1

    sget-object v0, Lorg/apache/xml/serialize/EncodingInfo$CharsetMethods;->fgCharsetEncoderCanEncodeMethod:Ljava/lang/reflect/Method;

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
