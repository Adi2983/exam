.class Lcom/puravidaapps/TaifunPM/TaifunPM$2;
.super Ljava/lang/Object;
.source "TaifunPM.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/puravidaapps/TaifunPM/TaifunPM;->AsyncGet()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/puravidaapps/TaifunPM/TaifunPM;

.field final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/puravidaapps/TaifunPM/TaifunPM;Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 197
    move-object v0, p0

    .local v0, "this":Lcom/puravidaapps/TaifunPM/TaifunPM$2;
    move-object v1, p1

    .local v1, "this$0":Lcom/puravidaapps/TaifunPM/TaifunPM;
    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/puravidaapps/TaifunPM/TaifunPM$2;->this$0:Lcom/puravidaapps/TaifunPM/TaifunPM;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/puravidaapps/TaifunPM/TaifunPM$2;->val$result:Ljava/lang/Object;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 200
    move-object v0, p0

    .local v0, "this":Lcom/puravidaapps/TaifunPM/TaifunPM$2;
    move-object v1, v0

    iget-object v1, v1, Lcom/puravidaapps/TaifunPM/TaifunPM$2;->this$0:Lcom/puravidaapps/TaifunPM/TaifunPM;

    move-object v2, v0

    iget-object v2, v2, Lcom/puravidaapps/TaifunPM/TaifunPM$2;->val$result:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/puravidaapps/TaifunPM/TaifunPM;->GotPackages(Ljava/lang/Object;)V

    .line 201
    return-void
.end method
