.class Lcom/puravidaapps/TaifunTools$1;
.super Ljava/lang/Object;
.source "TaifunTools.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$OnScanCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/puravidaapps/TaifunTools;->GalleryRefresh(Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/puravidaapps/TaifunTools;


# direct methods
.method constructor <init>(Lcom/puravidaapps/TaifunTools;)V
    .locals 4

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "this":Lcom/puravidaapps/TaifunTools$1;
    move-object v1, p1

    .local v1, "this$0":Lcom/puravidaapps/TaifunTools;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/puravidaapps/TaifunTools$1;->this$0:Lcom/puravidaapps/TaifunTools;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 7

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "this":Lcom/puravidaapps/TaifunTools$1;
    move-object v1, p1

    .local v1, "path":Ljava/lang/String;
    move-object v2, p2

    .local v2, "uri":Landroid/net/Uri;
    const-string/jumbo v3, "TaifunTools"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onScanCompleted, path: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", uri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 152
    return-void
.end method
