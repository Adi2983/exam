.class Lorg/apache/xerces/jaxp/datatype/DurationImpl;
.super Ljavax/xml/datatype/Duration;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final FACTORS:[Ljava/math/BigDecimal;

.field private static final FIELDS:[Ljavax/xml/datatype/DatatypeConstants$Field;

.field private static final TEST_POINTS:[Ljavax/xml/datatype/XMLGregorianCalendar;

.field private static final ZERO:Ljava/math/BigDecimal;

.field private static final serialVersionUID:J = -0x24c6c86e5ffadfb3L


# instance fields
.field private final days:Ljava/math/BigInteger;

.field private final hours:Ljava/math/BigInteger;

.field private final minutes:Ljava/math/BigInteger;

.field private final months:Ljava/math/BigInteger;

.field private final seconds:Ljava/math/BigDecimal;

.field private final signum:I

.field private final years:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v1, 0x6

    new-array v1, v1, [Ljavax/xml/datatype/DatatypeConstants$Field;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const/4 v3, 0x0

    sget-object v4, Ljavax/xml/datatype/DatatypeConstants;->YEARS:Ljavax/xml/datatype/DatatypeConstants$Field;

    aput-object v4, v2, v3

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const/4 v3, 0x1

    sget-object v4, Ljavax/xml/datatype/DatatypeConstants;->MONTHS:Ljavax/xml/datatype/DatatypeConstants$Field;

    aput-object v4, v2, v3

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const/4 v3, 0x2

    sget-object v4, Ljavax/xml/datatype/DatatypeConstants;->DAYS:Ljavax/xml/datatype/DatatypeConstants$Field;

    aput-object v4, v2, v3

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const/4 v3, 0x3

    sget-object v4, Ljavax/xml/datatype/DatatypeConstants;->HOURS:Ljavax/xml/datatype/DatatypeConstants$Field;

    aput-object v4, v2, v3

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const/4 v3, 0x4

    sget-object v4, Ljavax/xml/datatype/DatatypeConstants;->MINUTES:Ljavax/xml/datatype/DatatypeConstants$Field;

    aput-object v4, v2, v3

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const/4 v3, 0x5

    sget-object v4, Ljavax/xml/datatype/DatatypeConstants;->SECONDS:Ljavax/xml/datatype/DatatypeConstants$Field;

    aput-object v4, v2, v3

    sput-object v1, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->FIELDS:[Ljavax/xml/datatype/DatatypeConstants$Field;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v1

    sput-object v1, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->ZERO:Ljava/math/BigDecimal;

    const/4 v1, 0x4

    new-array v1, v1, [Ljavax/xml/datatype/XMLGregorianCalendar;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const/4 v3, 0x0

    const-string/jumbo v4, "1696-09-01T00:00:00Z"

    invoke-static {v4}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->parse(Ljava/lang/String;)Ljavax/xml/datatype/XMLGregorianCalendar;

    move-result-object v4

    aput-object v4, v2, v3

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const/4 v3, 0x1

    const-string/jumbo v4, "1697-02-01T00:00:00Z"

    invoke-static {v4}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->parse(Ljava/lang/String;)Ljavax/xml/datatype/XMLGregorianCalendar;

    move-result-object v4

    aput-object v4, v2, v3

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const/4 v3, 0x2

    const-string/jumbo v4, "1903-03-01T00:00:00Z"

    invoke-static {v4}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->parse(Ljava/lang/String;)Ljavax/xml/datatype/XMLGregorianCalendar;

    move-result-object v4

    aput-object v4, v2, v3

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const/4 v3, 0x3

    const-string/jumbo v4, "1903-07-01T00:00:00Z"

    invoke-static {v4}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->parse(Ljava/lang/String;)Ljavax/xml/datatype/XMLGregorianCalendar;

    move-result-object v4

    aput-object v4, v2, v3

    sput-object v1, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->TEST_POINTS:[Ljavax/xml/datatype/XMLGregorianCalendar;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/math/BigDecimal;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const/4 v3, 0x0

    const-wide/16 v4, 0xc

    invoke-static {v4, v5}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v4

    aput-object v4, v2, v3

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v2, v3

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const/4 v3, 0x2

    const-wide/16 v4, 0x18

    invoke-static {v4, v5}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v4

    aput-object v4, v2, v3

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const/4 v3, 0x3

    const-wide/16 v4, 0x3c

    invoke-static {v4, v5}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v4

    aput-object v4, v2, v3

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const/4 v3, 0x4

    const-wide/16 v4, 0x3c

    invoke-static {v4, v5}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v4

    aput-object v4, v2, v3

    sput-object v1, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->FACTORS:[Ljava/math/BigDecimal;

    return-void
.end method

.method protected constructor <init>(J)V
    .locals 11

    move-object v0, p0

    move-wide v1, p1

    move-object v6, v0

    invoke-direct {v6}, Ljavax/xml/datatype/Duration;-><init>()V

    const/4 v6, 0x0

    move v3, v6

    move-wide v6, v1

    move-wide v4, v6

    move-wide v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    move-object v6, v0

    const/4 v7, 0x1

    iput v7, v6, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    :goto_0
    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->years:Ljava/math/BigInteger;

    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->months:Ljava/math/BigInteger;

    move-object v6, v0

    move-wide v7, v4

    const-wide/32 v9, 0xea60

    rem-long/2addr v7, v9

    move v9, v3

    if-eqz v9, :cond_3

    const-wide/16 v9, 0x1

    :goto_1
    add-long/2addr v7, v9

    const/4 v9, 0x3

    invoke-static {v7, v8, v9}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v7

    iput-object v7, v6, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    move-wide v6, v4

    const-wide/32 v8, 0xea60

    div-long/2addr v6, v8

    move-wide v4, v6

    move-object v6, v0

    move-wide v7, v4

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_4

    const/4 v7, 0x0

    :goto_2
    iput-object v7, v6, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->minutes:Ljava/math/BigInteger;

    move-wide v6, v4

    const-wide/16 v8, 0x3c

    div-long/2addr v6, v8

    move-wide v4, v6

    move-object v6, v0

    move-wide v7, v4

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_5

    const/4 v7, 0x0

    :goto_3
    iput-object v7, v6, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->hours:Ljava/math/BigInteger;

    move-wide v6, v4

    const-wide/16 v8, 0x18

    div-long/2addr v6, v8

    move-wide v4, v6

    move-object v6, v0

    move-wide v7, v4

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_6

    const/4 v7, 0x0

    :goto_4
    iput-object v7, v6, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->days:Ljava/math/BigInteger;

    return-void

    :cond_0
    move-wide v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gez v6, :cond_2

    move-object v6, v0

    const/4 v7, -0x1

    iput v7, v6, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    move-wide v6, v4

    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    move-wide v6, v4

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    move-wide v4, v6

    const/4 v6, 0x1

    move v3, v6

    :cond_1
    move-wide v6, v4

    const-wide/16 v8, -0x1

    mul-long/2addr v6, v8

    move-wide v4, v6

    goto :goto_0

    :cond_2
    move-object v6, v0

    const/4 v7, 0x0

    iput v7, v6, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    goto :goto_0

    :cond_3
    const-wide/16 v9, 0x0

    goto :goto_1

    :cond_4
    move-wide v7, v4

    const-wide/16 v9, 0x3c

    rem-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    goto :goto_2

    :cond_5
    move-wide v7, v4

    const-wide/16 v9, 0x18

    rem-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    goto :goto_3

    :cond_6
    move-wide v7, v4

    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    goto :goto_4
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v13, v0

    invoke-direct {v13}, Ljavax/xml/datatype/Duration;-><init>()V

    move-object v13, v1

    move-object v2, v13

    const/4 v13, 0x1

    new-array v13, v13, [I

    move-object v4, v13

    move-object v13, v2

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    move v5, v13

    const/4 v13, 0x0

    move v6, v13

    move-object v13, v1

    if-nez v13, :cond_0

    new-instance v13, Ljava/lang/NullPointerException;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    invoke-direct {v14}, Ljava/lang/NullPointerException;-><init>()V

    throw v13

    :cond_0
    move-object v13, v4

    const/4 v14, 0x0

    const/4 v15, 0x0

    aput v15, v13, v14

    move v13, v5

    move-object v14, v4

    const/4 v15, 0x0

    aget v14, v14, v15

    if-eq v13, v14, :cond_1

    move-object v13, v2

    move-object v14, v4

    const/4 v15, 0x0

    aget v14, v14, v15

    invoke-virtual {v13, v14}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x2d

    if-ne v13, v14, :cond_1

    move-object v13, v4

    const/4 v14, 0x0

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

    const/4 v13, 0x0

    move v3, v13

    :goto_0
    move v13, v5

    move-object v14, v4

    const/4 v15, 0x0

    aget v14, v14, v15

    if-eq v13, v14, :cond_2

    move-object v13, v2

    move-object v14, v4

    const/4 v15, 0x0

    move-object/from16 v19, v14

    move/from16 v20, v15

    move-object/from16 v14, v19

    move/from16 v15, v20

    move-object/from16 v16, v19

    move/from16 v17, v20

    aget v16, v16, v17

    move-object/from16 v19, v14

    move/from16 v20, v15

    move/from16 v21, v16

    move/from16 v14, v21

    move-object/from16 v15, v19

    move/from16 v16, v20

    move/from16 v17, v21

    const/16 v18, 0x1

    add-int/lit8 v17, v17, 0x1

    aput v17, v15, v16

    invoke-virtual {v13, v14}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x50

    if-eq v13, v14, :cond_2

    new-instance v13, Ljava/lang/IllegalArgumentException;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    move-object v15, v2

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    :cond_1
    const/4 v13, 0x1

    move v3, v13

    goto :goto_0

    :cond_2
    const/4 v13, 0x0

    move v7, v13

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/String;

    move-object v8, v13

    const/4 v13, 0x3

    new-array v13, v13, [I

    move-object v9, v13

    :goto_1
    move v13, v5

    move-object v14, v4

    const/4 v15, 0x0

    aget v14, v14, v15

    if-eq v13, v14, :cond_3

    move-object v13, v2

    move-object v14, v4

    const/4 v15, 0x0

    aget v14, v14, v15

    invoke-virtual {v13, v14}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-static {v13}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->isDigit(C)Z

    move-result v13

    if-eqz v13, :cond_3

    move v13, v7

    const/4 v14, 0x3

    if-lt v13, v14, :cond_6

    :cond_3
    move v13, v5

    move-object v14, v4

    const/4 v15, 0x0

    aget v14, v14, v15

    if-eq v13, v14, :cond_4

    move-object v13, v2

    move-object v14, v4

    const/4 v15, 0x0

    move-object/from16 v19, v14

    move/from16 v20, v15

    move-object/from16 v14, v19

    move/from16 v15, v20

    move-object/from16 v16, v19

    move/from16 v17, v20

    aget v16, v16, v17

    move-object/from16 v19, v14

    move/from16 v20, v15

    move/from16 v21, v16

    move/from16 v14, v21

    move-object/from16 v15, v19

    move/from16 v16, v20

    move/from16 v17, v21

    const/16 v18, 0x1

    add-int/lit8 v17, v17, 0x1

    aput v17, v15, v16

    invoke-virtual {v13, v14}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x54

    if-ne v13, v14, :cond_7

    const/4 v13, 0x1

    move v6, v13

    :cond_4
    const/4 v13, 0x0

    move v10, v13

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/String;

    move-object v11, v13

    const/4 v13, 0x3

    new-array v13, v13, [I

    move-object v12, v13

    :goto_2
    move v13, v5

    move-object v14, v4

    const/4 v15, 0x0

    aget v14, v14, v15

    if-eq v13, v14, :cond_5

    move-object v13, v2

    move-object v14, v4

    const/4 v15, 0x0

    aget v14, v14, v15

    invoke-virtual {v13, v14}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-static {v13}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->isDigitOrPeriod(C)Z

    move-result v13

    if-eqz v13, :cond_5

    move v13, v10

    const/4 v14, 0x3

    if-lt v13, v14, :cond_8

    :cond_5
    move v13, v6

    if-eqz v13, :cond_9

    move v13, v10

    if-nez v13, :cond_9

    new-instance v13, Ljava/lang/IllegalArgumentException;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    move-object v15, v2

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    :cond_6
    move-object v13, v9

    move v14, v7

    move-object v15, v4

    const/16 v16, 0x0

    aget v15, v15, v16

    aput v15, v13, v14

    move-object v13, v8

    move v14, v7

    add-int/lit8 v7, v7, 0x1

    move-object v15, v2

    move-object/from16 v16, v4

    invoke-static/range {v15 .. v16}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->parsePiece(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    goto/16 :goto_1

    :cond_7
    new-instance v13, Ljava/lang/IllegalArgumentException;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    move-object v15, v2

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    :cond_8
    move-object v13, v12

    move v14, v10

    move-object v15, v4

    const/16 v16, 0x0

    aget v15, v15, v16

    aput v15, v13, v14

    move-object v13, v11

    move v14, v10

    add-int/lit8 v10, v10, 0x1

    move-object v15, v2

    move-object/from16 v16, v4

    invoke-static/range {v15 .. v16}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->parsePiece(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    goto :goto_2

    :cond_9
    move v13, v5

    move-object v14, v4

    const/4 v15, 0x0

    aget v14, v14, v15

    if-eq v13, v14, :cond_a

    new-instance v13, Ljava/lang/IllegalArgumentException;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    move-object v15, v2

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    :cond_a
    move v13, v7

    if-nez v13, :cond_b

    move v13, v10

    if-nez v13, :cond_b

    new-instance v13, Ljava/lang/IllegalArgumentException;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    move-object v15, v2

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    :cond_b
    move-object v13, v2

    move-object v14, v8

    move-object v15, v9

    move/from16 v16, v7

    const-string/jumbo v17, "YMD"

    invoke-static/range {v13 .. v17}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->organizeParts(Ljava/lang/String;[Ljava/lang/String;[IILjava/lang/String;)V

    move-object v13, v2

    move-object v14, v11

    move-object v15, v12

    move/from16 v16, v10

    const-string/jumbo v17, "HMS"

    invoke-static/range {v13 .. v17}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->organizeParts(Ljava/lang/String;[Ljava/lang/String;[IILjava/lang/String;)V

    move-object v13, v0

    move-object v14, v2

    move-object v15, v8

    const/16 v16, 0x0

    aget-object v15, v15, v16

    move-object/from16 v16, v9

    const/16 v17, 0x0

    aget v16, v16, v17

    invoke-static/range {v14 .. v16}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->parseBigInteger(Ljava/lang/String;Ljava/lang/String;I)Ljava/math/BigInteger;

    move-result-object v14

    iput-object v14, v13, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->years:Ljava/math/BigInteger;

    move-object v13, v0

    move-object v14, v2

    move-object v15, v8

    const/16 v16, 0x1

    aget-object v15, v15, v16

    move-object/from16 v16, v9

    const/16 v17, 0x1

    aget v16, v16, v17

    invoke-static/range {v14 .. v16}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->parseBigInteger(Ljava/lang/String;Ljava/lang/String;I)Ljava/math/BigInteger;

    move-result-object v14

    iput-object v14, v13, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->months:Ljava/math/BigInteger;

    move-object v13, v0

    move-object v14, v2

    move-object v15, v8

    const/16 v16, 0x2

    aget-object v15, v15, v16

    move-object/from16 v16, v9

    const/16 v17, 0x2

    aget v16, v16, v17

    invoke-static/range {v14 .. v16}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->parseBigInteger(Ljava/lang/String;Ljava/lang/String;I)Ljava/math/BigInteger;

    move-result-object v14

    iput-object v14, v13, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->days:Ljava/math/BigInteger;

    move-object v13, v0

    move-object v14, v2

    move-object v15, v11

    const/16 v16, 0x0

    aget-object v15, v15, v16

    move-object/from16 v16, v12

    const/16 v17, 0x0

    aget v16, v16, v17

    invoke-static/range {v14 .. v16}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->parseBigInteger(Ljava/lang/String;Ljava/lang/String;I)Ljava/math/BigInteger;

    move-result-object v14

    iput-object v14, v13, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->hours:Ljava/math/BigInteger;

    move-object v13, v0

    move-object v14, v2

    move-object v15, v11

    const/16 v16, 0x1

    aget-object v15, v15, v16

    move-object/from16 v16, v12

    const/16 v17, 0x1

    aget v16, v16, v17

    invoke-static/range {v14 .. v16}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->parseBigInteger(Ljava/lang/String;Ljava/lang/String;I)Ljava/math/BigInteger;

    move-result-object v14

    iput-object v14, v13, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->minutes:Ljava/math/BigInteger;

    move-object v13, v0

    move-object v14, v2

    move-object v15, v11

    const/16 v16, 0x2

    aget-object v15, v15, v16

    move-object/from16 v16, v12

    const/16 v17, 0x2

    aget v16, v16, v17

    invoke-static/range {v14 .. v16}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->parseBigDecimal(Ljava/lang/String;Ljava/lang/String;I)Ljava/math/BigDecimal;

    move-result-object v14

    iput-object v14, v13, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    move-object v13, v0

    move-object v14, v0

    move v15, v3

    invoke-direct {v14, v15}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->calcSignum(Z)I

    move-result v14

    iput v14, v13, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    return-void
.end method

.method protected constructor <init>(ZIIIIII)V
    .locals 20

    move-object/from16 v3, p0

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move-object v11, v3

    move v12, v4

    move v13, v5

    invoke-static {v13}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->wrap(I)Ljava/math/BigInteger;

    move-result-object v13

    move v14, v6

    invoke-static {v14}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->wrap(I)Ljava/math/BigInteger;

    move-result-object v14

    move v15, v7

    invoke-static {v15}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->wrap(I)Ljava/math/BigInteger;

    move-result-object v15

    move/from16 v16, v8

    invoke-static/range {v16 .. v16}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->wrap(I)Ljava/math/BigInteger;

    move-result-object v16

    move/from16 v17, v9

    invoke-static/range {v17 .. v17}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->wrap(I)Ljava/math/BigInteger;

    move-result-object v17

    move/from16 v18, v10

    if-eqz v18, :cond_0

    move/from16 v18, v10

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v18

    :goto_0
    invoke-direct/range {v11 .. v18}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigDecimal;)V

    return-void

    :cond_0
    const/16 v18, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigDecimal;)V
    .locals 14

    move-object v0, p0

    move v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object v8, v0

    invoke-direct {v8}, Ljavax/xml/datatype/Duration;-><init>()V

    move-object v8, v0

    move-object v9, v2

    iput-object v9, v8, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->years:Ljava/math/BigInteger;

    move-object v8, v0

    move-object v9, v3

    iput-object v9, v8, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->months:Ljava/math/BigInteger;

    move-object v8, v0

    move-object v9, v4

    iput-object v9, v8, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->days:Ljava/math/BigInteger;

    move-object v8, v0

    move-object v9, v5

    iput-object v9, v8, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->hours:Ljava/math/BigInteger;

    move-object v8, v0

    move-object v9, v6

    iput-object v9, v8, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->minutes:Ljava/math/BigInteger;

    move-object v8, v0

    move-object v9, v7

    iput-object v9, v8, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    move-object v8, v0

    move-object v9, v0

    move v10, v1

    invoke-direct {v9, v10}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->calcSignum(Z)I

    move-result v9

    iput v9, v8, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    move-object v8, v2

    if-nez v8, :cond_0

    move-object v8, v3

    if-nez v8, :cond_0

    move-object v8, v4

    if-nez v8, :cond_0

    move-object v8, v5

    if-nez v8, :cond_0

    move-object v8, v6

    if-nez v8, :cond_0

    move-object v8, v7

    if-nez v8, :cond_0

    new-instance v8, Ljava/lang/IllegalArgumentException;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const/4 v10, 0x0

    const-string/jumbo v11, "AllFieldsNull"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Lorg/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_0
    move-object v8, v2

    sget-object v9, Ljavax/xml/datatype/DatatypeConstants;->YEARS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-static {v8, v9}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->testNonNegative(Ljava/math/BigInteger;Ljavax/xml/datatype/DatatypeConstants$Field;)V

    move-object v8, v3

    sget-object v9, Ljavax/xml/datatype/DatatypeConstants;->MONTHS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-static {v8, v9}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->testNonNegative(Ljava/math/BigInteger;Ljavax/xml/datatype/DatatypeConstants$Field;)V

    move-object v8, v4

    sget-object v9, Ljavax/xml/datatype/DatatypeConstants;->DAYS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-static {v8, v9}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->testNonNegative(Ljava/math/BigInteger;Ljavax/xml/datatype/DatatypeConstants$Field;)V

    move-object v8, v5

    sget-object v9, Ljavax/xml/datatype/DatatypeConstants;->HOURS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-static {v8, v9}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->testNonNegative(Ljava/math/BigInteger;Ljavax/xml/datatype/DatatypeConstants$Field;)V

    move-object v8, v6

    sget-object v9, Ljavax/xml/datatype/DatatypeConstants;->MINUTES:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-static {v8, v9}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->testNonNegative(Ljava/math/BigInteger;Ljavax/xml/datatype/DatatypeConstants$Field;)V

    move-object v8, v7

    sget-object v9, Ljavax/xml/datatype/DatatypeConstants;->SECONDS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-static {v8, v9}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->testNonNegative(Ljava/math/BigDecimal;Ljavax/xml/datatype/DatatypeConstants$Field;)V

    return-void
.end method

.method private static alignSigns([Ljava/math/BigDecimal;II)V
    .locals 14

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    :cond_0
    const/4 v7, 0x0

    move v3, v7

    const/4 v7, 0x0

    move v4, v7

    move v7, v1

    move v5, v7

    :goto_0
    move v7, v5

    move v8, v2

    if-lt v7, v8, :cond_1

    move v7, v3

    if-nez v7, :cond_0

    return-void

    :cond_1
    move v7, v4

    move-object v8, v0

    move v9, v5

    aget-object v8, v8, v9

    invoke-virtual {v8}, Ljava/math/BigDecimal;->signum()I

    move-result v8

    mul-int/2addr v7, v8

    if-gez v7, :cond_3

    const/4 v7, 0x1

    move v3, v7

    move-object v7, v0

    move v8, v5

    aget-object v7, v7, v8

    invoke-virtual {v7}, Ljava/math/BigDecimal;->abs()Ljava/math/BigDecimal;

    move-result-object v7

    sget-object v8, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->FACTORS:[Ljava/math/BigDecimal;

    move v9, v5

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    aget-object v8, v8, v9

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object v7

    move-object v6, v7

    move-object v7, v0

    move v8, v5

    aget-object v7, v7, v8

    invoke-virtual {v7}, Ljava/math/BigDecimal;->signum()I

    move-result v7

    if-lez v7, :cond_2

    move-object v7, v6

    invoke-virtual {v7}, Ljava/math/BigDecimal;->negate()Ljava/math/BigDecimal;

    move-result-object v7

    move-object v6, v7

    :cond_2
    move-object v7, v0

    move v8, v5

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    move-object v9, v0

    move v10, v5

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    aget-object v9, v9, v10

    move-object v10, v6

    invoke-virtual {v9, v10}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v9

    aput-object v9, v7, v8

    move-object v7, v0

    move v8, v5

    move-object v9, v0

    move v10, v5

    aget-object v9, v9, v10

    move-object v10, v6

    sget-object v11, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->FACTORS:[Ljava/math/BigDecimal;

    move v12, v5

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    aget-object v11, v11, v12

    invoke-virtual {v10, v11}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v9

    aput-object v9, v7, v8

    :cond_3
    move-object v7, v0

    move v8, v5

    aget-object v7, v7, v8

    invoke-virtual {v7}, Ljava/math/BigDecimal;->signum()I

    move-result v7

    if-eqz v7, :cond_4

    move-object v7, v0

    move v8, v5

    aget-object v7, v7, v8

    invoke-virtual {v7}, Ljava/math/BigDecimal;->signum()I

    move-result v7

    move v4, v7

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method private calcSignum(Z)I
    .locals 3

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->years:Ljava/math/BigInteger;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->years:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->signum()I

    move-result v2

    if-nez v2, :cond_6

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->months:Ljava/math/BigInteger;

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->months:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->signum()I

    move-result v2

    if-nez v2, :cond_6

    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->days:Ljava/math/BigInteger;

    if-eqz v2, :cond_2

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->days:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->signum()I

    move-result v2

    if-nez v2, :cond_6

    :cond_2
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->hours:Ljava/math/BigInteger;

    if-eqz v2, :cond_3

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->hours:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->signum()I

    move-result v2

    if-nez v2, :cond_6

    :cond_3
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->minutes:Ljava/math/BigInteger;

    if-eqz v2, :cond_4

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->minutes:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->signum()I

    move-result v2

    if-nez v2, :cond_6

    :cond_4
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    if-eqz v2, :cond_5

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    invoke-virtual {v2}, Ljava/math/BigDecimal;->signum()I

    move-result v2

    if-nez v2, :cond_6

    :cond_5
    const/4 v2, 0x0

    move v0, v2

    :goto_0
    return v0

    :cond_6
    move v2, v1

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    :cond_7
    const/4 v2, -0x1

    move v0, v2

    goto :goto_0
.end method

.method private compareDates(Ljavax/xml/datatype/Duration;Ljavax/xml/datatype/Duration;)I
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const/4 v7, 0x2

    move v3, v7

    const/4 v7, 0x2

    move v4, v7

    sget-object v7, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->TEST_POINTS:[Ljavax/xml/datatype/XMLGregorianCalendar;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-virtual {v7}, Ljavax/xml/datatype/XMLGregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavax/xml/datatype/XMLGregorianCalendar;

    move-object v5, v7

    sget-object v7, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->TEST_POINTS:[Ljavax/xml/datatype/XMLGregorianCalendar;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-virtual {v7}, Ljavax/xml/datatype/XMLGregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavax/xml/datatype/XMLGregorianCalendar;

    move-object v6, v7

    move-object v7, v5

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljavax/xml/datatype/XMLGregorianCalendar;->add(Ljavax/xml/datatype/Duration;)V

    move-object v7, v6

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljavax/xml/datatype/XMLGregorianCalendar;->add(Ljavax/xml/datatype/Duration;)V

    move-object v7, v5

    move-object v8, v6

    invoke-virtual {v7, v8}, Ljavax/xml/datatype/XMLGregorianCalendar;->compare(Ljavax/xml/datatype/XMLGregorianCalendar;)I

    move-result v7

    move v3, v7

    move v7, v3

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    const/4 v7, 0x2

    move v0, v7

    :goto_0
    return v0

    :cond_0
    sget-object v7, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->TEST_POINTS:[Ljavax/xml/datatype/XMLGregorianCalendar;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-virtual {v7}, Ljavax/xml/datatype/XMLGregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavax/xml/datatype/XMLGregorianCalendar;

    move-object v5, v7

    sget-object v7, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->TEST_POINTS:[Ljavax/xml/datatype/XMLGregorianCalendar;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-virtual {v7}, Ljavax/xml/datatype/XMLGregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavax/xml/datatype/XMLGregorianCalendar;

    move-object v6, v7

    move-object v7, v5

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljavax/xml/datatype/XMLGregorianCalendar;->add(Ljavax/xml/datatype/Duration;)V

    move-object v7, v6

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljavax/xml/datatype/XMLGregorianCalendar;->add(Ljavax/xml/datatype/Duration;)V

    move-object v7, v5

    move-object v8, v6

    invoke-virtual {v7, v8}, Ljavax/xml/datatype/XMLGregorianCalendar;->compare(Ljavax/xml/datatype/XMLGregorianCalendar;)I

    move-result v7

    move v4, v7

    move-object v7, v0

    move v8, v3

    move v9, v4

    invoke-direct {v7, v8, v9}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->compareResults(II)I

    move-result v7

    move v3, v7

    move v7, v3

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    const/4 v7, 0x2

    move v0, v7

    goto :goto_0

    :cond_1
    sget-object v7, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->TEST_POINTS:[Ljavax/xml/datatype/XMLGregorianCalendar;

    const/4 v8, 0x2

    aget-object v7, v7, v8

    invoke-virtual {v7}, Ljavax/xml/datatype/XMLGregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavax/xml/datatype/XMLGregorianCalendar;

    move-object v5, v7

    sget-object v7, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->TEST_POINTS:[Ljavax/xml/datatype/XMLGregorianCalendar;

    const/4 v8, 0x2

    aget-object v7, v7, v8

    invoke-virtual {v7}, Ljavax/xml/datatype/XMLGregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavax/xml/datatype/XMLGregorianCalendar;

    move-object v6, v7

    move-object v7, v5

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljavax/xml/datatype/XMLGregorianCalendar;->add(Ljavax/xml/datatype/Duration;)V

    move-object v7, v6

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljavax/xml/datatype/XMLGregorianCalendar;->add(Ljavax/xml/datatype/Duration;)V

    move-object v7, v5

    move-object v8, v6

    invoke-virtual {v7, v8}, Ljavax/xml/datatype/XMLGregorianCalendar;->compare(Ljavax/xml/datatype/XMLGregorianCalendar;)I

    move-result v7

    move v4, v7

    move-object v7, v0

    move v8, v3

    move v9, v4

    invoke-direct {v7, v8, v9}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->compareResults(II)I

    move-result v7

    move v3, v7

    move v7, v3

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    const/4 v7, 0x2

    move v0, v7

    goto :goto_0

    :cond_2
    sget-object v7, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->TEST_POINTS:[Ljavax/xml/datatype/XMLGregorianCalendar;

    const/4 v8, 0x3

    aget-object v7, v7, v8

    invoke-virtual {v7}, Ljavax/xml/datatype/XMLGregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavax/xml/datatype/XMLGregorianCalendar;

    move-object v5, v7

    sget-object v7, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->TEST_POINTS:[Ljavax/xml/datatype/XMLGregorianCalendar;

    const/4 v8, 0x3

    aget-object v7, v7, v8

    invoke-virtual {v7}, Ljavax/xml/datatype/XMLGregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavax/xml/datatype/XMLGregorianCalendar;

    move-object v6, v7

    move-object v7, v5

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljavax/xml/datatype/XMLGregorianCalendar;->add(Ljavax/xml/datatype/Duration;)V

    move-object v7, v6

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljavax/xml/datatype/XMLGregorianCalendar;->add(Ljavax/xml/datatype/Duration;)V

    move-object v7, v5

    move-object v8, v6

    invoke-virtual {v7, v8}, Ljavax/xml/datatype/XMLGregorianCalendar;->compare(Ljavax/xml/datatype/XMLGregorianCalendar;)I

    move-result v7

    move v4, v7

    move-object v7, v0

    move v8, v3

    move v9, v4

    invoke-direct {v7, v8, v9}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->compareResults(II)I

    move-result v7

    move v3, v7

    move v7, v3

    move v0, v7

    goto/16 :goto_0
.end method

.method private compareResults(II)I
    .locals 5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const/4 v3, 0x2

    move v0, v3

    :goto_0
    return v0

    :cond_0
    move v3, v1

    move v4, v2

    if-eq v3, v4, :cond_1

    const/4 v3, 0x2

    move v0, v3

    goto :goto_0

    :cond_1
    move v3, v1

    move v0, v3

    goto :goto_0
.end method

.method private static getCalendarTimeInMillis(Ljava/util/Calendar;)J
    .locals 3

    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    move-wide v0, v1

    return-wide v0
.end method

.method private getFieldAsBigDecimal(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/math/BigDecimal;
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    sget-object v4, Ljavax/xml/datatype/DatatypeConstants;->SECONDS:Ljavax/xml/datatype/DatatypeConstants$Field;

    if-ne v3, v4, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    sget-object v3, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->ZERO:Ljava/math/BigDecimal;

    move-object v0, v3

    goto :goto_0

    :cond_1
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v3

    check-cast v3, Ljava/math/BigInteger;

    move-object v2, v3

    move-object v3, v2

    if-nez v3, :cond_2

    sget-object v3, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->ZERO:Ljava/math/BigDecimal;

    move-object v0, v3

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/math/BigDecimal;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v2

    invoke-direct {v4, v5}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    move-object v0, v3

    goto :goto_0
.end method

.method private getInt(Ljavax/xml/datatype/DatatypeConstants$Field;)I
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v3

    move-object v2, v3

    move-object v3, v2

    if-nez v3, :cond_0

    const/4 v3, 0x0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method private static isDigit(C)Z
    .locals 3

    move v0, p0

    const/16 v1, 0x30

    move v2, v0

    if-gt v1, v2, :cond_0

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

.method private static isDigitOrPeriod(C)Z
    .locals 3

    move v0, p0

    move v1, v0

    invoke-static {v1}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v0

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static organizeParts(Ljava/lang/String;[Ljava/lang/String;[IILjava/lang/String;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object v9, v4

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    move v5, v9

    move v9, v3

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    move v6, v9

    :goto_0
    move v9, v6

    if-gez v9, :cond_0

    add-int/lit8 v5, v5, -0x1

    :goto_1
    move v9, v5

    if-gez v9, :cond_4

    return-void

    :cond_0
    move-object v9, v1

    move v10, v6

    aget-object v9, v9, v10

    if-nez v9, :cond_1

    new-instance v9, Ljava/lang/IllegalArgumentException;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v0

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_1
    move-object v9, v4

    move-object v10, v1

    move v11, v6

    aget-object v10, v10, v11

    move-object v11, v1

    move v12, v6

    aget-object v11, v11, v12

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    move v11, v5

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v9

    move v7, v9

    move v9, v7

    const/4 v10, -0x1

    if-ne v9, v10, :cond_2

    new-instance v9, Ljava/lang/IllegalArgumentException;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v0

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_2
    move v9, v7

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    move v8, v9

    :goto_2
    move v9, v8

    move v10, v5

    if-lt v9, v10, :cond_3

    move v9, v7

    move v5, v9

    move-object v9, v1

    move v10, v5

    move-object v11, v1

    move v12, v6

    aget-object v11, v11, v12

    aput-object v11, v9, v10

    move-object v9, v2

    move v10, v5

    move-object v11, v2

    move v12, v6

    aget v11, v11, v12

    aput v11, v9, v10

    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    :cond_3
    move-object v9, v1

    move v10, v8

    const/4 v11, 0x0

    aput-object v11, v9, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_4
    move-object v9, v1

    move v10, v5

    const/4 v11, 0x0

    aput-object v11, v9, v10

    add-int/lit8 v5, v5, -0x1

    goto :goto_1
.end method

.method private static parseBigDecimal(Ljava/lang/String;Ljava/lang/String;I)Ljava/math/BigDecimal;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    if-nez v3, :cond_0

    const/4 v3, 0x0

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    move-object v3, v1

    const/4 v4, 0x0

    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    new-instance v3, Ljava/math/BigDecimal;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    goto :goto_0
.end method

.method private static parseBigInteger(Ljava/lang/String;Ljava/lang/String;I)Ljava/math/BigInteger;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    if-nez v3, :cond_0

    const/4 v3, 0x0

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    move-object v3, v1

    const/4 v4, 0x0

    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    new-instance v3, Ljava/math/BigInteger;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    goto :goto_0
.end method

.method private static parsePiece(Ljava/lang/String;[I)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    const/4 v4, 0x0

    aget v3, v3, v4

    move v2, v3

    :goto_0
    move-object v3, v1

    const/4 v4, 0x0

    aget v3, v3, v4

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->isDigitOrPeriod(C)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move-object v3, v1

    const/4 v4, 0x0

    aget v3, v3, v4

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v3, v4, :cond_2

    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    move-object v3, v1

    const/4 v4, 0x0

    move-object v7, v3

    move v8, v4

    move-object v3, v7

    move v4, v8

    move-object v5, v7

    move v6, v8

    aget v5, v5, v6

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    aput v5, v3, v4

    goto :goto_0

    :cond_2
    move-object v3, v1

    const/4 v4, 0x0

    move-object v7, v3

    move v8, v4

    move-object v3, v7

    move v4, v8

    move-object v5, v7

    move v6, v8

    aget v5, v5, v6

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    aput v5, v3, v4

    move-object v3, v0

    move v4, v2

    move-object v5, v1

    const/4 v6, 0x0

    aget v5, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method static sanitize(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;
    .locals 3

    move-object v0, p0

    move v1, p1

    move v2, v1

    if-eqz v2, :cond_0

    move-object v2, v0

    if-nez v2, :cond_1

    :cond_0
    sget-object v2, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->ZERO:Ljava/math/BigDecimal;

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_1
    move v2, v1

    if-lez v2, :cond_2

    move-object v2, v0

    move-object v0, v2

    goto :goto_0

    :cond_2
    move-object v2, v0

    invoke-virtual {v2}, Ljava/math/BigDecimal;->negate()Ljava/math/BigDecimal;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method private static sanitize(Ljava/math/BigInteger;I)Ljava/math/BigDecimal;
    .locals 6

    move-object v0, p0

    move v1, p1

    move v2, v1

    if-eqz v2, :cond_0

    move-object v2, v0

    if-nez v2, :cond_1

    :cond_0
    sget-object v2, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->ZERO:Ljava/math/BigDecimal;

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_1
    move v2, v1

    if-lez v2, :cond_2

    new-instance v2, Ljava/math/BigDecimal;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    move-object v0, v2

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/math/BigDecimal;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-virtual {v4}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    move-object v0, v2

    goto :goto_0
.end method

.method private static testNonNegative(Ljava/math/BigDecimal;Ljavax/xml/datatype/DatatypeConstants$Field;)V
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/math/BigDecimal;->signum()I

    move-result v2

    if-gez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v10, v2

    move-object v2, v10

    move-object v3, v10

    const/4 v4, 0x0

    const-string/jumbo v5, "NegativeField"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v1

    invoke-virtual {v9}, Ljavax/xml/datatype/DatatypeConstants$Field;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v4, v5, v6}, Lorg/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    return-void
.end method

.method private static testNonNegative(Ljava/math/BigInteger;Ljavax/xml/datatype/DatatypeConstants$Field;)V
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/math/BigInteger;->signum()I

    move-result v2

    if-gez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v10, v2

    move-object v2, v10

    move-object v3, v10

    const/4 v4, 0x0

    const-string/jumbo v5, "NegativeField"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v1

    invoke-virtual {v9}, Ljavax/xml/datatype/DatatypeConstants$Field;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v4, v5, v6}, Lorg/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    return-void
.end method

.method private static toBigInteger(Ljava/math/BigDecimal;Z)Ljava/math/BigInteger;
    .locals 3

    move-object v0, p0

    move v1, p1

    move v2, v1

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/math/BigDecimal;->signum()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method private toString(Ljava/math/BigDecimal;)Ljava/lang/String;
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move-object v7, v1

    invoke-virtual {v7}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v2, v7

    move-object v7, v1

    invoke-virtual {v7}, Ljava/math/BigDecimal;->scale()I

    move-result v7

    move v3, v7

    move v7, v3

    if-nez v7, :cond_0

    move-object v7, v2

    move-object v0, v7

    :goto_0
    return-object v0

    :cond_0
    move-object v7, v2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    move v8, v3

    sub-int/2addr v7, v8

    move v5, v7

    move v7, v5

    if-nez v7, :cond_1

    new-instance v7, Ljava/lang/StringBuffer;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v8, "0."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    goto :goto_0

    :cond_1
    move v7, v5

    if-lez v7, :cond_2

    new-instance v7, Ljava/lang/StringBuffer;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v2

    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v4, v7

    move-object v7, v4

    move v8, v5

    const/16 v9, 0x2e

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    move-result-object v7

    :goto_1
    move-object v7, v4

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    goto :goto_0

    :cond_2
    new-instance v7, Ljava/lang/StringBuffer;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x3

    move v10, v5

    rsub-int/lit8 v9, v10, 0x3

    move-object v10, v2

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object v4, v7

    move-object v7, v4

    const-string/jumbo v8, "0."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const/4 v7, 0x0

    move v6, v7

    :goto_2
    move v7, v6

    move v8, v5

    neg-int v8, v8

    if-lt v7, v8, :cond_3

    move-object v7, v4

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    goto :goto_1

    :cond_3
    move-object v7, v4

    const/16 v8, 0x30

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_2
.end method

.method private static wrap(I)Ljava/math/BigInteger;
    .locals 4

    move v1, p0

    move v2, v1

    const/high16 v3, -0x80000000

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    move-object v1, v2

    :goto_0
    return-object v1

    :cond_0
    move v2, v1

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    move-object v1, v2

    goto :goto_0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    new-instance v1, Lorg/apache/xerces/jaxp/datatype/SerializedDuration;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/xerces/jaxp/datatype/SerializedDuration;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    return-object v0
.end method


# virtual methods
.method public add(Ljavax/xml/datatype/Duration;)Ljavax/xml/datatype/Duration;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v6, v0

    move-object v2, v6

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/math/BigDecimal;

    move-object v3, v6

    move-object v6, v3

    const/4 v7, 0x0

    move-object v8, v2

    sget-object v9, Ljavax/xml/datatype/DatatypeConstants;->YEARS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v8, v9}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v8

    check-cast v8, Ljava/math/BigInteger;

    move-object v9, v2

    invoke-virtual {v9}, Ljavax/xml/datatype/Duration;->getSign()I

    move-result v9

    invoke-static {v8, v9}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigInteger;I)Ljava/math/BigDecimal;

    move-result-object v8

    move-object v9, v1

    sget-object v10, Ljavax/xml/datatype/DatatypeConstants;->YEARS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v9, v10}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v9

    check-cast v9, Ljava/math/BigInteger;

    move-object v10, v1

    invoke-virtual {v10}, Ljavax/xml/datatype/Duration;->getSign()I

    move-result v10

    invoke-static {v9, v10}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigInteger;I)Ljava/math/BigDecimal;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v8

    aput-object v8, v6, v7

    move-object v6, v3

    const/4 v7, 0x1

    move-object v8, v2

    sget-object v9, Ljavax/xml/datatype/DatatypeConstants;->MONTHS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v8, v9}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v8

    check-cast v8, Ljava/math/BigInteger;

    move-object v9, v2

    invoke-virtual {v9}, Ljavax/xml/datatype/Duration;->getSign()I

    move-result v9

    invoke-static {v8, v9}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigInteger;I)Ljava/math/BigDecimal;

    move-result-object v8

    move-object v9, v1

    sget-object v10, Ljavax/xml/datatype/DatatypeConstants;->MONTHS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v9, v10}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v9

    check-cast v9, Ljava/math/BigInteger;

    move-object v10, v1

    invoke-virtual {v10}, Ljavax/xml/datatype/Duration;->getSign()I

    move-result v10

    invoke-static {v9, v10}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigInteger;I)Ljava/math/BigDecimal;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v8

    aput-object v8, v6, v7

    move-object v6, v3

    const/4 v7, 0x2

    move-object v8, v2

    sget-object v9, Ljavax/xml/datatype/DatatypeConstants;->DAYS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v8, v9}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v8

    check-cast v8, Ljava/math/BigInteger;

    move-object v9, v2

    invoke-virtual {v9}, Ljavax/xml/datatype/Duration;->getSign()I

    move-result v9

    invoke-static {v8, v9}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigInteger;I)Ljava/math/BigDecimal;

    move-result-object v8

    move-object v9, v1

    sget-object v10, Ljavax/xml/datatype/DatatypeConstants;->DAYS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v9, v10}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v9

    check-cast v9, Ljava/math/BigInteger;

    move-object v10, v1

    invoke-virtual {v10}, Ljavax/xml/datatype/Duration;->getSign()I

    move-result v10

    invoke-static {v9, v10}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigInteger;I)Ljava/math/BigDecimal;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v8

    aput-object v8, v6, v7

    move-object v6, v3

    const/4 v7, 0x3

    move-object v8, v2

    sget-object v9, Ljavax/xml/datatype/DatatypeConstants;->HOURS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v8, v9}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v8

    check-cast v8, Ljava/math/BigInteger;

    move-object v9, v2

    invoke-virtual {v9}, Ljavax/xml/datatype/Duration;->getSign()I

    move-result v9

    invoke-static {v8, v9}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigInteger;I)Ljava/math/BigDecimal;

    move-result-object v8

    move-object v9, v1

    sget-object v10, Ljavax/xml/datatype/DatatypeConstants;->HOURS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v9, v10}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v9

    check-cast v9, Ljava/math/BigInteger;

    move-object v10, v1

    invoke-virtual {v10}, Ljavax/xml/datatype/Duration;->getSign()I

    move-result v10

    invoke-static {v9, v10}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigInteger;I)Ljava/math/BigDecimal;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v8

    aput-object v8, v6, v7

    move-object v6, v3

    const/4 v7, 0x4

    move-object v8, v2

    sget-object v9, Ljavax/xml/datatype/DatatypeConstants;->MINUTES:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v8, v9}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v8

    check-cast v8, Ljava/math/BigInteger;

    move-object v9, v2

    invoke-virtual {v9}, Ljavax/xml/datatype/Duration;->getSign()I

    move-result v9

    invoke-static {v8, v9}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigInteger;I)Ljava/math/BigDecimal;

    move-result-object v8

    move-object v9, v1

    sget-object v10, Ljavax/xml/datatype/DatatypeConstants;->MINUTES:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v9, v10}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v9

    check-cast v9, Ljava/math/BigInteger;

    move-object v10, v1

    invoke-virtual {v10}, Ljavax/xml/datatype/Duration;->getSign()I

    move-result v10

    invoke-static {v9, v10}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigInteger;I)Ljava/math/BigDecimal;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v8

    aput-object v8, v6, v7

    move-object v6, v3

    const/4 v7, 0x5

    move-object v8, v2

    sget-object v9, Ljavax/xml/datatype/DatatypeConstants;->SECONDS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v8, v9}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v8

    check-cast v8, Ljava/math/BigDecimal;

    move-object v9, v2

    invoke-virtual {v9}, Ljavax/xml/datatype/Duration;->getSign()I

    move-result v9

    invoke-static {v8, v9}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object v8

    move-object v9, v1

    sget-object v10, Ljavax/xml/datatype/DatatypeConstants;->SECONDS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v9, v10}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v9

    check-cast v9, Ljava/math/BigDecimal;

    move-object v10, v1

    invoke-virtual {v10}, Ljavax/xml/datatype/Duration;->getSign()I

    move-result v10

    invoke-static {v9, v10}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v8

    aput-object v8, v6, v7

    move-object v6, v3

    const/4 v7, 0x0

    const/4 v8, 0x2

    invoke-static {v6, v7, v8}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->alignSigns([Ljava/math/BigDecimal;II)V

    move-object v6, v3

    const/4 v7, 0x2

    const/4 v8, 0x6

    invoke-static {v6, v7, v8}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->alignSigns([Ljava/math/BigDecimal;II)V

    const/4 v6, 0x0

    move v4, v6

    const/4 v6, 0x0

    move v5, v6

    :goto_0
    move v6, v5

    const/4 v7, 0x6

    if-lt v6, v7, :cond_0

    new-instance v6, Lorg/apache/xerces/jaxp/datatype/DurationImpl;

    move-object/from16 v16, v6

    move-object/from16 v6, v16

    move-object/from16 v7, v16

    move v8, v4

    if-ltz v8, :cond_3

    const/4 v8, 0x1

    :goto_1
    move-object v9, v3

    const/4 v10, 0x0

    aget-object v9, v9, v10

    move v10, v4

    invoke-static {v9, v10}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object v9

    move-object v10, v2

    sget-object v11, Ljavax/xml/datatype/DatatypeConstants;->YEARS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v10, v11}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v10

    if-nez v10, :cond_4

    move-object v10, v1

    sget-object v11, Ljavax/xml/datatype/DatatypeConstants;->YEARS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v10, v11}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v10

    if-nez v10, :cond_4

    const/4 v10, 0x1

    :goto_2
    invoke-static {v9, v10}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->toBigInteger(Ljava/math/BigDecimal;Z)Ljava/math/BigInteger;

    move-result-object v9

    move-object v10, v3

    const/4 v11, 0x1

    aget-object v10, v10, v11

    move v11, v4

    invoke-static {v10, v11}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object v10

    move-object v11, v2

    sget-object v12, Ljavax/xml/datatype/DatatypeConstants;->MONTHS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v11, v12}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v11

    if-nez v11, :cond_5

    move-object v11, v1

    sget-object v12, Ljavax/xml/datatype/DatatypeConstants;->MONTHS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v11, v12}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v11

    if-nez v11, :cond_5

    const/4 v11, 0x1

    :goto_3
    invoke-static {v10, v11}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->toBigInteger(Ljava/math/BigDecimal;Z)Ljava/math/BigInteger;

    move-result-object v10

    move-object v11, v3

    const/4 v12, 0x2

    aget-object v11, v11, v12

    move v12, v4

    invoke-static {v11, v12}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object v11

    move-object v12, v2

    sget-object v13, Ljavax/xml/datatype/DatatypeConstants;->DAYS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v12, v13}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v12

    if-nez v12, :cond_6

    move-object v12, v1

    sget-object v13, Ljavax/xml/datatype/DatatypeConstants;->DAYS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v12, v13}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v12

    if-nez v12, :cond_6

    const/4 v12, 0x1

    :goto_4
    invoke-static {v11, v12}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->toBigInteger(Ljava/math/BigDecimal;Z)Ljava/math/BigInteger;

    move-result-object v11

    move-object v12, v3

    const/4 v13, 0x3

    aget-object v12, v12, v13

    move v13, v4

    invoke-static {v12, v13}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object v12

    move-object v13, v2

    sget-object v14, Ljavax/xml/datatype/DatatypeConstants;->HOURS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v13, v14}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v13

    if-nez v13, :cond_7

    move-object v13, v1

    sget-object v14, Ljavax/xml/datatype/DatatypeConstants;->HOURS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v13, v14}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v13

    if-nez v13, :cond_7

    const/4 v13, 0x1

    :goto_5
    invoke-static {v12, v13}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->toBigInteger(Ljava/math/BigDecimal;Z)Ljava/math/BigInteger;

    move-result-object v12

    move-object v13, v3

    const/4 v14, 0x4

    aget-object v13, v13, v14

    move v14, v4

    invoke-static {v13, v14}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object v13

    move-object v14, v2

    sget-object v15, Ljavax/xml/datatype/DatatypeConstants;->MINUTES:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v14, v15}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v14

    if-nez v14, :cond_8

    move-object v14, v1

    sget-object v15, Ljavax/xml/datatype/DatatypeConstants;->MINUTES:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v14, v15}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v14

    if-nez v14, :cond_8

    const/4 v14, 0x1

    :goto_6
    invoke-static {v13, v14}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->toBigInteger(Ljava/math/BigDecimal;Z)Ljava/math/BigInteger;

    move-result-object v13

    move-object v14, v3

    const/4 v15, 0x5

    aget-object v14, v14, v15

    invoke-virtual {v14}, Ljava/math/BigDecimal;->signum()I

    move-result v14

    if-nez v14, :cond_9

    move-object v14, v2

    sget-object v15, Ljavax/xml/datatype/DatatypeConstants;->SECONDS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v14, v15}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v14

    if-nez v14, :cond_9

    move-object v14, v1

    sget-object v15, Ljavax/xml/datatype/DatatypeConstants;->SECONDS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v14, v15}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v14

    if-nez v14, :cond_9

    const/4 v14, 0x0

    :goto_7
    invoke-direct/range {v7 .. v14}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigDecimal;)V

    move-object v0, v6

    return-object v0

    :cond_0
    move v6, v4

    move-object v7, v3

    move v8, v5

    aget-object v7, v7, v8

    invoke-virtual {v7}, Ljava/math/BigDecimal;->signum()I

    move-result v7

    mul-int/2addr v6, v7

    if-gez v6, :cond_1

    new-instance v6, Ljava/lang/IllegalStateException;

    move-object/from16 v16, v6

    move-object/from16 v6, v16

    move-object/from16 v7, v16

    invoke-direct {v7}, Ljava/lang/IllegalStateException;-><init>()V

    throw v6

    :cond_1
    move v6, v4

    if-nez v6, :cond_2

    move-object v6, v3

    move v7, v5

    aget-object v6, v6, v7

    invoke-virtual {v6}, Ljava/math/BigDecimal;->signum()I

    move-result v6

    move v4, v6

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_3
    const/4 v8, 0x0

    goto/16 :goto_1

    :cond_4
    const/4 v10, 0x0

    goto/16 :goto_2

    :cond_5
    const/4 v11, 0x0

    goto/16 :goto_3

    :cond_6
    const/4 v12, 0x0

    goto/16 :goto_4

    :cond_7
    const/4 v13, 0x0

    goto :goto_5

    :cond_8
    const/4 v14, 0x0

    goto :goto_6

    :cond_9
    move-object v14, v3

    const/4 v15, 0x5

    aget-object v14, v14, v15

    move v15, v4

    invoke-static {v14, v15}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object v14

    goto :goto_7
