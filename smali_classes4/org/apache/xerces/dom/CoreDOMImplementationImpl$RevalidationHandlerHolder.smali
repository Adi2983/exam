.class final Lorg/apache/xerces/dom/CoreDOMImplementationImpl$RevalidationHandlerHolder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/dom/CoreDOMImplementationImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RevalidationHandlerHolder"
.end annotation


# instance fields
.field handler:Lorg/apache/xerces/impl/RevalidationHandler;


# direct methods
.method constructor <init>(Lorg/apache/xerces/impl/RevalidationHandler;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/dom/CoreDOMImplementationImpl$RevalidationHandlerHolder;->handler:Lorg/apache/xerces/impl/RevalidationHandler;

    return-void
.end method
