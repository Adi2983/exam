.class public Lcom/kodular/fabextension/FloatingActionButtonExtension;
.super Ljava/lang/Object;
.source "FloatingActionButtonExtension.java"


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private animationDuration:I

.field private appCompatActivity:Landroidx/appcompat/app/AppCompatActivity;

.field private backgroundColor:I

.field private callFabClickOnTextClick:Z

.field private callFabLongClickOnTextLongClick:Z

.field public cornerRadius:F

.field private floatingActionButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

.field private hideTextOnClick:Z

.field private hideTextOnLongClick:Z

.field private isTextVisible:Z

.field private showTextOnLeftSide:Z

.field private text:Ljava/lang/String;

.field private textColor:I

.field private textView:Landroid/widget/TextView;

.field private useAnimations:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/kodular/fabextension/FloatingActionButtonExtension;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 20
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/kodular/fabextension/FloatingActionButtonExtension;->LOG_TAG:Ljava/lang/String;

    .line 24
    move-object v1, v0

    const-string/jumbo v2, "#616161"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/kodular/fabextension/FloatingActionButtonExtension;->backgroundColor:I

    .line 25
    move-object v1, v0

    const-string/jumbo v2, "#ffffff"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/kodular/fabextension/FloatingActionButtonExtension;->textColor:I

    .line 27
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/kodular/fabextension/FloatingActionButtonExtension;->hideTextOnClick:Z

    .line 28
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/kodular/fabextension/FloatingActionButtonExtension;->hideTextOnLongClick:Z

    .line 29
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/kodular/fabextension/FloatingActionButtonExtension;->showTextOnLeftSide:Z

    .line 30
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/kodular/fabextension/FloatingActionButtonExtension;->isTextVisible:Z

    .line 31
    move-object v1, v0

    const/16 v2, 0x7d

    iput v2, v1, Lcom/kodular/fabextension/FloatingActionButtonExtension;->animationDuration:I

    .line 32
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/kodular/fabextension/FloatingActionButtonExtension;->useAnimations:Z

    .line 33
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/kodular/fabextension/FloatingActionButtonExtension;->callFabClickOnTextClick:Z

    .line 34
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/kodular/fabextension/FloatingActionButtonExtension;->callFabLongClickOnTextLongClick:Z

    .line 35
    move-object v1, v0

    const/high16 v2, 0x41000000    # 8.0f

    iput v2, v1, Lcom/kodular/fabextension/FloatingActionButtonExtension;->cornerRadius:F

    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V
    .locals 4

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/kodular/fabextension/FloatingActionButtonExtension;
    move-object v1, p1

    .local v1, "floatingActionButton":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 20
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/kodular/fabextension/FloatingActionButtonExtension;->LOG_TAG:Ljava/lang/String;

    .line 24
    move-object v2, v0

    const-string/jumbo v3, "#616161"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/kodular/fabextension/FloatingActionButtonExtension;->backgroundColor:I

    .line 25
    move-object v2, v0

    const-string/jumbo v3, "#ffffff"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/kodular/fabextension/FloatingActionButtonExtension;->textColor:I

    .line 27
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/kodular/fabextension/FloatingActionButtonExtension;->hideTextOnClick:Z

    .line 28
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/kodular/fabextension/FloatingActionButtonExtension;->hideTextOnLongClick:Z

    .line 29
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/kodular/fabextension/FloatingActionButtonExtension;->showTextOnLeftSide:Z

    .line 30
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/kodular/fabextension/FloatingActionButtonExtension;->isTextVisible:Z

    .line 31
    move-object v2, v0

    const/16 v3, 0x7d

    iput v3, v2, Lcom/kodular/fabextension/FloatingActionButtonExtension;->animationDuration:I

    .line 32
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/kodular/fabextension/FloatingActionButtonExtension;->useAnimations:Z

    .line 33
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/kodular/fabextension/FloatingActionButtonExtension;->callFabClickOnTextClick:Z

    .line 34
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/kodular/fabextension/FloatingActionButtonExtension;->callFabLongClickOnTextLongClick:Z

    .line 35
    move-object v2, v0

    const/high16 v3, 0x41000000    # 8.0f

    iput v3, v2, Lcom/kodular/fabextension/FloatingActionButtonExtension;->cornerRadius:F

    .line 49
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/kodular/fabextension/FloatingActionButtonExtension;->setFloatingActionButton(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/kodular/fabextension/FloatingActionButtonExtension;)Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    .locals 2

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "x0":Lcom/kodular/fabextension/FloatingActionButtonExtension;
    move-object v1, v0

    iget-object v1, v1, Lcom/kodular/fabextension/FloatingActionButtonExtension;->floatingActionButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-object v0, v1

    .end local v0    # "x0":Lcom/kodular/fabextension/FloatingActionButtonExtension;
    return-object v0
