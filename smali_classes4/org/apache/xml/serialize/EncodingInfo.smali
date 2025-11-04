.class public Lorg/apache/xml/serialize/EncodingInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xml/serialize/EncodingInfo$CharToByteConverterMethods;,
        Lorg/apache/xml/serialize/EncodingInfo$CharsetMethods;
    }
.end annotation


# instance fields
.field private fArgsForMethod:[Ljava/lang/Object;

.field fCharToByteConverter:Ljava/lang/Object;

.field fCharsetEncoder:Ljava/lang/Object;

.field fHaveTriedCToB:Z

.field fHaveTriedCharsetEncoder:Z

.field ianaName:Ljava/lang/String;

.field javaName:Ljava/lang/String;

.field lastPrintable:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lorg/apache/xml/serialize/EncodingInfo;->fArgsForMethod:[Ljava/lang/Object;

    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lorg/apache/xml/serialize/EncodingInfo;->fCharsetEncoder:Ljava/lang/Object;

    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lorg/apache/xml/serialize/EncodingInfo;->fCharToByteConverter:Ljava/lang/Object;

    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lorg/apache/xml/serialize/EncodingInfo;->fHaveTriedCToB:Z

    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lorg/apache/xml/serialize/EncodingInfo;->fHaveTriedCharsetEncoder:Z

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lorg/apache/xml/serialize/EncodingInfo;->ianaName:Ljava/lang/String;

    move-object v4, v0

    move-object v5, v1

    invoke-static {v5}, Lorg/apache/xerces/util/EncodingMap;->getIANA2JavaMapping(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lorg/apache/xml/serialize/EncodingInfo;->javaName:Ljava/lang/String;

    move-object v4, v0

    move v5, v3

    iput v5, v4, Lorg/apache/xml/serialize/EncodingInfo;->lastPrintable:I

    return-void
.end method

.method private isPrintable0(C)Z
    .locals 9

    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xml/serialize/EncodingInfo;->fCharsetEncoder:Ljava/lang/Object;

    if-nez v3, :cond_1

    invoke-static {}, Lorg/apache/xml/serialize/EncodingInfo$CharsetMethods;->access$000()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-boolean v3, v3, Lorg/apache/xml/serialize/EncodingInfo;->fHaveTriedCharsetEncoder:Z

    if-nez v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xml/serialize/EncodingInfo;->fArgsForMethod:[Ljava/lang/Object;

    if-nez v3, :cond_0

    move-object v3, v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iput-object v4, v3, Lorg/apache/xml/serialize/EncodingInfo;->fArgsForMethod:[Ljava/lang/Object;

    :cond_0
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lorg/apache/xml/serialize/EncodingInfo;->fArgsForMethod:[Ljava/lang/Object;

    const/4 v4, 0x0

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xml/serialize/EncodingInfo;->javaName:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {}, Lorg/apache/xml/serialize/EncodingInfo$CharsetMethods;->access$100()Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xml/serialize/EncodingInfo;->fArgsForMethod:[Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    invoke-static {}, Lorg/apache/xml/serialize/EncodingInfo$CharsetMethods;->access$200()Ljava/lang/reflect/Method;

    move-result-object v3

    move-object v4, v2

    const/4 v5, 0x0

    check-cast v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v0

    invoke-static {}, Lorg/apache/xml/serialize/EncodingInfo$CharsetMethods;->access$300()Ljava/lang/reflect/Method;

    move-result-object v4

    move-object v5, v2

    const/4 v6, 0x0

    check-cast v6, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v3, Lorg/apache/xml/serialize/EncodingInfo;->fCharsetEncoder:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xml/serialize/EncodingInfo;->fCharsetEncoder:Ljava/lang/Object;

    if-eqz v3, :cond_3

    move-object v3, v0

    :try_start_1
    iget-object v3, v3, Lorg/apache/xml/serialize/EncodingInfo;->fArgsForMethod:[Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Character;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move v7, v1

    invoke-direct {v6, v7}, Ljava/lang/Character;-><init>(C)V

    aput-object v5, v3, v4

    invoke-static {}, Lorg/apache/xml/serialize/EncodingInfo$CharsetMethods;->access$400()Ljava/lang/reflect/Method;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xml/serialize/EncodingInfo;->fCharsetEncoder:Ljava/lang/Object;

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xml/serialize/EncodingInfo;->fArgsForMethod:[Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    move v0, v3

    :goto_1
    return v0

    :cond_2
    move-object v3, v0

    const/4 v4, 0x1

    :try_start_2
    iput-boolean v4, v3, Lorg/apache/xml/serialize/EncodingInfo;->fHaveTriedCharsetEncoder:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    move-object v2, v3

    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lorg/apache/xml/serialize/EncodingInfo;->fHaveTriedCharsetEncoder:Z

    goto :goto_0

    :catch_1
    move-exception v3

    move-object v2, v3

    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lorg/apache/xml/serialize/EncodingInfo;->fCharsetEncoder:Ljava/lang/Object;

    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lorg/apache/xml/serialize/EncodingInfo;->fHaveTriedCharsetEncoder:Z

    :cond_3
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xml/serialize/EncodingInfo;->fCharToByteConverter:Ljava/lang/Object;

    if-nez v3, :cond_7

    move-object v3, v0

    iget-boolean v3, v3, Lorg/apache/xml/serialize/EncodingInfo;->fHaveTriedCToB:Z

    if-nez v3, :cond_4

    invoke-static {}, Lorg/apache/xml/serialize/EncodingInfo$CharToByteConverterMethods;->access$500()Z

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    const/4 v3, 0x0

    move v0, v3

    goto :goto_1

    :cond_5
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xml/serialize/EncodingInfo;->fArgsForMethod:[Ljava/lang/Object;

    if-nez v3, :cond_6

    move-object v3, v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iput-object v4, v3, Lorg/apache/xml/serialize/EncodingInfo;->fArgsForMethod:[Ljava/lang/Object;

    :cond_6
    move-object v3, v0

    :try_start_3
    iget-object v3, v3, Lorg/apache/xml/serialize/EncodingInfo;->fArgsForMethod:[Ljava/lang/Object;

    const/4 v4, 0x0

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xml/serialize/EncodingInfo;->javaName:Ljava/lang/String;

    aput-object v5, v3, v4

    move-object v3, v0

    invoke-static {}, Lorg/apache/xml/serialize/EncodingInfo$CharToByteConverterMethods;->access$600()Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xml/serialize/EncodingInfo;->fArgsForMethod:[Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v3, Lorg/apache/xml/serialize/EncodingInfo;->fCharToByteConverter:Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_7
    move-object v3, v0

    :try_start_4
    iget-object v3, v3, Lorg/apache/xml/serialize/EncodingInfo;->fArgsForMethod:[Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Character;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move v7, v1

    invoke-direct {v6, v7}, Ljava/lang/Character;-><init>(C)V

    aput-object v5, v3, v4

    invoke-static {}, Lorg/apache/xml/serialize/EncodingInfo$CharToByteConverterMethods;->access$700()Ljava/lang/reflect/Method;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xml/serialize/EncodingInfo;->fCharToByteConverter:Ljava/lang/Object;

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xml/serialize/EncodingInfo;->fArgsForMethod:[Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-result v3

    move v0, v3

    goto :goto_1

    :catch_2
    move-exception v3

    move-object v2, v3

    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lorg/apache/xml/serialize/EncodingInfo;->fHaveTriedCToB:Z

    const/4 v3, 0x0

    move v0, v3

    goto :goto_1

    :catch_3
    move-exception v3

    move-object v2, v3

    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lorg/apache/xml/serialize/EncodingInfo;->fCharToByteConverter:Ljava/lang/Object;

    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lorg/apache/xml/serialize/EncodingInfo;->fHaveTriedCToB:Z

    const/4 v3, 0x0

    move v0, v3

    goto/16 :goto_1
.end method

.method public static testJavaEncodingName(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    move-object v0, p0

    const/4 v3, 0x5

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    move-object v1, v3

    new-instance v3, Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    move-object v6, v0

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object v2, v3

    return-void

    :array_0
    .array-data 1
        0x76t
        0x61t
        0x6ct
        0x69t
        0x64t
    .end array-data
.end method


# virtual methods
.method public getIANAName()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xml/serialize/EncodingInfo;->ianaName:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getWriter(Ljava/io/OutputStream;)Ljava/io/Writer;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xml/serialize/EncodingInfo;->javaName:Ljava/lang/String;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/io/OutputStreamWriter;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xml/serialize/EncodingInfo;->javaName:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xml/serialize/EncodingInfo;->ianaName:Ljava/lang/String;

    invoke-static {v3}, Lorg/apache/xerces/util/EncodingMap;->getIANA2JavaMapping(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/apache/xml/serialize/EncodingInfo;->javaName:Ljava/lang/String;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xml/serialize/EncodingInfo;->javaName:Ljava/lang/String;

    if-nez v2, :cond_1

    new-instance v2, Ljava/io/OutputStreamWriter;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v1

    const-string/jumbo v5, "UTF8"

    invoke-direct {v3, v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/io/OutputStreamWriter;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xml/serialize/EncodingInfo;->javaName:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_0
.end method

.method public isPrintable(C)Z
    .locals 4

    move-object v0, p0

    move v1, p1

    move v2, v1

    move-object v3, v0

    iget v3, v3, Lorg/apache/xml/serialize/EncodingInfo;->lastPrintable:I

    if-gt v2, v3, :cond_0

    const/4 v2, 0x1

    move v0, v2

    :goto_0
    return v0

    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lorg/apache/xml/serialize/EncodingInfo;->isPrintable0(C)Z

    move-result v2

    move v0, v2

    goto :goto_0
.end method
