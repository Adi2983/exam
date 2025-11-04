.class public Lcom/jdl/FloatingView/FloatingView;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;

# interfaces
.implements Lcom/google/appinventor/components/runtime/ActivityResultListener;
.implements Lcom/google/appinventor/components/runtime/OnDestroyListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->EXTENSION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Floating View <br> Developed by Jarlisson"
    helpUrl = "https://github.com/jarlisson2/FloatingViewAIX"
    iconName = "aiwebres/icon.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
    external = true
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.ACTION_MANAGE_OVERLAY_PERMISSION,android.permission.SYSTEM_ALERT_WINDOW"
.end annotation


# static fields
.field private static final REQUEST_CODE_DRAW_OVERLAY_PERMISSION:I = 0x5

.field private static mIsFloatViewShowing:Z


# instance fields
.field public activity:Landroid/app/Activity;

.field private clickable:Z

.field public container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field public context:Landroid/content/Context;

.field private indexChild:I

.field public isRepl:Z

.field private mFloatViewFirstX:I

.field private mFloatViewFirstY:I

.field private mFloatViewLastX:I

.field private mFloatViewLastY:I

.field private mFloatViewTouchConsumedByMove:Z

.field private mWindowManager:Landroid/view/WindowManager;

.field private params:Landroid/view/WindowManager$LayoutParams;

.field private requestCode:I

.field private rl:Landroid/widget/RelativeLayout;

.field private viewHV:Landroid/view/View;

.field private viewParent:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/jdl/FloatingView/FloatingView;->mIsFloatViewShowing:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/jdl/FloatingView/FloatingView;->isRepl:Z

    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/jdl/FloatingView/FloatingView;->mFloatViewTouchConsumedByMove:Z

    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/jdl/FloatingView/FloatingView;->clickable:Z

    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/jdl/FloatingView/FloatingView;->requestCode:I

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, v2, Lcom/jdl/FloatingView/FloatingView;->context:Landroid/content/Context;

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/jdl/FloatingView/FloatingView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/jdl/FloatingView/FloatingView;->context:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    iput-object v3, v2, Lcom/jdl/FloatingView/FloatingView;->activity:Landroid/app/Activity;

    move-object v2, v0

    iget-object v2, v2, Lcom/jdl/FloatingView/FloatingView;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v3, v0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/jdl/FloatingView/FloatingView;)Landroid/widget/RelativeLayout;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/jdl/FloatingView/FloatingView;->rl:Landroid/widget/RelativeLayout;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$002(Lcom/jdl/FloatingView/FloatingView;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Lcom/jdl/FloatingView/FloatingView;->rl:Landroid/widget/RelativeLayout;

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Lcom/jdl/FloatingView/FloatingView;->mIsFloatViewShowing:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/jdl/FloatingView/FloatingView;)I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/jdl/FloatingView/FloatingView;->mFloatViewFirstY:I

    move v0, v1

    return v0
.end method

.method static synthetic access$1002(Lcom/jdl/FloatingView/FloatingView;I)I
    .locals 7

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Lcom/jdl/FloatingView/FloatingView;->mFloatViewFirstY:I

    move v0, v2

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 4

    move v0, p0

    move v1, v0

    move v3, v1

    move v1, v3

    move v2, v3

    sput-boolean v2, Lcom/jdl/FloatingView/FloatingView;->mIsFloatViewShowing:Z

    move v0, v1

    return v0
.end method

.method static synthetic access$1100(Lcom/jdl/FloatingView/FloatingView;)Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/jdl/FloatingView/FloatingView;->mFloatViewTouchConsumedByMove:Z

    move v0, v1

    return v0
.end method

.method static synthetic access$1102(Lcom/jdl/FloatingView/FloatingView;Z)Z
    .locals 7

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Lcom/jdl/FloatingView/FloatingView;->mFloatViewTouchConsumedByMove:Z

    move v0, v2

    return v0
.end method

.method static synthetic access$1200(Lcom/jdl/FloatingView/FloatingView;)Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/jdl/FloatingView/FloatingView;->clickable:Z

    move v0, v1

    return v0
