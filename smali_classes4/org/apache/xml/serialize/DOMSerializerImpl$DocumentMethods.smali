.class Lorg/apache/xml/serialize/DOMSerializerImpl$DocumentMethods;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/serialize/DOMSerializerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DocumentMethods"
.end annotation


# static fields
.field static class$org$w3c$dom$Document:Ljava/lang/Class;

.field private static fgDocumentGetInputEncodingMethod:Ljava/lang/reflect/Method;

.field private static fgDocumentGetXmlEncodingMethod:Ljava/lang/reflect/Method;

.field private static fgDocumentGetXmlVersionMethod:Ljava/lang/reflect/Method;

.field private static fgDocumentMethodsAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v1, 0x0

    sput-object v1, Lorg/apache/xml/serialize/DOMSerializerImpl$DocumentMethods;->fgDocumentGetXmlVersionMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    sput-object v1, Lorg/apache/xml/serialize/DOMSerializerImpl$DocumentMethods;->fgDocumentGetInputEncodingMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    sput-object v1, Lorg/apache/xml/serialize/DOMSerializerImpl$DocumentMethods;->fgDocumentGetXmlEncodingMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    sput-boolean v1, Lorg/apache/xml/serialize/DOMSerializerImpl$DocumentMethods;->fgDocumentMethodsAvailable:Z

    :try_start_0
    sget-object v1, Lorg/apache/xml/serialize/DOMSerializerImpl$DocumentMethods;->class$org$w3c$dom$Document:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string/jumbo v1, "org.w3c.dom.Document"

    invoke-static {v1}, Lorg/apache/xml/serialize/DOMSerializerImpl$DocumentMethods;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    sput-object v2, Lorg/apache/xml/serialize/DOMSerializerImpl$DocumentMethods;->class$org$w3c$dom$Document:Ljava/lang/Class;

    :goto_0
    const-string/jumbo v2, "getXmlVersion"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/apache/xml/serialize/DOMSerializerImpl$DocumentMethods;->fgDocumentGetXmlVersionMethod:Ljava/lang/reflect/Method;

    sget-object v1, Lorg/apache/xml/serialize/DOMSerializerImpl$DocumentMethods;->class$org$w3c$dom$Document:Ljava/lang/Class;

    if-nez v1, :cond_1

    const-string/jumbo v1, "org.w3c.dom.Document"

    invoke-static {v1}, Lorg/apache/xml/serialize/DOMSerializerImpl$DocumentMethods;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    sput-object v2, Lorg/apache/xml/serialize/DOMSerializerImpl$DocumentMethods;->class$org$w3c$dom$Document:Ljava/lang/Class;

    :goto_1
    const-string/jumbo v2, "getInputEncoding"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/apache/xml/serialize/DOMSerializerImpl$DocumentMethods;->fgDocumentGetInputEncodingMethod:Ljava/lang/reflect/Method;

    sget-object v1, Lorg/apache/xml/serialize/DOMSerializerImpl$DocumentMethods;->class$org$w3c$dom$Document:Ljava/lang/Class;

    if-nez v1, :cond_2

    const-string/jumbo v1, "org.w3c.dom.Document"

    invoke-static {v1}, Lorg/apache/xml/serialize/DOMSerializerImpl$DocumentMethods;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    sput-object v2, Lorg/apache/xml/serialize/DOMSerializerImpl$DocumentMethods;->class$org$w3c$dom$Document:Ljava/lang/Class;

    :goto_2
    const-string/jumbo v2, "getXmlEncoding"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/apache/xml/serialize/DOMSerializerImpl$DocumentMethods;->fgDocumentGetXmlEncodingMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    sput-boolean v1, Lorg/apache/xml/serialize/DOMSerializerImpl$DocumentMethods;->fgDocumentMethodsAvailable:Z

    :goto_3
    return-void

    :cond_0
    sget-object v1, Lorg/apache/xml/serialize/DOMSerializerImpl$DocumentMethods;->class$org$w3c$dom$Document:Ljava/lang/Class;

    goto :goto_0

    :cond_1
    sget-object v1, Lorg/apache/xml/serialize/DOMSerializerImpl$DocumentMethods;->class$org$w3c$dom$Document:Ljava/lang/Class;

    goto :goto_1

    :cond_2
    sget-object v1, Lorg/apache/xml/serialize/DOMSerializerImpl$DocumentMethods;->class$org$w3c$dom$Document:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    move-object v0, v1

    const/4 v1, 0x0

    sput-object v1, Lorg/apache/xml/serialize/DOMSerializerImpl$DocumentMethods;->fgDocumentGetXmlVersionMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    sput-object v1, Lorg/apache/xml/serialize/DOMSerializerImpl$DocumentMethods;->fgDocumentGetInputEncodingMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    sput-object v1, Lorg/apache/xml/serialize/DOMSerializerImpl$DocumentMethods;->fgDocumentGetXmlEncodingMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    sput-boolean v1, Lorg/apache/xml/serialize/DOMSerializerImpl$DocumentMethods;->fgDocumentMethodsAvailable:Z

    goto :goto_3
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

    sget-boolean v0, Lorg/apache/xml/serialize/DOMSerializerImpl$DocumentMethods;->fgDocumentMethodsAvailable:Z

    return v0
.end method

.method static access$100()Ljava/lang/reflect/Method;
    .locals 1

    sget-object v0, Lorg/apache/xml/serialize/DOMSerializerImpl$DocumentMethods;->fgDocumentGetXmlVersionMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static access$200()Ljava/lang/reflect/Method;
    .locals 1

    sget-object v0, Lorg/apache/xml/serialize/DOMSerializerImpl$DocumentMethods;->fgDocumentGetInputEncodingMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static access$300()Ljava/lang/reflect/Method;
    .locals 1

    sget-object v0, Lorg/apache/xml/serialize/DOMSerializerImpl$DocumentMethods;->fgDocumentGetXmlEncodingMethod:Ljava/lang/reflect/Method;

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