.end method

.method public addTo(Ljava/util/Calendar;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    const/4 v5, 0x1

    move-object v6, v0

    invoke-virtual {v6}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->getYears()I

    move-result v6

    move-object v7, v0

    iget v7, v7, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    mul-int/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->add(II)V

    move-object v4, v1

    const/4 v5, 0x2

    move-object v6, v0

    invoke-virtual {v6}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->getMonths()I

    move-result v6

    move-object v7, v0

    iget v7, v7, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    mul-int/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->add(II)V

    move-object v4, v1

    const/4 v5, 0x5

    move-object v6, v0

    invoke-virtual {v6}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->getDays()I

    move-result v6

    move-object v7, v0

    iget v7, v7, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    mul-int/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->add(II)V

    move-object v4, v1

    const/16 v5, 0xa

    move-object v6, v0

    invoke-virtual {v6}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->getHours()I

    move-result v6

    move-object v7, v0

    iget v7, v7, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    mul-int/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->add(II)V

    move-object v4, v1

    const/16 v5, 0xc

    move-object v6, v0

    invoke-virtual {v6}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->getMinutes()I

    move-result v6

    move-object v7, v0

    iget v7, v7, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    mul-int/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->add(II)V

    move-object v4, v1

    const/16 v5, 0xd

    move-object v6, v0

    invoke-virtual {v6}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->getSeconds()I

    move-result v6

    move-object v7, v0

    iget v7, v7, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    mul-int/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->add(II)V

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v4

    move-object v2, v4

    move-object v4, v2

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Ljava/math/BigDecimal;->movePointRight(I)Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigDecimal;->intValue()I

    move-result v4

    move v3, v4

    move-object v4, v1

    const/16 v5, 0xe

    move v6, v3

    move-object v7, v0

    iget v7, v7, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    mul-int/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->add(II)V

    :cond_0
    return-void
.end method

.method public addTo(Ljava/util/Date;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    new-instance v3, Ljava/util/GregorianCalendar;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/util/GregorianCalendar;-><init>()V

    move-object v2, v3

    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->addTo(Ljava/util/Calendar;)V

    move-object v3, v1

    move-object v4, v2

    invoke-static {v4}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->getCalendarTimeInMillis(Ljava/util/Calendar;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/Date;->setTime(J)V

    return-void
.end method

.method public compare(Ljavax/xml/datatype/Duration;)I
    .locals 24

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    const-wide/32 v14, 0x7fffffff

    invoke-static {v14, v15}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v14

    move-object v4, v14

    move-object v14, v2

    iget-object v14, v14, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->years:Ljava/math/BigInteger;

    if-eqz v14, :cond_0

    move-object v14, v2

    iget-object v14, v14, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->years:Ljava/math/BigInteger;

    move-object v15, v4

    invoke-virtual {v14, v15}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_0

    new-instance v14, Ljava/lang/UnsupportedOperationException;

    move-object/from16 v23, v14

    move-object/from16 v14, v23

    move-object/from16 v15, v23

    const/16 v16, 0x0

    const-string/jumbo v17, "TooLarge"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v23, v18

    move-object/from16 v18, v23

    move-object/from16 v19, v23

    const/16 v20, 0x0

    new-instance v21, Ljava/lang/StringBuffer;

    move-object/from16 v23, v21

    move-object/from16 v21, v23

    move-object/from16 v22, v23

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    const-string/jumbo v22, "#compare(Duration duration)"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    sget-object v22, Ljavax/xml/datatype/DatatypeConstants;->YEARS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual/range {v22 .. v22}, Ljavax/xml/datatype/DatatypeConstants$Field;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v23, v18

    move-object/from16 v18, v23

    move-object/from16 v19, v23

    const/16 v20, 0x1

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->years:Ljava/math/BigInteger;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v16 .. v18}, Lorg/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_0
    move-object v14, v2

    iget-object v14, v14, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->months:Ljava/math/BigInteger;

    if-eqz v14, :cond_1

    move-object v14, v2

    iget-object v14, v14, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->months:Ljava/math/BigInteger;

    move-object v15, v4

    invoke-virtual {v14, v15}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_1

    new-instance v14, Ljava/lang/UnsupportedOperationException;

    move-object/from16 v23, v14

    move-object/from16 v14, v23

    move-object/from16 v15, v23

    const/16 v16, 0x0

    const-string/jumbo v17, "TooLarge"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v23, v18

    move-object/from16 v18, v23

    move-object/from16 v19, v23

    const/16 v20, 0x0

    new-instance v21, Ljava/lang/StringBuffer;

    move-object/from16 v23, v21

    move-object/from16 v21, v23

    move-object/from16 v22, v23

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    const-string/jumbo v22, "#compare(Duration duration)"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    sget-object v22, Ljavax/xml/datatype/DatatypeConstants;->MONTHS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual/range {v22 .. v22}, Ljavax/xml/datatype/DatatypeConstants$Field;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v23, v18

    move-object/from16 v18, v23

    move-object/from16 v19, v23

    const/16 v20, 0x1

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->months:Ljava/math/BigInteger;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v16 .. v18}, Lorg/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_1
    move-object v14, v2

    iget-object v14, v14, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->days:Ljava/math/BigInteger;

    if-eqz v14, :cond_2

    move-object v14, v2

    iget-object v14, v14, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->days:Ljava/math/BigInteger;

    move-object v15, v4

    invoke-virtual {v14, v15}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_2

    new-instance v14, Ljava/lang/UnsupportedOperationException;

    move-object/from16 v23, v14

    move-object/from16 v14, v23

    move-object/from16 v15, v23

    const/16 v16, 0x0

    const-string/jumbo v17, "TooLarge"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v23, v18

    move-object/from16 v18, v23

    move-object/from16 v19, v23

    const/16 v20, 0x0

    new-instance v21, Ljava/lang/StringBuffer;

    move-object/from16 v23, v21

    move-object/from16 v21, v23

    move-object/from16 v22, v23

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    const-string/jumbo v22, "#compare(Duration duration)"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    sget-object v22, Ljavax/xml/datatype/DatatypeConstants;->DAYS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual/range {v22 .. v22}, Ljavax/xml/datatype/DatatypeConstants$Field;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v23, v18

    move-object/from16 v18, v23

    move-object/from16 v19, v23

    const/16 v20, 0x1

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->days:Ljava/math/BigInteger;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v16 .. v18}, Lorg/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_2
    move-object v14, v2

    iget-object v14, v14, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->hours:Ljava/math/BigInteger;

    if-eqz v14, :cond_3

    move-object v14, v2

    iget-object v14, v14, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->hours:Ljava/math/BigInteger;

    move-object v15, v4

    invoke-virtual {v14, v15}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_3

    new-instance v14, Ljava/lang/UnsupportedOperationException;

    move-object/from16 v23, v14

    move-object/from16 v14, v23

    move-object/from16 v15, v23

    const/16 v16, 0x0

    const-string/jumbo v17, "TooLarge"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v23, v18

    move-object/from16 v18, v23

    move-object/from16 v19, v23

    const/16 v20, 0x0

    new-instance v21, Ljava/lang/StringBuffer;

    move-object/from16 v23, v21

    move-object/from16 v21, v23

    move-object/from16 v22, v23

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    const-string/jumbo v22, "#compare(Duration duration)"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    sget-object v22, Ljavax/xml/datatype/DatatypeConstants;->HOURS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual/range {v22 .. v22}, Ljavax/xml/datatype/DatatypeConstants$Field;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v23, v18

    move-object/from16 v18, v23

    move-object/from16 v19, v23

    const/16 v20, 0x1

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->hours:Ljava/math/BigInteger;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v16 .. v18}, Lorg/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_3
    move-object v14, v2

    iget-object v14, v14, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->minutes:Ljava/math/BigInteger;

    if-eqz v14, :cond_4

    move-object v14, v2

    iget-object v14, v14, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->minutes:Ljava/math/BigInteger;

    move-object v15, v4

    invoke-virtual {v14, v15}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_4

    new-instance v14, Ljava/lang/UnsupportedOperationException;

    move-object/from16 v23, v14

    move-object/from16 v14, v23

    move-object/from16 v15, v23

    const/16 v16, 0x0

    const-string/jumbo v17, "TooLarge"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v23, v18

    move-object/from16 v18, v23

    move-object/from16 v19, v23

    const/16 v20, 0x0

    new-instance v21, Ljava/lang/StringBuffer;

    move-object/from16 v23, v21

    move-object/from16 v21, v23

    move-object/from16 v22, v23

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    const-string/jumbo v22, "#compare(Duration duration)"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    sget-object v22, Ljavax/xml/datatype/DatatypeConstants;->MINUTES:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual/range {v22 .. v22}, Ljavax/xml/datatype/DatatypeConstants$Field;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v23, v18

    move-object/from16 v18, v23

    move-object/from16 v19, v23

    const/16 v20, 0x1

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->minutes:Ljava/math/BigInteger;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v16 .. v18}, Lorg/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_4
    move-object v14, v2

    iget-object v14, v14, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    if-eqz v14, :cond_5

    move-object v14, v2

    iget-object v14, v14, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    invoke-virtual {v14}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v14

    move-object v15, v4

    invoke-virtual {v14, v15}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_5

    new-instance v14, Ljava/lang/UnsupportedOperationException;

    move-object/from16 v23, v14

    move-object/from16 v14, v23

    move-object/from16 v15, v23

    const/16 v16, 0x0

    const-string/jumbo v17, "TooLarge"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v23, v18

    move-object/from16 v18, v23

    move-object/from16 v19, v23

    const/16 v20, 0x0

    new-instance v21, Ljava/lang/StringBuffer;

    move-object/from16 v23, v21

    move-object/from16 v21, v23

    move-object/from16 v22, v23

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    const-string/jumbo v22, "#compare(Duration duration)"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    sget-object v22, Ljavax/xml/datatype/DatatypeConstants;->SECONDS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual/range {v22 .. v22}, Ljavax/xml/datatype/DatatypeConstants$Field;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v23, v18

    move-object/from16 v18, v23

    move-object/from16 v19, v23

    const/16 v20, 0x1

    move-object/from16 v21, v2

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    move-object/from16 v22, v0

    invoke-direct/range {v21 .. v22}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->toString(Ljava/math/BigDecimal;)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v16 .. v18}, Lorg/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_5
    move-object v14, v3

    sget-object v15, Ljavax/xml/datatype/DatatypeConstants;->YEARS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v14, v15}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v14

    check-cast v14, Ljava/math/BigInteger;

    move-object v5, v14

    move-object v14, v5

    if-eqz v14, :cond_6

    move-object v14, v5

    move-object v15, v4

    invoke-virtual {v14, v15}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_6

    new-instance v14, Ljava/lang/UnsupportedOperationException;

    move-object/from16 v23, v14

    move-object/from16 v14, v23

    move-object/from16 v15, v23

    const/16 v16, 0x0

    const-string/jumbo v17, "TooLarge"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v23, v18

    move-object/from16 v18, v23

    move-object/from16 v19, v23

    const/16 v20, 0x0

    new-instance v21, Ljava/lang/StringBuffer;

    move-object/from16 v23, v21

    move-object/from16 v21, v23

    move-object/from16 v22, v23

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    const-string/jumbo v22, "#compare(Duration duration)"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    sget-object v22, Ljavax/xml/datatype/DatatypeConstants;->YEARS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual/range {v22 .. v22}, Ljavax/xml/datatype/DatatypeConstants$Field;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v23, v18

    move-object/from16 v18, v23

    move-object/from16 v19, v23

    const/16 v20, 0x1

    move-object/from16 v21, v5

    invoke-virtual/range {v21 .. v21}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v16 .. v18}, Lorg/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_6
    move-object v14, v3

    sget-object v15, Ljavax/xml/datatype/DatatypeConstants;->MONTHS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v14, v15}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v14

    check-cast v14, Ljava/math/BigInteger;

    move-object v6, v14

    move-object v14, v6

    if-eqz v14, :cond_7

    move-object v14, v6

    move-object v15, v4

    invoke-virtual {v14, v15}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_7

    new-instance v14, Ljava/lang/UnsupportedOperationException;

    move-object/from16 v23, v14

    move-object/from16 v14, v23

    move-object/from16 v15, v23

    const/16 v16, 0x0

    const-string/jumbo v17, "TooLarge"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v23, v18

    move-object/from16 v18, v23

    move-object/from16 v19, v23

    const/16 v20, 0x0

    new-instance v21, Ljava/lang/StringBuffer;

    move-object/from16 v23, v21

    move-object/from16 v21, v23

    move-object/from16 v22, v23

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    const-string/jumbo v22, "#compare(Duration duration)"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    sget-object v22, Ljavax/xml/datatype/DatatypeConstants;->MONTHS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual/range {v22 .. v22}, Ljavax/xml/datatype/DatatypeConstants$Field;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v23, v18

    move-object/from16 v18, v23

    move-object/from16 v19, v23

    const/16 v20, 0x1

    move-object/from16 v21, v6

    invoke-virtual/range {v21 .. v21}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v16 .. v18}, Lorg/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_7
    move-object v14, v3

    sget-object v15, Ljavax/xml/datatype/DatatypeConstants;->DAYS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v14, v15}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v14

    check-cast v14, Ljava/math/BigInteger;

    move-object v7, v14

    move-object v14, v7

    if-eqz v14, :cond_8

    move-object v14, v7

    move-object v15, v4

    invoke-virtual {v14, v15}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_8

    new-instance v14, Ljava/lang/UnsupportedOperationException;

    move-object/from16 v23, v14

    move-object/from16 v14, v23

    move-object/from16 v15, v23

    const/16 v16, 0x0

    const-string/jumbo v17, "TooLarge"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v23, v18

    move-object/from16 v18, v23

    move-object/from16 v19, v23

    const/16 v20, 0x0

    new-instance v21, Ljava/lang/StringBuffer;

    move-object/from16 v23, v21

    move-object/from16 v21, v23

    move-object/from16 v22, v23

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    const-string/jumbo v22, "#compare(Duration duration)"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    sget-object v22, Ljavax/xml/datatype/DatatypeConstants;->DAYS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual/range {v22 .. v22}, Ljavax/xml/datatype/DatatypeConstants$Field;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v23, v18

    move-object/from16 v18, v23

    move-object/from16 v19, v23

    const/16 v20, 0x1

    move-object/from16 v21, v7

    invoke-virtual/range {v21 .. v21}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v16 .. v18}, Lorg/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_8
    move-object v14, v3

    sget-object v15, Ljavax/xml/datatype/DatatypeConstants;->HOURS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v14, v15}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v14

    check-cast v14, Ljava/math/BigInteger;

    move-object v8, v14

    move-object v14, v8

    if-eqz v14, :cond_9

    move-object v14, v8

    move-object v15, v4

    invoke-virtual {v14, v15}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_9

    new-instance v14, Ljava/lang/UnsupportedOperationException;

    move-object/from16 v23, v14

    move-object/from16 v14, v23

    move-object/from16 v15, v23

    const/16 v16, 0x0

    const-string/jumbo v17, "TooLarge"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v23, v18

    move-object/from16 v18, v23

    move-object/from16 v19, v23

    const/16 v20, 0x0

    new-instance v21, Ljava/lang/StringBuffer;

    move-object/from16 v23, v21

    move-object/from16 v21, v23

    move-object/from16 v22, v23

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    const-string/jumbo v22, "#compare(Duration duration)"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    sget-object v22, Ljavax/xml/datatype/DatatypeConstants;->HOURS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual/range {v22 .. v22}, Ljavax/xml/datatype/DatatypeConstants$Field;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v23, v18

    move-object/from16 v18, v23

    move-object/from16 v19, v23

    const/16 v20, 0x1

    move-object/from16 v21, v8

    invoke-virtual/range {v21 .. v21}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v16 .. v18}, Lorg/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_9
    move-object v14, v3

    sget-object v15, Ljavax/xml/datatype/DatatypeConstants;->MINUTES:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v14, v15}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v14

    check-cast v14, Ljava/math/BigInteger;

    move-object v9, v14

    move-object v14, v9

    if-eqz v14, :cond_a

    move-object v14, v9

    move-object v15, v4

    invoke-virtual {v14, v15}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_a

    new-instance v14, Ljava/lang/UnsupportedOperationException;

    move-object/from16 v23, v14

    move-object/from16 v14, v23

    move-object/from16 v15, v23

    const/16 v16, 0x0

    const-string/jumbo v17, "TooLarge"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v23, v18

    move-object/from16 v18, v23

    move-object/from16 v19, v23

    const/16 v20, 0x0

    new-instance v21, Ljava/lang/StringBuffer;

    move-object/from16 v23, v21

    move-object/from16 v21, v23

    move-object/from16 v22, v23

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    const-string/jumbo v22, "#compare(Duration duration)"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    sget-object v22, Ljavax/xml/datatype/DatatypeConstants;->MINUTES:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual/range {v22 .. v22}, Ljavax/xml/datatype/DatatypeConstants$Field;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v23, v18

    move-object/from16 v18, v23

    move-object/from16 v19, v23

    const/16 v20, 0x1

    move-object/from16 v21, v9

    invoke-virtual/range {v21 .. v21}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v16 .. v18}, Lorg/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_a
    move-object v14, v3

    sget-object v15, Ljavax/xml/datatype/DatatypeConstants;->SECONDS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v14, v15}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v14

    check-cast v14, Ljava/math/BigDecimal;

    move-object v10, v14

    const/4 v14, 0x0

    move-object v11, v14

    move-object v14, v10

    if-eqz v14, :cond_b

    move-object v14, v10

    invoke-virtual {v14}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v14

    move-object v11, v14

    :cond_b
    move-object v14, v11

    if-eqz v14, :cond_c

    move-object v14, v11

    move-object v15, v4

    invoke-virtual {v14, v15}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_c

    new-instance v14, Ljava/lang/UnsupportedOperationException;

    move-object/from16 v23, v14

    move-object/from16 v14, v23

    move-object/from16 v15, v23

    const/16 v16, 0x0

    const-string/jumbo v17, "TooLarge"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v23, v18

    move-object/from16 v18, v23

    move-object/from16 v19, v23

    const/16 v20, 0x0

    new-instance v21, Ljava/lang/StringBuffer;

    move-object/from16 v23, v21

    move-object/from16 v21, v23

    move-object/from16 v22, v23

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    const-string/jumbo v22, "#compare(Duration duration)"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    sget-object v22, Ljavax/xml/datatype/DatatypeConstants;->SECONDS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual/range {v22 .. v22}, Ljavax/xml/datatype/DatatypeConstants$Field;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v23, v18

    move-object/from16 v18, v23

    move-object/from16 v19, v23

    const/16 v20, 0x1

    move-object/from16 v21, v11

    invoke-virtual/range {v21 .. v21}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v16 .. v18}, Lorg/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_c
    new-instance v14, Ljava/util/GregorianCalendar;

    move-object/from16 v23, v14

    move-object/from16 v14, v23

    move-object/from16 v15, v23

    const/16 v16, 0x7b2

    const/16 v17, 0x1

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-direct/range {v15 .. v21}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    move-object v12, v14

    move-object v14, v12

    const/4 v15, 0x1

    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->getYears()I

    move-result v16

    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->getSign()I

    move-result v17

    mul-int v16, v16, v17

    invoke-virtual/range {v14 .. v16}, Ljava/util/GregorianCalendar;->add(II)V

    move-object v14, v12

    const/4 v15, 0x2

    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->getMonths()I

    move-result v16

    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->getSign()I

    move-result v17

    mul-int v16, v16, v17

    invoke-virtual/range {v14 .. v16}, Ljava/util/GregorianCalendar;->add(II)V

    move-object v14, v12

    const/4 v15, 0x6

    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->getDays()I

    move-result v16

    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->getSign()I

    move-result v17

    mul-int v16, v16, v17

    invoke-virtual/range {v14 .. v16}, Ljava/util/GregorianCalendar;->add(II)V

    move-object v14, v12

    const/16 v15, 0xb

    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->getHours()I

    move-result v16

    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->getSign()I

    move-result v17

    mul-int v16, v16, v17

    invoke-virtual/range {v14 .. v16}, Ljava/util/GregorianCalendar;->add(II)V

    move-object v14, v12

    const/16 v15, 0xc

    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->getMinutes()I

    move-result v16

    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->getSign()I

    move-result v17

    mul-int v16, v16, v17

    invoke-virtual/range {v14 .. v16}, Ljava/util/GregorianCalendar;->add(II)V

    move-object v14, v12

    const/16 v15, 0xd

    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->getSeconds()I

    move-result v16

    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->getSign()I

    move-result v17

    mul-int v16, v16, v17

    invoke-virtual/range {v14 .. v16}, Ljava/util/GregorianCalendar;->add(II)V

    new-instance v14, Ljava/util/GregorianCalendar;

    move-object/from16 v23, v14

    move-object/from16 v14, v23

    move-object/from16 v15, v23

    const/16 v16, 0x7b2

    const/16 v17, 0x1

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-direct/range {v15 .. v21}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    move-object v13, v14

    move-object v14, v13

    const/4 v15, 0x1

    move-object/from16 v16, v3

    invoke-virtual/range {v16 .. v16}, Ljavax/xml/datatype/Duration;->getYears()I

    move-result v16

    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Ljavax/xml/datatype/Duration;->getSign()I

    move-result v17

    mul-int v16, v16, v17

    invoke-virtual/range {v14 .. v16}, Ljava/util/GregorianCalendar;->add(II)V

    move-object v14, v13

    const/4 v15, 0x2

    move-object/from16 v16, v3

    invoke-virtual/range {v16 .. v16}, Ljavax/xml/datatype/Duration;->getMonths()I

    move-result v16

    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Ljavax/xml/datatype/Duration;->getSign()I

    move-result v17

    mul-int v16, v16, v17

    invoke-virtual/range {v14 .. v16}, Ljava/util/GregorianCalendar;->add(II)V

    move-object v14, v13

    const/4 v15, 0x6

    move-object/from16 v16, v3

    invoke-virtual/range {v16 .. v16}, Ljavax/xml/datatype/Duration;->getDays()I

    move-result v16

    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Ljavax/xml/datatype/Duration;->getSign()I

    move-result v17

    mul-int v16, v16, v17

    invoke-virtual/range {v14 .. v16}, Ljava/util/GregorianCalendar;->add(II)V

    move-object v14, v13

    const/16 v15, 0xb

    move-object/from16 v16, v3

    invoke-virtual/range {v16 .. v16}, Ljavax/xml/datatype/Duration;->getHours()I

    move-result v16

    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Ljavax/xml/datatype/Duration;->getSign()I

    move-result v17

    mul-int v16, v16, v17

    invoke-virtual/range {v14 .. v16}, Ljava/util/GregorianCalendar;->add(II)V

    move-object v14, v13

    const/16 v15, 0xc

    move-object/from16 v16, v3

    invoke-virtual/range {v16 .. v16}, Ljavax/xml/datatype/Duration;->getMinutes()I

    move-result v16

    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Ljavax/xml/datatype/Duration;->getSign()I

    move-result v17

    mul-int v16, v16, v17

    invoke-virtual/range {v14 .. v16}, Ljava/util/GregorianCalendar;->add(II)V

    move-object v14, v13

    const/16 v15, 0xd

    move-object/from16 v16, v3

    invoke-virtual/range {v16 .. v16}, Ljavax/xml/datatype/Duration;->getSeconds()I

    move-result v16

    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Ljavax/xml/datatype/Duration;->getSign()I

    move-result v17

    mul-int v16, v16, v17

    invoke-virtual/range {v14 .. v16}, Ljava/util/GregorianCalendar;->add(II)V

    move-object v14, v12

    move-object v15, v13

    invoke-virtual {v14, v15}, Ljava/util/GregorianCalendar;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    const/4 v14, 0x0

    move v2, v14

    :goto_0
    return v2

    :cond_d
    move-object v14, v2

    move-object v15, v2

    move-object/from16 v16, v3

    invoke-direct/range {v14 .. v16}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->compareDates(Ljavax/xml/datatype/Duration;Ljavax/xml/datatype/Duration;)I

    move-result v14

    move v2, v14

    goto :goto_0
