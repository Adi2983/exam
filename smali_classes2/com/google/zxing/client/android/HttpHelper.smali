.class public final Lcom/google/zxing/client/android/HttpHelper;
.super Ljava/lang/Object;
.source "HttpHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/client/android/HttpHelper$ContentType;
    }
.end annotation


# static fields
.field private static final REDIRECTOR_DOMAINS:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 39
    const-class v0, Lcom/google/zxing/client/android/HttpHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/HttpHelper;->TAG:Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/util/HashSet;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const/16 v2, 0x10

    new-array v2, v2, [Ljava/lang/String;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    const-string/jumbo v5, "amzn.to"

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x1

    const-string/jumbo v5, "bit.ly"

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x2

    const-string/jumbo v5, "bitly.com"

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x3

    const-string/jumbo v5, "fb.me"

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x4

    const-string/jumbo v5, "goo.gl"

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x5

    const-string/jumbo v5, "is.gd"

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x6

    const-string/jumbo v5, "j.mp"

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x7

    const-string/jumbo v5, "lnkd.in"

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x8

    const-string/jumbo v5, "ow.ly"

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x9

    const-string/jumbo v5, "R.BEETAGG.COM"

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0xa

    const-string/jumbo v5, "r.beetagg.com"

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0xb

    const-string/jumbo v5, "SCN.BY"

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0xc

    const-string/jumbo v5, "su.pr"

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0xd

    const-string/jumbo v5, "t.co"

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0xe

    const-string/jumbo v5, "tinyurl.com"

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0xf

    const-string/jumbo v5, "tr.im"

    aput-object v5, v3, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/google/zxing/client/android/HttpHelper;->REDIRECTOR_DOMAINS:Ljava/util/Collection;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/HttpHelper;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method private static consume(Ljava/net/URLConnection;I)Ljava/lang/CharSequence;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "connection":Ljava/net/URLConnection;
    move v1, p1

    .local v1, "maxChars":I
    move-object v9, v0

    invoke-static {v9}, Lcom/google/zxing/client/android/HttpHelper;->getEncoding(Ljava/net/URLConnection;)Ljava/lang/String;

    move-result-object v9

    move-object v2, v9

    .line 144
    .local v2, "encoding":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v9

    .line 145
    .local v3, "out":Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    move-object v4, v9

    .line 147
    .local v4, "in":Ljava/io/Reader;
    :try_start_0
    new-instance v9, Ljava/io/InputStreamReader;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v0

    invoke-virtual {v11}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    move-object v12, v2

    invoke-direct {v10, v11, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object v4, v9

    .line 148
    const/16 v9, 0x400

    new-array v9, v9, [C

    move-object v5, v9

    .line 150
    .local v5, "buffer":[C
    :goto_0
    move-object v9, v3

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    move v10, v1

    if-ge v9, v10, :cond_0

    move-object v9, v4

    move-object v10, v5

    invoke-virtual {v9, v10}, Ljava/io/Reader;->read([C)I

    move-result v9

    move v13, v9

    move v9, v13

    move v10, v13

    move v6, v10

    .local v6, "charsRead":I
    if-lez v9, :cond_0

    .line 151
    move-object v9, v3

    move-object v10, v5

    const/4 v11, 0x0

    move v12, v6

    invoke-virtual {v9, v10, v11, v12}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    goto :goto_0

    .line 154
    .end local v6    # "charsRead":I
    :cond_0
    move-object v9, v4

    if-eqz v9, :cond_1

    .line 156
    move-object v9, v4

    :try_start_1
    invoke-virtual {v9}, Ljava/io/Reader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 161
    .line 164
    .end local v5    # "buffer":[C
    :cond_1
    :goto_1
    move-object v9, v3

    move-object v0, v9

    .end local v0    # "connection":Ljava/net/URLConnection;
    return-object v0

    .line 157
    .restart local v0    # "connection":Ljava/net/URLConnection;
    .restart local v5    # "buffer":[C
    :catch_0
    move-exception v9

    move-object v5, v9

    .line 161
    goto :goto_1

    .line 159
    :catch_1
    move-exception v9

    move-object v5, v9

    .line 161
    goto :goto_1

    .line 154
    .end local v5    # "buffer":[C
    :catchall_0
    move-exception v9

    move-object v7, v9

    move-object v9, v4

    if-eqz v9, :cond_2

    .line 156
    move-object v9, v4

    :try_start_2
    invoke-virtual {v9}, Ljava/io/Reader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_3

    .line 161
    .line 163
    :cond_2
    :goto_2
    move-object v9, v7

    throw v9

    .line 157
    :catch_2
    move-exception v9

    move-object v8, v9

    .line 161
    goto :goto_2

    .line 159
    :catch_3
    move-exception v9

    move-object v8, v9

    goto :goto_2
.end method

.method public static downloadViaHttp(Ljava/lang/String;Lcom/google/zxing/client/android/HttpHelper$ContentType;)Ljava/lang/CharSequence;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "uri":Ljava/lang/String;
    move-object v1, p1

    .local v1, "type":Lcom/google/zxing/client/android/HttpHelper$ContentType;
    move-object v2, v0

    move-object v3, v1

    const v4, 0x7fffffff

    invoke-static {v2, v3, v4}, Lcom/google/zxing/client/android/HttpHelper;->downloadViaHttp(Ljava/lang/String;Lcom/google/zxing/client/android/HttpHelper$ContentType;I)Ljava/lang/CharSequence;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "uri":Ljava/lang/String;
    return-object v0
.end method

.method public static downloadViaHttp(Ljava/lang/String;Lcom/google/zxing/client/android/HttpHelper$ContentType;I)Ljava/lang/CharSequence;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "uri":Ljava/lang/String;
    move-object v1, p1

    .local v1, "type":Lcom/google/zxing/client/android/HttpHelper$ContentType;
    move v2, p2

    .local v2, "maxChars":I
    sget-object v4, Lcom/google/zxing/client/android/HttpHelper$1;->$SwitchMap$com$google$zxing$client$android$HttpHelper$ContentType:[I

    move-object v5, v1

    invoke-virtual {v5}, Lcom/google/zxing/client/android/HttpHelper$ContentType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 85
    const-string/jumbo v4, "text/*,*/*"

    move-object v3, v4

    .line 87
    .local v3, "contentTypes":Ljava/lang/String;
    :goto_0
    move-object v4, v0

    move-object v5, v3

    move v6, v2

    invoke-static {v4, v5, v6}, Lcom/google/zxing/client/android/HttpHelper;->downloadViaHttp(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "uri":Ljava/lang/String;
    return-object v0

    .line 78
    .end local v3    # "contentTypes":Ljava/lang/String;
    .restart local v0    # "uri":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v4, "application/xhtml+xml,text/html,text/*,*/*"

    move-object v3, v4

    .line 79
    .restart local v3    # "contentTypes":Ljava/lang/String;
    goto :goto_0

    .line 81
    .end local v3    # "contentTypes":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v4, "application/json,text/*,*/*"

    move-object v3, v4

    .line 82
    .restart local v3    # "contentTypes":Ljava/lang/String;
    goto :goto_0

    .line 76
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static downloadViaHttp(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/CharSequence;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "uri":Ljava/lang/String;
    move-object v1, p1

    .local v1, "contentTypes":Ljava/lang/String;
    move/from16 v2, p2

    .local v2, "maxChars":I
    sget-object v9, Lcom/google/zxing/client/android/HttpHelper;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Downloading "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 92
    new-instance v9, Ljava/net/URL;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v0

    invoke-direct {v10, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object v3, v9

    .line 93
    .local v3, "url":Ljava/net/URL;
    move-object v9, v3

    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    move-object v4, v9

    .line 94
    .local v4, "conn":Ljava/net/URLConnection;
    move-object v9, v4

    instance-of v9, v9, Ljava/net/HttpURLConnection;

    if-nez v9, :cond_0

    .line 95
    new-instance v9, Ljava/io/IOException;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    invoke-direct {v10}, Ljava/io/IOException;-><init>()V

    throw v9

    .line 97
    :cond_0
    move-object v9, v4

    check-cast v9, Ljava/net/HttpURLConnection;

    move-object v5, v9

    .line 98
    .local v5, "connection":Ljava/net/HttpURLConnection;
    move-object v9, v5

    const-string/jumbo v10, "Accept"

    move-object v11, v1

    invoke-virtual {v9, v10, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    move-object v9, v5

    const-string/jumbo v10, "Accept-Charset"

    const-string/jumbo v11, "utf-8,*"

    invoke-virtual {v9, v10, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    move-object v9, v5

    const-string/jumbo v10, "User-Agent"

    const-string/jumbo v11, "ZXing (Android)"

    invoke-virtual {v9, v10, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    move-object v9, v5

    :try_start_0
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    .line 115
    move-object v9, v5

    :try_start_1
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v9

    move v6, v9

    .line 120
    .line 121
    .local v6, "responseCode":I
    move v9, v6

    const/16 v10, 0xc8

    if-eq v9, v10, :cond_1

    .line 122
    :try_start_2
    new-instance v9, Ljava/io/IOException;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v13, v11

    move-object v11, v13

    move-object v12, v13

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Bad HTTP response: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move v12, v6

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 127
    .end local v6    # "responseCode":I
    :catchall_0
    move-exception v9

    move-object v8, v9

    move-object v9, v5

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 128
    move-object v9, v8

    throw v9

    .line 104
    :catch_0
    move-exception v9

    move-object v6, v9

    .line 106
    .local v6, "npe":Ljava/lang/NullPointerException;
    :try_start_3
    sget-object v9, Lcom/google/zxing/client/android/HttpHelper;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Bad URI? "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 107
    new-instance v9, Ljava/io/IOException;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v6

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v9

    .line 108
    .end local v6    # "npe":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v9

    move-object v6, v9

    .line 110
    .local v6, "iae":Ljava/lang/IllegalArgumentException;
    sget-object v9, Lcom/google/zxing/client/android/HttpHelper;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Bad URI? "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 111
    new-instance v9, Ljava/io/IOException;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v6

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v9

    .line 116
    .end local v6    # "iae":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v9

    move-object v7, v9

    .line 118
    .local v7, "npe":Ljava/lang/NullPointerException;
    sget-object v9, Lcom/google/zxing/client/android/HttpHelper;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Bad URI? "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 119
    new-instance v9, Ljava/io/IOException;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v7

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v9

    .line 124
    .end local v7    # "npe":Ljava/lang/NullPointerException;
    .local v6, "responseCode":I
    :cond_1
    sget-object v9, Lcom/google/zxing/client/android/HttpHelper;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Consuming "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 125
    move-object v9, v5

    move v10, v2

    invoke-static {v9, v10}, Lcom/google/zxing/client/android/HttpHelper;->consume(Ljava/net/URLConnection;I)Ljava/lang/CharSequence;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v9

    move-object v7, v9

    .line 127
    move-object v9, v5

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 125
    move-object v9, v7

    move-object v0, v9

    .end local v0    # "uri":Ljava/lang/String;
    return-object v0
.end method

.method private static getEncoding(Ljava/net/URLConnection;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "connection":Ljava/net/URLConnection;
    move-object v3, v0

    const-string/jumbo v4, "Content-Type"

    invoke-virtual {v3, v4}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 133
    .local v1, "contentTypeHeader":Ljava/lang/String;
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 134
    move-object v3, v1

    const-string/jumbo v4, "charset="

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    move v2, v3

    .line 135
    .local v2, "charsetStart":I
    move v3, v2

    if-ltz v3, :cond_0

    .line 136
    move-object v3, v1

    move v4, v2

    const-string/jumbo v5, "charset="

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 139
    .end local v0    # "connection":Ljava/net/URLConnection;
    .end local v2    # "charsetStart":I
    :goto_0
    return-object v0

    .restart local v0    # "connection":Ljava/net/URLConnection;
    :cond_0
    const-string/jumbo v3, "UTF-8"

    move-object v0, v3

    goto :goto_0
.end method

.method public static unredirect(Ljava/net/URI;)Ljava/net/URI;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 168
    move-object v0, p0

    .local v0, "uri":Ljava/net/URI;
    sget-object v8, Lcom/google/zxing/client/android/HttpHelper;->REDIRECTOR_DOMAINS:Ljava/util/Collection;

    move-object v9, v0

    invoke-virtual {v9}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 169
    move-object v8, v0

    move-object v0, v8

    .line 217
    .end local v0    # "uri":Ljava/net/URI;
    .local v1, "url":Ljava/net/URL;
    .local v2, "conn":Ljava/net/URLConnection;
    .local v3, "connection":Ljava/net/HttpURLConnection;
    .local v4, "responseCode":I
    :goto_0
    return-object v0

    .line 171
    .end local v1    # "url":Ljava/net/URL;
    .end local v2    # "conn":Ljava/net/URLConnection;
    .end local v3    # "connection":Ljava/net/HttpURLConnection;
    .end local v4    # "responseCode":I
    .restart local v0    # "uri":Ljava/net/URI;
    :cond_0
    move-object v8, v0

    invoke-virtual {v8}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v8

    move-object v1, v8

    .line 173
    .restart local v1    # "url":Ljava/net/URL;
    move-object v8, v1

    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    move-object v2, v8

    .line 174
    .restart local v2    # "conn":Ljava/net/URLConnection;
    move-object v8, v2

    instance-of v8, v8, Ljava/net/HttpURLConnection;

    if-nez v8, :cond_1

    .line 175
    new-instance v8, Ljava/io/IOException;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/io/IOException;-><init>()V

    throw v8

    .line 177
    :cond_1
    move-object v8, v2

    check-cast v8, Ljava/net/HttpURLConnection;

    move-object v3, v8

    .line 178
    .restart local v3    # "connection":Ljava/net/HttpURLConnection;
    move-object v8, v3

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 179
    move-object v8, v3

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 180
    move-object v8, v3

    const-string/jumbo v9, "HEAD"

    invoke-virtual {v8, v9}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 181
    move-object v8, v3

    const-string/jumbo v9, "User-Agent"

    const-string/jumbo v10, "ZXing (Android)"

    invoke-virtual {v8, v9, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    move-object v8, v3

    :try_start_0
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    .line 196
    move-object v8, v3

    :try_start_1
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    move v4, v8

    .line 201
    .line 202
    .restart local v4    # "responseCode":I
    move v8, v4

    packed-switch v8, :pswitch_data_0

    .line 217
    :cond_2
    :goto_1
    :pswitch_0
    move-object v8, v0

    move-object v5, v8

    .line 219
    move-object v8, v3

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 217
    move-object v8, v5

    move-object v0, v8

    goto :goto_0

    .line 185
    .end local v4    # "responseCode":I
    :catch_0
    move-exception v8

    move-object v4, v8

    .line 187
    .local v4, "npe":Ljava/lang/NullPointerException;
    :try_start_2
    sget-object v8, Lcom/google/zxing/client/android/HttpHelper;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Bad URI? "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v0

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 188
    new-instance v8, Ljava/io/IOException;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v4

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 219
    .end local v4    # "npe":Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v8

    move-object v7, v8

    move-object v8, v3

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 220
    move-object v8, v7

    throw v8

    .line 189
    :catch_1
    move-exception v8

    move-object v4, v8

    .line 191
    .local v4, "iae":Ljava/lang/IllegalArgumentException;
    :try_start_3
    sget-object v8, Lcom/google/zxing/client/android/HttpHelper;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Bad URI? "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v0

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 192
    new-instance v8, Ljava/io/IOException;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v4

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 197
    .end local v4    # "iae":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v8

    move-object v5, v8

    .line 199
    .local v5, "npe":Ljava/lang/NullPointerException;
    sget-object v8, Lcom/google/zxing/client/android/HttpHelper;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Bad URI? "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v0

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 200
    new-instance v8, Ljava/io/IOException;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v5

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 208
    .end local v5    # "npe":Ljava/lang/NullPointerException;
    .local v4, "responseCode":I
    :pswitch_1
    move-object v8, v3

    const-string/jumbo v9, "Location"

    invoke-virtual {v8, v9}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v8

    move-object v5, v8

    .line 209
    .local v5, "location":Ljava/lang/String;
    move-object v8, v5

    if-eqz v8, :cond_2

    .line 211
    :try_start_4
    new-instance v8, Ljava/net/URI;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v5

    invoke-direct {v9, v10}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/net/URISyntaxException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v6, v8

    .line 219
    move-object v8, v3

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 211
    move-object v8, v6

    move-object v0, v8

    goto/16 :goto_0

    .line 212
    :catch_3
    move-exception v8

    move-object v6, v8

    goto/16 :goto_1

    .line 202
    nop

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
