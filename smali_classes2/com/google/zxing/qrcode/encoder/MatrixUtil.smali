.class final Lcom/google/zxing/qrcode/encoder/MatrixUtil;
.super Ljava/lang/Object;
.source "MatrixUtil.java"


# static fields
.field private static final POSITION_ADJUSTMENT_PATTERN:[[I

.field private static final POSITION_ADJUSTMENT_PATTERN_COORDINATE_TABLE:[[I

.field private static final POSITION_DETECTION_PATTERN:[[I

.field private static final TYPE_INFO_COORDINATES:[[I

.field private static final TYPE_INFO_MASK_PATTERN:I = 0x5412

.field private static final TYPE_INFO_POLY:I = 0x537

.field private static final VERSION_INFO_POLY:I = 0x1f25


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 34
    const/4 v0, 0x7

    new-array v0, v0, [[I

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x0

    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x1

    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_1

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x2

    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_2

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x3

    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_3

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x4

    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_4

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x5

    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_5

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x6

    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_6

    aput-object v3, v1, v2

    sput-object v0, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_DETECTION_PATTERN:[[I

    .line 44
    const/4 v0, 0x5

    new-array v0, v0, [[I

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x0

    const/4 v3, 0x5

    new-array v3, v3, [I

    fill-array-data v3, :array_7

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x1

    const/4 v3, 0x5

    new-array v3, v3, [I

    fill-array-data v3, :array_8

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x2

    const/4 v3, 0x5

    new-array v3, v3, [I

    fill-array-data v3, :array_9

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x3

    const/4 v3, 0x5

    new-array v3, v3, [I

    fill-array-data v3, :array_a

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x4

    const/4 v3, 0x5

    new-array v3, v3, [I

    fill-array-data v3, :array_b

    aput-object v3, v1, v2

    sput-object v0, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_ADJUSTMENT_PATTERN:[[I

    .line 53
    const/16 v0, 0x28

    new-array v0, v0, [[I

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x0

    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_c

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x1

    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_d

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x2

    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_e

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x3

    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_f

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x4

    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_10

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x5

    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_11

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x6

    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_12

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x7

    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_13

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x8

    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_14

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x9

    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_15

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0xa

    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_16

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0xb

    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_17

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0xc

    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_18

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0xd

    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_19

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0xe

    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_1a

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0xf

    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_1b

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x10

    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_1c

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x11

    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_1d

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x12

    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_1e

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x13

    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_1f

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x14

    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_20

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x15

    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_21

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x16

    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_22

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x17

    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_23

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x18

    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_24

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x19

    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_25

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x1a

    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_26

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x1b

    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_27

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x1c

    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_28

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x1d

    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_29

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x1e

    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_2a

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x1f

    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_2b

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x20

    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_2c

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x21

    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_2d

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x22

    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_2e

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x23

    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_2f

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x24

    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_30

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x25

    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_31

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x26

    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_32

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x27

    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_33

    aput-object v3, v1, v2

    sput-object v0, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_ADJUSTMENT_PATTERN_COORDINATE_TABLE:[[I

    .line 97
    const/16 v0, 0xf

    new-array v0, v0, [[I

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_34

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x1

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_35

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x2

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_36

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x3

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_37

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x4

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_38

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x5

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_39

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x6

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_3a

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x7

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_3b

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x8

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_3c

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x9

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_3d

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0xa

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_3e

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0xb

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_3f

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0xc

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_40

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0xd

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_41

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0xe

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_42

    aput-object v3, v1, v2

    sput-object v0, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->TYPE_INFO_COORDINATES:[[I

    return-void

    .line 34
    :array_0
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x0
        0x1
        0x1
        0x1
        0x0
        0x1
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x0
        0x1
        0x1
        0x1
        0x0
        0x1
    .end array-data

    :array_4
    .array-data 4
        0x1
        0x0
        0x1
        0x1
        0x1
        0x0
        0x1
    .end array-data

    :array_5
    .array-data 4
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
    .end array-data

    :array_6
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    .line 44
    :array_7
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_8
    .array-data 4
        0x1
        0x0
        0x0
        0x0
        0x1
    .end array-data

    :array_9
    .array-data 4
        0x1
        0x0
        0x1
        0x0
        0x1
    .end array-data

    :array_a
    .array-data 4
        0x1
        0x0
        0x0
        0x0
        0x1
    .end array-data

    :array_b
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    .line 53
    :array_c
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_d
    .array-data 4
        0x6
        0x12
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_e
    .array-data 4
        0x6
        0x16
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_f
    .array-data 4
        0x6
        0x1a
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_10
    .array-data 4
        0x6
        0x1e
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_11
    .array-data 4
        0x6
        0x22
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_12
    .array-data 4
        0x6
        0x16
        0x26
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_13
    .array-data 4
        0x6
        0x18
        0x2a
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_14
    .array-data 4
        0x6
        0x1a
        0x2e
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_15
    .array-data 4
        0x6
        0x1c
        0x32
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_16
    .array-data 4
        0x6
        0x1e
        0x36
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_17
    .array-data 4
        0x6
        0x20
        0x3a
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_18
    .array-data 4
        0x6
        0x22
        0x3e
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_19
    .array-data 4
        0x6
        0x1a
        0x2e
        0x42
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1a
    .array-data 4
        0x6
        0x1a
        0x30
        0x46
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1b
    .array-data 4
        0x6
        0x1a
        0x32
        0x4a
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1c
    .array-data 4
        0x6
        0x1e
        0x36
        0x4e
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1d
    .array-data 4
        0x6
        0x1e
        0x38
        0x52
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1e
    .array-data 4
        0x6
        0x1e
        0x3a
        0x56
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1f
    .array-data 4
        0x6
        0x22
        0x3e
        0x5a
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_20
    .array-data 4
        0x6
        0x1c
        0x32
        0x48
        0x5e
        -0x1
        -0x1
    .end array-data

    :array_21
    .array-data 4
        0x6
        0x1a
        0x32
        0x4a
        0x62
        -0x1
        -0x1
    .end array-data

    :array_22
    .array-data 4
        0x6
        0x1e
        0x36
        0x4e
        0x66
        -0x1
        -0x1
    .end array-data

    :array_23
    .array-data 4
        0x6
        0x1c
        0x36
        0x50
        0x6a
        -0x1
        -0x1
    .end array-data

    :array_24
    .array-data 4
        0x6
        0x20
        0x3a
        0x54
        0x6e
        -0x1
        -0x1
    .end array-data

    :array_25
    .array-data 4
        0x6
        0x1e
        0x3a
        0x56
        0x72
        -0x1
        -0x1
    .end array-data

    :array_26
    .array-data 4
        0x6
        0x22
        0x3e
        0x5a
        0x76
        -0x1
        -0x1
    .end array-data

    :array_27
    .array-data 4
        0x6
        0x1a
        0x32
        0x4a
        0x62
        0x7a
        -0x1
    .end array-data

    :array_28
    .array-data 4
        0x6
        0x1e
        0x36
        0x4e
        0x66
        0x7e
        -0x1
    .end array-data

    :array_29
    .array-data 4
        0x6
        0x1a
        0x34
        0x4e
        0x68
        0x82
        -0x1
    .end array-data

    :array_2a
    .array-data 4
        0x6
        0x1e
        0x38
        0x52
        0x6c
        0x86
        -0x1
    .end array-data

    :array_2b
    .array-data 4
        0x6
        0x22
        0x3c
        0x56
        0x70
        0x8a
        -0x1
    .end array-data

    :array_2c
    .array-data 4
        0x6
        0x1e
        0x3a
        0x56
        0x72
        0x8e
        -0x1
    .end array-data

    :array_2d
    .array-data 4
        0x6
        0x22
        0x3e
        0x5a
        0x76
        0x92
        -0x1
    .end array-data

    :array_2e
    .array-data 4
        0x6
        0x1e
        0x36
        0x4e
        0x66
        0x7e
        0x96
    .end array-data

    :array_2f
    .array-data 4
        0x6
        0x18
        0x32
        0x4c
        0x66
        0x80
        0x9a
    .end array-data

    :array_30
    .array-data 4
        0x6
        0x1c
        0x36
        0x50
        0x6a
        0x84
        0x9e
    .end array-data

    :array_31
    .array-data 4
        0x6
        0x20
        0x3a
        0x54
        0x6e
        0x88
        0xa2
    .end array-data

    :array_32
    .array-data 4
        0x6
        0x1a
        0x36
        0x52
        0x6e
        0x8a
        0xa6
    .end array-data

    :array_33
    .array-data 4
        0x6
        0x1e
        0x3a
        0x56
        0x72
        0x8e
        0xaa
    .end array-data

    .line 97
    :array_34
    .array-data 4
        0x8
        0x0
    .end array-data

    :array_35
    .array-data 4
        0x8
        0x1
    .end array-data

    :array_36
    .array-data 4
        0x8
        0x2
    .end array-data

    :array_37
    .array-data 4
        0x8
        0x3
    .end array-data

    :array_38
    .array-data 4
        0x8
        0x4
    .end array-data

    :array_39
    .array-data 4
        0x8
        0x5
    .end array-data

    :array_3a
    .array-data 4
        0x8
        0x7
    .end array-data

    :array_3b
    .array-data 4
        0x8
        0x8
    .end array-data

    :array_3c
    .array-data 4
        0x7
        0x8
    .end array-data

    :array_3d
    .array-data 4
        0x5
        0x8
    .end array-data

    :array_3e
    .array-data 4
        0x4
        0x8
    .end array-data

    :array_3f
    .array-data 4
        0x3
        0x8
    .end array-data

    :array_40
    .array-data 4
        0x2
        0x8
    .end array-data

    :array_41
    .array-data 4
        0x1
        0x8
    .end array-data

    :array_42
    .array-data 4
        0x0
        0x8
    .end array-data
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/encoder/MatrixUtil;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method static buildMatrix(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Version;ILcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "dataBits":Lcom/google/zxing/common/BitArray;
    move-object v1, p1

    .local v1, "ecLevel":Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    move-object v2, p2

    .local v2, "version":Lcom/google/zxing/qrcode/decoder/Version;
    move v3, p3

    .local v3, "maskPattern":I
    move-object v4, p4

    .local v4, "matrix":Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    move-object v5, v4

    invoke-static {v5}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->clearMatrix(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 138
    move-object v5, v2

    move-object v6, v4

    invoke-static {v5, v6}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedBasicPatterns(Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 140
    move-object v5, v1

    move v6, v3

    move-object v7, v4

    invoke-static {v5, v6, v7}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedTypeInfo(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;ILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 142
    move-object v5, v2

    move-object v6, v4

    invoke-static {v5, v6}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->maybeEmbedVersionInfo(Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 144
    move-object v5, v0

    move v6, v3

    move-object v7, v4

    invoke-static {v5, v6, v7}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedDataBits(Lcom/google/zxing/common/BitArray;ILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 145
    return-void
.end method

.method static calculateBCHCode(II)I
    .locals 7

    .prologue
    .line 310
    move v0, p0

    .local v0, "value":I
    move v1, p1

    .local v1, "poly":I
    move v3, v1

    invoke-static {v3}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->findMSBSet(I)I

    move-result v3

    move v2, v3

    .line 311
    .local v2, "msbSetInPoly":I
    move v3, v0

    move v4, v2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    shl-int/2addr v3, v4

    move v0, v3

    .line 313
    :goto_0
    move v3, v0

    invoke-static {v3}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->findMSBSet(I)I

    move-result v3

    move v4, v2

    if-lt v3, v4, :cond_0

    .line 314
    move v3, v0

    move v4, v1

    move v5, v0

    invoke-static {v5}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->findMSBSet(I)I

    move-result v5

    move v6, v2

    sub-int/2addr v5, v6

    shl-int/2addr v4, v5

    xor-int/2addr v3, v4

    move v0, v3

    goto :goto_0

    .line 317
    :cond_0
    move v3, v0

    move v0, v3

    .end local v0    # "value":I
    return v0
.end method

.method static clearMatrix(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 3

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "matrix":Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    move-object v1, v0

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->clear(B)V

    .line 128
    return-void
.end method

.method static embedBasicPatterns(Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "version":Lcom/google/zxing/qrcode/decoder/Version;
    move-object v1, p1

    .local v1, "matrix":Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    move-object v2, v1

    invoke-static {v2}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedPositionDetectionPatternsAndSeparators(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 157
    move-object v2, v1

    invoke-static {v2}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedDarkDotAtLeftBottomCorner(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 160
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->maybeEmbedPositionAdjustmentPatterns(Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 162
    move-object v2, v1

    invoke-static {v2}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedTimingPatterns(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 163
    return-void
.end method

.method private static embedDarkDotAtLeftBottomCorner(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 378
    move-object v0, p0

    .local v0, "matrix":Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    move-object v1, v0

    const/16 v2, 0x8

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v3

    const/16 v4, 0x8

    add-int/lit8 v3, v3, -0x8

    invoke-virtual {v1, v2, v3}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v1

    if-nez v1, :cond_0

    .line 379
    new-instance v1, Lcom/google/zxing/WriterException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    invoke-direct {v2}, Lcom/google/zxing/WriterException;-><init>()V

    throw v1

    .line 381
    :cond_0
    move-object v1, v0

    const/16 v2, 0x8

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v3

    const/16 v4, 0x8

    add-int/lit8 v3, v3, -0x8

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    .line 382
    return-void
.end method

.method static embedDataBits(Lcom/google/zxing/common/BitArray;ILcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 223
    move-object v0, p0

    .local v0, "dataBits":Lcom/google/zxing/common/BitArray;
    move/from16 v1, p1

    .local v1, "maskPattern":I
    move-object/from16 v2, p2

    .local v2, "matrix":Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    const/4 v10, 0x0

    move v3, v10

    .line 224
    .local v3, "bitIndex":I
    const/4 v10, -0x1

    move v4, v10

    .line 226
    .local v4, "direction":I
    move-object v10, v2

    invoke-virtual {v10}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v10

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    move v5, v10

    .line 227
    .local v5, "x":I
    move-object v10, v2

    invoke-virtual {v10}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v10

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    move v6, v10

    .line 228
    .local v6, "y":I
    :goto_0
    move v10, v5

    if-lez v10, :cond_7

    .line 230
    move v10, v5

    const/4 v11, 0x6

    if-ne v10, v11, :cond_0

    .line 231
    add-int/lit8 v5, v5, -0x1

    .line 233
    :cond_0
    :goto_1
    move v10, v6

    if-ltz v10, :cond_6

    move v10, v6

    move-object v11, v2

    invoke-virtual {v11}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v11

    if-ge v10, v11, :cond_6

    .line 234
    const/4 v10, 0x0

    move v7, v10

    .local v7, "i":I
    :goto_2
    move v10, v7

    const/4 v11, 0x2

    if-ge v10, v11, :cond_5

    .line 235
    move v10, v5

    move v11, v7

    sub-int/2addr v10, v11

    move v8, v10

    .line 237
    .local v8, "xx":I
    move-object v10, v2

    move v11, v8

    move v12, v6

    invoke-virtual {v10, v11, v12}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v10

    invoke-static {v10}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->isEmpty(I)Z

    move-result v10

    if-nez v10, :cond_1

    .line 238
    .line 234
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 241
    :cond_1
    move v10, v3

    move-object v11, v0

    invoke-virtual {v11}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v11

    if-ge v10, v11, :cond_3

    .line 242
    move-object v10, v0

    move v11, v3

    invoke-virtual {v10, v11}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v10

    move v9, v10

    .line 243
    .local v9, "bit":Z
    add-int/lit8 v3, v3, 0x1

    .line 251
    :goto_4
    move v10, v1

    const/4 v11, -0x1

    if-eq v10, v11, :cond_2

    move v10, v1

    move v11, v8

    move v12, v6

    invoke-static {v10, v11, v12}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->getDataMaskBit(III)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 252
    move v10, v9

    if-nez v10, :cond_4

    const/4 v10, 0x1

    :goto_5
    move v9, v10

    .line 254
    :cond_2
    move-object v10, v2

    move v11, v8

    move v12, v6

    move v13, v9

    invoke-virtual {v10, v11, v12, v13}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    goto :goto_3

    .line 247
    .end local v9    # "bit":Z
    :cond_3
    const/4 v10, 0x0

    move v9, v10

    .restart local v9    # "bit":Z
    goto :goto_4

    .line 252
    :cond_4
    const/4 v10, 0x0

    goto :goto_5

    .line 256
    .end local v8    # "xx":I
    .end local v9    # "bit":Z
    :cond_5
    move v10, v6

    move v11, v4

    add-int/2addr v10, v11

    move v6, v10

    goto :goto_1

    .line 258
    .end local v7    # "i":I
    :cond_6
    move v10, v4

    neg-int v10, v10

    move v4, v10

    .line 259
    move v10, v6

    move v11, v4

    add-int/2addr v10, v11

    move v6, v10

    .line 260
    add-int/lit8 v5, v5, -0x2

    goto :goto_0

    .line 263
    :cond_7
    move v10, v3

    move-object v11, v0

    invoke-virtual {v11}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v11

    if-eq v10, v11, :cond_8

    .line 264
    new-instance v10, Lcom/google/zxing/WriterException;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    new-instance v12, Ljava/lang/StringBuilder;

    move-object v14, v12

    move-object v12, v14

    move-object v13, v14

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Not all bits consumed: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move v13, v3

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0x2f

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v0

    invoke-virtual {v13}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 266
    :cond_8
    return-void
.end method

.method private static embedHorizontalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 387
    move v0, p0

    .local v0, "xStart":I
    move v1, p1

    .local v1, "yStart":I
    move-object v2, p2

    .local v2, "matrix":Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    const/4 v4, 0x0

    move v3, v4

    .local v3, "x":I
    :goto_0
    move v4, v3

    const/16 v5, 0x8

    if-ge v4, v5, :cond_1

    .line 388
    move-object v4, v2

    move v5, v0

    move v6, v3

    add-int/2addr v5, v6

    move v6, v1

    invoke-virtual {v4, v5, v6}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v4

    invoke-static {v4}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->isEmpty(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 389
    new-instance v4, Lcom/google/zxing/WriterException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Lcom/google/zxing/WriterException;-><init>()V

    throw v4

    .line 391
    :cond_0
    move-object v4, v2

    move v5, v0

    move v6, v3

    add-int/2addr v5, v6

    move v6, v1

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    .line 387
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 393
    :cond_1
    return-void
.end method

.method private static embedPositionAdjustmentPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 10

    .prologue
    .line 410
    move v0, p0

    .local v0, "xStart":I
    move v1, p1

    .local v1, "yStart":I
    move-object v2, p2

    .local v2, "matrix":Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    const/4 v5, 0x0

    move v3, v5

    .local v3, "y":I
    :goto_0
    move v5, v3

    const/4 v6, 0x5

    if-ge v5, v6, :cond_1

    .line 411
    const/4 v5, 0x0

    move v4, v5

    .local v4, "x":I
    :goto_1
    move v5, v4

    const/4 v6, 0x5

    if-ge v5, v6, :cond_0

    .line 412
    move-object v5, v2

    move v6, v0

    move v7, v4

    add-int/2addr v6, v7

    move v7, v1

    move v8, v3

    add-int/2addr v7, v8

    sget-object v8, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_ADJUSTMENT_PATTERN:[[I

    move v9, v3

    aget-object v8, v8, v9

    move v9, v4

    aget v8, v8, v9

    invoke-virtual {v5, v6, v7, v8}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    .line 411
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 410
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 415
    .end local v4    # "x":I
    :cond_1
    return-void
.end method

.method private static embedPositionDetectionPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 10

    .prologue
    .line 418
    move v0, p0

    .local v0, "xStart":I
    move v1, p1

    .local v1, "yStart":I
    move-object v2, p2

    .local v2, "matrix":Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    const/4 v5, 0x0

    move v3, v5

    .local v3, "y":I
    :goto_0
    move v5, v3

    const/4 v6, 0x7

    if-ge v5, v6, :cond_1

    .line 419
    const/4 v5, 0x0

    move v4, v5

    .local v4, "x":I
    :goto_1
    move v5, v4

    const/4 v6, 0x7

    if-ge v5, v6, :cond_0

    .line 420
    move-object v5, v2

    move v6, v0

    move v7, v4

    add-int/2addr v6, v7

    move v7, v1

    move v8, v3

    add-int/2addr v7, v8

    sget-object v8, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_DETECTION_PATTERN:[[I

    move v9, v3

    aget-object v8, v8, v9

    move v9, v4

    aget v8, v8, v9

    invoke-virtual {v5, v6, v7, v8}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    .line 419
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 418
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 423
    .end local v4    # "x":I
    :cond_1
    return-void
.end method

.method private static embedPositionDetectionPatternsAndSeparators(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 428
    move-object v0, p0

    .local v0, "matrix":Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    sget-object v4, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_DETECTION_PATTERN:[[I

    const/4 v5, 0x0

    aget-object v4, v4, v5

    array-length v4, v4

    move v1, v4

    .line 430
    .local v1, "pdpWidth":I
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v0

    invoke-static {v4, v5, v6}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedPositionDetectionPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 432
    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v4

    move v5, v1

    sub-int/2addr v4, v5

    const/4 v5, 0x0

    move-object v6, v0

    invoke-static {v4, v5, v6}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedPositionDetectionPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 434
    const/4 v4, 0x0

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v5

    move v6, v1

    sub-int/2addr v5, v6

    move-object v6, v0

    invoke-static {v4, v5, v6}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedPositionDetectionPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 437
    const/16 v4, 0x8

    move v2, v4

    .line 439
    .local v2, "hspWidth":I
    const/4 v4, 0x0

    move v5, v2

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move-object v6, v0

    invoke-static {v4, v5, v6}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedHorizontalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 441
    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v4

    move v5, v2

    sub-int/2addr v4, v5

    move v5, v2

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move-object v6, v0

    invoke-static {v4, v5, v6}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedHorizontalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 444
    const/4 v4, 0x0

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v5

    move v6, v2

    sub-int/2addr v5, v6

    move-object v6, v0

    invoke-static {v4, v5, v6}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedHorizontalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 447
    const/4 v4, 0x7

    move v3, v4

    .line 449
    .local v3, "vspSize":I
    move v4, v3

    const/4 v5, 0x0

    move-object v6, v0

    invoke-static {v4, v5, v6}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedVerticalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 451
    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v4

    move v5, v3

    sub-int/2addr v4, v5

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x0

    move-object v6, v0

    invoke-static {v4, v5, v6}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedVerticalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 453
    move v4, v3

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v5

    move v6, v3

    sub-int/2addr v5, v6

    move-object v6, v0

    invoke-static {v4, v5, v6}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedVerticalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 455
    return-void
.end method

.method private static embedTimingPatterns(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 7

    .prologue
    .line 363
    move-object v0, p0

    .local v0, "matrix":Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    const/16 v3, 0x8

    move v1, v3

    .local v1, "i":I
    :goto_0
    move v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v4

    const/16 v5, 0x8

    add-int/lit8 v4, v4, -0x8

    if-ge v3, v4, :cond_2

    .line 364
    move v3, v1

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x2

    rem-int/lit8 v3, v3, 0x2

    move v2, v3

    .line 366
    .local v2, "bit":I
    move-object v3, v0

    move v4, v1

    const/4 v5, 0x6

    invoke-virtual {v3, v4, v5}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v3

    invoke-static {v3}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->isEmpty(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 367
    move-object v3, v0

    move v4, v1

    const/4 v5, 0x6

    move v6, v2

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    .line 370
    :cond_0
    move-object v3, v0

    const/4 v4, 0x6

    move v5, v1

    invoke-virtual {v3, v4, v5}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v3

    invoke-static {v3}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->isEmpty(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 371
    move-object v3, v0

    const/4 v4, 0x6

    move v5, v1

    move v6, v2

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    .line 363
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 374
    .end local v2    # "bit":I
    :cond_2
    return-void
.end method

.method static embedTypeInfo(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;ILcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 168
    move-object v0, p0

    .local v0, "ecLevel":Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    move/from16 v1, p1

    .local v1, "maskPattern":I
    move-object/from16 v2, p2

    .local v2, "matrix":Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    new-instance v10, Lcom/google/zxing/common/BitArray;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    invoke-direct {v11}, Lcom/google/zxing/common/BitArray;-><init>()V

    move-object v3, v10

    .line 169
    .local v3, "typeInfoBits":Lcom/google/zxing/common/BitArray;
    move-object v10, v0

    move v11, v1

    move-object v12, v3

    invoke-static {v10, v11, v12}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->makeTypeInfoBits(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;ILcom/google/zxing/common/BitArray;)V

    .line 171
    const/4 v10, 0x0

    move v4, v10

    .local v4, "i":I
    :goto_0
    move v10, v4

    move-object v11, v3

    invoke-virtual {v11}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v11

    if-ge v10, v11, :cond_1

    .line 174
    move-object v10, v3

    move-object v11, v3

    invoke-virtual {v11}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v11

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    move v12, v4

    sub-int/2addr v11, v12

    invoke-virtual {v10, v11}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v10

    move v5, v10

    .line 177
    .local v5, "bit":Z
    sget-object v10, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->TYPE_INFO_COORDINATES:[[I

    move v11, v4

    aget-object v10, v10, v11

    const/4 v11, 0x0

    aget v10, v10, v11

    move v6, v10

    .line 178
    .local v6, "x1":I
    sget-object v10, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->TYPE_INFO_COORDINATES:[[I

    move v11, v4

    aget-object v10, v10, v11

    const/4 v11, 0x1

    aget v10, v10, v11

    move v7, v10

    .line 179
    .local v7, "y1":I
    move-object v10, v2

    move v11, v6

    move v12, v7

    move v13, v5

    invoke-virtual {v10, v11, v12, v13}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    .line 181
    move v10, v4

    const/16 v11, 0x8

    if-ge v10, v11, :cond_0

    .line 183
    move-object v10, v2

    invoke-virtual {v10}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v10

    move v11, v4

    sub-int/2addr v10, v11

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    move v8, v10

    .line 184
    .local v8, "x2":I
    const/16 v10, 0x8

    move v9, v10

    .line 185
    .local v9, "y2":I
    move-object v10, v2

    move v11, v8

    move v12, v9

    move v13, v5

    invoke-virtual {v10, v11, v12, v13}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    .line 186
    .line 171
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 188
    .end local v8    # "x2":I
    .end local v9    # "y2":I
    :cond_0
    const/16 v10, 0x8

    move v8, v10

    .line 189
    .restart local v8    # "x2":I
    move-object v10, v2

    invoke-virtual {v10}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v10

    const/4 v11, 0x7

    add-int/lit8 v10, v10, -0x7

    move v11, v4

    const/16 v12, 0x8

    add-int/lit8 v11, v11, -0x8

    add-int/2addr v10, v11

    move v9, v10

    .line 190
    .restart local v9    # "y2":I
    move-object v10, v2

    move v11, v8

    move v12, v9

    move v13, v5

    invoke-virtual {v10, v11, v12, v13}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    goto :goto_1

    .line 193
    .end local v5    # "bit":Z
    .end local v6    # "x1":I
    .end local v7    # "y1":I
    .end local v8    # "x2":I
    .end local v9    # "y2":I
    :cond_1
    return-void
.end method

.method private static embedVerticalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 398
    move v0, p0

    .local v0, "xStart":I
    move v1, p1

    .local v1, "yStart":I
    move-object v2, p2

    .local v2, "matrix":Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    const/4 v4, 0x0

    move v3, v4

    .local v3, "y":I
    :goto_0
    move v4, v3

    const/4 v5, 0x7

    if-ge v4, v5, :cond_1

    .line 399
    move-object v4, v2

    move v5, v0

    move v6, v1

    move v7, v3

    add-int/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v4

    invoke-static {v4}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->isEmpty(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 400
    new-instance v4, Lcom/google/zxing/WriterException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Lcom/google/zxing/WriterException;-><init>()V

    throw v4

    .line 402
    :cond_0
    move-object v4, v2

    move v5, v0

    move v6, v1

    move v7, v3

    add-int/2addr v6, v7

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    .line 398
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 404
    :cond_1
    return-void
.end method

.method static findMSBSet(I)I
    .locals 4

    .prologue
    .line 274
    move v0, p0

    .local v0, "value":I
    const/4 v2, 0x0

    move v1, v2

    .line 275
    .local v1, "numDigits":I
    :goto_0
    move v2, v0

    if-eqz v2, :cond_0

    .line 276
    move v2, v0

    const/4 v3, 0x1

    ushr-int/lit8 v2, v2, 0x1

    move v0, v2

    .line 277
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 279
    :cond_0
    move v2, v1

    move v0, v2

    .end local v0    # "value":I
    return v0
.end method

.method private static isEmpty(I)Z
    .locals 3

    .prologue
    .line 357
    move v0, p0

    .local v0, "value":I
    move v1, v0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "value":I
    return v0

    .restart local v0    # "value":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static makeTypeInfoBits(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;ILcom/google/zxing/common/BitArray;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 325
    move-object v0, p0

    .local v0, "ecLevel":Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    move v1, p1

    .local v1, "maskPattern":I
    move-object v2, p2

    .local v2, "bits":Lcom/google/zxing/common/BitArray;
    move v6, v1

    invoke-static {v6}, Lcom/google/zxing/qrcode/encoder/QRCode;->isValidMaskPattern(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 326
    new-instance v6, Lcom/google/zxing/WriterException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const-string/jumbo v8, "Invalid mask pattern"

    invoke-direct {v7, v8}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 328
    :cond_0
    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->getBits()I

    move-result v6

    const/4 v7, 0x3

    shl-int/lit8 v6, v6, 0x3

    move v7, v1

    or-int/2addr v6, v7

    move v3, v6

    .line 329
    .local v3, "typeInfo":I
    move-object v6, v2

    move v7, v3

    const/4 v8, 0x5

    invoke-virtual {v6, v7, v8}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 331
    move v6, v3

    const/16 v7, 0x537

    invoke-static {v6, v7}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->calculateBCHCode(II)I

    move-result v6

    move v4, v6

    .line 332
    .local v4, "bchCode":I
    move-object v6, v2

    move v7, v4

    const/16 v8, 0xa

    invoke-virtual {v6, v7, v8}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 334
    new-instance v6, Lcom/google/zxing/common/BitArray;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Lcom/google/zxing/common/BitArray;-><init>()V

    move-object v5, v6

    .line 335
    .local v5, "maskBits":Lcom/google/zxing/common/BitArray;
    move-object v6, v5

    const/16 v7, 0x5412

    const/16 v8, 0xf

    invoke-virtual {v6, v7, v8}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 336
    move-object v6, v2

    move-object v7, v5

    invoke-virtual {v6, v7}, Lcom/google/zxing/common/BitArray;->xor(Lcom/google/zxing/common/BitArray;)V

    .line 338
    move-object v6, v2

    invoke-virtual {v6}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v6

    const/16 v7, 0xf

    if-eq v6, v7, :cond_1

    .line 339
    new-instance v6, Lcom/google/zxing/WriterException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "should not happen but we got: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v2

    invoke-virtual {v9}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 341
    :cond_1
    return-void
.end method

.method static makeVersionInfoBits(Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/common/BitArray;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 346
    move-object v0, p0

    .local v0, "version":Lcom/google/zxing/qrcode/decoder/Version;
    move-object v1, p1

    .local v1, "bits":Lcom/google/zxing/common/BitArray;
    move-object v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionNumber()I

    move-result v4

    const/4 v5, 0x6

    invoke-virtual {v3, v4, v5}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 347
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionNumber()I

    move-result v3

    const/16 v4, 0x1f25

    invoke-static {v3, v4}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->calculateBCHCode(II)I

    move-result v3

    move v2, v3

    .line 348
    .local v2, "bchCode":I
    move-object v3, v1

    move v4, v2

    const/16 v5, 0xc

    invoke-virtual {v3, v4, v5}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 350
    move-object v3, v1

    invoke-virtual {v3}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v3

    const/16 v4, 0x12

    if-eq v3, v4, :cond_0

    .line 351
    new-instance v3, Lcom/google/zxing/WriterException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "should not happen but we got: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 353
    :cond_0
    return-void
.end method

.method private static maybeEmbedPositionAdjustmentPatterns(Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 12

    .prologue
    .line 459
    move-object v0, p0

    .local v0, "version":Lcom/google/zxing/qrcode/decoder/Version;
    move-object v1, p1

    .local v1, "matrix":Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    move-object v9, v0

    invoke-virtual {v9}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionNumber()I

    move-result v9

    const/4 v10, 0x2

    if-ge v9, v10, :cond_0

    .line 460
    .line 480
    :goto_0
    return-void

    .line 462
    :cond_0
    move-object v9, v0

    invoke-virtual {v9}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionNumber()I

    move-result v9

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    move v2, v9

    .line 463
    .local v2, "index":I
    sget-object v9, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_ADJUSTMENT_PATTERN_COORDINATE_TABLE:[[I

    move v10, v2

    aget-object v9, v9, v10

    move-object v3, v9

    .line 464
    .local v3, "coordinates":[I
    sget-object v9, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_ADJUSTMENT_PATTERN_COORDINATE_TABLE:[[I

    move v10, v2

    aget-object v9, v9, v10

    array-length v9, v9

    move v4, v9

    .line 465
    .local v4, "numCoordinates":I
    const/4 v9, 0x0

    move v5, v9

    .local v5, "i":I
    :goto_1
    move v9, v5

    move v10, v4

    if-ge v9, v10, :cond_4

    .line 466
    const/4 v9, 0x0

    move v6, v9

    .local v6, "j":I
    :goto_2
    move v9, v6

    move v10, v4

    if-ge v9, v10, :cond_3

    .line 467
    move-object v9, v3

    move v10, v5

    aget v9, v9, v10

    move v7, v9

    .line 468
    .local v7, "y":I
    move-object v9, v3

    move v10, v6

    aget v9, v9, v10

    move v8, v9

    .line 469
    .local v8, "x":I
    move v9, v8

    const/4 v10, -0x1

    if-eq v9, v10, :cond_1

    move v9, v7

    const/4 v10, -0x1

    if-ne v9, v10, :cond_2

    .line 470
    .line 466
    :cond_1
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 473
    :cond_2
    move-object v9, v1

    move v10, v8

    move v11, v7

    invoke-virtual {v9, v10, v11}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v9

    invoke-static {v9}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->isEmpty(I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 476
    move v9, v8

    const/4 v10, 0x2

    add-int/lit8 v9, v9, -0x2

    move v10, v7

    const/4 v11, 0x2

    add-int/lit8 v10, v10, -0x2

    move-object v11, v1

    invoke-static {v9, v10, v11}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedPositionAdjustmentPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    goto :goto_3

    .line 465
    .end local v7    # "y":I
    .end local v8    # "x":I
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 480
    .end local v6    # "j":I
    :cond_4
    goto :goto_0
.end method

.method static maybeEmbedVersionInfo(Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 198
    move-object v0, p0

    .local v0, "version":Lcom/google/zxing/qrcode/decoder/Version;
    move-object v1, p1

    .local v1, "matrix":Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    move-object v7, v0

    invoke-virtual {v7}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionNumber()I

    move-result v7

    const/4 v8, 0x7

    if-ge v7, v8, :cond_0

    .line 199
    .line 216
    :goto_0
    return-void

    .line 201
    :cond_0
    new-instance v7, Lcom/google/zxing/common/BitArray;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Lcom/google/zxing/common/BitArray;-><init>()V

    move-object v2, v7

    .line 202
    .local v2, "versionInfoBits":Lcom/google/zxing/common/BitArray;
    move-object v7, v0

    move-object v8, v2

    invoke-static {v7, v8}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->makeVersionInfoBits(Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/common/BitArray;)V

    .line 204
    const/16 v7, 0x11

    move v3, v7

    .line 205
    .local v3, "bitIndex":I
    const/4 v7, 0x0

    move v4, v7

    .local v4, "i":I
    :goto_1
    move v7, v4

    const/4 v8, 0x6

    if-ge v7, v8, :cond_2

    .line 206
    const/4 v7, 0x0

    move v5, v7

    .local v5, "j":I
    :goto_2
    move v7, v5

    const/4 v8, 0x3

    if-ge v7, v8, :cond_1

    .line 208
    move-object v7, v2

    move v8, v3

    invoke-virtual {v7, v8}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v7

    move v6, v7

    .line 209
    .local v6, "bit":Z
    add-int/lit8 v3, v3, -0x1

    .line 211
    move-object v7, v1

    move v8, v4

    move-object v9, v1

    invoke-virtual {v9}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v9

    const/16 v10, 0xb

    add-int/lit8 v9, v9, -0xb

    move v10, v5

    add-int/2addr v9, v10

    move v10, v6

    invoke-virtual {v7, v8, v9, v10}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    .line 213
    move-object v7, v1

    move-object v8, v1

    invoke-virtual {v8}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v8

    const/16 v9, 0xb

    add-int/lit8 v8, v8, -0xb

    move v9, v5

    add-int/2addr v8, v9

    move v9, v4

    move v10, v6

    invoke-virtual {v7, v8, v9, v10}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    .line 206
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 205
    .end local v6    # "bit":Z
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 216
    .end local v5    # "j":I
    :cond_2
    goto :goto_0
.end method
