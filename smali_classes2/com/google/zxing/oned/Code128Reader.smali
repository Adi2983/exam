.class public final Lcom/google/zxing/oned/Code128Reader;
.super Lcom/google/zxing/oned/OneDReader;
.source "Code128Reader.java"


# static fields
.field private static final CODE_CODE_A:I = 0x65

.field private static final CODE_CODE_B:I = 0x64

.field private static final CODE_CODE_C:I = 0x63

.field private static final CODE_FNC_1:I = 0x66

.field private static final CODE_FNC_2:I = 0x61

.field private static final CODE_FNC_3:I = 0x60

.field private static final CODE_FNC_4_A:I = 0x65

.field private static final CODE_FNC_4_B:I = 0x64

.field static final CODE_PATTERNS:[[I

.field private static final CODE_SHIFT:I = 0x62

.field private static final CODE_START_A:I = 0x67

.field private static final CODE_START_B:I = 0x68

.field private static final CODE_START_C:I = 0x69

.field private static final CODE_STOP:I = 0x6a

.field private static final MAX_AVG_VARIANCE:I = 0x40

.field private static final MAX_INDIVIDUAL_VARIANCE:I = 0xb3


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 39
    const/16 v0, 0x6b

    new-array v0, v0, [[I

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x0

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x1

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_1

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x2

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_2

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x3

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_3

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x4

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_4

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x5

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_5

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x6

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_6

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x7

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_7

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x8

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_8

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x9

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_9

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0xa

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_a

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0xb

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_b

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0xc

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_c

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0xd

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_d

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0xe

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_e

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0xf

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_f

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x10

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_10

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x11

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_11

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x12

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_12

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x13

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_13

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x14

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_14

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x15

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_15

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x16

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_16

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x17

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_17

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x18

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_18

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x19

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_19

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x1a

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_1a

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x1b

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_1b

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x1c

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_1c

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x1d

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_1d

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x1e

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_1e

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x1f

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_1f

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x20

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_20

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x21

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_21

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x22

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_22

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x23

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_23

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x24

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_24

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x25

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_25

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x26

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_26

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x27

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_27

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x28

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_28

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x29

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_29

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x2a

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_2a

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x2b

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_2b

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x2c

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_2c

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x2d

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_2d

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x2e

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_2e

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x2f

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_2f

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x30

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_30

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x31

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_31

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x32

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_32

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x33

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_33

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x34

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_34

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x35

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_35

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x36

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_36

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x37

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_37

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x38

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_38

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x39

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_39

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x3a

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_3a

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x3b

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_3b

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x3c

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_3c

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x3d

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_3d

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x3e

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_3e

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x3f

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_3f

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x40

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_40

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x41

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_41

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x42

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_42

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x43

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_43

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x44

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_44

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x45

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_45

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x46

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_46

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x47

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_47

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x48

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_48

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x49

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_49

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x4a

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_4a

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x4b

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_4b

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x4c

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_4c

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x4d

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_4d

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x4e

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_4e

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x4f

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_4f

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x50

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_50

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x51

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_51

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x52

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_52

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x53

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_53

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x54

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_54

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x55

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_55

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x56

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_56

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x57

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_57

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x58

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_58

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x59

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_59

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x5a

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_5a

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x5b

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_5b

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x5c

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_5c

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x5d

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_5d

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x5e

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_5e

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x5f

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_5f

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x60

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_60

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x61

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_61

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x62

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_62

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x63

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_63

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x64

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_64

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x65

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_65

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x66

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_66

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x67

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_67

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x68

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_68

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x69

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_69

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x6a

    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_6a

    aput-object v3, v1, v2

    sput-object v0, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    return-void

    :array_0
    .array-data 4
        0x2
        0x1
        0x2
        0x2
        0x2
        0x2
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x2
        0x2
        0x1
        0x2
        0x2
    .end array-data

    :array_2
    .array-data 4
        0x2
        0x2
        0x2
        0x2
        0x2
        0x1
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x2
        0x1
        0x2
        0x2
        0x3
    .end array-data

    :array_4
    .array-data 4
        0x1
        0x2
        0x1
        0x3
        0x2
        0x2
    .end array-data

    :array_5
    .array-data 4
        0x1
        0x3
        0x1
        0x2
        0x2
        0x2
    .end array-data

    :array_6
    .array-data 4
        0x1
        0x2
        0x2
        0x2
        0x1
        0x3
    .end array-data

    :array_7
    .array-data 4
        0x1
        0x2
        0x2
        0x3
        0x1
        0x2
    .end array-data

    :array_8
    .array-data 4
        0x1
        0x3
        0x2
        0x2
        0x1
        0x2
    .end array-data

    :array_9
    .array-data 4
        0x2
        0x2
        0x1
        0x2
        0x1
        0x3
    .end array-data

    :array_a
    .array-data 4
        0x2
        0x2
        0x1
        0x3
        0x1
        0x2
    .end array-data

    :array_b
    .array-data 4
        0x2
        0x3
        0x1
        0x2
        0x1
        0x2
    .end array-data

    :array_c
    .array-data 4
        0x1
        0x1
        0x2
        0x2
        0x3
        0x2
    .end array-data

    :array_d
    .array-data 4
        0x1
        0x2
        0x2
        0x1
        0x3
        0x2
    .end array-data

    :array_e
    .array-data 4
        0x1
        0x2
        0x2
        0x2
        0x3
        0x1
    .end array-data

    :array_f
    .array-data 4
        0x1
        0x1
        0x3
        0x2
        0x2
        0x2
    .end array-data

    :array_10
    .array-data 4
        0x1
        0x2
        0x3
        0x1
        0x2
        0x2
    .end array-data

    :array_11
    .array-data 4
        0x1
        0x2
        0x3
        0x2
        0x2
        0x1
    .end array-data

    :array_12
    .array-data 4
        0x2
        0x2
        0x3
        0x2
        0x1
        0x1
    .end array-data

    :array_13
    .array-data 4
        0x2
        0x2
        0x1
        0x1
        0x3
        0x2
    .end array-data

    :array_14
    .array-data 4
        0x2
        0x2
        0x1
        0x2
        0x3
        0x1
    .end array-data

    :array_15
    .array-data 4
        0x2
        0x1
        0x3
        0x2
        0x1
        0x2
    .end array-data

    :array_16
    .array-data 4
        0x2
        0x2
        0x3
        0x1
        0x1
        0x2
    .end array-data

    :array_17
    .array-data 4
        0x3
        0x1
        0x2
        0x1
        0x3
        0x1
    .end array-data

    :array_18
    .array-data 4
        0x3
        0x1
        0x1
        0x2
        0x2
        0x2
    .end array-data

    :array_19
    .array-data 4
        0x3
        0x2
        0x1
        0x1
        0x2
        0x2
    .end array-data

    :array_1a
    .array-data 4
        0x3
        0x2
        0x1
        0x2
        0x2
        0x1
    .end array-data

    :array_1b
    .array-data 4
        0x3
        0x1
        0x2
        0x2
        0x1
        0x2
    .end array-data

    :array_1c
    .array-data 4
        0x3
        0x2
        0x2
        0x1
        0x1
        0x2
    .end array-data

    :array_1d
    .array-data 4
        0x3
        0x2
        0x2
        0x2
        0x1
        0x1
    .end array-data

    :array_1e
    .array-data 4
        0x2
        0x1
        0x2
        0x1
        0x2
        0x3
    .end array-data

    :array_1f
    .array-data 4
        0x2
        0x1
        0x2
        0x3
        0x2
        0x1
    .end array-data

    :array_20
    .array-data 4
        0x2
        0x3
        0x2
        0x1
        0x2
        0x1
    .end array-data

    :array_21
    .array-data 4
        0x1
        0x1
        0x1
        0x3
        0x2
        0x3
    .end array-data

    :array_22
    .array-data 4
        0x1
        0x3
        0x1
        0x1
        0x2
        0x3
    .end array-data

    :array_23
    .array-data 4
        0x1
        0x3
        0x1
        0x3
        0x2
        0x1
    .end array-data

    :array_24
    .array-data 4
        0x1
        0x1
        0x2
        0x3
        0x1
        0x3
    .end array-data

    :array_25
    .array-data 4
        0x1
        0x3
        0x2
        0x1
        0x1
        0x3
    .end array-data

    :array_26
    .array-data 4
        0x1
        0x3
        0x2
        0x3
        0x1
        0x1
    .end array-data

    :array_27
    .array-data 4
        0x2
        0x1
        0x1
        0x3
        0x1
        0x3
    .end array-data

    :array_28
    .array-data 4
        0x2
        0x3
        0x1
        0x1
        0x1
        0x3
    .end array-data

    :array_29
    .array-data 4
        0x2
        0x3
        0x1
        0x3
        0x1
        0x1
    .end array-data

    :array_2a
    .array-data 4
        0x1
        0x1
        0x2
        0x1
        0x3
        0x3
    .end array-data

    :array_2b
    .array-data 4
        0x1
        0x1
        0x2
        0x3
        0x3
        0x1
    .end array-data

    :array_2c
    .array-data 4
        0x1
        0x3
        0x2
        0x1
        0x3
        0x1
    .end array-data

    :array_2d
    .array-data 4
        0x1
        0x1
        0x3
        0x1
        0x2
        0x3
    .end array-data

    :array_2e
    .array-data 4
        0x1
        0x1
        0x3
        0x3
        0x2
        0x1
    .end array-data

    :array_2f
    .array-data 4
        0x1
        0x3
        0x3
        0x1
        0x2
        0x1
    .end array-data

    :array_30
    .array-data 4
        0x3
        0x1
        0x3
        0x1
        0x2
        0x1
    .end array-data

    :array_31
    .array-data 4
        0x2
        0x1
        0x1
        0x3
        0x3
        0x1
    .end array-data

    :array_32
    .array-data 4
        0x2
        0x3
        0x1
        0x1
        0x3
        0x1
    .end array-data

    :array_33
    .array-data 4
        0x2
        0x1
        0x3
        0x1
        0x1
        0x3
    .end array-data

    :array_34
    .array-data 4
        0x2
        0x1
        0x3
        0x3
        0x1
        0x1
    .end array-data

    :array_35
    .array-data 4
        0x2
        0x1
        0x3
        0x1
        0x3
        0x1
    .end array-data

    :array_36
    .array-data 4
        0x3
        0x1
        0x1
        0x1
        0x2
        0x3
    .end array-data

    :array_37
    .array-data 4
        0x3
        0x1
        0x1
        0x3
        0x2
        0x1
    .end array-data

    :array_38
    .array-data 4
        0x3
        0x3
        0x1
        0x1
        0x2
        0x1
    .end array-data

    :array_39
    .array-data 4
        0x3
        0x1
        0x2
        0x1
        0x1
        0x3
    .end array-data

    :array_3a
    .array-data 4
        0x3
        0x1
        0x2
        0x3
        0x1
        0x1
    .end array-data

    :array_3b
    .array-data 4
        0x3
        0x3
        0x2
        0x1
        0x1
        0x1
    .end array-data

    :array_3c
    .array-data 4
        0x3
        0x1
        0x4
        0x1
        0x1
        0x1
    .end array-data

    :array_3d
    .array-data 4
        0x2
        0x2
        0x1
        0x4
        0x1
        0x1
    .end array-data

    :array_3e
    .array-data 4
        0x4
        0x3
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_3f
    .array-data 4
        0x1
        0x1
        0x1
        0x2
        0x2
        0x4
    .end array-data

    :array_40
    .array-data 4
        0x1
        0x1
        0x1
        0x4
        0x2
        0x2
    .end array-data

    :array_41
    .array-data 4
        0x1
        0x2
        0x1
        0x1
        0x2
        0x4
    .end array-data

    :array_42
    .array-data 4
        0x1
        0x2
        0x1
        0x4
        0x2
        0x1
    .end array-data

    :array_43
    .array-data 4
        0x1
        0x4
        0x1
        0x1
        0x2
        0x2
    .end array-data

    :array_44
    .array-data 4
        0x1
        0x4
        0x1
        0x2
        0x2
        0x1
    .end array-data

    :array_45
    .array-data 4
        0x1
        0x1
        0x2
        0x2
        0x1
        0x4
    .end array-data

    :array_46
    .array-data 4
        0x1
        0x1
        0x2
        0x4
        0x1
        0x2
    .end array-data

    :array_47
    .array-data 4
        0x1
        0x2
        0x2
        0x1
        0x1
        0x4
    .end array-data

    :array_48
    .array-data 4
        0x1
        0x2
        0x2
        0x4
        0x1
        0x1
    .end array-data

    :array_49
    .array-data 4
        0x1
        0x4
        0x2
        0x1
        0x1
        0x2
    .end array-data

    :array_4a
    .array-data 4
        0x1
        0x4
        0x2
        0x2
        0x1
        0x1
    .end array-data

    :array_4b
    .array-data 4
        0x2
        0x4
        0x1
        0x2
        0x1
        0x1
    .end array-data

    :array_4c
    .array-data 4
        0x2
        0x2
        0x1
        0x1
        0x1
        0x4
    .end array-data

    :array_4d
    .array-data 4
        0x4
        0x1
        0x3
        0x1
        0x1
        0x1
    .end array-data

    :array_4e
    .array-data 4
        0x2
        0x4
        0x1
        0x1
        0x1
        0x2
    .end array-data

    :array_4f
    .array-data 4
        0x1
        0x3
        0x4
        0x1
        0x1
        0x1
    .end array-data

    :array_50
    .array-data 4
        0x1
        0x1
        0x1
        0x2
        0x4
        0x2
    .end array-data

    :array_51
    .array-data 4
        0x1
        0x2
        0x1
        0x1
        0x4
        0x2
    .end array-data

    :array_52
    .array-data 4
        0x1
        0x2
        0x1
        0x2
        0x4
        0x1
    .end array-data

    :array_53
    .array-data 4
        0x1
        0x1
        0x4
        0x2
        0x1
        0x2
    .end array-data

    :array_54
    .array-data 4
        0x1
        0x2
        0x4
        0x1
        0x1
        0x2
    .end array-data

    :array_55
    .array-data 4
        0x1
        0x2
        0x4
        0x2
        0x1
        0x1
    .end array-data

    :array_56
    .array-data 4
        0x4
        0x1
        0x1
        0x2
        0x1
        0x2
    .end array-data

    :array_57
    .array-data 4
        0x4
        0x2
        0x1
        0x1
        0x1
        0x2
    .end array-data

    :array_58
    .array-data 4
        0x4
        0x2
        0x1
        0x2
        0x1
        0x1
    .end array-data

    :array_59
    .array-data 4
        0x2
        0x1
        0x2
        0x1
        0x4
        0x1
    .end array-data

    :array_5a
    .array-data 4
        0x2
        0x1
        0x4
        0x1
        0x2
        0x1
    .end array-data

    :array_5b
    .array-data 4
        0x4
        0x1
        0x2
        0x1
        0x2
        0x1
    .end array-data

    :array_5c
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x4
        0x3
    .end array-data

    :array_5d
    .array-data 4
        0x1
        0x1
        0x1
        0x3
        0x4
        0x1
    .end array-data

    :array_5e
    .array-data 4
        0x1
        0x3
        0x1
        0x1
        0x4
        0x1
    .end array-data

    :array_5f
    .array-data 4
        0x1
        0x1
        0x4
        0x1
        0x1
        0x3
    .end array-data

    :array_60
    .array-data 4
        0x1
        0x1
        0x4
        0x3
        0x1
        0x1
    .end array-data

    :array_61
    .array-data 4
        0x4
        0x1
        0x1
        0x1
        0x1
        0x3
    .end array-data

    :array_62
    .array-data 4
        0x4
        0x1
        0x1
        0x3
        0x1
        0x1
    .end array-data

    :array_63
    .array-data 4
        0x1
        0x1
        0x3
        0x1
        0x4
        0x1
    .end array-data

    :array_64
    .array-data 4
        0x1
        0x1
        0x4
        0x1
        0x3
        0x1
    .end array-data

    :array_65
    .array-data 4
        0x3
        0x1
        0x1
        0x1
        0x4
        0x1
    .end array-data

    :array_66
    .array-data 4
        0x4
        0x1
        0x1
        0x1
        0x3
        0x1
    .end array-data

    :array_67
    .array-data 4
        0x2
        0x1
        0x1
        0x4
        0x1
        0x2
    .end array-data

    :array_68
    .array-data 4
        0x2
        0x1
        0x1
        0x2
        0x1
        0x4
    .end array-data

    :array_69
    .array-data 4
        0x2
        0x1
        0x1
        0x2
        0x3
        0x2
    .end array-data

    :array_6a
    .array-data 4
        0x2
        0x3
        0x3
        0x1
        0x1
        0x1
        0x2
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/Code128Reader;
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    return-void
.end method

.method private static decodeCode(Lcom/google/zxing/common/BitArray;[II)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 216
    move-object v0, p0

    .local v0, "row":Lcom/google/zxing/common/BitArray;
    move-object v1, p1

    .local v1, "counters":[I
    move v2, p2

    .local v2, "rowOffset":I
    move-object v8, v0

    move v9, v2

    move-object v10, v1

    invoke-static {v8, v9, v10}, Lcom/google/zxing/oned/Code128Reader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    .line 217
    const/16 v8, 0x40

    move v3, v8

    .line 218
    .local v3, "bestVariance":I
    const/4 v8, -0x1

    move v4, v8

    .line 219
    .local v4, "bestMatch":I
    const/4 v8, 0x0

    move v5, v8

    .local v5, "d":I
    :goto_0
    move v8, v5

    sget-object v9, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    array-length v9, v9

    if-ge v8, v9, :cond_1

    .line 220
    sget-object v8, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    move v9, v5

    aget-object v8, v8, v9

    move-object v6, v8

    .line 221
    .local v6, "pattern":[I
    move-object v8, v1

    move-object v9, v6

    const/16 v10, 0xb3

    invoke-static {v8, v9, v10}, Lcom/google/zxing/oned/Code128Reader;->patternMatchVariance([I[II)I

    move-result v8

    move v7, v8

    .line 222
    .local v7, "variance":I
    move v8, v7

    move v9, v3

    if-ge v8, v9, :cond_0

    .line 223
    move v8, v7

    move v3, v8

    .line 224
    move v8, v5

    move v4, v8

    .line 219
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 228
    .end local v6    # "pattern":[I
    .end local v7    # "variance":I
    :cond_1
    move v8, v4

    if-ltz v8, :cond_2

    .line 229
    move v8, v4

    move v0, v8

    .end local v0    # "row":Lcom/google/zxing/common/BitArray;
    return v0

    .line 231
    .restart local v0    # "row":Lcom/google/zxing/common/BitArray;
    :cond_2
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v8

    throw v8
.end method

.method private static findStartPattern(Lcom/google/zxing/common/BitArray;)[I
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 170
    move-object/from16 v0, p0

    .local v0, "row":Lcom/google/zxing/common/BitArray;
    move-object v13, v0

    invoke-virtual {v13}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v13

    move v1, v13

    .line 171
    .local v1, "width":I
    move-object v13, v0

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v13

    move v2, v13

    .line 173
    .local v2, "rowOffset":I
    const/4 v13, 0x0

    move v3, v13

    .line 174
    .local v3, "counterPosition":I
    const/4 v13, 0x6

    new-array v13, v13, [I

    move-object v4, v13

    .line 175
    .local v4, "counters":[I
    move v13, v2

    move v5, v13

    .line 176
    .local v5, "patternStart":I
    const/4 v13, 0x0

    move v6, v13

    .line 177
    .local v6, "isWhite":Z
    move-object v13, v4

    array-length v13, v13

    move v7, v13

    .line 179
    .local v7, "patternLength":I
    move v13, v2

    move v8, v13

    .local v8, "i":I
    :goto_0
    move v13, v8

    move v14, v1

    if-ge v13, v14, :cond_6

    .line 180
    move-object v13, v0

    move v14, v8

    invoke-virtual {v13, v14}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v13

    move v14, v6

    xor-int/2addr v13, v14

    if-eqz v13, :cond_0

    .line 181
    move-object v13, v4

    move v14, v3

    move-object/from16 v19, v13

    move/from16 v20, v14

    move-object/from16 v13, v19

    move/from16 v14, v20

    move-object/from16 v15, v19

    move/from16 v16, v20

    aget v15, v15, v16

    const/16 v16, 0x1

    add-int/lit8 v15, v15, 0x1

    aput v15, v13, v14

    .line 179
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 183
    :cond_0
    move v13, v3

    move v14, v7

    const/4 v15, 0x1

    add-int/lit8 v14, v14, -0x1

    if-ne v13, v14, :cond_4

    .line 184
    const/16 v13, 0x40

    move v9, v13

    .line 185
    .local v9, "bestVariance":I
    const/4 v13, -0x1

    move v10, v13

    .line 186
    .local v10, "bestMatch":I
    const/16 v13, 0x67

    move v11, v13

    .local v11, "startCode":I
    :goto_2
    move v13, v11

    const/16 v14, 0x69

    if-gt v13, v14, :cond_2

    .line 187
    move-object v13, v4

    sget-object v14, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    move v15, v11

    aget-object v14, v14, v15

    const/16 v15, 0xb3

    invoke-static {v13, v14, v15}, Lcom/google/zxing/oned/Code128Reader;->patternMatchVariance([I[II)I

    move-result v13

    move v12, v13

    .line 189
    .local v12, "variance":I
    move v13, v12

    move v14, v9

    if-ge v13, v14, :cond_1

    .line 190
    move v13, v12

    move v9, v13

    .line 191
    move v13, v11

    move v10, v13

    .line 186
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 195
    .end local v12    # "variance":I
    :cond_2
    move v13, v10

    if-ltz v13, :cond_3

    move-object v13, v0

    const/4 v14, 0x0

    move v15, v5

    move/from16 v16, v8

    move/from16 v17, v5

    sub-int v16, v16, v17

    const/16 v17, 0x2

    div-int/lit8 v16, v16, 0x2

    sub-int v15, v15, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    move v15, v5

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Lcom/google/zxing/common/BitArray;->isRange(IIZ)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 197
    const/4 v13, 0x3

    new-array v13, v13, [I

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    const/4 v15, 0x0

    move/from16 v16, v5

    aput v16, v14, v15

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    const/4 v15, 0x1

    move/from16 v16, v8

    aput v16, v14, v15

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    const/4 v15, 0x2

    move/from16 v16, v10

    aput v16, v14, v15

    move-object v0, v13

    .end local v0    # "row":Lcom/google/zxing/common/BitArray;
    return-object v0

    .line 199
    .restart local v0    # "row":Lcom/google/zxing/common/BitArray;
    :cond_3
    move v13, v5

    move-object v14, v4

    const/4 v15, 0x0

    aget v14, v14, v15

    move-object v15, v4

    const/16 v16, 0x1

    aget v15, v15, v16

    add-int/2addr v14, v15

    add-int/2addr v13, v14

    move v5, v13

    .line 200
    move-object v13, v4

    const/4 v14, 0x2

    move-object v15, v4

    const/16 v16, 0x0

    move/from16 v17, v7

    const/16 v18, 0x2

    add-int/lit8 v17, v17, -0x2

    invoke-static/range {v13 .. v17}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 201
    move-object v13, v4

    move v14, v7

    const/4 v15, 0x2

    add-int/lit8 v14, v14, -0x2

    const/4 v15, 0x0

    aput v15, v13, v14

    .line 202
    move-object v13, v4

    move v14, v7

    const/4 v15, 0x1

    add-int/lit8 v14, v14, -0x1

    const/4 v15, 0x0

    aput v15, v13, v14

    .line 203
    add-int/lit8 v3, v3, -0x1

    .line 207
    .end local v9    # "bestVariance":I
    .end local v10    # "bestMatch":I
    .end local v11    # "startCode":I
    :goto_3
    move-object v13, v4

    move v14, v3

    const/4 v15, 0x1

    aput v15, v13, v14

    .line 208
    move v13, v6

    if-nez v13, :cond_5

    const/4 v13, 0x1

    :goto_4
    move v6, v13

    goto/16 :goto_1

    .line 205
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 208
    :cond_5
    const/4 v13, 0x0

    goto :goto_4

    .line 211
    :cond_6
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v13

    throw v13
.end method


# virtual methods
.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 39
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .prologue
    .line 239
    move-object/from16 v2, p0

    .local v2, "this":Lcom/google/zxing/oned/Code128Reader;
    move/from16 v3, p1

    .local v3, "rowNumber":I
    move-object/from16 v4, p2

    .local v4, "row":Lcom/google/zxing/common/BitArray;
    move-object/from16 v5, p3

    .local v5, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    move-object/from16 v27, v4

    invoke-static/range {v27 .. v27}, Lcom/google/zxing/oned/Code128Reader;->findStartPattern(Lcom/google/zxing/common/BitArray;)[I

    move-result-object v27

    move-object/from16 v6, v27

    .line 240
    .local v6, "startPatternInfo":[I
    move-object/from16 v27, v6

    const/16 v28, 0x2

    aget v27, v27, v28

    move/from16 v7, v27

    .line 242
    .local v7, "startCode":I
    move/from16 v27, v7

    packed-switch v27, :pswitch_data_0

    .line 253
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v27

    throw v27

    .line 244
    :pswitch_0
    const/16 v27, 0x65

    move/from16 v8, v27

    .line 256
    .local v8, "codeSet":I
    :goto_0
    const/16 v27, 0x0

    move/from16 v9, v27

    .line 257
    .local v9, "done":Z
    const/16 v27, 0x0

    move/from16 v10, v27

    .line 259
    .local v10, "isNextShifted":Z
    new-instance v27, Ljava/lang/StringBuilder;

    move-object/from16 v38, v27

    move-object/from16 v27, v38

    move-object/from16 v28, v38

    const/16 v29, 0x14

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object/from16 v11, v27

    .line 260
    .local v11, "result":Ljava/lang/StringBuilder;
    new-instance v27, Ljava/util/ArrayList;

    move-object/from16 v38, v27

    move-object/from16 v27, v38

    move-object/from16 v28, v38

    const/16 v29, 0x14

    invoke-direct/range {v28 .. v29}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v12, v27

    .line 262
    .local v12, "rawCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    move-object/from16 v27, v6

    const/16 v28, 0x0

    aget v27, v27, v28

    move/from16 v13, v27

    .line 263
    .local v13, "lastStart":I
    move-object/from16 v27, v6

    const/16 v28, 0x1

    aget v27, v27, v28

    move/from16 v14, v27

    .line 264
    .local v14, "nextStart":I
    const/16 v27, 0x6

    move/from16 v0, v27

    new-array v0, v0, [I

    move-object/from16 v27, v0

    move-object/from16 v15, v27

    .line 266
    .local v15, "counters":[I
    const/16 v27, 0x0

    move/from16 v16, v27

    .line 267
    .local v16, "lastCode":I
    const/16 v27, 0x0

    move/from16 v17, v27

    .line 268
    .local v17, "code":I
    move/from16 v27, v7

    move/from16 v18, v27

    .line 269
    .local v18, "checksumTotal":I
    const/16 v27, 0x0

    move/from16 v19, v27

    .line 270
    .local v19, "multiplier":I
    const/16 v27, 0x1

    move/from16 v20, v27

    .line 272
    .local v20, "lastCharacterWasPrintable":Z
    :goto_1
    move/from16 v27, v9

    if-nez v27, :cond_d

    .line 274
    move/from16 v27, v10

    move/from16 v21, v27

    .line 275
    .local v21, "unshift":Z
    const/16 v27, 0x0

    move/from16 v10, v27

    .line 278
    move/from16 v27, v17

    move/from16 v16, v27

    .line 281
    move-object/from16 v27, v4

    move-object/from16 v28, v15

    move/from16 v29, v14

    invoke-static/range {v27 .. v29}, Lcom/google/zxing/oned/Code128Reader;->decodeCode(Lcom/google/zxing/common/BitArray;[II)I

    move-result v27

    move/from16 v17, v27

    .line 283
    move-object/from16 v27, v12

    move/from16 v28, v17

    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v28

    invoke-interface/range {v27 .. v28}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v27

    .line 286
    move/from16 v27, v17

    const/16 v28, 0x6a

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_0

    .line 287
    const/16 v27, 0x1

    move/from16 v20, v27

    .line 291
    :cond_0
    move/from16 v27, v17

    const/16 v28, 0x6a

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_1

    .line 292
    add-int/lit8 v19, v19, 0x1

    .line 293
    move/from16 v27, v18

    move/from16 v28, v19

    move/from16 v29, v17

    mul-int v28, v28, v29

    add-int v27, v27, v28

    move/from16 v18, v27

    .line 297
    :cond_1
    move/from16 v27, v14

    move/from16 v13, v27

    .line 298
    move-object/from16 v27, v15

    move-object/from16 v22, v27

    .local v22, "arr$":[I
    move-object/from16 v27, v22

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v23, v27

    .local v23, "len$":I
    const/16 v27, 0x0

    move/from16 v24, v27

    .local v24, "i$":I
    :goto_2
    move/from16 v27, v24

    move/from16 v28, v23

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_2

    move-object/from16 v27, v22

    move/from16 v28, v24

    aget v27, v27, v28

    move/from16 v25, v27

    .line 299
    .local v25, "counter":I
    move/from16 v27, v14

    move/from16 v28, v25

    add-int v27, v27, v28

    move/from16 v14, v27

    .line 298
    add-int/lit8 v24, v24, 0x1

    goto :goto_2

    .line 247
    .end local v8    # "codeSet":I
    .end local v9    # "done":Z
    .end local v10    # "isNextShifted":Z
    .end local v11    # "result":Ljava/lang/StringBuilder;
    .end local v12    # "rawCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    .end local v13    # "lastStart":I
    .end local v14    # "nextStart":I
    .end local v15    # "counters":[I
    .end local v16    # "lastCode":I
    .end local v17    # "code":I
    .end local v18    # "checksumTotal":I
    .end local v19    # "multiplier":I
    .end local v20    # "lastCharacterWasPrintable":Z
    .end local v21    # "unshift":Z
    .end local v22    # "arr$":[I
    .end local v23    # "len$":I
    .end local v24    # "i$":I
    .end local v25    # "counter":I
    :pswitch_1
    const/16 v27, 0x64

    move/from16 v8, v27

    .line 248
    .restart local v8    # "codeSet":I
    goto/16 :goto_0

    .line 250
    .end local v8    # "codeSet":I
    :pswitch_2
    const/16 v27, 0x63

    move/from16 v8, v27

    .line 251
    .restart local v8    # "codeSet":I
    goto/16 :goto_0

    .line 303
    .restart local v9    # "done":Z
    .restart local v10    # "isNextShifted":Z
    .restart local v11    # "result":Ljava/lang/StringBuilder;
    .restart local v12    # "rawCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    .restart local v13    # "lastStart":I
    .restart local v14    # "nextStart":I
    .restart local v15    # "counters":[I
    .restart local v16    # "lastCode":I
    .restart local v17    # "code":I
    .restart local v18    # "checksumTotal":I
    .restart local v19    # "multiplier":I
    .restart local v20    # "lastCharacterWasPrintable":Z
    .restart local v21    # "unshift":Z
    .restart local v22    # "arr$":[I
    .restart local v23    # "len$":I
    .restart local v24    # "i$":I
    :cond_2
    move/from16 v27, v17

    packed-switch v27, :pswitch_data_1

    .line 310
    move/from16 v27, v8

    packed-switch v27, :pswitch_data_2

    .line 405
    :goto_3
    move/from16 v27, v21

    if-eqz v27, :cond_3

    .line 406
    move/from16 v27, v8

    const/16 v28, 0x65

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_c

    const/16 v27, 0x64

    :goto_4
    move/from16 v8, v27

    .line 409
    :cond_3
    goto/16 :goto_1

    .line 307
    :pswitch_3
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v27

    throw v27

    .line 313
    :pswitch_4
    move/from16 v27, v17

    const/16 v28, 0x40

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_4

    .line 314
    move-object/from16 v27, v11

    const/16 v28, 0x20

    move/from16 v29, v17

    add-int v28, v28, v29

    move/from16 v0, v28

    int-to-char v0, v0

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v27

    goto :goto_3

    .line 315
    :cond_4
    move/from16 v27, v17

    const/16 v28, 0x60

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_5

    .line 316
    move-object/from16 v27, v11

    move/from16 v28, v17

    const/16 v29, 0x40

    add-int/lit8 v28, v28, -0x40

    move/from16 v0, v28

    int-to-char v0, v0

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v27

    goto :goto_3

    .line 320
    :cond_5
    move/from16 v27, v17

    const/16 v28, 0x6a

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_6

    .line 321
    const/16 v27, 0x0

    move/from16 v20, v27

    .line 323
    :cond_6
    move/from16 v27, v17

    packed-switch v27, :pswitch_data_3

    .line 345
    :goto_5
    :pswitch_5
    goto :goto_3

    .line 329
    :pswitch_6
    goto :goto_5

    .line 331
    :pswitch_7
    const/16 v27, 0x1

    move/from16 v10, v27

    .line 332
    const/16 v27, 0x64

    move/from16 v8, v27

    .line 333
    goto :goto_5

    .line 335
    :pswitch_8
    const/16 v27, 0x64

    move/from16 v8, v27

    .line 336
    goto :goto_5

    .line 338
    :pswitch_9
    const/16 v27, 0x63

    move/from16 v8, v27

    .line 339
    goto :goto_5

    .line 341
    :pswitch_a
    const/16 v27, 0x1

    move/from16 v9, v27

    goto :goto_5

    .line 347
    :pswitch_b
    move/from16 v27, v17

    const/16 v28, 0x60

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_7

    .line 348
    move-object/from16 v27, v11

    const/16 v28, 0x20

    move/from16 v29, v17

    add-int v28, v28, v29

    move/from16 v0, v28

    int-to-char v0, v0

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v27

    goto/16 :goto_3

    .line 350
    :cond_7
    move/from16 v27, v17

    const/16 v28, 0x6a

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_8

    .line 351
    const/16 v27, 0x0

    move/from16 v20, v27

    .line 353
    :cond_8
    move/from16 v27, v17

    packed-switch v27, :pswitch_data_4

    .line 375
    :goto_6
    :pswitch_c
    goto/16 :goto_3

    .line 359
    :pswitch_d
    goto :goto_6

    .line 361
    :pswitch_e
    const/16 v27, 0x1

    move/from16 v10, v27

    .line 362
    const/16 v27, 0x65

    move/from16 v8, v27

    .line 363
    goto :goto_6

    .line 365
    :pswitch_f
    const/16 v27, 0x65

    move/from16 v8, v27

    .line 366
    goto :goto_6

    .line 368
    :pswitch_10
    const/16 v27, 0x63

    move/from16 v8, v27

    .line 369
    goto :goto_6

    .line 371
    :pswitch_11
    const/16 v27, 0x1

    move/from16 v9, v27

    goto :goto_6

    .line 377
    :pswitch_12
    move/from16 v27, v17

    const/16 v28, 0x64

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_a

    .line 378
    move/from16 v27, v17

    const/16 v28, 0xa

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_9

    .line 379
    move-object/from16 v27, v11

    const/16 v28, 0x30

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v27

    .line 381
    :cond_9
    move-object/from16 v27, v11

    move/from16 v28, v17

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    goto/16 :goto_3

    .line 383
    :cond_a
    move/from16 v27, v17

    const/16 v28, 0x6a

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_b

    .line 384
    const/16 v27, 0x0

    move/from16 v20, v27

    .line 386
    :cond_b
    move/from16 v27, v17

    packed-switch v27, :pswitch_data_5

    :pswitch_13
    goto/16 :goto_3

    .line 394
    :pswitch_14
    const/16 v27, 0x64

    move/from16 v8, v27

    .line 395
    goto/16 :goto_3

    .line 389
    :pswitch_15
    goto/16 :goto_3

    .line 391
    :pswitch_16
    const/16 v27, 0x65

    move/from16 v8, v27

    .line 392
    goto/16 :goto_3

    .line 397
    :pswitch_17
    const/16 v27, 0x1

    move/from16 v9, v27

    goto/16 :goto_3

    .line 406
    :cond_c
    const/16 v27, 0x65

    goto/16 :goto_4

    .line 414
    .end local v21    # "unshift":Z
    .end local v22    # "arr$":[I
    .end local v23    # "len$":I
    .end local v24    # "i$":I
    :cond_d
    move-object/from16 v27, v4

    move/from16 v28, v14

    invoke-virtual/range {v27 .. v28}, Lcom/google/zxing/common/BitArray;->getNextUnset(I)I

    move-result v27

    move/from16 v14, v27

    .line 415
    move-object/from16 v27, v4

    move/from16 v28, v14

    move-object/from16 v29, v4

    invoke-virtual/range {v29 .. v29}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v29

    move/from16 v30, v14

    move/from16 v31, v14

    move/from16 v32, v13

    sub-int v31, v31, v32

    const/16 v32, 0x2

    div-int/lit8 v31, v31, 0x2

    add-int v30, v30, v31

    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->min(II)I

    move-result v29

    const/16 v30, 0x0

    invoke-virtual/range {v27 .. v30}, Lcom/google/zxing/common/BitArray;->isRange(IIZ)Z

    move-result v27

    if-nez v27, :cond_e

    .line 418
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v27

    throw v27

    .line 422
    :cond_e
    move/from16 v27, v18

    move/from16 v28, v19

    move/from16 v29, v16

    mul-int v28, v28, v29

    sub-int v27, v27, v28

    move/from16 v18, v27

    .line 424
    move/from16 v27, v18

    const/16 v28, 0x67

    rem-int/lit8 v27, v27, 0x67

    move/from16 v28, v16

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_f

    .line 425
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v27

    throw v27

    .line 429
    :cond_f
    move-object/from16 v27, v11

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->length()I

    move-result v27

    move/from16 v21, v27

    .line 430
    .local v21, "resultLength":I
    move/from16 v27, v21

    if-nez v27, :cond_10

    .line 432
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v27

    throw v27

    .line 437
    :cond_10
    move/from16 v27, v21

    if-lez v27, :cond_11

    move/from16 v27, v20

    if-eqz v27, :cond_11

    .line 438
    move/from16 v27, v8

    const/16 v28, 0x63

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_12

    .line 439
    move-object/from16 v27, v11

    move/from16 v28, v21

    const/16 v29, 0x2

    add-int/lit8 v28, v28, -0x2

    move/from16 v29, v21

    invoke-virtual/range {v27 .. v29}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move-result-object v27

    .line 445
    :cond_11
    :goto_7
    move-object/from16 v27, v6

    const/16 v28, 0x1

    aget v27, v27, v28

    move-object/from16 v28, v6

    const/16 v29, 0x0

    aget v28, v28, v29

    add-int v27, v27, v28

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    const/high16 v28, 0x40000000    # 2.0f

    div-float v27, v27, v28

    move/from16 v22, v27

    .line 446
    .local v22, "left":F
    move/from16 v27, v14

    move/from16 v28, v13

    add-int v27, v27, v28

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    const/high16 v28, 0x40000000    # 2.0f

    div-float v27, v27, v28

    move/from16 v23, v27

    .line 448
    .local v23, "right":F
    move-object/from16 v27, v12

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v27

    move/from16 v24, v27

    .line 449
    .local v24, "rawCodesSize":I
    move/from16 v27, v24

    move/from16 v0, v27

    new-array v0, v0, [B

    move-object/from16 v27, v0

    move-object/from16 v25, v27

    .line 450
    .local v25, "rawBytes":[B
    const/16 v27, 0x0

    move/from16 v26, v27

    .local v26, "i":I
    :goto_8
    move/from16 v27, v26

    move/from16 v28, v24

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_13

    .line 451
    move-object/from16 v27, v25

    move/from16 v28, v26

    move-object/from16 v29, v12

    move/from16 v30, v26

    invoke-interface/range {v29 .. v30}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/Byte;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Byte;->byteValue()B

    move-result v29

    aput-byte v29, v27, v28

    .line 450
    add-int/lit8 v26, v26, 0x1

    goto :goto_8

    .line 441
    .end local v22    # "left":F
    .end local v23    # "right":F
    .end local v24    # "rawCodesSize":I
    .end local v25    # "rawBytes":[B
    .end local v26    # "i":I
    :cond_12
    move-object/from16 v27, v11

    move/from16 v28, v21

    const/16 v29, 0x1

    add-int/lit8 v28, v28, -0x1

    move/from16 v29, v21

    invoke-virtual/range {v27 .. v29}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move-result-object v27

    goto :goto_7

    .line 454
    .restart local v22    # "left":F
    .restart local v23    # "right":F
    .restart local v24    # "rawCodesSize":I
    .restart local v25    # "rawBytes":[B
    .restart local v26    # "i":I
    :cond_13
    new-instance v27, Lcom/google/zxing/Result;

    move-object/from16 v38, v27

    move-object/from16 v27, v38

    move-object/from16 v28, v38

    move-object/from16 v29, v11

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v30, v25

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Lcom/google/zxing/ResultPoint;

    move-object/from16 v31, v0

    move-object/from16 v38, v31

    move-object/from16 v31, v38

    move-object/from16 v32, v38

    const/16 v33, 0x0

    new-instance v34, Lcom/google/zxing/ResultPoint;

    move-object/from16 v38, v34

    move-object/from16 v34, v38

    move-object/from16 v35, v38

    move/from16 v36, v22

    move/from16 v37, v3

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    invoke-direct/range {v35 .. v37}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v34, v32, v33

    move-object/from16 v38, v31

    move-object/from16 v31, v38

    move-object/from16 v32, v38

    const/16 v33, 0x1

    new-instance v34, Lcom/google/zxing/ResultPoint;

    move-object/from16 v38, v34

    move-object/from16 v34, v38

    move-object/from16 v35, v38

    move/from16 v36, v23

    move/from16 v37, v3

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    invoke-direct/range {v35 .. v37}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v34, v32, v33

    sget-object v32, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    invoke-direct/range {v28 .. v32}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    move-object/from16 v2, v27

    .end local v2    # "this":Lcom/google/zxing/oned/Code128Reader;
    return-object v2

    .line 242
    :pswitch_data_0
    .packed-switch 0x67
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 303
    :pswitch_data_1
    .packed-switch 0x67
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    .line 310
    :pswitch_data_2
    .packed-switch 0x63
        :pswitch_12
        :pswitch_b
        :pswitch_4
    .end packed-switch

    .line 323
    :pswitch_data_3
    .packed-switch 0x60
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_8
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_a
    .end packed-switch

    .line 353
    :pswitch_data_4
    .packed-switch 0x60
        :pswitch_d
        :pswitch_d
        :pswitch_e
        :pswitch_10
        :pswitch_d
        :pswitch_f
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_11
    .end packed-switch

    .line 386
    :pswitch_data_5
    .packed-switch 0x64
        :pswitch_14
        :pswitch_16
        :pswitch_15
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_17
    .end packed-switch
.end method