.end method

.method static synthetic access$200(Lcom/jdl/FloatingView/FloatingView;)Landroid/view/WindowManager;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/jdl/FloatingView/FloatingView;->mWindowManager:Landroid/view/WindowManager;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$202(Lcom/jdl/FloatingView/FloatingView;Landroid/view/WindowManager;)Landroid/view/WindowManager;
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Lcom/jdl/FloatingView/FloatingView;->mWindowManager:Landroid/view/WindowManager;

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$300(Lcom/jdl/FloatingView/FloatingView;)Landroid/view/View;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/jdl/FloatingView/FloatingView;->viewHV:Landroid/view/View;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$400(Lcom/jdl/FloatingView/FloatingView;)I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/jdl/FloatingView/FloatingView;->indexChild:I

    move v0, v1

    return v0
.end method

.method static synthetic access$500(Lcom/jdl/FloatingView/FloatingView;)Landroid/view/ViewGroup;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/jdl/FloatingView/FloatingView;->viewParent:Landroid/view/ViewGroup;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$600(Lcom/jdl/FloatingView/FloatingView;)Landroid/view/WindowManager$LayoutParams;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/jdl/FloatingView/FloatingView;->params:Landroid/view/WindowManager$LayoutParams;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$700(Lcom/jdl/FloatingView/FloatingView;)I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/jdl/FloatingView/FloatingView;->mFloatViewLastX:I

    move v0, v1

    return v0
.end method

.method static synthetic access$702(Lcom/jdl/FloatingView/FloatingView;I)I
    .locals 7

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Lcom/jdl/FloatingView/FloatingView;->mFloatViewLastX:I

    move v0, v2

    return v0
.end method

.method static synthetic access$800(Lcom/jdl/FloatingView/FloatingView;)I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/jdl/FloatingView/FloatingView;->mFloatViewFirstX:I

    move v0, v1

    return v0
.end method

.method static synthetic access$802(Lcom/jdl/FloatingView/FloatingView;I)I
    .locals 7

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Lcom/jdl/FloatingView/FloatingView;->mFloatViewFirstX:I

    move v0, v2

    return v0
.end method

.method static synthetic access$900(Lcom/jdl/FloatingView/FloatingView;)I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/jdl/FloatingView/FloatingView;->mFloatViewLastY:I

    move v0, v1

    return v0
.end method

.method static synthetic access$902(Lcom/jdl/FloatingView/FloatingView;I)I
    .locals 7

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Lcom/jdl/FloatingView/FloatingView;->mFloatViewLastY:I

    move v0, v2

    return v0
.end method

.method private checkDrawOverlayPermission(Z)Z
    .locals 9

    move-object v0, p0

    move v1, p1

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_2

    move-object v3, v0

    iget-object v3, v3, Lcom/jdl/FloatingView/FloatingView;->context:Landroid/content/Context;

    invoke-static {v3}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v1

    if-eqz v3, :cond_1

    new-instance v3, Landroid/content/Intent;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const-string/jumbo v5, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "package:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lcom/jdl/FloatingView/FloatingView;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v2, v3

    move-object v3, v0

    iget v3, v3, Lcom/jdl/FloatingView/FloatingView;->requestCode:I

    if-nez v3, :cond_0

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/jdl/FloatingView/FloatingView;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/Form;->registerForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;)I

    move-result v4

    iput v4, v3, Lcom/jdl/FloatingView/FloatingView;->requestCode:I

    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/jdl/FloatingView/FloatingView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    move-object v4, v2

    const/4 v5, 0x5

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    const/4 v3, 0x0

    move v0, v3

    :goto_0
    return v0

    :cond_2
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0
.end method

