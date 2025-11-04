.class Lcom/google/zxing/client/android/result/ResultHandler$1;
.super Ljava/lang/Object;
.source "ResultHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/client/android/result/ResultHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/zxing/client/android/result/ResultHandler;


# direct methods
.method constructor <init>(Lcom/google/zxing/client/android/result/ResultHandler;)V
    .locals 4

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/result/ResultHandler$1;
    move-object v1, p1

    .local v1, "this$0":Lcom/google/zxing/client/android/result/ResultHandler;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/zxing/client/android/result/ResultHandler$1;->this$0:Lcom/google/zxing/client/android/result/ResultHandler;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/result/ResultHandler$1;
    move-object v1, p1

    .local v1, "dialogInterface":Landroid/content/DialogInterface;
    move v2, p2

    .local v2, "which":I
    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/client/android/result/ResultHandler$1;->this$0:Lcom/google/zxing/client/android/result/ResultHandler;

    new-instance v4, Landroid/content/Intent;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string/jumbo v6, "android.intent.action.VIEW"

    const-string/jumbo v7, "market://details?id=com.google.android.apps.shopper&referrer=utm_source%3Dbarcodescanner%26utm_medium%3Dapps%26utm_campaign%3Dscan"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v3, v4}, Lcom/google/zxing/client/android/result/ResultHandler;->launchIntent(Landroid/content/Intent;)V

    .line 94
    return-void
.end method
