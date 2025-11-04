.class Lcom/puravidaapps/TaifunPM/TaifunPM$3;
.super Ljava/lang/Object;
.source "TaifunPM.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/puravidaapps/TaifunPM/TaifunPM;->progress(IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/puravidaapps/TaifunPM/TaifunPM;

.field final synthetic val$index:I

.field final synthetic val$json:Ljava/lang/String;

.field final synthetic val$total:I


# direct methods
.method constructor <init>(Lcom/puravidaapps/TaifunPM/TaifunPM;IILjava/lang/String;)V
    .locals 7

    .prologue
    .line 252
    move-object v0, p0

    .local v0, "this":Lcom/puravidaapps/TaifunPM/TaifunPM$3;
    move-object v1, p1

    .local v1, "this$0":Lcom/puravidaapps/TaifunPM/TaifunPM;
    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/puravidaapps/TaifunPM/TaifunPM$3;->this$0:Lcom/puravidaapps/TaifunPM/TaifunPM;

    move-object v5, v0

    move v6, v2

    iput v6, v5, Lcom/puravidaapps/TaifunPM/TaifunPM$3;->val$index:I

    move-object v5, v0

    move v6, v3

    iput v6, v5, Lcom/puravidaapps/TaifunPM/TaifunPM$3;->val$total:I

    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lcom/puravidaapps/TaifunPM/TaifunPM$3;->val$json:Ljava/lang/String;

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 255
    move-object v0, p0

    .local v0, "this":Lcom/puravidaapps/TaifunPM/TaifunPM$3;
    move-object v1, v0

    iget-object v1, v1, Lcom/puravidaapps/TaifunPM/TaifunPM$3;->this$0:Lcom/puravidaapps/TaifunPM/TaifunPM;

    move-object v2, v0

    iget v2, v2, Lcom/puravidaapps/TaifunPM/TaifunPM$3;->val$index:I

    move-object v3, v0

    iget v3, v3, Lcom/puravidaapps/TaifunPM/TaifunPM$3;->val$total:I

    move-object v4, v0

    iget-object v4, v4, Lcom/puravidaapps/TaifunPM/TaifunPM$3;->val$json:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/puravidaapps/TaifunPM/TaifunPM;->Progress(IILjava/lang/String;)V

    .line 256
    return-void
.end method
