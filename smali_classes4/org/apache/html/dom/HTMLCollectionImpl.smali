.class Lorg/apache/html/dom/HTMLCollectionImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/w3c/dom/html/HTMLCollection;
.implements Ljava/io/Serializable;


# static fields
.field static final ANCHOR:S = 0x1s

.field static final APPLET:S = 0x4s

.field static final AREA:S = -0x1s

.field static final CELL:S = -0x3s

.field static final ELEMENT:S = 0x8s

.field static final FORM:S = 0x2s

.field static final IMAGE:S = 0x3s

.field static final LINK:S = 0x5s

.field static final OPTION:S = 0x6s

.field static final ROW:S = 0x7s

.field static final TBODY:S = -0x2s

.field private static final serialVersionUID:J = 0x7e74c2dc1a6b3c3aL


# instance fields
.field private _lookingFor:S

.field private _topLevel:Lorg/w3c/dom/Element;


# direct methods
.method constructor <init>(Lorg/w3c/dom/html/HTMLElement;S)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v1

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/NullPointerException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "HTM011 Argument \'topLevel\' is null."

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lorg/apache/html/dom/HTMLCollectionImpl;->_topLevel:Lorg/w3c/dom/Element;

    move-object v3, v0

    move v4, v2

    iput-short v4, v3, Lorg/apache/html/dom/HTMLCollectionImpl;->_lookingFor:S

    return-void
.end method