.end method

.method static synthetic access$100(Lcom/kodular/fabextension/FloatingActionButtonExtension;)Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "x0":Lcom/kodular/fabextension/FloatingActionButtonExtension;
    move-object v1, v0

    iget-object v1, v1, Lcom/kodular/fabextension/FloatingActionButtonExtension;->textView:Landroid/widget/TextView;

    move-object v0, v1

    .end local v0    # "x0":Lcom/kodular/fabextension/FloatingActionButtonExtension;
    return-object v0
.end method

.method static synthetic access$102(Lcom/kodular/fabextension/FloatingActionButtonExtension;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 7

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "x0":Lcom/kodular/fabextension/FloatingActionButtonExtension;
    move-object v1, p1

    .local v1, "x1":Landroid/widget/TextView;
    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Lcom/kodular/fabextension/FloatingActionButtonExtension;->textView:Landroid/widget/TextView;

    move-object v0, v2

    .end local v0    # "x0":Lcom/kodular/fabextension/FloatingActionButtonExtension;
    return-object v0
.end method

.method static synthetic access$200(Lcom/kodular/fabextension/FloatingActionButtonExtension;I)I
    .locals 4

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "x0":Lcom/kodular/fabextension/FloatingActionButtonExtension;
    move v1, p1

    .local v1, "x1":I
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lcom/kodular/fabextension/FloatingActionButtonExtension;->dpUnit(I)I

    move-result v2

    move v0, v2

    .end local v0    # "x0":Lcom/kodular/fabextension/FloatingActionButtonExtension;
    return v0
.end method

.method static synthetic access$302(Lcom/kodular/fabextension/FloatingActionButtonExtension;Z)Z
    .locals 7

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "x0":Lcom/kodular/fabextension/FloatingActionButtonExtension;
    move v1, p1

    .local v1, "x1":Z
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Lcom/kodular/fabextension/FloatingActionButtonExtension;->isTextVisible:Z

    move v0, v2

    .end local v0    # "x0":Lcom/kodular/fabextension/FloatingActionButtonExtension;
    return v0
.end method

.method static synthetic access$400(Lcom/kodular/fabextension/FloatingActionButtonExtension;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "x0":Lcom/kodular/fabextension/FloatingActionButtonExtension;
    move-object v1, v0

    iget-object v1, v1, Lcom/kodular/fabextension/FloatingActionButtonExtension;->LOG_TAG:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "x0":Lcom/kodular/fabextension/FloatingActionButtonExtension;
    return-object v0
.end method

.method private calculateDistanceToFab()V
    .locals 6

    .prologue
    .line 364
    move-object v0, p0

    .local v0, "this":Lcom/kodular/fabextension/FloatingActionButtonExtension;
    move-object v1, v0

    iget-object v1, v1, Lcom/kodular/fabextension/FloatingActionButtonExtension;->textView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/kodular/fabextension/FloatingActionButtonExtension;->floatingActionButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-nez v1, :cond_1

    .line 365
    .line 382
    :cond_0
    :goto_0
    return-void

    .line 367
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Lcom/kodular/fabextension/FloatingActionButtonExtension;->textView:Landroid/widget/TextView;

    new-instance v2, Lcom/kodular/fabextension/FloatingActionButtonExtension$4;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/kodular/fabextension/FloatingActionButtonExtension$4;-><init>(Lcom/kodular/fabextension/FloatingActionButtonExtension;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    move-result v1

    .line 382
    goto :goto_0
.end method

.method private dpUnit(D)I
    .locals 7

    .prologue
    .line 463
    move-object v0, p0

    .local v0, "this":Lcom/kodular/fabextension/FloatingActionButtonExtension;
    move-wide v1, p1

    .local v1, "dp":D
    const/4 v3, 0x1

    move-wide v4, v1

    double-to-float v4, v4

    move-object v5, v0

    iget-object v5, v5, Lcom/kodular/fabextension/FloatingActionButtonExtension;->appCompatActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v5}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    move v0, v3

    .end local v0    # "this":Lcom/kodular/fabextension/FloatingActionButtonExtension;
    return v0
.end method

.method private dpUnit(I)I
    .locals 5

    .prologue
    .line 459
    move-object v0, p0

    .local v0, "this":Lcom/kodular/fabextension/FloatingActionButtonExtension;
    move v1, p1

    .local v1, "dp":I
    const/4 v2, 0x1

    move v3, v1

    int-to-float v3, v3

    move-object v4, v0

    iget-object v4, v4, Lcom/kodular/fabextension/FloatingActionButtonExtension;->appCompatActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v4}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    move v0, v2

    .end local v0    # "this":Lcom/kodular/fabextension/FloatingActionButtonExtension;
    return v0
.end method

.method private startHideAnimation()V
    .locals 4

    .prologue
    .line 451
    move-object v0, p0

    .local v0, "this":Lcom/kodular/fabextension/FloatingActionButtonExtension;
    move-object v1, v0

    iget-object v1, v1, Lcom/kodular/fabextension/FloatingActionButtonExtension;->textView:Landroid/widget/TextView;

    if-nez v1, :cond_0

    .line 452
    .line 456
    :goto_0
    return-void

    .line 454
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/kodular/fabextension/FloatingActionButtonExtension;->textView:Landroid/widget/TextView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 455
    move-object v1, v0

    iget-object v1, v1, Lcom/kodular/fabextension/FloatingActionButtonExtension;->textView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/kodular/fabextension/FloatingActionButtonExtension;->animationDuration:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 456
    goto :goto_0
.end method

.method private startShowAnimation()V
    .locals 4

    .prologue
    .line 441
    move-object v0, p0

    .local v0, "this":Lcom/kodular/fabextension/FloatingActionButtonExtension;
    move-object v1, v0

    iget-object v1, v1, Lcom/kodular/fabextension/FloatingActionButtonExtension;->textView:Landroid/widget/TextView;

    if-nez v1, :cond_0

    .line 442
    .line 448
    :goto_0
    return-void

    .line 444
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/kodular/fabextension/FloatingActionButtonExtension;->textView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 445
    move-object v1, v0

    iget-object v1, v1, Lcom/kodular/fabextension/FloatingActionButtonExtension;->textView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 447
    move-object v1, v0

    iget-object v1, v1, Lcom/kodular/fabextension/FloatingActionButtonExtension;->textView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/kodular/fabextension/FloatingActionButtonExtension;->animationDuration:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 448
    goto :goto_0
.end method


# virtual methods
.method public getBackgroundColor()I
    .locals 2

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Lcom/kodular/fabextension/FloatingActionButtonExtension;
    move-object v1, v0

    iget v1, v1, Lcom/kodular/fabextension/FloatingActionButtonExtension;->backgroundColor:I

    move v0, v1

    .end local v0    # "this":Lcom/kodular/fabextension/FloatingActionButtonExtension;
    return v0
.end method

.method public getFloatingActionButton()Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    .locals 2

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Lcom/kodular/fabextension/FloatingActionButtonExtension;
    move-object v1, v0

    iget-object v1, v1, Lcom/kodular/fabextension/FloatingActionButtonExtension;->floatingActionButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-object v0, v1

    .end local v0    # "this":Lcom/kodular/fabextension/FloatingActionButtonExtension;
    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lcom/kodular/fabextension/FloatingActionButtonExtension;
    move-object v1, v0

    iget-object v1, v1, Lcom/kodular/fabextension/FloatingActionButtonExtension;->text:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/kodular/fabextension/FloatingActionButtonExtension;
    return-object v0
.end method

.method public getTextColor()I
    .locals 2

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Lcom/kodular/fabextension/FloatingActionButtonExtension;
    move-object v1, v0

    iget v1, v1, Lcom/kodular/fabextension/FloatingActionButtonExtension;->textColor:I

    move v0, v1

    .end local v0    # "this":Lcom/kodular/fabextension/FloatingActionButtonExtension;
    return v0
.end method

.method public hideText()V
    .locals 7

    .prologue
    .line 389
    move-object v0, p0

    .local v0, "this":Lcom/kodular/fabextension/FloatingActionButtonExtension;
    move-object v2, v0

    iget-object v2, v2, Lcom/kodular/fabextension/FloatingActionButtonExtension;->textView:Landroid/widget/TextView;

    if-nez v2, :cond_0

    .line 390
    .line 411
    :goto_0
    return-void

    .line 392
    :cond_0
    move-object v2, v0

    invoke-direct {v2}, Lcom/kodular/fabextension/FloatingActionButtonExtension;->startHideAnimation()V

    .line 395
    new-instance v2, Landroid/os/Handler;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    move-object v1, v2

    .line 396
    .local v1, "handler":Landroid/os/Handler;
    move-object v2, v1

    new-instance v3, Lcom/kodular/fabextension/FloatingActionButtonExtension$5;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/kodular/fabextension/FloatingActionButtonExtension$5;-><init>(Lcom/kodular/fabextension/FloatingActionButtonExtension;)V

    move-object v4, v0

    iget v4, v4, Lcom/kodular/fabextension/FloatingActionButtonExtension;->animationDuration:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v2

    .line 411
    goto :goto_0
.end method

.method public invalidateOnOrientationChange()V
    .locals 6

    .prologue
    .line 419
    move-object v0, p0

    .local v0, "this":Lcom/kodular/fabextension/FloatingActionButtonExtension;
    move-object v2, v0

    iget-object v2, v2, Lcom/kodular/fabextension/FloatingActionButtonExtension;->textView:Landroid/widget/TextView;

    if-nez v2, :cond_0

    .line 420
    .line 438
    :goto_0
    return-void

    .line 424
    :cond_0
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/kodular/fabextension/FloatingActionButtonExtension;->textView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object v1, v2

    .line 425
    .local v1, "parent":Landroid/view/ViewGroup;
    move-object v2, v1

    if-eqz v2, :cond_1

    .line 426
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/kodular/fabextension/FloatingActionButtonExtension;->textView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 429
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/kodular/fabextension/FloatingActionButtonExtension;->textView:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 430
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/kodular/fabextension/FloatingActionButtonExtension;->textView:Landroid/widget/TextView;

    .line 431
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/kodular/fabextension/FloatingActionButtonExtension;->isTextVisible:Z

    .line 432
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/kodular/fabextension/FloatingActionButtonExtension;->useAnimations:Z

    .line 433
    move-object v2, v0

    invoke-virtual {v2}, Lcom/kodular/fabextension/FloatingActionButtonExtension;->showText()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    .line 438
    .end local v1    # "parent":Landroid/view/ViewGroup;
    :cond_2
    :goto_1
    goto :goto_0

    .line 435
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 436
    .local v1, "e":Ljava/lang/Exception;
    move-object v2, v0

    iget-object v2, v2, Lcom/kodular/fabextension/FloatingActionButtonExtension;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    goto :goto_1
.end method

.method public isCallFabClickOnTextClick()Z
    .locals 2

    .prologue
    .line 200
    move-object v0, p0

    .local v0, "this":Lcom/kodular/fabextension/FloatingActionButtonExtension;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/kodular/fabextension/FloatingActionButtonExtension;->callFabClickOnTextClick:Z

    move v0, v1

    .end local v0    # "this":Lcom/kodular/fabextension/FloatingActionButtonExtension;
    return v0
.end method

.method public isCallFabLongClickOnTextLongClick()Z
    .locals 2

    .prologue
    .line 220
    move-object v0, p0

    .local v0, "this":Lcom/kodular/fabextension/FloatingActionButtonExtension;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/kodular/fabextension/FloatingActionButtonExtension;->callFabLongClickOnTextLongClick:Z

    move v0, v1

    .end local v0    # "this":Lcom/kodular/fabextension/FloatingActionButtonExtension;
    return v0
.end method

.method public isHideTextOnClick()Z
    .locals 2

    .prologue
    .line 160
    move-object v0, p0

    .local v0, "this":Lcom/kodular/fabextension/FloatingActionButtonExtension;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/kodular/fabextension/FloatingActionButtonExtension;->hideTextOnClick:Z

    move v0, v1

    .end local v0    # "this":Lcom/kodular/fabextension/FloatingActionButtonExtension;
    return v0
.end method

.method public isHideTextOnLongClick()Z
    .locals 2

    .prologue
    .line 180
    move-object v0, p0

    .local v0, "this":Lcom/kodular/fabextension/FloatingActionButtonExtension;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/kodular/fabextension/FloatingActionButtonExtension;->hideTextOnLongClick:Z

    move v0, v1

    .end local v0    # "this":Lcom/kodular/fabextension/FloatingActionButtonExtension;
    return v0
.end method

.method public isShowTextOnLeftSide()Z
    .locals 2

    .prologue
    .line 242
    move-object v0, p0

    .local v0, "this":Lcom/kodular/fabextension/FloatingActionButtonExtension;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/kodular/fabextension/FloatingActionButtonExtension;->showTextOnLeftSide:Z

    move v0, v1

    .end local v0    # "this":Lcom/kodular/fabextension/FloatingActionButtonExtension;
    return v0
.end method

.method public isTextVisible()Z
    .locals 2

    .prologue
    .line 252
    move-object v0, p0

    .local v0, "this":Lcom/kodular/fabextension/FloatingActionButtonExtension;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/kodular/fabextension/FloatingActionButtonExtension;->isTextVisible:Z

    move v0, v1

    .end local v0    # "this":Lcom/kodular/fabextension/FloatingActionButtonExtension;
    return v0
.end method

.method public setBackgroundColor(I)V
    .locals 5

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Lcom/kodular/fabextension/FloatingActionButtonExtension;
    move v1, p1

    .local v1, "backgroundColor":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/kodular/fabextension/FloatingActionButtonExtension;->backgroundColor:I

    .line 107
    move-object v2, v0

    iget-object v2, v2, Lcom/kodular/fabextension/FloatingActionButtonExtension;->textView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/kodular/fabextension/FloatingActionButtonExtension;->textView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 108
    move-object v2, v0

    iget-object v2, v2, Lcom/kodular/fabextension/FloatingActionButtonExtension;->textView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move v3, v1

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 110
    :cond_0
    return-void
.end method

.method public setCallFabClickOnTextClick(Z)V
    .locals 4

    .prologue
    .line 190
    move-object v0, p0

    .local v0, "this":Lcom/kodular/fabextension/FloatingActionButtonExtension;
    move v1, p1

    .local v1, "callFabClickOnTextClick":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/kodular/fabextension/FloatingActionButtonExtension;->callFabClickOnTextClick:Z

    .line 191
    return-void
.end method

.method public setCallFabLongClickOnTextLongClick(Z)V
    .locals 4

    .prologue
    .line 210
    move-object v0, p0

    .local v0, "this":Lcom/kodular/fabextension/FloatingActionButtonExtension;
    move v1, p1

    .local v1, "callFabLongClickOnTextLongClick":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/kodular/fabextension/FloatingActionButtonExtension;->callFabLongClickOnTextLongClick:Z

    .line 211
    return-void
.end method

.method public setFloatingActionButton(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V
    .locals 4

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Lcom/kodular/fabextension/FloatingActionButtonExtension;
    move-object v1, p1

    .local v1, "floatingActionButton":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/kodular/fabextension/FloatingActionButtonExtension;->floatingActionButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 130
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/app/AppCompatActivity;

    iput-object v3, v2, Lcom/kodular/fabextension/FloatingActionButtonExtension;->appCompatActivity:Landroidx/appcompat/app/AppCompatActivity;

    .line 131
    return-void
.end method

.method public setHideTextOnClick(Z)V
    .locals 4

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "this":Lcom/kodular/fabextension/FloatingActionButtonExtension;
    move v1, p1

    .local v1, "hideTextOnClick":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/kodular/fabextension/FloatingActionButtonExtension;->hideTextOnClick:Z

    .line 151
    return-void
.end method

.method public setHideTextOnLongClick(Z)V
    .locals 4

    .prologue
    .line 170
    move-object v0, p0

    .local v0, "this":Lcom/kodular/fabextension/FloatingActionButtonExtension;
    move v1, p1

    .local v1, "hideTextOnLongClick":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/kodular/fabextension/FloatingActionButtonExtension;->hideTextOnLongClick:Z

    .line 171
    return-void
.end method

.method public setShowTextOnLeftSide(Z)V
    .locals 4

    .prologue
    .line 229
    move-object v0, p0

    .local v0, "this":Lcom/kodular/fabextension/FloatingActionButtonExtension;
    move v1, p1

    .local v1, "showTextOnLeftSide":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/kodular/fabextension/FloatingActionButtonExtension;->showTextOnLeftSide:Z

    .line 230
    move-object v2, v0

    iget-object v2, v2, Lcom/kodular/fabextension/FloatingActionButtonExtension;->textView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 231
    move-object v2, v0

    invoke-direct {v2}, Lcom/kodular/fabextension/FloatingActionButtonExtension;->calculateDistanceToFab()V

    .line 233
    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/kodular/fabextension/FloatingActionButtonExtension;
    move-object v1, p1

    .local v1, "text":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/kodular/fabextension/FloatingActionButtonExtension;->text:Ljava/lang/String;

    .line 60
    move-object v2, v0

    iget-object v2, v2, Lcom/kodular/fabextension/FloatingActionButtonExtension;->textView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 61
    move-object v2, v0

    iget-object v2, v2, Lcom/kodular/fabextension/FloatingActionButtonExtension;->textView:Landroid/widget/TextView;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    move-object v2, v0

    invoke-direct {v2}, Lcom/kodular/fabextension/FloatingActionButtonExtension;->calculateDistanceToFab()V

    .line 64
    :cond_0
    return-void
.end method

.method public setTextColor(I)V
    .locals 4

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Lcom/kodular/fabextension/FloatingActionButtonExtension;
    move v1, p1

    .local v1, "textColor":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/kodular/fabextension/FloatingActionButtonExtension;->textColor:I

    .line 84
    move-object v2, v0

    iget-object v2, v2, Lcom/kodular/fabextension/FloatingActionButtonExtension;->textView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 85
    move-object v2, v0

    iget-object v2, v2, Lcom/kodular/fabextension/FloatingActionButtonExtension;->textView:Landroid/widget/TextView;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 87
    :cond_0
    return-void
.end method

.method public showText()V
    .locals 11

    .prologue
    .line 287
    move-object v1, p0

    .local v1, "this":Lcom/kodular/fabextension/FloatingActionButtonExtension;
    move-object v4, v1

    iget-object v4, v4, Lcom/kodular/fabextension/FloatingActionButtonExtension;->floatingActionButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-nez v4, :cond_0

    .line 288
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const-string/jumbo v6, "Have you setup a floating action button?"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 291
    :cond_0
    move-object v4, v1

    iget-object v4, v4, Lcom/kodular/fabextension/FloatingActionButtonExtension;->textView:Landroid/widget/TextView;

    if-eqz v4, :cond_1

    .line 292
    .line 358
    :goto_0
    return-void

    .line 295
    :cond_1
    move-object v4, v1

    new-instance v5, Landroid/widget/TextView;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v1

    iget-object v7, v7, Lcom/kodular/fabextension/FloatingActionButtonExtension;->appCompatActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-direct {v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v4, Lcom/kodular/fabextension/FloatingActionButtonExtension;->textView:Landroid/widget/TextView;

    .line 296
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const/4 v6, -0x2

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v2, v4

    .line 298
    .local v2, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    move-object v4, v1

    iget-object v4, v4, Lcom/kodular/fabextension/FloatingActionButtonExtension;->textView:Landroid/widget/TextView;

    move-object v5, v1

    invoke-virtual {v5}, Lcom/kodular/fabextension/FloatingActionButtonExtension;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    move-object v4, v1

    iget-object v4, v4, Lcom/kodular/fabextension/FloatingActionButtonExtension;->textView:Landroid/widget/TextView;

    move-object v5, v1

    invoke-virtual {v5}, Lcom/kodular/fabextension/FloatingActionButtonExtension;->getTextColor()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 301
    move-object v4, v1

    iget-object v4, v4, Lcom/kodular/fabextension/FloatingActionButtonExtension;->textView:Landroid/widget/TextView;

    move-object v5, v1

    const/16 v6, 0x17

    invoke-direct {v5, v6}, Lcom/kodular/fabextension/FloatingActionButtonExtension;->dpUnit(I)I

    move-result v5

    move-object v6, v1

    const/4 v7, 0x6

    invoke-direct {v6, v7}, Lcom/kodular/fabextension/FloatingActionButtonExtension;->dpUnit(I)I

    move-result v6

    move-object v7, v1

    const/16 v8, 0x17

    invoke-direct {v7, v8}, Lcom/kodular/fabextension/FloatingActionButtonExtension;->dpUnit(I)I

    move-result v7

    move-object v8, v1

    const/4 v9, 0x6

    invoke-direct {v8, v9}, Lcom/kodular/fabextension/FloatingActionButtonExtension;->dpUnit(I)I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 302
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    invoke-direct {v5}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    move-object v3, v4

    .line 303
    .local v3, "gradientDrawable":Landroid/graphics/drawable/GradientDrawable;
    move-object v4, v3

    move-object v5, v1

    move-object v6, v1

    iget v6, v6, Lcom/kodular/fabextension/FloatingActionButtonExtension;->cornerRadius:F

    float-to-double v6, v6

    invoke-direct {v5, v6, v7}, Lcom/kodular/fabextension/FloatingActionButtonExtension;->dpUnit(D)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 304
    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v5}, Lcom/kodular/fabextension/FloatingActionButtonExtension;->getBackgroundColor()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 306
    move-object v4, v1

    iget-object v4, v4, Lcom/kodular/fabextension/FloatingActionButtonExtension;->textView:Landroid/widget/TextView;

    new-instance v5, Lcom/kodular/fabextension/FloatingActionButtonExtension$1;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v1

    invoke-direct {v6, v7}, Lcom/kodular/fabextension/FloatingActionButtonExtension$1;-><init>(Lcom/kodular/fabextension/FloatingActionButtonExtension;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    move-object v4, v1

    iget-object v4, v4, Lcom/kodular/fabextension/FloatingActionButtonExtension;->textView:Landroid/widget/TextView;

    new-instance v5, Lcom/kodular/fabextension/FloatingActionButtonExtension$2;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v1

    invoke-direct {v6, v7}, Lcom/kodular/fabextension/FloatingActionButtonExtension$2;-><init>(Lcom/kodular/fabextension/FloatingActionButtonExtension;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 333
    move-object v4, v1

    iget-object v4, v4, Lcom/kodular/fabextension/FloatingActionButtonExtension;->textView:Landroid/widget/TextView;

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 334
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_2

    .line 335
    move-object v4, v1

    iget-object v4, v4, Lcom/kodular/fabextension/FloatingActionButtonExtension;->textView:Landroid/widget/TextView;

    move-object v5, v1

    const/4 v6, 0x2

    invoke-direct {v5, v6}, Lcom/kodular/fabextension/FloatingActionButtonExtension;->dpUnit(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setElevation(F)V

    .line 337
    :cond_2
    move-object v4, v1

    iget-object v4, v4, Lcom/kodular/fabextension/FloatingActionButtonExtension;->appCompatActivity:Landroidx/appcompat/app/AppCompatActivity;

    move-object v5, v1

    iget-object v5, v5, Lcom/kodular/fabextension/FloatingActionButtonExtension;->textView:Landroid/widget/TextView;

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Landroidx/appcompat/app/AppCompatActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 339
    move-object v4, v1

    invoke-direct {v4}, Lcom/kodular/fabextension/FloatingActionButtonExtension;->calculateDistanceToFab()V

    .line 342
    move-object v4, v1

    iget-object v4, v4, Lcom/kodular/fabextension/FloatingActionButtonExtension;->textView:Landroid/widget/TextView;

    new-instance v5, Lcom/kodular/fabextension/FloatingActionButtonExtension$3;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v1

    invoke-direct {v6, v7}, Lcom/kodular/fabextension/FloatingActionButtonExtension$3;-><init>(Lcom/kodular/fabextension/FloatingActionButtonExtension;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    move-result v4

    .line 354
    move-object v4, v1

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/kodular/fabextension/FloatingActionButtonExtension;->isTextVisible:Z

    .line 355
    move-object v4, v1

    iget-boolean v4, v4, Lcom/kodular/fabextension/FloatingActionButtonExtension;->useAnimations:Z

    if-eqz v4, :cond_3

    .line 356
    move-object v4, v1

    invoke-direct {v4}, Lcom/kodular/fabextension/FloatingActionButtonExtension;->startShowAnimation()V

    .line 358
    :cond_3
    goto/16 :goto_0
.end method

.method public showText(Ljava/lang/String;IFIZZZZZ)V
    .locals 12

    .prologue
    .line 270
    move-object v0, p0

    .local v0, "this":Lcom/kodular/fabextension/FloatingActionButtonExtension;
    move-object v1, p1

    .local v1, "text":Ljava/lang/String;
    move v2, p2

    .local v2, "textColor":I
    move v3, p3

    .local v3, "cornerRadius":F
    move/from16 v4, p4

    .local v4, "backgroundColor":I
    move/from16 v5, p5

    .local v5, "showTextOnLeftSide":Z
    move/from16 v6, p6

    .local v6, "hideTextOnClick":Z
    move/from16 v7, p7

    .local v7, "hideTextOnLongClick":Z
    move/from16 v8, p8

    .local v8, "callFabClickOnTextClick":Z
    move/from16 v9, p9

    .local v9, "callFabLongClickOnTextLongClick":Z
    move-object v10, v0

    move-object v11, v1

    invoke-virtual {v10, v11}, Lcom/kodular/fabextension/FloatingActionButtonExtension;->setText(Ljava/lang/String;)V

    .line 271
    move-object v10, v0

    move v11, v2

    invoke-virtual {v10, v11}, Lcom/kodular/fabextension/FloatingActionButtonExtension;->setTextColor(I)V

    .line 272
    move-object v10, v0

    move v11, v3

    iput v11, v10, Lcom/kodular/fabextension/FloatingActionButtonExtension;->cornerRadius:F

    .line 273
    move-object v10, v0

    move v11, v4

    invoke-virtual {v10, v11}, Lcom/kodular/fabextension/FloatingActionButtonExtension;->setBackgroundColor(I)V

    .line 274
    move-object v10, v0

    move v11, v5

    invoke-virtual {v10, v11}, Lcom/kodular/fabextension/FloatingActionButtonExtension;->setShowTextOnLeftSide(Z)V

    .line 275
    move-object v10, v0

    move v11, v6

    invoke-virtual {v10, v11}, Lcom/kodular/fabextension/FloatingActionButtonExtension;->setHideTextOnClick(Z)V

    .line 276
    move-object v10, v0

    move v11, v7

    invoke-virtual {v10, v11}, Lcom/kodular/fabextension/FloatingActionButtonExtension;->setHideTextOnLongClick(Z)V

    .line 277
    move-object v10, v0

    move v11, v8

    invoke-virtual {v10, v11}, Lcom/kodular/fabextension/FloatingActionButtonExtension;->setCallFabClickOnTextClick(Z)V

    .line 278
    move-object v10, v0

    move v11, v9

    invoke-virtual {v10, v11}, Lcom/kodular/fabextension/FloatingActionButtonExtension;->setCallFabLongClickOnTextLongClick(Z)V

    .line 279
    move-object v10, v0

    invoke-virtual {v10}, Lcom/kodular/fabextension/FloatingActionButtonExtension;->showText()V

    .line 280
    return-void
.end method
