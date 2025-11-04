.class public final Lcom/google/zxing/client/android/Intents$SearchBookContents;
.super Ljava/lang/Object;
.source "Intents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/client/android/Intents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SearchBookContents"
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.google.zxing.client.android.SEARCH_BOOK_CONTENTS"

.field public static final ISBN:Ljava/lang/String; = "ISBN"

.field public static final QUERY:Ljava/lang/String; = "QUERY"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 222
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/Intents$SearchBookContents;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 223
    return-void
.end method
