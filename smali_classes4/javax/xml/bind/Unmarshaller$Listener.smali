.class public abstract Ljavax/xml/bind/Unmarshaller$Listener;
.super Ljava/lang/Object;
.source "Unmarshaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/xml/bind/Unmarshaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Listener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 1068
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/Unmarshaller$Listener;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterUnmarshal(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "parent"    # Ljava/lang/Object;

    .prologue
    .line 1101
    return-void
.end method

.method public beforeUnmarshal(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "parent"    # Ljava/lang/Object;

    .prologue
    .line 1084
    return-void
.end method
