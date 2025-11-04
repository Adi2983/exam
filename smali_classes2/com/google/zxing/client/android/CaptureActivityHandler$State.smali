.class final enum Lcom/google/zxing/client/android/CaptureActivityHandler$State;
.super Ljava/lang/Enum;
.source "CaptureActivityHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/client/android/CaptureActivityHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/zxing/client/android/CaptureActivityHandler$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/zxing/client/android/CaptureActivityHandler$State;

.field public static final enum DONE:Lcom/google/zxing/client/android/CaptureActivityHandler$State;

.field public static final enum PREVIEW:Lcom/google/zxing/client/android/CaptureActivityHandler$State;

.field public static final enum SUCCESS:Lcom/google/zxing/client/android/CaptureActivityHandler$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 48
    new-instance v0, Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "PREVIEW"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/client/android/CaptureActivityHandler$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/client/android/CaptureActivityHandler$State;->PREVIEW:Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    .line 49
    new-instance v0, Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "SUCCESS"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/client/android/CaptureActivityHandler$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/client/android/CaptureActivityHandler$State;->SUCCESS:Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    .line 50
    new-instance v0, Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "DONE"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/client/android/CaptureActivityHandler$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/client/android/CaptureActivityHandler$State;->DONE:Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    .line 47
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Lcom/google/zxing/client/android/CaptureActivityHandler$State;->PREVIEW:Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Lcom/google/zxing/client/android/CaptureActivityHandler$State;->SUCCESS:Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Lcom/google/zxing/client/android/CaptureActivityHandler$State;->DONE:Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    aput-object v3, v1, v2

    sput-object v0, Lcom/google/zxing/client/android/CaptureActivityHandler$State;->$VALUES:[Lcom/google/zxing/client/android/CaptureActivityHandler$State;

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
    .line 47
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/CaptureActivityHandler$State;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/zxing/client/android/CaptureActivityHandler$State;
    .locals 3

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Lcom/google/zxing/client/android/CaptureActivityHandler$State;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/google/zxing/client/android/CaptureActivityHandler$State;->$VALUES:[Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    invoke-virtual {v0}, [Lcom/google/zxing/client/android/CaptureActivityHandler$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    return-object v0
.end method
