.class public final enum Ljavax/xml/bind/annotation/XmlAccessType;
.super Ljava/lang/Enum;
.source "XmlAccessType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljavax/xml/bind/annotation/XmlAccessType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljavax/xml/bind/annotation/XmlAccessType;

.field public static final enum FIELD:Ljavax/xml/bind/annotation/XmlAccessType;

.field public static final enum NONE:Ljavax/xml/bind/annotation/XmlAccessType;

.field public static final enum PROPERTY:Ljavax/xml/bind/annotation/XmlAccessType;

.field public static final enum PUBLIC_MEMBER:Ljavax/xml/bind/annotation/XmlAccessType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 28
    new-instance v0, Ljavax/xml/bind/annotation/XmlAccessType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "PROPERTY"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljavax/xml/bind/annotation/XmlAccessType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/xml/bind/annotation/XmlAccessType;->PROPERTY:Ljavax/xml/bind/annotation/XmlAccessType;

    .line 36
    new-instance v0, Ljavax/xml/bind/annotation/XmlAccessType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "FIELD"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljavax/xml/bind/annotation/XmlAccessType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/xml/bind/annotation/XmlAccessType;->FIELD:Ljavax/xml/bind/annotation/XmlAccessType;

    .line 45
    new-instance v0, Ljavax/xml/bind/annotation/XmlAccessType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "PUBLIC_MEMBER"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Ljavax/xml/bind/annotation/XmlAccessType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/xml/bind/annotation/XmlAccessType;->PUBLIC_MEMBER:Ljavax/xml/bind/annotation/XmlAccessType;

    .line 50
    new-instance v0, Ljavax/xml/bind/annotation/XmlAccessType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "NONE"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Ljavax/xml/bind/annotation/XmlAccessType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/xml/bind/annotation/XmlAccessType;->NONE:Ljavax/xml/bind/annotation/XmlAccessType;

    .line 20
    const/4 v0, 0x4

    new-array v0, v0, [Ljavax/xml/bind/annotation/XmlAccessType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Ljavax/xml/bind/annotation/XmlAccessType;->PROPERTY:Ljavax/xml/bind/annotation/XmlAccessType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Ljavax/xml/bind/annotation/XmlAccessType;->FIELD:Ljavax/xml/bind/annotation/XmlAccessType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Ljavax/xml/bind/annotation/XmlAccessType;->PUBLIC_MEMBER:Ljavax/xml/bind/annotation/XmlAccessType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    sget-object v3, Ljavax/xml/bind/annotation/XmlAccessType;->NONE:Ljavax/xml/bind/annotation/XmlAccessType;

    aput-object v3, v1, v2

    sput-object v0, Ljavax/xml/bind/annotation/XmlAccessType;->$VALUES:[Ljavax/xml/bind/annotation/XmlAccessType;

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
    .line 20
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/annotation/XmlAccessType;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljavax/xml/bind/annotation/XmlAccessType;
    .locals 3

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Ljavax/xml/bind/annotation/XmlAccessType;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Ljavax/xml/bind/annotation/XmlAccessType;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static final values()[Ljavax/xml/bind/annotation/XmlAccessType;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Ljavax/xml/bind/annotation/XmlAccessType;->$VALUES:[Ljavax/xml/bind/annotation/XmlAccessType;

    invoke-virtual {v0}, [Ljavax/xml/bind/annotation/XmlAccessType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/xml/bind/annotation/XmlAccessType;

    return-object v0
.end method
