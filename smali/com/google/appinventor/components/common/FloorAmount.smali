.class public final enum Lcom/google/appinventor/components/common/FloorAmount;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/common/OptionList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/appinventor/components/common/FloorAmount;",
        ">;",
        "Lcom/google/appinventor/components/common/OptionList",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Optimized:Lcom/google/appinventor/components/common/FloorAmount;

.field public static final enum USD_00_50:Lcom/google/appinventor/components/common/FloorAmount;

.field public static final enum USD_00_80:Lcom/google/appinventor/components/common/FloorAmount;

.field public static final enum USD_01_00:Lcom/google/appinventor/components/common/FloorAmount;

.field public static final enum USD_01_50:Lcom/google/appinventor/components/common/FloorAmount;

.field public static final enum USD_02_00:Lcom/google/appinventor/components/common/FloorAmount;

.field public static final enum USD_02_50:Lcom/google/appinventor/components/common/FloorAmount;

.field public static final enum USD_03_00:Lcom/google/appinventor/components/common/FloorAmount;

.field public static final enum USD_03_50:Lcom/google/appinventor/components/common/FloorAmount;

.field public static final enum USD_04_00:Lcom/google/appinventor/components/common/FloorAmount;

.field public static final enum USD_04_50:Lcom/google/appinventor/components/common/FloorAmount;

