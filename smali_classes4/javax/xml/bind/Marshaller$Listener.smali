.class public abstract Ljavax/xml/bind/Marshaller$Listener;
.super Ljava/lang/Object;
.source "Marshaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/xml/bind/Marshaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Listener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 754
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/Marshaller$Listener;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterMarshal(Ljava/lang/Object;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;

    .prologue
    .line 781
    return-void
.end method

.method public beforeMarshal(Ljava/lang/Object;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;

    .prologue
    .line 767
    return-void
.end method