.end method

.method public getDays()I
    .locals 3

    move-object v0, p0

    move-object v1, v0

    sget-object v2, Ljavax/xml/datatype/DatatypeConstants;->DAYS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-direct {v1, v2}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->getInt(Ljavax/xml/datatype/DatatypeConstants$Field;)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    if-nez v3, :cond_0

    const-string/jumbo v3, "javax.xml.datatype.Duration#isSet(DatatypeConstants.Field field) "

    move-object v2, v3

    new-instance v3, Ljava/lang/NullPointerException;

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    const/4 v5, 0x0

    const-string/jumbo v6, "FieldCannotBeNull"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move-object v10, v2

    aput-object v10, v8, v9

    invoke-static {v5, v6, v7}, Lorg/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    move-object v3, v1

    sget-object v4, Ljavax/xml/datatype/DatatypeConstants;->YEARS:Ljavax/xml/datatype/DatatypeConstants$Field;

    if-ne v3, v4, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->years:Ljava/math/BigInteger;

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_1
    move-object v3, v1

    sget-object v4, Ljavax/xml/datatype/DatatypeConstants;->MONTHS:Ljavax/xml/datatype/DatatypeConstants$Field;

    if-ne v3, v4, :cond_2

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->months:Ljava/math/BigInteger;

    move-object v0, v3

    goto :goto_0

    :cond_2
    move-object v3, v1

    sget-object v4, Ljavax/xml/datatype/DatatypeConstants;->DAYS:Ljavax/xml/datatype/DatatypeConstants$Field;

    if-ne v3, v4, :cond_3

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->days:Ljava/math/BigInteger;

    move-object v0, v3

    goto :goto_0

    :cond_3
    move-object v3, v1

    sget-object v4, Ljavax/xml/datatype/DatatypeConstants;->HOURS:Ljavax/xml/datatype/DatatypeConstants$Field;

    if-ne v3, v4, :cond_4

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->hours:Ljava/math/BigInteger;

    move-object v0, v3

    goto :goto_0

    :cond_4
    move-object v3, v1

    sget-object v4, Ljavax/xml/datatype/DatatypeConstants;->MINUTES:Ljavax/xml/datatype/DatatypeConstants$Field;

    if-ne v3, v4, :cond_5

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->minutes:Ljava/math/BigInteger;

    move-object v0, v3

    goto :goto_0

    :cond_5
    move-object v3, v1

    sget-object v4, Ljavax/xml/datatype/DatatypeConstants;->SECONDS:Ljavax/xml/datatype/DatatypeConstants$Field;

    if-ne v3, v4, :cond_6

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    move-object v0, v3

    goto :goto_0

    :cond_6
    const-string/jumbo v3, "javax.xml.datatype.Duration#(getSet(DatatypeConstants.Field field)"

    move-object v2, v3

    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    const/4 v5, 0x0

    const-string/jumbo v6, "UnknownField"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move-object v10, v2

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x1

    move-object v10, v1

    invoke-virtual {v10}, Ljavax/xml/datatype/DatatypeConstants$Field;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v5, v6, v7}, Lorg/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getHours()I
    .locals 3

    move-object v0, p0

    move-object v1, v0

    sget-object v2, Ljavax/xml/datatype/DatatypeConstants;->HOURS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-direct {v1, v2}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->getInt(Ljavax/xml/datatype/DatatypeConstants$Field;)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getMinutes()I
    .locals 3

    move-object v0, p0

    move-object v1, v0

    sget-object v2, Ljavax/xml/datatype/DatatypeConstants;->MINUTES:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-direct {v1, v2}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->getInt(Ljavax/xml/datatype/DatatypeConstants$Field;)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getMonths()I
    .locals 3

    move-object v0, p0

    move-object v1, v0

    sget-object v2, Ljavax/xml/datatype/DatatypeConstants;->MONTHS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-direct {v1, v2}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->getInt(Ljavax/xml/datatype/DatatypeConstants$Field;)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getSeconds()I
    .locals 3

    move-object v0, p0

    move-object v1, v0

    sget-object v2, Ljavax/xml/datatype/DatatypeConstants;->SECONDS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-direct {v1, v2}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->getInt(Ljavax/xml/datatype/DatatypeConstants$Field;)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getSign()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    move v0, v1

    return v0
