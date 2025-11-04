.class public Lorg/apache/xerces/util/URI;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xerces/util/URI$MalformedURIException;
    }
.end annotation


# static fields
.field private static final ASCII_ALPHA_CHARACTERS:I = 0x10

.field private static final ASCII_DIGIT_CHARACTERS:I = 0x20

.field private static final ASCII_HEX_CHARACTERS:I = 0x40

.field private static final MARK_CHARACTERS:I = 0x2

.field private static final MASK_ALPHA_NUMERIC:I = 0x30

.field private static final MASK_PATH_CHARACTER:I = 0xb2

.field private static final MASK_SCHEME_CHARACTER:I = 0x34

.field private static final MASK_UNRESERVED_MASK:I = 0x32

.field private static final MASK_URI_CHARACTER:I = 0x33

.field private static final MASK_USERINFO_CHARACTER:I = 0x3a

.field private static final PATH_CHARACTERS:I = 0x80

.field private static final RESERVED_CHARACTERS:I = 0x1

.field private static final SCHEME_CHARACTERS:I = 0x4

.field private static final USERINFO_CHARACTERS:I = 0x8

.field private static final fgLookupTable:[B

.field static final serialVersionUID:J = 0x163b2b5de215849eL


# instance fields
.field private m_fragment:Ljava/lang/String;

.field private m_host:Ljava/lang/String;

.field private m_path:Ljava/lang/String;

.field private m_port:I

.field private m_queryString:Ljava/lang/String;

.field private m_regAuthority:Ljava/lang/String;

.field private m_scheme:Ljava/lang/String;

.field private m_userinfo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/16 v3, 0x80

    new-array v3, v3, [B

    sput-object v3, Lorg/apache/xerces/util/URI;->fgLookupTable:[B

    const/16 v3, 0x30

    move v0, v3

    :goto_0
    move v3, v0

    const/16 v4, 0x39

    if-le v3, v4, :cond_0

    const/16 v3, 0x41

    move v1, v3

    :goto_1
    move v3, v1

    const/16 v4, 0x46

    if-le v3, v4, :cond_1

    const/16 v3, 0x47

    move v2, v3

    :goto_2
    move v3, v2

    const/16 v4, 0x5a

    if-le v3, v4, :cond_2

    sget-object v3, Lorg/apache/xerces/util/URI;->fgLookupTable:[B

    const/16 v4, 0x3b

    move-object v7, v3

    move v8, v4

    move-object v3, v7

    move v4, v8

    move-object v5, v7

    move v6, v8

    aget-byte v5, v5, v6

    const/4 v6, 0x1

    or-int/lit8 v5, v5, 0x1

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    sget-object v3, Lorg/apache/xerces/util/URI;->fgLookupTable:[B

    const/16 v4, 0x2f

    move-object v7, v3

    move v8, v4

    move-object v3, v7

    move v4, v8

    move-object v5, v7

    move v6, v8

    aget-byte v5, v5, v6

    const/4 v6, 0x1

    or-int/lit8 v5, v5, 0x1

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    sget-object v3, Lorg/apache/xerces/util/URI;->fgLookupTable:[B

    const/16 v4, 0x3f

    move-object v7, v3

    move v8, v4

    move-object v3, v7

    move v4, v8

    move-object v5, v7

    move v6, v8

    aget-byte v5, v5, v6

    const/4 v6, 0x1

    or-int/lit8 v5, v5, 0x1

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    sget-object v3, Lorg/apache/xerces/util/URI;->fgLookupTable:[B

    const/16 v4, 0x3a

    move-object v7, v3

    move v8, v4

    move-object v3, v7

    move v4, v8

    move-object v5, v7

    move v6, v8

    aget-byte v5, v5, v6

    const/4 v6, 0x1

    or-int/lit8 v5, v5, 0x1

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    sget-object v3, Lorg/apache/xerces/util/URI;->fgLookupTable:[B

    const/16 v4, 0x40

    move-object v7, v3

    move v8, v4

    move-object v3, v7

    move v4, v8

    move-object v5, v7

    move v6, v8

    aget-byte v5, v5, v6

    const/4 v6, 0x1

    or-int/lit8 v5, v5, 0x1

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    sget-object v3, Lorg/apache/xerces/util/URI;->fgLookupTable:[B

    const/16 v4, 0x26

    move-object v7, v3

    move v8, v4

    move-object v3, v7

    move v4, v8

    move-object v5, v7

    move v6, v8

    aget-byte v5, v5, v6

    const/4 v6, 0x1

    or-int/lit8 v5, v5, 0x1

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    sget-object v3, Lorg/apache/xerces/util/URI;->fgLookupTable:[B

    const/16 v4, 0x3d

    move-object v7, v3

    move v8, v4

    move-object v3, v7

    move v4, v8

    move-object v5, v7

    move v6, v8

    aget-byte v5, v5, v6

    const/4 v6, 0x1

    or-int/lit8 v5, v5, 0x1

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    sget-object v3, Lorg/apache/xerces/util/URI;->fgLookupTable:[B

    const/16 v4, 0x2b

    move-object v7, v3

    move v8, v4

    move-object v3, v7

    move v4, v8

    move-object v5, v7

    move v6, v8

    aget-byte v5, v5, v6

    const/4 v6, 0x1

    or-int/lit8 v5, v5, 0x1

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    sget-object v3, Lorg/apache/xerces/util/URI;->fgLookupTable:[B

    const/16 v4, 0x24

    move-object v7, v3

    move v8, v4

    move-object v3, v7

    move v4, v8

    move-object v5, v7

    move v6, v8

    aget-byte v5, v5, v6

    const/4 v6, 0x1

    or-int/lit8 v5, v5, 0x1

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    sget-object v3, Lorg/apache/xerces/util/URI;->fgLookupTable:[B

    const/16 v4, 0x2c

    move-object v7, v3

    move v8, v4

    move-object v3, v7

    move v4, v8

    move-object v5, v7

    move v6, v8

    aget-byte v5, v5, v6

    const/4 v6, 0x1

    or-int/lit8 v5, v5, 0x1

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    sget-object v3, Lorg/apache/xerces/util/URI;->fgLookupTable:[B

    const/16 v4, 0x5b

    move-object v7, v3

    move v8, v4

    move-object v3, v7

    move v4, v8

    move-object v5, v7

    move v6, v8

    aget-byte v5, v5, v6

    const/4 v6, 0x1

    or-int/lit8 v5, v5, 0x1

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    sget-object v3, Lorg/apache/xerces/util/URI;->fgLookupTable:[B

    const/16 v4, 0x5d

    move-object v7, v3

    move v8, v4

    move-object v3, v7

    move v4, v8

    move-object v5, v7

    move v6, v8

    aget-byte v5, v5, v6

    const/4 v6, 0x1

    or-int/lit8 v5, v5, 0x1

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    sget-object v3, Lorg/apache/xerces/util/URI;->fgLookupTable:[B

    const/16 v4, 0x2d

    move-object v7, v3

    move v8, v4

    move-object v3, v7

    move v4, v8

    move-object v5, v7

    move v6, v8

    aget-byte v5, v5, v6

    const/4 v6, 0x2

    or-int/lit8 v5, v5, 0x2

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    sget-object v3, Lorg/apache/xerces/util/URI;->fgLookupTable:[B

    const/16 v4, 0x5f

    move-object v7, v3

    move v8, v4

    move-object v3, v7

    move v4, v8

    move-object v5, v7

    move v6, v8

    aget-byte v5, v5, v6

    const/4 v6, 0x2

    or-int/lit8 v5, v5, 0x2

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    sget-object v3, Lorg/apache/xerces/util/URI;->fgLookupTable:[B

    const/16 v4, 0x2e

    move-object v7, v3

    move v8, v4

    move-object v3, v7

    move v4, v8

    move-object v5, v7

    move v6, v8

    aget-byte v5, v5, v6

    const/4 v6, 0x2

    or-int/lit8 v5, v5, 0x2

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    sget-object v3, Lorg/apache/xerces/util/URI;->fgLookupTable:[B

    const/16 v4, 0x21

    move-object v7, v3

    move v8, v4

    move-object v3, v7

    move v4, v8

    move-object v5, v7

    move v6, v8

    aget-byte v5, v5, v6

    const/4 v6, 0x2

    or-int/lit8 v5, v5, 0x2

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    sget-object v3, Lorg/apache/xerces/util/URI;->fgLookupTable:[B

    const/16 v4, 0x7e

    move-object v7, v3

    move v8, v4

    move-object v3, v7

    move v4, v8

    move-object v5, v7

    move v6, v8

    aget-byte v5, v5, v6

    const/4 v6, 0x2

    or-int/lit8 v5, v5, 0x2

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    sget-object v3, Lorg/apache/xerces/util/URI;->fgLookupTable:[B

    const/16 v4, 0x2a

    move-object v7, v3

    move v8, v4

    move-object v3, v7

    move v4, v8

    move-object v5, v7

    move v6, v8

    aget-byte v5, v5, v6

    const/4 v6, 0x2

    or-int/lit8 v5, v5, 0x2

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    sget-object v3, Lorg/apache/xerces/util/URI;->fgLookupTable:[B

    const/16 v4, 0x27

    move-object v7, v3

    move v8, v4

    move-object v3, v7

    move v4, v8

    move-object v5, v7

    move v6, v8

    aget-byte v5, v5, v6

    const/4 v6, 0x2

    or-int/lit8 v5, v5, 0x2

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    sget-object v3, Lorg/apache/xerces/util/URI;->fgLookupTable:[B

    const/16 v4, 0x28

    move-object v7, v3

    move v8, v4

    move-object v3, v7

    move v4, v8

    move-object v5, v7

    move v6, v8

    aget-byte v5, v5, v6

    const/4 v6, 0x2

    or-int/lit8 v5, v5, 0x2

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    sget-object v3, Lorg/apache/xerces/util/URI;->fgLookupTable:[B

    const/16 v4, 0x29

    move-object v7, v3

    move v8, v4

    move-object v3, v7

    move v4, v8

    move-object v5, v7

    move v6, v8

    aget-byte v5, v5, v6

    const/4 v6, 0x2

    or-int/lit8 v5, v5, 0x2

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    sget-object v3, Lorg/apache/xerces/util/URI;->fgLookupTable:[B

    const/16 v4, 0x2b

    move-object v7, v3

    move v8, v4

    move-object v3, v7

    move v4, v8

    move-object v5, v7

    move v6, v8

    aget-byte v5, v5, v6

    const/4 v6, 0x4

    or-int/lit8 v5, v5, 0x4

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    sget-object v3, Lorg/apache/xerces/util/URI;->fgLookupTable:[B

    const/16 v4, 0x2d

    move-object v7, v3

    move v8, v4

    move-object v3, v7

    move v4, v8

    move-object v5, v7

    move v6, v8

    aget-byte v5, v5, v6

    const/4 v6, 0x4

    or-int/lit8 v5, v5, 0x4

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    sget-object v3, Lorg/apache/xerces/util/URI;->fgLookupTable:[B

    const/16 v4, 0x2e

    move-object v7, v3

    move v8, v4

    move-object v3, v7

    move v4, v8

    move-object v5, v7

    move v6, v8

    aget-byte v5, v5, v6

    const/4 v6, 0x4

    or-int/lit8 v5, v5, 0x4

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    sget-object v3, Lorg/apache/xerces/util/URI;->fgLookupTable:[B

    const/16 v4, 0x3b

    move-object v7, v3

    move v8, v4

    move-object v3, v7

    move v4, v8

    move-object v5, v7

    move v6, v8

    aget-byte v5, v5, v6

    const/16 v6, 0x8

    or-int/lit8 v5, v5, 0x8

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    sget-object v3, Lorg/apache/xerces/util/URI;->fgLookupTable:[B

    const/16 v4, 0x3a

    move-object v7, v3

    move v8, v4

    move-object v3, v7

    move v4, v8

    move-object v5, v7

    move v6, v8

    aget-byte v5, v5, v6

    const/16 v6, 0x8

    or-int/lit8 v5, v5, 0x8

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    sget-object v3, Lorg/apache/xerces/util/URI;->fgLookupTable:[B

    const/16 v4, 0x26

    move-object v7, v3

    move v8, v4

    move-object v3, v7

    move v4, v8

    move-object v5, v7

    move v6, v8

    aget-byte v5, v5, v6

    const/16 v6, 0x8

    or-int/lit8 v5, v5, 0x8

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    sget-object v3, Lorg/apache/xerces/util/URI;->fgLookupTable:[B

    const/16 v4, 0x3d

    move-object v7, v3

    move v8, v4

    move-object v3, v7

    move v4, v8

    move-object v5, v7

    move v6, v8

    aget-byte v5, v5, v6

    const/16 v6, 0x8

    or-int/lit8 v5, v5, 0x8

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    sget-object v3, Lorg/apache/xerces/util/URI;->fgLookupTable:[B

    const/16 v4, 0x2b

    move-object v7, v3

    move v8, v4

    move-object v3, v7

    move v4, v8

    move-object v5, v7

    move v6, v8

    aget-byte v5, v5, v6

    const/16 v6, 0x8

    or-int/lit8 v5, v5, 0x8

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    sget-object v3, Lorg/apache/xerces/util/URI;->fgLookupTable:[B

    const/16 v4, 0x24

    move-object v7, v3

    move v8, v4

    move-object v3, v7

    move v4, v8

    move-object v5, v7

    move v6, v8

    aget-byte v5, v5, v6

    const/16 v6, 0x8

    or-int/lit8 v5, v5, 0x8

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    sget-object v3, Lorg/apache/xerces/util/URI;->fgLookupTable:[B

    const/16 v4, 0x2c

    move-object v7, v3

    move v8, v4

    move-object v3, v7

    move v4, v8

    move-object v5, v7

    move v6, v8

    aget-byte v5, v5, v6

    const/16 v6, 0x8

    or-int/lit8 v5, v5, 0x8

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    sget-object v3, Lorg/apache/xerces/util/URI;->fgLookupTable:[B

    const/16 v4, 0x3b

    move-object v7, v3

    move v8, v4

    move-object v3, v7

    move v4, v8

    move-object v5, v7

    move v6, v8

    aget-byte v5, v5, v6

    const/16 v6, 0x80

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    sget-object v3, Lorg/apache/xerces/util/URI;->fgLookupTable:[B

    const/16 v4, 0x2f

    move-object v7, v3

    move v8, v4

    move-object v3, v7

    move v4, v8

    move-object v5, v7

    move v6, v8

    aget-byte v5, v5, v6

    const/16 v6, 0x80

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    sget-object v3, Lorg/apache/xerces/util/URI;->fgLookupTable:[B

    const/16 v4, 0x3a

    move-object v7, v3

    move v8, v4

    move-object v3, v7

    move v4, v8

    move-object v5, v7

    move v6, v8

    aget-byte v5, v5, v6

    const/16 v6, 0x80

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    sget-object v3, Lorg/apache/xerces/util/URI;->fgLookupTable:[B

    const/16 v4, 0x40

    move-object v7, v3

    move v8, v4

    move-object v3, v7

    move v4, v8

    move-object v5, v7

    move v6, v8

    aget-byte v5, v5, v6

    const/16 v6, 0x80

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    sget-object v3, Lorg/apache/xerces/util/URI;->fgLookupTable:[B

    const/16 v4, 0x26

    move-object v7, v3

    move v8, v4

    move-object v3, v7

    move v4, v8

    move-object v5, v7

    move v6, v8

    aget-byte v5, v5, v6

    const/16 v6, 0x80

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    sget-object v3, Lorg/apache/xerces/util/URI;->fgLookupTable:[B

    const/16 v4, 0x3d

    move-object v7, v3

    move v8, v4

    move-object v3, v7

    move v4, v8

    move-object v5, v7

    move v6, v8

    aget-byte v5, v5, v6

    const/16 v6, 0x80

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    sget-object v3, Lorg/apache/xerces/util/URI;->fgLookupTable:[B

    const/16 v4, 0x2b

    move-object v7, v3

    move v8, v4

    move-object v3, v7

    move v4, v8

    move-object v5, v7

    move v6, v8

    aget-byte v5, v5, v6

    const/16 v6, 0x80

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    sget-object v3, Lorg/apache/xerces/util/URI;->fgLookupTable:[B

    const/16 v4, 0x24

    move-object v7, v3

    move v8, v4

    move-object v3, v7

    move v4, v8

    move-object v5, v7

    move v6, v8

    aget-byte v5, v5, v6

    const/16 v6, 0x80

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    sget-object v3, Lorg/apache/xerces/util/URI;->fgLookupTable:[B

    const/16 v4, 0x2c

    move-object v7, v3

    move v8, v4

    move-object v3, v7

    move v4, v8

    move-object v5, v7

    move v6, v8

    aget-byte v5, v5, v6

    const/16 v6, 0x80

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    return-void

    :cond_0
    sget-object v3, Lorg/apache/xerces/util/URI;->fgLookupTable:[B

    move v4, v0

    move-object v7, v3

    move v8, v4

    move-object v3, v7

    move v4, v8

    move-object v5, v7

    move v6, v8

    aget-byte v5, v5, v6

    const/16 v6, 0x60

    or-int/lit8 v5, v5, 0x60

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_1
    sget-object v3, Lorg/apache/xerces/util/URI;->fgLookupTable:[B

    move v4, v1

    move-object v7, v3

    move v8, v4

    move-object v3, v7

    move v4, v8

    move-object v5, v7

    move v6, v8

    aget-byte v5, v5, v6

    const/16 v6, 0x50

    or-int/lit8 v5, v5, 0x50

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    sget-object v3, Lorg/apache/xerces/util/URI;->fgLookupTable:[B

    move v4, v1

    const/16 v5, 0x20

    add-int/lit8 v4, v4, 0x20

    move-object v7, v3

    move v8, v4

    move-object v3, v7

    move v4, v8

    move-object v5, v7

    move v6, v8

    aget-byte v5, v5, v6

    const/16 v6, 0x50

    or-int/lit8 v5, v5, 0x50

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_2
    sget-object v3, Lorg/apache/xerces/util/URI;->fgLookupTable:[B

    move v4, v2

    move-object v7, v3

    move v8, v4

    move-object v3, v7

    move v4, v8

    move-object v5, v7

    move v6, v8

    aget-byte v5, v5, v6

    const/16 v6, 0x10

    or-int/lit8 v5, v5, 0x10

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    sget-object v3, Lorg/apache/xerces/util/URI;->fgLookupTable:[B

    move v4, v2

    const/16 v5, 0x20

    add-int/lit8 v4, v4, 0x20

    move-object v7, v3

    move v8, v4

    move-object v3, v7

    move v4, v8

    move-object v5, v7

    move v6, v8

    aget-byte v5, v5, v6

    const/16 v6, 0x10

    or-int/lit8 v5, v5, 0x10

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2
.end method

.method public constructor <init>()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Lorg/apache/xerces/util/URI;->m_port:I

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/util/URI;->m_regAuthority:Ljava/lang/String;

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const/4 v3, 0x0

    check-cast v3, Lorg/apache/xerces/util/URI;

    move-object v4, v1

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/URI;-><init>(Lorg/apache/xerces/util/URI;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lorg/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lorg/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lorg/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Lorg/apache/xerces/util/URI;->m_port:I

    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lorg/apache/xerces/util/URI;->m_regAuthority:Ljava/lang/String;

    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lorg/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lorg/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    new-instance v3, Lorg/apache/xerces/util/URI$MalformedURIException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "Cannot construct URI with null/empty scheme!"

    invoke-direct {v4, v5}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    move-object v3, v2

    if-eqz v3, :cond_2

    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    new-instance v3, Lorg/apache/xerces/util/URI$MalformedURIException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "Cannot construct URI with null/empty scheme-specific part!"

    invoke-direct {v4, v5}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/apache/xerces/util/URI;->setScheme(Ljava/lang/String;)V

    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lorg/apache/xerces/util/URI;->setPath(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object v8, v0

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    move-object v8, v0

    const/4 v9, 0x0

    iput-object v9, v8, Lorg/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    move-object v8, v0

    const/4 v9, 0x0

    iput-object v9, v8, Lorg/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    move-object v8, v0

    const/4 v9, 0x0

    iput-object v9, v8, Lorg/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    move-object v8, v0

    const/4 v9, -0x1

    iput v9, v8, Lorg/apache/xerces/util/URI;->m_port:I

    move-object v8, v0

    const/4 v9, 0x0

    iput-object v9, v8, Lorg/apache/xerces/util/URI;->m_regAuthority:Ljava/lang/String;

    move-object v8, v0

    const/4 v9, 0x0

    iput-object v9, v8, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    move-object v8, v0

    const/4 v9, 0x0

    iput-object v9, v8, Lorg/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    move-object v8, v0

    const/4 v9, 0x0

    iput-object v9, v8, Lorg/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    move-object v8, v1

    if-eqz v8, :cond_0

    move-object v8, v1

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_1

    :cond_0
    new-instance v8, Lorg/apache/xerces/util/URI$MalformedURIException;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    const-string/jumbo v10, "Scheme is required!"

    invoke-direct {v9, v10}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_1
    move-object v8, v3

    if-nez v8, :cond_3

    move-object v8, v2

    if-eqz v8, :cond_2

    new-instance v8, Lorg/apache/xerces/util/URI$MalformedURIException;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    const-string/jumbo v10, "Userinfo may not be specified if host is not specified!"

    invoke-direct {v9, v10}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_2
    move v8, v4

    const/4 v9, -0x1

    if-eq v8, v9, :cond_3

    new-instance v8, Lorg/apache/xerces/util/URI$MalformedURIException;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    const-string/jumbo v10, "Port may not be specified if host is not specified!"

    invoke-direct {v9, v10}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_3
    move-object v8, v5

    if-eqz v8, :cond_5

    move-object v8, v5

    const/16 v9, 0x3f

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_4

    move-object v8, v6

    if-eqz v8, :cond_4

    new-instance v8, Lorg/apache/xerces/util/URI$MalformedURIException;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    const-string/jumbo v10, "Query string cannot be specified in path and query string!"

    invoke-direct {v9, v10}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_4
    move-object v8, v5

    const/16 v9, 0x23

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_5

    move-object v8, v7

    if-eqz v8, :cond_5

    new-instance v8, Lorg/apache/xerces/util/URI$MalformedURIException;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    const-string/jumbo v10, "Fragment cannot be specified in both the path and fragment!"

    invoke-direct {v9, v10}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_5
    move-object v8, v0

    move-object v9, v1

    invoke-virtual {v8, v9}, Lorg/apache/xerces/util/URI;->setScheme(Ljava/lang/String;)V

    move-object v8, v0

    move-object v9, v3

    invoke-virtual {v8, v9}, Lorg/apache/xerces/util/URI;->setHost(Ljava/lang/String;)V

    move-object v8, v0

    move v9, v4

    invoke-virtual {v8, v9}, Lorg/apache/xerces/util/URI;->setPort(I)V

    move-object v8, v0

    move-object v9, v2

    invoke-virtual {v8, v9}, Lorg/apache/xerces/util/URI;->setUserinfo(Ljava/lang/String;)V

    move-object v8, v0

    move-object v9, v5

    invoke-virtual {v8, v9}, Lorg/apache/xerces/util/URI;->setPath(Ljava/lang/String;)V

    move-object v8, v0

    move-object v9, v6

    invoke-virtual {v8, v9}, Lorg/apache/xerces/util/URI;->setQueryString(Ljava/lang/String;)V

    move-object v8, v0

    move-object v9, v7

    invoke-virtual {v8, v9}, Lorg/apache/xerces/util/URI;->setFragment(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object v6, v0

    move-object v7, v1

    const/4 v8, 0x0

    move-object v9, v2

    const/4 v10, -0x1

    move-object v11, v3

    move-object v12, v4

    move-object v13, v5

    invoke-direct/range {v6 .. v13}, Lorg/apache/xerces/util/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    const/4 v4, 0x0

    check-cast v4, Lorg/apache/xerces/util/URI;

    move-object v5, v1

    move v6, v2

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/xerces/util/URI;-><init>(Lorg/apache/xerces/util/URI;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/util/URI;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lorg/apache/xerces/util/URI;->m_port:I

    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/apache/xerces/util/URI;->m_regAuthority:Ljava/lang/String;

    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lorg/apache/xerces/util/URI;->initialize(Lorg/apache/xerces/util/URI;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/util/URI;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lorg/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lorg/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lorg/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Lorg/apache/xerces/util/URI;->m_port:I

    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lorg/apache/xerces/util/URI;->m_regAuthority:Ljava/lang/String;

    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lorg/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lorg/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lorg/apache/xerces/util/URI;->initialize(Lorg/apache/xerces/util/URI;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/util/URI;Ljava/lang/String;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lorg/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lorg/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lorg/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    move-object v4, v0

    const/4 v5, -0x1

    iput v5, v4, Lorg/apache/xerces/util/URI;->m_port:I

    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lorg/apache/xerces/util/URI;->m_regAuthority:Ljava/lang/String;

    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lorg/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lorg/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/xerces/util/URI;->initialize(Lorg/apache/xerces/util/URI;Ljava/lang/String;Z)V

    return-void
.end method

.method private initialize(Lorg/apache/xerces/util/URI;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lorg/apache/xerces/util/URI;->getScheme()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lorg/apache/xerces/util/URI;->getUserinfo()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lorg/apache/xerces/util/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lorg/apache/xerces/util/URI;->getPort()I

    move-result v3

    iput v3, v2, Lorg/apache/xerces/util/URI;->m_port:I

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lorg/apache/xerces/util/URI;->getRegBasedAuthority()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/apache/xerces/util/URI;->m_regAuthority:Ljava/lang/String;

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lorg/apache/xerces/util/URI;->getPath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lorg/apache/xerces/util/URI;->getQueryString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lorg/apache/xerces/util/URI;->getFragment()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    return-void
.end method

.method private initialize(Lorg/apache/xerces/util/URI;Ljava/lang/String;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v11, v2

    move-object v3, v11

    move-object v11, v3

    if-eqz v11, :cond_0

    move-object v11, v3

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    :goto_0
    move v4, v11

    move-object v11, v1

    if-nez v11, :cond_1

    move v11, v4

    if-nez v11, :cond_1

    new-instance v11, Lorg/apache/xerces/util/URI$MalformedURIException;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const-string/jumbo v13, "Cannot initialize URI with empty parameters."

    invoke-direct {v12, v13}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_0
    const/4 v11, 0x0

    goto :goto_0

    :cond_1
    move v11, v4

    if-nez v11, :cond_2

    move-object v11, v0

    move-object v12, v1

    invoke-direct {v11, v12}, Lorg/apache/xerces/util/URI;->initialize(Lorg/apache/xerces/util/URI;)V

    :goto_1
    return-void

    :cond_2
    const/4 v11, 0x0

    move v5, v11

    move-object v11, v3

    const/16 v12, 0x3a

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    move v6, v11

    move v11, v6

    const/4 v12, -0x1

    if-eq v11, v12, :cond_7

    move v11, v6

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    move v7, v11

    move-object v11, v3

    const/16 v12, 0x2f

    move v13, v7

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v11

    move v8, v11

    move-object v11, v3

    const/16 v12, 0x3f

    move v13, v7

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v11

    move v9, v11

    move-object v11, v3

    const/16 v12, 0x23

    move v13, v7

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v11

    move v10, v11

    move v11, v6

    if-eqz v11, :cond_3

    move v11, v8

    const/4 v12, -0x1

    if-ne v11, v12, :cond_3

    move v11, v9

    const/4 v12, -0x1

    if-ne v11, v12, :cond_3

    move v11, v10

    const/4 v12, -0x1

    if-eq v11, v12, :cond_5

    :cond_3
    move v11, v6

    if-eqz v11, :cond_4

    move-object v11, v1

    if-nez v11, :cond_8

    move v11, v10

    if-eqz v11, :cond_8

    :cond_4
    new-instance v11, Lorg/apache/xerces/util/URI$MalformedURIException;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const-string/jumbo v13, "No scheme found in URI."

    invoke-direct {v12, v13}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_5
    move-object v11, v0

    move-object v12, v3

    invoke-direct {v11, v12}, Lorg/apache/xerces/util/URI;->initializeScheme(Ljava/lang/String;)V

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    move v5, v11

    move v11, v6

    move v12, v4

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    if-eq v11, v12, :cond_6

    move-object v11, v3

    move v12, v6

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x23

    if-ne v11, v12, :cond_8

    :cond_6
    new-instance v11, Lorg/apache/xerces/util/URI$MalformedURIException;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const-string/jumbo v13, "Scheme specific part cannot be empty."

    invoke-direct {v12, v13}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_7
    move-object v11, v1

    if-nez v11, :cond_8

    move-object v11, v3

    const/16 v12, 0x23

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    if-eqz v11, :cond_8

    new-instance v11, Lorg/apache/xerces/util/URI$MalformedURIException;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const-string/jumbo v13, "No scheme found in URI."

    invoke-direct {v12, v13}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_8
    move v11, v5

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    move v12, v4

    if-ge v11, v12, :cond_a

    move-object v11, v3

    move v12, v5

    invoke-virtual {v11, v12}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x2f

    if-ne v11, v12, :cond_a

    move-object v11, v3

    move v12, v5

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x2f

    if-ne v11, v12, :cond_a

    add-int/lit8 v5, v5, 0x2

    move v11, v5

    move v7, v11

    const/4 v11, 0x0

    move v8, v11

    :goto_2
    move v11, v5

    move v12, v4

    if-lt v11, v12, :cond_c

    :cond_9
    :goto_3
    move v11, v5

    move v12, v7

    if-le v11, v12, :cond_e

    move-object v11, v0

    move-object v12, v3

    move v13, v7

    move v14, v5

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lorg/apache/xerces/util/URI;->initializeAuthority(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_a

    move v11, v7

    const/4 v12, 0x2

    add-int/lit8 v11, v11, -0x2

    move v5, v11

    :cond_a
    :goto_4
    move-object v11, v0

    move-object v12, v3

    move v13, v5

    invoke-direct {v11, v12, v13}, Lorg/apache/xerces/util/URI;->initializePath(Ljava/lang/String;I)V

    move-object v11, v1

    if-eqz v11, :cond_b

    move-object v11, v0

    move-object v12, v1

    invoke-virtual {v11, v12}, Lorg/apache/xerces/util/URI;->absolutize(Lorg/apache/xerces/util/URI;)V

    :cond_b
    goto/16 :goto_1

    :cond_c
    move-object v11, v3

    move v12, v5

    invoke-virtual {v11, v12}, Ljava/lang/String;->charAt(I)C

    move-result v11

    move v8, v11

    move v11, v8

    const/16 v12, 0x2f

    if-eq v11, v12, :cond_9

    move v11, v8

    const/16 v12, 0x3f

    if-eq v11, v12, :cond_9

    move v11, v8

    const/16 v12, 0x23

    if-ne v11, v12, :cond_d

    goto :goto_3

    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_e
    move-object v11, v0

    const-string/jumbo v12, ""

    iput-object v12, v11, Lorg/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    goto :goto_4
.end method

.method private initialize(Lorg/apache/xerces/util/URI;Ljava/lang/String;Z)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object v12, v2

    move-object v4, v12

    move-object v12, v4

    if-eqz v12, :cond_0

    move-object v12, v4

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    :goto_0
    move v5, v12

    move-object v12, v1

    if-nez v12, :cond_2

    move v12, v5

    if-nez v12, :cond_2

    move v12, v3

    if-eqz v12, :cond_1

    move-object v12, v0

    const-string/jumbo v13, ""

    iput-object v13, v12, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    :goto_1
    return-void

    :cond_0
    const/4 v12, 0x0

    goto :goto_0

    :cond_1
    new-instance v12, Lorg/apache/xerces/util/URI$MalformedURIException;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const-string/jumbo v14, "Cannot initialize URI with empty parameters."

    invoke-direct {v13, v14}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_2
    move v12, v5

    if-nez v12, :cond_3

    move-object v12, v0

    move-object v13, v1

    invoke-direct {v12, v13}, Lorg/apache/xerces/util/URI;->initialize(Lorg/apache/xerces/util/URI;)V

    goto :goto_1

    :cond_3
    const/4 v12, 0x0

    move v6, v12

    move-object v12, v4

    const/16 v13, 0x3a

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    move v7, v12

    move v12, v7

    const/4 v13, -0x1

    if-eq v12, v13, :cond_8

    move v12, v7

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    move v8, v12

    move-object v12, v4

    const/16 v13, 0x2f

    move v14, v8

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v12

    move v9, v12

    move-object v12, v4

    const/16 v13, 0x3f

    move v14, v8

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v12

    move v10, v12

    move-object v12, v4

    const/16 v13, 0x23

    move v14, v8

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v12

    move v11, v12

    move v12, v7

    if-eqz v12, :cond_4

    move v12, v9

    const/4 v13, -0x1

    if-ne v12, v13, :cond_4

    move v12, v10

    const/4 v13, -0x1

    if-ne v12, v13, :cond_4

    move v12, v11

    const/4 v13, -0x1

    if-eq v12, v13, :cond_6

    :cond_4
    move v12, v7

    if-eqz v12, :cond_5

    move-object v12, v1

    if-nez v12, :cond_9

    move v12, v11

    if-eqz v12, :cond_9

    move v12, v3

    if-nez v12, :cond_9

    :cond_5
    new-instance v12, Lorg/apache/xerces/util/URI$MalformedURIException;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const-string/jumbo v14, "No scheme found in URI."

    invoke-direct {v13, v14}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_6
    move-object v12, v0

    move-object v13, v4

    invoke-direct {v12, v13}, Lorg/apache/xerces/util/URI;->initializeScheme(Ljava/lang/String;)V

    move-object v12, v0

    iget-object v12, v12, Lorg/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    move v6, v12

    move v12, v7

    move v13, v5

    const/4 v14, 0x1

    add-int/lit8 v13, v13, -0x1

    if-eq v12, v13, :cond_7

    move-object v12, v4

    move v13, v7

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x23

    if-ne v12, v13, :cond_9

    :cond_7
    new-instance v12, Lorg/apache/xerces/util/URI$MalformedURIException;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const-string/jumbo v14, "Scheme specific part cannot be empty."

    invoke-direct {v13, v14}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_8
    move-object v12, v1

    if-nez v12, :cond_9

    move-object v12, v4

    const/16 v13, 0x23

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    if-eqz v12, :cond_9

    move v12, v3

    if-nez v12, :cond_9

    new-instance v12, Lorg/apache/xerces/util/URI$MalformedURIException;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const-string/jumbo v14, "No scheme found in URI."

    invoke-direct {v13, v14}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_9
    move v12, v6

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    move v13, v5

    if-ge v12, v13, :cond_b

    move-object v12, v4

    move v13, v6

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x2f

    if-ne v12, v13, :cond_b

    move-object v12, v4

    move v13, v6

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x2f

    if-ne v12, v13, :cond_b

    add-int/lit8 v6, v6, 0x2

    move v12, v6

    move v8, v12

    const/4 v12, 0x0

    move v9, v12

    :goto_2
    move v12, v6

    move v13, v5

    if-lt v12, v13, :cond_d

    :cond_a
    :goto_3
    move v12, v6

    move v13, v8

    if-le v12, v13, :cond_f

    move-object v12, v0

    move-object v13, v4

    move v14, v8

    move v15, v6

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lorg/apache/xerces/util/URI;->initializeAuthority(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_b

    move v12, v8

    const/4 v13, 0x2

    add-int/lit8 v12, v12, -0x2

    move v6, v12

    :cond_b
    :goto_4
    move-object v12, v0

    move-object v13, v4

    move v14, v6

    invoke-direct {v12, v13, v14}, Lorg/apache/xerces/util/URI;->initializePath(Ljava/lang/String;I)V

    move-object v12, v1

    if-eqz v12, :cond_c

    move-object v12, v0

    move-object v13, v1

    invoke-virtual {v12, v13}, Lorg/apache/xerces/util/URI;->absolutize(Lorg/apache/xerces/util/URI;)V

    :cond_c
    goto/16 :goto_1

    :cond_d
    move-object v12, v4

    move v13, v6

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    move v9, v12

    move v12, v9

    const/16 v13, 0x2f

    if-eq v12, v13, :cond_a

    move v12, v9

    const/16 v13, 0x3f

    if-eq v12, v13, :cond_a

    move v12, v9

    const/16 v13, 0x23

    if-ne v12, v13, :cond_e

    goto :goto_3

    :cond_e
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_f
    move-object v12, v0

    const-string/jumbo v13, ""

    iput-object v13, v12, Lorg/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    goto :goto_4
.end method

.method private initializeAuthority(Ljava/lang/String;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v12, 0x0

    move v2, v12

    const/4 v12, 0x0

    move v3, v12

    move-object v12, v1

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    move v4, v12

    const/4 v12, 0x0

    move v5, v12

    const/4 v12, 0x0

    move-object v6, v12

    move-object v12, v1

    const/16 v13, 0x40

    move v14, v3

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->indexOf(II)I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_0

    :goto_0
    move v12, v2

    move v13, v4

    if-lt v12, v13, :cond_3

    :goto_1
    move-object v12, v1

    move v13, v3

    move v14, v2

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    move-object v6, v12

    add-int/lit8 v2, v2, 0x1

    :cond_0
    const/4 v12, 0x0

    move-object v7, v12

    move v12, v2

    move v3, v12

    const/4 v12, 0x0

    move v8, v12

    move v12, v2

    move v13, v4

    if-ge v12, v13, :cond_1

    move-object v12, v1

    move v13, v3

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x5b

    if-ne v12, v13, :cond_7

    move-object v12, v1

    const/16 v13, 0x5d

    move v14, v3

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->indexOf(II)I

    move-result v12

    move v9, v12

    move v12, v9

    const/4 v13, -0x1

    if-eq v12, v13, :cond_5

    move v12, v9

    :goto_2
    move v2, v12

    move v12, v2

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    move v13, v4

    if-ge v12, v13, :cond_6

    move-object v12, v1

    move v13, v2

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x3a

    if-ne v12, v13, :cond_6

    add-int/lit8 v2, v2, 0x1

    const/4 v12, 0x1

    move v8, v12

    :cond_1
    :goto_3
    move-object v12, v1

    move v13, v3

    move v14, v2

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    move-object v7, v12

    const/4 v12, -0x1

    move v9, v12

    move-object v12, v7

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_2

    move v12, v8

    if-eqz v12, :cond_2

    add-int/lit8 v2, v2, 0x1

    move v12, v2

    move v3, v12

    :goto_4
    move v12, v2

    move v13, v4

    if-lt v12, v13, :cond_a

    move-object v12, v1

    move v13, v3

    move v14, v2

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    move-object v10, v12

    move-object v12, v10

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_2

    move-object v12, v10

    :try_start_0
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    move v9, v12

    move v12, v9

    const/4 v13, -0x1

    if-ne v12, v13, :cond_2

    add-int/lit8 v9, v9, -0x1

    :cond_2
    :goto_5
    move-object v12, v0

    move-object v13, v7

    move v14, v9

    move-object v15, v6

    invoke-direct {v12, v13, v14, v15}, Lorg/apache/xerces/util/URI;->isValidServerBasedAuthority(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_b

    move-object v12, v0

    move-object v13, v7

    iput-object v13, v12, Lorg/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    move-object v12, v0

    move v13, v9

    iput v13, v12, Lorg/apache/xerces/util/URI;->m_port:I

    move-object v12, v0

    move-object v13, v6

    iput-object v13, v12, Lorg/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    const/4 v12, 0x1

    move v0, v12

    :goto_6
    return v0

    :cond_3
    move-object v12, v1

    move v13, v2

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    move v5, v12

    move v12, v5

    const/16 v13, 0x40

    if-ne v12, v13, :cond_4

    goto/16 :goto_1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_5
    move v12, v4

    goto :goto_2

    :cond_6
    move v12, v4

    move v2, v12

    goto :goto_3

    :cond_7
    move-object v12, v1

    const/16 v13, 0x3a

    move v14, v4

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v12

    move v9, v12

    move v12, v9

    move v13, v3

    if-le v12, v13, :cond_8

    move v12, v9

    :goto_7
    move v2, v12

    move v12, v2

    move v13, v4

    if-eq v12, v13, :cond_9

    const/4 v12, 0x1

    :goto_8
    move v8, v12

    goto :goto_3

    :cond_8
    move v12, v4

    goto :goto_7

    :cond_9
    const/4 v12, 0x0

    goto :goto_8

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :catch_0
    move-exception v12

    move-object v11, v12

    const/4 v12, -0x2

    move v9, v12

    goto :goto_5

    :cond_b
    move-object v12, v0

    move-object v13, v1

    invoke-direct {v12, v13}, Lorg/apache/xerces/util/URI;->isValidRegistryBasedAuthority(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_c

    move-object v12, v0

    move-object v13, v1

    iput-object v13, v12, Lorg/apache/xerces/util/URI;->m_regAuthority:Ljava/lang/String;

    const/4 v12, 0x1

    move v0, v12

    goto :goto_6

    :cond_c
    const/4 v12, 0x0

    move v0, v12

    goto :goto_6
.end method

.method private initializePath(Ljava/lang/String;I)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v7, v1

    if-nez v7, :cond_0

    new-instance v7, Lorg/apache/xerces/util/URI$MalformedURIException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const-string/jumbo v9, "Cannot initialize path from null string!"

    invoke-direct {v8, v9}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_0
    move v7, v2

    move v3, v7

    move v7, v2

    move v4, v7

    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    move v5, v7

    const/4 v7, 0x0

    move v6, v7

    move v7, v4

    move v8, v5

    if-ge v7, v8, :cond_2

    move-object v7, v0

    invoke-virtual {v7}, Lorg/apache/xerces/util/URI;->getScheme()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    move-object v7, v1

    move v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2f

    if-ne v7, v8, :cond_10

    :cond_1
    :goto_0
    move v7, v3

    move v8, v5

    if-lt v7, v8, :cond_5

    :cond_2
    :goto_1
    move-object v7, v0

    move-object v8, v1

    move v9, v4

    move v10, v3

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    move v7, v6

    const/16 v8, 0x3f

    if-ne v7, v8, :cond_3

    add-int/lit8 v3, v3, 0x1

    move v7, v3

    move v4, v7

    :goto_2
    move v7, v3

    move v8, v5

    if-lt v7, v8, :cond_12

    :goto_3
    move-object v7, v0

    move-object v8, v1

    move v9, v4

    move v10, v3

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lorg/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    :cond_3
    move v7, v6

    const/16 v8, 0x23

    if-ne v7, v8, :cond_4

    add-int/lit8 v3, v3, 0x1

    move v7, v3

    move v4, v7

    :goto_4
    move v7, v3

    move v8, v5

    if-lt v7, v8, :cond_18

    move-object v7, v0

    move-object v8, v1

    move v9, v4

    move v10, v3

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lorg/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    :cond_4
    return-void

    :cond_5
    move-object v7, v1

    move v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move v6, v7

    move v7, v6

    const/16 v8, 0x25

    if-ne v7, v8, :cond_9

    move v7, v3

    const/4 v8, 0x2

    add-int/lit8 v7, v7, 0x2

    move v8, v5

    if-ge v7, v8, :cond_6

    move-object v7, v1

    move v8, v3

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lorg/apache/xerces/util/URI;->isHex(C)Z

    move-result v7

    if-eqz v7, :cond_6

    move-object v7, v1

    move v8, v3

    const/4 v9, 0x2

    add-int/lit8 v8, v8, 0x2

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lorg/apache/xerces/util/URI;->isHex(C)Z

    move-result v7

    if-nez v7, :cond_7

    :cond_6
    new-instance v7, Lorg/apache/xerces/util/URI$MalformedURIException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const-string/jumbo v9, "Path contains invalid escape sequence!"

    invoke-direct {v8, v9}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_7
    add-int/lit8 v3, v3, 0x2

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_9
    move v7, v6

    invoke-static {v7}, Lorg/apache/xerces/util/URI;->isPathCharacter(C)Z

    move-result v7

    if-nez v7, :cond_8

    move v7, v6

    const/16 v8, 0x3f

    if-eq v7, v8, :cond_2

    move v7, v6

    const/16 v8, 0x23

    if-ne v7, v8, :cond_a

    goto/16 :goto_1

    :cond_a
    new-instance v7, Lorg/apache/xerces/util/URI$MalformedURIException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    new-instance v9, Ljava/lang/StringBuffer;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v10, "Path contains invalid character: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    move v10, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_b
    move-object v7, v1

    move v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move v6, v7

    move v7, v6

    const/16 v8, 0x3f

    if-eq v7, v8, :cond_2

    move v7, v6

    const/16 v8, 0x23

    if-ne v7, v8, :cond_c

    goto/16 :goto_1

    :cond_c
    move v7, v6

    const/16 v8, 0x25

    if-ne v7, v8, :cond_11

    move v7, v3

    const/4 v8, 0x2

    add-int/lit8 v7, v7, 0x2

    move v8, v5

    if-ge v7, v8, :cond_d

    move-object v7, v1

    move v8, v3

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lorg/apache/xerces/util/URI;->isHex(C)Z

    move-result v7

    if-eqz v7, :cond_d

    move-object v7, v1

    move v8, v3

    const/4 v9, 0x2

    add-int/lit8 v8, v8, 0x2

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lorg/apache/xerces/util/URI;->isHex(C)Z

    move-result v7

    if-nez v7, :cond_e

    :cond_d
    new-instance v7, Lorg/apache/xerces/util/URI$MalformedURIException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const-string/jumbo v9, "Opaque part contains invalid escape sequence!"

    invoke-direct {v8, v9}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_e
    add-int/lit8 v3, v3, 0x2

    :cond_f
    add-int/lit8 v3, v3, 0x1

    :cond_10
    move v7, v3

    move v8, v5

    if-lt v7, v8, :cond_b

    goto/16 :goto_1

    :cond_11
    move v7, v6

    invoke-static {v7}, Lorg/apache/xerces/util/URI;->isURICharacter(C)Z

    move-result v7

    if-nez v7, :cond_f

    new-instance v7, Lorg/apache/xerces/util/URI$MalformedURIException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    new-instance v9, Ljava/lang/StringBuffer;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v10, "Opaque part contains invalid character: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    move v10, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_12
    move-object v7, v1

    move v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move v6, v7

    move v7, v6

    const/16 v8, 0x23

    if-ne v7, v8, :cond_13

    goto/16 :goto_3

    :cond_13
    move v7, v6

    const/16 v8, 0x25

    if-ne v7, v8, :cond_17

    move v7, v3

    const/4 v8, 0x2

    add-int/lit8 v7, v7, 0x2

    move v8, v5

    if-ge v7, v8, :cond_14

    move-object v7, v1

    move v8, v3

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lorg/apache/xerces/util/URI;->isHex(C)Z

    move-result v7

    if-eqz v7, :cond_14

    move-object v7, v1

    move v8, v3

    const/4 v9, 0x2

    add-int/lit8 v8, v8, 0x2

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lorg/apache/xerces/util/URI;->isHex(C)Z

    move-result v7

    if-nez v7, :cond_15

    :cond_14
    new-instance v7, Lorg/apache/xerces/util/URI$MalformedURIException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const-string/jumbo v9, "Query string contains invalid escape sequence!"

    invoke-direct {v8, v9}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_15
    add-int/lit8 v3, v3, 0x2

    :cond_16
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    :cond_17
    move v7, v6

    invoke-static {v7}, Lorg/apache/xerces/util/URI;->isURICharacter(C)Z

    move-result v7

    if-nez v7, :cond_16

    new-instance v7, Lorg/apache/xerces/util/URI$MalformedURIException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    new-instance v9, Ljava/lang/StringBuffer;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v10, "Query string contains invalid character: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    move v10, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_18
    move-object v7, v1

    move v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move v6, v7

    move v7, v6

    const/16 v8, 0x25

    if-ne v7, v8, :cond_1c

    move v7, v3

    const/4 v8, 0x2

    add-int/lit8 v7, v7, 0x2

    move v8, v5

    if-ge v7, v8, :cond_19

    move-object v7, v1

    move v8, v3

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lorg/apache/xerces/util/URI;->isHex(C)Z

    move-result v7

    if-eqz v7, :cond_19

    move-object v7, v1

    move v8, v3

    const/4 v9, 0x2

    add-int/lit8 v8, v8, 0x2

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lorg/apache/xerces/util/URI;->isHex(C)Z

    move-result v7

    if-nez v7, :cond_1a

    :cond_19
    new-instance v7, Lorg/apache/xerces/util/URI$MalformedURIException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const-string/jumbo v9, "Fragment contains invalid escape sequence!"

    invoke-direct {v8, v9}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_1a
    add-int/lit8 v3, v3, 0x2

    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_4

    :cond_1c
    move v7, v6

    invoke-static {v7}, Lorg/apache/xerces/util/URI;->isURICharacter(C)Z

    move-result v7

    if-nez v7, :cond_1b

    new-instance v7, Lorg/apache/xerces/util/URI$MalformedURIException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    new-instance v9, Ljava/lang/StringBuffer;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v10, "Fragment contains invalid character: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    move v10, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method private initializeScheme(Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    move v2, v6

    const/4 v6, 0x0

    move v3, v6

    const/4 v6, 0x0

    move-object v4, v6

    const/4 v6, 0x0

    move v5, v6

    :goto_0
    move v6, v3

    move v7, v2

    if-lt v6, v7, :cond_1

    :cond_0
    :goto_1
    move-object v6, v1

    const/4 v7, 0x0

    move v8, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    move-object v6, v4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_3

    new-instance v6, Lorg/apache/xerces/util/URI$MalformedURIException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string/jumbo v8, "No scheme found in URI."

    invoke-direct {v7, v8}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_1
    move-object v6, v1

    move v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move v5, v6

    move v6, v5

    const/16 v7, 0x3a

    if-eq v6, v7, :cond_0

    move v6, v5

    const/16 v7, 0x2f

    if-eq v6, v7, :cond_0

    move v6, v5

    const/16 v7, 0x3f

    if-eq v6, v7, :cond_0

    move v6, v5

    const/16 v7, 0x23

    if-ne v6, v7, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    move-object v6, v0

    move-object v7, v4

    invoke-virtual {v6, v7}, Lorg/apache/xerces/util/URI;->setScheme(Ljava/lang/String;)V

    return-void
.end method

.method private static isAlpha(C)Z
    .locals 3

    move v0, p0

    move v1, v0

    const/16 v2, 0x61

    if-lt v1, v2, :cond_0

    move v1, v0

    const/16 v2, 0x7a

    if-le v1, v2, :cond_1

    :cond_0
    move v1, v0

    const/16 v2, 0x41

    if-lt v1, v2, :cond_2

    move v1, v0

    const/16 v2, 0x5a

    if-gt v1, v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isAlphanum(C)Z
    .locals 3

    move v0, p0

    move v1, v0

    const/16 v2, 0x7a

    if-gt v1, v2, :cond_0

    sget-object v1, Lorg/apache/xerces/util/URI;->fgLookupTable:[B

    move v2, v0

    aget-byte v1, v1, v2

    const/16 v2, 0x30

    and-int/lit8 v1, v1, 0x30

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isConformantSchemeName(Ljava/lang/String;)Z
    .locals 6

    move-object v0, p0

    move-object v4, v0

    if-eqz v4, :cond_0

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    const/4 v4, 0x0

    move v0, v4

    :goto_0
    return v0

    :cond_1
    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lorg/apache/xerces/util/URI;->isAlpha(C)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    :cond_2
    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    move v2, v4

    const/4 v4, 0x1

    move v3, v4

    :goto_1
    move v4, v3

    move v5, v2

    if-lt v4, v5, :cond_3

    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    :cond_3
    move-object v4, v0

    move v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move v1, v4

    move v4, v1

    invoke-static {v4}, Lorg/apache/xerces/util/URI;->isSchemeCharacter(C)Z

    move-result v4

    if-nez v4, :cond_4

    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private static isDigit(C)Z
    .locals 3

    move v0, p0

    move v1, v0

    const/16 v2, 0x30

    if-lt v1, v2, :cond_0

    move v1, v0

    const/16 v2, 0x39

    if-gt v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isHex(C)Z
    .locals 3

    move v0, p0

    move v1, v0

    const/16 v2, 0x66

    if-gt v1, v2, :cond_0

    sget-object v1, Lorg/apache/xerces/util/URI;->fgLookupTable:[B

    move v2, v0

    aget-byte v1, v1, v2

    const/16 v2, 0x40

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isPathCharacter(C)Z
    .locals 3

    move v0, p0

    move v1, v0

    const/16 v2, 0x7e

    if-gt v1, v2, :cond_0

    sget-object v1, Lorg/apache/xerces/util/URI;->fgLookupTable:[B

    move v2, v0

    aget-byte v1, v1, v2

    const/16 v2, 0xb2

    and-int/lit16 v1, v1, 0xb2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isReservedCharacter(C)Z
    .locals 3

    move v0, p0

    move v1, v0

    const/16 v2, 0x5d

    if-gt v1, v2, :cond_0

    sget-object v1, Lorg/apache/xerces/util/URI;->fgLookupTable:[B

    move v2, v0

    aget-byte v1, v1, v2

    const/4 v2, 0x1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isSchemeCharacter(C)Z
    .locals 3

    move v0, p0

    move v1, v0

    const/16 v2, 0x7a

    if-gt v1, v2, :cond_0

    sget-object v1, Lorg/apache/xerces/util/URI;->fgLookupTable:[B

    move v2, v0

    aget-byte v1, v1, v2

    const/16 v2, 0x34

    and-int/lit8 v1, v1, 0x34

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isURICharacter(C)Z
    .locals 3

    move v0, p0

    move v1, v0

    const/16 v2, 0x7e

    if-gt v1, v2, :cond_0

    sget-object v1, Lorg/apache/xerces/util/URI;->fgLookupTable:[B

    move v2, v0

    aget-byte v1, v1, v2

    const/16 v2, 0x33

    and-int/lit8 v1, v1, 0x33

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isURIString(Ljava/lang/String;)Z
    .locals 7

    move-object v0, p0

    move-object v4, v0

    if-nez v4, :cond_0

    const/4 v4, 0x0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    move v1, v4

    const/4 v4, 0x0

    move v2, v4

    const/4 v4, 0x0

    move v3, v4

    :goto_1
    move v4, v3

    move v5, v1

    if-lt v4, v5, :cond_1

    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    :cond_1
    move-object v4, v0

    move v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move v2, v4

    move v4, v2

    const/16 v5, 0x25

    if-ne v4, v5, :cond_4

    move v4, v3

    const/4 v5, 0x2

    add-int/lit8 v4, v4, 0x2

    move v5, v1

    if-ge v4, v5, :cond_2

    move-object v4, v0

    move v5, v3

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lorg/apache/xerces/util/URI;->isHex(C)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v0

    move v5, v3

    const/4 v6, 0x2

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lorg/apache/xerces/util/URI;->isHex(C)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    :cond_3
    add-int/lit8 v3, v3, 0x2

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    move v4, v2

    invoke-static {v4}, Lorg/apache/xerces/util/URI;->isURICharacter(C)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method private static isUnreservedCharacter(C)Z
    .locals 3

    move v0, p0

    move v1, v0

    const/16 v2, 0x7e

    if-gt v1, v2, :cond_0

    sget-object v1, Lorg/apache/xerces/util/URI;->fgLookupTable:[B

    move v2, v0

    aget-byte v1, v1, v2

    const/16 v2, 0x32

    and-int/lit8 v1, v1, 0x32

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isUserinfoCharacter(C)Z
    .locals 3

    move v0, p0

    move v1, v0

    const/16 v2, 0x7a

    if-gt v1, v2, :cond_0

    sget-object v1, Lorg/apache/xerces/util/URI;->fgLookupTable:[B

    move v2, v0

    aget-byte v1, v1, v2

    const/16 v2, 0x3a

    and-int/lit8 v1, v1, 0x3a

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isValidRegistryBasedAuthority(Ljava/lang/String;)Z
    .locals 8

    move-object v0, p0

    move-object v1, p1

    const/4 v5, 0x0

    move v2, v5

    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move v3, v5

    :goto_0
    move v5, v2

    move v6, v3

    if-lt v5, v6, :cond_0

    const/4 v5, 0x1

    move v0, v5

    :goto_1
    return v0

    :cond_0
    move-object v5, v1

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move v4, v5

    move v5, v4

    const/16 v6, 0x25

    if-ne v5, v6, :cond_4

    move v5, v2

    const/4 v6, 0x2

    add-int/lit8 v5, v5, 0x2

    move v6, v3

    if-ge v5, v6, :cond_1

    move-object v5, v1

    move v6, v2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lorg/apache/xerces/util/URI;->isHex(C)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v1

    move v6, v2

    const/4 v7, 0x2

    add-int/lit8 v6, v6, 0x2

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lorg/apache/xerces/util/URI;->isHex(C)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    const/4 v5, 0x0

    move v0, v5

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    move v5, v4

    invoke-static {v5}, Lorg/apache/xerces/util/URI;->isPathCharacter(C)Z

    move-result v5

    if-nez v5, :cond_3

    const/4 v5, 0x0

    move v0, v5

    goto :goto_1
.end method

.method private isValidServerBasedAuthority(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v7, v1

    invoke-static {v7}, Lorg/apache/xerces/util/URI;->isWellFormedAddress(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    const/4 v7, 0x0

    move v0, v7

    :goto_0
    return v0

    :cond_0
    move v7, v2

    const/4 v8, -0x1

    if-lt v7, v8, :cond_1

    move v7, v2

    const v8, 0xffff

    if-le v7, v8, :cond_2

    :cond_1
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    :cond_2
    move-object v7, v3

    if-eqz v7, :cond_3

    const/4 v7, 0x0

    move v4, v7

    move-object v7, v3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    move v5, v7

    const/4 v7, 0x0

    move v6, v7

    :goto_1
    move v7, v4

    move v8, v5

    if-lt v7, v8, :cond_4

    :cond_3
    const/4 v7, 0x1

    move v0, v7

    goto :goto_0

    :cond_4
    move-object v7, v3

    move v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move v6, v7

    move v7, v6

    const/16 v8, 0x25

    if-ne v7, v8, :cond_8

    move v7, v4

    const/4 v8, 0x2

    add-int/lit8 v7, v7, 0x2

    move v8, v5

    if-ge v7, v8, :cond_5

    move-object v7, v3

    move v8, v4

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lorg/apache/xerces/util/URI;->isHex(C)Z

    move-result v7

    if-eqz v7, :cond_5

    move-object v7, v3

    move v8, v4

    const/4 v9, 0x2

    add-int/lit8 v8, v8, 0x2

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lorg/apache/xerces/util/URI;->isHex(C)Z

    move-result v7

    if-nez v7, :cond_6

    :cond_5
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    :cond_6
    add-int/lit8 v4, v4, 0x2

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_8
    move v7, v6

    invoke-static {v7}, Lorg/apache/xerces/util/URI;->isUserinfoCharacter(C)Z

    move-result v7

    if-nez v7, :cond_7

    const/4 v7, 0x0

    move v0, v7

    goto :goto_0
.end method

.method public static isWellFormedAddress(Ljava/lang/String;)Z
    .locals 9

    move-object v0, p0

    move-object v6, v0

    if-nez v6, :cond_0

    const/4 v6, 0x0

    move v0, v6

    :goto_0
    return v0

    :cond_0
    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    move v1, v6

    move v6, v1

    if-nez v6, :cond_1

    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    :cond_1
    move-object v6, v0

    const-string/jumbo v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v6, v0

    invoke-static {v6}, Lorg/apache/xerces/util/URI;->isWellFormedIPv6Reference(Ljava/lang/String;)Z

    move-result v6

    move v0, v6

    goto :goto_0

    :cond_2
    move-object v6, v0

    const-string/jumbo v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    move-object v6, v0

    const-string/jumbo v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    move-object v6, v0

    const-string/jumbo v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    :cond_4
    move-object v6, v0

    const/16 v7, 0x2e

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    move v2, v6

    move-object v6, v0

    const-string/jumbo v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    move-object v6, v0

    const/4 v7, 0x0

    move v8, v2

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x2e

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    move v2, v6

    :cond_5
    move v6, v2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    move v7, v1

    if-ge v6, v7, :cond_6

    move-object v6, v0

    move v7, v2

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lorg/apache/xerces/util/URI;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_6

    move-object v6, v0

    invoke-static {v6}, Lorg/apache/xerces/util/URI;->isWellFormedIPv4Address(Ljava/lang/String;)Z

    move-result v6

    move v0, v6

    goto :goto_0

    :cond_6
    move v6, v1

    const/16 v7, 0xff

    if-le v6, v7, :cond_7

    const/4 v6, 0x0

    move v0, v6

    goto/16 :goto_0

    :cond_7
    const/4 v6, 0x0

    move v4, v6

    const/4 v6, 0x0

    move v5, v6

    :goto_1
    move v6, v5

    move v7, v1

    if-lt v6, v7, :cond_8

    const/4 v6, 0x1

    move v0, v6

    goto/16 :goto_0

    :cond_8
    move-object v6, v0

    move v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move v3, v6

    move v6, v3

    const/16 v7, 0x2e

    if-ne v6, v7, :cond_c

    move-object v6, v0

    move v7, v5

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lorg/apache/xerces/util/URI;->isAlphanum(C)Z

    move-result v6

    if-nez v6, :cond_9

    const/4 v6, 0x0

    move v0, v6

    goto/16 :goto_0

    :cond_9
    move v6, v5

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    move v7, v1

    if-ge v6, v7, :cond_a

    move-object v6, v0

    move v7, v5

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lorg/apache/xerces/util/URI;->isAlphanum(C)Z

    move-result v6

    if-nez v6, :cond_a

    const/4 v6, 0x0

    move v0, v6

    goto/16 :goto_0

    :cond_a
    const/4 v6, 0x0

    move v4, v6

    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_c
    move v6, v3

    invoke-static {v6}, Lorg/apache/xerces/util/URI;->isAlphanum(C)Z

    move-result v6

    if-nez v6, :cond_d

    move v6, v3

    const/16 v7, 0x2d

    if-eq v6, v7, :cond_d

    const/4 v6, 0x0

    move v0, v6

    goto/16 :goto_0

    :cond_d
    add-int/lit8 v4, v4, 0x1

    move v6, v4

    const/16 v7, 0x3f

    if-le v6, v7, :cond_b

    const/4 v6, 0x0

    move v0, v6

    goto/16 :goto_0
.end method

.method public static isWellFormedIPv4Address(Ljava/lang/String;)Z
    .locals 11

    move-object v0, p0

    move-object v8, v0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    move v1, v8

    const/4 v8, 0x0

    move v3, v8

    const/4 v8, 0x0

    move v4, v8

    const/4 v8, 0x0

    move v5, v8

    :goto_0
    move v8, v5

    move v9, v1

    if-lt v8, v9, :cond_0

    move v8, v3

    const/4 v9, 0x3

    if-ne v8, v9, :cond_9

    const/4 v8, 0x1

    :goto_1
    move v0, v8

    :goto_2
    return v0

    :cond_0
    move-object v8, v0

    move v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move v2, v8

    move v8, v2

    const/16 v9, 0x2e

    if-ne v8, v9, :cond_4

    move v8, v5

    if-lez v8, :cond_1

    move-object v8, v0

    move v9, v5

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lorg/apache/xerces/util/URI;->isDigit(C)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_1
    move v8, v5

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move v9, v1

    if-ge v8, v9, :cond_3

    move-object v8, v0

    move v9, v5

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lorg/apache/xerces/util/URI;->isDigit(C)Z

    move-result v8

    if-nez v8, :cond_3

    :cond_2
    const/4 v8, 0x0

    move v0, v8

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    move v4, v8

    add-int/lit8 v3, v3, 0x1

    move v8, v3

    const/4 v9, 0x3

    if-le v8, v9, :cond_8

    const/4 v8, 0x0

    move v0, v8

    goto :goto_2

    :cond_4
    move v8, v2

    invoke-static {v8}, Lorg/apache/xerces/util/URI;->isDigit(C)Z

    move-result v8

    if-nez v8, :cond_5

    const/4 v8, 0x0

    move v0, v8

    goto :goto_2

    :cond_5
    add-int/lit8 v4, v4, 0x1

    move v8, v4

    const/4 v9, 0x3

    if-le v8, v9, :cond_6

    const/4 v8, 0x0

    move v0, v8

    goto :goto_2

    :cond_6
    move v8, v4

    const/4 v9, 0x3

    if-ne v8, v9, :cond_8

    move-object v8, v0

    move v9, v5

    const/4 v10, 0x2

    add-int/lit8 v9, v9, -0x2

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move v6, v8

    move-object v8, v0

    move v9, v5

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move v7, v8

    move v8, v6

    const/16 v9, 0x32

    if-lt v8, v9, :cond_8

    move v8, v6

    const/16 v9, 0x32

    if-ne v8, v9, :cond_7

    move v8, v7

    const/16 v9, 0x35

    if-lt v8, v9, :cond_8

    move v8, v7

    const/16 v9, 0x35

    if-ne v8, v9, :cond_7

    move v8, v2

    const/16 v9, 0x35

    if-le v8, v9, :cond_8

    :cond_7
    const/4 v8, 0x0

    move v0, v8

    goto/16 :goto_2

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_9
    const/4 v8, 0x0

    goto/16 :goto_1
.end method

.method public static isWellFormedIPv6Reference(Ljava/lang/String;)Z
    .locals 13

    move-object v0, p0

    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    move v1, v6

    const/4 v6, 0x1

    move v2, v6

    move v6, v1

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move v3, v6

    move v6, v1

    const/4 v7, 0x2

    if-le v6, v7, :cond_0

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x5b

    if-ne v6, v7, :cond_0

    move-object v6, v0

    move v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x5d

    if-eq v6, v7, :cond_1

    :cond_0
    const/4 v6, 0x0

    move v0, v6

    :goto_0
    return v0

    :cond_1
    const/4 v6, 0x1

    new-array v6, v6, [I

    move-object v4, v6

    move-object v6, v0

    move v7, v2

    move v8, v3

    move-object v9, v4

    invoke-static {v6, v7, v8, v9}, Lorg/apache/xerces/util/URI;->scanHexSequence(Ljava/lang/String;II[I)I

    move-result v6

    move v2, v6

    move v6, v2

    const/4 v7, -0x1

    if-ne v6, v7, :cond_2

    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    :cond_2
    move v6, v2

    move v7, v3

    if-ne v6, v7, :cond_4

    move-object v6, v4

    const/4 v7, 0x0

    aget v6, v6, v7

    const/16 v7, 0x8

    if-ne v6, v7, :cond_3

    const/4 v6, 0x1

    :goto_1
    move v0, v6

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    :cond_4
    move v6, v2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    move v7, v3

    if-ge v6, v7, :cond_8

    move-object v6, v0

    move v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x3a

    if-ne v6, v7, :cond_8

    move-object v6, v0

    move v7, v2

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x3a

    if-ne v6, v7, :cond_6

    move-object v6, v4

    const/4 v7, 0x0

    move-object v10, v6

    move v11, v7

    move-object v6, v10

    move v7, v11

    move-object v8, v10

    move v9, v11

    aget v8, v8, v9

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move-object v10, v6

    move v11, v7

    move v12, v8

    move v6, v12

    move-object v7, v10

    move v8, v11

    move v9, v12

    aput v9, v7, v8

    const/16 v7, 0x8

    if-le v6, v7, :cond_5

    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    :cond_5
    add-int/lit8 v2, v2, 0x2

    move v6, v2

    move v7, v3

    if-ne v6, v7, :cond_9

    const/4 v6, 0x1

    move v0, v6

    goto :goto_0

    :cond_6
    move-object v6, v4

    const/4 v7, 0x0

    aget v6, v6, v7

    const/4 v7, 0x6

    if-ne v6, v7, :cond_7

    move-object v6, v0

    move v7, v2

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move v8, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/xerces/util/URI;->isWellFormedIPv4Address(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v6, 0x1

    :goto_2
    move v0, v6

    goto/16 :goto_0

    :cond_7
    const/4 v6, 0x0

    goto :goto_2

    :cond_8
    const/4 v6, 0x0

    move v0, v6

    goto/16 :goto_0

    :cond_9
    move-object v6, v4

    const/4 v7, 0x0

    aget v6, v6, v7

    move v5, v6

    move-object v6, v0

    move v7, v2

    move v8, v3

    move-object v9, v4

    invoke-static {v6, v7, v8, v9}, Lorg/apache/xerces/util/URI;->scanHexSequence(Ljava/lang/String;II[I)I

    move-result v6

    move v2, v6

    move v6, v2

    move v7, v3

    if-eq v6, v7, :cond_a

    move v6, v2

    const/4 v7, -0x1

    if-eq v6, v7, :cond_c

    move-object v6, v0

    move-object v7, v4

    const/4 v8, 0x0

    aget v7, v7, v8

    move v8, v5

    if-le v7, v8, :cond_b

    move v7, v2

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    :goto_3
    move v8, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/xerces/util/URI;->isWellFormedIPv4Address(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    :cond_a
    const/4 v6, 0x1

    :goto_4
    move v0, v6

    goto/16 :goto_0

    :cond_b
    move v7, v2

    goto :goto_3

    :cond_c
    const/4 v6, 0x0

    goto :goto_4
.end method

.method private static scanHexSequence(Ljava/lang/String;II[I)I
    .locals 15

    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v8, 0x0

    move v5, v8

    move v8, v1

    move v6, v8

    :goto_0
    move v8, v1

    move v9, v2

    if-lt v8, v9, :cond_0

    move v8, v5

    if-lez v8, :cond_9

    move-object v8, v3

    const/4 v9, 0x0

    move-object v12, v8

    move v13, v9

    move-object v8, v12

    move v9, v13

    move-object v10, v12

    move v11, v13

    aget v10, v10, v11

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    move-object v12, v8

    move v13, v9

    move v14, v10

    move v8, v14

    move-object v9, v12

    move v10, v13

    move v11, v14

    aput v11, v9, v10

    const/16 v9, 0x8

    if-gt v8, v9, :cond_9

    move v8, v2

    :goto_1
    move v0, v8

    :goto_2
    return v0

    :cond_0
    move-object v8, v0

    move v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move v4, v8

    move v8, v4

    const/16 v9, 0x3a

    if-ne v8, v9, :cond_5

    move v8, v5

    if-lez v8, :cond_1

    move-object v8, v3

    const/4 v9, 0x0

    move-object v12, v8

    move v13, v9

    move-object v8, v12

    move v9, v13

    move-object v10, v12

    move v11, v13

    aget v10, v10, v11

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    move-object v12, v8

    move v13, v9

    move v14, v10

    move v8, v14

    move-object v9, v12

    move v10, v13

    move v11, v14

    aput v11, v9, v10

    const/16 v9, 0x8

    if-le v8, v9, :cond_1

    const/4 v8, -0x1

    move v0, v8

    goto :goto_2

    :cond_1
    move v8, v5

    if-eqz v8, :cond_2

    move v8, v1

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move v9, v2

    if-ge v8, v9, :cond_3

    move-object v8, v0

    move v9, v1

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x3a

    if-ne v8, v9, :cond_3

    :cond_2
    move v8, v1

    move v0, v8

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    move v5, v8

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    move v8, v4

    invoke-static {v8}, Lorg/apache/xerces/util/URI;->isHex(C)Z

    move-result v8

    if-nez v8, :cond_8

    move v8, v4

    const/16 v9, 0x2e

    if-ne v8, v9, :cond_7

    move v8, v5

    const/4 v9, 0x4

    if-ge v8, v9, :cond_7

    move v8, v5

    if-lez v8, :cond_7

    move-object v8, v3

    const/4 v9, 0x0

    aget v8, v8, v9

    const/4 v9, 0x6

    if-gt v8, v9, :cond_7

    move v8, v1

    move v9, v5

    sub-int/2addr v8, v9

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    move v7, v8

    move v8, v7

    move v9, v6

    if-lt v8, v9, :cond_6

    move v8, v7

    :goto_3
    move v0, v8

    goto :goto_2

    :cond_6
    move v8, v7

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_7
    const/4 v8, -0x1

    move v0, v8

    goto :goto_2

    :cond_8
    add-int/lit8 v5, v5, 0x1

    move v8, v5

    const/4 v9, 0x4

    if-le v8, v9, :cond_4

    const/4 v8, -0x1

    move v0, v8

    goto/16 :goto_2

    :cond_9
    const/4 v8, -0x1

    goto/16 :goto_1
.end method


# virtual methods
.method public absolutize(Lorg/apache/xerces/util/URI;)V
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    if-nez v7, :cond_1

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    if-nez v7, :cond_1

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/util/URI;->m_regAuthority:Ljava/lang/String;

    if-nez v7, :cond_1

    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v8}, Lorg/apache/xerces/util/URI;->getScheme()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lorg/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v8}, Lorg/apache/xerces/util/URI;->getUserinfo()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lorg/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v8}, Lorg/apache/xerces/util/URI;->getHost()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lorg/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v8}, Lorg/apache/xerces/util/URI;->getPort()I

    move-result v8

    iput v8, v7, Lorg/apache/xerces/util/URI;->m_port:I

    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v8}, Lorg/apache/xerces/util/URI;->getRegBasedAuthority()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lorg/apache/xerces/util/URI;->m_regAuthority:Ljava/lang/String;

    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v8}, Lorg/apache/xerces/util/URI;->getPath()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    if-nez v7, :cond_0

    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v8}, Lorg/apache/xerces/util/URI;->getQueryString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lorg/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    if-nez v7, :cond_0

    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v8}, Lorg/apache/xerces/util/URI;->getFragment()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lorg/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    if-nez v7, :cond_2

    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v8}, Lorg/apache/xerces/util/URI;->getScheme()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lorg/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    if-nez v7, :cond_3

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/util/URI;->m_regAuthority:Ljava/lang/String;

    if-nez v7, :cond_3

    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v8}, Lorg/apache/xerces/util/URI;->getUserinfo()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lorg/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v8}, Lorg/apache/xerces/util/URI;->getHost()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lorg/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v8}, Lorg/apache/xerces/util/URI;->getPort()I

    move-result v8

    iput v8, v7, Lorg/apache/xerces/util/URI;->m_port:I

    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v8}, Lorg/apache/xerces/util/URI;->getRegBasedAuthority()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lorg/apache/xerces/util/URI;->m_regAuthority:Ljava/lang/String;

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_4

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    const-string/jumbo v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_0

    :cond_2
    goto :goto_0

    :cond_3
    goto :goto_0

    :cond_4
    const-string/jumbo v7, ""

    move-object v2, v7

    move-object v7, v1

    invoke-virtual {v7}, Lorg/apache/xerces/util/URI;->getPath()Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    move-object v7, v3

    if-eqz v7, :cond_8

    move-object v7, v3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_8

    move-object v7, v3

    const/16 v8, 0x2f

    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    move v4, v7

    move v7, v4

    const/4 v8, -0x1

    if-eq v7, v8, :cond_5

    move-object v7, v3

    const/4 v8, 0x0

    move v9, v4

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    move-object v2, v7

    :cond_5
    :goto_1
    move-object v7, v2

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v2, v7

    const/4 v7, -0x1

    move v4, v7

    :goto_2
    move-object v7, v2

    const-string/jumbo v8, "/./"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    move v11, v7

    move v7, v11

    move v8, v11

    move v4, v8

    const/4 v8, -0x1

    if-ne v7, v8, :cond_9

    move-object v7, v2

    const-string/jumbo v8, "/."

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    move-object v7, v2

    const/4 v8, 0x0

    move-object v9, v2

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    move-object v2, v7

    :cond_6
    const/4 v7, 0x1

    move v4, v7

    const/4 v7, -0x1

    move v5, v7

    const/4 v7, 0x0

    move-object v6, v7

    :goto_3
    move-object v7, v2

    const-string/jumbo v8, "/../"

    move v9, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    move v11, v7

    move v7, v11

    move v8, v11

    move v4, v8

    if-gtz v7, :cond_a

    move-object v7, v2

    const-string/jumbo v8, "/.."

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    move-object v7, v2

    const/4 v8, 0x0

    move-object v9, v2

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x3

    add-int/lit8 v9, v9, -0x3

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    move-object v7, v6

    const/16 v8, 0x2f

    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    move v5, v7

    move v7, v5

    const/4 v8, -0x1

    if-eq v7, v8, :cond_7

    move-object v7, v2

    const/4 v8, 0x0

    move v9, v5

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    move-object v2, v7

    :cond_7
    move-object v7, v0

    move-object v8, v2

    iput-object v8, v7, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    goto/16 :goto_0

    :cond_8
    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_5

    const-string/jumbo v7, "/"

    move-object v2, v7

    goto/16 :goto_1

    :cond_9
    move-object v7, v2

    const/4 v8, 0x0

    move v9, v4

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    move-object v8, v2

    move v9, v4

    const/4 v10, 0x3

    add-int/lit8 v9, v9, 0x3

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v2, v7

    goto/16 :goto_2

    :cond_a
    move-object v7, v2

    const/4 v8, 0x0

    move-object v9, v2

    const-string/jumbo v10, "/../"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    move-object v7, v6

    const/16 v8, 0x2f

    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    move v5, v7

    move v7, v5

    const/4 v8, -0x1

    if-eq v7, v8, :cond_c

    move-object v7, v6

    move v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, ".."

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    move-object v7, v2

    const/4 v8, 0x0

    move v9, v5

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    move-object v8, v2

    move v9, v4

    const/4 v10, 0x4

    add-int/lit8 v9, v9, 0x4

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v2, v7

    move v7, v5

    move v4, v7

    goto/16 :goto_3

    :cond_b
    add-int/lit8 v4, v4, 0x4

    goto/16 :goto_3

    :cond_c
    add-int/lit8 v4, v4, 0x4

    goto/16 :goto_3
.end method

.method public appendPath(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v2, v1

    invoke-static {v2}, Lorg/apache/xerces/util/URI;->isURIString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Lorg/apache/xerces/util/URI$MalformedURIException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string/jumbo v4, "Path contains invalid character!"

    invoke-direct {v3, v4}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    if-eqz v2, :cond_3

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_5

    :cond_3
    move-object v2, v1

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    :goto_1
    goto :goto_0

    :cond_4
    move-object v2, v0

    new-instance v3, Ljava/lang/StringBuffer;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    goto :goto_1

    :cond_5
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    move-object v2, v1

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    move-object v4, v1

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    goto :goto_1

    :cond_6
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    goto :goto_1

    :cond_7
    move-object v2, v1

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    goto :goto_1

    :cond_8
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuffer;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    instance-of v3, v3, Lorg/apache/xerces/util/URI;

    if-eqz v3, :cond_c

    move-object v3, v1

    check-cast v3, Lorg/apache/xerces/util/URI;

    move-object v2, v3

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    if-nez v3, :cond_0

    move-object v3, v2

    iget-object v3, v3, Lorg/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    if-eqz v3, :cond_1

    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    if-eqz v3, :cond_c

    move-object v3, v2

    iget-object v3, v3, Lorg/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    if-eqz v3, :cond_c

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lorg/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    if-nez v3, :cond_2

    move-object v3, v2

    iget-object v3, v3, Lorg/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    if-eqz v3, :cond_3

    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    if-eqz v3, :cond_c

    move-object v3, v2

    iget-object v3, v3, Lorg/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    if-eqz v3, :cond_c

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lorg/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_3
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    if-nez v3, :cond_4

    move-object v3, v2

    iget-object v3, v3, Lorg/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    if-eqz v3, :cond_5

    :cond_4
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    if-eqz v3, :cond_c

    move-object v3, v2

    iget-object v3, v3, Lorg/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    if-eqz v3, :cond_c

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lorg/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_5
    move-object v3, v0

    iget v3, v3, Lorg/apache/xerces/util/URI;->m_port:I

    move-object v4, v2

    iget v4, v4, Lorg/apache/xerces/util/URI;->m_port:I

    if-ne v3, v4, :cond_c

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    if-nez v3, :cond_6

    move-object v3, v2

    iget-object v3, v3, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    if-eqz v3, :cond_7

    :cond_6
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    if-eqz v3, :cond_c

    move-object v3, v2

    iget-object v3, v3, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    if-eqz v3, :cond_c

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_7
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    if-nez v3, :cond_8

    move-object v3, v2

    iget-object v3, v3, Lorg/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    if-eqz v3, :cond_9

    :cond_8
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    if-eqz v3, :cond_c

    move-object v3, v2

    iget-object v3, v3, Lorg/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    if-eqz v3, :cond_c

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lorg/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_9
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    if-nez v3, :cond_a

    move-object v3, v2

    iget-object v3, v3, Lorg/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    if-eqz v3, :cond_b

    :cond_a
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    if-eqz v3, :cond_c

    move-object v3, v2

    iget-object v3, v3, Lorg/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    if-eqz v3, :cond_c

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lorg/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_b
    const/4 v3, 0x1

    move v0, v3

    :goto_0
    return v0

    :cond_c
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 5

    move-object v0, p0

    new-instance v2, Ljava/lang/StringBuffer;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    move-object v1, v2

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/URI;->m_regAuthority:Ljava/lang/String;

    if-eqz v2, :cond_2

    :cond_0
    move-object v2, v1

    const-string/jumbo v3, "//"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    if-eqz v2, :cond_3

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    if-eqz v2, :cond_1

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object v2, v1

    const/16 v3, 0x40

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    :cond_1
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object v2, v0

    iget v2, v2, Lorg/apache/xerces/util/URI;->m_port:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    move-object v2, v1

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lorg/apache/xerces/util/URI;->m_port:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    :cond_2
    :goto_0
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0

    :cond_3
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/URI;->m_regAuthority:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    goto :goto_0
.end method

.method public getFragment()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getPath(ZZ)Ljava/lang/String;
    .locals 8

    move-object v0, p0

    move v1, p1

    move v2, p2

    new-instance v4, Ljava/lang/StringBuffer;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    move v4, v1

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    if-eqz v4, :cond_0

    move-object v4, v3

    const/16 v5, 0x3f

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    :cond_0
    move v4, v2

    if-eqz v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    if-eqz v4, :cond_1

    move-object v4, v3

    const/16 v5, 0x23

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    :cond_1
    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method public getPort()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/util/URI;->m_port:I

    move v0, v1

    return v0
.end method

.method public getQueryString()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getRegBasedAuthority()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/util/URI;->m_regAuthority:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getSchemeSpecificPart()Ljava/lang/String;
    .locals 5

    move-object v0, p0

    new-instance v2, Ljava/lang/StringBuffer;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    move-object v1, v2

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/URI;->m_regAuthority:Ljava/lang/String;

    if-eqz v2, :cond_2

    :cond_0
    move-object v2, v1

    const-string/jumbo v3, "//"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    if-eqz v2, :cond_6

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    if-eqz v2, :cond_1

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object v2, v1

    const/16 v3, 0x40

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    :cond_1
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object v2, v0

    iget v2, v2, Lorg/apache/xerces/util/URI;->m_port:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    move-object v2, v1

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lorg/apache/xerces/util/URI;->m_port:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    :cond_2
    :goto_0
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    if-eqz v2, :cond_3

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    :cond_3
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    if-eqz v2, :cond_4

    move-object v2, v1

    const/16 v3, 0x3f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    :cond_4
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    if-eqz v2, :cond_5

    move-object v2, v1

    const/16 v3, 0x23

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    :cond_5
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0

    :cond_6
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/URI;->m_regAuthority:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    goto :goto_0
.end method

.method public getUserinfo()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public isAbsoluteURI()Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isGenericURI()Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setFragment(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-nez v2, :cond_0

    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/util/URI;->isGenericURI()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Lorg/apache/xerces/util/URI$MalformedURIException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "Fragment can only be set for a generic URI!"

    invoke-direct {v3, v4}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/util/URI;->getPath()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    new-instance v2, Lorg/apache/xerces/util/URI$MalformedURIException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "Fragment cannot be set when path is null!"

    invoke-direct {v3, v4}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    move-object v2, v1

    invoke-static {v2}, Lorg/apache/xerces/util/URI;->isURIString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Lorg/apache/xerces/util/URI$MalformedURIException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "Fragment contains invalid character!"

    invoke-direct {v3, v4}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    goto :goto_0
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    move-object v2, v1

    if-eqz v2, :cond_1

    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/apache/xerces/util/URI;->m_regAuthority:Ljava/lang/String;

    :cond_1
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lorg/apache/xerces/util/URI;->m_port:I

    :goto_0
    return-void

    :cond_2
    move-object v2, v1

    invoke-static {v2}, Lorg/apache/xerces/util/URI;->isWellFormedAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Lorg/apache/xerces/util/URI$MalformedURIException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "Host is not a well formed address!"

    invoke-direct {v3, v4}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/apache/xerces/util/URI;->m_regAuthority:Ljava/lang/String;

    goto :goto_0
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-nez v2, :cond_0

    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/URI;->initializePath(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public setPort(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    move-object v0, p0

    move v1, p1

    move v2, v1

    if-ltz v2, :cond_0

    move v2, v1

    const v3, 0xffff

    if-gt v2, v3, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    if-nez v2, :cond_1

    new-instance v2, Lorg/apache/xerces/util/URI$MalformedURIException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "Port cannot be set when host is null!"

    invoke-direct {v3, v4}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move v2, v1

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    new-instance v2, Lorg/apache/xerces/util/URI$MalformedURIException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "Invalid port number!"

    invoke-direct {v3, v4}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lorg/apache/xerces/util/URI;->m_port:I

    return-void
.end method

.method public setQueryString(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-nez v2, :cond_0

    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/util/URI;->isGenericURI()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Lorg/apache/xerces/util/URI$MalformedURIException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "Query string can only be set for a generic URI!"

    invoke-direct {v3, v4}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/util/URI;->getPath()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    new-instance v2, Lorg/apache/xerces/util/URI$MalformedURIException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "Query string cannot be set when path is null!"

    invoke-direct {v3, v4}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    move-object v2, v1

    invoke-static {v2}, Lorg/apache/xerces/util/URI;->isURIString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Lorg/apache/xerces/util/URI$MalformedURIException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "Query string contains invalid character!"

    invoke-direct {v3, v4}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    goto :goto_0
.end method

.method public setRegBasedAuthority(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-nez v2, :cond_0

    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/apache/xerces/util/URI;->m_regAuthority:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lorg/apache/xerces/util/URI;->isValidRegistryBasedAuthority(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v1

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    :cond_1
    new-instance v2, Lorg/apache/xerces/util/URI$MalformedURIException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "Registry based authority is not well formed."

    invoke-direct {v3, v4}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/util/URI;->m_regAuthority:Ljava/lang/String;

    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lorg/apache/xerces/util/URI;->m_port:I

    goto :goto_0
.end method

.method public setScheme(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-nez v2, :cond_0

    new-instance v2, Lorg/apache/xerces/util/URI$MalformedURIException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "Cannot set scheme from null string!"

    invoke-direct {v3, v4}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move-object v2, v1

    invoke-static {v2}, Lorg/apache/xerces/util/URI;->isConformantSchemeName(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Lorg/apache/xerces/util/URI$MalformedURIException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "The scheme is not conformant."

    invoke-direct {v3, v4}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    move-object v2, v0

    move-object v3, v1

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    return-void
.end method

.method public setUserinfo(Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v5, v1

    if-nez v5, :cond_0

    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Lorg/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    if-nez v5, :cond_1

    new-instance v5, Lorg/apache/xerces/util/URI$MalformedURIException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string/jumbo v7, "Userinfo cannot be set when host is null!"

    invoke-direct {v6, v7}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    const/4 v5, 0x0

    move v2, v5

    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move v3, v5

    const/4 v5, 0x0

    move v4, v5

    :goto_1
    move v5, v2

    move v6, v3

    if-lt v5, v6, :cond_2

    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lorg/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object v5, v1

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move v4, v5

    move v5, v4

    const/16 v6, 0x25

    if-ne v5, v6, :cond_4

    move v5, v2

    const/4 v6, 0x2

    add-int/lit8 v5, v5, 0x2

    move v6, v3

    if-ge v5, v6, :cond_3

    move-object v5, v1

    move v6, v2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lorg/apache/xerces/util/URI;->isHex(C)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, v1

    move v6, v2

    const/4 v7, 0x2

    add-int/lit8 v6, v6, 0x2

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lorg/apache/xerces/util/URI;->isHex(C)Z

    move-result v5

    if-nez v5, :cond_5

    :cond_3
    new-instance v5, Lorg/apache/xerces/util/URI$MalformedURIException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string/jumbo v7, "Userinfo contains invalid escape sequence!"

    invoke-direct {v6, v7}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_4
    move v5, v4

    invoke-static {v5}, Lorg/apache/xerces/util/URI;->isUserinfoCharacter(C)Z

    move-result v5

    if-nez v5, :cond_5

    new-instance v5, Lorg/apache/xerces/util/URI$MalformedURIException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    new-instance v7, Ljava/lang/StringBuffer;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v8, "Userinfo contains invalid character:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    move v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    move-object v0, p0

    new-instance v2, Ljava/lang/StringBuffer;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    move-object v1, v2

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object v2, v1

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    :cond_0
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/util/URI;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method
