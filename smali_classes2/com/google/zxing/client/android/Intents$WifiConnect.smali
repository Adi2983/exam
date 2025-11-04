.class public final Lcom/google/zxing/client/android/Intents$WifiConnect;
.super Ljava/lang/Object;
.source "Intents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/client/android/Intents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WifiConnect"
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.google.zxing.client.android.WIFI_CONNECT"

.field public static final PASSWORD:Ljava/lang/String; = "PASSWORD"

.field public static final SSID:Ljava/lang/String; = "SSID"

.field public static final TYPE:Ljava/lang/String; = "TYPE"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 247
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/Intents$WifiConnect;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 248
    return-void
.end method
