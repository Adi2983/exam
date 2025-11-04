.class public final Lcom/google/zxing/client/android/Intents;
.super Ljava/lang/Object;
.source "Intents.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/client/android/Intents$Share;,
        Lcom/google/zxing/client/android/Intents$WifiConnect;,
        Lcom/google/zxing/client/android/Intents$SearchBookContents;,
        Lcom/google/zxing/client/android/Intents$Encode;,
        Lcom/google/zxing/client/android/Intents$History;,
        Lcom/google/zxing/client/android/Intents$Scan;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/Intents;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method
