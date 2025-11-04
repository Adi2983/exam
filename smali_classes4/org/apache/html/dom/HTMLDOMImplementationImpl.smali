.class public Lorg/apache/html/dom/HTMLDOMImplementationImpl;
.super Lorg/apache/xerces/dom/DOMImplementationImpl;

# interfaces
.implements Lorg/w3c/dom/html/HTMLDOMImplementation;


# static fields
.field private static final _instance:Lorg/w3c/dom/html/HTMLDOMImplementation;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/html/dom/HTMLDOMImplementationImpl;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lorg/apache/html/dom/HTMLDOMImplementationImpl;-><init>()V

    sput-object v0, Lorg/apache/html/dom/HTMLDOMImplementationImpl;->_instance:Lorg/w3c/dom/html/HTMLDOMImplementation;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lorg/apache/xerces/dom/DOMImplementationImpl;-><init>()V

    return-void
.end method

.method public static getHTMLDOMImplementation()Lorg/w3c/dom/html/HTMLDOMImplementation;
    .locals 1

    sget-object v0, Lorg/apache/html/dom/HTMLDOMImplementationImpl;->_instance:Lorg/w3c/dom/html/HTMLDOMImplementation;

    return-object v0
.end method


# virtual methods
.method public final createHTMLDocument(Ljava/lang/String;)Lorg/w3c/dom/html/HTMLDocument;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/NullPointerException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "HTM014 Argument \'title\' is null."

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    new-instance v3, Lorg/apache/html/dom/HTMLDocumentImpl;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lorg/apache/html/dom/HTMLDocumentImpl;-><init>()V

    move-object v2, v3

    move-object v3, v2

    move-object v4, v1

    invoke-interface {v3, v4}, Lorg/w3c/dom/html/HTMLDocument;->setTitle(Ljava/lang/String;)V

    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method
