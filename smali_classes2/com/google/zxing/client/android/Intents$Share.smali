.class public final Lcom/google/zxing/client/android/Intents$Share;
.super Ljava/lang/Object;
.source "Intents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/client/android/Intents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Share"
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.google.zxing.client.android.SHARE"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 258
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/Intents$Share;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 259
    return-void
.end method
