.class public Lorg/apache/xerces/dom/ASDOMImplementationImpl;
.super Lorg/apache/xerces/dom/DOMImplementationImpl;

# interfaces
.implements Lorg/apache/xerces/dom3/as/DOMImplementationAS;


# static fields
.field static final singleton:Lorg/apache/xerces/dom/ASDOMImplementationImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xerces/dom/ASDOMImplementationImpl;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lorg/apache/xerces/dom/ASDOMImplementationImpl;-><init>()V

    sput-object v0, Lorg/apache/xerces/dom/ASDOMImplementationImpl;->singleton:Lorg/apache/xerces/dom/ASDOMImplementationImpl;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lorg/apache/xerces/dom/DOMImplementationImpl;-><init>()V

    return-void
.end method

.method public static getDOMImplementation()Lorg/w3c/dom/DOMImplementation;
    .locals 1

    sget-object v0, Lorg/apache/xerces/dom/ASDOMImplementationImpl;->singleton:Lorg/apache/xerces/dom/ASDOMImplementationImpl;

    return-object v0
.end method


# virtual methods
.method public createAS(Z)Lorg/apache/xerces/dom3/as/ASModel;
    .locals 6

    move-object v0, p0

    move v1, p1

    new-instance v2, Lorg/apache/xerces/dom/ASModelImpl;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move v4, v1

    invoke-direct {v3, v4}, Lorg/apache/xerces/dom/ASModelImpl;-><init>(Z)V

    move-object v0, v2

    return-object v0
.end method

.method public createDOMASBuilder()Lorg/apache/xerces/dom3/as/DOMASBuilder;
    .locals 4

    move-object v0, p0

    new-instance v1, Lorg/apache/xerces/parsers/DOMASBuilderImpl;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lorg/apache/xerces/parsers/DOMASBuilderImpl;-><init>()V

    move-object v0, v1

    return-object v0
.end method

.method public createDOMASWriter()Lorg/apache/xerces/dom3/as/DOMASWriter;
    .locals 7

    move-object v0, p0

    const-string/jumbo v2, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v3, "NOT_SUPPORTED_ERR"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    new-instance v2, Lorg/w3c/dom/DOMException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x9

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v2
.end method
