.class public Lcom/wooplr/spotlight/utils/SpotlightSequence;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static instance:Lcom/wooplr/spotlight/utils/SpotlightSequence;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private final TAG:Ljava/lang/String;

.field private activity:Landroid/app/Activity;

.field private config:Lcom/wooplr/spotlight/SpotlightConfig;

.field private lastClickTime:J

.field private queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/wooplr/spotlight/SpotlightView$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private spotlightSequenceListener:Lcom/wooplr/spotlight/utils/SpotlightSequenceListener;


# direct methods
.method private constructor <init>(Landroid/app/Activity;Lcom/wooplr/spotlight/SpotlightConfig;)V
    .locals 12

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v1

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v10, v4

    move-object v11, v5

    move-object v4, v10

    move-object v5, v11

    move-object v6, v10

    move-object v7, v11

    move-object v10, v6

    move-object v11, v7

    move-object v6, v10

    move-object v7, v11

    move-object v8, v10

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v9, "Tour Sequence"

    iput-object v9, v8, Lcom/wooplr/spotlight/utils/SpotlightSequence;->TAG:Ljava/lang/String;

    const-wide/16 v8, 0x0

    iput-wide v8, v7, Lcom/wooplr/spotlight/utils/SpotlightSequence;->lastClickTime:J

    const-string/jumbo v7, "Tour Sequence"

    const-string/jumbo v8, "NEW TOUR_SEQUENCE INSTANCE"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    move-object v7, v2

    iput-object v7, v6, Lcom/wooplr/spotlight/utils/SpotlightSequence;->activity:Landroid/app/Activity;

    move-object v6, v3

    invoke-direct {v5, v6}, Lcom/wooplr/spotlight/utils/SpotlightSequence;->setConfig(Lcom/wooplr/spotlight/SpotlightConfig;)V

    new-instance v5, Ljava/util/LinkedList;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v1, v6

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    move-object v5, v1

    iput-object v5, v4, Lcom/wooplr/spotlight/utils/SpotlightSequence;->queue:Ljava/util/Queue;

    return-void
.end method