.method private dismissFloatView()V
    .locals 6

    move-object v0, p0

    sget-boolean v1, Lcom/jdl/FloatingView/FloatingView;->mIsFloatViewShowing:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    sput-boolean v1, Lcom/jdl/FloatingView/FloatingView;->mIsFloatViewShowing:Z

    move-object v1, v0

    iget-object v1, v1, Lcom/jdl/FloatingView/FloatingView;->activity:Landroid/app/Activity;

    new-instance v2, Lcom/jdl/FloatingView/FloatingView$5;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/jdl/FloatingView/FloatingView$5;-><init>(Lcom/jdl/FloatingView/FloatingView;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private floatViewHV(II)V
    .locals 13

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, v0

    invoke-direct {v4}, Lcom/jdl/FloatingView/FloatingView;->dismissFloatView()V

    move-object v4, v0

    new-instance v5, Landroid/widget/RelativeLayout;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v0

    iget-object v7, v7, Lcom/jdl/FloatingView/FloatingView;->context:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, v4, Lcom/jdl/FloatingView/FloatingView;->rl:Landroid/widget/RelativeLayout;

    move-object v4, v0

    new-instance v5, Landroid/view/WindowManager$LayoutParams;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    const/4 v7, -0x2

    const/4 v8, -0x2

    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x1a

    if-lt v9, v10, :cond_1

    const/16 v9, 0x7f6

    :goto_0
    const v10, 0x40008

    const/4 v11, -0x3

    invoke-direct/range {v6 .. v11}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v5, v4, Lcom/jdl/FloatingView/FloatingView;->params:Landroid/view/WindowManager$LayoutParams;

    move-object v4, v0

    iget-object v4, v4, Lcom/jdl/FloatingView/FloatingView;->params:Landroid/view/WindowManager$LayoutParams;

    const/16 v5, 0x33

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move-object v4, v0

    iget-object v4, v4, Lcom/jdl/FloatingView/FloatingView;->params:Landroid/view/WindowManager$LayoutParams;

    move v5, v1

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    move-object v4, v0

    iget-object v4, v4, Lcom/jdl/FloatingView/FloatingView;->params:Landroid/view/WindowManager$LayoutParams;

    move v5, v2

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    move-object v4, v0

    iget-object v4, v4, Lcom/jdl/FloatingView/FloatingView;->viewHV:Landroid/view/View;

    instance-of v4, v4, Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    move-object v4, v0

    iget-object v4, v4, Lcom/jdl/FloatingView/FloatingView;->viewHV:Landroid/view/View;

    check-cast v4, Landroid/view/ViewGroup;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    :goto_1
    move-object v3, v4

    move-object v4, v3

    new-instance v5, Lcom/jdl/FloatingView/FloatingView$6;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/jdl/FloatingView/FloatingView$6;-><init>(Lcom/jdl/FloatingView/FloatingView;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v4, v3

    new-instance v5, Lcom/jdl/FloatingView/FloatingView$7;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/jdl/FloatingView/FloatingView$7;-><init>(Lcom/jdl/FloatingView/FloatingView;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    move-object v4, v0

    iget-object v4, v4, Lcom/jdl/FloatingView/FloatingView;->viewHV:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_0

    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/jdl/FloatingView/FloatingView;->viewHV:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, v4, Lcom/jdl/FloatingView/FloatingView;->viewParent:Landroid/view/ViewGroup;

    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/jdl/FloatingView/FloatingView;->viewParent:Landroid/view/ViewGroup;

    move-object v6, v0

    iget-object v6, v6, Lcom/jdl/FloatingView/FloatingView;->viewHV:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v5

    iput v5, v4, Lcom/jdl/FloatingView/FloatingView;->indexChild:I

    move-object v4, v0

    iget-object v4, v4, Lcom/jdl/FloatingView/FloatingView;->viewHV:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    move-object v5, v0

    iget-object v5, v5, Lcom/jdl/FloatingView/FloatingView;->viewHV:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/jdl/FloatingView/FloatingView;->rl:Landroid/widget/RelativeLayout;

    move-object v5, v0

    iget-object v5, v5, Lcom/jdl/FloatingView/FloatingView;->viewHV:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void

    :cond_1
    const/16 v9, 0x7d2

    goto/16 :goto_0

    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lcom/jdl/FloatingView/FloatingView;->viewHV:Landroid/view/View;

    goto :goto_1
.end method

.method private overlapView(Lcom/google/appinventor/components/runtime/AndroidViewComponent;Lcom/google/appinventor/components/runtime/AndroidViewComponent;Lcom/google/appinventor/components/runtime/util/YailList;I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move v9, v4

    if-nez v9, :cond_2

    const/16 v9, 0x33

    move v4, v9

    :cond_0
    :goto_0
    move-object v9, v2

    invoke-virtual {v9}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v9

    move-object v5, v9

    move-object v9, v5

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    if-eqz v9, :cond_1

    move-object v9, v5

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    move-object v10, v5

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    new-instance v9, Landroid/widget/FrameLayout;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v11, v0

    iget-object v11, v11, Lcom/jdl/FloatingView/FloatingView;->context:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object v6, v9

    move-object v9, v6

    move-object v10, v5

    invoke-virtual {v9, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    const/4 v11, -0x2

    const/4 v12, -0x2

    invoke-direct {v10, v11, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object v7, v9

    move-object v9, v7

    move v10, v4

    iput v10, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    move-object v9, v3

    invoke-virtual {v9}, Lcom/google/appinventor/components/runtime/util/YailList;->toStringArray()[Ljava/lang/String;

    move-result-object v9

    move-object v8, v9

    move-object v9, v7

    move-object v10, v8

    array-length v10, v10

    if-lez v10, :cond_a

    move-object v10, v8

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    :goto_1
    move-object v11, v8

    array-length v11, v11

    const/4 v12, 0x1

    if-le v11, v12, :cond_b

    move-object v11, v8

    const/4 v12, 0x1

    aget-object v11, v11, v12

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    :goto_2
    move-object v12, v8

    array-length v12, v12

    const/4 v13, 0x2

    if-le v12, v13, :cond_c

    move-object v12, v8

    const/4 v13, 0x2

    aget-object v12, v12, v13

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    :goto_3
    move-object v13, v8

    array-length v13, v13

    const/4 v14, 0x3

    if-le v13, v14, :cond_d

    move-object v13, v8

    const/4 v14, 0x3

    aget-object v13, v13, v14

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    :goto_4
    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    move-object v9, v6

    move-object v10, v7

    invoke-virtual {v9, v10}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v9, v1

    invoke-virtual {v9}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout;

    move-object v10, v6

    invoke-virtual {v9, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void

    :cond_2
    move v9, v4

    const/4 v10, 0x1

    if-ne v9, v10, :cond_3

    const/16 v9, 0x31

    move v4, v9

    goto/16 :goto_0

    :cond_3
    move v9, v4

    const/4 v10, 0x2

    if-ne v9, v10, :cond_4

    const/16 v9, 0x35

    move v4, v9

    goto/16 :goto_0

    :cond_4
    move v9, v4

    const/4 v10, 0x3

    if-ne v9, v10, :cond_5

    const/16 v9, 0x13

    move v4, v9

    goto/16 :goto_0

    :cond_5
    move v9, v4

    const/4 v10, 0x4

    if-ne v9, v10, :cond_6

    const/16 v9, 0x11

    move v4, v9

    goto/16 :goto_0

    :cond_6
    move v9, v4

    const/4 v10, 0x5

    if-ne v9, v10, :cond_7

    const/16 v9, 0x15

    move v4, v9

    goto/16 :goto_0

    :cond_7
    move v9, v4

    const/4 v10, 0x6

    if-ne v9, v10, :cond_8

    const/16 v9, 0x53

    move v4, v9

    goto/16 :goto_0

    :cond_8
    move v9, v4

    const/4 v10, 0x7

    if-ne v9, v10, :cond_9

    const/16 v9, 0x51

    move v4, v9

    goto/16 :goto_0

    :cond_9
    move v9, v4

    const/16 v10, 0x8

    if-ne v9, v10, :cond_0

    const/16 v9, 0x55

    move v4, v9

    goto/16 :goto_0

    :cond_a
    const/4 v10, 0x0

    goto/16 :goto_1

    :cond_b
    const/4 v11, 0x0

    goto :goto_2

    :cond_c
    const/4 v12, 0x0

    goto :goto_3

    :cond_d
    const/4 v13, 0x0

    goto :goto_4
.end method

.method private showFloatView()V
    .locals 6

    move-object v0, p0

    sget-boolean v1, Lcom/jdl/FloatingView/FloatingView;->mIsFloatViewShowing:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    sput-boolean v1, Lcom/jdl/FloatingView/FloatingView;->mIsFloatViewShowing:Z

    move-object v1, v0

    iget-object v1, v1, Lcom/jdl/FloatingView/FloatingView;->activity:Landroid/app/Activity;

    new-instance v2, Lcom/jdl/FloatingView/FloatingView$4;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/jdl/FloatingView/FloatingView$4;-><init>(Lcom/jdl/FloatingView/FloatingView;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public CheckDrawOverlayPermission()Z
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Checks whether the overlay permission is active."
    .end annotation

    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/jdl/FloatingView/FloatingView;->checkDrawOverlayPermission(Z)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public ClickView()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Executes after clicking on the floating component."
    .end annotation

    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "ClickView"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    return-void
.end method

.method public DismissViewFloating()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Hides the floating component."
    .end annotation

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/jdl/FloatingView/FloatingView;->dismissFloatView()V

    return-void
.end method

.method public GetClickable()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Checks whether the floating view is clickable."
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/jdl/FloatingView/FloatingView;->clickable:Z

    move v0, v1

    return v0
.end method

.method public GetFloatingViewVisible()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Checks if the floating is present on the screen."
    .end annotation

    move-object v0, p0

    sget-boolean v1, Lcom/jdl/FloatingView/FloatingView;->mIsFloatViewShowing:Z

    move v0, v1

    return v0
.end method

.method public GetPositionX()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Gets the X coordinate that the floating view is in."
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/jdl/FloatingView/FloatingView;->params:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    move v0, v1

    return v0
.end method

.method public GetPositionY()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Gets the Y coordinate that the floating view is in."
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/jdl/FloatingView/FloatingView;->params:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    move v0, v1

    return v0
.end method

.method public LoseFocusFloatingView()V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Loses focus on the floating window."
    .end annotation

    move-object v0, p0

    sget-boolean v1, Lcom/jdl/FloatingView/FloatingView;->mIsFloatViewShowing:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/jdl/FloatingView/FloatingView;->activity:Landroid/app/Activity;

    new-instance v2, Lcom/jdl/FloatingView/FloatingView$3;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/jdl/FloatingView/FloatingView$3;-><init>(Lcom/jdl/FloatingView/FloatingView;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public OverlapView(Lcom/google/appinventor/components/runtime/AndroidViewComponent;Lcom/google/appinventor/components/runtime/AndroidViewComponent;Lcom/google/appinventor/components/runtime/util/YailList;I)V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Through this block it is possible to overlap any visible component on another.\nmargins (list):\n\tindex 1 -> margin left (number)\n\tindex 2 -> margin top (number)\n\tindex 3 -> margin right(number)\n\tindex 4 -> margin bottom (number)\ngravity (number):\n\t0  -> TOP-LEFT\n\t1  -> TOP-CENTER\n\t2  -> TOP-RIGHT\n\t3  -> CENTER-LEFT\n\t4  -> CENTER\n\t5  -> CENTER-RIGHT\n\t6  -> BOTTOM-LEFT\n\t7  -> BOTTOM-CENTER\n\t8  -> BOTTOM-RIGHT\n"
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move v9, v4

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/jdl/FloatingView/FloatingView;->overlapView(Lcom/google/appinventor/components/runtime/AndroidViewComponent;Lcom/google/appinventor/components/runtime/AndroidViewComponent;Lcom/google/appinventor/components/runtime/util/YailList;I)V

    return-void
.end method

.method public PositionMoved(II)V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "View moved from position"
    .end annotation

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    const-string/jumbo v4, "PositionMoved"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move v8, v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x1

    move v8, v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v3

    return-void
.end method

.method public RequestDrawOverlayPermission()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Redirects to application settings to allow overlay permission."
    .end annotation

    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/jdl/FloatingView/FloatingView;->checkDrawOverlayPermission(Z)Z

    move-result v1

    return-void
.end method

.method public RequestFocusFloatingView()V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Prompts to focus on the floating window."
    .end annotation

    move-object v0, p0

    sget-boolean v1, Lcom/jdl/FloatingView/FloatingView;->mIsFloatViewShowing:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/jdl/FloatingView/FloatingView;->activity:Landroid/app/Activity;

    new-instance v2, Lcom/jdl/FloatingView/FloatingView$2;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/jdl/FloatingView/FloatingView$2;-><init>(Lcom/jdl/FloatingView/FloatingView;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public RestoreFloatingView()V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the floating window to the screen."
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/jdl/FloatingView/FloatingView;->activity:Landroid/app/Activity;

    new-instance v2, Lcom/jdl/FloatingView/FloatingView$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/jdl/FloatingView/FloatingView$1;-><init>(Lcom/jdl/FloatingView/FloatingView;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public SetClickable(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Adjusts whether the floating view is clickable"
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/jdl/FloatingView/FloatingView;->clickable:Z

    return-void
.end method

.method public SetPosition(II)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Moves the floating view to the indicated coordinates."
    .end annotation

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Lcom/jdl/FloatingView/FloatingView;->params:Landroid/view/WindowManager$LayoutParams;

    move v4, v1

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    move-object v3, v0

    iget-object v3, v3, Lcom/jdl/FloatingView/FloatingView;->params:Landroid/view/WindowManager$LayoutParams;

    move v4, v2

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    move-object v3, v0

    iget-object v3, v3, Lcom/jdl/FloatingView/FloatingView;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v3, :cond_0

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/jdl/FloatingView/FloatingView;->params:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    move-object v5, v0

    iget-object v5, v5, Lcom/jdl/FloatingView/FloatingView;->params:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v3, v4, v5}, Lcom/jdl/FloatingView/FloatingView;->PositionMoved(II)V

    move-object v3, v0

    iget-object v3, v3, Lcom/jdl/FloatingView/FloatingView;->mWindowManager:Landroid/view/WindowManager;

    move-object v4, v0

    iget-object v4, v4, Lcom/jdl/FloatingView/FloatingView;->rl:Landroid/widget/RelativeLayout;

    move-object v5, v0

    iget-object v5, v5, Lcom/jdl/FloatingView/FloatingView;->params:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v3, v4, v5}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public SetupView(Lcom/google/appinventor/components/runtime/AndroidViewComponent;ZII)V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Initializes the component you want to float."
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v6

    iput-object v6, v5, Lcom/jdl/FloatingView/FloatingView;->viewHV:Landroid/view/View;

    move-object v5, v0

    move v6, v2

    iput-boolean v6, v5, Lcom/jdl/FloatingView/FloatingView;->clickable:Z

    move-object v5, v0

    move v6, v3

    move v7, v4

    invoke-direct {v5, v6, v7}, Lcom/jdl/FloatingView/FloatingView;->floatViewHV(II)V

    return-void
.end method

.method public ShowFloatingView()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Displays the floating component."
    .end annotation

    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/jdl/FloatingView/FloatingView;->checkDrawOverlayPermission(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-direct {v1}, Lcom/jdl/FloatingView/FloatingView;->showFloatView()V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/jdl/FloatingView/FloatingView;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/jdl/FloatingView/FloatingView;->mWindowManager:Landroid/view/WindowManager;

    move-object v2, v0

    iget-object v2, v2, Lcom/jdl/FloatingView/FloatingView;->rl:Landroid/widget/RelativeLayout;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public resultReturned(IILandroid/content/Intent;)V
    .locals 6

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, v1

    const/4 v5, 0x5

    if-ne v4, v5, :cond_0

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lcom/jdl/FloatingView/FloatingView;->context:Landroid/content/Context;

    invoke-static {v4}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v0

    invoke-direct {v4}, Lcom/jdl/FloatingView/FloatingView;->showFloatView()V

    :cond_0
    return-void
.end method
