.class Lorg/apache/xerces/dom/DocumentImpl$EnclosingAttr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/dom/DocumentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EnclosingAttr"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4847e90a0943bdf0L


# instance fields
.field node:Lorg/apache/xerces/dom/AttrImpl;

.field oldvalue:Ljava/lang/String;

.field private final this$0:Lorg/apache/xerces/dom/DocumentImpl;


# direct methods
.method constructor <init>(Lorg/apache/xerces/dom/DocumentImpl;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/dom/DocumentImpl$EnclosingAttr;->this$0:Lorg/apache/xerces/dom/DocumentImpl;

    return-void
.end method