.method static synthetic access$000(Lcom/wooplr/spotlight/utils/SpotlightSequence;)Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/wooplr/spotlight/utils/SpotlightSequence;->isFastDoubleClick()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method static synthetic access$100(Lcom/wooplr/spotlight/utils/SpotlightSequence;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/wooplr/spotlight/utils/SpotlightSequence;->playNext()V

    return-void
.end method

.method public static getInstance(Landroid/app/Activity;Lcom/wooplr/spotlight/SpotlightConfig;)Lcom/wooplr/spotlight/utils/SpotlightSequence;
    .locals 7

    move-object v0, p0

    move-object v1, p1

    sget-object v2, Lcom/wooplr/spotlight/utils/SpotlightSequence;->instance:Lcom/wooplr/spotlight/utils/SpotlightSequence;

    if-nez v2, :cond_0

    new-instance v2, Lcom/wooplr/spotlight/utils/SpotlightSequence;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/wooplr/spotlight/utils/SpotlightSequence;-><init>(Landroid/app/Activity;Lcom/wooplr/spotlight/SpotlightConfig;)V

    sput-object v2, Lcom/wooplr/spotlight/utils/SpotlightSequence;->instance:Lcom/wooplr/spotlight/utils/SpotlightSequence;

    :cond_0
    sget-object v2, Lcom/wooplr/spotlight/utils/SpotlightSequence;->instance:Lcom/wooplr/spotlight/utils/SpotlightSequence;

    move-object v0, v2

    return-object v0
.end method

.method private isFastDoubleClick()Z
    .locals 12

    move-object v1, p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-wide v10, v6

    move-wide v6, v10

    move-wide v8, v10

    move-wide v2, v8

    move-object v8, v1

    iget-wide v8, v8, Lcom/wooplr/spotlight/utils/SpotlightSequence;->lastClickTime:J

    sub-long/2addr v6, v8

    move-wide v10, v6

    move-wide v6, v10

    move-wide v8, v10

    move-wide v4, v8

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    move-wide v6, v4

    const-wide/16 v8, 0x3e8

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    const/4 v6, 0x1

    move v1, v6

    :goto_0
    return v1

    :cond_0
    move-object v6, v1

    move-wide v7, v2

    iput-wide v7, v6, Lcom/wooplr/spotlight/utils/SpotlightSequence;->lastClickTime:J

    const/4 v6, 0x0

    move v1, v6

    goto :goto_0
.end method

.method private playNext()V
    .locals 7

    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/wooplr/spotlight/utils/SpotlightSequence;->queue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v1, v3

    if-eqz v2, :cond_1

    move-object v2, v1

    invoke-virtual {v2}, Lcom/wooplr/spotlight/SpotlightView$Builder;->show()Lcom/wooplr/spotlight/SpotlightView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/wooplr/spotlight/SpotlightView;->setReady(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string/jumbo v4, "Tour Sequence"

    const-string/jumbo v5, "END OF QUEUE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-direct {v3}, Lcom/wooplr/spotlight/utils/SpotlightSequence;->resetTour()V

    iget-object v2, v2, Lcom/wooplr/spotlight/utils/SpotlightSequence;->spotlightSequenceListener:Lcom/wooplr/spotlight/utils/SpotlightSequenceListener;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v0, v3

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-interface {v2}, Lcom/wooplr/spotlight/utils/SpotlightSequenceListener;->onSequenceEnd()V

    goto :goto_0
.end method

.method public static resetSpotlights(Landroid/content/Context;)V
    .locals 5
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object v0, p0

    new-instance v1, Lcom/wooplr/spotlight/prefs/PreferencesManager;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/wooplr/spotlight/prefs/PreferencesManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/wooplr/spotlight/prefs/PreferencesManager;->resetAll()V

    return-void
.end method

.method private resetTour()V
    .locals 6

    move-object v0, p0

    move-object v1, v0

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/4 v4, 0x0

    sput-object v4, Lcom/wooplr/spotlight/utils/SpotlightSequence;->instance:Lcom/wooplr/spotlight/utils/SpotlightSequence;

    iget-object v3, v3, Lcom/wooplr/spotlight/utils/SpotlightSequence;->queue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->clear()V

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/wooplr/spotlight/utils/SpotlightSequence;->activity:Landroid/app/Activity;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/wooplr/spotlight/utils/SpotlightSequence;->config:Lcom/wooplr/spotlight/SpotlightConfig;

    return-void
.end method

.method private setConfig(Lcom/wooplr/spotlight/SpotlightConfig;)V
    .locals 17
    .param p1    # Lcom/wooplr/spotlight/SpotlightConfig;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v2

    if-nez v3, :cond_0

    new-instance v3, Lcom/wooplr/spotlight/SpotlightConfig;

    move-object v15, v3

    move-object v3, v15

    move-object v4, v15

    move-object v15, v3

    move-object/from16 v16, v4

    move-object v3, v15

    move-object/from16 v4, v16

    move-object v5, v15

    move-object/from16 v6, v16

    move-object v15, v5

    move-object/from16 v16, v6

    move-object v5, v15

    move-object/from16 v6, v16

    move-object v7, v15

    move-object/from16 v8, v16

    move-object v15, v7

    move-object/from16 v16, v8

    move-object v7, v15

    move-object/from16 v8, v16

    move-object v9, v15

    move-object/from16 v10, v16

    move-object v15, v9

    move-object/from16 v16, v10

    move-object v9, v15

    move-object/from16 v10, v16

    move-object v11, v15

    move-object/from16 v12, v16

    move-object v15, v11

    move-object/from16 v16, v12

    move-object v11, v15

    move-object/from16 v12, v16

    move-object v13, v15

    move-object/from16 v14, v16

    move-object v2, v14

    invoke-direct {v13}, Lcom/wooplr/spotlight/SpotlightConfig;-><init>()V

    const-string/jumbo v13, "#eb273f"

    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/wooplr/spotlight/SpotlightConfig;->setLineAndArcColor(I)V

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/wooplr/spotlight/SpotlightConfig;->setDismissOnTouch(Z)V

    const/16 v11, 0xf0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v11, v12, v13, v14}, Landroid/graphics/Color;->argb(IIII)I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/wooplr/spotlight/SpotlightConfig;->setMaskColor(I)V

    const-string/jumbo v10, "#eb273f"

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/wooplr/spotlight/SpotlightConfig;->setHeadingTvColor(I)V

    const/16 v9, 0x20

    invoke-virtual {v8, v9}, Lcom/wooplr/spotlight/SpotlightConfig;->setHeadingTvSize(I)V

    const/16 v8, 0x10

    invoke-virtual {v7, v8}, Lcom/wooplr/spotlight/SpotlightConfig;->setSubHeadingTvSize(I)V

    const-string/jumbo v7, "#ffffff"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/wooplr/spotlight/SpotlightConfig;->setSubHeadingTvColor(I)V

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/wooplr/spotlight/SpotlightConfig;->setPerformClick(Z)V

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/wooplr/spotlight/SpotlightConfig;->setRevealAnimationEnabled(Z)V

    const-wide/16 v4, 0x190

    invoke-virtual {v3, v4, v5}, Lcom/wooplr/spotlight/SpotlightConfig;->setLineAnimationDuration(J)V

    :cond_0
    move-object v3, v1

    move-object v4, v2

    iput-object v4, v3, Lcom/wooplr/spotlight/utils/SpotlightSequence;->config:Lcom/wooplr/spotlight/SpotlightConfig;

    return-void
.end method


# virtual methods
.method public addSpotlight(Landroid/view/View;IILjava/lang/String;)Lcom/wooplr/spotlight/utils/SpotlightSequence;
    .locals 13
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, v0

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    iget-object v7, v7, Lcom/wooplr/spotlight/utils/SpotlightSequence;->activity:Landroid/app/Activity;

    move v8, v2

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v2, v7

    iget-object v6, v6, Lcom/wooplr/spotlight/utils/SpotlightSequence;->activity:Landroid/app/Activity;

    move v7, v3

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v0

    move-object v11, v8

    move-object v12, v9

    move-object v8, v12

    move-object v9, v11

    move-object v10, v0

    iget-object v10, v10, Lcom/wooplr/spotlight/utils/SpotlightSequence;->activity:Landroid/app/Activity;

    invoke-direct {v9, v10}, Lcom/wooplr/spotlight/SpotlightView$Builder;-><init>(Landroid/app/Activity;)V

    iget-object v8, v8, Lcom/wooplr/spotlight/utils/SpotlightSequence;->config:Lcom/wooplr/spotlight/SpotlightConfig;

    invoke-virtual {v7, v8}, Lcom/wooplr/spotlight/SpotlightView$Builder;->setConfiguration(Lcom/wooplr/spotlight/SpotlightConfig;)Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-result-object v7

    move-object v8, v2

    invoke-virtual {v7, v8}, Lcom/wooplr/spotlight/SpotlightView$Builder;->headingTvText(Ljava/lang/CharSequence;)Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-result-object v7

    move-object v8, v4

    invoke-virtual {v7, v8}, Lcom/wooplr/spotlight/SpotlightView$Builder;->usageId(Ljava/lang/String;)Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-result-object v7

    move-object v11, v6

    move-object v12, v7

    move-object v6, v12

    move-object v7, v11

    invoke-virtual {v6, v7}, Lcom/wooplr/spotlight/SpotlightView$Builder;->subHeadingTvText(Ljava/lang/CharSequence;)Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Lcom/wooplr/spotlight/SpotlightView$Builder;->target(Landroid/view/View;)Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-result-object v6

    new-instance v7, Lcom/wooplr/spotlight/utils/SpotlightSequence$2;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v0

    invoke-direct {v8, v9}, Lcom/wooplr/spotlight/utils/SpotlightSequence$2;-><init>(Lcom/wooplr/spotlight/utils/SpotlightSequence;)V

    invoke-virtual {v6, v7}, Lcom/wooplr/spotlight/SpotlightView$Builder;->setListener(Lcom/wooplr/spotlight/utils/SpotlightListener;)Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/wooplr/spotlight/SpotlightView$Builder;->enableDismissAfterShown(Z)Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-result-object v6

    move-object v0, v6

    iget-object v5, v5, Lcom/wooplr/spotlight/utils/SpotlightSequence;->queue:Ljava/util/Queue;

    move-object v6, v0

    invoke-interface {v5, v6}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    move-result v5

    sget-object v5, Lcom/wooplr/spotlight/utils/SpotlightSequence;->instance:Lcom/wooplr/spotlight/utils/SpotlightSequence;

    move-object v0, v5

    return-object v0
.end method

.method public addSpotlight(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wooplr/spotlight/utils/SpotlightSequence;
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object v5, v0

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Adding "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "Tour Sequence"

    move-object v10, v6

    move-object v11, v7

    move-object v6, v11

    move-object v7, v10

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    new-instance v6, Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    move-object v10, v7

    move-object v11, v8

    move-object v7, v11

    move-object v8, v10

    move-object v9, v0

    iget-object v9, v9, Lcom/wooplr/spotlight/utils/SpotlightSequence;->activity:Landroid/app/Activity;

    invoke-direct {v8, v9}, Lcom/wooplr/spotlight/SpotlightView$Builder;-><init>(Landroid/app/Activity;)V

    iget-object v7, v7, Lcom/wooplr/spotlight/utils/SpotlightSequence;->config:Lcom/wooplr/spotlight/SpotlightConfig;

    invoke-virtual {v6, v7}, Lcom/wooplr/spotlight/SpotlightView$Builder;->setConfiguration(Lcom/wooplr/spotlight/SpotlightConfig;)Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-result-object v6

    move-object v7, v2

    invoke-virtual {v6, v7}, Lcom/wooplr/spotlight/SpotlightView$Builder;->headingTvText(Ljava/lang/CharSequence;)Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-result-object v6

    move-object v7, v4

    invoke-virtual {v6, v7}, Lcom/wooplr/spotlight/SpotlightView$Builder;->usageId(Ljava/lang/String;)Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-result-object v6

    move-object v7, v3

    invoke-virtual {v6, v7}, Lcom/wooplr/spotlight/SpotlightView$Builder;->subHeadingTvText(Ljava/lang/CharSequence;)Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Lcom/wooplr/spotlight/SpotlightView$Builder;->target(Landroid/view/View;)Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-result-object v6

    new-instance v7, Lcom/wooplr/spotlight/utils/SpotlightSequence$1;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v0

    invoke-direct {v8, v9}, Lcom/wooplr/spotlight/utils/SpotlightSequence$1;-><init>(Lcom/wooplr/spotlight/utils/SpotlightSequence;)V

    invoke-virtual {v6, v7}, Lcom/wooplr/spotlight/SpotlightView$Builder;->setListener(Lcom/wooplr/spotlight/utils/SpotlightListener;)Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/wooplr/spotlight/SpotlightView$Builder;->enableDismissAfterShown(Z)Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-result-object v6

    move-object v0, v6

    iget-object v5, v5, Lcom/wooplr/spotlight/utils/SpotlightSequence;->queue:Ljava/util/Queue;

    move-object v6, v0

    invoke-interface {v5, v6}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    move-result v5

    sget-object v5, Lcom/wooplr/spotlight/utils/SpotlightSequence;->instance:Lcom/wooplr/spotlight/utils/SpotlightSequence;

    move-object v0, v5

    return-object v0
.end method

.method public setListener(Lcom/wooplr/spotlight/utils/SpotlightSequenceListener;)Lcom/wooplr/spotlight/utils/SpotlightSequence;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/wooplr/spotlight/utils/SpotlightSequence;->spotlightSequenceListener:Lcom/wooplr/spotlight/utils/SpotlightSequenceListener;

    sget-object v2, Lcom/wooplr/spotlight/utils/SpotlightSequence;->instance:Lcom/wooplr/spotlight/utils/SpotlightSequence;

    move-object v0, v2

    return-object v0
.end method

.method public startSequence()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/wooplr/spotlight/utils/SpotlightSequence;->queue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "Tour Sequence"

    const-string/jumbo v2, "EMPTY SEQUENCE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    :goto_0
    return-void

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/wooplr/spotlight/utils/SpotlightSequence;->queue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wooplr/spotlight/SpotlightView$Builder;

    invoke-virtual {v1}, Lcom/wooplr/spotlight/SpotlightView$Builder;->show()Lcom/wooplr/spotlight/SpotlightView;

    move-result-object v1

    goto :goto_0
.end method
