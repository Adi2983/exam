.class Lorg/apache/xerces/jaxp/DefaultValidationErrorHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;


# static fields
.field private static ERROR_COUNT_LIMIT:I


# instance fields
.field private errorCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    sput v0, Lorg/apache/xerces/jaxp/DefaultValidationErrorHandler;->ERROR_COUNT_LIMIT:I

    return-void
.end method

.method constructor <init>()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lorg/apache/xerces/jaxp/DefaultValidationErrorHandler;->errorCount:I

    return-void
.end method


# virtual methods
.method public error(Lorg/xml/sax/SAXParseException;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget v4, v4, Lorg/apache/xerces/jaxp/DefaultValidationErrorHandler;->errorCount:I

    sget v5, Lorg/apache/xerces/jaxp/DefaultValidationErrorHandler;->ERROR_COUNT_LIMIT:I

    if-lt v4, v5, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object v4, v0

    iget v4, v4, Lorg/apache/xerces/jaxp/DefaultValidationErrorHandler;->errorCount:I

    if-nez v4, :cond_1

    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v5, "Warning: validation was turned on but an org.xml.sax.ErrorHandler was not"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v5, "set, which is probably not what is desired.  Parser will use a default"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuffer;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v6, "ErrorHandler to print the first "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    sget v6, Lorg/apache/xerces/jaxp/DefaultValidationErrorHandler;->ERROR_COUNT_LIMIT:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string/jumbo v6, " errors.  Please call"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v5, "the \'setErrorHandler\' method to fix this."

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    move-object v4, v1

    invoke-virtual {v4}, Lorg/xml/sax/SAXParseException;->getSystemId()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    move-object v4, v2

    if-nez v4, :cond_2

    const-string/jumbo v4, "null"

    move-object v2, v4

    :cond_2
    new-instance v4, Ljava/lang/StringBuffer;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v5, "Error: URI="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string/jumbo v5, " Line="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v5}, Lorg/xml/sax/SAXParseException;->getLineNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string/jumbo v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v5}, Lorg/xml/sax/SAXParseException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object v4, v0

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    iget v5, v5, Lorg/apache/xerces/jaxp/DefaultValidationErrorHandler;->errorCount:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lorg/apache/xerces/jaxp/DefaultValidationErrorHandler;->errorCount:I

    goto/16 :goto_0
.end method
