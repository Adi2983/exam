.class public Lcom/wooplr/spotlight/SpotlightView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wooplr/spotlight/SpotlightView$Builder;
    }
.end annotation


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private canvas:Landroid/graphics/Canvas;

.field private circleShape:Lcom/wooplr/spotlight/shape/Circle;

.field private dismissCalled:Z

.field private dismissOnBackPress:Z

.field private dismissOnTouch:Z

.field private enableDismissAfterShown:Z

.field private eraser:Landroid/graphics/Paint;

.field private extraPaddingForArc:I

.field private fadingTextDuration:J

.field private gutter:I

.field private handler:Landroid/os/Handler;

.field private headingTv:Landroid/widget/TextView;

.field private headingTvColor:I

.field private headingTvSize:I

.field private headingTvSizeDimenUnit:I

.field private headingTvText:Ljava/lang/CharSequence;

.field private height:I

.field private introAnimationDuration:J

.field private isPerformClick:Z

.field private isReady:Z

.field private isRevealAnimationEnabled:Z

.field private isShowAlways:Z

.field private lineAndArcColor:I

.field private lineAnimationDuration:J

.field private lineEffect:Landroid/graphics/PathEffect;

.field private lineStroke:I

.field private listener:Lcom/wooplr/spotlight/utils/SpotlightListener;

.field private mHeadingTypeface:Landroid/graphics/Typeface;

.field private mSubHeadingTypeface:Landroid/graphics/Typeface;

.field private maskColor:I

.field private padding:I

.field private preferencesManager:Lcom/wooplr/spotlight/prefs/PreferencesManager;

.field private showTargetArc:Z

.field private softwareBtnHeight:I

.field private subHeadingTv:Landroid/widget/TextView;

.field private subHeadingTvColor:I

.field private subHeadingTvSize:I

.field private subHeadingTvSizeDimenUnit:I

.field private subHeadingTvText:Ljava/lang/CharSequence;

.field private targetView:Lcom/wooplr/spotlight/target/Target;

.field private usageId:Ljava/lang/String;

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 33

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object v5, v3

    move-object v6, v4

    move-object v7, v3

    move-object/from16 v31, v7

    move-object/from16 v7, v31

    move-object/from16 v8, v31

    move-object/from16 v31, v8

    move-object/from16 v8, v31

    move-object/from16 v9, v31

    move-object/from16 v31, v8

    move-object/from16 v32, v9

    move-object/from16 v8, v31

    move-object/from16 v9, v32

    move-object/from16 v10, v31

    move-object/from16 v11, v32

    move-object/from16 v31, v10

    move-object/from16 v32, v11

    move-object/from16 v10, v31

    move-object/from16 v11, v32

    move-object/from16 v12, v31

    move-object/from16 v13, v32

    move-object/from16 v31, v12

    move-object/from16 v32, v13

    move-object/from16 v12, v31

    move-object/from16 v13, v32

    move-object/from16 v14, v31

    move-object/from16 v15, v32

    move-object/from16 v31, v14

    move-object/from16 v32, v15

    move-object/from16 v14, v31

    move-object/from16 v15, v32

    move-object/from16 v16, v31

    move-object/from16 v17, v32

    move-object/from16 v31, v16

    move-object/from16 v32, v17

    move-object/from16 v16, v31

    move-object/from16 v17, v32

    move-object/from16 v18, v31

    move-object/from16 v19, v32

    move-object/from16 v31, v18

    move-object/from16 v32, v19

    move-object/from16 v18, v31

    move-object/from16 v19, v32

    move-object/from16 v20, v31

    move-object/from16 v21, v32

    move-object/from16 v31, v20

    move-object/from16 v32, v21

    move-object/from16 v20, v31

    move-object/from16 v21, v32

    move-object/from16 v22, v31

    move-object/from16 v23, v32

    move-object/from16 v31, v22

    move-object/from16 v32, v23

    move-object/from16 v22, v31

    move-object/from16 v23, v32

    move-object/from16 v24, v31

    move-object/from16 v25, v32

    move-object/from16 v31, v24

    move-object/from16 v32, v25

    move-object/from16 v24, v31

    move-object/from16 v25, v32

    move-object/from16 v26, v31

    move-object/from16 v27, v32

    move-object/from16 v31, v26

    move-object/from16 v32, v27

    move-object/from16 v26, v31

    move-object/from16 v27, v32

    move-object/from16 v28, v31

    move-object/from16 v29, v32

    move-object/from16 v30, v4

    invoke-direct/range {v29 .. v30}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 v29, 0x70000000

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Lcom/wooplr/spotlight/SpotlightView;->maskColor:I

    const-wide/16 v28, 0x190

    move-wide/from16 v0, v28

    move-object/from16 v2, v27

    iput-wide v0, v2, Lcom/wooplr/spotlight/SpotlightView;->introAnimationDuration:J

    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/wooplr/spotlight/SpotlightView;->isRevealAnimationEnabled:Z

    const-wide/16 v26, 0x190

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/wooplr/spotlight/SpotlightView;->fadingTextDuration:J

    const/16 v25, 0x14

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lcom/wooplr/spotlight/SpotlightView;->padding:I

    const/16 v24, 0x24

    invoke-static/range {v24 .. v24}, Lcom/wooplr/spotlight/utils/Utils;->dpToPx(I)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/wooplr/spotlight/SpotlightView;->gutter:I

    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput-boolean v0, v1, Lcom/wooplr/spotlight/SpotlightView;->showTargetArc:Z

    const/16 v22, 0x18

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/wooplr/spotlight/SpotlightView;->extraPaddingForArc:I

    const/16 v21, 0x18

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/wooplr/spotlight/SpotlightView;->headingTvSize:I

    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/wooplr/spotlight/SpotlightView;->headingTvSizeDimenUnit:I

    const-string/jumbo v19, "#eb273f"

    invoke-static/range {v19 .. v19}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/wooplr/spotlight/SpotlightView;->headingTvColor:I

    const-string/jumbo v18, "Hello"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/wooplr/spotlight/SpotlightView;->headingTvText:Ljava/lang/CharSequence;

    const/16 v17, 0x18

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/wooplr/spotlight/SpotlightView;->subHeadingTvSize:I

    const/16 v16, -0x1

    move/from16 v0, v16

    iput v0, v15, Lcom/wooplr/spotlight/SpotlightView;->subHeadingTvSizeDimenUnit:I

    const-string/jumbo v15, "#ffffff"

    invoke-static {v15}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v15

    iput v15, v14, Lcom/wooplr/spotlight/SpotlightView;->subHeadingTvColor:I

    const-string/jumbo v14, "Hello"

    iput-object v14, v13, Lcom/wooplr/spotlight/SpotlightView;->subHeadingTvText:Ljava/lang/CharSequence;

    const-wide/16 v13, 0x12c

    iput-wide v13, v12, Lcom/wooplr/spotlight/SpotlightView;->lineAnimationDuration:J

    const-string/jumbo v12, "#eb273f"

    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v12

    iput v12, v11, Lcom/wooplr/spotlight/SpotlightView;->lineAndArcColor:I

    const/4 v11, 0x0

    iput-object v11, v10, Lcom/wooplr/spotlight/SpotlightView;->mHeadingTypeface:Landroid/graphics/Typeface;

    const/4 v10, 0x0

    iput-object v10, v9, Lcom/wooplr/spotlight/SpotlightView;->mSubHeadingTypeface:Landroid/graphics/Typeface;

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/wooplr/spotlight/SpotlightView;->isShowAlways:Z

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/wooplr/spotlight/SpotlightView;->dismissCalled:Z

    invoke-direct {v5, v6}, Lcom/wooplr/spotlight/SpotlightView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 36

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object v7, v4

    move-object v8, v5

    move-object v9, v4

    move-object/from16 v34, v9

    move-object/from16 v9, v34

    move-object/from16 v10, v34

    move-object/from16 v34, v10

    move-object/from16 v10, v34

    move-object/from16 v11, v34

    move-object/from16 v34, v10

    move-object/from16 v35, v11

    move-object/from16 v10, v34

    move-object/from16 v11, v35

    move-object/from16 v12, v34

    move-object/from16 v13, v35

    move-object/from16 v34, v12

    move-object/from16 v35, v13

    move-object/from16 v12, v34

    move-object/from16 v13, v35

    move-object/from16 v14, v34

    move-object/from16 v15, v35

    move-object/from16 v34, v14

    move-object/from16 v35, v15

    move-object/from16 v14, v34

    move-object/from16 v15, v35

    move-object/from16 v16, v34

    move-object/from16 v17, v35

    move-object/from16 v34, v16

    move-object/from16 v35, v17

    move-object/from16 v16, v34

    move-object/from16 v17, v35

    move-object/from16 v18, v34

    move-object/from16 v19, v35

    move-object/from16 v34, v18

    move-object/from16 v35, v19

    move-object/from16 v18, v34

    move-object/from16 v19, v35

    move-object/from16 v20, v34

    move-object/from16 v21, v35

    move-object/from16 v34, v20

    move-object/from16 v35, v21

    move-object/from16 v20, v34

    move-object/from16 v21, v35

    move-object/from16 v22, v34

    move-object/from16 v23, v35

    move-object/from16 v34, v22

    move-object/from16 v35, v23

    move-object/from16 v22, v34

    move-object/from16 v23, v35

    move-object/from16 v24, v34

    move-object/from16 v25, v35

    move-object/from16 v34, v24

    move-object/from16 v35, v25

    move-object/from16 v24, v34

    move-object/from16 v25, v35

    move-object/from16 v26, v34

    move-object/from16 v27, v35

    move-object/from16 v34, v26

    move-object/from16 v35, v27

    move-object/from16 v26, v34

    move-object/from16 v27, v35

    move-object/from16 v28, v34

    move-object/from16 v29, v35

    move-object/from16 v34, v28

    move-object/from16 v35, v29

    move-object/from16 v28, v34

    move-object/from16 v29, v35

    move-object/from16 v30, v34

    move-object/from16 v31, v35

    move-object/from16 v32, v5

    move-object/from16 v33, v6

    invoke-direct/range {v31 .. v33}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v31, 0x70000000

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput v0, v1, Lcom/wooplr/spotlight/SpotlightView;->maskColor:I

    const-wide/16 v30, 0x190

    move-wide/from16 v0, v30

    move-object/from16 v2, v29

    iput-wide v0, v2, Lcom/wooplr/spotlight/SpotlightView;->introAnimationDuration:J

    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput-boolean v0, v1, Lcom/wooplr/spotlight/SpotlightView;->isRevealAnimationEnabled:Z

    const-wide/16 v28, 0x190

    move-wide/from16 v0, v28

    move-object/from16 v2, v27

    iput-wide v0, v2, Lcom/wooplr/spotlight/SpotlightView;->fadingTextDuration:J

    const/16 v27, 0x14

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Lcom/wooplr/spotlight/SpotlightView;->padding:I

    const/16 v26, 0x24

    invoke-static/range {v26 .. v26}, Lcom/wooplr/spotlight/utils/Utils;->dpToPx(I)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lcom/wooplr/spotlight/SpotlightView;->gutter:I

    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/wooplr/spotlight/SpotlightView;->showTargetArc:Z

    const/16 v24, 0x18

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/wooplr/spotlight/SpotlightView;->extraPaddingForArc:I

    const/16 v23, 0x18

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lcom/wooplr/spotlight/SpotlightView;->headingTvSize:I

    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/wooplr/spotlight/SpotlightView;->headingTvSizeDimenUnit:I

    const-string/jumbo v21, "#eb273f"

    invoke-static/range {v21 .. v21}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/wooplr/spotlight/SpotlightView;->headingTvColor:I

    const-string/jumbo v20, "Hello"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/wooplr/spotlight/SpotlightView;->headingTvText:Ljava/lang/CharSequence;

    const/16 v19, 0x18

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/wooplr/spotlight/SpotlightView;->subHeadingTvSize:I

    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/wooplr/spotlight/SpotlightView;->subHeadingTvSizeDimenUnit:I

    const-string/jumbo v17, "#ffffff"

    invoke-static/range {v17 .. v17}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/wooplr/spotlight/SpotlightView;->subHeadingTvColor:I

    const-string/jumbo v16, "Hello"

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/wooplr/spotlight/SpotlightView;->subHeadingTvText:Ljava/lang/CharSequence;

    const-wide/16 v15, 0x12c

    iput-wide v15, v14, Lcom/wooplr/spotlight/SpotlightView;->lineAnimationDuration:J

    const-string/jumbo v14, "#eb273f"

    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v14

    iput v14, v13, Lcom/wooplr/spotlight/SpotlightView;->lineAndArcColor:I

    const/4 v13, 0x0

    iput-object v13, v12, Lcom/wooplr/spotlight/SpotlightView;->mHeadingTypeface:Landroid/graphics/Typeface;

    const/4 v12, 0x0

    iput-object v12, v11, Lcom/wooplr/spotlight/SpotlightView;->mSubHeadingTypeface:Landroid/graphics/Typeface;

    const/4 v11, 0x0

    iput-boolean v11, v10, Lcom/wooplr/spotlight/SpotlightView;->isShowAlways:Z

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/wooplr/spotlight/SpotlightView;->dismissCalled:Z

    invoke-direct {v7, v8}, Lcom/wooplr/spotlight/SpotlightView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 37

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move-object v7, v3

    move-object v8, v4

    move-object v9, v3

    move-object/from16 v35, v9

    move-object/from16 v9, v35

    move-object/from16 v10, v35

    move-object/from16 v35, v10

    move-object/from16 v10, v35

    move-object/from16 v11, v35

    move-object/from16 v35, v10

    move-object/from16 v36, v11

    move-object/from16 v10, v35

    move-object/from16 v11, v36

    move-object/from16 v12, v35

    move-object/from16 v13, v36

    move-object/from16 v35, v12

    move-object/from16 v36, v13

    move-object/from16 v12, v35

    move-object/from16 v13, v36

    move-object/from16 v14, v35

    move-object/from16 v15, v36

    move-object/from16 v35, v14

    move-object/from16 v36, v15

    move-object/from16 v14, v35

    move-object/from16 v15, v36

    move-object/from16 v16, v35

    move-object/from16 v17, v36

    move-object/from16 v35, v16

    move-object/from16 v36, v17

    move-object/from16 v16, v35

    move-object/from16 v17, v36

    move-object/from16 v18, v35

    move-object/from16 v19, v36

    move-object/from16 v35, v18

    move-object/from16 v36, v19

    move-object/from16 v18, v35

    move-object/from16 v19, v36

    move-object/from16 v20, v35

    move-object/from16 v21, v36

    move-object/from16 v35, v20

    move-object/from16 v36, v21

    move-object/from16 v20, v35

    move-object/from16 v21, v36

    move-object/from16 v22, v35

    move-object/from16 v23, v36

    move-object/from16 v35, v22

    move-object/from16 v36, v23

    move-object/from16 v22, v35

    move-object/from16 v23, v36

    move-object/from16 v24, v35

    move-object/from16 v25, v36

    move-object/from16 v35, v24

    move-object/from16 v36, v25

    move-object/from16 v24, v35

    move-object/from16 v25, v36

    move-object/from16 v26, v35

    move-object/from16 v27, v36

    move-object/from16 v35, v26

    move-object/from16 v36, v27

    move-object/from16 v26, v35

    move-object/from16 v27, v36

    move-object/from16 v28, v35

    move-object/from16 v29, v36

    move-object/from16 v35, v28

    move-object/from16 v36, v29

    move-object/from16 v28, v35

    move-object/from16 v29, v36

    move-object/from16 v30, v35

    move-object/from16 v31, v36

    move-object/from16 v32, v4

    move-object/from16 v33, v5

    move/from16 v34, v6

    invoke-direct/range {v31 .. v34}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 v31, 0x70000000

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput v0, v1, Lcom/wooplr/spotlight/SpotlightView;->maskColor:I

    const-wide/16 v30, 0x190

    move-wide/from16 v0, v30

    move-object/from16 v2, v29

    iput-wide v0, v2, Lcom/wooplr/spotlight/SpotlightView;->introAnimationDuration:J

    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput-boolean v0, v1, Lcom/wooplr/spotlight/SpotlightView;->isRevealAnimationEnabled:Z

    const-wide/16 v28, 0x190

    move-wide/from16 v0, v28

    move-object/from16 v2, v27

    iput-wide v0, v2, Lcom/wooplr/spotlight/SpotlightView;->fadingTextDuration:J

    const/16 v27, 0x14

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Lcom/wooplr/spotlight/SpotlightView;->padding:I

    const/16 v26, 0x24

    invoke-static/range {v26 .. v26}, Lcom/wooplr/spotlight/utils/Utils;->dpToPx(I)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lcom/wooplr/spotlight/SpotlightView;->gutter:I

    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/wooplr/spotlight/SpotlightView;->showTargetArc:Z

    const/16 v24, 0x18

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/wooplr/spotlight/SpotlightView;->extraPaddingForArc:I

    const/16 v23, 0x18

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lcom/wooplr/spotlight/SpotlightView;->headingTvSize:I

    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/wooplr/spotlight/SpotlightView;->headingTvSizeDimenUnit:I

    const-string/jumbo v21, "#eb273f"

    invoke-static/range {v21 .. v21}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/wooplr/spotlight/SpotlightView;->headingTvColor:I

    const-string/jumbo v20, "Hello"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/wooplr/spotlight/SpotlightView;->headingTvText:Ljava/lang/CharSequence;

    const/16 v19, 0x18

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/wooplr/spotlight/SpotlightView;->subHeadingTvSize:I

    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/wooplr/spotlight/SpotlightView;->subHeadingTvSizeDimenUnit:I

    const-string/jumbo v17, "#ffffff"

    invoke-static/range {v17 .. v17}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/wooplr/spotlight/SpotlightView;->subHeadingTvColor:I

    const-string/jumbo v16, "Hello"

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/wooplr/spotlight/SpotlightView;->subHeadingTvText:Ljava/lang/CharSequence;

    const-wide/16 v15, 0x12c

    iput-wide v15, v14, Lcom/wooplr/spotlight/SpotlightView;->lineAnimationDuration:J

    const-string/jumbo v14, "#eb273f"

    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v14

    iput v14, v13, Lcom/wooplr/spotlight/SpotlightView;->lineAndArcColor:I

    const/4 v13, 0x0

    iput-object v13, v12, Lcom/wooplr/spotlight/SpotlightView;->mHeadingTypeface:Landroid/graphics/Typeface;

    const/4 v12, 0x0

    iput-object v12, v11, Lcom/wooplr/spotlight/SpotlightView;->mSubHeadingTypeface:Landroid/graphics/Typeface;

    const/4 v11, 0x0

    iput-boolean v11, v10, Lcom/wooplr/spotlight/SpotlightView;->isShowAlways:Z

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/wooplr/spotlight/SpotlightView;->dismissCalled:Z

    invoke-direct {v7, v8}, Lcom/wooplr/spotlight/SpotlightView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 40
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move-object v9, v4

    move-object v10, v5

    move-object v11, v4

    move-object/from16 v38, v11

    move-object/from16 v11, v38

    move-object/from16 v12, v38

    move-object/from16 v38, v12

    move-object/from16 v12, v38

    move-object/from16 v13, v38

    move-object/from16 v38, v12

    move-object/from16 v39, v13

    move-object/from16 v12, v38

    move-object/from16 v13, v39

    move-object/from16 v14, v38

    move-object/from16 v15, v39

    move-object/from16 v38, v14

    move-object/from16 v39, v15

    move-object/from16 v14, v38

    move-object/from16 v15, v39

    move-object/from16 v16, v38

    move-object/from16 v17, v39

    move-object/from16 v38, v16

    move-object/from16 v39, v17

    move-object/from16 v16, v38

    move-object/from16 v17, v39

    move-object/from16 v18, v38

    move-object/from16 v19, v39

    move-object/from16 v38, v18

    move-object/from16 v39, v19

    move-object/from16 v18, v38

    move-object/from16 v19, v39

    move-object/from16 v20, v38

    move-object/from16 v21, v39

    move-object/from16 v38, v20

    move-object/from16 v39, v21

    move-object/from16 v20, v38

    move-object/from16 v21, v39

    move-object/from16 v22, v38

    move-object/from16 v23, v39

    move-object/from16 v38, v22

    move-object/from16 v39, v23

    move-object/from16 v22, v38

    move-object/from16 v23, v39

    move-object/from16 v24, v38

    move-object/from16 v25, v39

    move-object/from16 v38, v24

    move-object/from16 v39, v25

    move-object/from16 v24, v38

    move-object/from16 v25, v39

    move-object/from16 v26, v38

    move-object/from16 v27, v39

    move-object/from16 v38, v26

    move-object/from16 v39, v27

    move-object/from16 v26, v38

    move-object/from16 v27, v39

    move-object/from16 v28, v38

    move-object/from16 v29, v39

    move-object/from16 v38, v28

    move-object/from16 v39, v29

    move-object/from16 v28, v38

    move-object/from16 v29, v39

    move-object/from16 v30, v38

    move-object/from16 v31, v39

    move-object/from16 v38, v30

    move-object/from16 v39, v31

    move-object/from16 v30, v38

    move-object/from16 v31, v39

    move-object/from16 v32, v38

    move-object/from16 v33, v39

    move-object/from16 v34, v5

    move-object/from16 v35, v6

    move/from16 v36, v7

    move/from16 v37, v8

    invoke-direct/range {v33 .. v37}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/high16 v33, 0x70000000

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput v0, v1, Lcom/wooplr/spotlight/SpotlightView;->maskColor:I

    const-wide/16 v32, 0x190

    move-wide/from16 v0, v32

    move-object/from16 v2, v31

    iput-wide v0, v2, Lcom/wooplr/spotlight/SpotlightView;->introAnimationDuration:J

    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput-boolean v0, v1, Lcom/wooplr/spotlight/SpotlightView;->isRevealAnimationEnabled:Z

    const-wide/16 v30, 0x190

    move-wide/from16 v0, v30

    move-object/from16 v2, v29

    iput-wide v0, v2, Lcom/wooplr/spotlight/SpotlightView;->fadingTextDuration:J

    const/16 v29, 0x14

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Lcom/wooplr/spotlight/SpotlightView;->padding:I

    const/16 v28, 0x24

    invoke-static/range {v28 .. v28}, Lcom/wooplr/spotlight/utils/Utils;->dpToPx(I)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Lcom/wooplr/spotlight/SpotlightView;->gutter:I

    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/wooplr/spotlight/SpotlightView;->showTargetArc:Z

    const/16 v26, 0x18

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lcom/wooplr/spotlight/SpotlightView;->extraPaddingForArc:I

    const/16 v25, 0x18

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lcom/wooplr/spotlight/SpotlightView;->headingTvSize:I

    const/16 v24, -0x1

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/wooplr/spotlight/SpotlightView;->headingTvSizeDimenUnit:I

    const-string/jumbo v23, "#eb273f"

    invoke-static/range {v23 .. v23}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lcom/wooplr/spotlight/SpotlightView;->headingTvColor:I

    const-string/jumbo v22, "Hello"

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/wooplr/spotlight/SpotlightView;->headingTvText:Ljava/lang/CharSequence;

    const/16 v21, 0x18

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/wooplr/spotlight/SpotlightView;->subHeadingTvSize:I

    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/wooplr/spotlight/SpotlightView;->subHeadingTvSizeDimenUnit:I

    const-string/jumbo v19, "#ffffff"

    invoke-static/range {v19 .. v19}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/wooplr/spotlight/SpotlightView;->subHeadingTvColor:I

    const-string/jumbo v18, "Hello"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/wooplr/spotlight/SpotlightView;->subHeadingTvText:Ljava/lang/CharSequence;

    const-wide/16 v17, 0x12c

    move-wide/from16 v0, v17

    move-object/from16 v2, v16

    iput-wide v0, v2, Lcom/wooplr/spotlight/SpotlightView;->lineAnimationDuration:J

    const-string/jumbo v16, "#eb273f"

    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Lcom/wooplr/spotlight/SpotlightView;->lineAndArcColor:I

    const/4 v15, 0x0

    iput-object v15, v14, Lcom/wooplr/spotlight/SpotlightView;->mHeadingTypeface:Landroid/graphics/Typeface;

    const/4 v14, 0x0

    iput-object v14, v13, Lcom/wooplr/spotlight/SpotlightView;->mSubHeadingTypeface:Landroid/graphics/Typeface;

    const/4 v13, 0x0

    iput-boolean v13, v12, Lcom/wooplr/spotlight/SpotlightView;->isShowAlways:Z

    const/4 v12, 0x0

    iput-boolean v12, v11, Lcom/wooplr/spotlight/SpotlightView;->dismissCalled:Z

    invoke-direct {v9, v10}, Lcom/wooplr/spotlight/SpotlightView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/wooplr/spotlight/SpotlightView;)Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/wooplr/spotlight/SpotlightView;->isRevealAnimationEnabled:Z

    move v0, v1

    return v0
