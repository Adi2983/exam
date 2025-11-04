.class public final Lorg/apache/xml/serialize/HTMLdtd;
.super Ljava/lang/Object;


# static fields
.field private static final ALLOWED_HEAD:I = 0x20

.field private static final CLOSE_DD_DT:I = 0x80

.field private static final CLOSE_P:I = 0x40

.field private static final CLOSE_SELF:I = 0x100

.field private static final CLOSE_TABLE:I = 0x200

.field private static final CLOSE_TH_TD:I = 0x4000

.field private static final ELEM_CONTENT:I = 0x2

.field private static final EMPTY:I = 0x11

.field private static final ENTITIES_RESOURCE:Ljava/lang/String; = "HTMLEntities.res"

.field public static final HTMLPublicId:Ljava/lang/String; = "-//W3C//DTD HTML 4.01//EN"

.field public static final HTMLSystemId:Ljava/lang/String; = "http://www.w3.org/TR/html4/strict.dtd"

.field private static final ONLY_OPENING:I = 0x1

.field private static final OPT_CLOSING:I = 0x8

.field private static final PRESERVE:I = 0x4

.field public static final XHTMLPublicId:Ljava/lang/String; = "-//W3C//DTD XHTML 1.0 Strict//EN"

.field public static final XHTMLSystemId:Ljava/lang/String; = "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"

.field private static _boolAttrs:Ljava/util/Hashtable;

.field private static _byChar:Ljava/util/Hashtable;

.field private static _byName:Ljava/util/Hashtable;

.field private static _elemDefs:Ljava/util/Hashtable;