.end method

.method public getTimeInMillis(Ljava/util/Calendar;)J
    .locals 8

    move-object v1, p0

    move-object v2, p1

    move-object v4, v2

    invoke-virtual {v4}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Calendar;

    move-object v3, v4

    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v4, v5}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->addTo(Ljava/util/Calendar;)V

    move-object v4, v3

    invoke-static {v4}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->getCalendarTimeInMillis(Ljava/util/Calendar;)J

    move-result-wide v4

    move-object v6, v2

    invoke-static {v6}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->getCalendarTimeInMillis(Ljava/util/Calendar;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    move-wide v1, v4

    return-wide v1
.end method

.method public getTimeInMillis(Ljava/util/Date;)J
    .locals 9

    move-object v1, p0

    move-object v2, p1

    new-instance v4, Ljava/util/GregorianCalendar;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/util/GregorianCalendar;-><init>()V

    move-object v3, v4

    move-object v4, v3

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v4, v5}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->addTo(Ljava/util/Calendar;)V

    move-object v4, v3

    invoke-static {v4}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->getCalendarTimeInMillis(Ljava/util/Calendar;)J

    move-result-wide v4

    move-object v6, v2

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    move-wide v1, v4

    return-wide v1
.end method

.method public getYears()I
    .locals 3

    move-object v0, p0

    move-object v1, v0

    sget-object v2, Ljavax/xml/datatype/DatatypeConstants;->YEARS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-direct {v1, v2}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->getInt(Ljavax/xml/datatype/DatatypeConstants$Field;)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public hashCode()I
    .locals 4

    move-object v0, p0

    sget-object v2, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->TEST_POINTS:[Ljavax/xml/datatype/XMLGregorianCalendar;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljavax/xml/datatype/XMLGregorianCalendar;->toGregorianCalendar()Ljava/util/GregorianCalendar;

    move-result-object v2

    move-object v1, v2

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->addTo(Ljava/util/Calendar;)V

    move-object v2, v1

    invoke-static {v2}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->getCalendarTimeInMillis(Ljava/util/Calendar;)J

    move-result-wide v2

    long-to-int v2, v2

    move v0, v2

    return v0
.end method

.method public isSet(Ljavax/xml/datatype/DatatypeConstants$Field;)Z
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    if-nez v3, :cond_0

    const-string/jumbo v3, "javax.xml.datatype.Duration#isSet(DatatypeConstants.Field field)"

    move-object v2, v3

    new-instance v3, Ljava/lang/NullPointerException;

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    const/4 v5, 0x0

    const-string/jumbo v6, "FieldCannotBeNull"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move-object v10, v2

    aput-object v10, v8, v9

    invoke-static {v5, v6, v7}, Lorg/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    move-object v3, v1

    sget-object v4, Ljavax/xml/datatype/DatatypeConstants;->YEARS:Ljavax/xml/datatype/DatatypeConstants$Field;

    if-ne v3, v4, :cond_2

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->years:Ljava/math/BigInteger;

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    :goto_1
    return v0

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    move-object v3, v1

    sget-object v4, Ljavax/xml/datatype/DatatypeConstants;->MONTHS:Ljavax/xml/datatype/DatatypeConstants$Field;

    if-ne v3, v4, :cond_4

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->months:Ljava/math/BigInteger;

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    :goto_2
    move v0, v3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    :cond_4
    move-object v3, v1

    sget-object v4, Ljavax/xml/datatype/DatatypeConstants;->DAYS:Ljavax/xml/datatype/DatatypeConstants$Field;

    if-ne v3, v4, :cond_6

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->days:Ljava/math/BigInteger;

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    :goto_3
    move v0, v3

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    goto :goto_3

    :cond_6
    move-object v3, v1

    sget-object v4, Ljavax/xml/datatype/DatatypeConstants;->HOURS:Ljavax/xml/datatype/DatatypeConstants$Field;

    if-ne v3, v4, :cond_8

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->hours:Ljava/math/BigInteger;

    if-eqz v3, :cond_7

    const/4 v3, 0x1

    :goto_4
    move v0, v3

    goto :goto_1

    :cond_7
    const/4 v3, 0x0

    goto :goto_4

    :cond_8
    move-object v3, v1

    sget-object v4, Ljavax/xml/datatype/DatatypeConstants;->MINUTES:Ljavax/xml/datatype/DatatypeConstants$Field;

    if-ne v3, v4, :cond_a

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->minutes:Ljava/math/BigInteger;

    if-eqz v3, :cond_9

    const/4 v3, 0x1

    :goto_5
    move v0, v3

    goto :goto_1

    :cond_9
    const/4 v3, 0x0

    goto :goto_5

    :cond_a
    move-object v3, v1

    sget-object v4, Ljavax/xml/datatype/DatatypeConstants;->SECONDS:Ljavax/xml/datatype/DatatypeConstants$Field;

    if-ne v3, v4, :cond_c

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    if-eqz v3, :cond_b

    const/4 v3, 0x1

    :goto_6
    move v0, v3

    goto :goto_1

    :cond_b
    const/4 v3, 0x0

    goto :goto_6

    :cond_c
    const-string/jumbo v3, "javax.xml.datatype.Duration#isSet(DatatypeConstants.Field field)"

    move-object v2, v3

    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    const/4 v5, 0x0

    const-string/jumbo v6, "UnknownField"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move-object v10, v2

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x1

    move-object v10, v1

    invoke-virtual {v10}, Ljavax/xml/datatype/DatatypeConstants$Field;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v5, v6, v7}, Lorg/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public multiply(I)Ljavax/xml/datatype/Duration;
    .locals 6

    move-object v1, p0

    move v2, p1

    move-object v3, v1

    move v4, v2

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->multiply(Ljava/math/BigDecimal;)Ljavax/xml/datatype/Duration;

    move-result-object v3

    move-object v1, v3

    return-object v1
