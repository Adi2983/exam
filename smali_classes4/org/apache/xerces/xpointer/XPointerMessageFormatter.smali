.class final Lorg/apache/xerces/xpointer/XPointerMessageFormatter;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/xerces/util/MessageFormatter;


# static fields
.field public static final XPOINTER_DOMAIN:Ljava/lang/String; = "http://www.w3.org/TR/XPTR"


# instance fields
.field private fLocale:Ljava/util/Locale;

.field private fResourceBundle:Ljava/util/ResourceBundle;


# direct methods
.method constructor <init>()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/xpointer/XPointerMessageFormatter;->fLocale:Ljava/util/Locale;

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/xpointer/XPointerMessageFormatter;->fResourceBundle:Ljava/util/ResourceBundle;

    return-void
.end method


# virtual methods
.method public formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, v1

    if-nez v6, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    move-object v1, v6

    :cond_0
    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/xpointer/XPointerMessageFormatter;->fLocale:Ljava/util/Locale;

    if-eq v6, v7, :cond_1

    move-object v6, v0

    const-string/jumbo v7, "org.apache.xerces.impl.msg.XPointerMessages"

    move-object v8, v1

    invoke-static {v7, v8}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v7

    iput-object v7, v6, Lorg/apache/xerces/xpointer/XPointerMessageFormatter;->fResourceBundle:Ljava/util/ResourceBundle;

    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lorg/apache/xerces/xpointer/XPointerMessageFormatter;->fLocale:Ljava/util/Locale;

    :cond_1
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/xpointer/XPointerMessageFormatter;->fResourceBundle:Ljava/util/ResourceBundle;

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    move-object v6, v3

    if-eqz v6, :cond_2

    move-object v6, v4

    move-object v7, v3

    :try_start_0
    invoke-static {v6, v7}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    move-object v4, v6

    :cond_2
    :goto_0
    move-object v6, v4

    if-nez v6, :cond_3

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/xpointer/XPointerMessageFormatter;->fResourceBundle:Ljava/util/ResourceBundle;

    const-string/jumbo v7, "BadMessageKey"

    invoke-virtual {v6, v7}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    new-instance v6, Ljava/util/MissingResourceException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v4

    const-string/jumbo v9, "org.apache.xerces.impl.msg.XPointerMessages"

    move-object v10, v2

    invoke-direct {v7, v8, v9, v10}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v6

    :catch_0
    move-exception v6

    move-object v5, v6

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/xpointer/XPointerMessageFormatter;->fResourceBundle:Ljava/util/ResourceBundle;

    const-string/jumbo v7, "FormatFailed"

    invoke-virtual {v6, v7}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    new-instance v6, Ljava/lang/StringBuffer;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/xpointer/XPointerMessageFormatter;->fResourceBundle:Ljava/util/ResourceBundle;

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    goto :goto_0

    :cond_3
    move-object v6, v4

    move-object v0, v6

    return-object v0
.end method
