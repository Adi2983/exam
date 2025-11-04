.class synthetic Lcom/google/zxing/client/android/AppInvCaptureActivity$1;
.super Ljava/lang/Object;
.source "AppInvCaptureActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/client/android/AppInvCaptureActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$zxing$client$android$IntentSource:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 298
    invoke-static {}, Lcom/google/zxing/client/android/IntentSource;->values()[Lcom/google/zxing/client/android/IntentSource;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Lcom/google/zxing/client/android/AppInvCaptureActivity$1;->$SwitchMap$com$google$zxing$client$android$IntentSource:[I

    :try_start_0
    sget-object v1, Lcom/google/zxing/client/android/AppInvCaptureActivity$1;->$SwitchMap$com$google$zxing$client$android$IntentSource:[I

    sget-object v2, Lcom/google/zxing/client/android/IntentSource;->NATIVE_APP_INTENT:Lcom/google/zxing/client/android/IntentSource;

    invoke-virtual {v2}, Lcom/google/zxing/client/android/IntentSource;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    aput v3, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    sget-object v1, Lcom/google/zxing/client/android/AppInvCaptureActivity$1;->$SwitchMap$com$google$zxing$client$android$IntentSource:[I

    sget-object v2, Lcom/google/zxing/client/android/IntentSource;->PRODUCT_SEARCH_LINK:Lcom/google/zxing/client/android/IntentSource;

    invoke-virtual {v2}, Lcom/google/zxing/client/android/IntentSource;->ordinal()I

    move-result v2

    const/4 v3, 0x2

    aput v3, v1, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/google/zxing/client/android/AppInvCaptureActivity$1;->$SwitchMap$com$google$zxing$client$android$IntentSource:[I

    sget-object v2, Lcom/google/zxing/client/android/IntentSource;->NONE:Lcom/google/zxing/client/android/IntentSource;

    invoke-virtual {v2}, Lcom/google/zxing/client/android/IntentSource;->ordinal()I

    move-result v2

    const/4 v3, 0x3

    aput v3, v1, v2
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v0, v1

    goto :goto_1

    :catch_2
    move-exception v1

    move-object v0, v1

    goto :goto_2
.end method
