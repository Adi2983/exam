.class public Lcom/dreamers/AlphaDialog/AlphaDialog;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->EXTENSION:Lcom/google/appinventor/components/common/ComponentCategory;
    iconName = "https://res.cloudinary.com/dzqb4drjv/image/upload/v1608883763/circular-speech-bubble_c0z91r.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
    external = true
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private dialog:Landroid/app/Dialog;

.field private params:Landroid/view/WindowManager$LayoutParams;

.field private toast:Landroid/widget/Toast;

.field private toastView:Landroid/view/View;

.field private wrap:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/dreamers/AlphaDialog/AlphaDialog;->dialog:Landroid/app/Dialog;

    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/dreamers/AlphaDialog/AlphaDialog;->wrap:Z

    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/dreamers/AlphaDialog/AlphaDialog;->toastView:Landroid/view/View;

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, v2, Lcom/dreamers/AlphaDialog/AlphaDialog;->context:Landroid/content/Context;

    move-object v2, v0

    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v3, v2, Lcom/dreamers/AlphaDialog/AlphaDialog;->params:Landroid/view/WindowManager$LayoutParams;

    return-void
.end method


# virtual methods
.method public CreateDialog(Lcom/google/appinventor/components/runtime/AndroidViewComponent;Z)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v1

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v4

    move-object v3, v4

    move-object v4, v3

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    move-object v4, v3

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_0

    move-object v4, v3

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    move-object v4, v0

    new-instance v5, Landroid/app/Dialog;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    iget-object v7, v7, Lcom/dreamers/AlphaDialog/AlphaDialog;->context:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v5, v4, Lcom/dreamers/AlphaDialog/AlphaDialog;->dialog:Landroid/app/Dialog;

    move-object v4, v0

    iget-object v4, v4, Lcom/dreamers/AlphaDialog/AlphaDialog;->dialog:Landroid/app/Dialog;

    move v5, v2

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    move-object v4, v0

    iget-object v4, v4, Lcom/dreamers/AlphaDialog/AlphaDialog;->dialog:Landroid/app/Dialog;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    move-result v4

    move-object v4, v0

    iget-object v4, v4, Lcom/dreamers/AlphaDialog/AlphaDialog;->dialog:Landroid/app/Dialog;

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    move-object v4, v0

    iget-object v4, v4, Lcom/dreamers/AlphaDialog/AlphaDialog;->dialog:Landroid/app/Dialog;

    new-instance v5, Lcom/dreamers/AlphaDialog/AlphaDialog$1;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/dreamers/AlphaDialog/AlphaDialog$1;-><init>(Lcom/dreamers/AlphaDialog/AlphaDialog;)V

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    move-object v4, v0

    iget-object v4, v4, Lcom/dreamers/AlphaDialog/AlphaDialog;->dialog:Landroid/app/Dialog;

    new-instance v5, Lcom/dreamers/AlphaDialog/AlphaDialog$2;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/dreamers/AlphaDialog/AlphaDialog$2;-><init>(Lcom/dreamers/AlphaDialog/AlphaDialog;)V

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-void
.end method

.method public Dismiss()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/dreamers/AlphaDialog/AlphaDialog;->dialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/dreamers/AlphaDialog/AlphaDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public LongLength()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    move-object v0, p0

    const/4 v1, 0x1

    move v0, v1

    return v0
.end method

.method public OnDismiss()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "OnDismiss"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    return-void
.end method

.method public OnShow()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "OnShow"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    return-void
.end method

.method public ShortLength()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method public Show()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/dreamers/AlphaDialog/AlphaDialog;->dialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/dreamers/AlphaDialog/AlphaDialog;->params:Landroid/view/WindowManager$LayoutParams;

    move-object v2, v0

    iget-object v2, v2, Lcom/dreamers/AlphaDialog/AlphaDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    move-result v1

    move-object v1, v0

    iget-object v1, v1, Lcom/dreamers/AlphaDialog/AlphaDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    move-object v1, v0

    iget-object v1, v1, Lcom/dreamers/AlphaDialog/AlphaDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    move-object v1, v0

    iget-boolean v1, v1, Lcom/dreamers/AlphaDialog/AlphaDialog;->wrap:Z

    if-eqz v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Lcom/dreamers/AlphaDialog/AlphaDialog;->params:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    move-object v1, v0

    iget-object v1, v1, Lcom/dreamers/AlphaDialog/AlphaDialog;->params:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    :goto_0
    move-object v1, v0

    iget-object v1, v1, Lcom/dreamers/AlphaDialog/AlphaDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/dreamers/AlphaDialog/AlphaDialog;->params:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void

    :cond_1
    move-object v1, v0

    iget-object v1, v1, Lcom/dreamers/AlphaDialog/AlphaDialog;->params:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    move-object v1, v0

    iget-object v1, v1, Lcom/dreamers/AlphaDialog/AlphaDialog;->params:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_0
.end method

.method public ShowToast(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/dreamers/AlphaDialog/AlphaDialog;->toastView:Landroid/view/View;

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lcom/dreamers/AlphaDialog/AlphaDialog;->toastView:Landroid/view/View;

    move-object v5, v1

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v5

    if-eq v4, v5, :cond_1

    :cond_0
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v5

    iput-object v5, v4, Lcom/dreamers/AlphaDialog/AlphaDialog;->toastView:Landroid/view/View;

    move-object v4, v0

    iget-object v4, v4, Lcom/dreamers/AlphaDialog/AlphaDialog;->toastView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Lcom/dreamers/AlphaDialog/AlphaDialog;->toastView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    move-object v5, v0

    iget-object v5, v5, Lcom/dreamers/AlphaDialog/AlphaDialog;->toastView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/dreamers/AlphaDialog/AlphaDialog;->toastView:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    move-object v4, v0

    new-instance v5, Landroid/widget/Toast;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    iget-object v7, v7, Lcom/dreamers/AlphaDialog/AlphaDialog;->context:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object v5, v4, Lcom/dreamers/AlphaDialog/AlphaDialog;->toast:Landroid/widget/Toast;

    move-object v4, v0

    iget-object v4, v4, Lcom/dreamers/AlphaDialog/AlphaDialog;->toast:Landroid/widget/Toast;

    move-object v5, v0

    iget-object v5, v5, Lcom/dreamers/AlphaDialog/AlphaDialog;->toastView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    move-object v4, v0

    iget-object v4, v4, Lcom/dreamers/AlphaDialog/AlphaDialog;->toast:Landroid/widget/Toast;

    move v5, v2

    invoke-virtual {v4, v5}, Landroid/widget/Toast;->setDuration(I)V

    move-object v4, v0

    iget-object v4, v4, Lcom/dreamers/AlphaDialog/AlphaDialog;->toast:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v4

    move-object v3, v4

    move-object v4, v0

    iget-object v4, v4, Lcom/dreamers/AlphaDialog/AlphaDialog;->context:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public WrapContent(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/dreamers/AlphaDialog/AlphaDialog;->wrap:Z

    return-void
.end method

.method public WrapContent()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/dreamers/AlphaDialog/AlphaDialog;->wrap:Z

    move v0, v1

    return v0
.end method
