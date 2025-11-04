.class public Lorg/apache/xerces/util/XMLStringBuffer;
.super Lorg/apache/xerces/xni/XMLString;


# static fields
.field public static final DEFAULT_SIZE:I = 0x20


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Lorg/apache/xerces/util/XMLStringBuffer;-><init>(I)V

    return-void
.end method

.method public constructor <init>(C)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lorg/apache/xerces/util/XMLStringBuffer;-><init>(I)V

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-direct {v2}, Lorg/apache/xerces/xni/XMLString;-><init>()V

    move-object v2, v0

    move v3, v1

    new-array v3, v3, [C

    iput-object v3, v2, Lorg/apache/xerces/util/XMLStringBuffer;->ch:[C

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v2, v3}, Lorg/apache/xerces/util/XMLStringBuffer;-><init>(I)V

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/xni/XMLString;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lorg/apache/xerces/xni/XMLString;->length:I

    invoke-direct {v2, v3}, Lorg/apache/xerces/util/XMLStringBuffer;-><init>(I)V

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/xerces/util/XMLStringBuffer;->append(Lorg/apache/xerces/xni/XMLString;)V

    return-void
.end method

.method public constructor <init>([CII)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    move v5, v3

    invoke-direct {v4, v5}, Lorg/apache/xerces/util/XMLStringBuffer;-><init>(I)V

    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lorg/apache/xerces/util/XMLStringBuffer;->append([CII)V

    return-void
.end method


# virtual methods
.method public append(C)V
    .locals 10

    move-object v0, p0

    move v1, p1

    move-object v4, v0

    iget v4, v4, Lorg/apache/xerces/util/XMLStringBuffer;->length:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/XMLStringBuffer;->ch:[C

    array-length v5, v5

    if-le v4, v5, :cond_1

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/util/XMLStringBuffer;->ch:[C

    array-length v4, v4

    const/4 v5, 0x2

    mul-int/lit8 v4, v4, 0x2

    move v2, v4

    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/XMLStringBuffer;->ch:[C

    array-length v5, v5

    const/16 v6, 0x20

    add-int/lit8 v5, v5, 0x20

    if-ge v4, v5, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/util/XMLStringBuffer;->ch:[C

    array-length v4, v4

    const/16 v5, 0x20

    add-int/lit8 v4, v4, 0x20

    move v2, v4

    :cond_0
    move v4, v2

    new-array v4, v4, [C

    move-object v3, v4

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/util/XMLStringBuffer;->ch:[C

    const/4 v5, 0x0

    move-object v6, v3

    const/4 v7, 0x0

    move-object v8, v0

    iget v8, v8, Lorg/apache/xerces/util/XMLStringBuffer;->length:I

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lorg/apache/xerces/util/XMLStringBuffer;->ch:[C

    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/util/XMLStringBuffer;->ch:[C

    move-object v5, v0

    iget v5, v5, Lorg/apache/xerces/util/XMLStringBuffer;->length:I

    move v6, v1

    aput-char v6, v4, v5

    move-object v4, v0

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    iget v5, v5, Lorg/apache/xerces/util/XMLStringBuffer;->length:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lorg/apache/xerces/util/XMLStringBuffer;->length:I

    return-void
.end method

.method public append(Ljava/lang/String;)V
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move v2, v5

    move-object v5, v0

    iget v5, v5, Lorg/apache/xerces/util/XMLStringBuffer;->length:I

    move v6, v2

    add-int/2addr v5, v6

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/util/XMLStringBuffer;->ch:[C

    array-length v6, v6

    if-le v5, v6, :cond_1

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/XMLStringBuffer;->ch:[C

    array-length v5, v5

    const/4 v6, 0x2

    mul-int/lit8 v5, v5, 0x2

    move v3, v5

    move v5, v3

    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/util/XMLStringBuffer;->length:I

    move v7, v2

    add-int/2addr v6, v7

    const/16 v7, 0x20

    add-int/lit8 v6, v6, 0x20

    if-ge v5, v6, :cond_0

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/XMLStringBuffer;->ch:[C

    array-length v5, v5

    move v6, v2

    add-int/2addr v5, v6

    const/16 v6, 0x20

    add-int/lit8 v5, v5, 0x20

    move v3, v5

    :cond_0
    move v5, v3

    new-array v5, v5, [C

    move-object v4, v5

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/XMLStringBuffer;->ch:[C

    const/4 v6, 0x0

    move-object v7, v4

    const/4 v8, 0x0

    move-object v9, v0

    iget v9, v9, Lorg/apache/xerces/util/XMLStringBuffer;->length:I

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lorg/apache/xerces/util/XMLStringBuffer;->ch:[C

    :cond_1
    move-object v5, v1

    const/4 v6, 0x0

    move v7, v2

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/util/XMLStringBuffer;->ch:[C

    move-object v9, v0

    iget v9, v9, Lorg/apache/xerces/util/XMLStringBuffer;->length:I

    invoke-virtual {v5, v6, v7, v8, v9}, Ljava/lang/String;->getChars(II[CI)V

    move-object v5, v0

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget v6, v6, Lorg/apache/xerces/util/XMLStringBuffer;->length:I

    move v7, v2

    add-int/2addr v6, v7

    iput v6, v5, Lorg/apache/xerces/util/XMLStringBuffer;->length:I

    return-void
.end method

.method public append(Lorg/apache/xerces/xni/XMLString;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lorg/apache/xerces/xni/XMLString;->ch:[C

    move-object v4, v1

    iget v4, v4, Lorg/apache/xerces/xni/XMLString;->offset:I

    move-object v5, v1

    iget v5, v5, Lorg/apache/xerces/xni/XMLString;->length:I

    invoke-virtual {v2, v3, v4, v5}, Lorg/apache/xerces/util/XMLStringBuffer;->append([CII)V

    return-void
.end method

.method public append([CII)V
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/util/XMLStringBuffer;->length:I

    move v7, v3

    add-int/2addr v6, v7

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/util/XMLStringBuffer;->ch:[C

    array-length v7, v7

    if-le v6, v7, :cond_1

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/util/XMLStringBuffer;->ch:[C

    array-length v6, v6

    const/4 v7, 0x2

    mul-int/lit8 v6, v6, 0x2

    move v4, v6

    move v6, v4

    move-object v7, v0

    iget v7, v7, Lorg/apache/xerces/util/XMLStringBuffer;->length:I

    move v8, v3

    add-int/2addr v7, v8

    const/16 v8, 0x20

    add-int/lit8 v7, v7, 0x20

    if-ge v6, v7, :cond_0

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/util/XMLStringBuffer;->ch:[C

    array-length v6, v6

    move v7, v3

    add-int/2addr v6, v7

    const/16 v7, 0x20

    add-int/lit8 v6, v6, 0x20

    move v4, v6

    :cond_0
    move v6, v4

    new-array v6, v6, [C

    move-object v5, v6

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/util/XMLStringBuffer;->ch:[C

    const/4 v7, 0x0

    move-object v8, v5

    const/4 v9, 0x0

    move-object v10, v0

    iget v10, v10, Lorg/apache/xerces/util/XMLStringBuffer;->length:I

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Lorg/apache/xerces/util/XMLStringBuffer;->ch:[C

    :cond_1
    move-object v6, v1

    move v7, v2

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/util/XMLStringBuffer;->ch:[C

    move-object v9, v0

    iget v9, v9, Lorg/apache/xerces/util/XMLStringBuffer;->length:I

    move v10, v3

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v6, v0

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    iget v7, v7, Lorg/apache/xerces/util/XMLStringBuffer;->length:I

    move v8, v3

    add-int/2addr v7, v8

    iput v7, v6, Lorg/apache/xerces/util/XMLStringBuffer;->length:I

    return-void
.end method

.method public clear()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lorg/apache/xerces/util/XMLStringBuffer;->offset:I

    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lorg/apache/xerces/util/XMLStringBuffer;->length:I

    return-void
.end method
