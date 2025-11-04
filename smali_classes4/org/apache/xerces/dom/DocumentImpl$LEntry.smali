.class Lorg/apache/xerces/dom/DocumentImpl$LEntry;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/dom/DocumentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LEntry"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x74f1dae6138f9fffL


# instance fields
.field listener:Lorg/w3c/dom/events/EventListener;

.field private final this$0:Lorg/apache/xerces/dom/DocumentImpl;

.field type:Ljava/lang/String;

.field useCapture:Z


# direct methods
.method constructor <init>(Lorg/apache/xerces/dom/DocumentImpl;Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lorg/apache/xerces/dom/DocumentImpl$LEntry;->this$0:Lorg/apache/xerces/dom/DocumentImpl;

    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lorg/apache/xerces/dom/DocumentImpl$LEntry;->type:Ljava/lang/String;

    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lorg/apache/xerces/dom/DocumentImpl$LEntry;->listener:Lorg/w3c/dom/events/EventListener;

    move-object v5, v0

    move v6, v4

    iput-boolean v6, v5, Lorg/apache/xerces/dom/DocumentImpl$LEntry;->useCapture:Z

    return-void
.end method