.field static class$org$apache$xml$serialize$HTMLdtd:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Ljava/util/Hashtable;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/apache/xml/serialize/HTMLdtd;->_elemDefs:Ljava/util/Hashtable;

    const-string/jumbo v0, "ADDRESS"

    const/16 v1, 0x40

    invoke-static {v0, v1}, Lorg/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "AREA"

    const/16 v1, 0x11

    invoke-static {v0, v1}, Lorg/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "BASE"

    const/16 v1, 0x31

    invoke-static {v0, v1}, Lorg/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "BASEFONT"

    const/16 v1, 0x11

    invoke-static {v0, v1}, Lorg/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "BLOCKQUOTE"

    const/16 v1, 0x40

    invoke-static {v0, v1}, Lorg/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "BODY"

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lorg/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "BR"

    const/16 v1, 0x11

    invoke-static {v0, v1}, Lorg/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "COL"

    const/16 v1, 0x11

    invoke-static {v0, v1}, Lorg/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "COLGROUP"

    const/16 v1, 0x20a

    invoke-static {v0, v1}, Lorg/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "DD"

    const/16 v1, 0x89

    invoke-static {v0, v1}, Lorg/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "DIV"

    const/16 v1, 0x40

    invoke-static {v0, v1}, Lorg/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "DL"

    const/16 v1, 0x42

    invoke-static {v0, v1}, Lorg/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "DT"

    const/16 v1, 0x89

    invoke-static {v0, v1}, Lorg/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "FIELDSET"

    const/16 v1, 0x40

    invoke-static {v0, v1}, Lorg/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "FORM"

    const/16 v1, 0x40

    invoke-static {v0, v1}, Lorg/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "FRAME"

    const/16 v1, 0x19

    invoke-static {v0, v1}, Lorg/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "H1"

    const/16 v1, 0x40

    invoke-static {v0, v1}, Lorg/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "H2"

    const/16 v1, 0x40

    invoke-static {v0, v1}, Lorg/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "H3"

    const/16 v1, 0x40

    invoke-static {v0, v1}, Lorg/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "H4"

    const/16 v1, 0x40

    invoke-static {v0, v1}, Lorg/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "H5"

    const/16 v1, 0x40

    invoke-static {v0, v1}, Lorg/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "H6"

    const/16 v1, 0x40

    invoke-static {v0, v1}, Lorg/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "HEAD"

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lorg/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "HR"

    const/16 v1, 0x51

    invoke-static {v0, v1}, Lorg/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "HTML"

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lorg/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "IMG"

    const/16 v1, 0x11

    invoke-static {v0, v1}, Lorg/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "INPUT"

    const/16 v1, 0x11

    invoke-static {v0, v1}, Lorg/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "ISINDEX"

    const/16 v1, 0x31

    invoke-static {v0, v1}, Lorg/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "LI"

    const/16 v1, 0x109

    invoke-static {v0, v1}, Lorg/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "LINK"

    const/16 v1, 0x31

    invoke-static {v0, v1}, Lorg/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "MAP"

    const/16 v1, 0x20

    invoke-static {v0, v1}, Lorg/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "META"

    const/16 v1, 0x31

    invoke-static {v0, v1}, Lorg/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "OL"

    const/16 v1, 0x42

    invoke-static {v0, v1}, Lorg/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "OPTGROUP"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lorg/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "OPTION"

    const/16 v1, 0x109

    invoke-static {v0, v1}, Lorg/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "P"

    const/16 v1, 0x148

    invoke-static {v0, v1}, Lorg/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "PARAM"

    const/16 v1, 0x11

    invoke-static {v0, v1}, Lorg/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "PRE"

    const/16 v1, 0x44

    invoke-static {v0, v1}, Lorg/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "SCRIPT"

    const/16 v1, 0x24

    invoke-static {v0, v1}, Lorg/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "NOSCRIPT"

    const/16 v1, 0x24

    invoke-static {v0, v1}, Lorg/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "SELECT"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lorg/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "STYLE"

    const/16 v1, 0x24

    invoke-static {v0, v1}, Lorg/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "TABLE"

    const/16 v1, 0x42

    invoke-static {v0, v1}, Lorg/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "TBODY"

    const/16 v1, 0x20a

    invoke-static {v0, v1}, Lorg/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "TD"

    const/16 v1, 0x4008

    invoke-static {v0, v1}, Lorg/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "TEXTAREA"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lorg/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "TFOOT"

    const/16 v1, 0x20a

    invoke-static {v0, v1}, Lorg/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "TH"

    const/16 v1, 0x4008

    invoke-static {v0, v1}, Lorg/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "THEAD"

    const/16 v1, 0x20a

    invoke-static {v0, v1}, Lorg/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "TITLE"

    const/16 v1, 0x20

    invoke-static {v0, v1}, Lorg/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "TR"

    const/16 v1, 0x20a

    invoke-static {v0, v1}, Lorg/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "UL"

    const/16 v1, 0x42

    invoke-static {v0, v1}, Lorg/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    new-instance v0, Ljava/util/Hashtable;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/apache/xml/serialize/HTMLdtd;->_boolAttrs:Ljava/util/Hashtable;

    const-string/jumbo v0, "AREA"

    const-string/jumbo v1, "href"

    invoke-static {v0, v1}, Lorg/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "BUTTON"

    const-string/jumbo v1, "disabled"

    invoke-static {v0, v1}, Lorg/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "DIR"

    const-string/jumbo v1, "compact"

    invoke-static {v0, v1}, Lorg/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "DL"

    const-string/jumbo v1, "compact"

    invoke-static {v0, v1}, Lorg/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "FRAME"

    const-string/jumbo v1, "noresize"

    invoke-static {v0, v1}, Lorg/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "HR"

    const-string/jumbo v1, "noshade"

    invoke-static {v0, v1}, Lorg/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "IMAGE"

    const-string/jumbo v1, "ismap"

    invoke-static {v0, v1}, Lorg/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "INPUT"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x0

    const-string/jumbo v4, "defaultchecked"

    aput-object v4, v2, v3

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x1

    const-string/jumbo v4, "checked"

    aput-object v4, v2, v3

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x2

    const-string/jumbo v4, "readonly"

    aput-object v4, v2, v3

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x3

    const-string/jumbo v4, "disabled"

    aput-object v4, v2, v3

    invoke-static {v0, v1}, Lorg/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;[Ljava/lang/String;)V

    const-string/jumbo v0, "LINK"

    const-string/jumbo v1, "link"

    invoke-static {v0, v1}, Lorg/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "MENU"

    const-string/jumbo v1, "compact"

    invoke-static {v0, v1}, Lorg/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "OBJECT"

    const-string/jumbo v1, "declare"

    invoke-static {v0, v1}, Lorg/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "OL"

    const-string/jumbo v1, "compact"

    invoke-static {v0, v1}, Lorg/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "OPTGROUP"

    const-string/jumbo v1, "disabled"

    invoke-static {v0, v1}, Lorg/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "OPTION"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x0

    const-string/jumbo v4, "default-selected"

    aput-object v4, v2, v3

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x1

    const-string/jumbo v4, "selected"

    aput-object v4, v2, v3

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x2

    const-string/jumbo v4, "disabled"

    aput-object v4, v2, v3

    invoke-static {v0, v1}, Lorg/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;[Ljava/lang/String;)V

    const-string/jumbo v0, "SCRIPT"

    const-string/jumbo v1, "defer"

    invoke-static {v0, v1}, Lorg/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "SELECT"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x0

    const-string/jumbo v4, "multiple"

    aput-object v4, v2, v3

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x1

    const-string/jumbo v4, "disabled"

    aput-object v4, v2, v3

    invoke-static {v0, v1}, Lorg/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;[Ljava/lang/String;)V

    const-string/jumbo v0, "STYLE"

    const-string/jumbo v1, "disabled"

    invoke-static {v0, v1}, Lorg/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "TD"

    const-string/jumbo v1, "nowrap"

    invoke-static {v0, v1}, Lorg/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "TH"

    const-string/jumbo v1, "nowrap"

    invoke-static {v0, v1}, Lorg/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "TEXTAREA"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x0

    const-string/jumbo v4, "disabled"

    aput-object v4, v2, v3

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x1

    const-string/jumbo v4, "readonly"

    aput-object v4, v2, v3

    invoke-static {v0, v1}, Lorg/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;[Ljava/lang/String;)V

    const-string/jumbo v0, "UL"

    const-string/jumbo v1, "compact"

    invoke-static {v0, v1}, Lorg/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lorg/apache/xml/serialize/HTMLdtd;->initialize()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static charFromName(Ljava/lang/String;)I
    .locals 4

    move-object v0, p0

    invoke-static {}, Lorg/apache/xml/serialize/HTMLdtd;->initialize()V

    sget-object v2, Lorg/apache/xml/serialize/HTMLdtd;->_byName:Ljava/util/Hashtable;

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v2, -0x1

    move v0, v2

    goto :goto_0
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

