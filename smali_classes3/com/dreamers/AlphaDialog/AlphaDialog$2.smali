.class Lcom/dreamers/AlphaDialog/AlphaDialog$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dreamers/AlphaDialog/AlphaDialog;->CreateDialog(Lcom/google/appinventor/components/runtime/AndroidViewComponent;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dreamers/AlphaDialog/AlphaDialog;


# direct methods
.method constructor <init>(Lcom/dreamers/AlphaDialog/AlphaDialog;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/dreamers/AlphaDialog/AlphaDialog$2;->this$0:Lcom/dreamers/AlphaDialog/AlphaDialog;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 3

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/dreamers/AlphaDialog/AlphaDialog$2;->this$0:Lcom/dreamers/AlphaDialog/AlphaDialog;

    invoke-virtual {v2}, Lcom/dreamers/AlphaDialog/AlphaDialog;->OnShow()V

    return-void
.end method
