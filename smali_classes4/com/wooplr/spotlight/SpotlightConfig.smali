.class public Lcom/wooplr/spotlight/SpotlightConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private dismissOnBackpress:Z

.field private dismissOnTouch:Z

.field private fadingTextDuration:J

.field private headingTvColor:I

.field private headingTvSize:I

.field private headingTvSizeDimenUnit:I

.field private headingTvText:Ljava/lang/CharSequence;

.field private introAnimationDuration:J

.field private isPerformClick:Z

.field private isRevealAnimationEnabled:Z

.field private lineAndArcColor:I

.field private lineAnimationDuration:J

.field private lineStroke:I

.field private maskColor:I

.field private padding:I

.field private showTargetArc:Z

.field private subHeadingTvColor:I

.field private subHeadingTvSize:I

.field private subHeadingTvSizeDimenUnit:I

.field private subHeadingTvText:Ljava/lang/CharSequence;

.field private typeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>()V
    .locals 29

    move-object/from16 v4, p0

    move-object v5, v4

    move-object/from16 v27, v5

    move-object/from16 v5, v27

    move-object/from16 v6, v27

    move-object/from16 v27, v5

    move-object/from16 v28, v6

    move-object/from16 v5, v27

    move-object/from16 v6, v28

    move-object/from16 v7, v27

    move-object/from16 v8, v28

    move-object/from16 v27, v7

    move-object/from16 v28, v8

    move-object/from16 v7, v27

    move-object/from16 v8, v28

    move-object/from16 v9, v27

    move-object/from16 v10, v28

    move-object/from16 v27, v9

    move-object/from16 v28, v10

    move-object/from16 v9, v27

    move-object/from16 v10, v28

    move-object/from16 v11, v27

    move-object/from16 v12, v28

    move-object/from16 v27, v11

    move-object/from16 v28, v12

    move-object/from16 v11, v27

    move-object/from16 v12, v28

    move-object/from16 v13, v27

    move-object/from16 v14, v28

    move-object/from16 v27, v13

    move-object/from16 v28, v14

    move-object/from16 v13, v27

    move-object/from16 v14, v28

    move-object/from16 v15, v27

    move-object/from16 v16, v28

    move-object/from16 v27, v15

    move-object/from16 v28, v16

    move-object/from16 v15, v27

    move-object/from16 v16, v28

    move-object/from16 v17, v27

    move-object/from16 v18, v28

    move-object/from16 v27, v17

    move-object/from16 v28, v18

    move-object/from16 v17, v27

    move-object/from16 v18, v28

    move-object/from16 v19, v27

    move-object/from16 v20, v28

    move-object/from16 v27, v19

    move-object/from16 v28, v20

    move-object/from16 v19, v27

    move-object/from16 v20, v28

    move-object/from16 v21, v27

    move-object/from16 v22, v28

    move-object/from16 v27, v21

    move-object/from16 v28, v22

    move-object/from16 v21, v27

    move-object/from16 v22, v28

    move-object/from16 v23, v27

    move-object/from16 v24, v28

    move-object/from16 v27, v23

    move-object/from16 v28, v24

    move-object/from16 v23, v27

    move-object/from16 v24, v28

    move-object/from16 v25, v27

    move-object/from16 v26, v28

    invoke-direct/range {v26 .. v26}, Ljava/lang/Object;-><init>()V

    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput-boolean v0, v1, Lcom/wooplr/spotlight/SpotlightConfig;->isRevealAnimationEnabled:Z

    const/high16 v25, 0x70000000

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lcom/wooplr/spotlight/SpotlightConfig;->maskColor:I

    const-wide/16 v24, 0x190

    move-wide/from16 v0, v24

    move-object/from16 v2, v23

    iput-wide v0, v2, Lcom/wooplr/spotlight/SpotlightConfig;->introAnimationDuration:J

    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput-boolean v0, v1, Lcom/wooplr/spotlight/SpotlightConfig;->isRevealAnimationEnabled:Z

    const-wide/16 v22, 0x190

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/wooplr/spotlight/SpotlightConfig;->fadingTextDuration:J

    const/16 v21, 0x14

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/wooplr/spotlight/SpotlightConfig;->padding:I

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lcom/wooplr/spotlight/SpotlightConfig;->dismissOnTouch:Z

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/wooplr/spotlight/SpotlightConfig;->dismissOnBackpress:Z

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/wooplr/spotlight/SpotlightConfig;->isPerformClick:Z

    const/16 v17, 0x18

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/wooplr/spotlight/SpotlightConfig;->headingTvSize:I

    const/16 v16, -0x1

    move/from16 v0, v16

    iput v0, v15, Lcom/wooplr/spotlight/SpotlightConfig;->headingTvSizeDimenUnit:I

    const-string/jumbo v15, "#eb273f"

    invoke-static {v15}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v15

    iput v15, v14, Lcom/wooplr/spotlight/SpotlightConfig;->headingTvColor:I

    const-string/jumbo v14, "Hello"

    iput-object v14, v13, Lcom/wooplr/spotlight/SpotlightConfig;->headingTvText:Ljava/lang/CharSequence;

    const/16 v13, 0x18

    iput v13, v12, Lcom/wooplr/spotlight/SpotlightConfig;->subHeadingTvSize:I

    const/4 v12, -0x1

    iput v12, v11, Lcom/wooplr/spotlight/SpotlightConfig;->subHeadingTvSizeDimenUnit:I

    const-string/jumbo v11, "#ffffff"

    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    iput v11, v10, Lcom/wooplr/spotlight/SpotlightConfig;->subHeadingTvColor:I

    const-string/jumbo v10, "Hello"

    iput-object v10, v9, Lcom/wooplr/spotlight/SpotlightConfig;->subHeadingTvText:Ljava/lang/CharSequence;

    const-wide/16 v9, 0x12c

    iput-wide v9, v8, Lcom/wooplr/spotlight/SpotlightConfig;->lineAnimationDuration:J

    const/4 v8, 0x4

    invoke-static {v8}, Lcom/wooplr/spotlight/utils/Utils;->dpToPx(I)I

    move-result v8

    iput v8, v7, Lcom/wooplr/spotlight/SpotlightConfig;->lineStroke:I

    const-string/jumbo v7, "#eb273f"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/wooplr/spotlight/SpotlightConfig;->lineAndArcColor:I

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/wooplr/spotlight/SpotlightConfig;->showTargetArc:Z

    return-void
