.class public final enum Ljavax/xml/bind/annotation/XmlAccessOrder;
.super Ljava/lang/Enum;
.source "XmlAccessOrder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljavax/xml/bind/annotation/XmlAccessOrder;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljavax/xml/bind/annotation/XmlAccessOrder;

.field public static final enum ALPHABETICAL:Ljavax/xml/bind/annotation/XmlAccessOrder;

.field public static final enum UNDEFINED:Ljavax/xml/bind/annotation/XmlAccessOrder;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 22
    new-instance v0, Ljavax/xml/bind/annotation/XmlAccessOrder;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "UNDEFINED"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljavax/xml/bind/annotation/XmlAccessOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/xml/bind/annotation/XmlAccessOrder;->UNDEFINED:Ljavax/xml/bind/annotation/XmlAccessOrder;

    .line 28
    new-instance v0, Ljavax/xml/bind/annotation/XmlAccessOrder;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "ALPHABETICAL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljavax/xml/bind/annotation/XmlAccessOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/xml/bind/annotation/XmlAccessOrder;->ALPHABETICAL:Ljavax/xml/bind/annotation/XmlAccessOrder;

    .line 18
    const/4 v0, 0x2

    new-array v0, v0, [Ljavax/xml/bind/annotation/XmlAccessOrder;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Ljavax/xml/bind/annotation/XmlAccessOrder;->UNDEFINED:Ljavax/xml/bind/annotation/XmlAccessOrder;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Ljavax/xml/bind/annotation/XmlAccessOrder;->ALPHABETICAL:Ljavax/xml/bind/annotation/XmlAccessOrder;

    aput-object v3, v1, v2

    sput-object v0, Ljavax/xml/bind/annotation/XmlAccessOrder;->$VALUES:[Ljavax/xml/bind/annotation/XmlAccessOrder;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/annotation/XmlAccessOrder;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljavax/xml/bind/annotation/XmlAccessOrder;
    .locals 3

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Ljavax/xml/bind/annotation/XmlAccessOrder;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Ljavax/xml/bind/annotation/XmlAccessOrder;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static final values()[Ljavax/xml/bind/annotation/XmlAccessOrder;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Ljavax/xml/bind/annotation/XmlAccessOrder;->$VALUES:[Ljavax/xml/bind/annotation/XmlAccessOrder;

    invoke-virtual {v0}, [Ljavax/xml/bind/annotation/XmlAccessOrder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/xml/bind/annotation/XmlAccessOrder;

    return-object v0
.end method
