.class final Ljavax/xml/bind/JAXB$Cache;
.super Ljava/lang/Object;
.source "JAXB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/xml/bind/JAXB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Cache"
.end annotation


# instance fields
.field final context:Ljavax/xml/bind/JAXBContext;

.field final type:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/JAXB$Cache;
    move-object v1, p1

    .local v1, "type":Ljava/lang/Class;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 86
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavax/xml/bind/JAXB$Cache;->type:Ljava/lang/Class;

    .line 87
    move-object v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    move-object v6, v1

    aput-object v6, v4, v5

    invoke-static {v3}, Ljavax/xml/bind/JAXBContext;->newInstance([Ljava/lang/Class;)Ljavax/xml/bind/JAXBContext;

    move-result-object v3

    iput-object v3, v2, Ljavax/xml/bind/JAXB$Cache;->context:Ljavax/xml/bind/JAXBContext;

    .line 88
    return-void
.end method