.field private static final synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[Lcom/google/appinventor/components/common/FloorAmount;

.field private static final wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/appinventor/components/common/FloorAmount;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    .line 15
    new-instance v4, Lcom/google/appinventor/components/common/FloorAmount;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string/jumbo v6, "Optimized"

    const/4 v7, 0x0

    const-string/jumbo v8, "optimized"

    invoke-direct {v5, v6, v7, v8}, Lcom/google/appinventor/components/common/FloorAmount;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/appinventor/components/common/FloorAmount;->Optimized:Lcom/google/appinventor/components/common/FloorAmount;

    .line 16
    new-instance v4, Lcom/google/appinventor/components/common/FloorAmount;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string/jumbo v6, "USD_04_50"

    const/4 v7, 0x1

    const-string/jumbo v8, "d_04_c_50"

    invoke-direct {v5, v6, v7, v8}, Lcom/google/appinventor/components/common/FloorAmount;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/appinventor/components/common/FloorAmount;->USD_04_50:Lcom/google/appinventor/components/common/FloorAmount;

    .line 17
    new-instance v4, Lcom/google/appinventor/components/common/FloorAmount;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string/jumbo v6, "USD_04_00"

    const/4 v7, 0x2

    const-string/jumbo v8, "d_04_c_00"

    invoke-direct {v5, v6, v7, v8}, Lcom/google/appinventor/components/common/FloorAmount;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/appinventor/components/common/FloorAmount;->USD_04_00:Lcom/google/appinventor/components/common/FloorAmount;

    .line 18
    new-instance v4, Lcom/google/appinventor/components/common/FloorAmount;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string/jumbo v6, "USD_03_50"

    const/4 v7, 0x3

    const-string/jumbo v8, "d_03_c_50"

    invoke-direct {v5, v6, v7, v8}, Lcom/google/appinventor/components/common/FloorAmount;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/appinventor/components/common/FloorAmount;->USD_03_50:Lcom/google/appinventor/components/common/FloorAmount;

    .line 19
    new-instance v4, Lcom/google/appinventor/components/common/FloorAmount;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string/jumbo v6, "USD_03_00"

    const/4 v7, 0x4

    const-string/jumbo v8, "d_03_c_00"

    invoke-direct {v5, v6, v7, v8}, Lcom/google/appinventor/components/common/FloorAmount;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/appinventor/components/common/FloorAmount;->USD_03_00:Lcom/google/appinventor/components/common/FloorAmount;

    .line 20
    new-instance v4, Lcom/google/appinventor/components/common/FloorAmount;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string/jumbo v6, "USD_02_50"

    const/4 v7, 0x5

    const-string/jumbo v8, "d_02_c_50"

    invoke-direct {v5, v6, v7, v8}, Lcom/google/appinventor/components/common/FloorAmount;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/appinventor/components/common/FloorAmount;->USD_02_50:Lcom/google/appinventor/components/common/FloorAmount;

    .line 21
    new-instance v4, Lcom/google/appinventor/components/common/FloorAmount;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string/jumbo v6, "USD_02_00"

    const/4 v7, 0x6

    const-string/jumbo v8, "d_02_c_00"

    invoke-direct {v5, v6, v7, v8}, Lcom/google/appinventor/components/common/FloorAmount;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/appinventor/components/common/FloorAmount;->USD_02_00:Lcom/google/appinventor/components/common/FloorAmount;

    .line 22
    new-instance v4, Lcom/google/appinventor/components/common/FloorAmount;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string/jumbo v6, "USD_01_50"

    const/4 v7, 0x7

    const-string/jumbo v8, "d_01_c_50"

    invoke-direct {v5, v6, v7, v8}, Lcom/google/appinventor/components/common/FloorAmount;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/appinventor/components/common/FloorAmount;->USD_01_50:Lcom/google/appinventor/components/common/FloorAmount;

    .line 23
    new-instance v4, Lcom/google/appinventor/components/common/FloorAmount;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string/jumbo v6, "USD_01_00"

    const/16 v7, 0x8

    const-string/jumbo v8, "d_01_c_00"

    invoke-direct {v5, v6, v7, v8}, Lcom/google/appinventor/components/common/FloorAmount;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/appinventor/components/common/FloorAmount;->USD_01_00:Lcom/google/appinventor/components/common/FloorAmount;

    .line 24
    new-instance v4, Lcom/google/appinventor/components/common/FloorAmount;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string/jumbo v6, "USD_00_80"

    const/16 v7, 0x9

    const-string/jumbo v8, "d_00_c_80"

    invoke-direct {v5, v6, v7, v8}, Lcom/google/appinventor/components/common/FloorAmount;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/appinventor/components/common/FloorAmount;->USD_00_80:Lcom/google/appinventor/components/common/FloorAmount;

    .line 25
    new-instance v4, Lcom/google/appinventor/components/common/FloorAmount;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string/jumbo v6, "USD_00_50"

    const/16 v7, 0xa

    const-string/jumbo v8, "d_00_c_50"

    invoke-direct {v5, v6, v7, v8}, Lcom/google/appinventor/components/common/FloorAmount;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/appinventor/components/common/FloorAmount;->USD_00_50:Lcom/google/appinventor/components/common/FloorAmount;

    .line 14
    const/16 v4, 0xb

    new-array v4, v4, [Lcom/google/appinventor/components/common/FloorAmount;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const/4 v6, 0x0

    sget-object v7, Lcom/google/appinventor/components/common/FloorAmount;->Optimized:Lcom/google/appinventor/components/common/FloorAmount;

    aput-object v7, v5, v6

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const/4 v6, 0x1

    sget-object v7, Lcom/google/appinventor/components/common/FloorAmount;->USD_04_50:Lcom/google/appinventor/components/common/FloorAmount;

    aput-object v7, v5, v6

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const/4 v6, 0x2

    sget-object v7, Lcom/google/appinventor/components/common/FloorAmount;->USD_04_00:Lcom/google/appinventor/components/common/FloorAmount;

    aput-object v7, v5, v6

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const/4 v6, 0x3

    sget-object v7, Lcom/google/appinventor/components/common/FloorAmount;->USD_03_50:Lcom/google/appinventor/components/common/FloorAmount;

    aput-object v7, v5, v6

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const/4 v6, 0x4

    sget-object v7, Lcom/google/appinventor/components/common/FloorAmount;->USD_03_00:Lcom/google/appinventor/components/common/FloorAmount;

    aput-object v7, v5, v6

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const/4 v6, 0x5

    sget-object v7, Lcom/google/appinventor/components/common/FloorAmount;->USD_02_50:Lcom/google/appinventor/components/common/FloorAmount;

    aput-object v7, v5, v6

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const/4 v6, 0x6

    sget-object v7, Lcom/google/appinventor/components/common/FloorAmount;->USD_02_00:Lcom/google/appinventor/components/common/FloorAmount;

    aput-object v7, v5, v6

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const/4 v6, 0x7

    sget-object v7, Lcom/google/appinventor/components/common/FloorAmount;->USD_01_50:Lcom/google/appinventor/components/common/FloorAmount;

    aput-object v7, v5, v6

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const/16 v6, 0x8

    sget-object v7, Lcom/google/appinventor/components/common/FloorAmount;->USD_01_00:Lcom/google/appinventor/components/common/FloorAmount;

    aput-object v7, v5, v6

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const/16 v6, 0x9

    sget-object v7, Lcom/google/appinventor/components/common/FloorAmount;->USD_00_80:Lcom/google/appinventor/components/common/FloorAmount;

    aput-object v7, v5, v6

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const/16 v6, 0xa

    sget-object v7, Lcom/google/appinventor/components/common/FloorAmount;->USD_00_50:Lcom/google/appinventor/components/common/FloorAmount;

    aput-object v7, v5, v6

    sput-object v4, Lcom/google/appinventor/components/common/FloorAmount;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[Lcom/google/appinventor/components/common/FloorAmount;

    .line 32
    new-instance v4, Ljava/util/HashMap;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lcom/google/appinventor/components/common/FloorAmount;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/Map;

    .line 35
    invoke-static {}, Lcom/google/appinventor/components/common/FloorAmount;->values()[Lcom/google/appinventor/components/common/FloorAmount;

    move-result-object v4

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

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

    .line 36
    sget-object v4, Lcom/google/appinventor/components/common/FloorAmount;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/Map;

    move-object v5, v3

    invoke-virtual {v5}, Lcom/google/appinventor/components/common/FloorAmount;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v5

    move-object v6, v3

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 35
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 38
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 29
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/google/appinventor/components/common/FloorAmount;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public static fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/FloorAmount;
    .locals 3

    .prologue
    .line 41
    move-object v0, p0

    sget-object v1, Lcom/google/appinventor/components/common/FloorAmount;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/Map;

    move-object v2, v0

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/common/FloorAmount;

    move-object v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/common/FloorAmount;
    .locals 3

    .prologue
    .line 14
    move-object v0, p0

    const-class v1, Lcom/google/appinventor/components/common/FloorAmount;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/common/FloorAmount;

    move-object v0, v1

    return-object v0
.end method

.method public static values()[Lcom/google/appinventor/components/common/FloorAmount;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/google/appinventor/components/common/FloorAmount;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[Lcom/google/appinventor/components/common/FloorAmount;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/common/FloorAmount;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/common/FloorAmount;

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic toUnderlyingValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 14
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/common/FloorAmount;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public final toUnderlyingValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/common/FloorAmount;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method
