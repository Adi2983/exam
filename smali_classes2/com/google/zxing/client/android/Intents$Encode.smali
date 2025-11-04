.class public final Lcom/google/zxing/client/android/Intents$Encode;
.super Ljava/lang/Object;
.source "Intents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/client/android/Intents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Encode"
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.google.zxing.client.android.ENCODE"

.field public static final DATA:Ljava/lang/String; = "ENCODE_DATA"

.field public static final FORMAT:Ljava/lang/String; = "ENCODE_FORMAT"

.field public static final SHOW_CONTENTS:Ljava/lang/String; = "ENCODE_SHOW_CONTENTS"

.field public static final TYPE:Ljava/lang/String; = "ENCODE_TYPE"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 202
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/Intents$Encode;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 203
    return-void
.end method
