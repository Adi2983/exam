.class public Ljavax/xml/bind/util/ValidationEventCollector;
.super Ljava/lang/Object;
.source "ValidationEventCollector.java"

# interfaces
.implements Ljavax/xml/bind/ValidationEventHandler;


# instance fields
.field private final events:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljavax/xml/bind/ValidationEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/util/ValidationEventCollector;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 32
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Ljavax/xml/bind/util/ValidationEventCollector;->events:Ljava/util/List;

    return-void
.end method

.method private static _assert(ZLjava/lang/String;)V
    .locals 6

    .prologue
    .line 89
    move v0, p0

    .local v0, "b":Z
    move-object v1, p1

    .local v1, "msg":Ljava/lang/String;
    move v2, v0

    if-nez v2, :cond_0

    .line 90
    new-instance v2, Ljava/lang/InternalError;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 92
    :cond_0
    return-void
.end method


# virtual methods
.method public getEvents()[Ljavax/xml/bind/ValidationEvent;
    .locals 3

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/util/ValidationEventCollector;
    move-object v1, v0

    iget-object v1, v1, Ljavax/xml/bind/util/ValidationEventCollector;->events:Ljava/util/List;

    move-object v2, v0

    iget-object v2, v2, Ljavax/xml/bind/util/ValidationEventCollector;->events:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljavax/xml/bind/ValidationEvent;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljavax/xml/bind/ValidationEvent;

    move-object v0, v1

    .end local v0    # "this":Ljavax/xml/bind/util/ValidationEventCollector;
    return-object v0
.end method

.method public handleEvent(Ljavax/xml/bind/ValidationEvent;)Z
    .locals 6

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/util/ValidationEventCollector;
    move-object v1, p1

    .local v1, "event":Ljavax/xml/bind/ValidationEvent;
    move-object v3, v0

    iget-object v3, v3, Ljavax/xml/bind/util/ValidationEventCollector;->events:Ljava/util/List;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 67
    const/4 v3, 0x1

    move v2, v3

    .line 68
    .local v2, "retVal":Z
    move-object v3, v1

    invoke-interface {v3}, Ljavax/xml/bind/ValidationEvent;->getSeverity()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 79
    const/4 v3, 0x0

    const-string/jumbo v4, "ValidationEventCollector.UnrecognizedSeverity"

    move-object v5, v1

    invoke-interface {v5}, Ljavax/xml/bind/ValidationEvent;->getSeverity()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Ljavax/xml/bind/util/Messages;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljavax/xml/bind/util/ValidationEventCollector;->_assert(ZLjava/lang/String;)V

    .line 85
    :goto_0
    move v3, v2

    move v0, v3

    .end local v0    # "this":Ljavax/xml/bind/util/ValidationEventCollector;
    return v0

    .line 70
    .restart local v0    # "this":Ljavax/xml/bind/util/ValidationEventCollector;
    :pswitch_0
    const/4 v3, 0x1

    move v2, v3

    .line 71
    goto :goto_0

    .line 73
    :pswitch_1
    const/4 v3, 0x1

    move v2, v3

    .line 74
    goto :goto_0

    .line 76
    :pswitch_2
    const/4 v3, 0x0

    move v2, v3

    .line 77
    goto :goto_0

    .line 68
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public hasEvents()Z
    .locals 2

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/util/ValidationEventCollector;
    move-object v1, v0

    iget-object v1, v1, Ljavax/xml/bind/util/ValidationEventCollector;->events:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavax/xml/bind/util/ValidationEventCollector;
    return v0

    .restart local v0    # "this":Ljavax/xml/bind/util/ValidationEventCollector;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/util/ValidationEventCollector;
    move-object v1, v0

    iget-object v1, v1, Ljavax/xml/bind/util/ValidationEventCollector;->events:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 51
    return-void
.end method
