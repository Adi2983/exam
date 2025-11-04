.class public final Lorg/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/xerces/xni/XMLAttributes;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/dom/DOMNormalizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "XMLAttributesProxy"
.end annotation


# instance fields
.field protected fAttributes:Lorg/apache/xerces/dom/AttributeMap;

.field protected final fAugmentations:Ljava/util/Vector;

.field protected final fDTDTypes:Ljava/util/Vector;

.field protected fDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

.field protected fElement:Lorg/apache/xerces/dom/ElementImpl;

.field private final this$0:Lorg/apache/xerces/dom/DOMNormalizer;


# direct methods
.method protected constructor <init>(Lorg/apache/xerces/dom/DOMNormalizer;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->this$0:Lorg/apache/xerces/dom/DOMNormalizer;

    move-object v2, v0

    new-instance v3, Ljava/util/Vector;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const/4 v5, 0x5

    invoke-direct {v4, v5}, Ljava/util/Vector;-><init>(I)V

    iput-object v3, v2, Lorg/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fDTDTypes:Ljava/util/Vector;

    move-object v2, v0

    new-instance v3, Ljava/util/Vector;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const/4 v5, 0x5

    invoke-direct {v4, v5}, Ljava/util/Vector;-><init>(I)V

    iput-object v3, v2, Lorg/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fAugmentations:Ljava/util/Vector;

    return-void
.end method

.method private getReportableType(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x28

    if-ne v2, v3, :cond_0

    const-string/jumbo v2, "NMTOKEN"

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    move-object v2, v1

    move-object v0, v2

    goto :goto_0
.end method


# virtual methods
.method public addAttribute(Lorg/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)I
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fElement:Lorg/apache/xerces/dom/ElementImpl;

    move-object v7, v1

    iget-object v7, v7, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    move-object v8, v1

    iget-object v8, v8, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lorg/apache/xerces/dom/ElementImpl;->getXercesAttribute(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    move v4, v6

    move v6, v4

    if-gez v6, :cond_0

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fElement:Lorg/apache/xerces/dom/ElementImpl;

    invoke-virtual {v6}, Lorg/apache/xerces/dom/ElementImpl;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v6

    check-cast v6, Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-object v7, v1

    iget-object v7, v7, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    move-object v8, v1

    iget-object v8, v8, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object v9, v1

    iget-object v9, v9, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v6, v7, v8, v9}, Lorg/apache/xerces/dom/CoreDocumentImpl;->createAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v6

    check-cast v6, Lorg/apache/xerces/dom/AttrImpl;

    move-object v5, v6

    move-object v6, v5

    move-object v7, v3

    invoke-virtual {v6, v7}, Lorg/apache/xerces/dom/AttrImpl;->setNodeValue(Ljava/lang/String;)V

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fElement:Lorg/apache/xerces/dom/ElementImpl;

    move-object v7, v5

    invoke-virtual {v6, v7}, Lorg/apache/xerces/dom/ElementImpl;->setXercesAttributeNode(Lorg/w3c/dom/Attr;)I

    move-result v6

    move v4, v6

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fDTDTypes:Ljava/util/Vector;

    move-object v7, v2

    move v8, v4

    invoke-virtual {v6, v7, v8}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fAugmentations:Ljava/util/Vector;

    new-instance v7, Lorg/apache/xerces/util/AugmentationsImpl;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Lorg/apache/xerces/util/AugmentationsImpl;-><init>()V

    move v8, v4

    invoke-virtual {v6, v7, v8}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    move-object v6, v5

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lorg/apache/xerces/dom/AttrImpl;->setSpecified(Z)V

    :cond_0
    move v6, v4

    move v0, v6

    return v0
.end method

.method public getAugmentations(I)Lorg/apache/xerces/xni/Augmentations;
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fAugmentations:Ljava/util/Vector;

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xerces/xni/Augmentations;

    move-object v0, v2

    return-object v0
.end method

.method public getAugmentations(Ljava/lang/String;)Lorg/apache/xerces/xni/Augmentations;
    .locals 3

    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move-object v0, v2

    return-object v0
.end method

.method public getAugmentations(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xerces/xni/Augmentations;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const/4 v3, 0x0

    move-object v0, v3

    return-object v0
.end method

.method public getIndex(Ljava/lang/String;)I
    .locals 3

    move-object v0, p0

    move-object v1, p1

    const/4 v2, -0x1

    move v0, v2

    return v0
.end method

.method public getIndex(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const/4 v3, -0x1

    move v0, v3

    return v0
.end method

.method public getLength()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fAttributes:Lorg/apache/xerces/dom/AttributeMap;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fAttributes:Lorg/apache/xerces/dom/AttributeMap;

    invoke-virtual {v1}, Lorg/apache/xerces/dom/AttributeMap;->getLength()I

    move-result v1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLocalName(I)Ljava/lang/String;
    .locals 6

    move-object v0, p0

    move v1, p1

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fAttributes:Lorg/apache/xerces/dom/AttributeMap;

    if-eqz v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fAttributes:Lorg/apache/xerces/dom/AttributeMap;

    move v5, v1

    invoke-virtual {v4, v5}, Lorg/apache/xerces/dom/AttributeMap;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Node;

    move-object v2, v4

    move-object v4, v2

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->this$0:Lorg/apache/xerces/dom/DOMNormalizer;

    iget-object v4, v4, Lorg/apache/xerces/dom/DOMNormalizer;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v5, v3

    invoke-virtual {v4, v5}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_0
    move-object v3, v4

    move-object v4, v3

    move-object v0, v4

    :goto_1
    return-object v0

    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_1
.end method

.method public getName(ILorg/apache/xerces/xni/QName;)V
    .locals 6

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fAttributes:Lorg/apache/xerces/dom/AttributeMap;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->this$0:Lorg/apache/xerces/dom/DOMNormalizer;

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fAttributes:Lorg/apache/xerces/dom/AttributeMap;

    move v5, v1

    invoke-virtual {v4, v5}, Lorg/apache/xerces/dom/AttributeMap;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Node;

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lorg/apache/xerces/dom/DOMNormalizer;->updateQName(Lorg/w3c/dom/Node;Lorg/apache/xerces/xni/QName;)V

    :cond_0
    return-void
.end method

.method public getNonNormalizedValue(I)Ljava/lang/String;
    .locals 3

    move-object v0, p0

    move v1, p1

    const/4 v2, 0x0

    move-object v0, v2

    return-object v0
.end method

.method public getPrefix(I)Ljava/lang/String;
    .locals 6

    move-object v0, p0

    move v1, p1

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fAttributes:Lorg/apache/xerces/dom/AttributeMap;

    if-eqz v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fAttributes:Lorg/apache/xerces/dom/AttributeMap;

    move v5, v1

    invoke-virtual {v4, v5}, Lorg/apache/xerces/dom/AttributeMap;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Node;

    move-object v2, v4

    move-object v4, v2

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->this$0:Lorg/apache/xerces/dom/DOMNormalizer;

    iget-object v4, v4, Lorg/apache/xerces/dom/DOMNormalizer;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v5, v3

    invoke-virtual {v4, v5}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_0
    move-object v3, v4

    move-object v4, v3

    move-object v0, v4

    :goto_1
    return-object v0

    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_1
.end method

.method public getQName(I)Ljava/lang/String;
    .locals 6

    move-object v0, p0

    move v1, p1

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fAttributes:Lorg/apache/xerces/dom/AttributeMap;

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fAttributes:Lorg/apache/xerces/dom/AttributeMap;

    move v5, v1

    invoke-virtual {v4, v5}, Lorg/apache/xerces/dom/AttributeMap;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Node;

    move-object v2, v4

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->this$0:Lorg/apache/xerces/dom/DOMNormalizer;

    iget-object v4, v4, Lorg/apache/xerces/dom/DOMNormalizer;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v5, v2

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    move-object v4, v3

    move-object v0, v4

    :goto_0
    return-object v0

    :cond_0
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0
.end method

.method public getType(I)Ljava/lang/String;
    .locals 5

    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fDTDTypes:Ljava/util/Vector;

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v2, v3

    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Lorg/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->getReportableType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    move-object v0, v3

    return-object v0

    :cond_0
    const-string/jumbo v3, "CDATA"

    goto :goto_0
.end method

.method public getType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v2, "CDATA"

    move-object v0, v2

    return-object v0
.end method

.method public getType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const-string/jumbo v3, "CDATA"

    move-object v0, v3

    return-object v0
.end method

.method public getURI(I)Ljava/lang/String;
    .locals 6

    move-object v0, p0

    move v1, p1

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fAttributes:Lorg/apache/xerces/dom/AttributeMap;

    if-eqz v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fAttributes:Lorg/apache/xerces/dom/AttributeMap;

    move v5, v1

    invoke-virtual {v4, v5}, Lorg/apache/xerces/dom/AttributeMap;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Node;

    move-object v2, v4

    move-object v4, v2

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->this$0:Lorg/apache/xerces/dom/DOMNormalizer;

    iget-object v4, v4, Lorg/apache/xerces/dom/DOMNormalizer;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v5, v3

    invoke-virtual {v4, v5}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_0
    move-object v3, v4

    move-object v4, v3

    move-object v0, v4

    :goto_1
    return-object v0

    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_1
.end method

.method public getValue(I)Ljava/lang/String;
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fAttributes:Lorg/apache/xerces/dom/AttributeMap;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fAttributes:Lorg/apache/xerces/dom/AttributeMap;

    move v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/xerces/dom/AttributeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    :goto_0
    move-object v0, v2

    return-object v0

    :cond_0
    const-string/jumbo v2, ""

    goto :goto_0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move-object v0, v2

    return-object v0
.end method

.method public getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fAttributes:Lorg/apache/xerces/dom/AttributeMap;

    if-eqz v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fAttributes:Lorg/apache/xerces/dom/AttributeMap;

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lorg/apache/xerces/dom/AttributeMap;->getNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    move-object v3, v4

    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v3

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    :goto_0
    move-object v0, v4

    :goto_1
    return-object v0

    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_1
.end method

.method public isSpecified(I)Z
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fAttributes:Lorg/apache/xerces/dom/AttributeMap;

    move v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/xerces/dom/AttributeMap;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Attr;

    invoke-interface {v2}, Lorg/w3c/dom/Attr;->getSpecified()Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public removeAllAttributes()V
    .locals 0

    return-void
.end method

.method public removeAttributeAt(I)V
    .locals 0

    return-void
.end method

.method public setAttributes(Lorg/apache/xerces/dom/AttributeMap;Lorg/apache/xerces/dom/CoreDocumentImpl;Lorg/apache/xerces/dom/ElementImpl;)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Lorg/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lorg/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fAttributes:Lorg/apache/xerces/dom/AttributeMap;

    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Lorg/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fElement:Lorg/apache/xerces/dom/ElementImpl;

    move-object v6, v1

    if-eqz v6, :cond_1

    move-object v6, v1

    invoke-virtual {v6}, Lorg/apache/xerces/dom/AttributeMap;->getLength()I

    move-result v6

    move v4, v6

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fDTDTypes:Ljava/util/Vector;

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/util/Vector;->setSize(I)V

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fAugmentations:Ljava/util/Vector;

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/util/Vector;->setSize(I)V

    const/4 v6, 0x0

    move v5, v6

    :goto_0
    move v6, v5

    move v7, v4

    if-lt v6, v7, :cond_0

    :goto_1
    return-void

    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fAugmentations:Ljava/util/Vector;

    new-instance v7, Lorg/apache/xerces/util/AugmentationsImpl;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Lorg/apache/xerces/util/AugmentationsImpl;-><init>()V

    move v8, v5

    invoke-virtual {v6, v7, v8}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fDTDTypes:Ljava/util/Vector;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/Vector;->setSize(I)V

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fAugmentations:Ljava/util/Vector;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/Vector;->setSize(I)V

    goto :goto_1
.end method

.method public setAugmentations(ILorg/apache/xerces/xni/Augmentations;)V
    .locals 6

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fAugmentations:Ljava/util/Vector;

    move-object v4, v2

    move v5, v1

    invoke-virtual {v3, v4, v5}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    return-void
.end method

.method public setName(ILorg/apache/xerces/xni/QName;)V
    .locals 0

    return-void
.end method

.method public setNonNormalizedValue(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setSpecified(IZ)V
    .locals 6

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fAttributes:Lorg/apache/xerces/dom/AttributeMap;

    move v5, v1

    invoke-virtual {v4, v5}, Lorg/apache/xerces/dom/AttributeMap;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/xerces/dom/AttrImpl;

    move-object v3, v4

    move-object v4, v3

    move v5, v2

    invoke-virtual {v4, v5}, Lorg/apache/xerces/dom/AttrImpl;->setSpecified(Z)V

    return-void
.end method

.method public setType(ILjava/lang/String;)V
    .locals 6

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fDTDTypes:Ljava/util/Vector;

    move-object v4, v2

    move v5, v1

    invoke-virtual {v3, v4, v5}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    return-void
.end method

.method public setValue(ILjava/lang/String;)V
    .locals 7

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fAttributes:Lorg/apache/xerces/dom/AttributeMap;

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->fAttributes:Lorg/apache/xerces/dom/AttributeMap;

    move v6, v1

    invoke-virtual {v5, v6}, Lorg/apache/xerces/dom/AttributeMap;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/xerces/dom/AttrImpl;

    move-object v3, v5

    move-object v5, v3

    invoke-virtual {v5}, Lorg/apache/xerces/dom/AttrImpl;->getSpecified()Z

    move-result v5

    move v4, v5

    move-object v5, v3

    move-object v6, v2

    invoke-virtual {v5, v6}, Lorg/apache/xerces/dom/AttrImpl;->setValue(Ljava/lang/String;)V

    move-object v5, v3

    move v6, v4

    invoke-virtual {v5, v6}, Lorg/apache/xerces/dom/AttrImpl;->setSpecified(Z)V

    :cond_0
    return-void
.end method
