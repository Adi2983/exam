.class public Lorg/apache/xerces/util/ParserConfigurationSettings;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/xerces/xni/parser/XMLComponentManager;


# static fields
.field protected static final PARSER_SETTINGS:Ljava/lang/String; = "http://apache.org/xml/features/internal/parser-settings"


# instance fields
.field protected fFeatures:Ljava/util/HashMap;

.field protected fParentSettings:Lorg/apache/xerces/xni/parser/XMLComponentManager;

.field protected fProperties:Ljava/util/HashMap;

.field protected fRecognizedFeatures:Ljava/util/ArrayList;

.field protected fRecognizedProperties:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/apache/xerces/util/ParserConfigurationSettings;-><init>(Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lorg/apache/xerces/util/ParserConfigurationSettings;->fRecognizedFeatures:Ljava/util/ArrayList;

    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lorg/apache/xerces/util/ParserConfigurationSettings;->fRecognizedProperties:Ljava/util/ArrayList;

    move-object v2, v0

    new-instance v3, Ljava/util/HashMap;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v2, Lorg/apache/xerces/util/ParserConfigurationSettings;->fFeatures:Ljava/util/HashMap;

    move-object v2, v0

    new-instance v3, Ljava/util/HashMap;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v2, Lorg/apache/xerces/util/ParserConfigurationSettings;->fProperties:Ljava/util/HashMap;

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/util/ParserConfigurationSettings;->fParentSettings:Lorg/apache/xerces/xni/parser/XMLComponentManager;

    return-void
.end method


# virtual methods
.method public addRecognizedFeatures([Ljava/lang/String;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v5, v1

    if-eqz v5, :cond_0

    move-object v5, v1

    array-length v5, v5

    :goto_0
    move v2, v5

    const/4 v5, 0x0

    move v3, v5

    :goto_1
    move v5, v3

    move v6, v2

    if-lt v5, v6, :cond_1

    return-void

    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    move-object v5, v1

    move v6, v3

    aget-object v5, v5, v6

    move-object v4, v5

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/ParserConfigurationSettings;->fRecognizedFeatures:Ljava/util/ArrayList;

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/ParserConfigurationSettings;->fRecognizedFeatures:Ljava/util/ArrayList;

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v5

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public addRecognizedProperties([Ljava/lang/String;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v5, v1

    if-eqz v5, :cond_0

    move-object v5, v1

    array-length v5, v5

    :goto_0
    move v2, v5

    const/4 v5, 0x0

    move v3, v5

    :goto_1
    move v5, v3

    move v6, v2

    if-lt v5, v6, :cond_1

    return-void

    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    move-object v5, v1

    move v6, v3

    aget-object v5, v5, v6

    move-object v4, v5

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/ParserConfigurationSettings;->fRecognizedProperties:Ljava/util/ArrayList;

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/ParserConfigurationSettings;->fRecognizedProperties:Ljava/util/ArrayList;

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v5

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method protected checkFeature(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/ParserConfigurationSettings;->fRecognizedFeatures:Ljava/util/ArrayList;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/ParserConfigurationSettings;->fParentSettings:Lorg/apache/xerces/xni/parser/XMLComponentManager;

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/ParserConfigurationSettings;->fParentSettings:Lorg/apache/xerces/xni/parser/XMLComponentManager;

    move-object v4, v1

    invoke-interface {v3, v4}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v3

    :cond_0
    return-void

    :cond_1
    const/4 v3, 0x0

    move v2, v3

    new-instance v3, Lorg/apache/xerces/xni/parser/XMLConfigurationException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move v5, v2

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lorg/apache/xerces/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw v3
.end method

.method protected checkProperty(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/ParserConfigurationSettings;->fRecognizedProperties:Ljava/util/ArrayList;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/ParserConfigurationSettings;->fParentSettings:Lorg/apache/xerces/xni/parser/XMLComponentManager;

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/ParserConfigurationSettings;->fParentSettings:Lorg/apache/xerces/xni/parser/XMLComponentManager;

    move-object v4, v1

    invoke-interface {v3, v4}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    :cond_0
    return-void

    :cond_1
    const/4 v3, 0x0

    move v2, v3

    new-instance v3, Lorg/apache/xerces/xni/parser/XMLConfigurationException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move v5, v2

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lorg/apache/xerces/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw v3
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/ParserConfigurationSettings;->fFeatures:Ljava/util/HashMap;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    move-object v2, v3

    move-object v3, v2

    if-nez v3, :cond_0

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/apache/xerces/util/ParserConfigurationSettings;->checkFeature(Ljava/lang/String;)V

    const/4 v3, 0x0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/ParserConfigurationSettings;->fProperties:Ljava/util/HashMap;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    move-object v3, v2

    if-nez v3, :cond_0

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/apache/xerces/util/ParserConfigurationSettings;->checkProperty(Ljava/lang/String;)V

    :cond_0
    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/apache/xerces/util/ParserConfigurationSettings;->checkFeature(Ljava/lang/String;)V

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/ParserConfigurationSettings;->fFeatures:Ljava/util/HashMap;

    move-object v4, v1

    move v5, v2

    if-eqz v5, :cond_0

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    return-void

    :cond_0
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/apache/xerces/util/ParserConfigurationSettings;->checkProperty(Ljava/lang/String;)V

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/ParserConfigurationSettings;->fProperties:Ljava/util/HashMap;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    return-void
.end method