.end method

.method public multiply(Ljava/math/BigDecimal;)Ljavax/xml/datatype/Duration;
    .locals 20

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    sget-object v9, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->ZERO:Ljava/math/BigDecimal;

    move-object v4, v9

    move-object v9, v3

    invoke-virtual {v9}, Ljava/math/BigDecimal;->signum()I

    move-result v9

    move v5, v9

    move-object v9, v3

    invoke-virtual {v9}, Ljava/math/BigDecimal;->abs()Ljava/math/BigDecimal;

    move-result-object v9

    move-object v3, v9

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/math/BigDecimal;

    move-object v6, v9

    const/4 v9, 0x0

    move v7, v9

    :goto_0
    move v9, v7

    const/4 v10, 0x5

    if-lt v9, v10, :cond_0

    move-object v9, v2

    iget-object v9, v9, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    if-eqz v9, :cond_3

    move-object v9, v6

    const/4 v10, 0x5

    move-object v11, v2

    iget-object v11, v11, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    move-object v12, v3

    invoke-virtual {v11, v12}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v11

    move-object v12, v4

    invoke-virtual {v11, v12}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v11

    aput-object v11, v9, v10

    :goto_1
    new-instance v9, Lorg/apache/xerces/jaxp/datatype/DurationImpl;

    move-object/from16 v19, v9

    move-object/from16 v9, v19

    move-object/from16 v10, v19

    move-object v11, v2

    iget v11, v11, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    move v12, v5

    mul-int/2addr v11, v12

    if-ltz v11, :cond_4

    const/4 v11, 0x1

    :goto_2
    move-object v12, v6

    const/4 v13, 0x0

    aget-object v12, v12, v13

    const/4 v13, 0x0

    move-object v14, v2

    iget-object v14, v14, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->years:Ljava/math/BigInteger;

    if-ne v13, v14, :cond_5

    const/4 v13, 0x1

    :goto_3
    invoke-static {v12, v13}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->toBigInteger(Ljava/math/BigDecimal;Z)Ljava/math/BigInteger;

    move-result-object v12

    move-object v13, v6

    const/4 v14, 0x1

    aget-object v13, v13, v14

    const/4 v14, 0x0

    move-object v15, v2

    iget-object v15, v15, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->months:Ljava/math/BigInteger;

    if-ne v14, v15, :cond_6

    const/4 v14, 0x1

    :goto_4
    invoke-static {v13, v14}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->toBigInteger(Ljava/math/BigDecimal;Z)Ljava/math/BigInteger;

    move-result-object v13

    move-object v14, v6

    const/4 v15, 0x2

    aget-object v14, v14, v15

    const/4 v15, 0x0

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->days:Ljava/math/BigInteger;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_7

    const/4 v15, 0x1

    :goto_5
    invoke-static {v14, v15}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->toBigInteger(Ljava/math/BigDecimal;Z)Ljava/math/BigInteger;

    move-result-object v14

    move-object v15, v6

    const/16 v16, 0x3

    aget-object v15, v15, v16

    const/16 v16, 0x0

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->hours:Ljava/math/BigInteger;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_8

    const/16 v16, 0x1

    :goto_6
    invoke-static/range {v15 .. v16}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->toBigInteger(Ljava/math/BigDecimal;Z)Ljava/math/BigInteger;

    move-result-object v15

    move-object/from16 v16, v6

    const/16 v17, 0x4

    aget-object v16, v16, v17

    const/16 v17, 0x0

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->minutes:Ljava/math/BigInteger;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_9

    const/16 v17, 0x1

    :goto_7
    invoke-static/range {v16 .. v17}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->toBigInteger(Ljava/math/BigDecimal;Z)Ljava/math/BigInteger;

    move-result-object v16

    move-object/from16 v17, v6

    const/16 v18, 0x5

    aget-object v17, v17, v18

    invoke-virtual/range {v17 .. v17}, Ljava/math/BigDecimal;->signum()I

    move-result v17

    if-nez v17, :cond_a

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    move-object/from16 v17, v0

    if-nez v17, :cond_a

    const/16 v17, 0x0

    :goto_8
    invoke-direct/range {v10 .. v17}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigDecimal;)V

    move-object v2, v9

    return-object v2

    :cond_0
    move-object v9, v2

    sget-object v10, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->FIELDS:[Ljavax/xml/datatype/DatatypeConstants$Field;

    move v11, v7

    aget-object v10, v10, v11

    invoke-direct {v9, v10}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->getFieldAsBigDecimal(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/math/BigDecimal;

    move-result-object v9

    move-object v8, v9

    move-object v9, v8

    move-object v10, v3

    invoke-virtual {v9, v10}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v9

    move-object v10, v4

    invoke-virtual {v9, v10}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v9

    move-object v8, v9

    move-object v9, v6

    move v10, v7

    move-object v11, v8

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v11

    aput-object v11, v9, v10

    move-object v9, v8

    move-object v10, v6

    move v11, v7

    aget-object v10, v10, v11

    invoke-virtual {v9, v10}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v9

    move-object v8, v9

    move v9, v7

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    move-object v9, v8

    invoke-virtual {v9}, Ljava/math/BigDecimal;->signum()I

    move-result v9

    if-eqz v9, :cond_1

    new-instance v9, Ljava/lang/IllegalStateException;

    move-object/from16 v19, v9

    move-object/from16 v9, v19

    move-object/from16 v10, v19

    invoke-direct {v10}, Ljava/lang/IllegalStateException;-><init>()V

    throw v9

    :cond_1
    sget-object v9, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->ZERO:Ljava/math/BigDecimal;

    move-object v4, v9

    :goto_9
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_2
    move-object v9, v8

    sget-object v10, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->FACTORS:[Ljava/math/BigDecimal;

    move v11, v7

    aget-object v10, v10, v11

    invoke-virtual {v9, v10}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v9

    move-object v4, v9

    goto :goto_9

    :cond_3
    move-object v9, v6

    const/4 v10, 0x5

    move-object v11, v4

    aput-object v11, v9, v10

    goto/16 :goto_1

    :cond_4
    const/4 v11, 0x0

    goto/16 :goto_2

    :cond_5
    const/4 v13, 0x0

    goto/16 :goto_3

    :cond_6
    const/4 v14, 0x0

    goto/16 :goto_4

    :cond_7
    const/4 v15, 0x0

    goto/16 :goto_5

    :cond_8
    const/16 v16, 0x0

    goto/16 :goto_6

    :cond_9
    const/16 v17, 0x0

    goto/16 :goto_7

    :cond_a
    move-object/from16 v17, v6

    const/16 v18, 0x5

    aget-object v17, v17, v18

    goto :goto_8
.end method

.method public negate()Ljavax/xml/datatype/Duration;
    .locals 11

    move-object v0, p0

    new-instance v1, Lorg/apache/xerces/jaxp/datatype/DurationImpl;

    move-object v10, v1

    move-object v1, v10

    move-object v2, v10

    move-object v3, v0

    iget v3, v3, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    if-gtz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->years:Ljava/math/BigInteger;

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->months:Ljava/math/BigInteger;

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->days:Ljava/math/BigInteger;

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->hours:Ljava/math/BigInteger;

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->minutes:Ljava/math/BigInteger;

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    invoke-direct/range {v2 .. v9}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigDecimal;)V

    move-object v0, v1

    return-object v0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public normalizeWith(Ljava/util/Calendar;)Ljavax/xml/datatype/Duration;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v6, v1

    invoke-virtual {v6}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Calendar;

    move-object v2, v6

    move-object v6, v2

    const/4 v7, 0x1

    move-object v8, v0

    invoke-virtual {v8}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->getYears()I

    move-result v8

    move-object v9, v0

    iget v9, v9, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    mul-int/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/util/Calendar;->add(II)V

    move-object v6, v2

    const/4 v7, 0x2

    move-object v8, v0

    invoke-virtual {v8}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->getMonths()I

    move-result v8

    move-object v9, v0

    iget v9, v9, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    mul-int/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/util/Calendar;->add(II)V

    move-object v6, v2

    const/4 v7, 0x5

    move-object v8, v0

    invoke-virtual {v8}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->getDays()I

    move-result v8

    move-object v9, v0

    iget v9, v9, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    mul-int/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/util/Calendar;->add(II)V

    move-object v6, v2

    invoke-static {v6}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->getCalendarTimeInMillis(Ljava/util/Calendar;)J

    move-result-wide v6

    move-object v8, v1

    invoke-static {v8}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->getCalendarTimeInMillis(Ljava/util/Calendar;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    move-wide v3, v6

    move-wide v6, v3

    const-wide/32 v8, 0x5265c00

    div-long/2addr v6, v8

    long-to-int v6, v6

    move v5, v6

    new-instance v6, Lorg/apache/xerces/jaxp/datatype/DurationImpl;

    move-object/from16 v16, v6

    move-object/from16 v6, v16

    move-object/from16 v7, v16

    move v8, v5

    if-ltz v8, :cond_0

    const/4 v8, 0x1

    :goto_0
    const/4 v9, 0x0

    const/4 v10, 0x0

    move v11, v5

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    invoke-static {v11}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->wrap(I)Ljava/math/BigInteger;

    move-result-object v11

    move-object v12, v0

    sget-object v13, Ljavax/xml/datatype/DatatypeConstants;->HOURS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v12, v13}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v12

    check-cast v12, Ljava/math/BigInteger;

    move-object v13, v0

    sget-object v14, Ljavax/xml/datatype/DatatypeConstants;->MINUTES:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v13, v14}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v13

    check-cast v13, Ljava/math/BigInteger;

    move-object v14, v0

    sget-object v15, Ljavax/xml/datatype/DatatypeConstants;->SECONDS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v14, v15}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v14

    check-cast v14, Ljava/math/BigDecimal;

    invoke-direct/range {v7 .. v14}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigDecimal;)V

    move-object v0, v6

    return-object v0

    :cond_0
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public signum()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    move v0, v1

    return v0
