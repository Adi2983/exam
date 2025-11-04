.class public final enum Lcom/google/appinventor/common/version/AppInventorFeatures$TieredFeature;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/common/version/AppInventorFeatures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TieredFeature"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/appinventor/common/version/AppInventorFeatures$TieredFeature;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum MONETIZATION_EXTENSIONS:Lcom/google/appinventor/common/version/AppInventorFeatures$TieredFeature;

.field public static final enum NON_GAM_MONETIZATION_COMPONENTS:Lcom/google/appinventor/common/version/AppInventorFeatures$TieredFeature;

.field public static final enum UNLIMITED_ASSETS:Lcom/google/appinventor/common/version/AppInventorFeatures$TieredFeature;

.field public static final enum UNLIMITED_EXTENSIONS:Lcom/google/appinventor/common/version/AppInventorFeatures$TieredFeature;

.field public static final enum UNLIMITED_PROJECTS:Lcom/google/appinventor/common/version/AppInventorFeatures$TieredFeature;

.field public static final enum WEB_BUILDS:Lcom/google/appinventor/common/version/AppInventorFeatures$TieredFeature;

.field private static final synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[Lcom/google/appinventor/common/version/AppInventorFeatures$TieredFeature;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 131
    new-instance v0, Lcom/google/appinventor/common/version/AppInventorFeatures$TieredFeature;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "MONETIZATION_EXTENSIONS"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/appinventor/common/version/AppInventorFeatures$TieredFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/common/version/AppInventorFeatures$TieredFeature;->MONETIZATION_EXTENSIONS:Lcom/google/appinventor/common/version/AppInventorFeatures$TieredFeature;

    .line 132
    new-instance v0, Lcom/google/appinventor/common/version/AppInventorFeatures$TieredFeature;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "NON_GAM_MONETIZATION_COMPONENTS"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/google/appinventor/common/version/AppInventorFeatures$TieredFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/common/version/AppInventorFeatures$TieredFeature;->NON_GAM_MONETIZATION_COMPONENTS:Lcom/google/appinventor/common/version/AppInventorFeatures$TieredFeature;

    .line 133
    new-instance v0, Lcom/google/appinventor/common/version/AppInventorFeatures$TieredFeature;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "UNLIMITED_ASSETS"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/google/appinventor/common/version/AppInventorFeatures$TieredFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/common/version/AppInventorFeatures$TieredFeature;->UNLIMITED_ASSETS:Lcom/google/appinventor/common/version/AppInventorFeatures$TieredFeature;

    .line 134
    new-instance v0, Lcom/google/appinventor/common/version/AppInventorFeatures$TieredFeature;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "UNLIMITED_EXTENSIONS"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/google/appinventor/common/version/AppInventorFeatures$TieredFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/common/version/AppInventorFeatures$TieredFeature;->UNLIMITED_EXTENSIONS:Lcom/google/appinventor/common/version/AppInventorFeatures$TieredFeature;

    .line 135
    new-instance v0, Lcom/google/appinventor/common/version/AppInventorFeatures$TieredFeature;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "UNLIMITED_PROJECTS"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/google/appinventor/common/version/AppInventorFeatures$TieredFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/common/version/AppInventorFeatures$TieredFeature;->UNLIMITED_PROJECTS:Lcom/google/appinventor/common/version/AppInventorFeatures$TieredFeature;

    .line 136
    new-instance v0, Lcom/google/appinventor/common/version/AppInventorFeatures$TieredFeature;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "WEB_BUILDS"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/google/appinventor/common/version/AppInventorFeatures$TieredFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/common/version/AppInventorFeatures$TieredFeature;->WEB_BUILDS:Lcom/google/appinventor/common/version/AppInventorFeatures$TieredFeature;

    .line 130
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/appinventor/common/version/AppInventorFeatures$TieredFeature;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Lcom/google/appinventor/common/version/AppInventorFeatures$TieredFeature;->MONETIZATION_EXTENSIONS:Lcom/google/appinventor/common/version/AppInventorFeatures$TieredFeature;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Lcom/google/appinventor/common/version/AppInventorFeatures$TieredFeature;->NON_GAM_MONETIZATION_COMPONENTS:Lcom/google/appinventor/common/version/AppInventorFeatures$TieredFeature;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Lcom/google/appinventor/common/version/AppInventorFeatures$TieredFeature;->UNLIMITED_ASSETS:Lcom/google/appinventor/common/version/AppInventorFeatures$TieredFeature;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    sget-object v3, Lcom/google/appinventor/common/version/AppInventorFeatures$TieredFeature;->UNLIMITED_EXTENSIONS:Lcom/google/appinventor/common/version/AppInventorFeatures$TieredFeature;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    sget-object v3, Lcom/google/appinventor/common/version/AppInventorFeatures$TieredFeature;->UNLIMITED_PROJECTS:Lcom/google/appinventor/common/version/AppInventorFeatures$TieredFeature;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x5

    sget-object v3, Lcom/google/appinventor/common/version/AppInventorFeatures$TieredFeature;->WEB_BUILDS:Lcom/google/appinventor/common/version/AppInventorFeatures$TieredFeature;

    aput-object v3, v1, v2

    sput-object v0, Lcom/google/appinventor/common/version/AppInventorFeatures$TieredFeature;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[Lcom/google/appinventor/common/version/AppInventorFeatures$TieredFeature;

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
    .line 130
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/common/version/AppInventorFeatures$TieredFeature;
    .locals 3

    .prologue
    .line 130
    move-object v0, p0

    const-class v1, Lcom/google/appinventor/common/version/AppInventorFeatures$TieredFeature;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/common/version/AppInventorFeatures$TieredFeature;

    move-object v0, v1

    return-object v0
.end method

.method public static values()[Lcom/google/appinventor/common/version/AppInventorFeatures$TieredFeature;
    .locals 1

    .prologue
    .line 130
    sget-object v0, Lcom/google/appinventor/common/version/AppInventorFeatures$TieredFeature;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[Lcom/google/appinventor/common/version/AppInventorFeatures$TieredFeature;

    invoke-virtual {v0}, [Lcom/google/appinventor/common/version/AppInventorFeatures$TieredFeature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/common/version/AppInventorFeatures$TieredFeature;

    return-object v0
.end method
