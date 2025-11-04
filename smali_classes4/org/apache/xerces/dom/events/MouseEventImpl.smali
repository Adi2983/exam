.class public Lorg/apache/xerces/dom/events/MouseEventImpl;
.super Lorg/apache/xerces/dom/events/UIEventImpl;

# interfaces
.implements Lorg/w3c/dom/events/MouseEvent;


# instance fields
.field private fAltKey:Z

.field private fButton:S

.field private fClientX:I

.field private fClientY:I

.field private fCtrlKey:Z

.field private fMetaKey:Z

.field private fRelatedTarget:Lorg/w3c/dom/events/EventTarget;

.field private fScreenX:I

.field private fScreenY:I

.field private fShiftKey:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lorg/apache/xerces/dom/events/UIEventImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getAltKey()Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lorg/apache/xerces/dom/events/MouseEventImpl;->fAltKey:Z

    move v0, v1

    return v0
.end method

.method public getButton()S
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-short v1, v1, Lorg/apache/xerces/dom/events/MouseEventImpl;->fButton:S

    move v0, v1

    return v0
.end method

.method public getClientX()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/dom/events/MouseEventImpl;->fClientX:I

    move v0, v1

    return v0
.end method

.method public getClientY()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/dom/events/MouseEventImpl;->fClientY:I

    move v0, v1

    return v0
.end method

.method public getCtrlKey()Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lorg/apache/xerces/dom/events/MouseEventImpl;->fCtrlKey:Z

    move v0, v1

    return v0
.end method

.method public getMetaKey()Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lorg/apache/xerces/dom/events/MouseEventImpl;->fMetaKey:Z

    move v0, v1

    return v0
.end method

.method public getRelatedTarget()Lorg/w3c/dom/events/EventTarget;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/events/MouseEventImpl;->fRelatedTarget:Lorg/w3c/dom/events/EventTarget;

    move-object v0, v1

    return-object v0
.end method

.method public getScreenX()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/dom/events/MouseEventImpl;->fScreenX:I

    move v0, v1

    return v0
.end method

.method public getScreenY()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/dom/events/MouseEventImpl;->fScreenY:I

    move v0, v1

    return v0
.end method

.method public getShiftKey()Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lorg/apache/xerces/dom/events/MouseEventImpl;->fShiftKey:Z

    move v0, v1

    return v0
.end method

.method public initMouseEvent(Ljava/lang/String;ZZLorg/w3c/dom/views/AbstractView;IIIIIZZZZSLorg/w3c/dom/events/EventTarget;)V
    .locals 24

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p12

    move/from16 v15, p13

    move/from16 v16, p14

    move-object/from16 v17, p15

    move-object/from16 v18, v2

    move/from16 v19, v8

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lorg/apache/xerces/dom/events/MouseEventImpl;->fScreenX:I

    move-object/from16 v18, v2

    move/from16 v19, v9

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lorg/apache/xerces/dom/events/MouseEventImpl;->fScreenY:I

    move-object/from16 v18, v2

    move/from16 v19, v10

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lorg/apache/xerces/dom/events/MouseEventImpl;->fClientX:I

    move-object/from16 v18, v2

    move/from16 v19, v11

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lorg/apache/xerces/dom/events/MouseEventImpl;->fClientY:I

    move-object/from16 v18, v2

    move/from16 v19, v12

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lorg/apache/xerces/dom/events/MouseEventImpl;->fCtrlKey:Z

    move-object/from16 v18, v2

    move/from16 v19, v13

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lorg/apache/xerces/dom/events/MouseEventImpl;->fAltKey:Z

    move-object/from16 v18, v2

    move/from16 v19, v14

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lorg/apache/xerces/dom/events/MouseEventImpl;->fShiftKey:Z

    move-object/from16 v18, v2

    move/from16 v19, v15

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lorg/apache/xerces/dom/events/MouseEventImpl;->fMetaKey:Z

    move-object/from16 v18, v2

    move/from16 v19, v16

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-short v0, v1, Lorg/apache/xerces/dom/events/MouseEventImpl;->fButton:S

    move-object/from16 v18, v2

    move-object/from16 v19, v17

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lorg/apache/xerces/dom/events/MouseEventImpl;->fRelatedTarget:Lorg/w3c/dom/events/EventTarget;

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move/from16 v20, v4

    move/from16 v21, v5

    move-object/from16 v22, v6

    move/from16 v23, v7

    invoke-super/range {v18 .. v23}, Lorg/apache/xerces/dom/events/UIEventImpl;->initUIEvent(Ljava/lang/String;ZZLorg/w3c/dom/views/AbstractView;I)V

    return-void
.end method
