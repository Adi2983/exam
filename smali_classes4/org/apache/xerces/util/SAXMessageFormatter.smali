.class public Lorg/apache/xerces/util/SAXMessageFormatter;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, v0

    if-nez v7, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    move-object v0, v7

    :cond_0
    const-string/jumbo v7, "org.apache.xerces.impl.msg.SAXMessages"

    move-object v8, v0

    invoke-static {v7, v8}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v7

    move-object v3, v7

    move-object v7, v3

    move-object v8, v1

    :try_start_0
    invoke-virtual {v7, v8}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    move-object v4, v7

    move-object v7, v2

    if-eqz v7, :cond_1

    move-object v7, v4

    move-object v8, v2

    :try_start_1
    invoke-static {v7, v8}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    move-object v4, v7

    :cond_1
    :goto_0
    move-object v7, v4

    if-nez v7, :cond_2

    move-object v7, v1

    move-object v4, v7

    move-object v7, v2

    array-length v7, v7

    if-lez v7, :cond_2

    new-instance v7, Ljava/lang/StringBuffer;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v4

    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v5, v7

    move-object v7, v5

    const/16 v8, 0x3f

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v7

    const/4 v7, 0x0

    move v6, v7

    :goto_1
    move v7, v6

    move-object v8, v2

    array-length v8, v8

    if-lt v7, v8, :cond_3

    :cond_2
    move-object v7, v4

    move-object v0, v7

    return-object v0

    :catch_0
    move-exception v7

    move-object v5, v7

    move-object v7, v3

    :try_start_2
    const-string/jumbo v8, "FormatFailed"

    invoke-virtual {v7, v8}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    new-instance v7, Ljava/lang/StringBuffer;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    move-object v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    move-object v8, v3

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v7

    move-object v4, v7

    goto :goto_0

    :catch_1
    move-exception v7

    move-object v5, v7

    move-object v7, v3

    const-string/jumbo v8, "BadMessageKey"

    invoke-virtual {v7, v8}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    new-instance v7, Ljava/util/MissingResourceException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v1

    move-object v10, v4

    move-object v11, v1

    invoke-direct {v8, v9, v10, v11}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v7

    :cond_3
    move v7, v6

    if-lez v7, :cond_4

    move-object v7, v5

    const/16 v8, 0x26

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v7

    :cond_4
    move-object v7, v5

    move-object v8, v2

    move v9, v6

    aget-object v8, v8, v9

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method
