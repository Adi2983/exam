.class final Lorg/apache/xerces/jaxp/validation/DraconianErrorHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/xml/sax/ErrorHandler;


# static fields
.field private static final ERROR_HANDLER_INSTANCE:Lorg/apache/xerces/jaxp/validation/DraconianErrorHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xerces/jaxp/validation/DraconianErrorHandler;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lorg/apache/xerces/jaxp/validation/DraconianErrorHandler;-><init>()V

    sput-object v0, Lorg/apache/xerces/jaxp/validation/DraconianErrorHandler;->ERROR_HANDLER_INSTANCE:Lorg/apache/xerces/jaxp/validation/DraconianErrorHandler;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/apache/xerces/jaxp/validation/DraconianErrorHandler;
    .locals 1

    sget-object v0, Lorg/apache/xerces/jaxp/validation/DraconianErrorHandler;->ERROR_HANDLER_INSTANCE:Lorg/apache/xerces/jaxp/validation/DraconianErrorHandler;

    return-object v0
.end method


# virtual methods
.method public error(Lorg/xml/sax/SAXParseException;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    throw v2
.end method

.method public fatalError(Lorg/xml/sax/SAXParseException;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    throw v2
.end method

.method public warning(Lorg/xml/sax/SAXParseException;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method
