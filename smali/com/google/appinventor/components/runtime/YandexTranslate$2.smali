.class final Lcom/google/appinventor/components/runtime/YandexTranslate$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/YandexTranslate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ArOjKO7pqAIWG8ZZlv3YBxnAZj1pb9t33KRX1FDn1YZBKlUfegr0dDdXoq3tBTrf:Ljava/lang/String;

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/YandexTranslate;

.field private synthetic yBWgr1TFnOTkj12JSinX7tDktLYDdE0hbjWh6SJ840mGKDqolkYZlpsg76XJs9ig:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/YandexTranslate;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 139
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/YandexTranslate$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/YandexTranslate;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/YandexTranslate$2;->yBWgr1TFnOTkj12JSinX7tDktLYDdE0hbjWh6SJ840mGKDqolkYZlpsg76XJs9ig:Ljava/lang/String;

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/YandexTranslate$2;->ArOjKO7pqAIWG8ZZlv3YBxnAZj1pb9t33KRX1FDn1YZBKlUfegr0dDdXoq3tBTrf:Ljava/lang/String;

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 142
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/YandexTranslate$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/YandexTranslate;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/YandexTranslate$2;->yBWgr1TFnOTkj12JSinX7tDktLYDdE0hbjWh6SJ840mGKDqolkYZlpsg76XJs9ig:Ljava/lang/String;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/YandexTranslate$2;->ArOjKO7pqAIWG8ZZlv3YBxnAZj1pb9t33KRX1FDn1YZBKlUfegr0dDdXoq3tBTrf:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/appinventor/components/runtime/YandexTranslate;->GotTranslation(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    return-void
.end method