.method private static defineBoolean(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    move-object v6, v1

    aput-object v6, v4, v5

    invoke-static {v2, v3}, Lorg/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private static defineBoolean(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    sget-object v2, Lorg/apache/xml/serialize/HTMLdtd;->_boolAttrs:Ljava/util/Hashtable;

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-void
.end method

.method private static defineElement(Ljava/lang/String;I)V
    .locals 8

    move-object v0, p0

    move v1, p1

    sget-object v2, Lorg/apache/xml/serialize/HTMLdtd;->_elemDefs:Ljava/util/Hashtable;

    move-object v3, v0

    new-instance v4, Ljava/lang/Integer;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move v6, v1

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-void
.end method

.method private static defineEntity(Ljava/lang/String;C)V
    .locals 8

    move-object v0, p0

    move v1, p1

    sget-object v2, Lorg/apache/xml/serialize/HTMLdtd;->_byName:Ljava/util/Hashtable;

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    sget-object v2, Lorg/apache/xml/serialize/HTMLdtd;->_byName:Ljava/util/Hashtable;

    move-object v3, v0

    new-instance v4, Ljava/lang/Integer;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move v6, v1

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v2, Lorg/apache/xml/serialize/HTMLdtd;->_byChar:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move v5, v1

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :cond_0
    return-void
.end method

.method public static fromChar(I)Ljava/lang/String;
    .locals 7

    move v0, p0

    move v2, v0

    const v3, 0xffff

    if-le v2, v3, :cond_0

    const/4 v2, 0x0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/apache/xml/serialize/HTMLdtd;->initialize()V

    sget-object v2, Lorg/apache/xml/serialize/HTMLdtd;->_byChar:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move v5, v0

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    move-object v2, v1

    move-object v0, v2

    goto :goto_0
.end method

.method private static initialize()V
    .locals 20

    const/4 v11, 0x0

    move-object v0, v11

    const/4 v11, 0x0

    move-object v1, v11

    sget-object v11, Lorg/apache/xml/serialize/HTMLdtd;->_byName:Ljava/util/Hashtable;

    if-eqz v11, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v11, Ljava/util/Hashtable;

    move-object/from16 v19, v11

    move-object/from16 v11, v19

    move-object/from16 v12, v19

    invoke-direct {v12}, Ljava/util/Hashtable;-><init>()V

    sput-object v11, Lorg/apache/xml/serialize/HTMLdtd;->_byName:Ljava/util/Hashtable;

    new-instance v11, Ljava/util/Hashtable;

    move-object/from16 v19, v11

    move-object/from16 v11, v19

    move-object/from16 v12, v19

    invoke-direct {v12}, Ljava/util/Hashtable;-><init>()V

    sput-object v11, Lorg/apache/xml/serialize/HTMLdtd;->_byChar:Ljava/util/Hashtable;

    sget-object v11, Lorg/apache/xml/serialize/HTMLdtd;->class$org$apache$xml$serialize$HTMLdtd:Ljava/lang/Class;

    if-nez v11, :cond_2

    const-string/jumbo v11, "org.apache.xml.serialize.HTMLdtd"

    invoke-static {v11}, Lorg/apache/xml/serialize/HTMLdtd;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    move-object/from16 v19, v11

    move-object/from16 v11, v19

    move-object/from16 v12, v19

    sput-object v12, Lorg/apache/xml/serialize/HTMLdtd;->class$org$apache$xml$serialize$HTMLdtd:Ljava/lang/Class;

    :goto_1
    const-string/jumbo v12, "HTMLEntities.res"

    invoke-virtual {v11, v12}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v11

    move-object v0, v11

    move-object v11, v0

    if-nez v11, :cond_3

    new-instance v11, Ljava/lang/RuntimeException;

    move-object/from16 v19, v11

    move-object/from16 v11, v19

    move-object/from16 v12, v19

    const-string/jumbo v13, "http://apache.org/xml/serializer"

    const-string/jumbo v14, "ResourceNotFound"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    const/16 v17, 0x0

    const-string/jumbo v18, "HTMLEntities.res"

    aput-object v18, v16, v17

    invoke-static {v13, v14, v15}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    move-exception v11

    move-object v7, v11

    :try_start_1
    new-instance v11, Ljava/lang/RuntimeException;

    move-object/from16 v19, v11

    move-object/from16 v11, v19

    move-object/from16 v12, v19

    const-string/jumbo v13, "http://apache.org/xml/serializer"

    const-string/jumbo v14, "ResourceNotLoaded"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    const/16 v17, 0x0

    const-string/jumbo v18, "HTMLEntities.res"

    aput-object v18, v16, v17

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    const/16 v17, 0x1

    move-object/from16 v18, v7

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static {v13, v14, v15}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v11

    move-object v8, v11

    move-object v11, v0

    if-eqz v11, :cond_1

    move-object v11, v0

    :try_start_2
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_2
    move-object v11, v8

    throw v11

    :cond_2
    :try_start_3
    sget-object v11, Lorg/apache/xml/serialize/HTMLdtd;->class$org$apache$xml$serialize$HTMLdtd:Ljava/lang/Class;

    goto :goto_1

    :cond_3
    new-instance v11, Ljava/io/BufferedReader;

    move-object/from16 v19, v11

    move-object/from16 v11, v19

    move-object/from16 v12, v19

    new-instance v13, Ljava/io/InputStreamReader;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    move-object v15, v0

    const-string/jumbo v16, "ASCII"

    invoke-direct/range {v14 .. v16}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v12, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v11

    move-object v11, v1

    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    move-object v6, v11

    :goto_3
    move-object v11, v6

    if-nez v11, :cond_5

    move-object v11, v0

    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v11, v0

    if-eqz v11, :cond_4

    move-object v11, v0

    :try_start_4
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_4
    :goto_4
    goto/16 :goto_0

    :cond_5
    move-object v11, v6

    :try_start_5
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_6

    move-object v11, v6

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x23

    if-ne v11, v12, :cond_7

    :cond_6
    move-object v11, v1

    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    move-object v6, v11

    goto :goto_3

    :cond_7
    move-object v11, v6

    const/16 v12, 0x20

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    move v2, v11

    move v11, v2

    const/4 v12, 0x1

    if-le v11, v12, :cond_9

    move-object v11, v6

    const/4 v12, 0x0

    move v13, v2

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    move-object v3, v11

    add-int/lit8 v2, v2, 0x1

    move v11, v2

    move-object v12, v6

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v11, v12, :cond_9

    move-object v11, v6

    move v12, v2

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    move-object v4, v11

    move-object v11, v4

    const/16 v12, 0x20

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    move v2, v11

    move v11, v2

    if-lez v11, :cond_8

    move-object v11, v4

    const/4 v12, 0x0

    move v13, v2

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    move-object v4, v11

    :cond_8
    move-object v11, v4

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    move v5, v11

    move-object v11, v3

    move v12, v5

    int-to-char v12, v12

    invoke-static {v11, v12}, Lorg/apache/xml/serialize/HTMLdtd;->defineEntity(Ljava/lang/String;C)V

    :cond_9
    move-object v11, v1

    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v11

    move-object v6, v11

    goto :goto_3

    :catch_1
    move-exception v11

    move-object v10, v11

    goto/16 :goto_2

    :catch_2
    move-exception v11

    move-object v10, v11

    goto :goto_4
.end method

.method public static isBoolean(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    move-object v0, p0

    move-object v1, p1

    sget-object v4, Lorg/apache/xml/serialize/HTMLdtd;->_boolAttrs:Ljava/util/Hashtable;

    move-object v5, v0

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    move-object v2, v4

    move-object v4, v2

    if-nez v4, :cond_0

    const/4 v4, 0x0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    const/4 v4, 0x0

    move v3, v4

    :goto_1
    move v4, v3

    move-object v5, v2

    array-length v5, v5

    if-lt v4, v5, :cond_1

    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    :cond_1
    move-object v4, v2

    move v5, v3

    aget-object v4, v4, v5

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static isClosing(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    const-string/jumbo v3, "HEAD"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v0

    const/16 v3, 0x20

    invoke-static {v2, v3}, Lorg/apache/xml/serialize/HTMLdtd;->isElement(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    :goto_1
    return v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    move-object v2, v1

    const-string/jumbo v3, "P"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, v0

    const/16 v3, 0x40

    invoke-static {v2, v3}, Lorg/apache/xml/serialize/HTMLdtd;->isElement(Ljava/lang/String;I)Z

    move-result v2

    move v0, v2

    goto :goto_1

    :cond_2
    move-object v2, v1

    const-string/jumbo v3, "DT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    move-object v2, v1

    const-string/jumbo v3, "DD"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    move-object v2, v0

    const/16 v3, 0x80

    invoke-static {v2, v3}, Lorg/apache/xml/serialize/HTMLdtd;->isElement(Ljava/lang/String;I)Z

    move-result v2

    move v0, v2

    goto :goto_1

    :cond_4
    move-object v2, v1

    const-string/jumbo v3, "LI"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    move-object v2, v1

    const-string/jumbo v3, "OPTION"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    move-object v2, v0

    const/16 v3, 0x100

    invoke-static {v2, v3}, Lorg/apache/xml/serialize/HTMLdtd;->isElement(Ljava/lang/String;I)Z

    move-result v2

    move v0, v2

    goto :goto_1

    :cond_6
    move-object v2, v1

    const-string/jumbo v3, "THEAD"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    move-object v2, v1

    const-string/jumbo v3, "TFOOT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    move-object v2, v1

    const-string/jumbo v3, "TBODY"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    move-object v2, v1

    const-string/jumbo v3, "TR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    move-object v2, v1

    const-string/jumbo v3, "COLGROUP"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    move-object v2, v0

    const/16 v3, 0x200

    invoke-static {v2, v3}, Lorg/apache/xml/serialize/HTMLdtd;->isElement(Ljava/lang/String;I)Z

    move-result v2

    move v0, v2

    goto/16 :goto_1

    :cond_8
    move-object v2, v1

    const-string/jumbo v3, "TH"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    move-object v2, v1

    const-string/jumbo v3, "TD"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_9
    move-object v2, v0

    const/16 v3, 0x4000

    invoke-static {v2, v3}, Lorg/apache/xml/serialize/HTMLdtd;->isElement(Ljava/lang/String;I)Z

    move-result v2

    move v0, v2

    goto/16 :goto_1

    :cond_a
    const/4 v2, 0x0

    move v0, v2

    goto/16 :goto_1
.end method

.method private static isElement(Ljava/lang/String;I)Z
    .locals 6

    move-object v0, p0

    move v1, p1

    sget-object v3, Lorg/apache/xml/serialize/HTMLdtd;->_elemDefs:Ljava/util/Hashtable;

    move-object v4, v0

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    move-object v2, v3

    move-object v3, v2

    if-nez v3, :cond_0

    const/4 v3, 0x0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move v4, v1

    and-int/2addr v3, v4

    move v4, v1

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static isElementContent(Ljava/lang/String;)Z
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lorg/apache/xml/serialize/HTMLdtd;->isElement(Ljava/lang/String;I)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public static isEmptyTag(Ljava/lang/String;)Z
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const/16 v2, 0x11

    invoke-static {v1, v2}, Lorg/apache/xml/serialize/HTMLdtd;->isElement(Ljava/lang/String;I)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public static isOnlyOpening(Ljava/lang/String;)Z
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/apache/xml/serialize/HTMLdtd;->isElement(Ljava/lang/String;I)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public static isOptionalClosing(Ljava/lang/String;)Z
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lorg/apache/xml/serialize/HTMLdtd;->isElement(Ljava/lang/String;I)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public static isPreserveSpace(Ljava/lang/String;)Z
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lorg/apache/xml/serialize/HTMLdtd;->isElement(Ljava/lang/String;I)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public static isURI(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    const-string/jumbo v3, "href"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v1

    const-string/jumbo v3, "src"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
