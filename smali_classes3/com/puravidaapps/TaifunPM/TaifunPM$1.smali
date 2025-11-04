.class Lcom/puravidaapps/TaifunPM/TaifunPM$1;
.super Ljava/lang/Object;
.source "TaifunPM.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/puravidaapps/TaifunPM/TaifunPM;->GetPackages()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/puravidaapps/TaifunPM/TaifunPM;


# direct methods
.method constructor <init>(Lcom/puravidaapps/TaifunPM/TaifunPM;)V
    .locals 4

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Lcom/puravidaapps/TaifunPM/TaifunPM$1;
    move-object v1, p1

    .local v1, "this$0":Lcom/puravidaapps/TaifunPM/TaifunPM;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/puravidaapps/TaifunPM/TaifunPM$1;->this$0:Lcom/puravidaapps/TaifunPM/TaifunPM;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Lcom/puravidaapps/TaifunPM/TaifunPM$1;
    move-object v1, v0

    iget-object v1, v1, Lcom/puravidaapps/TaifunPM/TaifunPM$1;->this$0:Lcom/puravidaapps/TaifunPM/TaifunPM;

    invoke-static {v1}, Lcom/puravidaapps/TaifunPM/TaifunPM;->access$000(Lcom/puravidaapps/TaifunPM/TaifunPM;)V

    .line 116
    return-void
.end method
