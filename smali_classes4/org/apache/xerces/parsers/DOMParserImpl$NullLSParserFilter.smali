.class final Lorg/apache/xerces/parsers/DOMParserImpl$NullLSParserFilter;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/w3c/dom/ls/LSParserFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/parsers/DOMParserImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NullLSParserFilter"
.end annotation


# static fields
.field static final INSTANCE:Lorg/apache/xerces/parsers/DOMParserImpl$NullLSParserFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xerces/parsers/DOMParserImpl$NullLSParserFilter;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lorg/apache/xerces/parsers/DOMParserImpl$NullLSParserFilter;-><init>()V

    sput-object v0, Lorg/apache/xerces/parsers/DOMParserImpl$NullLSParserFilter;->INSTANCE:Lorg/apache/xerces/parsers/DOMParserImpl$NullLSParserFilter;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public acceptNode(Lorg/w3c/dom/Node;)S
    .locals 3

    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x1

    move v0, v2

    return v0
.end method

.method public getWhatToShow()I
    .locals 2

    move-object v0, p0

    const/4 v1, -0x1

    move v0, v1

    return v0
.end method

.method public startElement(Lorg/w3c/dom/Element;)S
    .locals 3

    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x1

    move v0, v2

    return v0
.end method
