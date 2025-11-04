.class public Lnet/lingala/zip4j/crypto/engine/AESEngine;
.super Ljava/lang/Object;
.source "AESEngine.java"


# static fields
.field private static final S:[B

.field private static final T0:[I

.field private static final rcon:[I


# instance fields
.field private C0:I

.field private C1:I

.field private C2:I

.field private C3:I

.field private rounds:I

.field private workingKey:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 197
    const/16 v0, 0x100

    new-array v0, v0, [B

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    .line 198
    const/16 v3, 0x63

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const/16 v3, 0x7c

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    const/16 v3, 0x77

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    const/16 v3, 0x7b

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    const/16 v3, -0xe

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x5

    const/16 v3, 0x6b

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x6

    const/16 v3, 0x6f

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x7

    const/16 v3, -0x3b

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x8

    .line 199
    const/16 v3, 0x30

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x9

    const/4 v3, 0x1

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xa

    const/16 v3, 0x67

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xb

    const/16 v3, 0x2b

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xc

    const/4 v3, -0x2

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xd

    const/16 v3, -0x29

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xe

    const/16 v3, -0x55

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xf

    const/16 v3, 0x76

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x10

    .line 200
    const/16 v3, -0x36

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x11

    const/16 v3, -0x7e

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x12

    const/16 v3, -0x37

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x13

    const/16 v3, 0x7d

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x14

    const/4 v3, -0x6

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x15

    const/16 v3, 0x59

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x16

    const/16 v3, 0x47

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x17

    const/16 v3, -0x10

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x18

    .line 201
    const/16 v3, -0x53

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x19

    const/16 v3, -0x2c

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x1a

    const/16 v3, -0x5e

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x1b

    const/16 v3, -0x51

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x1c

    const/16 v3, -0x64

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x1d

    const/16 v3, -0x5c

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x1e

    const/16 v3, 0x72

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x1f

    const/16 v3, -0x40

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x20

    .line 202
    const/16 v3, -0x49

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x21

    const/4 v3, -0x3

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x22

    const/16 v3, -0x6d

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x23

    const/16 v3, 0x26

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x24

    const/16 v3, 0x36

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x25

    const/16 v3, 0x3f

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x26

    const/16 v3, -0x9

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x27

    const/16 v3, -0x34

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x28

    .line 203
    const/16 v3, 0x34

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x29

    const/16 v3, -0x5b

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x2a

    const/16 v3, -0x1b

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x2b

    const/16 v3, -0xf

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x2c

    const/16 v3, 0x71

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x2d

    const/16 v3, -0x28

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x2e

    const/16 v3, 0x31

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x2f

    const/16 v3, 0x15

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x30

    .line 204
    const/4 v3, 0x4

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x31

    const/16 v3, -0x39

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x32

    const/16 v3, 0x23

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x33

    const/16 v3, -0x3d

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x34

    const/16 v3, 0x18

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x35

    const/16 v3, -0x6a

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x36

    const/4 v3, 0x5

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x37

    const/16 v3, -0x66

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x38

    .line 205
    const/4 v3, 0x7

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x39

    const/16 v3, 0x12

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x3a

    const/16 v3, -0x80

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x3b

    const/16 v3, -0x1e

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x3c

    const/16 v3, -0x15

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x3d

    const/16 v3, 0x27

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x3e

    const/16 v3, -0x4e

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x3f

    const/16 v3, 0x75

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x40

    .line 206
    const/16 v3, 0x9

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x41

    const/16 v3, -0x7d

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x42

    const/16 v3, 0x2c

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x43

    const/16 v3, 0x1a

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x44

    const/16 v3, 0x1b

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x45

    const/16 v3, 0x6e

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x46

    const/16 v3, 0x5a

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x47

    const/16 v3, -0x60

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x48

    .line 207
    const/16 v3, 0x52

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x49

    const/16 v3, 0x3b

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x4a

    const/16 v3, -0x2a

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x4b

    const/16 v3, -0x4d

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x4c

    const/16 v3, 0x29

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x4d

    const/16 v3, -0x1d

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x4e

    const/16 v3, 0x2f

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x4f

    const/16 v3, -0x7c

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x50

    .line 208
    const/16 v3, 0x53

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x51

    const/16 v3, -0x2f

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x53

    const/16 v3, -0x13

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x54

    const/16 v3, 0x20

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x55

    const/4 v3, -0x4

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x56

    const/16 v3, -0x4f

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x57

    const/16 v3, 0x5b

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x58

    .line 209
    const/16 v3, 0x6a

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x59

    const/16 v3, -0x35

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x5a

    const/16 v3, -0x42

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x5b

    const/16 v3, 0x39

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x5c

    const/16 v3, 0x4a

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x5d

    const/16 v3, 0x4c

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x5e

    const/16 v3, 0x58

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x5f

    const/16 v3, -0x31

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x60

    .line 210
    const/16 v3, -0x30

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x61

    const/16 v3, -0x11

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x62

    const/16 v3, -0x56

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x63

    const/4 v3, -0x5

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x64

    const/16 v3, 0x43

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x65

    const/16 v3, 0x4d

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x66

    const/16 v3, 0x33

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x67

    const/16 v3, -0x7b

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x68

    .line 211
    const/16 v3, 0x45

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x69

    const/4 v3, -0x7

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x6a

    const/4 v3, 0x2

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x6b

    const/16 v3, 0x7f

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x6c

    const/16 v3, 0x50

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x6d

    const/16 v3, 0x3c

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x6e

    const/16 v3, -0x61

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x6f

    const/16 v3, -0x58

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x70

    .line 212
    const/16 v3, 0x51

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x71

    const/16 v3, -0x5d

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x72

    const/16 v3, 0x40

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x73

    const/16 v3, -0x71

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x74

    const/16 v3, -0x6e

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x75

    const/16 v3, -0x63

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x76

    const/16 v3, 0x38

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x77

    const/16 v3, -0xb

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x78

    .line 213
    const/16 v3, -0x44

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x79

    const/16 v3, -0x4a

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x7a

    const/16 v3, -0x26

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x7b

    const/16 v3, 0x21

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x7c

    const/16 v3, 0x10

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x7d

    const/4 v3, -0x1

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x7e

    const/16 v3, -0xd

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x7f

    const/16 v3, -0x2e

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x80

    .line 214
    const/16 v3, -0x33

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x81

    const/16 v3, 0xc

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x82

    const/16 v3, 0x13

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x83

    const/16 v3, -0x14

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x84

    const/16 v3, 0x5f

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x85

    const/16 v3, -0x69

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x86

    const/16 v3, 0x44

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x87

    const/16 v3, 0x17

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x88

    .line 215
    const/16 v3, -0x3c

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x89

    const/16 v3, -0x59

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x8a

    const/16 v3, 0x7e

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x8b

    const/16 v3, 0x3d

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x8c

    const/16 v3, 0x64

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x8d

    const/16 v3, 0x5d

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x8e

    const/16 v3, 0x19

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x8f

    const/16 v3, 0x73

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x90

    .line 216
    const/16 v3, 0x60

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x91

    const/16 v3, -0x7f

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x92

    const/16 v3, 0x4f

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x93

    const/16 v3, -0x24

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x94

    const/16 v3, 0x22

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x95

    const/16 v3, 0x2a

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x96

    const/16 v3, -0x70

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x97

    const/16 v3, -0x78

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x98

    .line 217
    const/16 v3, 0x46

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x99

    const/16 v3, -0x12

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x9a

    const/16 v3, -0x48

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x9b

    const/16 v3, 0x14

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x9c

    const/16 v3, -0x22

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x9d

    const/16 v3, 0x5e

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x9e

    const/16 v3, 0xb

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x9f

    const/16 v3, -0x25

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xa0

    .line 218
    const/16 v3, -0x20

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xa1

    const/16 v3, 0x32

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xa2

    const/16 v3, 0x3a

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xa3

    const/16 v3, 0xa

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xa4

    const/16 v3, 0x49

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xa5

    const/4 v3, 0x6

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xa6

    const/16 v3, 0x24

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xa7

    const/16 v3, 0x5c

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xa8

    .line 219
    const/16 v3, -0x3e

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xa9

    const/16 v3, -0x2d

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xaa

    const/16 v3, -0x54

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xab

    const/16 v3, 0x62

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xac

    const/16 v3, -0x6f

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xad

    const/16 v3, -0x6b

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xae

    const/16 v3, -0x1c

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xaf

    const/16 v3, 0x79

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xb0

    .line 220
    const/16 v3, -0x19

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xb1

    const/16 v3, -0x38

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xb2

    const/16 v3, 0x37

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xb3

    const/16 v3, 0x6d

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xb4

    const/16 v3, -0x73

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xb5

    const/16 v3, -0x2b

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xb6

    const/16 v3, 0x4e

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xb7

    const/16 v3, -0x57

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xb8

    .line 221
    const/16 v3, 0x6c

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xb9

    const/16 v3, 0x56

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xba

    const/16 v3, -0xc

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xbb

    const/16 v3, -0x16

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xbc

    const/16 v3, 0x65

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xbd

    const/16 v3, 0x7a

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xbe

    const/16 v3, -0x52

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xbf

    const/16 v3, 0x8

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xc0

    .line 222
    const/16 v3, -0x46

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xc1

    const/16 v3, 0x78

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xc2

    const/16 v3, 0x25

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xc3

    const/16 v3, 0x2e

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xc4

    const/16 v3, 0x1c

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xc5

    const/16 v3, -0x5a

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xc6

    const/16 v3, -0x4c

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xc7

    const/16 v3, -0x3a

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xc8

    .line 223
    const/16 v3, -0x18

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xc9

    const/16 v3, -0x23

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xca

    const/16 v3, 0x74

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xcb

    const/16 v3, 0x1f

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xcc

    const/16 v3, 0x4b

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xcd

    const/16 v3, -0x43

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xce

    const/16 v3, -0x75

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xcf

    const/16 v3, -0x76

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xd0

    .line 224
    const/16 v3, 0x70

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xd1

    const/16 v3, 0x3e

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xd2

    const/16 v3, -0x4b

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xd3

    const/16 v3, 0x66

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xd4

    const/16 v3, 0x48

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xd5

    const/4 v3, 0x3

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xd6

    const/16 v3, -0xa

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xd7

    const/16 v3, 0xe

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xd8

    .line 225
    const/16 v3, 0x61

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xd9

    const/16 v3, 0x35

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xda

    const/16 v3, 0x57

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xdb

    const/16 v3, -0x47

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xdc

    const/16 v3, -0x7a

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xdd

    const/16 v3, -0x3f

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xde

    const/16 v3, 0x1d

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xdf

    const/16 v3, -0x62

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xe0

    .line 226
    const/16 v3, -0x1f

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xe1

    const/4 v3, -0x8

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xe2

    const/16 v3, -0x68

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xe3

    const/16 v3, 0x11

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xe4

    const/16 v3, 0x69

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xe5

    const/16 v3, -0x27

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xe6

    const/16 v3, -0x72

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xe7

    const/16 v3, -0x6c

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xe8

    .line 227
    const/16 v3, -0x65

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xe9

    const/16 v3, 0x1e

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xea

    const/16 v3, -0x79

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xeb

    const/16 v3, -0x17

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xec

    const/16 v3, -0x32

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xed

    const/16 v3, 0x55

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xee

    const/16 v3, 0x28

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xef

    const/16 v3, -0x21

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xf0

    .line 228
    const/16 v3, -0x74

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xf1

    const/16 v3, -0x5f

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xf2

    const/16 v3, -0x77

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xf3

    const/16 v3, 0xd

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xf4

    const/16 v3, -0x41

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xf5

    const/16 v3, -0x1a

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xf6

    const/16 v3, 0x42

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xf7

    const/16 v3, 0x68

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xf8

    .line 229
    const/16 v3, 0x41

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xf9

    const/16 v3, -0x67

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xfa

    const/16 v3, 0x2d

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xfb

    const/16 v3, 0xf

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xfc

    const/16 v3, -0x50

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xfd

    const/16 v3, 0x54

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xfe

    const/16 v3, -0x45

    aput-byte v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xff

    const/16 v3, 0x16

    aput-byte v3, v1, v2

    .line 197
    sput-object v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->S:[B

    .line 232
    const/16 v0, 0x1e

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->rcon:[I

    .line 237
    const/16 v0, 0x100

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    .line 238
    const v3, -0x5a9c9c3a

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const v3, -0x7b838308

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    const v3, -0x66888812

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    const v3, -0x7284840a

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    const v3, 0xdf2f2ff

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x5

    .line 239
    const v3, -0x4294942a

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x6

    const v3, -0x4e909022

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x7

    const v3, 0x54c5c591

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x8

    const v3, 0x50303060

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x9

    const v3, 0x3010102

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xa

    .line 240
    const v3, -0x56989832

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xb

    const v3, 0x7d2b2b56

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xc

    const v3, 0x19fefee7

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xd

    const v3, 0x62d7d7b5

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xe

    const v3, -0x195454b3

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xf

    .line 241
    const v3, -0x65898914

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x10

    const v3, 0x45caca8f

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x11

    const v3, -0x627d7de1

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x12

    const v3, 0x40c9c989

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x13

    const v3, -0x78828206

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x14

    .line 242
    const v3, 0x15fafaef

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x15

    const v3, -0x14a6a64e

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x16

    const v3, -0x36b8b872

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x17

    const v3, 0xbf0f0fb

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x18

    const v3, -0x135252bf

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x19

    .line 243
    const v3, 0x67d4d4b3

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x1a

    const v3, -0x25d5da1

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x1b

    const v3, -0x155050bb

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x1c

    const v3, -0x406363dd

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x1d

    const v3, -0x85b5bad

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x1e

    .line 244
    const v3, -0x698d8d1c

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x1f

    const v3, 0x5bc0c09b

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x20

    const v3, -0x3d48488b

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x21

    const v3, 0x1cfdfde1

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x22

    const v3, -0x516c6cc3

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x23

    .line 245
    const v3, 0x6a26264c

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x24

    const v3, 0x5a36366c

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x25

    const v3, 0x413f3f7e

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x26

    const v3, 0x2f7f7f5

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x27

    const v3, 0x4fcccc83

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x28

    .line 246
    const v3, 0x5c343468

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x29

    const v3, -0xb5a5aaf

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x2a

    const v3, 0x34e5e5d1

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x2b

    const v3, 0x8f1f1f9

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x2c

    const v3, -0x6c8e8e1e

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x2d

    .line 247
    const v3, 0x73d8d8ab

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x2e

    const v3, 0x53313162

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x2f

    const v3, 0x3f15152a

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x30

    const v3, 0xc040408

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x31

    const v3, 0x52c7c795

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x32

    .line 248
    const v3, 0x65232346

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x33

    const v3, 0x5ec3c39d

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x34

    const v3, 0x28181830

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x35

    const v3, -0x5e6969c9

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x36

    const v3, 0xf05050a

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x37

    .line 249
    const v3, -0x4a6565d1

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x38

    const v3, 0x907070e

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x39

    const v3, 0x36121224

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x3a

    const v3, -0x647f7fe5

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x3b

    const v3, 0x3de2e2df

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x3c

    .line 250
    const v3, 0x26ebebcd

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x3d

    const v3, 0x6927274e

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x3e

    const v3, -0x324d4d81

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x3f

    const v3, -0x608a8a16

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x40

    const v3, 0x1b090912

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x41

    .line 251
    const v3, -0x617c7ce3

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x42

    const v3, 0x742c2c58

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x43

    const v3, 0x2e1a1a34

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x44

    const v3, 0x2d1b1b36

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x45

    const v3, -0x4d919124

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x46

    .line 252
    const v3, -0x11a5a54c

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x47

    const v3, -0x45f5fa5

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x48

    const v3, -0x9adad5c

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x49

    const v3, 0x4d3b3b76    # 1.9632726E8f

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x4a

    const v3, 0x61d6d6b7

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x4b

    .line 253
    const v3, -0x314c4c83

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x4c

    const v3, 0x7b292952

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x4d

    const v3, 0x3ee3e3dd

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x4e

    const v3, 0x712f2f5e

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x4f

    const v3, -0x687b7bed

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x50

    .line 254
    const v3, -0xaacac5a

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x51

    const v3, 0x68d1d1b9

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x53

    const v3, 0x2cededc1

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x54

    const v3, 0x60202040

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x55

    .line 255
    const v3, 0x1ffcfce3

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x56

    const v3, -0x374e4e87

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x57

    const v3, -0x12a4a44a

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x58

    const v3, -0x4195952c

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x59

    const v3, 0x46cbcb8d

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x5a

    .line 256
    const v3, -0x26414199

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x5b

    const v3, 0x4b393972    # 1.2138866E7f

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x5c

    const v3, -0x21b5b56c

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x5d

    const v3, -0x2bb3b368

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x5e

    const v3, -0x17a7a750

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x5f

    .line 257
    const v3, 0x4acfcf85    # 6809538.5f

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x60

    const v3, 0x6bd0d0bb

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x61

    const v3, 0x2aefefc5

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x62

    const v3, -0x1a5555b1

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x63

    const v3, 0x16fbfbed

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x64

    .line 258
    const v3, -0x3abcbc7a

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x65

    const v3, -0x28b2b266

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x66

    const v3, 0x55333366

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x67

    const v3, -0x6b7a7aef

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x68

    const v3, -0x30baba76

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x69

    .line 259
    const v3, 0x10f9f9e9

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x6a

    const v3, 0x6020204

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x6b

    const v3, -0x7e808002

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x6c

    const v3, -0xfafaf60

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x6d

    const v3, 0x443c3c78

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x6e

    .line 260
    const v3, -0x456060db

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x6f

    const v3, -0x1c5757b5

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x70

    const v3, -0xcaeae5e

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x71

    const v3, -0x15c5ca3

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x72

    const v3, -0x3fbfbf80

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x73

    .line 261
    const v3, -0x757070fb

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x74

    const v3, -0x526d6dc1

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x75

    const v3, -0x436262df

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x76

    const v3, 0x48383870    # 188641.75f

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x77

    const v3, 0x4f5f5f1

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x78

    .line 262
    const v3, -0x2043439d

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x79

    const v3, -0x3e494989

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x7a

    const v3, 0x75dadaaf

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x7b

    const v3, 0x63212142

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x7c

    const v3, 0x30101020

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x7d

    .line 263
    const v3, 0x1affffe5

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x7e

    const v3, 0xef3f3fd

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x7f

    const v3, 0x6dd2d2bf

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x80

    const v3, 0x4ccdcd81    # 1.0789991E8f

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x81

    const v3, 0x140c0c18

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x82

    .line 264
    const v3, 0x35131326

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x83

    const v3, 0x2fececc3

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x84

    const v3, -0x1ea0a042

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x85

    const v3, -0x5d6868cb

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x86

    const v3, -0x33bbbb78    # -5.14504E7f

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x87

    .line 265
    const v3, 0x3917172e

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x88

    const v3, 0x57c4c493

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x89

    const v3, -0xd5858ab

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x8a

    const v3, -0x7d818104

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x8b

    const v3, 0x473d3d7a

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x8c

    .line 266
    const v3, -0x539b9b38

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x8d

    const v3, -0x18a2a246

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x8e

    const v3, 0x2b191932

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x8f

    const v3, -0x6a8c8c1a

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x90

    const v3, -0x5f9f9f40

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x91

    .line 267
    const v3, -0x677e7ee7

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x92

    const v3, -0x2eb0b062

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x93

    const v3, 0x7fdcdca3

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x94

    const v3, 0x66222244

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x95

    const v3, 0x7e2a2a54

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x96

    .line 268
    const v3, -0x546f6fc5

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x97

    const v3, -0x7c7777f5

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x98

    const v3, -0x35b9b974    # -3248547.0f

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x99

    const v3, 0x29eeeec7

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x9a

    const v3, -0x2c474795

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x9b

    .line 269
    const v3, 0x3c141428

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x9c

    const v3, 0x79dedea7

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x9d

    const v3, -0x1da1a144

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x9e

    const v3, 0x1d0b0b16

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x9f

    const v3, 0x76dbdbad

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xa0

    .line 270
    const v3, 0x3be0e0db

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xa1

    const v3, 0x56323264

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xa2

    const v3, 0x4e3a3a74

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xa3

    const v3, 0x1e0a0a14

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xa4

    const v3, -0x24b6b66e

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xa5

    .line 271
    const v3, 0xa06060c

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xa6

    const v3, 0x6c242448

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xa7

    const v3, -0x1ba3a348

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xa8

    const v3, 0x5dc2c29f

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xa9

    const v3, 0x6ed3d3bd

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xaa

    .line 272
    const v3, -0x105353bd

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xab

    const v3, -0x599d9d3c

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xac

    const v3, -0x576e6ec7

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xad

    const v3, -0x5b6a6acf

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xae

    const v3, 0x37e4e4d3

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xaf

    .line 273
    const v3, -0x7486860e

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xb0

    const v3, 0x32e7e7d5

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xb1

    const v3, 0x43c8c88b

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xb2

    const v3, 0x5937376e

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xb3

    const v3, -0x48929226

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xb4

    .line 274
    const v3, -0x737272ff

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xb5

    const v3, 0x64d5d5b1

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xb6

    const v3, -0x2db1b164

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xb7

    const v3, -0x1f5656b7

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xb8

    const v3, -0x4b939328

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xb9

    .line 275
    const v3, -0x5a9a954

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xba

    const v3, 0x7f4f4f3

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xbb

    const v3, 0x25eaeacf

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xbc

    const v3, -0x509a9a36

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xbd

    const v3, -0x7185850c

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xbe

    .line 276
    const v3, -0x165151b9

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xbf

    const v3, 0x18080810

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xc0

    const v3, -0x2a454591

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xc1

    const v3, -0x77878710

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xc2

    const v3, 0x6f25254a

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xc3

    .line 277
    const v3, 0x722e2e5c

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xc4

    const v3, 0x241c1c38

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xc5

    const v3, -0xe5959a9

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xc6

    const v3, -0x384b4b8d

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xc7

    const v3, 0x51c6c697

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xc8

    .line 278
    const v3, 0x23e8e8cb

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xc9

    const v3, 0x7cdddda1

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xca

    const v3, -0x638b8b18

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xcb

    const v3, 0x211f1f3e

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xcc

    const v3, -0x22b4b46a

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xcd

    .line 279
    const v3, -0x2342429f

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xce

    const v3, -0x797474f3

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xcf

    const v3, -0x7a7575f1

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xd0

    const v3, -0x6f8f8f20

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xd1

    const v3, 0x423e3e7c

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xd2

    .line 280
    const v3, -0x3b4a4a8f

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xd3

    const v3, -0x55999934

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xd4

    const v3, -0x27b7b770

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xd5

    const v3, 0x5030306

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xd6

    const v3, 0x1f6f6f7

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xd7

    .line 281
    const v3, 0x120e0e1c

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xd8

    const v3, -0x5c9e9e3e

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xd9

    const v3, 0x5f35356a

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xda

    const v3, -0x6a8a852

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xdb

    const v3, -0x2f464697

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xdc

    .line 282
    const v3, -0x6e7979e9

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xdd

    const v3, 0x58c1c199

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xde

    const v3, 0x271d1d3a

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xdf

    const v3, -0x466161d9

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xe0

    const v3, 0x38e1e1d9

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xe1

    .line 283
    const v3, 0x13f8f8eb

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xe2

    const v3, -0x4c6767d5

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xe3

    const v3, 0x33111122

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xe4

    const v3, -0x4496962e

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xe5

    const v3, 0x70d9d9a9

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xe6

    .line 284
    const v3, -0x767171f9

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xe7

    const v3, -0x586b6bcd

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xe8

    const v3, -0x496464d3

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xe9

    const v3, 0x221e1e3c

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xea

    const v3, -0x6d7878eb

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xeb

    .line 285
    const v3, 0x20e9e9c9

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xec

    const v3, 0x49cece87

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xed

    const v3, -0xaaaa56

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xee

    const v3, 0x78282850

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xef

    const v3, 0x7adfdfa5

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xf0

    .line 286
    const v3, -0x707373fd

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xf1

    const v3, -0x75e5ea7

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xf2

    const v3, -0x7f7676f7

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xf3

    const v3, 0x170d0d1a

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xf4

    const v3, -0x2540409b

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xf5

    .line 287
    const v3, 0x31e6e6d7

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xf6

    const v3, -0x39bdbd7c

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xf7

    const v3, -0x47979730

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xf8

    const v3, -0x3cbebe7e

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xf9

    const v3, -0x4f6666d7

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xfa

    .line 288
    const v3, 0x772d2d5a

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xfb

    const v3, 0x110f0f1e

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xfc

    const v3, -0x344f4f85    # -2.315903E7f

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xfd

    const v3, -0x3abab58

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xfe

    const v3, -0x29444493

    aput v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xff

    .line 289
    const v3, 0x3a16162c

    aput v3, v1, v2

    .line 236
    sput-object v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->T0:[I

    .line 27
    return-void

    .line 232
    :array_0
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0x1b
        0x36
        0x6c
        0xd8
        0xab
        0x4d
        0x9a
        0x2f
        0x5e
        0xbc
        0x63
        0xc6
        0x97
        0x35
        0x6a
        0xd4
        0xb3
        0x7d
        0xfa
        0xef
        0xc5
        0x91
    .end array-data
.end method

.method public constructor <init>([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/crypto/engine/AESEngine;
    move-object v1, p1

    .local v1, "key":[B
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 30
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lnet/lingala/zip4j/crypto/engine/AESEngine;->workingKey:[[I

    .line 34
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->init([B)V

    .line 35
    return-void
.end method

.method private final encryptBlock([[I)V
    .locals 14

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/crypto/engine/AESEngine;
    move-object v1, p1

    .local v1, "KW":[[I
    move-object v7, v0

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    iget v8, v8, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C0:I

    move-object v9, v1

    const/4 v10, 0x0

    aget-object v9, v9, v10

    const/4 v10, 0x0

    aget v9, v9, v10

    xor-int/2addr v8, v9

    iput v8, v7, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C0:I

    .line 159
    move-object v7, v0

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    iget v8, v8, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C1:I

    move-object v9, v1

    const/4 v10, 0x0

    aget-object v9, v9, v10

    const/4 v10, 0x1

    aget v9, v9, v10

    xor-int/2addr v8, v9

    iput v8, v7, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C1:I

    .line 160
    move-object v7, v0

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    iget v8, v8, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C2:I

    move-object v9, v1

    const/4 v10, 0x0

    aget-object v9, v9, v10

    const/4 v10, 0x2

    aget v9, v9, v10

    xor-int/2addr v8, v9

    iput v8, v7, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C2:I

    .line 161
    move-object v7, v0

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    iget v8, v8, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C3:I

    move-object v9, v1

    const/4 v10, 0x0

    aget-object v9, v9, v10

    const/4 v10, 0x3

    aget v9, v9, v10

    xor-int/2addr v8, v9

    iput v8, v7, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C3:I

    .line 163
    const/4 v7, 0x1

    move v2, v7

    .line 165
    .local v2, "r":I
    :goto_0
    move v7, v2

    move-object v8, v0

    iget v8, v8, Lnet/lingala/zip4j/crypto/engine/AESEngine;->rounds:I

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    if-lt v7, v8, :cond_0

    .line 177
    sget-object v7, Lnet/lingala/zip4j/crypto/engine/AESEngine;->T0:[I

    move-object v8, v0

    iget v8, v8, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C0:I

    const/16 v9, 0xff

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    move-object v8, v0

    sget-object v9, Lnet/lingala/zip4j/crypto/engine/AESEngine;->T0:[I

    move-object v10, v0

    iget v10, v10, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C1:I

    const/16 v11, 0x8

    shr-int/lit8 v10, v10, 0x8

    const/16 v11, 0xff

    and-int/lit16 v10, v10, 0xff

    aget v9, v9, v10

    const/16 v10, 0x18

    invoke-direct {v8, v9, v10}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v8

    xor-int/2addr v7, v8

    move-object v8, v0

    sget-object v9, Lnet/lingala/zip4j/crypto/engine/AESEngine;->T0:[I

    move-object v10, v0

    iget v10, v10, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C2:I

    const/16 v11, 0x10

    shr-int/lit8 v10, v10, 0x10

    const/16 v11, 0xff

    and-int/lit16 v10, v10, 0xff

    aget v9, v9, v10

    const/16 v10, 0x10

    invoke-direct {v8, v9, v10}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v8

    xor-int/2addr v7, v8

    move-object v8, v0

    sget-object v9, Lnet/lingala/zip4j/crypto/engine/AESEngine;->T0:[I

    move-object v10, v0

    iget v10, v10, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C3:I

    const/16 v11, 0x18

    shr-int/lit8 v10, v10, 0x18

    const/16 v11, 0xff

    and-int/lit16 v10, v10, 0xff

    aget v9, v9, v10

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v8

    xor-int/2addr v7, v8

    move-object v8, v1

    move v9, v2

    aget-object v8, v8, v9

    const/4 v9, 0x0

    aget v8, v8, v9

    xor-int/2addr v7, v8

    move v3, v7

    .line 178
    .local v3, "r0":I
    sget-object v7, Lnet/lingala/zip4j/crypto/engine/AESEngine;->T0:[I

    move-object v8, v0

    iget v8, v8, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C1:I

    const/16 v9, 0xff

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    move-object v8, v0

    sget-object v9, Lnet/lingala/zip4j/crypto/engine/AESEngine;->T0:[I

    move-object v10, v0

    iget v10, v10, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C2:I

    const/16 v11, 0x8

    shr-int/lit8 v10, v10, 0x8

    const/16 v11, 0xff

    and-int/lit16 v10, v10, 0xff

    aget v9, v9, v10

    const/16 v10, 0x18

    invoke-direct {v8, v9, v10}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v8

    xor-int/2addr v7, v8

    move-object v8, v0

    sget-object v9, Lnet/lingala/zip4j/crypto/engine/AESEngine;->T0:[I

    move-object v10, v0

    iget v10, v10, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C3:I

    const/16 v11, 0x10

    shr-int/lit8 v10, v10, 0x10

    const/16 v11, 0xff

    and-int/lit16 v10, v10, 0xff

    aget v9, v9, v10

    const/16 v10, 0x10

    invoke-direct {v8, v9, v10}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v8

    xor-int/2addr v7, v8

    move-object v8, v0

    sget-object v9, Lnet/lingala/zip4j/crypto/engine/AESEngine;->T0:[I

    move-object v10, v0

    iget v10, v10, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C0:I

    const/16 v11, 0x18

    shr-int/lit8 v10, v10, 0x18

    const/16 v11, 0xff

    and-int/lit16 v10, v10, 0xff

    aget v9, v9, v10

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v8

    xor-int/2addr v7, v8

    move-object v8, v1

    move v9, v2

    aget-object v8, v8, v9

    const/4 v9, 0x1

    aget v8, v8, v9

    xor-int/2addr v7, v8

    move v4, v7

    .line 179
    .local v4, "r1":I
    sget-object v7, Lnet/lingala/zip4j/crypto/engine/AESEngine;->T0:[I

    move-object v8, v0

    iget v8, v8, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C2:I

    const/16 v9, 0xff

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    move-object v8, v0

    sget-object v9, Lnet/lingala/zip4j/crypto/engine/AESEngine;->T0:[I

    move-object v10, v0

    iget v10, v10, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C3:I

    const/16 v11, 0x8

    shr-int/lit8 v10, v10, 0x8

    const/16 v11, 0xff

    and-int/lit16 v10, v10, 0xff

    aget v9, v9, v10

    const/16 v10, 0x18

    invoke-direct {v8, v9, v10}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v8

    xor-int/2addr v7, v8

    move-object v8, v0

    sget-object v9, Lnet/lingala/zip4j/crypto/engine/AESEngine;->T0:[I

    move-object v10, v0

    iget v10, v10, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C0:I

    const/16 v11, 0x10

    shr-int/lit8 v10, v10, 0x10

    const/16 v11, 0xff

    and-int/lit16 v10, v10, 0xff

    aget v9, v9, v10

    const/16 v10, 0x10

    invoke-direct {v8, v9, v10}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v8

    xor-int/2addr v7, v8

    move-object v8, v0

    sget-object v9, Lnet/lingala/zip4j/crypto/engine/AESEngine;->T0:[I

    move-object v10, v0

    iget v10, v10, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C1:I

    const/16 v11, 0x18

    shr-int/lit8 v10, v10, 0x18

    const/16 v11, 0xff

    and-int/lit16 v10, v10, 0xff

    aget v9, v9, v10

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v8

    xor-int/2addr v7, v8

    move-object v8, v1

    move v9, v2

    aget-object v8, v8, v9

    const/4 v9, 0x2

    aget v8, v8, v9

    xor-int/2addr v7, v8

    move v5, v7

    .line 180
    .local v5, "r2":I
    sget-object v7, Lnet/lingala/zip4j/crypto/engine/AESEngine;->T0:[I

    move-object v8, v0

    iget v8, v8, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C3:I

    const/16 v9, 0xff

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    move-object v8, v0

    sget-object v9, Lnet/lingala/zip4j/crypto/engine/AESEngine;->T0:[I

    move-object v10, v0

    iget v10, v10, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C0:I

    const/16 v11, 0x8

    shr-int/lit8 v10, v10, 0x8

    const/16 v11, 0xff

    and-int/lit16 v10, v10, 0xff

    aget v9, v9, v10

    const/16 v10, 0x18

    invoke-direct {v8, v9, v10}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v8

    xor-int/2addr v7, v8

    move-object v8, v0

    sget-object v9, Lnet/lingala/zip4j/crypto/engine/AESEngine;->T0:[I

    move-object v10, v0

    iget v10, v10, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C1:I

    const/16 v11, 0x10

    shr-int/lit8 v10, v10, 0x10

    const/16 v11, 0xff

    and-int/lit16 v10, v10, 0xff

    aget v9, v9, v10

    const/16 v10, 0x10

    invoke-direct {v8, v9, v10}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v8

    xor-int/2addr v7, v8

    move-object v8, v0

    sget-object v9, Lnet/lingala/zip4j/crypto/engine/AESEngine;->T0:[I

    move-object v10, v0

    iget v10, v10, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C2:I

    const/16 v11, 0x18

    shr-int/lit8 v10, v10, 0x18

    const/16 v11, 0xff

    and-int/lit16 v10, v10, 0xff

    aget v9, v9, v10

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v8

    xor-int/2addr v7, v8

    move-object v8, v1

    move v9, v2

    add-int/lit8 v2, v2, 0x1

    aget-object v8, v8, v9

    const/4 v9, 0x3

    aget v8, v8, v9

    xor-int/2addr v7, v8

    move v6, v7

    .line 182
    .local v6, "r3":I
    move-object v7, v0

    sget-object v8, Lnet/lingala/zip4j/crypto/engine/AESEngine;->S:[B

    move v9, v3

    const/16 v10, 0xff

    and-int/lit16 v9, v9, 0xff

    aget-byte v8, v8, v9

    const/16 v9, 0xff

    and-int/lit16 v8, v8, 0xff

    sget-object v9, Lnet/lingala/zip4j/crypto/engine/AESEngine;->S:[B

    move v10, v4

    const/16 v11, 0x8

    shr-int/lit8 v10, v10, 0x8

    const/16 v11, 0xff

    and-int/lit16 v10, v10, 0xff

    aget-byte v9, v9, v10

    const/16 v10, 0xff

    and-int/lit16 v9, v9, 0xff

    const/16 v10, 0x8

    shl-int/lit8 v9, v9, 0x8

    xor-int/2addr v8, v9

    sget-object v9, Lnet/lingala/zip4j/crypto/engine/AESEngine;->S:[B

    move v10, v5

    const/16 v11, 0x10

    shr-int/lit8 v10, v10, 0x10

    const/16 v11, 0xff

    and-int/lit16 v10, v10, 0xff

    aget-byte v9, v9, v10

    const/16 v10, 0xff

    and-int/lit16 v9, v9, 0xff

    const/16 v10, 0x10

    shl-int/lit8 v9, v9, 0x10

    xor-int/2addr v8, v9

    sget-object v9, Lnet/lingala/zip4j/crypto/engine/AESEngine;->S:[B

    move v10, v6

    const/16 v11, 0x18

    shr-int/lit8 v10, v10, 0x18

    const/16 v11, 0xff

    and-int/lit16 v10, v10, 0xff

    aget-byte v9, v9, v10

    const/16 v10, 0x18

    shl-int/lit8 v9, v9, 0x18

    xor-int/2addr v8, v9

    move-object v9, v1

    move v10, v2

    aget-object v9, v9, v10

    const/4 v10, 0x0

    aget v9, v9, v10

    xor-int/2addr v8, v9

    iput v8, v7, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C0:I

    .line 183
    move-object v7, v0

    sget-object v8, Lnet/lingala/zip4j/crypto/engine/AESEngine;->S:[B

    move v9, v4

    const/16 v10, 0xff

    and-int/lit16 v9, v9, 0xff

    aget-byte v8, v8, v9

    const/16 v9, 0xff

    and-int/lit16 v8, v8, 0xff

    sget-object v9, Lnet/lingala/zip4j/crypto/engine/AESEngine;->S:[B

    move v10, v5

    const/16 v11, 0x8

    shr-int/lit8 v10, v10, 0x8

    const/16 v11, 0xff

    and-int/lit16 v10, v10, 0xff

    aget-byte v9, v9, v10

    const/16 v10, 0xff

    and-int/lit16 v9, v9, 0xff

    const/16 v10, 0x8

    shl-int/lit8 v9, v9, 0x8

    xor-int/2addr v8, v9

    sget-object v9, Lnet/lingala/zip4j/crypto/engine/AESEngine;->S:[B

    move v10, v6

    const/16 v11, 0x10

    shr-int/lit8 v10, v10, 0x10

    const/16 v11, 0xff

    and-int/lit16 v10, v10, 0xff

    aget-byte v9, v9, v10

    const/16 v10, 0xff

    and-int/lit16 v9, v9, 0xff

    const/16 v10, 0x10

    shl-int/lit8 v9, v9, 0x10

    xor-int/2addr v8, v9

    sget-object v9, Lnet/lingala/zip4j/crypto/engine/AESEngine;->S:[B

    move v10, v3

    const/16 v11, 0x18

    shr-int/lit8 v10, v10, 0x18

    const/16 v11, 0xff

    and-int/lit16 v10, v10, 0xff

    aget-byte v9, v9, v10

    const/16 v10, 0x18

    shl-int/lit8 v9, v9, 0x18

    xor-int/2addr v8, v9

    move-object v9, v1

    move v10, v2

    aget-object v9, v9, v10

    const/4 v10, 0x1

    aget v9, v9, v10

    xor-int/2addr v8, v9

    iput v8, v7, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C1:I

    .line 184
    move-object v7, v0

    sget-object v8, Lnet/lingala/zip4j/crypto/engine/AESEngine;->S:[B

    move v9, v5

    const/16 v10, 0xff

    and-int/lit16 v9, v9, 0xff

    aget-byte v8, v8, v9

    const/16 v9, 0xff

    and-int/lit16 v8, v8, 0xff

    sget-object v9, Lnet/lingala/zip4j/crypto/engine/AESEngine;->S:[B

    move v10, v6

    const/16 v11, 0x8

    shr-int/lit8 v10, v10, 0x8

    const/16 v11, 0xff

    and-int/lit16 v10, v10, 0xff

    aget-byte v9, v9, v10

    const/16 v10, 0xff

    and-int/lit16 v9, v9, 0xff

    const/16 v10, 0x8

    shl-int/lit8 v9, v9, 0x8

    xor-int/2addr v8, v9

    sget-object v9, Lnet/lingala/zip4j/crypto/engine/AESEngine;->S:[B

    move v10, v3

    const/16 v11, 0x10

    shr-int/lit8 v10, v10, 0x10

    const/16 v11, 0xff

    and-int/lit16 v10, v10, 0xff

    aget-byte v9, v9, v10

    const/16 v10, 0xff

    and-int/lit16 v9, v9, 0xff

    const/16 v10, 0x10

    shl-int/lit8 v9, v9, 0x10

    xor-int/2addr v8, v9

    sget-object v9, Lnet/lingala/zip4j/crypto/engine/AESEngine;->S:[B

    move v10, v4

    const/16 v11, 0x18

    shr-int/lit8 v10, v10, 0x18

    const/16 v11, 0xff

    and-int/lit16 v10, v10, 0xff

    aget-byte v9, v9, v10

    const/16 v10, 0x18

    shl-int/lit8 v9, v9, 0x18

    xor-int/2addr v8, v9

    move-object v9, v1

    move v10, v2

    aget-object v9, v9, v10

    const/4 v10, 0x2

    aget v9, v9, v10

    xor-int/2addr v8, v9

    iput v8, v7, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C2:I

    .line 185
    move-object v7, v0

    sget-object v8, Lnet/lingala/zip4j/crypto/engine/AESEngine;->S:[B

    move v9, v6

    const/16 v10, 0xff

    and-int/lit16 v9, v9, 0xff

    aget-byte v8, v8, v9

    const/16 v9, 0xff

    and-int/lit16 v8, v8, 0xff

    sget-object v9, Lnet/lingala/zip4j/crypto/engine/AESEngine;->S:[B

    move v10, v3

    const/16 v11, 0x8

    shr-int/lit8 v10, v10, 0x8

    const/16 v11, 0xff

    and-int/lit16 v10, v10, 0xff

    aget-byte v9, v9, v10

    const/16 v10, 0xff

    and-int/lit16 v9, v9, 0xff

    const/16 v10, 0x8

    shl-int/lit8 v9, v9, 0x8

    xor-int/2addr v8, v9

    sget-object v9, Lnet/lingala/zip4j/crypto/engine/AESEngine;->S:[B

    move v10, v4

    const/16 v11, 0x10

    shr-int/lit8 v10, v10, 0x10

    const/16 v11, 0xff

    and-int/lit16 v10, v10, 0xff

    aget-byte v9, v9, v10

    const/16 v10, 0xff

    and-int/lit16 v9, v9, 0xff

    const/16 v10, 0x10

    shl-int/lit8 v9, v9, 0x10

    xor-int/2addr v8, v9

    sget-object v9, Lnet/lingala/zip4j/crypto/engine/AESEngine;->S:[B

    move v10, v5

    const/16 v11, 0x18

    shr-int/lit8 v10, v10, 0x18

    const/16 v11, 0xff

    and-int/lit16 v10, v10, 0xff

    aget-byte v9, v9, v10

    const/16 v10, 0x18

    shl-int/lit8 v9, v9, 0x18

    xor-int/2addr v8, v9

    move-object v9, v1

    move v10, v2

    aget-object v9, v9, v10

    const/4 v10, 0x3

    aget v9, v9, v10

    xor-int/2addr v8, v9

    iput v8, v7, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C3:I

    .line 187
    return-void

    .line 167
    .end local v3    # "r0":I
    .end local v4    # "r1":I
    .end local v5    # "r2":I
    .end local v6    # "r3":I
    :cond_0
    sget-object v7, Lnet/lingala/zip4j/crypto/engine/AESEngine;->T0:[I

    move-object v8, v0

    iget v8, v8, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C0:I

    const/16 v9, 0xff

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    move-object v8, v0

    sget-object v9, Lnet/lingala/zip4j/crypto/engine/AESEngine;->T0:[I

    move-object v10, v0

    iget v10, v10, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C1:I

    const/16 v11, 0x8

    shr-int/lit8 v10, v10, 0x8

    const/16 v11, 0xff

    and-int/lit16 v10, v10, 0xff

    aget v9, v9, v10

    const/16 v10, 0x18

    invoke-direct {v8, v9, v10}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v8

    xor-int/2addr v7, v8

    move-object v8, v0

    sget-object v9, Lnet/lingala/zip4j/crypto/engine/AESEngine;->T0:[I

    move-object v10, v0

    iget v10, v10, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C2:I

    const/16 v11, 0x10

    shr-int/lit8 v10, v10, 0x10

    const/16 v11, 0xff

    and-int/lit16 v10, v10, 0xff

    aget v9, v9, v10

    const/16 v10, 0x10

    invoke-direct {v8, v9, v10}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v8

    xor-int/2addr v7, v8

    move-object v8, v0

    sget-object v9, Lnet/lingala/zip4j/crypto/engine/AESEngine;->T0:[I

    move-object v10, v0

    iget v10, v10, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C3:I

    const/16 v11, 0x18

    shr-int/lit8 v10, v10, 0x18

    const/16 v11, 0xff

    and-int/lit16 v10, v10, 0xff

    aget v9, v9, v10

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v8

    xor-int/2addr v7, v8

    move-object v8, v1

    move v9, v2

    aget-object v8, v8, v9

    const/4 v9, 0x0

    aget v8, v8, v9

    xor-int/2addr v7, v8

    move v3, v7

    .line 168
    .restart local v3    # "r0":I
    sget-object v7, Lnet/lingala/zip4j/crypto/engine/AESEngine;->T0:[I

    move-object v8, v0

    iget v8, v8, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C1:I

    const/16 v9, 0xff

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    move-object v8, v0

    sget-object v9, Lnet/lingala/zip4j/crypto/engine/AESEngine;->T0:[I

    move-object v10, v0

    iget v10, v10, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C2:I

    const/16 v11, 0x8

    shr-int/lit8 v10, v10, 0x8

    const/16 v11, 0xff

    and-int/lit16 v10, v10, 0xff

    aget v9, v9, v10

    const/16 v10, 0x18

    invoke-direct {v8, v9, v10}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v8

    xor-int/2addr v7, v8

    move-object v8, v0

    sget-object v9, Lnet/lingala/zip4j/crypto/engine/AESEngine;->T0:[I

    move-object v10, v0

    iget v10, v10, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C3:I

    const/16 v11, 0x10

    shr-int/lit8 v10, v10, 0x10

    const/16 v11, 0xff

    and-int/lit16 v10, v10, 0xff

    aget v9, v9, v10

    const/16 v10, 0x10

    invoke-direct {v8, v9, v10}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v8

    xor-int/2addr v7, v8

    move-object v8, v0

    sget-object v9, Lnet/lingala/zip4j/crypto/engine/AESEngine;->T0:[I

    move-object v10, v0

    iget v10, v10, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C0:I

    const/16 v11, 0x18

    shr-int/lit8 v10, v10, 0x18

    const/16 v11, 0xff

    and-int/lit16 v10, v10, 0xff

    aget v9, v9, v10

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v8

    xor-int/2addr v7, v8

    move-object v8, v1

    move v9, v2

    aget-object v8, v8, v9

    const/4 v9, 0x1

    aget v8, v8, v9

    xor-int/2addr v7, v8

    move v4, v7

    .line 169
    .restart local v4    # "r1":I
    sget-object v7, Lnet/lingala/zip4j/crypto/engine/AESEngine;->T0:[I

    move-object v8, v0

    iget v8, v8, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C2:I

    const/16 v9, 0xff

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    move-object v8, v0

    sget-object v9, Lnet/lingala/zip4j/crypto/engine/AESEngine;->T0:[I

    move-object v10, v0

    iget v10, v10, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C3:I

    const/16 v11, 0x8

    shr-int/lit8 v10, v10, 0x8

    const/16 v11, 0xff

    and-int/lit16 v10, v10, 0xff

    aget v9, v9, v10

    const/16 v10, 0x18

    invoke-direct {v8, v9, v10}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v8

    xor-int/2addr v7, v8

    move-object v8, v0

    sget-object v9, Lnet/lingala/zip4j/crypto/engine/AESEngine;->T0:[I

    move-object v10, v0

    iget v10, v10, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C0:I

    const/16 v11, 0x10

    shr-int/lit8 v10, v10, 0x10

    const/16 v11, 0xff

    and-int/lit16 v10, v10, 0xff

    aget v9, v9, v10

    const/16 v10, 0x10

    invoke-direct {v8, v9, v10}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v8

    xor-int/2addr v7, v8

    move-object v8, v0

    sget-object v9, Lnet/lingala/zip4j/crypto/engine/AESEngine;->T0:[I

    move-object v10, v0

    iget v10, v10, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C1:I

    const/16 v11, 0x18

    shr-int/lit8 v10, v10, 0x18

    const/16 v11, 0xff

    and-int/lit16 v10, v10, 0xff

    aget v9, v9, v10

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v8

    xor-int/2addr v7, v8

    move-object v8, v1

    move v9, v2

    aget-object v8, v8, v9

    const/4 v9, 0x2

    aget v8, v8, v9

    xor-int/2addr v7, v8

    move v5, v7

    .line 170
    .restart local v5    # "r2":I
    sget-object v7, Lnet/lingala/zip4j/crypto/engine/AESEngine;->T0:[I

    move-object v8, v0

    iget v8, v8, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C3:I

    const/16 v9, 0xff

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    move-object v8, v0

    sget-object v9, Lnet/lingala/zip4j/crypto/engine/AESEngine;->T0:[I

    move-object v10, v0

    iget v10, v10, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C0:I

    const/16 v11, 0x8

    shr-int/lit8 v10, v10, 0x8

    const/16 v11, 0xff

    and-int/lit16 v10, v10, 0xff

    aget v9, v9, v10

    const/16 v10, 0x18

    invoke-direct {v8, v9, v10}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v8

    xor-int/2addr v7, v8

    move-object v8, v0

    sget-object v9, Lnet/lingala/zip4j/crypto/engine/AESEngine;->T0:[I

    move-object v10, v0

    iget v10, v10, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C1:I

    const/16 v11, 0x10

    shr-int/lit8 v10, v10, 0x10

    const/16 v11, 0xff

    and-int/lit16 v10, v10, 0xff

    aget v9, v9, v10

    const/16 v10, 0x10

    invoke-direct {v8, v9, v10}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v8

    xor-int/2addr v7, v8

    move-object v8, v0

    sget-object v9, Lnet/lingala/zip4j/crypto/engine/AESEngine;->T0:[I

    move-object v10, v0

    iget v10, v10, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C2:I

    const/16 v11, 0x18

    shr-int/lit8 v10, v10, 0x18

    const/16 v11, 0xff

    and-int/lit16 v10, v10, 0xff

    aget v9, v9, v10

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v8

    xor-int/2addr v7, v8

    move-object v8, v1

    move v9, v2

    add-int/lit8 v2, v2, 0x1

    aget-object v8, v8, v9

    const/4 v9, 0x3

    aget v8, v8, v9

    xor-int/2addr v7, v8

    move v6, v7

    .line 171
    .restart local v6    # "r3":I
    move-object v7, v0

    sget-object v8, Lnet/lingala/zip4j/crypto/engine/AESEngine;->T0:[I

    move v9, v3

    const/16 v10, 0xff

    and-int/lit16 v9, v9, 0xff

    aget v8, v8, v9

    move-object v9, v0

    sget-object v10, Lnet/lingala/zip4j/crypto/engine/AESEngine;->T0:[I

    move v11, v4

    const/16 v12, 0x8

    shr-int/lit8 v11, v11, 0x8

    const/16 v12, 0xff

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    const/16 v11, 0x18

    invoke-direct {v9, v10, v11}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v9

    xor-int/2addr v8, v9

    move-object v9, v0

    sget-object v10, Lnet/lingala/zip4j/crypto/engine/AESEngine;->T0:[I

    move v11, v5

    const/16 v12, 0x10

    shr-int/lit8 v11, v11, 0x10

    const/16 v12, 0xff

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    const/16 v11, 0x10

    invoke-direct {v9, v10, v11}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v9

    xor-int/2addr v8, v9

    move-object v9, v0

    sget-object v10, Lnet/lingala/zip4j/crypto/engine/AESEngine;->T0:[I

    move v11, v6

    const/16 v12, 0x18

    shr-int/lit8 v11, v11, 0x18

    const/16 v12, 0xff

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    const/16 v11, 0x8

    invoke-direct {v9, v10, v11}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v9

    xor-int/2addr v8, v9

    move-object v9, v1

    move v10, v2

    aget-object v9, v9, v10

    const/4 v10, 0x0

    aget v9, v9, v10

    xor-int/2addr v8, v9

    iput v8, v7, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C0:I

    .line 172
    move-object v7, v0

    sget-object v8, Lnet/lingala/zip4j/crypto/engine/AESEngine;->T0:[I

    move v9, v4

    const/16 v10, 0xff

    and-int/lit16 v9, v9, 0xff

    aget v8, v8, v9

    move-object v9, v0

    sget-object v10, Lnet/lingala/zip4j/crypto/engine/AESEngine;->T0:[I

    move v11, v5

    const/16 v12, 0x8

    shr-int/lit8 v11, v11, 0x8

    const/16 v12, 0xff

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    const/16 v11, 0x18

    invoke-direct {v9, v10, v11}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v9

    xor-int/2addr v8, v9

    move-object v9, v0

    sget-object v10, Lnet/lingala/zip4j/crypto/engine/AESEngine;->T0:[I

    move v11, v6

    const/16 v12, 0x10

    shr-int/lit8 v11, v11, 0x10

    const/16 v12, 0xff

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    const/16 v11, 0x10

    invoke-direct {v9, v10, v11}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v9

    xor-int/2addr v8, v9

    move-object v9, v0

    sget-object v10, Lnet/lingala/zip4j/crypto/engine/AESEngine;->T0:[I

    move v11, v3

    const/16 v12, 0x18

    shr-int/lit8 v11, v11, 0x18

    const/16 v12, 0xff

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    const/16 v11, 0x8

    invoke-direct {v9, v10, v11}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v9

    xor-int/2addr v8, v9

    move-object v9, v1

    move v10, v2

    aget-object v9, v9, v10

    const/4 v10, 0x1

    aget v9, v9, v10

    xor-int/2addr v8, v9

    iput v8, v7, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C1:I

    .line 173
    move-object v7, v0

    sget-object v8, Lnet/lingala/zip4j/crypto/engine/AESEngine;->T0:[I

    move v9, v5

    const/16 v10, 0xff

    and-int/lit16 v9, v9, 0xff

    aget v8, v8, v9

    move-object v9, v0

    sget-object v10, Lnet/lingala/zip4j/crypto/engine/AESEngine;->T0:[I

    move v11, v6

    const/16 v12, 0x8

    shr-int/lit8 v11, v11, 0x8

    const/16 v12, 0xff

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    const/16 v11, 0x18

    invoke-direct {v9, v10, v11}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v9

    xor-int/2addr v8, v9

    move-object v9, v0

    sget-object v10, Lnet/lingala/zip4j/crypto/engine/AESEngine;->T0:[I

    move v11, v3

    const/16 v12, 0x10

    shr-int/lit8 v11, v11, 0x10

    const/16 v12, 0xff

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    const/16 v11, 0x10

    invoke-direct {v9, v10, v11}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v9

    xor-int/2addr v8, v9

    move-object v9, v0

    sget-object v10, Lnet/lingala/zip4j/crypto/engine/AESEngine;->T0:[I

    move v11, v4

    const/16 v12, 0x18

    shr-int/lit8 v11, v11, 0x18

    const/16 v12, 0xff

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    const/16 v11, 0x8

    invoke-direct {v9, v10, v11}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v9

    xor-int/2addr v8, v9

    move-object v9, v1

    move v10, v2

    aget-object v9, v9, v10

    const/4 v10, 0x2

    aget v9, v9, v10

    xor-int/2addr v8, v9

    iput v8, v7, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C2:I

    .line 174
    move-object v7, v0

    sget-object v8, Lnet/lingala/zip4j/crypto/engine/AESEngine;->T0:[I

    move v9, v6

    const/16 v10, 0xff

    and-int/lit16 v9, v9, 0xff

    aget v8, v8, v9

    move-object v9, v0

    sget-object v10, Lnet/lingala/zip4j/crypto/engine/AESEngine;->T0:[I

    move v11, v3

    const/16 v12, 0x8

    shr-int/lit8 v11, v11, 0x8

    const/16 v12, 0xff

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    const/16 v11, 0x18

    invoke-direct {v9, v10, v11}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v9

    xor-int/2addr v8, v9

    move-object v9, v0

    sget-object v10, Lnet/lingala/zip4j/crypto/engine/AESEngine;->T0:[I

    move v11, v4

    const/16 v12, 0x10

    shr-int/lit8 v11, v11, 0x10

    const/16 v12, 0xff

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    const/16 v11, 0x10

    invoke-direct {v9, v10, v11}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v9

    xor-int/2addr v8, v9

    move-object v9, v0

    sget-object v10, Lnet/lingala/zip4j/crypto/engine/AESEngine;->T0:[I

    move v11, v5

    const/16 v12, 0x18

    shr-int/lit8 v11, v11, 0x18

    const/16 v12, 0xff

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    const/16 v11, 0x8

    invoke-direct {v9, v10, v11}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v9

    xor-int/2addr v8, v9

    move-object v9, v1

    move v10, v2

    add-int/lit8 v2, v2, 0x1

    aget-object v9, v9, v10

    const/4 v10, 0x3

    aget v9, v9, v10

    xor-int/2addr v8, v9

    iput v8, v7, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C3:I

    goto/16 :goto_0
.end method

.method private generateWorkingKey([B)[[I
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/crypto/engine/AESEngine;
    move-object/from16 v1, p1

    .local v1, "key":[B
    move-object v8, v1

    array-length v8, v8

    const/4 v9, 0x4

    div-int/lit8 v8, v8, 0x4

    move v2, v8

    .line 45
    .local v2, "kc":I
    move v8, v2

    const/4 v9, 0x4

    if-eq v8, v9, :cond_0

    move v8, v2

    const/4 v9, 0x6

    if-eq v8, v9, :cond_0

    move v8, v2

    const/16 v9, 0x8

    if-ne v8, v9, :cond_1

    :cond_0
    move v8, v2

    const/4 v9, 0x4

    mul-int/lit8 v8, v8, 0x4

    move-object v9, v1

    array-length v9, v9

    if-eq v8, v9, :cond_2

    .line 47
    :cond_1
    new-instance v8, Lnet/lingala/zip4j/exception/ZipException;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    const-string/jumbo v10, "invalid key length (not 128/192/256)"

    invoke-direct {v9, v10}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 50
    :cond_2
    move-object v8, v0

    move v9, v2

    const/4 v10, 0x6

    add-int/lit8 v9, v9, 0x6

    iput v9, v8, Lnet/lingala/zip4j/crypto/engine/AESEngine;->rounds:I

    .line 51
    move-object v8, v0

    iget v8, v8, Lnet/lingala/zip4j/crypto/engine/AESEngine;->rounds:I

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    const/4 v9, 0x4

    filled-new-array {v8, v9}, [I

    move-result-object v9

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[I

    move-object v4, v8

    .line 53
    .local v4, "W":[[I
    const/4 v8, 0x0

    move v3, v8

    .line 54
    .local v3, "t":I
    const/4 v8, 0x0

    move v5, v8

    .line 55
    .local v5, "i":I
    :goto_0
    move v8, v5

    move-object v9, v1

    array-length v9, v9

    if-lt v8, v9, :cond_3

    .line 62
    move-object v8, v0

    iget v8, v8, Lnet/lingala/zip4j/crypto/engine/AESEngine;->rounds:I

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    const/4 v9, 0x2

    shl-int/lit8 v8, v8, 0x2

    move v6, v8

    .line 63
    .local v6, "k":I
    move v8, v2

    move v5, v8

    :goto_1
    move v8, v5

    move v9, v6

    if-lt v8, v9, :cond_4

    .line 77
    move-object v8, v4

    move-object v0, v8

    .end local v0    # "this":Lnet/lingala/zip4j/crypto/engine/AESEngine;
    return-object v0

    .line 57
    .end local v6    # "k":I
    .restart local v0    # "this":Lnet/lingala/zip4j/crypto/engine/AESEngine;
    :cond_3
    move-object v8, v4

    move v9, v3

    const/4 v10, 0x2

    shr-int/lit8 v9, v9, 0x2

    aget-object v8, v8, v9

    move v9, v3

    const/4 v10, 0x3

    and-int/lit8 v9, v9, 0x3

    move-object v10, v1

    move v11, v5

    aget-byte v10, v10, v11

    const/16 v11, 0xff

    and-int/lit16 v10, v10, 0xff

    move-object v11, v1

    move v12, v5

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    aget-byte v11, v11, v12

    const/16 v12, 0xff

    and-int/lit16 v11, v11, 0xff

    const/16 v12, 0x8

    shl-int/lit8 v11, v11, 0x8

    or-int/2addr v10, v11

    move-object v11, v1

    move v12, v5

    const/4 v13, 0x2

    add-int/lit8 v12, v12, 0x2

    aget-byte v11, v11, v12

    const/16 v12, 0xff

    and-int/lit16 v11, v11, 0xff

    const/16 v12, 0x10

    shl-int/lit8 v11, v11, 0x10

    or-int/2addr v10, v11

    move-object v11, v1

    move v12, v5

    const/4 v13, 0x3

    add-int/lit8 v12, v12, 0x3

    aget-byte v11, v11, v12

    const/16 v12, 0x18

    shl-int/lit8 v11, v11, 0x18

    or-int/2addr v10, v11

    aput v10, v8, v9

    .line 58
    add-int/lit8 v5, v5, 0x4

    .line 59
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 65
    .restart local v6    # "k":I
    :cond_4
    move-object v8, v4

    move v9, v5

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    const/4 v10, 0x2

    shr-int/lit8 v9, v9, 0x2

    aget-object v8, v8, v9

    move v9, v5

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    const/4 v10, 0x3

    and-int/lit8 v9, v9, 0x3

    aget v8, v8, v9

    move v7, v8

    .line 66
    .local v7, "temp":I
    move v8, v5

    move v9, v2

    rem-int/2addr v8, v9

    if-nez v8, :cond_6

    .line 68
    move-object v8, v0

    move-object v9, v0

    move v10, v7

    const/16 v11, 0x8

    invoke-direct {v9, v10, v11}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v9

    invoke-direct {v8, v9}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->subWord(I)I

    move-result v8

    sget-object v9, Lnet/lingala/zip4j/crypto/engine/AESEngine;->rcon:[I

    move v10, v5

    move v11, v2

    div-int/2addr v10, v11

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    aget v9, v9, v10

    xor-int/2addr v8, v9

    move v7, v8

    .line 75
    :cond_5
    :goto_2
    move-object v8, v4

    move v9, v5

    const/4 v10, 0x2

    shr-int/lit8 v9, v9, 0x2

    aget-object v8, v8, v9

    move v9, v5

    const/4 v10, 0x3

    and-int/lit8 v9, v9, 0x3

    move-object v10, v4

    move v11, v5

    move v12, v2

    sub-int/2addr v11, v12

    const/4 v12, 0x2

    shr-int/lit8 v11, v11, 0x2

    aget-object v10, v10, v11

    move v11, v5

    move v12, v2

    sub-int/2addr v11, v12

    const/4 v12, 0x3

    and-int/lit8 v11, v11, 0x3

    aget v10, v10, v11

    move v11, v7

    xor-int/2addr v10, v11

    aput v10, v8, v9

    .line 63
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 70
    :cond_6
    move v8, v2

    const/4 v9, 0x6

    if-le v8, v9, :cond_5

    move v8, v5

    move v9, v2

    rem-int/2addr v8, v9

    const/4 v9, 0x4

    if-ne v8, v9, :cond_5

    .line 72
    move-object v8, v0

    move v9, v7

    invoke-direct {v8, v9}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->subWord(I)I

    move-result v8

    move v7, v8

    goto :goto_2
.end method

.method private shift(II)I
    .locals 6

    .prologue
    .line 190
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/crypto/engine/AESEngine;
    move v1, p1

    .local v1, "r":I
    move v2, p2

    .local v2, "shift":I
    move v3, v1

    move v4, v2

    ushr-int/2addr v3, v4

    move v4, v1

    move v5, v2

    neg-int v5, v5

    shl-int/2addr v4, v5

    or-int/2addr v3, v4

    move v0, v3

    .end local v0    # "this":Lnet/lingala/zip4j/crypto/engine/AESEngine;
    return v0
.end method

.method private final stateIn([BI)V
    .locals 9

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/crypto/engine/AESEngine;
    move-object v1, p1

    .local v1, "bytes":[B
    move v2, p2

    .local v2, "off":I
    move v4, v2

    move v3, v4

    .line 110
    .local v3, "index":I
    move-object v4, v0

    move-object v5, v1

    move v6, v3

    add-int/lit8 v3, v3, 0x1

    aget-byte v5, v5, v6

    const/16 v6, 0xff

    and-int/lit16 v5, v5, 0xff

    iput v5, v4, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C0:I

    .line 111
    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C0:I

    move-object v6, v1

    move v7, v3

    add-int/lit8 v3, v3, 0x1

    aget-byte v6, v6, v7

    const/16 v7, 0xff

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0x8

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    iput v5, v4, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C0:I

    .line 112
    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C0:I

    move-object v6, v1

    move v7, v3

    add-int/lit8 v3, v3, 0x1

    aget-byte v6, v6, v7

    const/16 v7, 0xff

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0x10

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    iput v5, v4, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C0:I

    .line 113
    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C0:I

    move-object v6, v1

    move v7, v3

    add-int/lit8 v3, v3, 0x1

    aget-byte v6, v6, v7

    const/16 v7, 0x18

    shl-int/lit8 v6, v6, 0x18

    or-int/2addr v5, v6

    iput v5, v4, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C0:I

    .line 115
    move-object v4, v0

    move-object v5, v1

    move v6, v3

    add-int/lit8 v3, v3, 0x1

    aget-byte v5, v5, v6

    const/16 v6, 0xff

    and-int/lit16 v5, v5, 0xff

    iput v5, v4, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C1:I

    .line 116
    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C1:I

    move-object v6, v1

    move v7, v3

    add-int/lit8 v3, v3, 0x1

    aget-byte v6, v6, v7

    const/16 v7, 0xff

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0x8

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    iput v5, v4, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C1:I

    .line 117
    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C1:I

    move-object v6, v1

    move v7, v3

    add-int/lit8 v3, v3, 0x1

    aget-byte v6, v6, v7

    const/16 v7, 0xff

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0x10

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    iput v5, v4, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C1:I

    .line 118
    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C1:I

    move-object v6, v1

    move v7, v3

    add-int/lit8 v3, v3, 0x1

    aget-byte v6, v6, v7

    const/16 v7, 0x18

    shl-int/lit8 v6, v6, 0x18

    or-int/2addr v5, v6

    iput v5, v4, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C1:I

    .line 120
    move-object v4, v0

    move-object v5, v1

    move v6, v3

    add-int/lit8 v3, v3, 0x1

    aget-byte v5, v5, v6

    const/16 v6, 0xff

    and-int/lit16 v5, v5, 0xff

    iput v5, v4, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C2:I

    .line 121
    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C2:I

    move-object v6, v1

    move v7, v3

    add-int/lit8 v3, v3, 0x1

    aget-byte v6, v6, v7

    const/16 v7, 0xff

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0x8

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    iput v5, v4, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C2:I

    .line 122
    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C2:I

    move-object v6, v1

    move v7, v3

    add-int/lit8 v3, v3, 0x1

    aget-byte v6, v6, v7

    const/16 v7, 0xff

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0x10

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    iput v5, v4, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C2:I

    .line 123
    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C2:I

    move-object v6, v1

    move v7, v3

    add-int/lit8 v3, v3, 0x1

    aget-byte v6, v6, v7

    const/16 v7, 0x18

    shl-int/lit8 v6, v6, 0x18

    or-int/2addr v5, v6

    iput v5, v4, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C2:I

    .line 125
    move-object v4, v0

    move-object v5, v1

    move v6, v3

    add-int/lit8 v3, v3, 0x1

    aget-byte v5, v5, v6

    const/16 v6, 0xff

    and-int/lit16 v5, v5, 0xff

    iput v5, v4, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C3:I

    .line 126
    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C3:I

    move-object v6, v1

    move v7, v3

    add-int/lit8 v3, v3, 0x1

    aget-byte v6, v6, v7

    const/16 v7, 0xff

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0x8

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    iput v5, v4, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C3:I

    .line 127
    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C3:I

    move-object v6, v1

    move v7, v3

    add-int/lit8 v3, v3, 0x1

    aget-byte v6, v6, v7

    const/16 v7, 0xff

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0x10

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    iput v5, v4, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C3:I

    .line 128
    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C3:I

    move-object v6, v1

    move v7, v3

    add-int/lit8 v3, v3, 0x1

    aget-byte v6, v6, v7

    const/16 v7, 0x18

    shl-int/lit8 v6, v6, 0x18

    or-int/2addr v5, v6

    iput v5, v4, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C3:I

    .line 129
    return-void
.end method

.method private final stateOut([BI)V
    .locals 8

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/crypto/engine/AESEngine;
    move-object v1, p1

    .local v1, "bytes":[B
    move v2, p2

    .local v2, "off":I
    move v4, v2

    move v3, v4

    .line 134
    .local v3, "index":I
    move-object v4, v1

    move v5, v3

    add-int/lit8 v3, v3, 0x1

    move-object v6, v0

    iget v6, v6, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C0:I

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 135
    move-object v4, v1

    move v5, v3

    add-int/lit8 v3, v3, 0x1

    move-object v6, v0

    iget v6, v6, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C0:I

    const/16 v7, 0x8

    shr-int/lit8 v6, v6, 0x8

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 136
    move-object v4, v1

    move v5, v3

    add-int/lit8 v3, v3, 0x1

    move-object v6, v0

    iget v6, v6, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C0:I

    const/16 v7, 0x10

    shr-int/lit8 v6, v6, 0x10

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 137
    move-object v4, v1

    move v5, v3

    add-int/lit8 v3, v3, 0x1

    move-object v6, v0

    iget v6, v6, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C0:I

    const/16 v7, 0x18

    shr-int/lit8 v6, v6, 0x18

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 139
    move-object v4, v1

    move v5, v3

    add-int/lit8 v3, v3, 0x1

    move-object v6, v0

    iget v6, v6, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C1:I

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 140
    move-object v4, v1

    move v5, v3

    add-int/lit8 v3, v3, 0x1

    move-object v6, v0

    iget v6, v6, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C1:I

    const/16 v7, 0x8

    shr-int/lit8 v6, v6, 0x8

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 141
    move-object v4, v1

    move v5, v3

    add-int/lit8 v3, v3, 0x1

    move-object v6, v0

    iget v6, v6, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C1:I

    const/16 v7, 0x10

    shr-int/lit8 v6, v6, 0x10

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 142
    move-object v4, v1

    move v5, v3

    add-int/lit8 v3, v3, 0x1

    move-object v6, v0

    iget v6, v6, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C1:I

    const/16 v7, 0x18

    shr-int/lit8 v6, v6, 0x18

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 144
    move-object v4, v1

    move v5, v3

    add-int/lit8 v3, v3, 0x1

    move-object v6, v0

    iget v6, v6, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C2:I

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 145
    move-object v4, v1

    move v5, v3

    add-int/lit8 v3, v3, 0x1

    move-object v6, v0

    iget v6, v6, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C2:I

    const/16 v7, 0x8

    shr-int/lit8 v6, v6, 0x8

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 146
    move-object v4, v1

    move v5, v3

    add-int/lit8 v3, v3, 0x1

    move-object v6, v0

    iget v6, v6, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C2:I

    const/16 v7, 0x10

    shr-int/lit8 v6, v6, 0x10

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 147
    move-object v4, v1

    move v5, v3

    add-int/lit8 v3, v3, 0x1

    move-object v6, v0

    iget v6, v6, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C2:I

    const/16 v7, 0x18

    shr-int/lit8 v6, v6, 0x18

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 149
    move-object v4, v1

    move v5, v3

    add-int/lit8 v3, v3, 0x1

    move-object v6, v0

    iget v6, v6, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C3:I

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 150
    move-object v4, v1

    move v5, v3

    add-int/lit8 v3, v3, 0x1

    move-object v6, v0

    iget v6, v6, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C3:I

    const/16 v7, 0x8

    shr-int/lit8 v6, v6, 0x8

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 151
    move-object v4, v1

    move v5, v3

    add-int/lit8 v3, v3, 0x1

    move-object v6, v0

    iget v6, v6, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C3:I

    const/16 v7, 0x10

    shr-int/lit8 v6, v6, 0x10

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 152
    move-object v4, v1

    move v5, v3

    add-int/lit8 v3, v3, 0x1

    move-object v6, v0

    iget v6, v6, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C3:I

    const/16 v7, 0x18

    shr-int/lit8 v6, v6, 0x18

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 153
    return-void
.end method

.method private subWord(I)I
    .locals 6

    .prologue
    .line 194
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/crypto/engine/AESEngine;
    move v1, p1

    .local v1, "x":I
    sget-object v2, Lnet/lingala/zip4j/crypto/engine/AESEngine;->S:[B

    move v3, v1

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, v2, v3

    const/16 v3, 0xff

    and-int/lit16 v2, v2, 0xff

    sget-object v3, Lnet/lingala/zip4j/crypto/engine/AESEngine;->S:[B

    move v4, v1

    const/16 v5, 0x8

    shr-int/lit8 v4, v4, 0x8

    const/16 v5, 0xff

    and-int/lit16 v4, v4, 0xff

    aget-byte v3, v3, v4

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x8

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    sget-object v3, Lnet/lingala/zip4j/crypto/engine/AESEngine;->S:[B

    move v4, v1

    const/16 v5, 0x10

    shr-int/lit8 v4, v4, 0x10

    const/16 v5, 0xff

    and-int/lit16 v4, v4, 0xff

    aget-byte v3, v3, v4

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x10

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    sget-object v3, Lnet/lingala/zip4j/crypto/engine/AESEngine;->S:[B

    move v4, v1

    const/16 v5, 0x18

    shr-int/lit8 v4, v4, 0x18

    const/16 v5, 0xff

    and-int/lit16 v4, v4, 0xff

    aget-byte v3, v3, v4

    const/16 v4, 0x18

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    move v0, v2

    .end local v0    # "this":Lnet/lingala/zip4j/crypto/engine/AESEngine;
    return v0
.end method


# virtual methods
.method public init([B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/crypto/engine/AESEngine;
    move-object v1, p1

    .local v1, "key":[B
    move-object v2, v0

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->generateWorkingKey([B)[[I

    move-result-object v3

    iput-object v3, v2, Lnet/lingala/zip4j/crypto/engine/AESEngine;->workingKey:[[I

    .line 39
    return-void
.end method

.method public processBlock([BI[BI)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/crypto/engine/AESEngine;
    move-object v1, p1

    .local v1, "in":[B
    move v2, p2

    .local v2, "inOff":I
    move-object v3, p3

    .local v3, "out":[B
    move v4, p4

    .local v4, "outOff":I
    move-object v5, v0

    iget-object v5, v5, Lnet/lingala/zip4j/crypto/engine/AESEngine;->workingKey:[[I

    if-nez v5, :cond_0

    .line 87
    new-instance v5, Lnet/lingala/zip4j/exception/ZipException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string/jumbo v7, "AES engine not initialised"

    invoke-direct {v6, v7}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 90
    :cond_0
    move v5, v2

    const/16 v6, 0x10

    add-int/lit8 v5, v5, 0x10

    move-object v6, v1

    array-length v6, v6

    if-le v5, v6, :cond_1

    .line 92
    new-instance v5, Lnet/lingala/zip4j/exception/ZipException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string/jumbo v7, "input buffer too short"

    invoke-direct {v6, v7}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 95
    :cond_1
    move v5, v4

    const/16 v6, 0x10

    add-int/lit8 v5, v5, 0x10

    move-object v6, v3

    array-length v6, v6

    if-le v5, v6, :cond_2

    .line 97
    new-instance v5, Lnet/lingala/zip4j/exception/ZipException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string/jumbo v7, "output buffer too short"

    invoke-direct {v6, v7}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 100
    :cond_2
    move-object v5, v0

    move-object v6, v1

    move v7, v2

    invoke-direct {v5, v6, v7}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->stateIn([BI)V

    .line 101
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lnet/lingala/zip4j/crypto/engine/AESEngine;->workingKey:[[I

    invoke-direct {v5, v6}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->encryptBlock([[I)V

    .line 102
    move-object v5, v0

    move-object v6, v3

    move v7, v4

    invoke-direct {v5, v6, v7}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->stateOut([BI)V

    .line 104
    const/16 v5, 0x10

    move v0, v5

    .end local v0    # "this":Lnet/lingala/zip4j/crypto/engine/AESEngine;
    return v0
.end method

.method public processBlock([B[B)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/crypto/engine/AESEngine;
    move-object v1, p1

    .local v1, "in":[B
    move-object v2, p2

    .local v2, "out":[B
    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    move-object v6, v2

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->processBlock([BI[BI)I

    move-result v3

    move v0, v3

    .end local v0    # "this":Lnet/lingala/zip4j/crypto/engine/AESEngine;
    return v0
.end method
