.class public final enum Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable$DisplayMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DisplayMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable$DisplayMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable$DisplayMode;

.field public static final enum Appear:Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable$DisplayMode;

.field public static final enum Disappear:Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable$DisplayMode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v2, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable$DisplayMode;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v0, v4

    const-string/jumbo v4, "Disappear"

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable$DisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable$DisplayMode;->Disappear:Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable$DisplayMode;

    new-instance v2, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable$DisplayMode;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v1, v4

    const-string/jumbo v4, "Appear"

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable$DisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable$DisplayMode;->Appear:Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable$DisplayMode;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable$DisplayMode;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    move-object v6, v0

    aput-object v6, v4, v5

    const/4 v4, 0x1

    move-object v5, v1

    aput-object v5, v3, v4

    sput-object v2, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable$DisplayMode;->$VALUES:[Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable$DisplayMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable$DisplayMode;
    .locals 3

    move-object v0, p0

    const-class v1, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable$DisplayMode;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable$DisplayMode;

    move-object v0, v1

    return-object v0
.end method

.method public static values()[Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable$DisplayMode;
    .locals 2

    sget-object v1, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable$DisplayMode;->$VALUES:[Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable$DisplayMode;

    invoke-virtual {v1}, [Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable$DisplayMode;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable$DisplayMode;

    move-object v0, v1

    return-object v0
.end method
