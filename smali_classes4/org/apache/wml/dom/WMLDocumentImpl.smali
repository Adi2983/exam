.class public Lorg/apache/wml/dom/WMLDocumentImpl;
.super Lorg/apache/xerces/dom/DocumentImpl;

# interfaces
.implements Lorg/apache/wml/WMLDocument;


# static fields
.field private static final _elemClassSigWML:[Ljava/lang/Class;

.field private static _elementTypesWML:Ljava/util/Hashtable; = null

.field static class$java$lang$String:Ljava/lang/Class; = null

.field static class$org$apache$wml$dom$WMLAElementImpl:Ljava/lang/Class; = null

.field static class$org$apache$wml$dom$WMLAccessElementImpl:Ljava/lang/Class; = null

.field static class$org$apache$wml$dom$WMLAnchorElementImpl:Ljava/lang/Class; = null

.field static class$org$apache$wml$dom$WMLBElementImpl:Ljava/lang/Class; = null

.field static class$org$apache$wml$dom$WMLBigElementImpl:Ljava/lang/Class; = null

.field static class$org$apache$wml$dom$WMLBrElementImpl:Ljava/lang/Class; = null

.field static class$org$apache$wml$dom$WMLCardElementImpl:Ljava/lang/Class; = null

.field static class$org$apache$wml$dom$WMLDoElementImpl:Ljava/lang/Class; = null

.field static class$org$apache$wml$dom$WMLDocumentImpl:Ljava/lang/Class; = null

.field static class$org$apache$wml$dom$WMLEmElementImpl:Ljava/lang/Class; = null

.field static class$org$apache$wml$dom$WMLFieldsetElementImpl:Ljava/lang/Class; = null

.field static class$org$apache$wml$dom$WMLGoElementImpl:Ljava/lang/Class; = null

.field static class$org$apache$wml$dom$WMLHeadElementImpl:Ljava/lang/Class; = null

.field static class$org$apache$wml$dom$WMLIElementImpl:Ljava/lang/Class; = null

.field static class$org$apache$wml$dom$WMLImgElementImpl:Ljava/lang/Class; = null

.field static class$org$apache$wml$dom$WMLInputElementImpl:Ljava/lang/Class; = null

.field static class$org$apache$wml$dom$WMLMetaElementImpl:Ljava/lang/Class; = null

.field static class$org$apache$wml$dom$WMLNoopElementImpl:Ljava/lang/Class; = null

.field static class$org$apache$wml$dom$WMLOneventElementImpl:Ljava/lang/Class; = null

.field static class$org$apache$wml$dom$WMLOptgroupElementImpl:Ljava/lang/Class; = null

.field static class$org$apache$wml$dom$WMLOptionElementImpl:Ljava/lang/Class; = null

.field static class$org$apache$wml$dom$WMLPElementImpl:Ljava/lang/Class; = null

.field static class$org$apache$wml$dom$WMLPostfieldElementImpl:Ljava/lang/Class; = null

.field static class$org$apache$wml$dom$WMLPrevElementImpl:Ljava/lang/Class; = null

.field static class$org$apache$wml$dom$WMLRefreshElementImpl:Ljava/lang/Class; = null

.field static class$org$apache$wml$dom$WMLSelectElementImpl:Ljava/lang/Class; = null

.field static class$org$apache$wml$dom$WMLSetvarElementImpl:Ljava/lang/Class; = null

.field static class$org$apache$wml$dom$WMLSmallElementImpl:Ljava/lang/Class; = null

.field static class$org$apache$wml$dom$WMLStrongElementImpl:Ljava/lang/Class; = null

.field static class$org$apache$wml$dom$WMLTableElementImpl:Ljava/lang/Class; = null

.field static class$org$apache$wml$dom$WMLTdElementImpl:Ljava/lang/Class; = null

.field static class$org$apache$wml$dom$WMLTemplateElementImpl:Ljava/lang/Class; = null

.field static class$org$apache$wml$dom$WMLTimerElementImpl:Ljava/lang/Class; = null

.field static class$org$apache$wml$dom$WMLTrElementImpl:Ljava/lang/Class; = null

.field static class$org$apache$wml$dom$WMLUElementImpl:Ljava/lang/Class; = null

.field static class$org$apache$wml$dom$WMLWmlElementImpl:Ljava/lang/Class; = null

.field private static final serialVersionUID:J = -0x5b5b2d153961c668L


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x0

    sget-object v3, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLDocumentImpl:Ljava/lang/Class;

    if-nez v3, :cond_0

    const-string/jumbo v3, "org.apache.wml.dom.WMLDocumentImpl"

    invoke-static {v3}, Lorg/apache/wml/dom/WMLDocumentImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    sput-object v4, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLDocumentImpl:Ljava/lang/Class;

    :goto_0
    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x1

    sget-object v3, Lorg/apache/wml/dom/WMLDocumentImpl;->class$java$lang$String:Ljava/lang/Class;

    if-nez v3, :cond_1

    const-string/jumbo v3, "java.lang.String"

    invoke-static {v3}, Lorg/apache/wml/dom/WMLDocumentImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    sput-object v4, Lorg/apache/wml/dom/WMLDocumentImpl;->class$java$lang$String:Ljava/lang/Class;

    :goto_1
    aput-object v3, v1, v2

    sput-object v0, Lorg/apache/wml/dom/WMLDocumentImpl;->_elemClassSigWML:[Ljava/lang/Class;

    new-instance v0, Ljava/util/Hashtable;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    sget-object v0, Lorg/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    const-string/jumbo v1, "b"

    sget-object v2, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLBElementImpl:Ljava/lang/Class;

    if-nez v2, :cond_2

    const-string/jumbo v2, "org.apache.wml.dom.WMLBElementImpl"

    invoke-static {v2}, Lorg/apache/wml/dom/WMLDocumentImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    sput-object v3, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLBElementImpl:Ljava/lang/Class;

    :goto_2
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    const-string/jumbo v1, "noop"

    sget-object v2, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLNoopElementImpl:Ljava/lang/Class;

    if-nez v2, :cond_3

    const-string/jumbo v2, "org.apache.wml.dom.WMLNoopElementImpl"

    invoke-static {v2}, Lorg/apache/wml/dom/WMLDocumentImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    sput-object v3, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLNoopElementImpl:Ljava/lang/Class;

    :goto_3
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    const-string/jumbo v1, "a"

    sget-object v2, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLAElementImpl:Ljava/lang/Class;

    if-nez v2, :cond_4

    const-string/jumbo v2, "org.apache.wml.dom.WMLAElementImpl"

    invoke-static {v2}, Lorg/apache/wml/dom/WMLDocumentImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    sput-object v3, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLAElementImpl:Ljava/lang/Class;

    :goto_4
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    const-string/jumbo v1, "setvar"

    sget-object v2, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLSetvarElementImpl:Ljava/lang/Class;

    if-nez v2, :cond_5

    const-string/jumbo v2, "org.apache.wml.dom.WMLSetvarElementImpl"

    invoke-static {v2}, Lorg/apache/wml/dom/WMLDocumentImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    sput-object v3, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLSetvarElementImpl:Ljava/lang/Class;

    :goto_5
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    const-string/jumbo v1, "access"

    sget-object v2, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLAccessElementImpl:Ljava/lang/Class;

    if-nez v2, :cond_6

    const-string/jumbo v2, "org.apache.wml.dom.WMLAccessElementImpl"

    invoke-static {v2}, Lorg/apache/wml/dom/WMLDocumentImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    sput-object v3, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLAccessElementImpl:Ljava/lang/Class;

    :goto_6
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    const-string/jumbo v1, "strong"

    sget-object v2, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLStrongElementImpl:Ljava/lang/Class;

    if-nez v2, :cond_7

    const-string/jumbo v2, "org.apache.wml.dom.WMLStrongElementImpl"

    invoke-static {v2}, Lorg/apache/wml/dom/WMLDocumentImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    sput-object v3, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLStrongElementImpl:Ljava/lang/Class;

    :goto_7
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    const-string/jumbo v1, "postfield"

    sget-object v2, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLPostfieldElementImpl:Ljava/lang/Class;

    if-nez v2, :cond_8

    const-string/jumbo v2, "org.apache.wml.dom.WMLPostfieldElementImpl"

    invoke-static {v2}, Lorg/apache/wml/dom/WMLDocumentImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    sput-object v3, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLPostfieldElementImpl:Ljava/lang/Class;

    :goto_8
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    const-string/jumbo v1, "do"

    sget-object v2, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLDoElementImpl:Ljava/lang/Class;

    if-nez v2, :cond_9

    const-string/jumbo v2, "org.apache.wml.dom.WMLDoElementImpl"

    invoke-static {v2}, Lorg/apache/wml/dom/WMLDocumentImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    sput-object v3, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLDoElementImpl:Ljava/lang/Class;

    :goto_9
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    const-string/jumbo v1, "wml"

    sget-object v2, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLWmlElementImpl:Ljava/lang/Class;

    if-nez v2, :cond_a

    const-string/jumbo v2, "org.apache.wml.dom.WMLWmlElementImpl"

    invoke-static {v2}, Lorg/apache/wml/dom/WMLDocumentImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    sput-object v3, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLWmlElementImpl:Ljava/lang/Class;

    :goto_a
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    const-string/jumbo v1, "tr"

    sget-object v2, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLTrElementImpl:Ljava/lang/Class;

    if-nez v2, :cond_b

    const-string/jumbo v2, "org.apache.wml.dom.WMLTrElementImpl"

    invoke-static {v2}, Lorg/apache/wml/dom/WMLDocumentImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    sput-object v3, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLTrElementImpl:Ljava/lang/Class;

    :goto_b
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    const-string/jumbo v1, "go"

    sget-object v2, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLGoElementImpl:Ljava/lang/Class;

    if-nez v2, :cond_c

    const-string/jumbo v2, "org.apache.wml.dom.WMLGoElementImpl"

    invoke-static {v2}, Lorg/apache/wml/dom/WMLDocumentImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    sput-object v3, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLGoElementImpl:Ljava/lang/Class;

    :goto_c
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    const-string/jumbo v1, "big"

    sget-object v2, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLBigElementImpl:Ljava/lang/Class;

    if-nez v2, :cond_d

    const-string/jumbo v2, "org.apache.wml.dom.WMLBigElementImpl"

    invoke-static {v2}, Lorg/apache/wml/dom/WMLDocumentImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    sput-object v3, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLBigElementImpl:Ljava/lang/Class;

    :goto_d
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    const-string/jumbo v1, "anchor"

    sget-object v2, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLAnchorElementImpl:Ljava/lang/Class;

    if-nez v2, :cond_e

    const-string/jumbo v2, "org.apache.wml.dom.WMLAnchorElementImpl"

    invoke-static {v2}, Lorg/apache/wml/dom/WMLDocumentImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    sput-object v3, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLAnchorElementImpl:Ljava/lang/Class;

    :goto_e
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    const-string/jumbo v1, "timer"

    sget-object v2, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLTimerElementImpl:Ljava/lang/Class;

    if-nez v2, :cond_f

    const-string/jumbo v2, "org.apache.wml.dom.WMLTimerElementImpl"

    invoke-static {v2}, Lorg/apache/wml/dom/WMLDocumentImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    sput-object v3, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLTimerElementImpl:Ljava/lang/Class;

    :goto_f
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    const-string/jumbo v1, "small"

    sget-object v2, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLSmallElementImpl:Ljava/lang/Class;

    if-nez v2, :cond_10

    const-string/jumbo v2, "org.apache.wml.dom.WMLSmallElementImpl"

    invoke-static {v2}, Lorg/apache/wml/dom/WMLDocumentImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    sput-object v3, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLSmallElementImpl:Ljava/lang/Class;

    :goto_10
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    const-string/jumbo v1, "optgroup"

    sget-object v2, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLOptgroupElementImpl:Ljava/lang/Class;

    if-nez v2, :cond_11

    const-string/jumbo v2, "org.apache.wml.dom.WMLOptgroupElementImpl"

    invoke-static {v2}, Lorg/apache/wml/dom/WMLDocumentImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    sput-object v3, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLOptgroupElementImpl:Ljava/lang/Class;

    :goto_11
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    const-string/jumbo v1, "head"

    sget-object v2, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLHeadElementImpl:Ljava/lang/Class;

    if-nez v2, :cond_12

    const-string/jumbo v2, "org.apache.wml.dom.WMLHeadElementImpl"

    invoke-static {v2}, Lorg/apache/wml/dom/WMLDocumentImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    sput-object v3, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLHeadElementImpl:Ljava/lang/Class;

    :goto_12
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    const-string/jumbo v1, "td"

    sget-object v2, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLTdElementImpl:Ljava/lang/Class;

    if-nez v2, :cond_13

    const-string/jumbo v2, "org.apache.wml.dom.WMLTdElementImpl"

    invoke-static {v2}, Lorg/apache/wml/dom/WMLDocumentImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    sput-object v3, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLTdElementImpl:Ljava/lang/Class;

    :goto_13
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    const-string/jumbo v1, "fieldset"

    sget-object v2, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLFieldsetElementImpl:Ljava/lang/Class;

    if-nez v2, :cond_14

    const-string/jumbo v2, "org.apache.wml.dom.WMLFieldsetElementImpl"

    invoke-static {v2}, Lorg/apache/wml/dom/WMLDocumentImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    sput-object v3, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLFieldsetElementImpl:Ljava/lang/Class;

    :goto_14
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    const-string/jumbo v1, "img"

    sget-object v2, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLImgElementImpl:Ljava/lang/Class;

    if-nez v2, :cond_15

    const-string/jumbo v2, "org.apache.wml.dom.WMLImgElementImpl"

    invoke-static {v2}, Lorg/apache/wml/dom/WMLDocumentImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    sput-object v3, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLImgElementImpl:Ljava/lang/Class;

    :goto_15
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    const-string/jumbo v1, "refresh"

    sget-object v2, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLRefreshElementImpl:Ljava/lang/Class;

    if-nez v2, :cond_16

    const-string/jumbo v2, "org.apache.wml.dom.WMLRefreshElementImpl"

    invoke-static {v2}, Lorg/apache/wml/dom/WMLDocumentImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    sput-object v3, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLRefreshElementImpl:Ljava/lang/Class;

    :goto_16
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    const-string/jumbo v1, "onevent"

    sget-object v2, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLOneventElementImpl:Ljava/lang/Class;

    if-nez v2, :cond_17

    const-string/jumbo v2, "org.apache.wml.dom.WMLOneventElementImpl"

    invoke-static {v2}, Lorg/apache/wml/dom/WMLDocumentImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    sput-object v3, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLOneventElementImpl:Ljava/lang/Class;

    :goto_17
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    const-string/jumbo v1, "input"

    sget-object v2, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLInputElementImpl:Ljava/lang/Class;

    if-nez v2, :cond_18

    const-string/jumbo v2, "org.apache.wml.dom.WMLInputElementImpl"

    invoke-static {v2}, Lorg/apache/wml/dom/WMLDocumentImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    sput-object v3, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLInputElementImpl:Ljava/lang/Class;

    :goto_18
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    const-string/jumbo v1, "prev"

    sget-object v2, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLPrevElementImpl:Ljava/lang/Class;

    if-nez v2, :cond_19

    const-string/jumbo v2, "org.apache.wml.dom.WMLPrevElementImpl"

    invoke-static {v2}, Lorg/apache/wml/dom/WMLDocumentImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    sput-object v3, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLPrevElementImpl:Ljava/lang/Class;

    :goto_19
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    const-string/jumbo v1, "table"

    sget-object v2, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLTableElementImpl:Ljava/lang/Class;

    if-nez v2, :cond_1a

    const-string/jumbo v2, "org.apache.wml.dom.WMLTableElementImpl"

    invoke-static {v2}, Lorg/apache/wml/dom/WMLDocumentImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    sput-object v3, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLTableElementImpl:Ljava/lang/Class;

    :goto_1a
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    const-string/jumbo v1, "meta"

    sget-object v2, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLMetaElementImpl:Ljava/lang/Class;

    if-nez v2, :cond_1b

    const-string/jumbo v2, "org.apache.wml.dom.WMLMetaElementImpl"

    invoke-static {v2}, Lorg/apache/wml/dom/WMLDocumentImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    sput-object v3, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLMetaElementImpl:Ljava/lang/Class;

    :goto_1b
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    const-string/jumbo v1, "template"

    sget-object v2, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLTemplateElementImpl:Ljava/lang/Class;

    if-nez v2, :cond_1c

    const-string/jumbo v2, "org.apache.wml.dom.WMLTemplateElementImpl"

    invoke-static {v2}, Lorg/apache/wml/dom/WMLDocumentImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    sput-object v3, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLTemplateElementImpl:Ljava/lang/Class;

    :goto_1c
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    const-string/jumbo v1, "br"

    sget-object v2, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLBrElementImpl:Ljava/lang/Class;

    if-nez v2, :cond_1d

    const-string/jumbo v2, "org.apache.wml.dom.WMLBrElementImpl"

    invoke-static {v2}, Lorg/apache/wml/dom/WMLDocumentImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    sput-object v3, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLBrElementImpl:Ljava/lang/Class;

    :goto_1d
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    const-string/jumbo v1, "option"

    sget-object v2, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLOptionElementImpl:Ljava/lang/Class;

    if-nez v2, :cond_1e

    const-string/jumbo v2, "org.apache.wml.dom.WMLOptionElementImpl"

    invoke-static {v2}, Lorg/apache/wml/dom/WMLDocumentImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    sput-object v3, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLOptionElementImpl:Ljava/lang/Class;

    :goto_1e
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    const-string/jumbo v1, "u"

    sget-object v2, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLUElementImpl:Ljava/lang/Class;

    if-nez v2, :cond_1f

    const-string/jumbo v2, "org.apache.wml.dom.WMLUElementImpl"

    invoke-static {v2}, Lorg/apache/wml/dom/WMLDocumentImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    sput-object v3, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLUElementImpl:Ljava/lang/Class;

    :goto_1f
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    const-string/jumbo v1, "p"

    sget-object v2, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLPElementImpl:Ljava/lang/Class;

    if-nez v2, :cond_20

    const-string/jumbo v2, "org.apache.wml.dom.WMLPElementImpl"

    invoke-static {v2}, Lorg/apache/wml/dom/WMLDocumentImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    sput-object v3, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLPElementImpl:Ljava/lang/Class;

    :goto_20
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    const-string/jumbo v1, "select"

    sget-object v2, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLSelectElementImpl:Ljava/lang/Class;

    if-nez v2, :cond_21

    const-string/jumbo v2, "org.apache.wml.dom.WMLSelectElementImpl"

    invoke-static {v2}, Lorg/apache/wml/dom/WMLDocumentImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    sput-object v3, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLSelectElementImpl:Ljava/lang/Class;

    :goto_21
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    const-string/jumbo v1, "em"

    sget-object v2, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLEmElementImpl:Ljava/lang/Class;

    if-nez v2, :cond_22

    const-string/jumbo v2, "org.apache.wml.dom.WMLEmElementImpl"

    invoke-static {v2}, Lorg/apache/wml/dom/WMLDocumentImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    sput-object v3, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLEmElementImpl:Ljava/lang/Class;

    :goto_22
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    const-string/jumbo v1, "i"

    sget-object v2, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLIElementImpl:Ljava/lang/Class;

    if-nez v2, :cond_23

    const-string/jumbo v2, "org.apache.wml.dom.WMLIElementImpl"

    invoke-static {v2}, Lorg/apache/wml/dom/WMLDocumentImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    sput-object v3, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLIElementImpl:Ljava/lang/Class;

    :goto_23
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    const-string/jumbo v1, "card"

    sget-object v2, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLCardElementImpl:Ljava/lang/Class;

    if-nez v2, :cond_24

    const-string/jumbo v2, "org.apache.wml.dom.WMLCardElementImpl"

    invoke-static {v2}, Lorg/apache/wml/dom/WMLDocumentImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    sput-object v3, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLCardElementImpl:Ljava/lang/Class;

    :goto_24
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-void

    :cond_0
    sget-object v3, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLDocumentImpl:Ljava/lang/Class;

    goto/16 :goto_0

    :cond_1
    sget-object v3, Lorg/apache/wml/dom/WMLDocumentImpl;->class$java$lang$String:Ljava/lang/Class;

    goto/16 :goto_1

    :cond_2
    sget-object v2, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLBElementImpl:Ljava/lang/Class;

    goto/16 :goto_2

    :cond_3
    sget-object v2, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLNoopElementImpl:Ljava/lang/Class;

    goto/16 :goto_3

    :cond_4
    sget-object v2, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLAElementImpl:Ljava/lang/Class;

    goto/16 :goto_4

    :cond_5
    sget-object v2, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLSetvarElementImpl:Ljava/lang/Class;

    goto/16 :goto_5

    :cond_6
    sget-object v2, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLAccessElementImpl:Ljava/lang/Class;

    goto/16 :goto_6

    :cond_7
    sget-object v2, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLStrongElementImpl:Ljava/lang/Class;

    goto/16 :goto_7

    :cond_8
    sget-object v2, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLPostfieldElementImpl:Ljava/lang/Class;

    goto/16 :goto_8

    :cond_9
    sget-object v2, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLDoElementImpl:Ljava/lang/Class;

    goto/16 :goto_9

    :cond_a
    sget-object v2, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLWmlElementImpl:Ljava/lang/Class;

    goto/16 :goto_a

    :cond_b
    sget-object v2, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLTrElementImpl:Ljava/lang/Class;

    goto/16 :goto_b

    :cond_c
    sget-object v2, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLGoElementImpl:Ljava/lang/Class;

    goto/16 :goto_c

    :cond_d
    sget-object v2, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLBigElementImpl:Ljava/lang/Class;

    goto/16 :goto_d

    :cond_e
    sget-object v2, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLAnchorElementImpl:Ljava/lang/Class;

    goto/16 :goto_e

    :cond_f
    sget-object v2, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLTimerElementImpl:Ljava/lang/Class;

    goto/16 :goto_f

    :cond_10
    sget-object v2, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLSmallElementImpl:Ljava/lang/Class;

    goto/16 :goto_10

    :cond_11
    sget-object v2, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLOptgroupElementImpl:Ljava/lang/Class;

    goto/16 :goto_11

    :cond_12
    sget-object v2, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLHeadElementImpl:Ljava/lang/Class;

    goto/16 :goto_12

    :cond_13
    sget-object v2, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLTdElementImpl:Ljava/lang/Class;

    goto/16 :goto_13

    :cond_14
    sget-object v2, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLFieldsetElementImpl:Ljava/lang/Class;

    goto/16 :goto_14

    :cond_15
    sget-object v2, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLImgElementImpl:Ljava/lang/Class;

    goto/16 :goto_15

    :cond_16
    sget-object v2, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLRefreshElementImpl:Ljava/lang/Class;

    goto/16 :goto_16

    :cond_17
    sget-object v2, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLOneventElementImpl:Ljava/lang/Class;

    goto/16 :goto_17

    :cond_18
    sget-object v2, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLInputElementImpl:Ljava/lang/Class;

    goto/16 :goto_18

    :cond_19
    sget-object v2, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLPrevElementImpl:Ljava/lang/Class;

    goto/16 :goto_19

    :cond_1a
    sget-object v2, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLTableElementImpl:Ljava/lang/Class;

    goto/16 :goto_1a

    :cond_1b
    sget-object v2, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLMetaElementImpl:Ljava/lang/Class;

    goto/16 :goto_1b

    :cond_1c
    sget-object v2, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLTemplateElementImpl:Ljava/lang/Class;

    goto/16 :goto_1c

    :cond_1d
    sget-object v2, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLBrElementImpl:Ljava/lang/Class;

    goto/16 :goto_1d

    :cond_1e
    sget-object v2, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLOptionElementImpl:Ljava/lang/Class;

    goto/16 :goto_1e

    :cond_1f
    sget-object v2, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLUElementImpl:Ljava/lang/Class;

    goto/16 :goto_1f

    :cond_20
    sget-object v2, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLPElementImpl:Ljava/lang/Class;

    goto/16 :goto_20

    :cond_21
    sget-object v2, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLSelectElementImpl:Ljava/lang/Class;

    goto/16 :goto_21

    :cond_22
    sget-object v2, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLEmElementImpl:Ljava/lang/Class;

    goto/16 :goto_22

    :cond_23
    sget-object v2, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLIElementImpl:Ljava/lang/Class;

    goto/16 :goto_23

    :cond_24
    sget-object v2, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLCardElementImpl:Ljava/lang/Class;

    goto/16 :goto_24
.end method

.method public constructor <init>(Lorg/w3c/dom/DocumentType;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/dom/DocumentImpl;-><init>(Lorg/w3c/dom/DocumentType;Z)V

    return-void
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


# virtual methods
.method protected canRenameElements(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/dom/ElementImpl;)Z
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    sget-object v4, Lorg/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lorg/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    move-object v6, v3

    invoke-virtual {v6}, Lorg/apache/xerces/dom/ElementImpl;->getTagName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    :goto_0
    move v0, v4

    return v0

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    sget-object v6, Lorg/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Class;

    move-object v2, v6

    move-object v6, v2

    if-eqz v6, :cond_1

    move-object v6, v2

    :try_start_0
    sget-object v7, Lorg/apache/wml/dom/WMLDocumentImpl;->_elemClassSigWML:[Ljava/lang/Class;

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    move-object v3, v6

    move-object v6, v3

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move-object v10, v0

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x1

    move-object v10, v1

    aput-object v10, v8, v9

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v6

    :goto_0
    return-object v0

    :catch_0
    move-exception v6

    move-object v4, v6

    move-object v6, v4

    instance-of v6, v6, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v6, :cond_0

    move-object v6, v4

    check-cast v6, Ljava/lang/reflect/InvocationTargetException;

    invoke-virtual {v6}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v6

    move-object v5, v6

    :goto_1
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuffer;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v8, "Exception "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    move-object v8, v5

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object v7, v5

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/IllegalStateException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    new-instance v8, Ljava/lang/StringBuffer;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v9, "Tag \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string/jumbo v9, "\' associated with an Element class that failed to construct."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    move-object v6, v4

    move-object v5, v6

    goto :goto_1

    :cond_1
    new-instance v6, Lorg/apache/wml/dom/WMLElementImpl;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    move-object v9, v1

    invoke-direct {v7, v8, v9}, Lorg/apache/wml/dom/WMLElementImpl;-><init>(Lorg/apache/wml/dom/WMLDocumentImpl;Ljava/lang/String;)V

    move-object v0, v6

    goto :goto_0
.end method