.end method

.method public subtract(Ljavax/xml/datatype/Duration;)Ljavax/xml/datatype/Duration;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavax/xml/datatype/Duration;->negate()Ljavax/xml/datatype/Duration;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->add(Ljavax/xml/datatype/Duration;)Ljavax/xml/datatype/Duration;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    move-object v0, p0

    new-instance v2, Ljava/lang/StringBuffer;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    move-object v1, v2

    move-object v2, v0

    iget v2, v2, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    if-gez v2, :cond_0

    move-object v2, v1

    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    :cond_0
    move-object v2, v1

    const/16 v3, 0x50

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->years:Ljava/math/BigInteger;

    if-eqz v2, :cond_1

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->years:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x59

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->months:Ljava/math/BigInteger;

    if-eqz v2, :cond_2

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->months:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x4d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    :cond_2
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->days:Ljava/math/BigInteger;

    if-eqz v2, :cond_3

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->days:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x44

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    :cond_3
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->hours:Ljava/math/BigInteger;

    if-nez v2, :cond_4

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->minutes:Ljava/math/BigInteger;

    if-nez v2, :cond_4

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    if-eqz v2, :cond_7

    :cond_4
    move-object v2, v1

    const/16 v3, 0x54

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->hours:Ljava/math/BigInteger;

    if-eqz v2, :cond_5

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->hours:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x48

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    :cond_5
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->minutes:Ljava/math/BigInteger;

    if-eqz v2, :cond_6

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->minutes:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x4d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    :cond_6
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    if-eqz v2, :cond_7

    move-object v2, v1

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    invoke-direct {v3, v4}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->toString(Ljava/math/BigDecimal;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x53

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    :cond_7
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method