.end method

.method static synthetic access$100(Lcom/wooplr/spotlight/SpotlightView;Landroid/app/Activity;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/wooplr/spotlight/SpotlightView;->startRevealAnimation(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/wooplr/spotlight/SpotlightView;)Landroid/widget/TextView;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/wooplr/spotlight/SpotlightView;->headingTv:Landroid/widget/TextView;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$1100(Lcom/wooplr/spotlight/SpotlightView;)Landroid/widget/TextView;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/wooplr/spotlight/SpotlightView;->subHeadingTv:Landroid/widget/TextView;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$1200(Landroid/app/Activity;)I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lcom/wooplr/spotlight/SpotlightView;->getSoftButtonsBarHeight(Landroid/app/Activity;)I

    move-result v1

    move v0, v1

    return v0
.end method

.method static synthetic access$1300(Lcom/wooplr/spotlight/SpotlightView;I)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lcom/wooplr/spotlight/SpotlightView;->setSoftwareBtnHeight(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/wooplr/spotlight/SpotlightView;I)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lcom/wooplr/spotlight/SpotlightView;->setMaskColor(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/wooplr/spotlight/SpotlightView;)Lcom/wooplr/spotlight/target/Target;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/wooplr/spotlight/SpotlightView;->targetView:Lcom/wooplr/spotlight/target/Target;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$1600(Lcom/wooplr/spotlight/SpotlightView;)I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/wooplr/spotlight/SpotlightView;->padding:I

    move v0, v1

    return v0
.end method

.method static synthetic access$1700(Lcom/wooplr/spotlight/SpotlightView;)Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/wooplr/spotlight/SpotlightView;->dismissOnBackPress:Z

    move v0, v1

    return v0
.end method

.method static synthetic access$1800(Lcom/wooplr/spotlight/SpotlightView;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/wooplr/spotlight/SpotlightView;->enableDismissOnBackPress()V

    return-void
.end method

.method static synthetic access$1900(Lcom/wooplr/spotlight/SpotlightView;Landroid/app/Activity;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/wooplr/spotlight/SpotlightView;->show(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$200(Lcom/wooplr/spotlight/SpotlightView;Landroid/app/Activity;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/wooplr/spotlight/SpotlightView;->startFadinAnimation(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$300(Lcom/wooplr/spotlight/SpotlightView;)Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/wooplr/spotlight/SpotlightView;->showTargetArc:Z

    move v0, v1

    return v0
.end method

.method static synthetic access$400(Lcom/wooplr/spotlight/SpotlightView;Landroid/app/Activity;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/wooplr/spotlight/SpotlightView;->addArcAnimation(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$500(Lcom/wooplr/spotlight/SpotlightView;Landroid/app/Activity;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/wooplr/spotlight/SpotlightView;->addPathAnimation(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$600(Lcom/wooplr/spotlight/SpotlightView;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/wooplr/spotlight/SpotlightView;->removeSpotlightView()V

    return-void
.end method

.method static synthetic access$700(Lcom/wooplr/spotlight/SpotlightView;)Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/wooplr/spotlight/SpotlightView;->enableDismissAfterShown:Z

    move v0, v1

    return v0
.end method

.method static synthetic access$802(Lcom/wooplr/spotlight/SpotlightView;Z)Z
    .locals 5

    move-object v0, p0

    move v1, p1

    move v2, v1

    move-object v3, v0

    move v4, v1

    iput-boolean v4, v3, Lcom/wooplr/spotlight/SpotlightView;->dismissOnTouch:Z

    move v0, v2

    return v0
.end method

.method static synthetic access$900(Lcom/wooplr/spotlight/SpotlightView;)J
    .locals 3

    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Lcom/wooplr/spotlight/SpotlightView;->fadingTextDuration:J

    move-wide v0, v1

    return-wide v0
.end method

.method private addArcAnimation(Landroid/app/Activity;)V
    .locals 13

    move-object v1, p0

    move-object v2, p1

    move-object v6, v1

    new-instance v7, Landroidx/appcompat/widget/AppCompatImageView;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v3, v9

    move-object v9, v2

    invoke-direct {v8, v9}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    sget v8, Lcom/wooplr/spotlight/R$drawable;->ic_spotlight_arc:I

    invoke-virtual {v7, v8}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v4, v8

    move-object v8, v1

    iget-object v8, v8, Lcom/wooplr/spotlight/SpotlightView;->circleShape:Lcom/wooplr/spotlight/shape/Circle;

    invoke-virtual {v8}, Lcom/wooplr/spotlight/shape/Circle;->getRadius()I

    move-result v8

    move-object v9, v1

    iget v9, v9, Lcom/wooplr/spotlight/SpotlightView;->extraPaddingForArc:I

    add-int/2addr v8, v9

    const/4 v9, 0x2

    mul-int/lit8 v8, v8, 0x2

    move-object v9, v1

    iget-object v9, v9, Lcom/wooplr/spotlight/SpotlightView;->circleShape:Lcom/wooplr/spotlight/shape/Circle;

    invoke-virtual {v9}, Lcom/wooplr/spotlight/shape/Circle;->getRadius()I

    move-result v9

    move-object v10, v1

    iget v10, v10, Lcom/wooplr/spotlight/SpotlightView;->extraPaddingForArc:I

    add-int/2addr v9, v10

    const/4 v10, 0x2

    mul-int/lit8 v9, v9, 0x2

    invoke-direct {v7, v8, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v6, v6, Lcom/wooplr/spotlight/SpotlightView;->targetView:Lcom/wooplr/spotlight/target/Target;

    invoke-interface {v6}, Lcom/wooplr/spotlight/target/Target;->getPoint()Landroid/graphics/Point;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Point;->y:I

    move-object v7, v1

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v7

    const/4 v8, 0x2

    div-int/lit8 v7, v7, 0x2

    if-le v6, v7, :cond_3

    move-object v6, v1

    iget-object v6, v6, Lcom/wooplr/spotlight/SpotlightView;->targetView:Lcom/wooplr/spotlight/target/Target;

    invoke-interface {v6}, Lcom/wooplr/spotlight/target/Target;->getPoint()Landroid/graphics/Point;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Point;->x:I

    move-object v7, v1

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v7

    const/4 v8, 0x2

    div-int/lit8 v7, v7, 0x2

    if-le v6, v7, :cond_4

    :cond_0
    move-object v6, v4

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v1

    move-object v9, v4

    move-object v10, v1

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v10

    move-object v11, v1

    iget-object v11, v11, Lcom/wooplr/spotlight/SpotlightView;->targetView:Lcom/wooplr/spotlight/target/Target;

    invoke-interface {v11}, Lcom/wooplr/spotlight/target/Target;->getPoint()Landroid/graphics/Point;

    move-result-object v11

    iget v11, v11, Landroid/graphics/Point;->x:I

    sub-int/2addr v10, v11

    move-object v11, v1

    iget-object v11, v11, Lcom/wooplr/spotlight/SpotlightView;->circleShape:Lcom/wooplr/spotlight/shape/Circle;

    invoke-virtual {v11}, Lcom/wooplr/spotlight/shape/Circle;->getRadius()I

    move-result v11

    sub-int/2addr v10, v11

    move-object v11, v1

    iget v11, v11, Lcom/wooplr/spotlight/SpotlightView;->extraPaddingForArc:I

    sub-int/2addr v10, v11

    iput v10, v9, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v8

    move-object v9, v1

    iget-object v9, v9, Lcom/wooplr/spotlight/SpotlightView;->targetView:Lcom/wooplr/spotlight/target/Target;

    invoke-interface {v9}, Lcom/wooplr/spotlight/target/Target;->getPoint()Landroid/graphics/Point;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Point;->y:I

    sub-int/2addr v8, v9

    move-object v9, v1

    iget-object v9, v9, Lcom/wooplr/spotlight/SpotlightView;->circleShape:Lcom/wooplr/spotlight/shape/Circle;

    invoke-virtual {v9}, Lcom/wooplr/spotlight/shape/Circle;->getRadius()I

    move-result v9

    sub-int/2addr v8, v9

    move-object v9, v1

    iget v9, v9, Lcom/wooplr/spotlight/SpotlightView;->extraPaddingForArc:I

    sub-int/2addr v8, v9

    iput v8, v7, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const v7, 0x800055

    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :goto_0
    move-object v6, v1

    move-object v7, v3

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v4

    move-object v10, v3

    invoke-virtual {v10}, Landroidx/appcompat/widget/AppCompatImageView;->postInvalidate()V

    invoke-virtual {v8, v9}, Landroidx/appcompat/widget/AppCompatImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance v6, Landroid/graphics/PorterDuffColorFilter;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v4, v7

    move-object v7, v1

    iget v7, v7, Lcom/wooplr/spotlight/SpotlightView;->lineAndArcColor:I

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v6, v7, :cond_5

    move-object v6, v2

    sget v7, Lcom/wooplr/spotlight/R$drawable;->avd_spotlight_arc:I

    invoke-static {v6, v7}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/AnimatedVectorDrawable;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v5, v7

    if-eqz v6, :cond_1

    move-object v6, v5

    move-object v7, v4

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/AnimatedVectorDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_1
    move-object v6, v5

    move-object v7, v3

    move-object v8, v5

    invoke-virtual {v7, v8}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v6, :cond_2

    move-object v6, v5

    invoke-virtual {v6}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    :cond_2
    :goto_1
    new-instance v6, Landroid/os/Handler;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v7, Lcom/wooplr/spotlight/SpotlightView$6;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v1

    move-object v10, v2

    invoke-direct {v8, v9, v10}, Lcom/wooplr/spotlight/SpotlightView$6;-><init>(Lcom/wooplr/spotlight/SpotlightView;Landroid/app/Activity;)V

    const-wide/16 v8, 0x190

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v6

    return-void

    :cond_3
    move-object v6, v1

    move-object v7, v3

    const/high16 v8, 0x43340000    # 180.0f

    invoke-virtual {v7, v8}, Landroidx/appcompat/widget/AppCompatImageView;->setRotation(F)V

    iget-object v6, v6, Lcom/wooplr/spotlight/SpotlightView;->targetView:Lcom/wooplr/spotlight/target/Target;

    invoke-interface {v6}, Lcom/wooplr/spotlight/target/Target;->getPoint()Landroid/graphics/Point;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Point;->x:I

    move-object v7, v1

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v7

    const/4 v8, 0x2

    div-int/lit8 v7, v7, 0x2

    if-gt v6, v7, :cond_0

    :cond_4
    move-object v6, v4

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v1

    move-object v9, v4

    move-object v10, v1

    iget-object v10, v10, Lcom/wooplr/spotlight/SpotlightView;->targetView:Lcom/wooplr/spotlight/target/Target;

    invoke-interface {v10}, Lcom/wooplr/spotlight/target/Target;->getPoint()Landroid/graphics/Point;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Point;->x:I

    move-object v11, v1

    iget-object v11, v11, Lcom/wooplr/spotlight/SpotlightView;->circleShape:Lcom/wooplr/spotlight/shape/Circle;

    invoke-virtual {v11}, Lcom/wooplr/spotlight/shape/Circle;->getRadius()I

    move-result v11

    sub-int/2addr v10, v11

    move-object v11, v1

    iget v11, v11, Lcom/wooplr/spotlight/SpotlightView;->extraPaddingForArc:I

    sub-int/2addr v10, v11

    iput v10, v9, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v8

    move-object v9, v1

    iget-object v9, v9, Lcom/wooplr/spotlight/SpotlightView;->targetView:Lcom/wooplr/spotlight/target/Target;

    invoke-interface {v9}, Lcom/wooplr/spotlight/target/Target;->getPoint()Landroid/graphics/Point;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Point;->y:I

    sub-int/2addr v8, v9

    move-object v9, v1

    iget-object v9, v9, Lcom/wooplr/spotlight/SpotlightView;->circleShape:Lcom/wooplr/spotlight/shape/Circle;

    invoke-virtual {v9}, Lcom/wooplr/spotlight/shape/Circle;->getRadius()I

    move-result v9

    sub-int/2addr v8, v9

    move-object v9, v1

    iget v9, v9, Lcom/wooplr/spotlight/SpotlightView;->extraPaddingForArc:I

    sub-int/2addr v8, v9

    iput v8, v7, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const v7, 0x800053

    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto/16 :goto_0

    :cond_5
    move-object v6, v2

    sget v7, Lcom/wooplr/spotlight/R$drawable;->avd_spotlight_arc:I

    invoke-static {v6, v7}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->create(Landroid/content/Context;I)Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    move-result-object v6

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v5, v7

    if-eqz v6, :cond_6

    move-object v6, v5

    move-object v7, v4

    invoke-virtual {v6, v7}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_6
    move-object v6, v5

    move-object v7, v3

    move-object v8, v5

    invoke-virtual {v7, v8}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v6, :cond_2

    move-object v6, v5

    invoke-virtual {v6}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->start()V

    goto/16 :goto_1
.end method

.method private addPathAnimation(Landroid/app/Activity;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v6, v0

    move-object/from16 v19, v6

    move-object/from16 v6, v19

    move-object/from16 v7, v19

    move-object/from16 v19, v7

    move-object/from16 v7, v19

    move-object/from16 v8, v19

    new-instance v9, Landroid/view/View;

    move-object/from16 v19, v9

    move-object/from16 v9, v19

    move-object/from16 v10, v19

    move-object/from16 v19, v10

    move-object/from16 v10, v19

    move-object/from16 v11, v19

    move-object v2, v11

    move-object v11, v1

    invoke-direct {v10, v11}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v19, v10

    move-object/from16 v10, v19

    move-object/from16 v11, v19

    move-object v3, v11

    move-object v11, v0

    move-object v12, v3

    move-object v13, v0

    move-object v14, v3

    const/4 v15, -0x2

    const/16 v16, -0x2

    invoke-direct/range {v14 .. v16}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-direct {v13}, Lcom/wooplr/spotlight/SpotlightView;->getViewWidth()I

    move-result v13

    iput v13, v12, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-direct {v11}, Lcom/wooplr/spotlight/SpotlightView;->getViewHeight()I

    move-result v11

    iput v11, v10, Landroid/widget/FrameLayout$LayoutParams;->height:I

    move-object v10, v3

    invoke-virtual {v8, v9, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Landroid/widget/TextView;

    move-object/from16 v19, v8

    move-object/from16 v8, v19

    move-object/from16 v9, v19

    move-object/from16 v19, v9

    move-object/from16 v9, v19

    move-object/from16 v10, v19

    move-object v3, v10

    move-object v10, v1

    invoke-direct {v9, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v8, v7, Lcom/wooplr/spotlight/SpotlightView;->headingTv:Landroid/widget/TextView;

    iget-object v6, v6, Lcom/wooplr/spotlight/SpotlightView;->mHeadingTypeface:Landroid/graphics/Typeface;

    move-object/from16 v19, v6

    move-object/from16 v6, v19

    move-object/from16 v7, v19

    move-object v4, v7

    if-eqz v6, :cond_0

    move-object v6, v3

    move-object v7, v4

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    move-object v6, v0

    iget v6, v6, Lcom/wooplr/spotlight/SpotlightView;->headingTvSizeDimenUnit:I

    move/from16 v19, v6

    move/from16 v6, v19

    move/from16 v7, v19

    move v3, v7

    const/4 v7, -0x1

    if-eq v6, v7, :cond_3

    move-object v6, v0

    iget-object v6, v6, Lcom/wooplr/spotlight/SpotlightView;->headingTv:Landroid/widget/TextView;

    move v7, v3

    move-object v8, v0

    iget v8, v8, Lcom/wooplr/spotlight/SpotlightView;->headingTvSize:I

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_0
    move-object v6, v0

    move-object/from16 v19, v6

    move-object/from16 v6, v19

    move-object/from16 v7, v19

    move-object/from16 v19, v7

    move-object/from16 v7, v19

    move-object/from16 v8, v19

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    move-object/from16 v7, v19

    move-object/from16 v8, v20

    move-object/from16 v9, v19

    move-object/from16 v10, v20

    iget-object v10, v10, Lcom/wooplr/spotlight/SpotlightView;->headingTv:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v9, v9, Lcom/wooplr/spotlight/SpotlightView;->headingTv:Landroid/widget/TextView;

    move-object v10, v0

    iget v10, v10, Lcom/wooplr/spotlight/SpotlightView;->headingTvColor:I

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v8, v8, Lcom/wooplr/spotlight/SpotlightView;->headingTv:Landroid/widget/TextView;

    move-object v9, v0

    iget-object v9, v9, Lcom/wooplr/spotlight/SpotlightView;->headingTvText:Ljava/lang/CharSequence;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v8, Landroid/widget/TextView;

    move-object/from16 v19, v8

    move-object/from16 v8, v19

    move-object/from16 v9, v19

    move-object/from16 v19, v9

    move-object/from16 v9, v19

    move-object/from16 v10, v19

    move-object v3, v10

    move-object v10, v1

    invoke-direct {v9, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v8, v7, Lcom/wooplr/spotlight/SpotlightView;->subHeadingTv:Landroid/widget/TextView;

    iget-object v6, v6, Lcom/wooplr/spotlight/SpotlightView;->mSubHeadingTypeface:Landroid/graphics/Typeface;

    move-object/from16 v19, v6

    move-object/from16 v6, v19

    move-object/from16 v7, v19

    move-object v1, v7

    if-eqz v6, :cond_1

    move-object v6, v3

    move-object v7, v1

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_1
    move-object v6, v0

    iget v6, v6, Lcom/wooplr/spotlight/SpotlightView;->subHeadingTvSizeDimenUnit:I

    move/from16 v19, v6

    move/from16 v6, v19

    move/from16 v7, v19

    move v1, v7

    const/4 v7, -0x1

    if-eq v6, v7, :cond_4

    move-object v6, v0

    iget-object v6, v6, Lcom/wooplr/spotlight/SpotlightView;->subHeadingTv:Landroid/widget/TextView;

    move v7, v1

    move-object v8, v0

    iget v8, v8, Lcom/wooplr/spotlight/SpotlightView;->subHeadingTvSize:I

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_1
    move-object v6, v0

    move-object/from16 v19, v6

    move-object/from16 v6, v19

    move-object/from16 v7, v19

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    move-object/from16 v8, v19

    move-object/from16 v9, v20

    iget-object v9, v9, Lcom/wooplr/spotlight/SpotlightView;->subHeadingTv:Landroid/widget/TextView;

    move-object v10, v0

    iget v10, v10, Lcom/wooplr/spotlight/SpotlightView;->subHeadingTvColor:I

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v8, v8, Lcom/wooplr/spotlight/SpotlightView;->subHeadingTv:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v7, v7, Lcom/wooplr/spotlight/SpotlightView;->subHeadingTv:Landroid/widget/TextView;

    move-object v8, v0

    iget-object v8, v8, Lcom/wooplr/spotlight/SpotlightView;->subHeadingTvText:Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v7, Landroid/graphics/Paint;

    move-object/from16 v19, v7

    move-object/from16 v7, v19

    move-object/from16 v8, v19

    move-object v1, v8

    move-object v8, v0

    move-object v9, v1

    move-object v10, v0

    move-object v11, v1

    move-object v12, v0

    move-object v13, v1

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    move-object/from16 v19, v13

    move-object/from16 v20, v14

    move-object/from16 v13, v19

    move-object/from16 v14, v20

    move-object/from16 v15, v19

    move-object/from16 v16, v20

    move-object/from16 v19, v15

    move-object/from16 v20, v16

    move-object/from16 v15, v19

    move-object/from16 v16, v20

    move-object/from16 v17, v19

    move-object/from16 v18, v20

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Paint;-><init>()V

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Landroid/graphics/Paint;->setDither(Z)V

    sget-object v16, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v15 .. v16}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v15, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    sget-object v14, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget v12, v12, Lcom/wooplr/spotlight/SpotlightView;->lineStroke:I

    int-to-float v12, v12

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v10, v10, Lcom/wooplr/spotlight/SpotlightView;->lineAndArcColor:I

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v8, v8, Lcom/wooplr/spotlight/SpotlightView;->lineEffect:Landroid/graphics/PathEffect;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    move-result-object v7

    new-instance v7, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;

    move-object/from16 v19, v7

    move-object/from16 v7, v19

    move-object/from16 v8, v19

    move-object v3, v8

    move-object v8, v1

    invoke-direct {v7, v8}, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;-><init>(Landroid/graphics/Paint;)V

    iget-wide v6, v6, Lcom/wooplr/spotlight/SpotlightView;->lineAnimationDuration:J

    move-wide/from16 v19, v6

    move-wide/from16 v6, v19

    move-wide/from16 v8, v19

    move-wide v4, v8

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_2

    move-object v6, v3

    move-wide v7, v4

    invoke-virtual {v6, v7, v8}, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;->setLineAnimDuration(J)V

    :cond_2
    move-object v6, v3

    move-object/from16 v19, v6

    move-object/from16 v6, v19

    move-object/from16 v7, v19

    move-object/from16 v19, v7

    move-object/from16 v7, v19

    move-object/from16 v8, v19

    move-object v9, v0

    move-object v10, v2

    move-object v11, v3

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {v9}, Lcom/wooplr/spotlight/SpotlightView;->checkLinePoint()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;->setPoints(Ljava/util/List;)V

    invoke-virtual {v7}, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;->playAnim()V

    new-instance v7, Lcom/wooplr/spotlight/SpotlightView$7;

    move-object/from16 v19, v7

    move-object/from16 v7, v19

    move-object/from16 v8, v19

    move-object v9, v0

    invoke-direct {v8, v9}, Lcom/wooplr/spotlight/SpotlightView$7;-><init>(Lcom/wooplr/spotlight/SpotlightView;)V

    invoke-virtual {v6, v7}, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;->setmListner(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :cond_3
    move-object v6, v0

    iget-object v6, v6, Lcom/wooplr/spotlight/SpotlightView;->headingTv:Landroid/widget/TextView;

    move-object v7, v0

    iget v7, v7, Lcom/wooplr/spotlight/SpotlightView;->headingTvSize:I

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    :cond_4
    move-object v6, v0

    iget-object v6, v6, Lcom/wooplr/spotlight/SpotlightView;->subHeadingTv:Landroid/widget/TextView;

    move-object v7, v0

    iget v7, v7, Lcom/wooplr/spotlight/SpotlightView;->subHeadingTvSize:I

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_1
.end method

.method private checkLinePoint()Ljava/util/List;
    .locals 53
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wooplr/spotlight/target/AnimPoint;",
            ">;"
        }
    .end annotation

    move-object/from16 v2, p0

    move-object v15, v2

    move-object/from16 v51, v15

    move-object/from16 v15, v51

    move-object/from16 v16, v51

    move-object/from16 v51, v16

    move-object/from16 v16, v51

    move-object/from16 v17, v51

    invoke-virtual/range {v17 .. v17}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v17

    move/from16 v3, v17

    invoke-virtual/range {v16 .. v16}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v16

    move/from16 v4, v16

    new-instance v16, Ljava/util/ArrayList;

    move-object/from16 v51, v16

    move-object/from16 v16, v51

    move-object/from16 v17, v51

    move-object/from16 v5, v17

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    new-instance v16, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v51, v16

    move-object/from16 v16, v51

    move-object/from16 v17, v51

    move-object/from16 v6, v17

    const/16 v17, -0x2

    const/16 v18, -0x2

    invoke-direct/range {v16 .. v18}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    new-instance v16, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v51, v16

    move-object/from16 v16, v51

    move-object/from16 v17, v51

    move-object/from16 v7, v17

    const/16 v17, -0x2

    const/16 v18, -0x2

    invoke-direct/range {v16 .. v18}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v16, 0x8

    invoke-static/range {v16 .. v16}, Lcom/wooplr/spotlight/utils/Utils;->dpToPx(I)I

    move-result v16

    move/from16 v8, v16

    const/16 v16, 0xc

    invoke-static/range {v16 .. v16}, Lcom/wooplr/spotlight/utils/Utils;->dpToPx(I)I

    move-result v16

    move/from16 v9, v16

    const/16 v16, 0x10

    invoke-static/range {v16 .. v16}, Lcom/wooplr/spotlight/utils/Utils;->dpToPx(I)I

    move-result v16

    move/from16 v10, v16

    iget-object v15, v15, Lcom/wooplr/spotlight/SpotlightView;->targetView:Lcom/wooplr/spotlight/target/Target;

    invoke-interface {v15}, Lcom/wooplr/spotlight/target/Target;->getPoint()Landroid/graphics/Point;

    move-result-object v15

    iget v15, v15, Landroid/graphics/Point;->y:I

    move/from16 v16, v4

    const/16 v17, 0x2

    div-int/lit8 v16, v16, 0x2

    move/from16 v0, v16

    if-le v15, v0, :cond_4

    move-object v15, v2

    iget-object v15, v15, Lcom/wooplr/spotlight/SpotlightView;->targetView:Lcom/wooplr/spotlight/target/Target;

    invoke-interface {v15}, Lcom/wooplr/spotlight/target/Target;->getPoint()Landroid/graphics/Point;

    move-result-object v15

    iget v15, v15, Landroid/graphics/Point;->x:I

    move/from16 v16, v3

    const/16 v17, 0x2

    div-int/lit8 v16, v16, 0x2

    move/from16 v0, v16

    if-le v15, v0, :cond_0

    move-object v15, v2

    move-object/from16 v16, v7

    move-object/from16 v51, v16

    move-object/from16 v16, v51

    move-object/from16 v17, v51

    move-object/from16 v18, v2

    move-object/from16 v19, v7

    move/from16 v20, v10

    move-object/from16 v21, v7

    move-object/from16 v22, v2

    move-object/from16 v23, v7

    move/from16 v24, v3

    move-object/from16 v25, v2

    move-object/from16 v51, v25

    move-object/from16 v25, v51

    move-object/from16 v26, v51

    move-object/from16 v27, v6

    move-object/from16 v51, v27

    move-object/from16 v27, v51

    move-object/from16 v28, v51

    move/from16 v29, v10

    move-object/from16 v30, v6

    move/from16 v31, v4

    move-object/from16 v32, v2

    move-object/from16 v33, v6

    move/from16 v34, v3

    move-object/from16 v35, v2

    move-object/from16 v36, v6

    move-object/from16 v37, v2

    move-object/from16 v38, v5

    move-object/from16 v51, v38

    move-object/from16 v38, v51

    move-object/from16 v39, v51

    new-instance v40, Lcom/wooplr/spotlight/target/AnimPoint;

    move-object/from16 v51, v40

    move-object/from16 v40, v51

    move-object/from16 v41, v51

    move-object/from16 v42, v2

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/wooplr/spotlight/SpotlightView;->targetView:Lcom/wooplr/spotlight/target/Target;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/wooplr/spotlight/target/Target;->getViewRight()I

    move-result v42

    move-object/from16 v43, v2

    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/wooplr/spotlight/SpotlightView;->targetView:Lcom/wooplr/spotlight/target/Target;

    move-object/from16 v43, v0

    invoke-interface/range {v43 .. v43}, Lcom/wooplr/spotlight/target/Target;->getViewWidth()I

    move-result v43

    const/16 v44, 0x2

    div-int/lit8 v43, v43, 0x2

    sub-int v42, v42, v43

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    move-object/from16 v43, v2

    move-object/from16 v51, v43

    move-object/from16 v43, v51

    move-object/from16 v44, v51

    move-object/from16 v51, v44

    move-object/from16 v44, v51

    move-object/from16 v45, v51

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/wooplr/spotlight/SpotlightView;->targetView:Lcom/wooplr/spotlight/target/Target;

    move-object/from16 v45, v0

    invoke-interface/range {v45 .. v45}, Lcom/wooplr/spotlight/target/Target;->getPoint()Landroid/graphics/Point;

    move-result-object v45

    move-object/from16 v0, v45

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v45, v0

    move-object/from16 v46, v2

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/wooplr/spotlight/SpotlightView;->circleShape:Lcom/wooplr/spotlight/shape/Circle;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/wooplr/spotlight/shape/Circle;->getRadius()I

    move-result v46

    sub-int v45, v45, v46

    move-object/from16 v46, v2

    move-object/from16 v0, v46

    iget v0, v0, Lcom/wooplr/spotlight/SpotlightView;->extraPaddingForArc:I

    move/from16 v46, v0

    sub-int v45, v45, v46

    move/from16 v0, v45

    int-to-float v0, v0

    move/from16 v45, v0

    move/from16 v3, v45

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/wooplr/spotlight/SpotlightView;->targetView:Lcom/wooplr/spotlight/target/Target;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/wooplr/spotlight/target/Target;->getViewRight()I

    move-result v44

    move-object/from16 v45, v2

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/wooplr/spotlight/SpotlightView;->targetView:Lcom/wooplr/spotlight/target/Target;

    move-object/from16 v45, v0

    invoke-interface/range {v45 .. v45}, Lcom/wooplr/spotlight/target/Target;->getViewWidth()I

    move-result v45

    const/16 v46, 0x2

    div-int/lit8 v45, v45, 0x2

    sub-int v44, v44, v45

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v44, v0

    move/from16 v4, v44

    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/wooplr/spotlight/SpotlightView;->targetView:Lcom/wooplr/spotlight/target/Target;

    move-object/from16 v43, v0

    invoke-interface/range {v43 .. v43}, Lcom/wooplr/spotlight/target/Target;->getViewTop()I

    move-result v43

    const/16 v44, 0x2

    div-int/lit8 v43, v43, 0x2

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    move/from16 v11, v43

    move/from16 v43, v3

    move/from16 v44, v4

    move/from16 v45, v11

    invoke-direct/range {v41 .. v45}, Lcom/wooplr/spotlight/target/AnimPoint;-><init>(FFFF)V

    invoke-interface/range {v39 .. v40}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v39

    new-instance v39, Lcom/wooplr/spotlight/target/AnimPoint;

    move-object/from16 v51, v39

    move-object/from16 v39, v51

    move-object/from16 v40, v51

    move-object/from16 v41, v2

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/wooplr/spotlight/SpotlightView;->targetView:Lcom/wooplr/spotlight/target/Target;

    move-object/from16 v41, v0

    invoke-interface/range {v41 .. v41}, Lcom/wooplr/spotlight/target/Target;->getViewRight()I

    move-result v41

    move-object/from16 v42, v2

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/wooplr/spotlight/SpotlightView;->targetView:Lcom/wooplr/spotlight/target/Target;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/wooplr/spotlight/target/Target;->getViewWidth()I

    move-result v42

    const/16 v43, 0x2

    div-int/lit8 v42, v42, 0x2

    sub-int v41, v41, v42

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    move-object/from16 v42, v2

    move-object/from16 v51, v42

    move-object/from16 v42, v51

    move-object/from16 v43, v51

    move-object/from16 v51, v43

    move-object/from16 v43, v51

    move-object/from16 v44, v51

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/wooplr/spotlight/SpotlightView;->targetView:Lcom/wooplr/spotlight/target/Target;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/wooplr/spotlight/target/Target;->getViewTop()I

    move-result v44

    const/16 v45, 0x2

    div-int/lit8 v44, v44, 0x2

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v44, v0

    move/from16 v3, v44

    move-object/from16 v0, v43

    iget v0, v0, Lcom/wooplr/spotlight/SpotlightView;->gutter:I

    move/from16 v43, v0

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    move/from16 v4, v43

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/wooplr/spotlight/SpotlightView;->targetView:Lcom/wooplr/spotlight/target/Target;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Lcom/wooplr/spotlight/target/Target;->getViewTop()I

    move-result v42

    const/16 v43, 0x2

    div-int/lit8 v42, v42, 0x2

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    move/from16 v11, v42

    move/from16 v42, v3

    move/from16 v43, v4

    move/from16 v44, v11

    invoke-direct/range {v40 .. v44}, Lcom/wooplr/spotlight/target/AnimPoint;-><init>(FFFF)V

    invoke-interface/range {v38 .. v39}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v38

    move-object/from16 v0, v37

    iget v0, v0, Lcom/wooplr/spotlight/SpotlightView;->gutter:I

    move/from16 v37, v0

    move/from16 v0, v37

    move-object/from16 v1, v36

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/wooplr/spotlight/SpotlightView;->targetView:Lcom/wooplr/spotlight/target/Target;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Lcom/wooplr/spotlight/target/Target;->getViewRight()I

    move-result v35

    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/wooplr/spotlight/SpotlightView;->targetView:Lcom/wooplr/spotlight/target/Target;

    move-object/from16 v36, v0

    invoke-interface/range {v36 .. v36}, Lcom/wooplr/spotlight/target/Target;->getViewWidth()I

    move-result v36

    const/16 v37, 0x2

    div-int/lit8 v36, v36, 0x2

    sub-int v35, v35, v36

    sub-int v34, v34, v35

    move/from16 v35, v10

    add-int v34, v34, v35

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/wooplr/spotlight/SpotlightView;->targetView:Lcom/wooplr/spotlight/target/Target;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lcom/wooplr/spotlight/target/Target;->getViewTop()I

    move-result v32

    const/16 v33, 0x2

    div-int/lit8 v32, v32, 0x2

    sub-int v31, v31, v32

    move/from16 v32, v8

    add-int v31, v31, v32

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const v28, 0x800053

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/wooplr/spotlight/SpotlightView;->headingTv:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const v27, 0x800003

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setGravity(I)V

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/wooplr/spotlight/SpotlightView;->targetView:Lcom/wooplr/spotlight/target/Target;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/wooplr/spotlight/target/Target;->getViewRight()I

    move-result v25

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/wooplr/spotlight/SpotlightView;->targetView:Lcom/wooplr/spotlight/target/Target;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/wooplr/spotlight/target/Target;->getViewWidth()I

    move-result v26

    const/16 v27, 0x2

    div-int/lit8 v26, v26, 0x2

    sub-int v25, v25, v26

    sub-int v24, v24, v25

    move/from16 v25, v10

    add-int v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move-object/from16 v0, v22

    iget v0, v0, Lcom/wooplr/spotlight/SpotlightView;->gutter:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/wooplr/spotlight/SpotlightView;->targetView:Lcom/wooplr/spotlight/target/Target;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/wooplr/spotlight/target/Target;->getViewTop()I

    move-result v18

    const/16 v19, 0x2

    div-int/lit8 v18, v18, 0x2

    move/from16 v19, v9

    add-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const v17, 0x800003

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v15, v15, Lcom/wooplr/spotlight/SpotlightView;->subHeadingTv:Landroid/widget/TextView;

    const v16, 0x800003

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setGravity(I)V

    :goto_0
    move-object v15, v5

    move-object/from16 v16, v2

    move-object/from16 v51, v16

    move-object/from16 v16, v51

    move-object/from16 v17, v51

    move-object/from16 v51, v16

    move-object/from16 v52, v17

    move-object/from16 v16, v51

    move-object/from16 v17, v52

    move-object/from16 v18, v51

    move-object/from16 v19, v52

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/wooplr/spotlight/SpotlightView;->headingTv:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v20, v6

    invoke-virtual/range {v18 .. v20}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/wooplr/spotlight/SpotlightView;->subHeadingTv:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v18, v7

    invoke-virtual/range {v16 .. v18}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object v2, v15

    return-object v2

    :cond_0
    move v15, v4

    move/from16 v16, v3

    move-object/from16 v17, v2

    move-object/from16 v51, v17

    move-object/from16 v17, v51

    move-object/from16 v18, v51

    move-object/from16 v19, v5

    new-instance v20, Lcom/wooplr/spotlight/target/AnimPoint;

    move-object/from16 v51, v20

    move-object/from16 v20, v51

    move-object/from16 v21, v51

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/wooplr/spotlight/SpotlightView;->targetView:Lcom/wooplr/spotlight/target/Target;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/wooplr/spotlight/target/Target;->getViewRight()I

    move-result v22

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/wooplr/spotlight/SpotlightView;->targetView:Lcom/wooplr/spotlight/target/Target;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/wooplr/spotlight/target/Target;->getViewWidth()I

    move-result v23

    const/16 v24, 0x2

    div-int/lit8 v23, v23, 0x2

    sub-int v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v23, v2

    move-object/from16 v51, v23

    move-object/from16 v23, v51

    move-object/from16 v24, v51

    move-object/from16 v51, v24

    move-object/from16 v24, v51

    move-object/from16 v25, v51

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/wooplr/spotlight/SpotlightView;->targetView:Lcom/wooplr/spotlight/target/Target;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/wooplr/spotlight/target/Target;->getPoint()Landroid/graphics/Point;

    move-result-object v25

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v25, v0

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/wooplr/spotlight/SpotlightView;->circleShape:Lcom/wooplr/spotlight/shape/Circle;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/wooplr/spotlight/shape/Circle;->getRadius()I

    move-result v26

    sub-int v25, v25, v26

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget v0, v0, Lcom/wooplr/spotlight/SpotlightView;->extraPaddingForArc:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v11, v25

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/wooplr/spotlight/SpotlightView;->targetView:Lcom/wooplr/spotlight/target/Target;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/wooplr/spotlight/target/Target;->getViewRight()I

    move-result v24

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/wooplr/spotlight/SpotlightView;->targetView:Lcom/wooplr/spotlight/target/Target;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/wooplr/spotlight/target/Target;->getViewWidth()I

    move-result v25

    const/16 v26, 0x2

    div-int/lit8 v25, v25, 0x2

    sub-int v24, v24, v25

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v12, v24

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/wooplr/spotlight/SpotlightView;->targetView:Lcom/wooplr/spotlight/target/Target;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/wooplr/spotlight/target/Target;->getViewTop()I

    move-result v23

    const/16 v24, 0x2

    div-int/lit8 v23, v23, 0x2

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v13, v23

    move/from16 v23, v11

    move/from16 v24, v12

    move/from16 v25, v13

    invoke-direct/range {v21 .. v25}, Lcom/wooplr/spotlight/target/AnimPoint;-><init>(FFFF)V

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v19

    new-instance v19, Lcom/wooplr/spotlight/target/AnimPoint;

    move-object/from16 v11, v19

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/wooplr/spotlight/SpotlightView;->targetView:Lcom/wooplr/spotlight/target/Target;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/wooplr/spotlight/target/Target;->getViewRight()I

    move-result v18

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/wooplr/spotlight/SpotlightView;->targetView:Lcom/wooplr/spotlight/target/Target;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/wooplr/spotlight/target/Target;->getViewWidth()I

    move-result v19

    const/16 v20, 0x2

    div-int/lit8 v19, v19, 0x2

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v12, v18

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/wooplr/spotlight/SpotlightView;->targetView:Lcom/wooplr/spotlight/target/Target;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/wooplr/spotlight/target/Target;->getViewTop()I

    move-result v17

    const/16 v18, 0x2

    div-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v13, v17

    move/from16 v0, v16

    if-le v15, v0, :cond_1

    move-object v15, v2

    iget v15, v15, Lcom/wooplr/spotlight/SpotlightView;->gutter:I

    move v14, v15

    :goto_1
    move v15, v4

    move/from16 v16, v3

    move-object/from16 v17, v5

    move-object/from16 v18, v11

    move-object/from16 v51, v18

    move-object/from16 v18, v51

    move-object/from16 v19, v51

    move/from16 v20, v12

    move-object/from16 v21, v2

    move/from16 v22, v3

    move/from16 v23, v14

    sub-int v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v11, v22

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/wooplr/spotlight/SpotlightView;->targetView:Lcom/wooplr/spotlight/target/Target;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/wooplr/spotlight/target/Target;->getViewTop()I

    move-result v21

    const/16 v22, 0x2

    div-int/lit8 v21, v21, 0x2

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v12, v21

    move/from16 v21, v13

    move/from16 v22, v11

    move/from16 v23, v12

    invoke-direct/range {v19 .. v23}, Lcom/wooplr/spotlight/target/AnimPoint;-><init>(FFFF)V

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v17

    move/from16 v0, v16

    if-le v15, v0, :cond_2

    move-object v15, v6

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Lcom/wooplr/spotlight/SpotlightView;->gutter:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v15, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    :goto_2
    move v15, v4

    move/from16 v16, v3

    move-object/from16 v17, v2

    move-object/from16 v18, v6

    move-object/from16 v51, v18

    move-object/from16 v18, v51

    move-object/from16 v19, v51

    move/from16 v20, v10

    move-object/from16 v21, v6

    move/from16 v22, v4

    move-object/from16 v23, v2

    move-object/from16 v24, v6

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/wooplr/spotlight/SpotlightView;->targetView:Lcom/wooplr/spotlight/target/Target;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/wooplr/spotlight/target/Target;->getViewRight()I

    move-result v25

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/wooplr/spotlight/SpotlightView;->targetView:Lcom/wooplr/spotlight/target/Target;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/wooplr/spotlight/target/Target;->getViewWidth()I

    move-result v26

    const/16 v27, 0x2

    div-int/lit8 v26, v26, 0x2

    sub-int v25, v25, v26

    move/from16 v26, v10

    add-int v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/wooplr/spotlight/SpotlightView;->targetView:Lcom/wooplr/spotlight/target/Target;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/wooplr/spotlight/target/Target;->getViewTop()I

    move-result v23

    const/16 v24, 0x2

    div-int/lit8 v23, v23, 0x2

    sub-int v22, v22, v23

    move/from16 v23, v8

    add-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const v19, 0x800055

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/wooplr/spotlight/SpotlightView;->headingTv:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const v18, 0x800003

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setGravity(I)V

    move/from16 v0, v16

    if-le v15, v0, :cond_3

    move-object v15, v7

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Lcom/wooplr/spotlight/SpotlightView;->gutter:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v15, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    :goto_3
    move-object v15, v2

    move-object/from16 v16, v7

    move-object/from16 v51, v16

    move-object/from16 v16, v51

    move-object/from16 v17, v51

    move/from16 v18, v10

    move-object/from16 v19, v7

    move-object/from16 v20, v2

    move-object/from16 v21, v7

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/wooplr/spotlight/SpotlightView;->targetView:Lcom/wooplr/spotlight/target/Target;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/wooplr/spotlight/target/Target;->getViewRight()I

    move-result v22

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/wooplr/spotlight/SpotlightView;->targetView:Lcom/wooplr/spotlight/target/Target;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/wooplr/spotlight/target/Target;->getViewWidth()I

    move-result v23

    const/16 v24, 0x2

    div-int/lit8 v23, v23, 0x2

    sub-int v22, v22, v23

    move/from16 v23, v10

    add-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/wooplr/spotlight/SpotlightView;->targetView:Lcom/wooplr/spotlight/target/Target;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/wooplr/spotlight/target/Target;->getViewTop()I

    move-result v20

    const/16 v21, 0x2

    div-int/lit8 v20, v20, 0x2

    move/from16 v21, v9

    add-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const v17, 0x800005

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v15, v15, Lcom/wooplr/spotlight/SpotlightView;->subHeadingTv:Landroid/widget/TextView;

    const v16, 0x800003

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_0

    :cond_1
    move-object v15, v2

    iget v15, v15, Lcom/wooplr/spotlight/SpotlightView;->gutter:I

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Lcom/wooplr/spotlight/SpotlightView;->softwareBtnHeight:I

    move/from16 v16, v0

    add-int v15, v15, v16

    move v14, v15

    goto/16 :goto_1

    :cond_2
    move-object v15, v6

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Lcom/wooplr/spotlight/SpotlightView;->gutter:I

    move/from16 v16, v0

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lcom/wooplr/spotlight/SpotlightView;->softwareBtnHeight:I

    move/from16 v17, v0

    add-int v16, v16, v17

    move/from16 v0, v16

    iput v0, v15, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto/16 :goto_2

    :cond_3
    move-object v15, v7

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Lcom/wooplr/spotlight/SpotlightView;->gutter:I

    move/from16 v16, v0

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lcom/wooplr/spotlight/SpotlightView;->softwareBtnHeight:I

    move/from16 v17, v0

    add-int v16, v16, v17

    move/from16 v0, v16

    iput v0, v15, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto/16 :goto_3

    :cond_4
    move-object v15, v2

    iget-object v15, v15, Lcom/wooplr/spotlight/SpotlightView;->targetView:Lcom/wooplr/spotlight/target/Target;

    invoke-interface {v15}, Lcom/wooplr/spotlight/target/Target;->getPoint()Landroid/graphics/Point;

    move-result-object v15

    iget v15, v15, Landroid/graphics/Point;->x:I

    move/from16 v16, v3

    const/16 v17, 0x2

    div-int/lit8 v16, v16, 0x2

    move/from16 v0, v16

    if-le v15, v0, :cond_5

    move-object v15, v2

    move-object/from16 v16, v7

    move-object/from16 v51, v16

    move-object/from16 v16, v51

    move-object/from16 v17, v51

    move/from16 v18, v4

    move-object/from16 v19, v2

    move-object/from16 v20, v7

    move/from16 v21, v10

    move-object/from16 v22, v7

    move/from16 v23, v3

    move-object/from16 v24, v2

    move-object/from16 v25, v7

    move-object/from16 v26, v2

    move-object/from16 v51, v26

    move-object/from16 v26, v51

    move-object/from16 v27, v51

    move-object/from16 v28, v6

    move-object/from16 v51, v28

    move-object/from16 v28, v51

    move-object/from16 v29, v51

    move/from16 v30, v10

    move-object/from16 v31, v6

    move/from16 v32, v4

    move/from16 v51, v32

    move/from16 v32, v51

    move/from16 v33, v51

    move-object/from16 v34, v2

    move-object/from16 v35, v6

    move/from16 v36, v3

    move-object/from16 v37, v2

    move-object/from16 v38, v6

    move-object/from16 v39, v2

    move-object/from16 v40, v5

    move-object/from16 v51, v40

    move-object/from16 v40, v51

    move-object/from16 v41, v51

    new-instance v42, Lcom/wooplr/spotlight/target/AnimPoint;

    move-object/from16 v51, v42

    move-object/from16 v42, v51

    move-object/from16 v43, v51

    move/from16 v44, v4

    move-object/from16 v45, v2

    move-object/from16 v51, v45

    move-object/from16 v45, v51

    move-object/from16 v46, v51

    move-object/from16 v51, v45

    move-object/from16 v52, v46

    move-object/from16 v45, v51

    move-object/from16 v46, v52

    move-object/from16 v47, v51

    move-object/from16 v48, v52

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/wooplr/spotlight/SpotlightView;->targetView:Lcom/wooplr/spotlight/target/Target;

    move-object/from16 v48, v0

    invoke-interface/range {v48 .. v48}, Lcom/wooplr/spotlight/target/Target;->getViewRight()I

    move-result v48

    move-object/from16 v49, v2

    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/wooplr/spotlight/SpotlightView;->targetView:Lcom/wooplr/spotlight/target/Target;

    move-object/from16 v49, v0

    invoke-interface/range {v49 .. v49}, Lcom/wooplr/spotlight/target/Target;->getViewWidth()I

    move-result v49

    const/16 v50, 0x2

    div-int/lit8 v49, v49, 0x2

    sub-int v48, v48, v49

    move/from16 v0, v48

    int-to-float v0, v0

    move/from16 v48, v0

    move/from16 v3, v48

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/wooplr/spotlight/SpotlightView;->targetView:Lcom/wooplr/spotlight/target/Target;

    move-object/from16 v47, v0

    invoke-interface/range {v47 .. v47}, Lcom/wooplr/spotlight/target/Target;->getPoint()Landroid/graphics/Point;

    move-result-object v47

    move-object/from16 v0, v47

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v47, v0

    move-object/from16 v48, v2

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/wooplr/spotlight/SpotlightView;->circleShape:Lcom/wooplr/spotlight/shape/Circle;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Lcom/wooplr/spotlight/shape/Circle;->getRadius()I

    move-result v48

    add-int v47, v47, v48

    move-object/from16 v48, v2

    move-object/from16 v0, v48

    iget v0, v0, Lcom/wooplr/spotlight/SpotlightView;->extraPaddingForArc:I

    move/from16 v48, v0

    add-int v47, v47, v48

    move/from16 v0, v47

    int-to-float v0, v0

    move/from16 v47, v0

    move/from16 v11, v47

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/wooplr/spotlight/SpotlightView;->targetView:Lcom/wooplr/spotlight/target/Target;

    move-object/from16 v46, v0

    invoke-interface/range {v46 .. v46}, Lcom/wooplr/spotlight/target/Target;->getViewRight()I

    move-result v46

    move-object/from16 v47, v2

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/wooplr/spotlight/SpotlightView;->targetView:Lcom/wooplr/spotlight/target/Target;

    move-object/from16 v47, v0

    invoke-interface/range {v47 .. v47}, Lcom/wooplr/spotlight/target/Target;->getViewWidth()I

    move-result v47

    const/16 v48, 0x2

    div-int/lit8 v47, v47, 0x2

    sub-int v46, v46, v47

    move/from16 v0, v46

    int-to-float v0, v0

    move/from16 v46, v0

    move/from16 v12, v46

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/wooplr/spotlight/SpotlightView;->targetView:Lcom/wooplr/spotlight/target/Target;

    move-object/from16 v45, v0

    invoke-interface/range {v45 .. v45}, Lcom/wooplr/spotlight/target/Target;->getViewBottom()I

    move-result v45

    sub-int v44, v44, v45

    const/16 v45, 0x2

    div-int/lit8 v44, v44, 0x2

    move-object/from16 v45, v2

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/wooplr/spotlight/SpotlightView;->targetView:Lcom/wooplr/spotlight/target/Target;

    move-object/from16 v45, v0

    invoke-interface/range {v45 .. v45}, Lcom/wooplr/spotlight/target/Target;->getViewBottom()I

    move-result v45

    add-int v44, v44, v45

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v44, v0

    move/from16 v13, v44

    move/from16 v44, v3

    move/from16 v45, v11

    move/from16 v46, v12

    move/from16 v47, v13

    invoke-direct/range {v43 .. v47}, Lcom/wooplr/spotlight/target/AnimPoint;-><init>(FFFF)V

    invoke-interface/range {v41 .. v42}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v41

    new-instance v41, Lcom/wooplr/spotlight/target/AnimPoint;

    move-object/from16 v51, v41

    move-object/from16 v41, v51

    move-object/from16 v42, v51

    move/from16 v43, v4

    move-object/from16 v44, v2

    move-object/from16 v51, v44

    move-object/from16 v44, v51

    move-object/from16 v45, v51

    move/from16 v46, v4

    move-object/from16 v47, v2

    move-object/from16 v51, v47

    move-object/from16 v47, v51

    move-object/from16 v48, v51

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/wooplr/spotlight/SpotlightView;->targetView:Lcom/wooplr/spotlight/target/Target;

    move-object/from16 v48, v0

    invoke-interface/range {v48 .. v48}, Lcom/wooplr/spotlight/target/Target;->getViewRight()I

    move-result v48

    move-object/from16 v49, v2

    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/wooplr/spotlight/SpotlightView;->targetView:Lcom/wooplr/spotlight/target/Target;

    move-object/from16 v49, v0

    invoke-interface/range {v49 .. v49}, Lcom/wooplr/spotlight/target/Target;->getViewWidth()I

    move-result v49

    const/16 v50, 0x2

    div-int/lit8 v49, v49, 0x2

    sub-int v48, v48, v49

    move/from16 v0, v48

    int-to-float v0, v0

    move/from16 v48, v0

    move/from16 v3, v48

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/wooplr/spotlight/SpotlightView;->targetView:Lcom/wooplr/spotlight/target/Target;

    move-object/from16 v47, v0

    invoke-interface/range {v47 .. v47}, Lcom/wooplr/spotlight/target/Target;->getViewBottom()I

    move-result v47

    sub-int v46, v46, v47

    const/16 v47, 0x2

    div-int/lit8 v46, v46, 0x2

    move-object/from16 v47, v2

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/wooplr/spotlight/SpotlightView;->targetView:Lcom/wooplr/spotlight/target/Target;

    move-object/from16 v47, v0

    invoke-interface/range {v47 .. v47}, Lcom/wooplr/spotlight/target/Target;->getViewBottom()I

    move-result v47

    add-int v46, v46, v47

    move/from16 v0, v46

    int-to-float v0, v0

    move/from16 v46, v0

    move/from16 v4, v46

    move-object/from16 v0, v45

    iget v0, v0, Lcom/wooplr/spotlight/SpotlightView;->gutter:I

    move/from16 v45, v0

    move/from16 v0, v45

    int-to-float v0, v0

    move/from16 v45, v0

    move/from16 v11, v45

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/wooplr/spotlight/SpotlightView;->targetView:Lcom/wooplr/spotlight/target/Target;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/wooplr/spotlight/target/Target;->getViewBottom()I

    move-result v44

    sub-int v43, v43, v44

    const/16 v44, 0x2

    div-int/lit8 v43, v43, 0x2

    move-object/from16 v44, v2

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/wooplr/spotlight/SpotlightView;->targetView:Lcom/wooplr/spotlight/target/Target;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/wooplr/spotlight/target/Target;->getViewBottom()I

    move-result v44

    add-int v43, v43, v44

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    move/from16 v12, v43

    move/from16 v43, v3

    move/from16 v44, v4

    move/from16 v45, v11

    move/from16 v46, v12

    invoke-direct/range {v42 .. v46}, Lcom/wooplr/spotlight/target/AnimPoint;-><init>(FFFF)V

    invoke-interface/range {v40 .. v41}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v40

    move-object/from16 v0, v39

    iget v0, v0, Lcom/wooplr/spotlight/SpotlightView;->gutter:I

    move/from16 v39, v0

    move/from16 v0, v39

    move-object/from16 v1, v38

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/wooplr/spotlight/SpotlightView;->targetView:Lcom/wooplr/spotlight/target/Target;

    move-object/from16 v37, v0

    invoke-interface/range {v37 .. v37}, Lcom/wooplr/spotlight/target/Target;->getViewRight()I

    move-result v37

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/wooplr/spotlight/SpotlightView;->targetView:Lcom/wooplr/spotlight/target/Target;

    move-object/from16 v38, v0

    invoke-interface/range {v38 .. v38}, Lcom/wooplr/spotlight/target/Target;->getViewWidth()I

    move-result v38

    const/16 v39, 0x2

    div-int/lit8 v38, v38, 0x2

    sub-int v37, v37, v38

    sub-int v36, v36, v37

    move/from16 v37, v10

    add-int v36, v36, v37

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/wooplr/spotlight/SpotlightView;->targetView:Lcom/wooplr/spotlight/target/Target;

    move-object/from16 v34, v0

    invoke-interface/range {v34 .. v34}, Lcom/wooplr/spotlight/target/Target;->getViewBottom()I

    move-result v34

    sub-int v33, v33, v34

    const/16 v34, 0x2

    div-int/lit8 v33, v33, 0x2

    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/wooplr/spotlight/SpotlightView;->targetView:Lcom/wooplr/spotlight/target/Target;

    move-object/from16 v34, v0

    invoke-interface/range {v34 .. v34}, Lcom/wooplr/spotlight/target/Target;->getViewBottom()I

    move-result v34

    add-int v33, v33, v34

    sub-int v32, v32, v33

    move/from16 v33, v8

    add-int v32, v32, v33

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    move/from16 v0, v30

    move-object/from16 v1, v29

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const v29, 0x800053

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/wooplr/spotlight/SpotlightView;->headingTv:Landroid/widget/TextView;

    move-object/from16 v27, v0

    const v28, 0x800003

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setGravity(I)V

    move-object/from16 v0, v26

    iget v0, v0, Lcom/wooplr/spotlight/SpotlightView;->gutter:I

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/wooplr/spotlight/SpotlightView;->targetView:Lcom/wooplr/spotlight/target/Target;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/wooplr/spotlight/target/Target;->getViewRight()I

    move-result v24

    sub-int v23, v23, v24

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/wooplr/spotlight/SpotlightView;->targetView:Lcom/wooplr/spotlight/target/Target;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/wooplr/spotlight/target/Target;->getViewWidth()I

    move-result v24

    const/16 v25, 0x2

    div-int/lit8 v24, v24, 0x2

    add-int v23, v23, v24

    move/from16 v24, v10

    add-int v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/wooplr/spotlight/SpotlightView;->targetView:Lcom/wooplr/spotlight/target/Target;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/wooplr/spotlight/target/Target;->getViewBottom()I

    move-result v19

    sub-int v18, v18, v19

    const/16 v19, 0x2

    div-int/lit8 v18, v18, 0x2

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/wooplr/spotlight/SpotlightView;->targetView:Lcom/wooplr/spotlight/target/Target;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/wooplr/spotlight/target/Target;->getViewBottom()I

    move-result v19

    add-int v18, v18, v19

    move/from16 v19, v9

    add-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const v17, 0x800003

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v15, v15, Lcom/wooplr/spotlight/SpotlightView;->subHeadingTv:Landroid/widget/TextView;

    const v16, 0x800003

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_0

    :cond_5
    move v15, v4

    move/from16 v16, v3

    move/from16 v17, v4

    move-object/from16 v18, v2

    move-object/from16 v51, v18

    move-object/from16 v18, v51

    move-object/from16 v19, v51

    move-object/from16 v20, v5

    new-instance v21, Lcom/wooplr/spotlight/target/AnimPoint;

    move-object/from16 v51, v21

    move-object/from16 v21, v51

    move-object/from16 v22, v51

    move/from16 v23, v4

    move-object/from16 v24, v2

    move-object/from16 v51, v24

    move-object/from16 v24, v51

    move-object/from16 v25, v51

    move-object/from16 v51, v24

    move-object/from16 v52, v25

    move-object/from16 v24, v51

    move-object/from16 v25, v52

    move-object/from16 v26, v51

    move-object/from16 v27, v52

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/wooplr/spotlight/SpotlightView;->targetView:Lcom/wooplr/spotlight/target/Target;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lcom/wooplr/spotlight/target/Target;->getViewRight()I

    move-result v27

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/wooplr/spotlight/SpotlightView;->targetView:Lcom/wooplr/spotlight/target/Target;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/wooplr/spotlight/target/Target;->getViewWidth()I

    move-result v28

    const/16 v29, 0x2

    div-int/lit8 v28, v28, 0x2

    sub-int v27, v27, v28

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move/from16 v11, v27

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/wooplr/spotlight/SpotlightView;->targetView:Lcom/wooplr/spotlight/target/Target;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/wooplr/spotlight/target/Target;->getPoint()Landroid/graphics/Point;

    move-result-object v26

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v26, v0

    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/wooplr/spotlight/SpotlightView;->circleShape:Lcom/wooplr/spotlight/shape/Circle;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/wooplr/spotlight/shape/Circle;->getRadius()I

    move-result v27

    add-int v26, v26, v27

    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget v0, v0, Lcom/wooplr/spotlight/SpotlightView;->extraPaddingForArc:I

    move/from16 v27, v0

    add-int v26, v26, v27

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move/from16 v12, v26

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/wooplr/spotlight/SpotlightView;->targetView:Lcom/wooplr/spotlight/target/Target;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/wooplr/spotlight/target/Target;->getViewRight()I

    move-result v25

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/wooplr/spotlight/SpotlightView;->targetView:Lcom/wooplr/spotlight/target/Target;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/wooplr/spotlight/target/Target;->getViewWidth()I

    move-result v26

    const/16 v27, 0x2

    div-int/lit8 v26, v26, 0x2

    sub-int v25, v25, v26

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v13, v25

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/wooplr/spotlight/SpotlightView;->targetView:Lcom/wooplr/spotlight/target/Target;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/wooplr/spotlight/target/Target;->getViewBottom()I

    move-result v24

    sub-int v23, v23, v24

    const/16 v24, 0x2

    div-int/lit8 v23, v23, 0x2

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/wooplr/spotlight/SpotlightView;->targetView:Lcom/wooplr/spotlight/target/Target;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/wooplr/spotlight/target/Target;->getViewBottom()I

    move-result v24

    add-int v23, v23, v24

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v14, v23

    move/from16 v23, v11

    move/from16 v24, v12

    move/from16 v25, v13

    move/from16 v26, v14

    invoke-direct/range {v22 .. v26}, Lcom/wooplr/spotlight/target/AnimPoint;-><init>(FFFF)V

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v20

    new-instance v20, Lcom/wooplr/spotlight/target/AnimPoint;

    move-object/from16 v11, v20

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/wooplr/spotlight/SpotlightView;->targetView:Lcom/wooplr/spotlight/target/Target;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/wooplr/spotlight/target/Target;->getViewRight()I

    move-result v19

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/wooplr/spotlight/SpotlightView;->targetView:Lcom/wooplr/spotlight/target/Target;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/wooplr/spotlight/target/Target;->getViewWidth()I

    move-result v20

    const/16 v21, 0x2

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v12, v19

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/wooplr/spotlight/SpotlightView;->targetView:Lcom/wooplr/spotlight/target/Target;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/wooplr/spotlight/target/Target;->getViewBottom()I

    move-result v18

    sub-int v17, v17, v18

    const/16 v18, 0x2

    div-int/lit8 v17, v17, 0x2

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/wooplr/spotlight/SpotlightView;->targetView:Lcom/wooplr/spotlight/target/Target;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/wooplr/spotlight/target/Target;->getViewBottom()I

    move-result v18

    add-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v13, v17

    move/from16 v0, v16

    if-le v15, v0, :cond_6

    move-object v15, v2

    iget v15, v15, Lcom/wooplr/spotlight/SpotlightView;->gutter:I

    move v14, v15

    :goto_4
    move v15, v4

    move/from16 v16, v3

    move-object/from16 v17, v5

    move-object/from16 v18, v11

    move-object/from16 v51, v18

    move-object/from16 v18, v51

    move-object/from16 v19, v51

    move/from16 v20, v12

    move/from16 v21, v4

    move-object/from16 v22, v2

    move/from16 v23, v3

    move/from16 v24, v14

    sub-int v23, v23, v24

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v11, v23

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/wooplr/spotlight/SpotlightView;->targetView:Lcom/wooplr/spotlight/target/Target;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/wooplr/spotlight/target/Target;->getViewBottom()I

    move-result v22

    sub-int v21, v21, v22

    const/16 v22, 0x2

    div-int/lit8 v21, v21, 0x2

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/wooplr/spotlight/SpotlightView;->targetView:Lcom/wooplr/spotlight/target/Target;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/wooplr/spotlight/target/Target;->getViewBottom()I

    move-result v22

    add-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v12, v21

    move/from16 v21, v13

    move/from16 v22, v11

    move/from16 v23, v12

    invoke-direct/range {v19 .. v23}, Lcom/wooplr/spotlight/target/AnimPoint;-><init>(FFFF)V

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v17

    move/from16 v0, v16

    if-le v15, v0, :cond_7

    move-object v15, v6

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Lcom/wooplr/spotlight/SpotlightView;->gutter:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v15, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    :goto_5
    move v15, v4

    move/from16 v16, v3

    move-object/from16 v17, v2

    move-object/from16 v18, v6

    move-object/from16 v51, v18

    move-object/from16 v18, v51

    move-object/from16 v19, v51

    move/from16 v20, v10

    move-object/from16 v21, v6

    move/from16 v22, v4

    move/from16 v51, v22

    move/from16 v22, v51

    move/from16 v23, v51

    move-object/from16 v24, v2

    move-object/from16 v25, v6

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/wooplr/spotlight/SpotlightView;->targetView:Lcom/wooplr/spotlight/target/Target;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/wooplr/spotlight/target/Target;->getViewRight()I

    move-result v26

    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/wooplr/spotlight/SpotlightView;->targetView:Lcom/wooplr/spotlight/target/Target;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lcom/wooplr/spotlight/target/Target;->getViewWidth()I

    move-result v27

    const/16 v28, 0x2

    div-int/lit8 v27, v27, 0x2

    sub-int v26, v26, v27

    move/from16 v27, v10

    add-int v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/wooplr/spotlight/SpotlightView;->targetView:Lcom/wooplr/spotlight/target/Target;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/wooplr/spotlight/target/Target;->getViewBottom()I

    move-result v24

    sub-int v23, v23, v24

    const/16 v24, 0x2

    div-int/lit8 v23, v23, 0x2

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/wooplr/spotlight/SpotlightView;->targetView:Lcom/wooplr/spotlight/target/Target;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/wooplr/spotlight/target/Target;->getViewBottom()I

    move-result v24

    add-int v23, v23, v24

    sub-int v22, v22, v23

    move/from16 v23, v8

    add-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const v19, 0x800055

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/wooplr/spotlight/SpotlightView;->headingTv:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const v18, 0x800003

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setGravity(I)V

    move/from16 v0, v16

    if-le v15, v0, :cond_8

    move-object v15, v7

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Lcom/wooplr/spotlight/SpotlightView;->gutter:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v15, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    :goto_6
    move-object v15, v2

    move-object/from16 v16, v7

    move-object/from16 v51, v16

    move-object/from16 v16, v51

    move-object/from16 v17, v51

    move/from16 v18, v4

    move-object/from16 v19, v2

    move-object/from16 v20, v7

    move/from16 v21, v10

    move-object/from16 v22, v7

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/wooplr/spotlight/SpotlightView;->targetView:Lcom/wooplr/spotlight/target/Target;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/wooplr/spotlight/target/Target;->getViewRight()I

    move-result v23

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/wooplr/spotlight/SpotlightView;->targetView:Lcom/wooplr/spotlight/target/Target;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/wooplr/spotlight/target/Target;->getViewWidth()I

    move-result v24

    const/16 v25, 0x2

    div-int/lit8 v24, v24, 0x2

    sub-int v23, v23, v24

    move/from16 v24, v10

    add-int v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/wooplr/spotlight/SpotlightView;->targetView:Lcom/wooplr/spotlight/target/Target;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/wooplr/spotlight/target/Target;->getViewBottom()I

    move-result v19

    sub-int v18, v18, v19

    const/16 v19, 0x2

    div-int/lit8 v18, v18, 0x2

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/wooplr/spotlight/SpotlightView;->targetView:Lcom/wooplr/spotlight/target/Target;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/wooplr/spotlight/target/Target;->getViewBottom()I

    move-result v19

    add-int v18, v18, v19

    move/from16 v19, v9

    add-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const v17, 0x800005

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v15, v15, Lcom/wooplr/spotlight/SpotlightView;->subHeadingTv:Landroid/widget/TextView;

    const v16, 0x800003

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_0

    :cond_6
    move-object v15, v2

    iget v15, v15, Lcom/wooplr/spotlight/SpotlightView;->gutter:I

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Lcom/wooplr/spotlight/SpotlightView;->softwareBtnHeight:I

    move/from16 v16, v0

    add-int v15, v15, v16

    move v14, v15

    goto/16 :goto_4

    :cond_7
    move-object v15, v6

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Lcom/wooplr/spotlight/SpotlightView;->gutter:I

    move/from16 v16, v0

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lcom/wooplr/spotlight/SpotlightView;->softwareBtnHeight:I

    move/from16 v17, v0

    add-int v16, v16, v17

    move/from16 v0, v16

    iput v0, v15, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto/16 :goto_5

    :cond_8
    move-object v15, v7

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Lcom/wooplr/spotlight/SpotlightView;->gutter:I

    move/from16 v16, v0

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lcom/wooplr/spotlight/SpotlightView;->softwareBtnHeight:I

    move/from16 v17, v0

    add-int v16, v16, v17

    move/from16 v0, v16

    iput v0, v15, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto/16 :goto_6
.end method

.method private dismiss()V
    .locals 5

    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/wooplr/spotlight/SpotlightView;->dismissCalled:Z

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/wooplr/spotlight/SpotlightView;->dismissCalled:Z

    iget-boolean v1, v1, Lcom/wooplr/spotlight/SpotlightView;->isShowAlways:Z

    if-nez v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Lcom/wooplr/spotlight/SpotlightView;->preferencesManager:Lcom/wooplr/spotlight/prefs/PreferencesManager;

    move-object v2, v0

    iget-object v2, v2, Lcom/wooplr/spotlight/SpotlightView;->usageId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/wooplr/spotlight/prefs/PreferencesManager;->setDisplayed(Ljava/lang/String;)V

    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_2

    move-object v1, v0

    iget-boolean v1, v1, Lcom/wooplr/spotlight/SpotlightView;->isRevealAnimationEnabled:Z

    if-eqz v1, :cond_2

    move-object v1, v0

    invoke-direct {v1}, Lcom/wooplr/spotlight/SpotlightView;->exitRevealAnimation()V

    :goto_1
    goto :goto_0

    :cond_2
    move-object v1, v0

    invoke-direct {v1}, Lcom/wooplr/spotlight/SpotlightView;->startFadeout()V

    goto :goto_1
.end method

.method private enableDismissOnBackPress()V
    .locals 6

    move-object v0, p0

    move-object v1, v0

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->requestFocus()Z

    move-result v1

    return-void
.end method

.method private exitRevealAnimation()V
    .locals 11
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    move-object v0, p0

    move-object v2, v0

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    invoke-direct {v4}, Lcom/wooplr/spotlight/SpotlightView;->getViewWidth()I

    move-result v4

    int-to-double v4, v4

    move-object v6, v0

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v6

    int-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    double-to-float v4, v4

    move v1, v4

    iget-object v3, v3, Lcom/wooplr/spotlight/SpotlightView;->targetView:Lcom/wooplr/spotlight/target/Target;

    invoke-interface {v3}, Lcom/wooplr/spotlight/target/Target;->getPoint()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    move-object v4, v0

    iget-object v4, v4, Lcom/wooplr/spotlight/SpotlightView;->targetView:Lcom/wooplr/spotlight/target/Target;

    invoke-interface {v4}, Lcom/wooplr/spotlight/target/Target;->getPoint()Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->y:I

    move v5, v1

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v2

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    move-object v9, v2

    move-object v10, v3

    move-object v2, v9

    move-object v3, v10

    move-object v4, v9

    move-object v5, v10

    move-object v6, v0

    move-object v9, v5

    move-object v10, v6

    move-object v5, v10

    move-object v6, v9

    move-object v7, v0

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x10c0006

    invoke-static {v7, v8}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-wide v5, v5, Lcom/wooplr/spotlight/SpotlightView;->introAnimationDuration:J

    invoke-virtual {v4, v5, v6}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v4

    new-instance v4, Lcom/wooplr/spotlight/SpotlightView$3;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/wooplr/spotlight/SpotlightView$3;-><init>(Lcom/wooplr/spotlight/SpotlightView;)V

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method private static getSoftButtonsBarHeight(Landroid/app/Activity;)I
    .locals 8

    move-object v0, p0

    :try_start_0
    new-instance v4, Landroid/util/DisplayMetrics;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v1, v5

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v5}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    move v7, v4

    move v4, v7

    move v5, v7

    move v2, v5

    move-object v5, v1

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    move v7, v5

    move v5, v7

    move v6, v7

    move v3, v6

    if-le v4, v5, :cond_1

    move-object v4, v1

    move-object v5, v0

    invoke-virtual {v5}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    move v7, v4

    move v4, v7

    move v5, v7

    move v0, v5

    move v5, v2

    if-le v4, v5, :cond_0

    move v4, v0

    move v5, v2

    sub-int/2addr v4, v5

    move v0, v4

    :goto_0
    return v0

    :cond_0
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    :cond_1
    move-object v4, v1

    move-object v5, v0

    invoke-virtual {v5}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v7, v4

    move v4, v7

    move v5, v7

    move v0, v5

    move v5, v3

    if-le v4, v5, :cond_2

    move v4, v0

    move v5, v3

    sub-int/2addr v4, v5

    move v0, v4

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method private getViewHeight()I
    .locals 3

    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    move-object v2, v0

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    if-le v1, v2, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    move-object v2, v0

    iget v2, v2, Lcom/wooplr/spotlight/SpotlightView;->softwareBtnHeight:I

    sub-int/2addr v1, v2

    move v0, v1

    goto :goto_0
.end method

.method private getViewWidth()I
    .locals 3

    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    move-object v2, v0

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    if-le v1, v2, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    move-object v2, v0

    iget v2, v2, Lcom/wooplr/spotlight/SpotlightView;->softwareBtnHeight:I

    sub-int/2addr v1, v2

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    move v0, v1

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v0

    move-object/from16 v17, v2

    move-object/from16 v2, v17

    move-object/from16 v3, v17

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    move-object/from16 v8, v17

    move-object/from16 v9, v18

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    move-object/from16 v8, v17

    move-object/from16 v9, v18

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    move-object/from16 v12, v17

    move-object/from16 v13, v18

    move-object/from16 v17, v12

    move-object/from16 v18, v13

    move-object/from16 v12, v17

    move-object/from16 v13, v18

    move-object/from16 v14, v17

    move-object/from16 v15, v18

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    const/4 v15, 0x4

    invoke-virtual {v14, v15}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v14, 0x4

    invoke-static {v14}, Lcom/wooplr/spotlight/utils/Utils;->dpToPx(I)I

    move-result v14

    iput v14, v13, Lcom/wooplr/spotlight/SpotlightView;->lineStroke:I

    const/4 v13, 0x0

    iput-boolean v13, v12, Lcom/wooplr/spotlight/SpotlightView;->isReady:Z

    const/4 v12, 0x1

    iput-boolean v12, v11, Lcom/wooplr/spotlight/SpotlightView;->isRevealAnimationEnabled:Z

    const/4 v11, 0x0

    iput-boolean v11, v10, Lcom/wooplr/spotlight/SpotlightView;->dismissOnTouch:Z

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/wooplr/spotlight/SpotlightView;->isPerformClick:Z

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/wooplr/spotlight/SpotlightView;->isShowAlways:Z

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/wooplr/spotlight/SpotlightView;->enableDismissAfterShown:Z

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/wooplr/spotlight/SpotlightView;->dismissOnBackPress:Z

    new-instance v6, Landroid/os/Handler;

    move-object/from16 v17, v6

    move-object/from16 v6, v17

    move-object/from16 v7, v17

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    iput-object v6, v5, Lcom/wooplr/spotlight/SpotlightView;->handler:Landroid/os/Handler;

    new-instance v5, Lcom/wooplr/spotlight/prefs/PreferencesManager;

    move-object/from16 v17, v5

    move-object/from16 v5, v17

    move-object/from16 v6, v17

    move-object v7, v1

    invoke-direct {v6, v7}, Lcom/wooplr/spotlight/prefs/PreferencesManager;-><init>(Landroid/content/Context;)V

    iput-object v5, v4, Lcom/wooplr/spotlight/SpotlightView;->preferencesManager:Lcom/wooplr/spotlight/prefs/PreferencesManager;

    new-instance v4, Landroid/graphics/Paint;

    move-object/from16 v17, v4

    move-object/from16 v4, v17

    move-object/from16 v5, v17

    move-object v6, v0

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v5, v18

    move-object/from16 v6, v17

    move-object/from16 v17, v6

    move-object/from16 v6, v17

    move-object/from16 v7, v17

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    iput-object v6, v5, Lcom/wooplr/spotlight/SpotlightView;->eraser:Landroid/graphics/Paint;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, v3, Lcom/wooplr/spotlight/SpotlightView;->eraser:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    move-object/from16 v17, v4

    move-object/from16 v4, v17

    move-object/from16 v5, v17

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    move-result-object v3

    iget-object v2, v2, Lcom/wooplr/spotlight/SpotlightView;->eraser:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFlags(I)V

    return-void
.end method

.method private removeSpotlightView()V
    .locals 7

    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/wooplr/spotlight/SpotlightView;->listener:Lcom/wooplr/spotlight/utils/SpotlightListener;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v1, v3

    if-eqz v2, :cond_0

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/wooplr/spotlight/SpotlightView;->usageId:Ljava/lang/String;

    move-object v4, v0

    move-object v5, v3

    move-object v6, v4

    move-object v3, v6

    move-object v4, v5

    invoke-interface {v2, v3, v4}, Lcom/wooplr/spotlight/utils/SpotlightListener;->onUserClicked(Lcom/wooplr/spotlight/SpotlightView;Ljava/lang/String;)V

    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object v2, v0

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private setMaskColor(I)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/wooplr/spotlight/SpotlightView;->maskColor:I

    return-void
.end method

.method private setSoftwareBtnHeight(I)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/wooplr/spotlight/SpotlightView;->softwareBtnHeight:I

    return-void
.end method

.method private show(Landroid/app/Activity;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/wooplr/spotlight/SpotlightView;->preferencesManager:Lcom/wooplr/spotlight/prefs/PreferencesManager;

    move-object v3, v0

    iget-object v3, v3, Lcom/wooplr/spotlight/SpotlightView;->usageId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/wooplr/spotlight/prefs/PreferencesManager;->isDisplayed(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object v2, v0

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v1

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    move-object v5, v0

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/wooplr/spotlight/SpotlightView;->setReady(Z)V

    new-instance v3, Lcom/wooplr/spotlight/SpotlightView$1;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/wooplr/spotlight/SpotlightView$1;-><init>(Lcom/wooplr/spotlight/SpotlightView;Landroid/app/Activity;)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    move-result v2

    goto :goto_0
.end method

.method private startFadeout()V
    .locals 12

    move-object v0, p0

    move-object v1, v0

    new-instance v2, Landroid/view/animation/AlphaAnimation;

    move-object v10, v2

    move-object v2, v10

    move-object v3, v10

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    move-object v10, v3

    move-object v11, v4

    move-object v3, v10

    move-object v4, v11

    move-object v5, v10

    move-object v6, v11

    move-object v7, v0

    move-object v10, v6

    move-object v11, v7

    move-object v6, v11

    move-object v7, v10

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iget-wide v6, v6, Lcom/wooplr/spotlight/SpotlightView;->introAnimationDuration:J

    invoke-virtual {v5, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    new-instance v4, Lcom/wooplr/spotlight/SpotlightView$5;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/wooplr/spotlight/SpotlightView$5;-><init>(Lcom/wooplr/spotlight/SpotlightView;)V

    invoke-virtual {v3, v4}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private startFadinAnimation(Landroid/app/Activity;)V
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v12, v3

    move-object v3, v12

    move-object v4, v12

    new-instance v5, Landroid/view/animation/AlphaAnimation;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v12, v5

    move-object v13, v6

    move-object v5, v12

    move-object v6, v13

    move-object v7, v12

    move-object v8, v13

    move-object v2, v8

    move-object v8, v0

    move-object v9, v2

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v9, v10, v11}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iget-wide v8, v8, Lcom/wooplr/spotlight/SpotlightView;->introAnimationDuration:J

    invoke-virtual {v7, v8, v9}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    new-instance v6, Lcom/wooplr/spotlight/SpotlightView$4;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v0

    move-object v9, v1

    invoke-direct {v7, v8, v9}, Lcom/wooplr/spotlight/SpotlightView$4;-><init>(Lcom/wooplr/spotlight/SpotlightView;Landroid/app/Activity;)V

    invoke-virtual {v5, v6}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-boolean v3, v3, Lcom/wooplr/spotlight/SpotlightView;->dismissOnBackPress:Z

    if-eqz v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->requestFocus()Z

    move-result v3

    :cond_0
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private startRevealAnimation(Landroid/app/Activity;)V
    .locals 14
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    move-object v1, p0

    move-object v2, p1

    move-object v4, v1

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v12, v5

    move-object v13, v6

    move-object v5, v12

    move-object v6, v13

    move-object v7, v12

    move-object v8, v13

    invoke-direct {v8}, Lcom/wooplr/spotlight/SpotlightView;->getViewWidth()I

    move-result v8

    int-to-double v8, v8

    move-object v10, v1

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v10

    int-to-double v10, v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v8

    double-to-float v8, v8

    move v3, v8

    iget-object v7, v7, Lcom/wooplr/spotlight/SpotlightView;->targetView:Lcom/wooplr/spotlight/target/Target;

    invoke-interface {v7}, Lcom/wooplr/spotlight/target/Target;->getPoint()Landroid/graphics/Point;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Point;->x:I

    move-object v8, v1

    iget-object v8, v8, Lcom/wooplr/spotlight/SpotlightView;->targetView:Lcom/wooplr/spotlight/target/Target;

    invoke-interface {v8}, Lcom/wooplr/spotlight/target/Target;->getPoint()Landroid/graphics/Point;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Point;->y:I

    const/4 v9, 0x0

    move v10, v3

    invoke-static {v6, v7, v8, v9, v10}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v6

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v3, v8

    move-object v8, v1

    move-object v9, v3

    move-object v10, v2

    const v11, 0x10c000f

    invoke-static {v10, v11}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-wide v8, v8, Lcom/wooplr/spotlight/SpotlightView;->introAnimationDuration:J

    invoke-virtual {v7, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v7

    new-instance v7, Lcom/wooplr/spotlight/SpotlightView$2;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v1

    move-object v10, v2

    invoke-direct {v8, v9, v10}, Lcom/wooplr/spotlight/SpotlightView$2;-><init>(Lcom/wooplr/spotlight/SpotlightView;Landroid/app/Activity;)V

    invoke-virtual {v6, v7}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-boolean v4, v4, Lcom/wooplr/spotlight/SpotlightView;->dismissOnBackPress:Z

    if-eqz v4, :cond_0

    move-object v4, v1

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->requestFocus()Z

    move-result v4

    :cond_0
    move-object v4, v3

    invoke-virtual {v4}, Landroid/animation/Animator;->start()V

    return-void
.end method


# virtual methods
.method public dismissSpotlight()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/wooplr/spotlight/SpotlightView;->dismiss()V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Lcom/wooplr/spotlight/SpotlightView;->dismissOnBackPress:Z

    if-eqz v2, :cond_1

    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move-object v2, v0

    invoke-direct {v2}, Lcom/wooplr/spotlight/SpotlightView;->dismiss()V

    :cond_0
    const/4 v2, 0x1

    move v0, v2

    :goto_0
    return v0

    :cond_1
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method public isEnableDismissAfterShown()Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/wooplr/spotlight/SpotlightView;->enableDismissAfterShown:Z

    move v0, v1

    return v0
.end method

.method public logger(Ljava/lang/String;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v2, "Spotlight"

    move-object v3, v1

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v1

    invoke-super {v6, v7}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    :try_start_0
    iget-boolean v5, v5, Lcom/wooplr/spotlight/SpotlightView;->isReady:Z

    if-nez v5, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lcom/wooplr/spotlight/SpotlightView;->bitmap:Landroid/graphics/Bitmap;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v2, v6

    if-eqz v5, :cond_1

    move-object v5, v1

    if-nez v5, :cond_3

    :cond_1
    move-object v5, v2

    if-eqz v5, :cond_2

    move-object v5, v2

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    move-object v5, v0

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    iget v7, v7, Lcom/wooplr/spotlight/SpotlightView;->width:I

    move-object v8, v0

    iget v8, v8, Lcom/wooplr/spotlight/SpotlightView;->height:I

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, v6, Lcom/wooplr/spotlight/SpotlightView;->bitmap:Landroid/graphics/Bitmap;

    new-instance v6, Landroid/graphics/Canvas;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    iget-object v8, v8, Lcom/wooplr/spotlight/SpotlightView;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v7, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v6, v5, Lcom/wooplr/spotlight/SpotlightView;->canvas:Landroid/graphics/Canvas;

    :cond_3
    move-object v5, v1

    move-object v6, v0

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    iget-object v8, v8, Lcom/wooplr/spotlight/SpotlightView;->canvas:Landroid/graphics/Canvas;

    const/4 v9, 0x0

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v7, v7, Lcom/wooplr/spotlight/SpotlightView;->canvas:Landroid/graphics/Canvas;

    move-object v8, v0

    iget v8, v8, Lcom/wooplr/spotlight/SpotlightView;->maskColor:I

    invoke-virtual {v7, v8}, Landroid/graphics/Canvas;->drawColor(I)V

    iget-object v6, v6, Lcom/wooplr/spotlight/SpotlightView;->circleShape:Lcom/wooplr/spotlight/shape/Circle;

    move-object v7, v0

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    iget-object v9, v9, Lcom/wooplr/spotlight/SpotlightView;->canvas:Landroid/graphics/Canvas;

    move-object v2, v9

    iget-object v8, v8, Lcom/wooplr/spotlight/SpotlightView;->eraser:Landroid/graphics/Paint;

    move-object v3, v8

    iget v7, v7, Lcom/wooplr/spotlight/SpotlightView;->padding:I

    move v4, v7

    move-object v7, v2

    move-object v8, v3

    move v9, v4

    invoke-virtual {v6, v7, v8, v9}, Lcom/wooplr/spotlight/shape/Circle;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;I)V

    if-eqz v5, :cond_4

    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/wooplr/spotlight/SpotlightView;->bitmap:Landroid/graphics/Bitmap;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_1
    goto :goto_0

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 12

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v10, v4

    move-object v11, v5

    move-object v4, v10

    move-object v5, v11

    move-object v6, v10

    move-object v7, v11

    move v8, v1

    move v9, v2

    invoke-super {v7, v8, v9}, Landroid/widget/FrameLayout;->onMeasure(II)V

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v6

    iput v6, v5, Lcom/wooplr/spotlight/SpotlightView;->width:I

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    iput v4, v3, Lcom/wooplr/spotlight/SpotlightView;->height:I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    move-object v1, p0

    move-object v2, p1

    move-object v6, v2

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    move-object v7, v1

    move-object v8, v2

    invoke-virtual {v8}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    move v3, v8

    iget-object v7, v7, Lcom/wooplr/spotlight/SpotlightView;->circleShape:Lcom/wooplr/spotlight/shape/Circle;

    invoke-virtual {v7}, Lcom/wooplr/spotlight/shape/Circle;->getPoint()Landroid/graphics/Point;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Point;->x:I

    move-object v8, v1

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    iget-object v9, v9, Lcom/wooplr/spotlight/SpotlightView;->circleShape:Lcom/wooplr/spotlight/shape/Circle;

    invoke-virtual {v9}, Lcom/wooplr/spotlight/shape/Circle;->getPoint()Landroid/graphics/Point;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Point;->y:I

    move v4, v9

    iget-object v8, v8, Lcom/wooplr/spotlight/SpotlightView;->circleShape:Lcom/wooplr/spotlight/shape/Circle;

    invoke-virtual {v8}, Lcom/wooplr/spotlight/shape/Circle;->getRadius()I

    move-result v8

    move v5, v8

    int-to-float v7, v7

    sub-float/2addr v6, v7

    float-to-double v6, v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    move v8, v3

    move v9, v4

    int-to-float v9, v9

    sub-float/2addr v8, v9

    float-to-double v8, v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v6, v8

    move v8, v5

    int-to-double v8, v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    cmpg-double v6, v6, v8

    if-gtz v6, :cond_0

    const/4 v6, 0x1

    move v3, v6

    :goto_0
    move-object v6, v2

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    move v12, v6

    move v6, v12

    move v7, v12

    move v4, v7

    if-eqz v6, :cond_5

    move v6, v4

    const/4 v7, 0x1

    if-eq v6, v7, :cond_1

    move-object v6, v1

    move-object v7, v2

    invoke-super {v6, v7}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    move v1, v6

    :goto_1
    return v1

    :cond_0
    const/4 v6, 0x0

    move v3, v6

    goto :goto_0

    :cond_1
    move v6, v3

    if-nez v6, :cond_2

    move-object v6, v1

    iget-boolean v6, v6, Lcom/wooplr/spotlight/SpotlightView;->dismissOnTouch:Z

    if-eqz v6, :cond_3

    :cond_2
    move-object v6, v1

    invoke-direct {v6}, Lcom/wooplr/spotlight/SpotlightView;->dismiss()V

    :cond_3
    move v6, v3

    if-eqz v6, :cond_4

    move-object v6, v1

    iget-boolean v6, v6, Lcom/wooplr/spotlight/SpotlightView;->isPerformClick:Z

    if-eqz v6, :cond_4

    move-object v6, v1

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v12, v7

    move-object v13, v8

    move-object v7, v12

    move-object v8, v13

    move-object v9, v12

    move-object v10, v13

    iget-object v10, v10, Lcom/wooplr/spotlight/SpotlightView;->targetView:Lcom/wooplr/spotlight/target/Target;

    invoke-interface {v10}, Lcom/wooplr/spotlight/target/Target;->getView()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->performClick()Z

    move-result v10

    iget-object v9, v9, Lcom/wooplr/spotlight/SpotlightView;->targetView:Lcom/wooplr/spotlight/target/Target;

    invoke-interface {v9}, Lcom/wooplr/spotlight/target/Target;->getView()Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/view/View;->setPressed(Z)V

    iget-object v8, v8, Lcom/wooplr/spotlight/SpotlightView;->targetView:Lcom/wooplr/spotlight/target/Target;

    invoke-interface {v8}, Lcom/wooplr/spotlight/target/Target;->getView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->invalidate()V

    iget-object v7, v7, Lcom/wooplr/spotlight/SpotlightView;->targetView:Lcom/wooplr/spotlight/target/Target;

    invoke-interface {v7}, Lcom/wooplr/spotlight/target/Target;->getView()Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setPressed(Z)V

    iget-object v6, v6, Lcom/wooplr/spotlight/SpotlightView;->targetView:Lcom/wooplr/spotlight/target/Target;

    invoke-interface {v6}, Lcom/wooplr/spotlight/target/Target;->getView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->invalidate()V

    :cond_4
    const/4 v6, 0x1

    move v1, v6

    goto :goto_1

    :cond_5
    move v6, v3

    if-eqz v6, :cond_6

    move-object v6, v1

    iget-boolean v6, v6, Lcom/wooplr/spotlight/SpotlightView;->isPerformClick:Z

    if-eqz v6, :cond_6

    move-object v6, v1

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    iget-object v7, v7, Lcom/wooplr/spotlight/SpotlightView;->targetView:Lcom/wooplr/spotlight/target/Target;

    invoke-interface {v7}, Lcom/wooplr/spotlight/target/Target;->getView()Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/view/View;->setPressed(Z)V

    iget-object v6, v6, Lcom/wooplr/spotlight/SpotlightView;->targetView:Lcom/wooplr/spotlight/target/Target;

    invoke-interface {v6}, Lcom/wooplr/spotlight/target/Target;->getView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->invalidate()V

    :cond_6
    const/4 v6, 0x1

    move v1, v6

    goto :goto_1
.end method

.method public removeSpotlightView(Z)V
    .locals 6

    move-object v0, p0

    move v1, p1

    move v2, v1

    if-eqz v2, :cond_0

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/wooplr/spotlight/SpotlightView;->listener:Lcom/wooplr/spotlight/utils/SpotlightListener;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v1, v3

    if-eqz v2, :cond_0

    move-object v2, v1

    move-object v3, v0

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    iget-object v4, v4, Lcom/wooplr/spotlight/SpotlightView;->usageId:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/wooplr/spotlight/utils/SpotlightListener;->onUserClicked(Lcom/wooplr/spotlight/SpotlightView;Ljava/lang/String;)V

    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object v2, v0

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public resetAllUsageIds()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    :try_start_0
    iget-object v1, v1, Lcom/wooplr/spotlight/SpotlightView;->preferencesManager:Lcom/wooplr/spotlight/prefs/PreferencesManager;

    invoke-virtual {v1}, Lcom/wooplr/spotlight/prefs/PreferencesManager;->resetAll()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public resetUsageId(Ljava/lang/String;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/wooplr/spotlight/SpotlightView;->preferencesManager:Lcom/wooplr/spotlight/prefs/PreferencesManager;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/wooplr/spotlight/prefs/PreferencesManager;->reset(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setCircleShape(Lcom/wooplr/spotlight/shape/Circle;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/wooplr/spotlight/SpotlightView;->circleShape:Lcom/wooplr/spotlight/shape/Circle;

    return-void
.end method

.method public setConfiguration(Lcom/wooplr/spotlight/SpotlightConfig;)V
    .locals 43

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object v5, v4

    if-eqz v5, :cond_0

    move-object v5, v3

    move-object v6, v4

    move-object v7, v3

    move-object v8, v4

    move-object v9, v3

    move-object v10, v4

    move-object v11, v3

    move-object v12, v4

    move-object v13, v3

    move-object v14, v4

    move-object v15, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    move-object/from16 v23, v3

    move-object/from16 v24, v4

    move-object/from16 v25, v3

    move-object/from16 v26, v4

    move-object/from16 v27, v3

    move-object/from16 v28, v4

    move-object/from16 v29, v3

    move-object/from16 v30, v4

    move-object/from16 v31, v3

    move-object/from16 v32, v4

    move-object/from16 v33, v3

    move-object/from16 v34, v4

    move-object/from16 v35, v3

    move-object/from16 v36, v4

    move-object/from16 v37, v3

    move-object/from16 v38, v4

    move-object/from16 v39, v3

    move-object/from16 v40, v4

    move-object/from16 v41, v3

    move-object/from16 v42, v4

    invoke-virtual/range {v42 .. v42}, Lcom/wooplr/spotlight/SpotlightConfig;->getMaskColor()I

    move-result v42

    move/from16 v0, v42

    move-object/from16 v1, v41

    iput v0, v1, Lcom/wooplr/spotlight/SpotlightView;->maskColor:I

    invoke-virtual/range {v40 .. v40}, Lcom/wooplr/spotlight/SpotlightConfig;->getIntroAnimationDuration()J

    move-result-wide v40

    move-wide/from16 v0, v40

    move-object/from16 v2, v39

    iput-wide v0, v2, Lcom/wooplr/spotlight/SpotlightView;->introAnimationDuration:J

    invoke-virtual/range {v38 .. v38}, Lcom/wooplr/spotlight/SpotlightConfig;->isRevealAnimationEnabled()Z

    move-result v38

    move/from16 v0, v38

    move-object/from16 v1, v37

    iput-boolean v0, v1, Lcom/wooplr/spotlight/SpotlightView;->isRevealAnimationEnabled:Z

    invoke-virtual/range {v36 .. v36}, Lcom/wooplr/spotlight/SpotlightConfig;->getFadingTextDuration()J

    move-result-wide v36

    move-wide/from16 v0, v36

    move-object/from16 v2, v35

    iput-wide v0, v2, Lcom/wooplr/spotlight/SpotlightView;->fadingTextDuration:J

    invoke-virtual/range {v34 .. v34}, Lcom/wooplr/spotlight/SpotlightConfig;->getPadding()I

    move-result v34

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput v0, v1, Lcom/wooplr/spotlight/SpotlightView;->padding:I

    invoke-virtual/range {v32 .. v32}, Lcom/wooplr/spotlight/SpotlightConfig;->isDismissOnTouch()Z

    move-result v32

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput-boolean v0, v1, Lcom/wooplr/spotlight/SpotlightView;->dismissOnTouch:Z

    invoke-virtual/range {v30 .. v30}, Lcom/wooplr/spotlight/SpotlightConfig;->isDismissOnBackpress()Z

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, v29

    iput-boolean v0, v1, Lcom/wooplr/spotlight/SpotlightView;->dismissOnBackPress:Z

    invoke-virtual/range {v28 .. v28}, Lcom/wooplr/spotlight/SpotlightConfig;->isPerformClick()Z

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput-boolean v0, v1, Lcom/wooplr/spotlight/SpotlightView;->isPerformClick:Z

    invoke-virtual/range {v26 .. v26}, Lcom/wooplr/spotlight/SpotlightConfig;->getHeadingTvSize()I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lcom/wooplr/spotlight/SpotlightView;->headingTvSize:I

    invoke-virtual/range {v24 .. v24}, Lcom/wooplr/spotlight/SpotlightConfig;->getHeadingTvSizeDimenUnit()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/wooplr/spotlight/SpotlightView;->headingTvSizeDimenUnit:I

    invoke-virtual/range {v22 .. v22}, Lcom/wooplr/spotlight/SpotlightConfig;->getHeadingTvColor()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/wooplr/spotlight/SpotlightView;->headingTvColor:I

    invoke-virtual/range {v20 .. v20}, Lcom/wooplr/spotlight/SpotlightConfig;->getHeadingTvText()Ljava/lang/CharSequence;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/wooplr/spotlight/SpotlightView;->headingTvText:Ljava/lang/CharSequence;

    invoke-virtual/range {v18 .. v18}, Lcom/wooplr/spotlight/SpotlightConfig;->getSubHeadingTvSize()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/wooplr/spotlight/SpotlightView;->subHeadingTvSize:I

    invoke-virtual/range {v16 .. v16}, Lcom/wooplr/spotlight/SpotlightConfig;->getSubHeadingTvSizeDimenUnit()I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Lcom/wooplr/spotlight/SpotlightView;->subHeadingTvSizeDimenUnit:I

    invoke-virtual {v14}, Lcom/wooplr/spotlight/SpotlightConfig;->getSubHeadingTvColor()I

    move-result v14

    iput v14, v13, Lcom/wooplr/spotlight/SpotlightView;->subHeadingTvColor:I

    invoke-virtual {v12}, Lcom/wooplr/spotlight/SpotlightConfig;->getSubHeadingTvText()Ljava/lang/CharSequence;

    move-result-object v12

    iput-object v12, v11, Lcom/wooplr/spotlight/SpotlightView;->subHeadingTvText:Ljava/lang/CharSequence;

    invoke-virtual {v10}, Lcom/wooplr/spotlight/SpotlightConfig;->getLineAnimationDuration()J

    move-result-wide v10

    iput-wide v10, v9, Lcom/wooplr/spotlight/SpotlightView;->lineAnimationDuration:J

    invoke-virtual {v8}, Lcom/wooplr/spotlight/SpotlightConfig;->getLineStroke()I

    move-result v8

    iput v8, v7, Lcom/wooplr/spotlight/SpotlightView;->lineStroke:I

    invoke-virtual {v6}, Lcom/wooplr/spotlight/SpotlightConfig;->getLineAndArcColor()I

    move-result v6

    iput v6, v5, Lcom/wooplr/spotlight/SpotlightView;->lineAndArcColor:I

    :cond_0
    return-void
.end method

.method public setDismissOnBackPress(Z)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/wooplr/spotlight/SpotlightView;->dismissOnBackPress:Z

    return-void
.end method

.method public setDismissOnTouch(Z)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/wooplr/spotlight/SpotlightView;->dismissOnTouch:Z

    return-void
.end method

.method public setEnableDismissAfterShown(Z)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/wooplr/spotlight/SpotlightView;->enableDismissAfterShown:Z

    return-void
.end method

.method public setExtraPaddingForArc(I)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/wooplr/spotlight/SpotlightView;->extraPaddingForArc:I

    return-void
.end method

.method public setFadingTextDuration(J)V
    .locals 7

    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lcom/wooplr/spotlight/SpotlightView;->fadingTextDuration:J

    return-void
.end method

.method public setHeadingTvColor(I)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/wooplr/spotlight/SpotlightView;->headingTvColor:I

    return-void
.end method

.method public setHeadingTvSize(I)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/wooplr/spotlight/SpotlightView;->headingTvSize:I

    return-void
.end method

.method public setHeadingTvSize(II)V
    .locals 7

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move v5, v1

    iput v5, v4, Lcom/wooplr/spotlight/SpotlightView;->headingTvSizeDimenUnit:I

    move v4, v2

    iput v4, v3, Lcom/wooplr/spotlight/SpotlightView;->headingTvSize:I

    return-void
.end method

.method public setHeadingTvText(Ljava/lang/CharSequence;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/wooplr/spotlight/SpotlightView;->headingTvText:Ljava/lang/CharSequence;

    return-void
.end method

.method public setHeadingTypeface(Landroid/graphics/Typeface;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/wooplr/spotlight/SpotlightView;->mHeadingTypeface:Landroid/graphics/Typeface;

    return-void
.end method

.method public setIntroAnimationDuration(J)V
    .locals 7

    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lcom/wooplr/spotlight/SpotlightView;->introAnimationDuration:J

    return-void
.end method

.method public setLineAndArcColor(I)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/wooplr/spotlight/SpotlightView;->lineAndArcColor:I

    return-void
.end method

.method public setLineAnimationDuration(J)V
    .locals 7

    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lcom/wooplr/spotlight/SpotlightView;->lineAnimationDuration:J

    return-void
.end method

.method public setLineEffect(Landroid/graphics/PathEffect;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/wooplr/spotlight/SpotlightView;->lineEffect:Landroid/graphics/PathEffect;

    return-void
.end method

.method public setLineStroke(I)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/wooplr/spotlight/SpotlightView;->lineStroke:I

    return-void
.end method

.method public setListener(Lcom/wooplr/spotlight/utils/SpotlightListener;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/wooplr/spotlight/SpotlightView;->listener:Lcom/wooplr/spotlight/utils/SpotlightListener;

    return-void
.end method

.method public setPadding(I)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/wooplr/spotlight/SpotlightView;->padding:I

    return-void
.end method

.method public setPerformClick(Z)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/wooplr/spotlight/SpotlightView;->isPerformClick:Z

    return-void
.end method

.method public setReady(Z)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/wooplr/spotlight/SpotlightView;->isReady:Z

    return-void
.end method

.method public setRevealAnimationEnabled(Z)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/wooplr/spotlight/SpotlightView;->isRevealAnimationEnabled:Z

    return-void
.end method

.method public setShowAlways(Z)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/wooplr/spotlight/SpotlightView;->isShowAlways:Z

    return-void
.end method

.method public setShowTargetArc(Z)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/wooplr/spotlight/SpotlightView;->showTargetArc:Z

    return-void
.end method

.method public setSubHeadingTvColor(I)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/wooplr/spotlight/SpotlightView;->subHeadingTvColor:I

    return-void
.end method

.method public setSubHeadingTvSize(I)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/wooplr/spotlight/SpotlightView;->subHeadingTvSize:I

    return-void
.end method

.method public setSubHeadingTvSize(II)V
    .locals 7

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move v5, v1

    iput v5, v4, Lcom/wooplr/spotlight/SpotlightView;->subHeadingTvSizeDimenUnit:I

    move v4, v2

    iput v4, v3, Lcom/wooplr/spotlight/SpotlightView;->subHeadingTvSize:I

    return-void
.end method

.method public setSubHeadingTvText(Ljava/lang/CharSequence;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/wooplr/spotlight/SpotlightView;->subHeadingTvText:Ljava/lang/CharSequence;

    return-void
.end method

.method public setSubHeadingTypeface(Landroid/graphics/Typeface;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/wooplr/spotlight/SpotlightView;->mSubHeadingTypeface:Landroid/graphics/Typeface;

    return-void
.end method

.method public setTargetView(Lcom/wooplr/spotlight/target/Target;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/wooplr/spotlight/SpotlightView;->targetView:Lcom/wooplr/spotlight/target/Target;

    return-void
.end method

.method public setUsageId(Ljava/lang/String;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/wooplr/spotlight/SpotlightView;->usageId:Ljava/lang/String;

    return-void
.end method
