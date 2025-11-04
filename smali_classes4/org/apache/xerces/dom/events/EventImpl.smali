.class public Lorg/apache/xerces/dom/events/EventImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/w3c/dom/events/Event;


# instance fields
.field public bubbles:Z

.field public cancelable:Z

.field public currentTarget:Lorg/w3c/dom/events/EventTarget;

.field public eventPhase:S

.field public initialized:Z

.field public preventDefault:Z

.field public stopPropagation:Z

.field public target:Lorg/w3c/dom/events/EventTarget;

.field protected timeStamp:J

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/dom/events/EventImpl;->type:Ljava/lang/String;

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/apache/xerces/dom/events/EventImpl;->initialized:Z

    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/apache/xerces/dom/events/EventImpl;->bubbles:Z

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/apache/xerces/dom/events/EventImpl;->cancelable:Z

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/apache/xerces/dom/events/EventImpl;->stopPropagation:Z

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/apache/xerces/dom/events/EventImpl;->preventDefault:Z

    move-object v1, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lorg/apache/xerces/dom/events/EventImpl;->timeStamp:J

    return-void
.end method


# virtual methods
.method public getBubbles()Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lorg/apache/xerces/dom/events/EventImpl;->bubbles:Z

    move v0, v1

    return v0
.end method

.method public getCancelable()Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lorg/apache/xerces/dom/events/EventImpl;->cancelable:Z

    move v0, v1

    return v0
.end method

.method public getCurrentTarget()Lorg/w3c/dom/events/EventTarget;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/events/EventImpl;->currentTarget:Lorg/w3c/dom/events/EventTarget;

    move-object v0, v1

    return-object v0
.end method

.method public getEventPhase()S
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-short v1, v1, Lorg/apache/xerces/dom/events/EventImpl;->eventPhase:S

    move v0, v1

    return v0
.end method

.method public getTarget()Lorg/w3c/dom/events/EventTarget;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/events/EventImpl;->target:Lorg/w3c/dom/events/EventTarget;

    move-object v0, v1

    return-object v0
.end method

.method public getTimeStamp()J
    .locals 3

    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Lorg/apache/xerces/dom/events/EventImpl;->timeStamp:J

    move-wide v0, v1

    return-wide v0
.end method

.method public getType()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/events/EventImpl;->type:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public initEvent(Ljava/lang/String;ZZ)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lorg/apache/xerces/dom/events/EventImpl;->type:Ljava/lang/String;

    move-object v4, v0

    move v5, v2

    iput-boolean v5, v4, Lorg/apache/xerces/dom/events/EventImpl;->bubbles:Z

    move-object v4, v0

    move v5, v3

    iput-boolean v5, v4, Lorg/apache/xerces/dom/events/EventImpl;->cancelable:Z

    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lorg/apache/xerces/dom/events/EventImpl;->initialized:Z

    return-void
.end method

.method public preventDefault()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/apache/xerces/dom/events/EventImpl;->preventDefault:Z

    return-void
.end method

.method public stopPropagation()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/apache/xerces/dom/events/EventImpl;->stopPropagation:Z

    return-void
.end method