.end method


# virtual methods
.method public getFadingTextDuration()J
    .locals 3

    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Lcom/wooplr/spotlight/SpotlightConfig;->fadingTextDuration:J

    move-wide v0, v1

    return-wide v0
.end method

.method public getHeadingTvColor()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/wooplr/spotlight/SpotlightConfig;->headingTvColor:I

    move v0, v1

    return v0
.end method

.method public getHeadingTvSize()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/wooplr/spotlight/SpotlightConfig;->headingTvSize:I

    move v0, v1

    return v0
.end method

.method public getHeadingTvSizeDimenUnit()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/wooplr/spotlight/SpotlightConfig;->headingTvSizeDimenUnit:I

    move v0, v1

    return v0
.end method

.method public getHeadingTvText()Ljava/lang/CharSequence;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/wooplr/spotlight/SpotlightConfig;->headingTvText:Ljava/lang/CharSequence;

    move-object v0, v1

    return-object v0
.end method

.method public getIntroAnimationDuration()J
    .locals 3

    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Lcom/wooplr/spotlight/SpotlightConfig;->introAnimationDuration:J

    move-wide v0, v1

    return-wide v0
.end method

.method public getLineAndArcColor()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/wooplr/spotlight/SpotlightConfig;->lineAndArcColor:I

    move v0, v1

    return v0
.end method

.method public getLineAnimationDuration()J
    .locals 3

    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Lcom/wooplr/spotlight/SpotlightConfig;->lineAnimationDuration:J

    move-wide v0, v1

    return-wide v0
.end method

.method public getLineStroke()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/wooplr/spotlight/SpotlightConfig;->lineStroke:I

    move v0, v1

    return v0
.end method

.method public getMaskColor()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/wooplr/spotlight/SpotlightConfig;->maskColor:I

    move v0, v1

    return v0
.end method

.method public getPadding()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/wooplr/spotlight/SpotlightConfig;->padding:I

    move v0, v1

    return v0
.end method

.method public getSubHeadingTvColor()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/wooplr/spotlight/SpotlightConfig;->subHeadingTvColor:I

    move v0, v1

    return v0
.end method

.method public getSubHeadingTvSize()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/wooplr/spotlight/SpotlightConfig;->subHeadingTvSize:I

    move v0, v1

    return v0
.end method

.method public getSubHeadingTvSizeDimenUnit()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/wooplr/spotlight/SpotlightConfig;->subHeadingTvSizeDimenUnit:I

    move v0, v1

    return v0
.end method

