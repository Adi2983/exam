.class final enum Lcom/google/zxing/client/android/IntentSource;
.super Ljava/lang/Enum;
.source "IntentSource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/zxing/client/android/IntentSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/zxing/client/android/IntentSource;

.field public static final enum NATIVE_APP_INTENT:Lcom/google/zxing/client/android/IntentSource;

.field public static final enum NONE:Lcom/google/zxing/client/android/IntentSource;

.field public static final enum PRODUCT_SEARCH_LINK:Lcom/google/zxing/client/android/IntentSource;

.field public static final enum ZXING_LINK:Lcom/google/zxing/client/android/IntentSource;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 21
    new-instance v0, Lcom/google/zxing/client/android/IntentSource;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "NATIVE_APP_INTENT"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/client/android/IntentSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/client/android/IntentSource;->NATIVE_APP_INTENT:Lcom/google/zxing/client/android/IntentSource;

    .line 22
    new-instance v0, Lcom/google/zxing/client/android/IntentSource;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "PRODUCT_SEARCH_LINK"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/client/android/IntentSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/client/android/IntentSource;->PRODUCT_SEARCH_LINK:Lcom/google/zxing/client/android/IntentSource;

    .line 23
    new-instance v0, Lcom/google/zxing/client/android/IntentSource;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "ZXING_LINK"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/client/android/IntentSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/client/android/IntentSource;->ZXING_LINK:Lcom/google/zxing/client/android/IntentSource;

    .line 24
    new-instance v0, Lcom/google/zxing/client/android/IntentSource;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "NONE"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/client/android/IntentSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/client/android/IntentSource;->NONE:Lcom/google/zxing/client/android/IntentSource;

    .line 19
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/zxing/client/android/IntentSource;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Lcom/google/zxing/client/android/IntentSource;->NATIVE_APP_INTENT:Lcom/google/zxing/client/android/IntentSource;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Lcom/google/zxing/client/android/IntentSource;->PRODUCT_SEARCH_LINK:Lcom/google/zxing/client/android/IntentSource;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Lcom/google/zxing/client/android/IntentSource;->ZXING_LINK:Lcom/google/zxing/client/android/IntentSource;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    sget-object v3, Lcom/google/zxing/client/android/IntentSource;->NONE:Lcom/google/zxing/client/android/IntentSource;

    aput-object v3, v1, v2

    sput-object v0, Lcom/google/zxing/client/android/IntentSource;->$VALUES:[Lcom/google/zxing/client/android/IntentSource;

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
    .line 19
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/IntentSource;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/zxing/client/android/IntentSource;
    .locals 3

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Lcom/google/zxing/client/android/IntentSource;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/client/android/IntentSource;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Lcom/google/zxing/client/android/IntentSource;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/google/zxing/client/android/IntentSource;->$VALUES:[Lcom/google/zxing/client/android/IntentSource;

    invoke-virtual {v0}, [Lcom/google/zxing/client/android/IntentSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/zxing/client/android/IntentSource;

    return-object v0
.end method
