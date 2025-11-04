.class public Lorg/apache/xerces/util/XML11Char;
.super Ljava/lang/Object;


# static fields
.field public static final MASK_XML11_CONTENT:I = 0x20

.field public static final MASK_XML11_CONTENT_INTERNAL:I = 0x30

.field public static final MASK_XML11_CONTROL:I = 0x10

.field public static final MASK_XML11_NAME:I = 0x8

.field public static final MASK_XML11_NAME_START:I = 0x4

.field public static final MASK_XML11_NCNAME:I = 0x80

.field public static final MASK_XML11_NCNAME_START:I = 0x40

.field public static final MASK_XML11_SPACE:I = 0x2

.field public static final MASK_XML11_VALID:I = 0x1

.field private static final XML11CHARS:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/high16 v0, 0x10000

    new-array v0, v0, [B

    sput-object v0, Lorg/apache/xerces/util/XML11Char;->XML11CHARS:[B

    sget-object v0, Lorg/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/4 v1, 0x1

    const/16 v2, 0x9

    const/16 v3, 0x11

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x9

    const/16 v2, 0x23

    aput-byte v2, v0, v1

    sget-object v0, Lorg/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0xa

    const/4 v2, 0x3

    aput-byte v2, v0, v1

    sget-object v0, Lorg/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0xb

    const/16 v2, 0xd

    const/16 v3, 0x11

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0xd

    const/4 v2, 0x3

    aput-byte v2, v0, v1

    sget-object v0, Lorg/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0xe

    const/16 v2, 0x20

    const/16 v3, 0x11

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x20

    const/16 v2, 0x23

    aput-byte v2, v0, v1

    sget-object v0, Lorg/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x21

    const/16 v2, 0x26

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x26

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    sget-object v0, Lorg/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x27

    const/16 v2, 0x2d

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x2d

    const/16 v2, 0x2f

    const/16 v3, -0x57

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x2f

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    sget-object v0, Lorg/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x30

    const/16 v2, 0x3a

    const/16 v3, -0x57

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x3a

    const/16 v2, 0x2d

    aput-byte v2, v0, v1

    sget-object v0, Lorg/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x3b

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    sget-object v0, Lorg/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x3c

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    sget-object v0, Lorg/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x3d

    const/16 v2, 0x41

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x41

    const/16 v2, 0x5b

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x5b

    const/16 v2, 0x5d

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x5d

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    sget-object v0, Lorg/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x5e

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    sget-object v0, Lorg/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x5f

    const/16 v2, -0x13

    aput-byte v2, v0, v1

    sget-object v0, Lorg/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x60

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    sget-object v0, Lorg/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x61

    const/16 v2, 0x7b

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x7b

    const/16 v2, 0x7f

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x7f

    const/16 v2, 0x85

    const/16 v3, 0x11

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x85

    const/16 v2, 0x23

    aput-byte v2, v0, v1

    sget-object v0, Lorg/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x86

    const/16 v2, 0xa0

    const/16 v3, 0x11

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0xa0

    const/16 v2, 0xb7

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0xb7

    const/16 v2, -0x57

    aput-byte v2, v0, v1

    sget-object v0, Lorg/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0xb8

    const/16 v2, 0xc0

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0xc0

    const/16 v2, 0xd7

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0xd7

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    sget-object v0, Lorg/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0xd8

    const/16 v2, 0xf7

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0xf7

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    sget-object v0, Lorg/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0xf8

    const/16 v2, 0x300

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x300

    const/16 v2, 0x370

    const/16 v3, -0x57

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x370

    const/16 v2, 0x37e

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x37e

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    sget-object v0, Lorg/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x37f

    const/16 v2, 0x2000

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x2000

    const/16 v2, 0x200c

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x200c

    const/16 v2, 0x200e

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x200e

    const/16 v2, 0x2028

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x2028

    const/16 v2, 0x23

    aput-byte v2, v0, v1

    sget-object v0, Lorg/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x2029

    const/16 v2, 0x203f

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x203f

    const/16 v2, 0x2041

    const/16 v3, -0x57

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x2041

    const/16 v2, 0x2070

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x2070

    const/16 v2, 0x2190

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x2190

    const/16 v2, 0x2c00

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x2c00

    const/16 v2, 0x2ff0

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x2ff0

    const/16 v2, 0x3001

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x3001

    const v2, 0xd800

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const v1, 0xe000

    const v2, 0xf900

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const v1, 0xf900

    const v2, 0xfdd0

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const v1, 0xfdd0

    const v2, 0xfdf0

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    sget-object v0, Lorg/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const v1, 0xfdf0

    const v2, 0xfffe

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isXML11Content(I)Z
    .locals 3

    move v0, p0

    move v1, v0

    const/high16 v2, 0x10000

    if-ge v1, v2, :cond_0

    sget-object v1, Lorg/apache/xerces/util/XML11Char;->XML11CHARS:[B

    move v2, v0

    aget-byte v1, v1, v2

    const/16 v2, 0x20

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_1

    :cond_0
    const/high16 v1, 0x10000

    move v2, v0

    if-gt v1, v2, :cond_2

    move v1, v0

    const v2, 0x10ffff

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

.method public static isXML11InternalEntityContent(I)Z
    .locals 3

    move v0, p0

    move v1, v0

    const/high16 v2, 0x10000

    if-ge v1, v2, :cond_0

    sget-object v1, Lorg/apache/xerces/util/XML11Char;->XML11CHARS:[B

    move v2, v0

    aget-byte v1, v1, v2

    const/16 v2, 0x30

    and-int/lit8 v1, v1, 0x30

    if-nez v1, :cond_1

    :cond_0
    const/high16 v1, 0x10000

    move v2, v0

    if-gt v1, v2, :cond_2

    move v1, v0

    const v2, 0x10ffff

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

.method public static isXML11Invalid(I)Z
    .locals 2

    move v0, p0

    move v1, v0

    invoke-static {v1}, Lorg/apache/xerces/util/XML11Char;->isXML11Valid(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isXML11NCName(I)Z
    .locals 3

    move v0, p0

    move v1, v0

    const/high16 v2, 0x10000

    if-ge v1, v2, :cond_0

    sget-object v1, Lorg/apache/xerces/util/XML11Char;->XML11CHARS:[B

    move v2, v0

    aget-byte v1, v1, v2

    const/16 v2, 0x80

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_1

    :cond_0
    const/high16 v1, 0x10000

    move v2, v0

    if-gt v1, v2, :cond_2

    move v1, v0

    const/high16 v2, 0xf0000

    if-ge v1, v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isXML11NCNameStart(I)Z
    .locals 3

    move v0, p0

    move v1, v0

    const/high16 v2, 0x10000

    if-ge v1, v2, :cond_0

    sget-object v1, Lorg/apache/xerces/util/XML11Char;->XML11CHARS:[B

    move v2, v0

    aget-byte v1, v1, v2

    const/16 v2, 0x40

    and-int/lit8 v1, v1, 0x40

    if-nez v1, :cond_1

    :cond_0
    const/high16 v1, 0x10000

    move v2, v0

    if-gt v1, v2, :cond_2

    move v1, v0

    const/high16 v2, 0xf0000

    if-ge v1, v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isXML11Name(I)Z
    .locals 3

    move v0, p0

    move v1, v0

    const/high16 v2, 0x10000

    if-ge v1, v2, :cond_0

    sget-object v1, Lorg/apache/xerces/util/XML11Char;->XML11CHARS:[B

    move v2, v0

    aget-byte v1, v1, v2

    const/16 v2, 0x8

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_1

    :cond_0
    move v1, v0

    const/high16 v2, 0x10000

    if-lt v1, v2, :cond_2

    move v1, v0

    const/high16 v2, 0xf0000

    if-ge v1, v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isXML11NameHighSurrogate(I)Z
    .locals 3

    move v0, p0

    const v1, 0xd800

    move v2, v0

    if-gt v1, v2, :cond_0

    move v1, v0

    const v2, 0xdb7f

    if-gt v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isXML11NameStart(I)Z
    .locals 3

    move v0, p0

    move v1, v0

    const/high16 v2, 0x10000

    if-ge v1, v2, :cond_0

    sget-object v1, Lorg/apache/xerces/util/XML11Char;->XML11CHARS:[B

    move v2, v0

    aget-byte v1, v1, v2

    const/4 v2, 0x4

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_1

    :cond_0
    const/high16 v1, 0x10000

    move v2, v0

    if-gt v1, v2, :cond_2

    move v1, v0

    const/high16 v2, 0xf0000

    if-ge v1, v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isXML11Space(I)Z
    .locals 3

    move v0, p0

    move v1, v0

    const/high16 v2, 0x10000

    if-ge v1, v2, :cond_0

    sget-object v1, Lorg/apache/xerces/util/XML11Char;->XML11CHARS:[B

    move v2, v0

    aget-byte v1, v1, v2

    const/4 v2, 0x2

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isXML11Valid(I)Z
    .locals 3

    move v0, p0

    move v1, v0

    const/high16 v2, 0x10000

    if-ge v1, v2, :cond_0

    sget-object v1, Lorg/apache/xerces/util/XML11Char;->XML11CHARS:[B

    move v2, v0

    aget-byte v1, v1, v2

    const/4 v2, 0x1

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_1

    :cond_0
    const/high16 v1, 0x10000

    move v2, v0

    if-gt v1, v2, :cond_2

    move v1, v0

    const v2, 0x10ffff

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

.method public static isXML11ValidLiteral(I)Z
    .locals 3

    move v0, p0

    move v1, v0

    const/high16 v2, 0x10000

    if-ge v1, v2, :cond_0

    sget-object v1, Lorg/apache/xerces/util/XML11Char;->XML11CHARS:[B

    move v2, v0

    aget-byte v1, v1, v2

    const/4 v2, 0x1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/apache/xerces/util/XML11Char;->XML11CHARS:[B

    move v2, v0

    aget-byte v1, v1, v2

    const/16 v2, 0x10

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_1

    :cond_0
    const/high16 v1, 0x10000

    move v2, v0

    if-gt v1, v2, :cond_2

    move v1, v0

    const v2, 0x10ffff

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

.method public static isXML11ValidNCName(Ljava/lang/String;)Z
    .locals 7

    move-object v0, p0

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move v1, v5

    move v5, v1

    if-nez v5, :cond_0

    const/4 v5, 0x0

    move v0, v5

    :goto_0
    return v0

    :cond_0
    const/4 v5, 0x1

    move v2, v5

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move v3, v5

    move v5, v3

    invoke-static {v5}, Lorg/apache/xerces/util/XML11Char;->isXML11NCNameStart(I)Z

    move-result v5

    if-nez v5, :cond_3

    move v5, v1

    const/4 v6, 0x1

    if-le v5, v6, :cond_4

    move v5, v3

    invoke-static {v5}, Lorg/apache/xerces/util/XML11Char;->isXML11NameHighSurrogate(I)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move v4, v5

    move v5, v4

    invoke-static {v5}, Lorg/apache/xerces/util/XMLChar;->isLowSurrogate(I)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v3

    move v6, v4

    invoke-static {v5, v6}, Lorg/apache/xerces/util/XMLChar;->supplemental(CC)I

    move-result v5

    invoke-static {v5}, Lorg/apache/xerces/util/XML11Char;->isXML11NCNameStart(I)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    :cond_2
    const/4 v5, 0x2

    move v2, v5

    :cond_3
    :goto_1
    move v5, v2

    move v6, v1

    if-lt v5, v6, :cond_5

    const/4 v5, 0x1

    move v0, v5

    goto :goto_0

    :cond_4
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    :cond_5
    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move v3, v5

    move v5, v3

    invoke-static {v5}, Lorg/apache/xerces/util/XML11Char;->isXML11NCName(I)Z

    move-result v5

    if-nez v5, :cond_8

    add-int/lit8 v2, v2, 0x1

    move v5, v2

    move v6, v1

    if-ge v5, v6, :cond_7

    move v5, v3

    invoke-static {v5}, Lorg/apache/xerces/util/XML11Char;->isXML11NameHighSurrogate(I)Z

    move-result v5

    if-eqz v5, :cond_7

    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move v4, v5

    move v5, v4

    invoke-static {v5}, Lorg/apache/xerces/util/XMLChar;->isLowSurrogate(I)Z

    move-result v5

    if-eqz v5, :cond_6

    move v5, v3

    move v6, v4

    invoke-static {v5, v6}, Lorg/apache/xerces/util/XMLChar;->supplemental(CC)I

    move-result v5

    invoke-static {v5}, Lorg/apache/xerces/util/XML11Char;->isXML11NCName(I)Z

    move-result v5

    if-nez v5, :cond_8

    :cond_6
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    :cond_7
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static isXML11ValidName(Ljava/lang/String;)Z
    .locals 7

    move-object v0, p0

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move v1, v5

    move v5, v1

    if-nez v5, :cond_0

    const/4 v5, 0x0

    move v0, v5

    :goto_0
    return v0

    :cond_0
    const/4 v5, 0x1

    move v2, v5

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move v3, v5

    move v5, v3

    invoke-static {v5}, Lorg/apache/xerces/util/XML11Char;->isXML11NameStart(I)Z

    move-result v5

    if-nez v5, :cond_3

    move v5, v1

    const/4 v6, 0x1

    if-le v5, v6, :cond_4

    move v5, v3

    invoke-static {v5}, Lorg/apache/xerces/util/XML11Char;->isXML11NameHighSurrogate(I)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move v4, v5

    move v5, v4

    invoke-static {v5}, Lorg/apache/xerces/util/XMLChar;->isLowSurrogate(I)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v3

    move v6, v4

    invoke-static {v5, v6}, Lorg/apache/xerces/util/XMLChar;->supplemental(CC)I

    move-result v5

    invoke-static {v5}, Lorg/apache/xerces/util/XML11Char;->isXML11NameStart(I)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    :cond_2
    const/4 v5, 0x2

    move v2, v5

    :cond_3
    :goto_1
    move v5, v2

    move v6, v1

    if-lt v5, v6, :cond_5

    const/4 v5, 0x1

    move v0, v5

    goto :goto_0

    :cond_4
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    :cond_5
    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move v3, v5

    move v5, v3

    invoke-static {v5}, Lorg/apache/xerces/util/XML11Char;->isXML11Name(I)Z

    move-result v5

    if-nez v5, :cond_8

    add-int/lit8 v2, v2, 0x1

    move v5, v2

    move v6, v1

    if-ge v5, v6, :cond_7

    move v5, v3

    invoke-static {v5}, Lorg/apache/xerces/util/XML11Char;->isXML11NameHighSurrogate(I)Z

    move-result v5

    if-eqz v5, :cond_7

    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move v4, v5

    move v5, v4

    invoke-static {v5}, Lorg/apache/xerces/util/XMLChar;->isLowSurrogate(I)Z

    move-result v5

    if-eqz v5, :cond_6

    move v5, v3

    move v6, v4

    invoke-static {v5, v6}, Lorg/apache/xerces/util/XMLChar;->supplemental(CC)I

    move-result v5

    invoke-static {v5}, Lorg/apache/xerces/util/XML11Char;->isXML11Name(I)Z

    move-result v5

    if-nez v5, :cond_8

    :cond_6
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    :cond_7
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static isXML11ValidNmtoken(Ljava/lang/String;)Z
    .locals 7

    move-object v0, p0

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move v1, v5

    move v5, v1

    if-nez v5, :cond_0

    const/4 v5, 0x0

    move v0, v5

    :goto_0
    return v0

    :cond_0
    const/4 v5, 0x0

    move v2, v5

    :goto_1
    move v5, v2

    move v6, v1

    if-lt v5, v6, :cond_1

    const/4 v5, 0x1

    move v0, v5

    goto :goto_0

    :cond_1
    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move v3, v5

    move v5, v3

    invoke-static {v5}, Lorg/apache/xerces/util/XML11Char;->isXML11Name(I)Z

    move-result v5

    if-nez v5, :cond_4

    add-int/lit8 v2, v2, 0x1

    move v5, v2

    move v6, v1

    if-ge v5, v6, :cond_3

    move v5, v3

    invoke-static {v5}, Lorg/apache/xerces/util/XML11Char;->isXML11NameHighSurrogate(I)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move v4, v5

    move v5, v4

    invoke-static {v5}, Lorg/apache/xerces/util/XMLChar;->isLowSurrogate(I)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v3

    move v6, v4

    invoke-static {v5, v6}, Lorg/apache/xerces/util/XMLChar;->supplemental(CC)I

    move-result v5

    invoke-static {v5}, Lorg/apache/xerces/util/XML11Char;->isXML11Name(I)Z

    move-result v5

    if-nez v5, :cond_4

    :cond_2
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