.method private getLength(Lorg/w3c/dom/Element;)I
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v6, v1

    move-object v4, v6

    move-object v6, v4

    monitor-enter v6

    const/4 v6, 0x0

    move v2, v6

    move-object v6, v1

    :try_start_0
    invoke-interface {v6}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v6

    move-object v3, v6

    :goto_0
    move-object v6, v3

    if-nez v6, :cond_0

    move-object v6, v4

    monitor-exit v6

    move v6, v2

    move v0, v6

    return v0

    :cond_0
    move-object v6, v3

    instance-of v6, v6, Lorg/w3c/dom/Element;

    if-eqz v6, :cond_1

    move-object v6, v0

    move-object v7, v3

    check-cast v7, Lorg/w3c/dom/Element;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lorg/apache/html/dom/HTMLCollectionImpl;->collectionMatch(Lorg/w3c/dom/Element;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    add-int/lit8 v2, v2, 0x1

    :cond_1
    :goto_1
    move-object v6, v3

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v6

    move-object v3, v6

    goto :goto_0

    :cond_2
    move-object v6, v0

    invoke-virtual {v6}, Lorg/apache/html/dom/HTMLCollectionImpl;->recurse()Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v2

    move-object v7, v0

    move-object v8, v3

    check-cast v8, Lorg/w3c/dom/Element;

    invoke-direct {v7, v8}, Lorg/apache/html/dom/HTMLCollectionImpl;->getLength(Lorg/w3c/dom/Element;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    add-int/2addr v6, v7

    move v2, v6

    goto :goto_1

    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v4

    monitor-exit v6

    move-object v6, v5

    throw v6
.end method

.method private item(Lorg/w3c/dom/Element;Lorg/apache/html/dom/CollectionIndex;)Lorg/w3c/dom/Node;
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v8, v1

    move-object v5, v8

    move-object v8, v5

    monitor-enter v8

    move-object v8, v1

    :try_start_0
    invoke-interface {v8}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v8

    move-object v3, v8

    :goto_0
    move-object v8, v3

    if-nez v8, :cond_0

    move-object v8, v5

    monitor-exit v8

    const/4 v8, 0x0

    move-object v0, v8

    :goto_1
    return-object v0

    :cond_0
    move-object v8, v3

    instance-of v8, v8, Lorg/w3c/dom/Element;

    if-eqz v8, :cond_2

    move-object v8, v0

    move-object v9, v3

    check-cast v9, Lorg/w3c/dom/Element;

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lorg/apache/html/dom/HTMLCollectionImpl;->collectionMatch(Lorg/w3c/dom/Element;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    move-object v8, v2

    invoke-virtual {v8}, Lorg/apache/html/dom/CollectionIndex;->isZero()Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v8, v3

    move-object v6, v8

    move-object v8, v5

    monitor-exit v8

    move-object v8, v6

    move-object v0, v8

    goto :goto_1

    :cond_1
    move-object v8, v2

    invoke-virtual {v8}, Lorg/apache/html/dom/CollectionIndex;->decrement()V

    :cond_2
    move-object v8, v3

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v8

    move-object v3, v8

    goto :goto_0

    :cond_3
    move-object v8, v0

    invoke-virtual {v8}, Lorg/apache/html/dom/HTMLCollectionImpl;->recurse()Z

    move-result v8

    if-eqz v8, :cond_2

    move-object v8, v0

    move-object v9, v3

    check-cast v9, Lorg/w3c/dom/Element;

    move-object v10, v2

    invoke-direct {v8, v9, v10}, Lorg/apache/html/dom/HTMLCollectionImpl;->item(Lorg/w3c/dom/Element;Lorg/apache/html/dom/CollectionIndex;)Lorg/w3c/dom/Node;

    move-result-object v8

    move-object v4, v8

    move-object v8, v4

    if-eqz v8, :cond_2

    move-object v8, v4

    move-object v6, v8

    move-object v8, v5

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v8, v6

    move-object v0, v8

    goto :goto_1

    :catchall_0
    move-exception v8

    move-object v7, v8

    move-object v8, v5

    monitor-exit v8

    move-object v8, v7

    throw v8
.end method

.method private namedItem(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v9, v1

    move-object v5, v9

    move-object v9, v5

    monitor-enter v9

    move-object v9, v1

    :try_start_0
    invoke-interface {v9}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v9

    move-object v3, v9

    :goto_0
    move-object v9, v3

    if-nez v9, :cond_0

    move-object v9, v3

    move-object v6, v9

    move-object v9, v5

    monitor-exit v9

    move-object v9, v6

    move-object v0, v9

    :goto_1
    return-object v0

    :cond_0
    move-object v9, v3

    instance-of v9, v9, Lorg/w3c/dom/Element;

    if-eqz v9, :cond_2

    move-object v9, v0

    move-object v10, v3

    check-cast v10, Lorg/w3c/dom/Element;

    move-object v11, v2

    invoke-virtual {v9, v10, v11}, Lorg/apache/html/dom/HTMLCollectionImpl;->collectionMatch(Lorg/w3c/dom/Element;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    move-object v9, v3

    move-object v6, v9

    move-object v9, v5

    monitor-exit v9

    move-object v9, v6

    move-object v0, v9

    goto :goto_1

    :cond_1
    move-object v9, v0

    invoke-virtual {v9}, Lorg/apache/html/dom/HTMLCollectionImpl;->recurse()Z

    move-result v9

    if-eqz v9, :cond_2

    move-object v9, v0

    move-object v10, v3

    check-cast v10, Lorg/w3c/dom/Element;

    move-object v11, v2

    invoke-direct {v9, v10, v11}, Lorg/apache/html/dom/HTMLCollectionImpl;->namedItem(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v9

    move-object v4, v9

    move-object v9, v4

    if-eqz v9, :cond_2

    move-object v9, v4

    move-object v7, v9

    move-object v9, v5

    monitor-exit v9

    move-object v9, v7

    move-object v0, v9

    goto :goto_1

    :cond_2
    move-object v9, v3

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    move-object v3, v9

    goto :goto_0

    :catchall_0
    move-exception v9

    move-object v8, v9

    move-object v9, v5

    monitor-exit v9

    move-object v9, v8

    throw v9
.end method


# virtual methods
.method protected collectionMatch(Lorg/w3c/dom/Element;Ljava/lang/String;)Z
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, v1

    move-object v4, v7

    move-object v7, v4

    monitor-enter v7

    const/4 v7, 0x0

    move v3, v7

    move-object v7, v0

    :try_start_0
    iget-short v7, v7, Lorg/apache/html/dom/HTMLCollectionImpl;->_lookingFor:S

    packed-switch v7, :pswitch_data_0

    :goto_0
    :pswitch_0
    move v7, v3

    if-eqz v7, :cond_7

    move-object v7, v2

    if-eqz v7, :cond_7

    move-object v7, v1

    instance-of v7, v7, Lorg/w3c/dom/html/HTMLAnchorElement;

    if-eqz v7, :cond_6

    move-object v7, v2

    move-object v8, v1

    const-string/jumbo v9, "name"

    invoke-interface {v8, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v7, 0x1

    move v5, v7

    move-object v7, v4

    monitor-exit v7

    move v7, v5

    move v0, v7

    :goto_1
    return v0

    :pswitch_1
    move-object v7, v1

    instance-of v7, v7, Lorg/w3c/dom/html/HTMLAnchorElement;

    if-eqz v7, :cond_0

    move-object v7, v1

    const-string/jumbo v8, "name"

    invoke-interface {v7, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    const/4 v7, 0x1

    :goto_2
    move v3, v7

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    goto :goto_2

    :pswitch_2
    move-object v7, v1

    instance-of v7, v7, Lorg/w3c/dom/html/HTMLFormElement;

    move v3, v7

    goto :goto_0

    :pswitch_3
    move-object v7, v1

    instance-of v7, v7, Lorg/w3c/dom/html/HTMLImageElement;

    move v3, v7

    goto :goto_0

    :pswitch_4
    move-object v7, v1

    instance-of v7, v7, Lorg/w3c/dom/html/HTMLAppletElement;

    if-nez v7, :cond_1

    move-object v7, v1

    instance-of v7, v7, Lorg/w3c/dom/html/HTMLObjectElement;

    if-eqz v7, :cond_2

    const-string/jumbo v7, "application/java"

    move-object v8, v1

    const-string/jumbo v9, "codetype"

    invoke-interface {v8, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    move-object v7, v1

    const-string/jumbo v8, "classid"

    invoke-interface {v7, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "java:"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_1
    const/4 v7, 0x1

    :goto_3
    move v3, v7

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    goto :goto_3

    :pswitch_5
    move-object v7, v1

    instance-of v7, v7, Lorg/apache/html/dom/HTMLFormControl;

    move v3, v7

    goto :goto_0

    :pswitch_6
    move-object v7, v1

    instance-of v7, v7, Lorg/w3c/dom/html/HTMLAnchorElement;

    if-nez v7, :cond_3

    move-object v7, v1

    instance-of v7, v7, Lorg/w3c/dom/html/HTMLAreaElement;

    if-eqz v7, :cond_4

    :cond_3
    move-object v7, v1

    const-string/jumbo v8, "href"

    invoke-interface {v7, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_4

    const/4 v7, 0x1

    :goto_4
    move v3, v7

    goto/16 :goto_0

    :cond_4
    const/4 v7, 0x0

    goto :goto_4

    :pswitch_7
    move-object v7, v1

    instance-of v7, v7, Lorg/w3c/dom/html/HTMLAreaElement;

    move v3, v7

    goto/16 :goto_0

    :pswitch_8
    move-object v7, v1

    instance-of v7, v7, Lorg/w3c/dom/html/HTMLOptionElement;

    move v3, v7

    goto/16 :goto_0

    :pswitch_9
    move-object v7, v1

    instance-of v7, v7, Lorg/w3c/dom/html/HTMLTableRowElement;

    move v3, v7

    goto/16 :goto_0

    :pswitch_a
    move-object v7, v1

    instance-of v7, v7, Lorg/w3c/dom/html/HTMLTableSectionElement;

    if-eqz v7, :cond_5

    move-object v7, v1

    invoke-interface {v7}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "TBODY"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v7, 0x1

    :goto_5
    move v3, v7

    goto/16 :goto_0

    :cond_5
    const/4 v7, 0x0

    goto :goto_5

    :pswitch_b
    move-object v7, v1

    instance-of v7, v7, Lorg/w3c/dom/html/HTMLTableCellElement;

    move v3, v7

    goto/16 :goto_0

    :cond_6
    move-object v7, v2

    move-object v8, v1

    const-string/jumbo v9, "id"

    invoke-interface {v8, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    move v3, v7

    :cond_7
    move-object v7, v4

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v7, v3

    move v0, v7

    goto/16 :goto_1

    :catchall_0
    move-exception v7

    move-object v6, v7

    move-object v7, v4

    monitor-exit v7

    move-object v7, v6

    throw v7

    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_b
        :pswitch_a
        :pswitch_7
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method

.method public final getLength()I
    .locals 3

    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/html/dom/HTMLCollectionImpl;->_topLevel:Lorg/w3c/dom/Element;

    invoke-direct {v1, v2}, Lorg/apache/html/dom/HTMLCollectionImpl;->getLength(Lorg/w3c/dom/Element;)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public final item(I)Lorg/w3c/dom/Node;
    .locals 8

    move-object v0, p0

    move v1, p1

    move v2, v1

    if-gez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const-string/jumbo v4, "HTM012 Argument \'index\' is negative."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/html/dom/HTMLCollectionImpl;->_topLevel:Lorg/w3c/dom/Element;

    new-instance v4, Lorg/apache/html/dom/CollectionIndex;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move v6, v1

    invoke-direct {v5, v6}, Lorg/apache/html/dom/CollectionIndex;-><init>(I)V

    invoke-direct {v2, v3, v4}, Lorg/apache/html/dom/HTMLCollectionImpl;->item(Lorg/w3c/dom/Element;Lorg/apache/html/dom/CollectionIndex;)Lorg/w3c/dom/Node;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public final namedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "HTM013 Argument \'name\' is null."

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/html/dom/HTMLCollectionImpl;->_topLevel:Lorg/w3c/dom/Element;

    move-object v4, v1

    invoke-direct {v2, v3, v4}, Lorg/apache/html/dom/HTMLCollectionImpl;->namedItem(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method protected recurse()Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-short v1, v1, Lorg/apache/html/dom/HTMLCollectionImpl;->_lookingFor:S

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
