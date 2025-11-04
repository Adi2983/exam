.class final Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Parser"
.end annotation


# instance fields
.field private fidx:I

.field private final flen:I

.field private final format:Ljava/lang/String;

.field private final this$0:Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

.field private final value:Ljava/lang/String;

.field private vidx:I

.field private final vlen:I


# direct methods
.method private constructor <init>(Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->this$0:Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->format:Ljava/lang/String;

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->value:Ljava/lang/String;

    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    iput v5, v4, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->flen:I

    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    iput v5, v4, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vlen:I

    return-void
.end method

.method constructor <init>(Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$1;)V
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-direct {v5, v6, v7, v8}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;-><init>(Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private parseBigDecimal()Ljava/math/BigDecimal;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    move v1, v2

    move-object v2, v0

    invoke-direct {v2}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->peek()C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_0

    move-object v2, v0

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    iget v3, v3, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    :goto_0
    move-object v2, v0

    invoke-direct {v2}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->peek()C

    move-result v2

    invoke-static {v2}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->access$200(C)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/math/BigDecimal;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->value:Ljava/lang/String;

    move v5, v1

    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    return-object v0

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->value:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    move-object v2, v0

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    iget v3, v3, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    goto :goto_0
.end method

.method private parseInt(II)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, v0

    iget v4, v4, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    move v3, v4

    :goto_0
    move-object v4, v0

    invoke-direct {v4}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->peek()C

    move-result v4

    invoke-static {v4}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->access$200(C)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v0

    iget v4, v4, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    move v5, v3

    sub-int/2addr v4, v5

    move v5, v2

    if-lt v4, v5, :cond_1

    :cond_0
    move-object v4, v0

    iget v4, v4, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    move v5, v3

    sub-int/2addr v4, v5

    move v5, v1

    if-ge v4, v5, :cond_2

    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->value:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    move-object v4, v0

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    iget v5, v5, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    goto :goto_0

    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->value:Ljava/lang/String;

    move v5, v3

    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move v0, v4

    return v0
.end method

.method private parseYear()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    move-object v0, p0

    move-object v5, v0

    iget v5, v5, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    move v1, v5

    const/4 v5, 0x0

    move v2, v5

    move-object v5, v0

    invoke-direct {v5}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->peek()C

    move-result v5

    const/16 v6, 0x2d

    if-ne v5, v6, :cond_0

    move-object v5, v0

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    iget v6, v6, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    const/4 v5, 0x1

    move v2, v5

    :cond_0
    :goto_0
    move-object v5, v0

    invoke-direct {v5}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->peek()C

    move-result v5

    invoke-static {v5}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->access$200(C)Z

    move-result v5

    if-nez v5, :cond_1

    move-object v5, v0

    iget v5, v5, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    move v6, v1

    sub-int/2addr v5, v6

    move v6, v2

    sub-int/2addr v5, v6

    move v3, v5

    move v5, v3

    const/4 v6, 0x4

    if-ge v5, v6, :cond_2

    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->value:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    move-object v5, v0

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    iget v6, v6, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    goto :goto_0

    :cond_2
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->value:Ljava/lang/String;

    move v6, v1

    move-object v7, v0

    iget v7, v7, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    move v5, v3

    const/16 v6, 0xa

    if-ge v5, v6, :cond_3

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->this$0:Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    move-object v6, v4

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setYear(I)V

    :goto_1
    return-void

    :cond_3
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->this$0:Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    new-instance v6, Ljava/math/BigInteger;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v4

    invoke-direct {v7, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setYear(Ljava/math/BigInteger;)V

    goto :goto_1
.end method

.method private peek()C
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    move-object v2, v0

    iget v2, v2, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vlen:I

    if-ne v1, v2, :cond_0

    const v1, 0xffff

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->value:Ljava/lang/String;

    move-object v2, v0

    iget v2, v2, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move v0, v1

    goto :goto_0
.end method

.method private read()C
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    move-object v2, v0

    iget v2, v2, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vlen:I

    if-ne v1, v2, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->value:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->value:Ljava/lang/String;

    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    move-object v6, v2

    move v7, v3

    move v2, v7

    move-object v3, v6

    move v4, v7

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move v0, v1

    return v0
.end method

.method private skip(C)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-direct {v2}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->read()C

    move-result v2

    move v3, v1

    if-eq v2, v3, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->value:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    return-void
.end method


# virtual methods
.method public parse()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    move-object v0, p0

    :cond_0
    :goto_0
    move-object v5, v0

    iget v5, v5, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->fidx:I

    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->flen:I

    if-lt v5, v6, :cond_1

    move-object v5, v0

    iget v5, v5, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vlen:I

    if-eq v5, v6, :cond_6

    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->value:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->format:Ljava/lang/String;

    move-object v6, v0

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    iget v7, v7, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->fidx:I

    move-object v10, v6

    move v11, v7

    move v6, v11

    move-object v7, v10

    move v8, v11

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->fidx:I

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move v1, v5

    move v5, v1

    const/16 v6, 0x25

    if-eq v5, v6, :cond_2

    move-object v5, v0

    move v6, v1

    invoke-direct {v5, v6}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->skip(C)V

    goto :goto_0

    :cond_2
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->format:Ljava/lang/String;

    move-object v6, v0

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    iget v7, v7, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->fidx:I

    move-object v10, v6

    move v11, v7

    move v6, v11

    move-object v7, v10

    move v8, v11

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->fidx:I

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    sparse-switch v5, :sswitch_data_0

    new-instance v5, Ljava/lang/InternalError;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Ljava/lang/InternalError;-><init>()V

    throw v5

    :sswitch_0
    move-object v5, v0

    invoke-direct {v5}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->parseYear()V

    goto :goto_0

    :sswitch_1
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->this$0:Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    move-object v6, v0

    const/4 v7, 0x2

    const/4 v8, 0x2

    invoke-direct {v6, v7, v8}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->parseInt(II)I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setMonth(I)V

    goto :goto_0

    :sswitch_2
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->this$0:Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    move-object v6, v0

    const/4 v7, 0x2

    const/4 v8, 0x2

    invoke-direct {v6, v7, v8}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->parseInt(II)I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setDay(I)V

    goto/16 :goto_0

    :sswitch_3
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->this$0:Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    move-object v6, v0

    const/4 v7, 0x2

    const/4 v8, 0x2

    invoke-direct {v6, v7, v8}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->parseInt(II)I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setHour(I)V

    goto/16 :goto_0

    :sswitch_4
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->this$0:Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    move-object v6, v0

    const/4 v7, 0x2

    const/4 v8, 0x2

    invoke-direct {v6, v7, v8}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->parseInt(II)I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setMinute(I)V

    goto/16 :goto_0

    :sswitch_5
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->this$0:Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    move-object v6, v0

    const/4 v7, 0x2

    const/4 v8, 0x2

    invoke-direct {v6, v7, v8}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->parseInt(II)I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setSecond(I)V

    move-object v5, v0

    invoke-direct {v5}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->peek()C

    move-result v5

    const/16 v6, 0x2e

    if-ne v5, v6, :cond_0

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->this$0:Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    move-object v6, v0

    invoke-direct {v6}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->parseBigDecimal()Ljava/math/BigDecimal;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setFractionalSecond(Ljava/math/BigDecimal;)V

    goto/16 :goto_0

    :sswitch_6
    move-object v5, v0

    invoke-direct {v5}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->peek()C

    move-result v5

    move v2, v5

    move v5, v2

    const/16 v6, 0x5a

    if-ne v5, v6, :cond_3

    move-object v5, v0

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget v6, v6, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->this$0:Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setTimezone(I)V

    goto/16 :goto_0

    :cond_3
    move v5, v2

    const/16 v6, 0x2b

    if-eq v5, v6, :cond_4

    move v5, v2

    const/16 v6, 0x2d

    if-ne v5, v6, :cond_0

    :cond_4
    move-object v5, v0

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget v6, v6, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    move-object v5, v0

    const/4 v6, 0x2

    const/4 v7, 0x2

    invoke-direct {v5, v6, v7}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->parseInt(II)I

    move-result v5

    move v3, v5

    move-object v5, v0

    const/16 v6, 0x3a

    invoke-direct {v5, v6}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->skip(C)V

    move-object v5, v0

    const/4 v6, 0x2

    const/4 v7, 0x2

    invoke-direct {v5, v6, v7}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->parseInt(II)I

    move-result v5

    move v4, v5

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->this$0:Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    move v6, v3

    const/16 v7, 0x3c

    mul-int/lit8 v6, v6, 0x3c

    move v7, v4

    add-int/2addr v6, v7

    move v7, v2

    const/16 v8, 0x2b

    if-ne v7, v8, :cond_5

    const/4 v7, 0x1

    :goto_1
    mul-int/2addr v6, v7

    invoke-virtual {v5, v6}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setTimezone(I)V

    goto/16 :goto_0

    :cond_5
    const/4 v7, -0x1

    goto :goto_1

    :cond_6
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x44 -> :sswitch_2
        0x4d -> :sswitch_1
        0x59 -> :sswitch_0
        0x68 -> :sswitch_3
        0x6d -> :sswitch_4
        0x73 -> :sswitch_5
        0x7a -> :sswitch_6
    .end sparse-switch
.end method