.method public getSubHeadingTvText()Ljava/lang/CharSequence;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/wooplr/spotlight/SpotlightConfig;->subHeadingTvText:Ljava/lang/CharSequence;

    move-object v0, v1

    return-object v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/wooplr/spotlight/SpotlightConfig;->typeface:Landroid/graphics/Typeface;

    move-object v0, v1

    return-object v0
.end method

.method public isDismissOnBackpress()Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/wooplr/spotlight/SpotlightConfig;->dismissOnBackpress:Z

    move v0, v1

    return v0
.end method

.method public isDismissOnTouch()Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/wooplr/spotlight/SpotlightConfig;->dismissOnTouch:Z

    move v0, v1

    return v0
.end method

.method public isPerformClick()Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/wooplr/spotlight/SpotlightConfig;->isPerformClick:Z

    move v0, v1

    return v0
.end method

.method public isRevealAnimationEnabled()Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/wooplr/spotlight/SpotlightConfig;->isRevealAnimationEnabled:Z

    move v0, v1

    return v0
.end method

.method public setDismissOnBackpress(Z)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/wooplr/spotlight/SpotlightConfig;->dismissOnBackpress:Z

    return-void
.end method

.method public setDismissOnTouch(Z)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/wooplr/spotlight/SpotlightConfig;->dismissOnTouch:Z

    return-void
.end method

.method public setFadingTextDuration(J)V
    .locals 7

    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lcom/wooplr/spotlight/SpotlightConfig;->fadingTextDuration:J

    return-void
.end method

.method public setHeadingTvColor(I)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/wooplr/spotlight/SpotlightConfig;->headingTvColor:I

    return-void
.end method

.method public setHeadingTvSize(I)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/wooplr/spotlight/SpotlightConfig;->headingTvSize:I

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

    iput v5, v4, Lcom/wooplr/spotlight/SpotlightConfig;->headingTvSizeDimenUnit:I

    move v4, v2

    iput v4, v3, Lcom/wooplr/spotlight/SpotlightConfig;->headingTvSize:I

    return-void
.end method

.method public setHeadingTvText(Ljava/lang/CharSequence;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/wooplr/spotlight/SpotlightConfig;->headingTvText:Ljava/lang/CharSequence;

    return-void
.end method

.method public setIntroAnimationDuration(J)V
    .locals 7

    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lcom/wooplr/spotlight/SpotlightConfig;->introAnimationDuration:J

    return-void
.end method

.method public setLineAndArcColor(I)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/wooplr/spotlight/SpotlightConfig;->lineAndArcColor:I

    return-void
.end method

.method public setLineAnimationDuration(J)V
    .locals 7

    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lcom/wooplr/spotlight/SpotlightConfig;->lineAnimationDuration:J

    return-void
.end method

.method public setLineStroke(I)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/wooplr/spotlight/SpotlightConfig;->lineStroke:I

    return-void
.end method

.method public setMaskColor(I)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/wooplr/spotlight/SpotlightConfig;->maskColor:I

    return-void
.end method

.method public setPadding(I)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/wooplr/spotlight/SpotlightConfig;->padding:I

    return-void
.end method

.method public setPerformClick(Z)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/wooplr/spotlight/SpotlightConfig;->isPerformClick:Z

    return-void
.end method

.method public setRevealAnimationEnabled(Z)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/wooplr/spotlight/SpotlightConfig;->isRevealAnimationEnabled:Z

    return-void
.end method

.method public setShowTargetArc(Z)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/wooplr/spotlight/SpotlightConfig;->showTargetArc:Z

    return-void
.end method

.method public setSubHeadingTvColor(I)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/wooplr/spotlight/SpotlightConfig;->subHeadingTvColor:I

    return-void
.end method

.method public setSubHeadingTvSize(I)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/wooplr/spotlight/SpotlightConfig;->subHeadingTvSize:I

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

    iput v5, v4, Lcom/wooplr/spotlight/SpotlightConfig;->subHeadingTvSizeDimenUnit:I

    move v4, v2

    iput v4, v3, Lcom/wooplr/spotlight/SpotlightConfig;->subHeadingTvSize:I

    return-void
.end method

.method public setSubHeadingTvText(Ljava/lang/CharSequence;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/wooplr/spotlight/SpotlightConfig;->subHeadingTvText:Ljava/lang/CharSequence;

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/wooplr/spotlight/SpotlightConfig;->typeface:Landroid/graphics/Typeface;

    return-void
.end method

.method public showTargetArc()Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/wooplr/spotlight/SpotlightConfig;->showTargetArc:Z

    move v0, v1

    return v0
.end method
