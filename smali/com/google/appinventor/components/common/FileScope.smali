.class public final enum Lcom/google/appinventor/components/common/FileScope;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/common/OptionList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/appinventor/components/common/FileScope;",
        ">;",
        "Lcom/google/appinventor/components/common/OptionList",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum App:Lcom/google/appinventor/components/common/FileScope;

.field public static final enum Asset:Lcom/google/appinventor/components/common/FileScope;

.field public static final enum Cache:Lcom/google/appinventor/components/common/FileScope;

.field public static final enum Legacy:Lcom/google/appinventor/components/common/FileScope;

.field public static final enum Private:Lcom/google/appinventor/components/common/FileScope;

.field public static final enum Shared:Lcom/google/appinventor/components/common/FileScope;

.field private static final synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[Lcom/google/appinventor/components/common/FileScope;

.field private static final wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/appinventor/components/common/FileScope;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 23
    new-instance v4, Lcom/google/appinventor/components/common/FileScope;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string/jumbo v6, "App"

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/google/appinventor/components/common/FileScope;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/google/appinventor/components/common/FileScope;->App:Lcom/google/appinventor/components/common/FileScope;

    .line 29
    new-instance v4, Lcom/google/appinventor/components/common/FileScope;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string/jumbo v6, "Asset"

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Lcom/google/appinventor/components/common/FileScope;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/google/appinventor/components/common/FileScope;->Asset:Lcom/google/appinventor/components/common/FileScope;

    .line 34
    new-instance v4, Lcom/google/appinventor/components/common/FileScope;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string/jumbo v6, "Cache"

    const/4 v7, 0x2

    invoke-direct {v5, v6, v7}, Lcom/google/appinventor/components/common/FileScope;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/google/appinventor/components/common/FileScope;->Cache:Lcom/google/appinventor/components/common/FileScope;

    .line 40
    new-instance v4, Lcom/google/appinventor/components/common/FileScope;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string/jumbo v6, "Legacy"

    const/4 v7, 0x3

    invoke-direct {v5, v6, v7}, Lcom/google/appinventor/components/common/FileScope;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/google/appinventor/components/common/FileScope;->Legacy:Lcom/google/appinventor/components/common/FileScope;

    .line 45
    new-instance v4, Lcom/google/appinventor/components/common/FileScope;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string/jumbo v6, "Private"

    const/4 v7, 0x4

    invoke-direct {v5, v6, v7}, Lcom/google/appinventor/components/common/FileScope;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/google/appinventor/components/common/FileScope;->Private:Lcom/google/appinventor/components/common/FileScope;

    .line 51
    new-instance v4, Lcom/google/appinventor/components/common/FileScope;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string/jumbo v6, "Shared"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/google/appinventor/components/common/FileScope;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/google/appinventor/components/common/FileScope;->Shared:Lcom/google/appinventor/components/common/FileScope;

    .line 17
    const/4 v4, 0x6

    new-array v4, v4, [Lcom/google/appinventor/components/common/FileScope;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    sget-object v7, Lcom/google/appinventor/components/common/FileScope;->App:Lcom/google/appinventor/components/common/FileScope;

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x1

    sget-object v7, Lcom/google/appinventor/components/common/FileScope;->Asset:Lcom/google/appinventor/components/common/FileScope;

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x2

    sget-object v7, Lcom/google/appinventor/components/common/FileScope;->Cache:Lcom/google/appinventor/components/common/FileScope;

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x3

    sget-object v7, Lcom/google/appinventor/components/common/FileScope;->Legacy:Lcom/google/appinventor/components/common/FileScope;

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x4

    sget-object v7, Lcom/google/appinventor/components/common/FileScope;->Private:Lcom/google/appinventor/components/common/FileScope;

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x5

    sget-object v7, Lcom/google/appinventor/components/common/FileScope;->Shared:Lcom/google/appinventor/components/common/FileScope;

    aput-object v7, v5, v6

    sput-object v4, Lcom/google/appinventor/components/common/FileScope;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[Lcom/google/appinventor/components/common/FileScope;

    .line 53
    new-instance v4, Ljava/util/HashMap;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lcom/google/appinventor/components/common/FileScope;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/Map;

    .line 56
    invoke-static {}, Lcom/google/appinventor/components/common/FileScope;->values()[Lcom/google/appinventor/components/common/FileScope;

    move-result-object v4

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v0, v5

    array-length v4, v4

    move v1, v4

    const/4 v4, 0x0

    move v2, v4

    :goto_0
    move v4, v2

    move v5, v1

    if-ge v4, v5, :cond_0

    move-object v4, v0

    move v5, v2

    aget-object v4, v4, v5

    move-object v3, v4

    .line 57
    sget-object v4, Lcom/google/appinventor/components/common/FileScope;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/Map;

    move-object v5, v3

    invoke-virtual {v5}, Lcom/google/appinventor/components/common/FileScope;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v5

    move-object v6, v3

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 56
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 59
    :cond_0
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
    .line 17
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/FileScope;
    .locals 3

    .prologue
    .line 62
    move-object v0, p0

    sget-object v1, Lcom/google/appinventor/components/common/FileScope;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/Map;

    move-object v2, v0

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/common/FileScope;

    move-object v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/common/FileScope;
    .locals 3

    .prologue
    .line 17
    move-object v0, p0

    const-class v1, Lcom/google/appinventor/components/common/FileScope;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/common/FileScope;

    move-object v0, v1

    return-object v0
.end method

.method public static values()[Lcom/google/appinventor/components/common/FileScope;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/appinventor/components/common/FileScope;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[Lcom/google/appinventor/components/common/FileScope;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/common/FileScope;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/common/FileScope;

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic toUnderlyingValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 17
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/common/FileScope;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public final toUnderlyingValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 67
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/common/FileScope;->name()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method
