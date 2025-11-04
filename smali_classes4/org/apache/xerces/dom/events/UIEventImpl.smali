.class public Lorg/apache/xerces/dom/events/UIEventImpl;
.super Lorg/apache/xerces/dom/events/EventImpl;

# interfaces
.implements Lorg/w3c/dom/events/UIEvent;


# instance fields
.field private fDetail:I

.field private fView:Lorg/w3c/dom/views/AbstractView;


# direct methods
.method public constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lorg/apache/xerces/dom/events/EventImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getDetail()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/dom/events/UIEventImpl;->fDetail:I

    move v0, v1

    return v0
.end method

.method public getView()Lorg/w3c/dom/views/AbstractView;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/events/UIEventImpl;->fView:Lorg/w3c/dom/views/AbstractView;

    move-object v0, v1

    return-object v0
.end method

.method public initUIEvent(Ljava/lang/String;ZZLorg/w3c/dom/views/AbstractView;I)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Lorg/apache/xerces/dom/events/UIEventImpl;->fView:Lorg/w3c/dom/views/AbstractView;

    move-object v6, v0

    move v7, v5

    iput v7, v6, Lorg/apache/xerces/dom/events/UIEventImpl;->fDetail:I

    move-object v6, v0

    move-object v7, v1

    move v8, v2

    move v9, v3

    invoke-super {v6, v7, v8, v9}, Lorg/apache/xerces/dom/events/EventImpl;->initEvent(Ljava/lang/String;ZZ)V

    return-void
.end method
