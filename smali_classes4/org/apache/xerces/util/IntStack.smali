.class public final Lorg/apache/xerces/util/IntStack;
.super Ljava/lang/Object;


# instance fields
.field private fData:[I

.field private fDepth:I


# direct methods
.method public constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private ensureCapacity(I)V
    .locals 8

    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/IntStack;->fData:[I

    if-nez v3, :cond_1

    move-object v3, v0

    const/16 v4, 0x20

    new-array v4, v4, [I

    iput-object v4, v3, Lorg/apache/xerces/util/IntStack;->fData:[I

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/IntStack;->fData:[I

    array-length v3, v3

    move v4, v1

    if-gt v3, v4, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/IntStack;->fData:[I

    array-length v3, v3

    const/4 v4, 0x2

    mul-int/lit8 v3, v3, 0x2

    new-array v3, v3, [I

    move-object v2, v3

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/IntStack;->fData:[I

    const/4 v4, 0x0

    move-object v5, v2

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/util/IntStack;->fData:[I

    array-length v7, v7

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lorg/apache/xerces/util/IntStack;->fData:[I

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lorg/apache/xerces/util/IntStack;->fDepth:I

    return-void
.end method

.method public elementAt(I)I
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/IntStack;->fData:[I

    move v3, v1

    aget v2, v2, v3

    move v0, v2

    return v0
.end method

.method public peek()I
    .locals 4

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/util/IntStack;->fData:[I

    move-object v2, v0

    iget v2, v2, Lorg/apache/xerces/util/IntStack;->fDepth:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    move v0, v1

    return v0
.end method

.method public pop()I
    .locals 7

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/util/IntStack;->fData:[I

    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lorg/apache/xerces/util/IntStack;->fDepth:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Lorg/apache/xerces/util/IntStack;->fDepth:I

    aget v1, v1, v2

    move v0, v1

    return v0
.end method

.method public print()V
    .locals 5

    move-object v0, p0

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v3, 0x28

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(C)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object v3, v0

    iget v3, v3, Lorg/apache/xerces/util/IntStack;->fDepth:I

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(I)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v3, ") {"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lorg/apache/xerces/util/IntStack;->fDepth:I

    if-lt v2, v3, :cond_0

    :goto_1
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v3, " }"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/io/PrintStream;->println()V

    return-void

    :cond_0
    move v2, v1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v3, " ..."

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(C)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/IntStack;->fData:[I

    move v4, v1

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(I)V

    move v2, v1

    move-object v3, v0

    iget v3, v3, Lorg/apache/xerces/util/IntStack;->fDepth:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_2

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(C)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public push(I)V
    .locals 9

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lorg/apache/xerces/util/IntStack;->fDepth:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v2, v3}, Lorg/apache/xerces/util/IntStack;->ensureCapacity(I)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/IntStack;->fData:[I

    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lorg/apache/xerces/util/IntStack;->fDepth:I

    move-object v7, v3

    move v8, v4

    move v3, v8

    move-object v4, v7

    move v5, v8

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lorg/apache/xerces/util/IntStack;->fDepth:I

    move v4, v1

    aput v4, v2, v3

    return-void
.end method

.method public size()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/util/IntStack;->fDepth:I

    move v0, v1

    return v0
.end method
