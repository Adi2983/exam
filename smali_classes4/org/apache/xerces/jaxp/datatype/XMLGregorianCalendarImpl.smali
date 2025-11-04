.class Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;
.super Ljavax/xml/datatype/XMLGregorianCalendar;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$1;,
        Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;,
        Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$DaysInMonth;
    }
.end annotation


# static fields
.field private static final BILLION_B:Ljava/math/BigInteger;

.field private static final BILLION_I:I = 0x3b9aca00

.field private static final DAY:I = 0x2

.field private static final DECIMAL_ONE:Ljava/math/BigDecimal;

.field private static final DECIMAL_SIXTY:Ljava/math/BigDecimal;

.field private static final DECIMAL_ZERO:Ljava/math/BigDecimal;

.field private static final FIELD_NAME:[Ljava/lang/String;

.field private static final FOUR:Ljava/math/BigInteger;

.field private static final FOUR_HUNDRED:Ljava/math/BigInteger;

.field private static final HOUR:I = 0x3

.field private static final HUNDRED:Ljava/math/BigInteger;

.field public static final LEAP_YEAR_DEFAULT:Ljavax/xml/datatype/XMLGregorianCalendar;

.field private static final MAX_FIELD_VALUE:[I

.field private static final MILLISECOND:I = 0x6

.field private static final MINUTE:I = 0x4

.field private static final MIN_FIELD_VALUE:[I

.field private static final MONTH:I = 0x1

.field private static final PURE_GREGORIAN_CHANGE:Ljava/util/Date;

.field private static final SECOND:I = 0x5

.field private static final SIXTY:Ljava/math/BigInteger;

.field private static final TIMEZONE:I = 0x7

.field private static final TWELVE:Ljava/math/BigInteger;

.field private static final TWENTY_FOUR:Ljava/math/BigInteger;

.field private static final YEAR:I = 0x0

.field private static final serialVersionUID:J = 0x3632c76f616c9fe2L


# instance fields
.field private day:I

.field private eon:Ljava/math/BigInteger;

.field private fractionalSecond:Ljava/math/BigDecimal;

.field private hour:I

.field private minute:I

.field private month:I

.field private orig_day:I

.field private orig_eon:Ljava/math/BigInteger;

.field private orig_fracSeconds:Ljava/math/BigDecimal;

.field private orig_hour:I

.field private orig_minute:I

.field private orig_month:I

.field private orig_second:I

.field private orig_timezone:I

.field private orig_year:I

.field private second:I

.field private timezone:I

.field private year:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-wide/32 v0, 0x3b9aca00

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->BILLION_B:Ljava/math/BigInteger;

    new-instance v0, Ljava/util/Date;

    move-object v8, v0

    move-object v0, v8

    move-object v1, v8

    const-wide/high16 v2, -0x8000000000000000L

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    sput-object v0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->PURE_GREGORIAN_CHANGE:Ljava/util/Date;

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->MIN_FIELD_VALUE:[I

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->MAX_FIELD_VALUE:[I

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    move-object v8, v0

    move-object v0, v8

    move-object v1, v8

    const/4 v2, 0x0

    const-string/jumbo v3, "Year"

    aput-object v3, v1, v2

    move-object v8, v0

    move-object v0, v8

    move-object v1, v8

    const/4 v2, 0x1

    const-string/jumbo v3, "Month"

    aput-object v3, v1, v2

    move-object v8, v0

    move-object v0, v8

    move-object v1, v8

    const/4 v2, 0x2

    const-string/jumbo v3, "Day"

    aput-object v3, v1, v2

    move-object v8, v0

    move-object v0, v8

    move-object v1, v8

    const/4 v2, 0x3

    const-string/jumbo v3, "Hour"

    aput-object v3, v1, v2

    move-object v8, v0

    move-object v0, v8

    move-object v1, v8

    const/4 v2, 0x4

    const-string/jumbo v3, "Minute"

    aput-object v3, v1, v2

    move-object v8, v0

    move-object v0, v8

    move-object v1, v8

    const/4 v2, 0x5

    const-string/jumbo v3, "Second"

    aput-object v3, v1, v2

    move-object v8, v0

    move-object v0, v8

    move-object v1, v8

    const/4 v2, 0x6

    const-string/jumbo v3, "Millisecond"

    aput-object v3, v1, v2

    move-object v8, v0

    move-object v0, v8

    move-object v1, v8

    const/4 v2, 0x7

    const-string/jumbo v3, "Timezone"

    aput-object v3, v1, v2

    sput-object v0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->FIELD_NAME:[Ljava/lang/String;

    const/16 v0, 0x190

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, -0x80000000

    const/high16 v7, -0x80000000

    invoke-static/range {v0 .. v7}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->createDateTime(IIIIIIII)Ljavax/xml/datatype/XMLGregorianCalendar;

    move-result-object v0

    sput-object v0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->LEAP_YEAR_DEFAULT:Ljavax/xml/datatype/XMLGregorianCalendar;

    const-wide/16 v0, 0x4

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->FOUR:Ljava/math/BigInteger;

    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->HUNDRED:Ljava/math/BigInteger;

    const-wide/16 v0, 0x190

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->FOUR_HUNDRED:Ljava/math/BigInteger;

    const-wide/16 v0, 0x3c

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->SIXTY:Ljava/math/BigInteger;

    const-wide/16 v0, 0x18

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->TWENTY_FOUR:Ljava/math/BigInteger;

    const-wide/16 v0, 0xc

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->TWELVE:Ljava/math/BigInteger;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    sput-object v0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->DECIMAL_ZERO:Ljava/math/BigDecimal;

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    sput-object v0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->DECIMAL_ONE:Ljava/math/BigDecimal;

    const-wide/16 v0, 0x3c

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    sput-object v0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->DECIMAL_SIXTY:Ljava/math/BigDecimal;

    return-void

    nop

    :array_0
    .array-data 4
        -0x80000000
        0x1
        0x1
        0x0
        0x0
        0x0
        0x0
        -0x348
    .end array-data

    :array_1
    .array-data 4
        0x7fffffff
        0xc
        0x1f
        0x18
        0x3b
        0x3c
        0x3e7
        0x348
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljavax/xml/datatype/XMLGregorianCalendar;-><init>()V

    move-object v1, v0

    const/high16 v2, -0x80000000

    iput v2, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_year:I

    move-object v1, v0

    const/high16 v2, -0x80000000

    iput v2, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_month:I

    move-object v1, v0

    const/high16 v2, -0x80000000

    iput v2, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_day:I

    move-object v1, v0

    const/high16 v2, -0x80000000

    iput v2, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_hour:I

    move-object v1, v0

    const/high16 v2, -0x80000000

    iput v2, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_minute:I

    move-object v1, v0

    const/high16 v2, -0x80000000

    iput v2, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_second:I

    move-object v1, v0

    const/high16 v2, -0x80000000

    iput v2, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_timezone:I

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->eon:Ljava/math/BigInteger;

    move-object v1, v0

    const/high16 v2, -0x80000000

    iput v2, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    move-object v1, v0

    const/high16 v2, -0x80000000

    iput v2, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    move-object v1, v0

    const/high16 v2, -0x80000000

    iput v2, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->day:I

    move-object v1, v0

    const/high16 v2, -0x80000000

    iput v2, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->timezone:I

    move-object v1, v0

    const/high16 v2, -0x80000000

    iput v2, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->hour:I

    move-object v1, v0

    const/high16 v2, -0x80000000

    iput v2, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->minute:I

    move-object v1, v0

    const/high16 v2, -0x80000000

    iput v2, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->second:I

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->fractionalSecond:Ljava/math/BigDecimal;

    return-void
.end method

.method private constructor <init>(IIIIIIII)V
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object v10, v0

    invoke-direct {v10}, Ljavax/xml/datatype/XMLGregorianCalendar;-><init>()V

    move-object v10, v0

    const/high16 v11, -0x80000000

    iput v11, v10, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_year:I

    move-object v10, v0

    const/high16 v11, -0x80000000

    iput v11, v10, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_month:I

    move-object v10, v0

    const/high16 v11, -0x80000000

    iput v11, v10, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_day:I

    move-object v10, v0

    const/high16 v11, -0x80000000

    iput v11, v10, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_hour:I

    move-object v10, v0

    const/high16 v11, -0x80000000

    iput v11, v10, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_minute:I

    move-object v10, v0

    const/high16 v11, -0x80000000

    iput v11, v10, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_second:I

    move-object v10, v0

    const/high16 v11, -0x80000000

    iput v11, v10, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_timezone:I

    move-object v10, v0

    const/4 v11, 0x0

    iput-object v11, v10, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->eon:Ljava/math/BigInteger;

    move-object v10, v0

    const/high16 v11, -0x80000000

    iput v11, v10, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    move-object v10, v0

    const/high16 v11, -0x80000000

    iput v11, v10, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    move-object v10, v0

    const/high16 v11, -0x80000000

    iput v11, v10, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->day:I

    move-object v10, v0

    const/high16 v11, -0x80000000

    iput v11, v10, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->timezone:I

    move-object v10, v0

    const/high16 v11, -0x80000000

    iput v11, v10, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->hour:I

    move-object v10, v0

    const/high16 v11, -0x80000000

    iput v11, v10, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->minute:I

    move-object v10, v0

    const/high16 v11, -0x80000000

    iput v11, v10, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->second:I

    move-object v10, v0

    const/4 v11, 0x0

    iput-object v11, v10, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->fractionalSecond:Ljava/math/BigDecimal;

    move-object v10, v0

    move v11, v1

    invoke-virtual {v10, v11}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setYear(I)V

    move-object v10, v0

    move v11, v2

    invoke-virtual {v10, v11}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setMonth(I)V

    move-object v10, v0

    move v11, v3

    invoke-virtual {v10, v11}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setDay(I)V

    move-object v10, v0

    move v11, v4

    move v12, v5

    move v13, v6

    invoke-virtual {v10, v11, v12, v13}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setTime(III)V

    move-object v10, v0

    move v11, v8

    invoke-virtual {v10, v11}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setTimezone(I)V

    const/4 v10, 0x0

    move-object v9, v10

    move v10, v7

    const/high16 v11, -0x80000000

    if-eq v10, v11, :cond_0

    move v10, v7

    int-to-long v10, v10

    const/4 v12, 0x3

    invoke-static {v10, v11, v12}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v10

    move-object v9, v10

    :cond_0
    move-object v10, v0

    move-object v11, v9

    invoke-virtual {v10, v11}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setFractionalSecond(Ljava/math/BigDecimal;)V

    move-object v10, v0

    invoke-virtual {v10}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->isValid()Z

    move-result v10

    if-nez v10, :cond_1

    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/4 v12, 0x0

    const-string/jumbo v13, "InvalidXGCValue-milli"

    const/16 v14, 0x8

    new-array v14, v14, [Ljava/lang/Object;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    const/16 v16, 0x0

    new-instance v17, Ljava/lang/Integer;

    move-object/from16 v20, v17

    move-object/from16 v17, v20

    move-object/from16 v18, v20

    move/from16 v19, v1

    invoke-direct/range {v18 .. v19}, Ljava/lang/Integer;-><init>(I)V

    aput-object v17, v15, v16

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    const/16 v16, 0x1

    new-instance v17, Ljava/lang/Integer;

    move-object/from16 v20, v17

    move-object/from16 v17, v20

    move-object/from16 v18, v20

    move/from16 v19, v2

    invoke-direct/range {v18 .. v19}, Ljava/lang/Integer;-><init>(I)V

    aput-object v17, v15, v16

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    const/16 v16, 0x2

    new-instance v17, Ljava/lang/Integer;

    move-object/from16 v20, v17

    move-object/from16 v17, v20

    move-object/from16 v18, v20

    move/from16 v19, v3

    invoke-direct/range {v18 .. v19}, Ljava/lang/Integer;-><init>(I)V

    aput-object v17, v15, v16

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    const/16 v16, 0x3

    new-instance v17, Ljava/lang/Integer;

    move-object/from16 v20, v17

    move-object/from16 v17, v20

    move-object/from16 v18, v20

    move/from16 v19, v4

    invoke-direct/range {v18 .. v19}, Ljava/lang/Integer;-><init>(I)V

    aput-object v17, v15, v16

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    const/16 v16, 0x4

    new-instance v17, Ljava/lang/Integer;

    move-object/from16 v20, v17

    move-object/from16 v17, v20

    move-object/from16 v18, v20

    move/from16 v19, v5

    invoke-direct/range {v18 .. v19}, Ljava/lang/Integer;-><init>(I)V

    aput-object v17, v15, v16

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    const/16 v16, 0x5

    new-instance v17, Ljava/lang/Integer;

    move-object/from16 v20, v17

    move-object/from16 v17, v20

    move-object/from16 v18, v20

    move/from16 v19, v6

    invoke-direct/range {v18 .. v19}, Ljava/lang/Integer;-><init>(I)V

    aput-object v17, v15, v16

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    const/16 v16, 0x6

    new-instance v17, Ljava/lang/Integer;

    move-object/from16 v20, v17

    move-object/from16 v17, v20

    move-object/from16 v18, v20

    move/from16 v19, v7

    invoke-direct/range {v18 .. v19}, Ljava/lang/Integer;-><init>(I)V

    aput-object v17, v15, v16

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    const/16 v16, 0x7

    new-instance v17, Ljava/lang/Integer;

    move-object/from16 v20, v17

    move-object/from16 v17, v20

    move-object/from16 v18, v20

    move/from16 v19, v8

    invoke-direct/range {v18 .. v19}, Ljava/lang/Integer;-><init>(I)V

    aput-object v17, v15, v16

    invoke-static {v12, v13, v14}, Lorg/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_1
    move-object v10, v0

    invoke-direct {v10}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->save()V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v9, v0

    invoke-direct {v9}, Ljavax/xml/datatype/XMLGregorianCalendar;-><init>()V

    move-object v9, v0

    const/high16 v10, -0x80000000

    iput v10, v9, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_year:I

    move-object v9, v0

    const/high16 v10, -0x80000000

    iput v10, v9, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_month:I

    move-object v9, v0

    const/high16 v10, -0x80000000

    iput v10, v9, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_day:I

    move-object v9, v0

    const/high16 v10, -0x80000000

    iput v10, v9, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_hour:I

    move-object v9, v0

    const/high16 v10, -0x80000000

    iput v10, v9, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_minute:I

    move-object v9, v0

    const/high16 v10, -0x80000000

    iput v10, v9, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_second:I

    move-object v9, v0

    const/high16 v10, -0x80000000

    iput v10, v9, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_timezone:I

    move-object v9, v0

    const/4 v10, 0x0

    iput-object v10, v9, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->eon:Ljava/math/BigInteger;

    move-object v9, v0

    const/high16 v10, -0x80000000

    iput v10, v9, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    move-object v9, v0

    const/high16 v10, -0x80000000

    iput v10, v9, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    move-object v9, v0

    const/high16 v10, -0x80000000

    iput v10, v9, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->day:I

    move-object v9, v0

    const/high16 v10, -0x80000000

    iput v10, v9, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->timezone:I

    move-object v9, v0

    const/high16 v10, -0x80000000

    iput v10, v9, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->hour:I

    move-object v9, v0

    const/high16 v10, -0x80000000

    iput v10, v9, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->minute:I

    move-object v9, v0

    const/high16 v10, -0x80000000

    iput v10, v9, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->second:I

    move-object v9, v0

    const/4 v10, 0x0

    iput-object v10, v9, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->fractionalSecond:Ljava/math/BigDecimal;

    const/4 v9, 0x0

    move-object v2, v9

    move-object v9, v1

    move-object v3, v9

    move-object v9, v3

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    move v5, v9

    move-object v9, v3

    const/16 v10, 0x54

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_0

    const-string/jumbo v9, "%Y-%M-%DT%h:%m:%s%z"

    move-object v2, v9

    :goto_0
    new-instance v9, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;

    move-object/from16 v17, v9

    move-object/from16 v9, v17

    move-object/from16 v10, v17

    move-object v11, v0

    move-object v12, v2

    move-object v13, v3

    const/4 v14, 0x0

    invoke-direct {v10, v11, v12, v13, v14}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;-><init>(Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$1;)V

    move-object v6, v9

    move-object v9, v6

    invoke-virtual {v9}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->parse()V

    move-object v9, v0

    invoke-virtual {v9}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->isValid()Z

    move-result v9

    if-nez v9, :cond_c

    new-instance v9, Ljava/lang/IllegalArgumentException;

    move-object/from16 v17, v9

    move-object/from16 v9, v17

    move-object/from16 v10, v17

    const/4 v11, 0x0

    const-string/jumbo v12, "InvalidXGCRepresentation"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    const/4 v15, 0x0

    move-object/from16 v16, v1

    aput-object v16, v14, v15

    invoke-static {v11, v12, v13}, Lorg/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_0
    move v9, v5

    const/4 v10, 0x3

    if-lt v9, v10, :cond_1

    move-object v9, v3

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x3a

    if-ne v9, v10, :cond_1

    const-string/jumbo v9, "%h:%m:%s%z"

    move-object v2, v9

    goto :goto_0

    :cond_1
    move-object v9, v3

    const-string/jumbo v10, "--"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    move v9, v5

    const/4 v10, 0x3

    if-lt v9, v10, :cond_2

    move-object v9, v3

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x2d

    if-ne v9, v10, :cond_2

    const-string/jumbo v9, "---%D%z"

    move-object v2, v9

    goto :goto_0

    :cond_2
    move v9, v5

    const/4 v10, 0x4

    if-eq v9, v10, :cond_3

    move v9, v5

    const/4 v10, 0x6

    if-lt v9, v10, :cond_5

    move-object v9, v3

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x2b

    if-eq v9, v10, :cond_3

    move-object v9, v3

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x2d

    if-ne v9, v10, :cond_5

    move-object v9, v3

    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x2d

    if-eq v9, v10, :cond_3

    move v9, v5

    const/16 v10, 0xa

    if-ne v9, v10, :cond_5

    :cond_3
    const-string/jumbo v9, "--%M--%z"

    move-object v2, v9

    new-instance v9, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;

    move-object/from16 v17, v9

    move-object/from16 v9, v17

    move-object/from16 v10, v17

    move-object v11, v0

    move-object v12, v2

    move-object v13, v3

    const/4 v14, 0x0

    invoke-direct {v10, v11, v12, v13, v14}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;-><init>(Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$1;)V

    move-object v6, v9

    move-object v9, v6

    :try_start_0
    invoke-virtual {v9}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->parse()V

    move-object v9, v0

    invoke-virtual {v9}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->isValid()Z

    move-result v9

    if-nez v9, :cond_4

    new-instance v9, Ljava/lang/IllegalArgumentException;

    move-object/from16 v17, v9

    move-object/from16 v9, v17

    move-object/from16 v10, v17

    const/4 v11, 0x0

    const-string/jumbo v12, "InvalidXGCRepresentation"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    const/4 v15, 0x0

    move-object/from16 v16, v1

    aput-object v16, v14, v15

    invoke-static {v11, v12, v13}, Lorg/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v9

    move-object v7, v9

    const-string/jumbo v9, "--%M%z"

    move-object v2, v9

    goto/16 :goto_0

    :cond_4
    move-object v9, v0

    :try_start_1
    invoke-direct {v9}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->save()V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :cond_5
    const-string/jumbo v9, "--%M-%D%z"

    move-object v2, v9

    goto/16 :goto_0

    :cond_6
    const/4 v9, 0x0

    move v6, v9

    move-object v9, v3

    const/16 v10, 0x3a

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    move v7, v9

    move v9, v7

    const/4 v10, -0x1

    if-eq v9, v10, :cond_7

    add-int/lit8 v5, v5, -0x6

    :cond_7
    const/4 v9, 0x1

    move v8, v9

    :goto_2
    move v9, v8

    move v10, v5

    if-lt v9, v10, :cond_8

    move v9, v6

    if-nez v9, :cond_a

    const-string/jumbo v9, "%Y%z"

    move-object v2, v9

    goto/16 :goto_0

    :cond_8
    move-object v9, v3

    move v10, v8

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x2d

    if-ne v9, v10, :cond_9

    add-int/lit8 v6, v6, 0x1

    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_a
    move v9, v6

    const/4 v10, 0x1

    if-ne v9, v10, :cond_b

    const-string/jumbo v9, "%Y-%M%z"

    move-object v2, v9

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v9, "%Y-%M-%D%z"

    move-object v2, v9

    goto/16 :goto_0

    :cond_c
    move-object v9, v0

    invoke-direct {v9}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->save()V

    goto :goto_1
.end method

.method protected constructor <init>(Ljava/math/BigInteger;IIIIILjava/math/BigDecimal;I)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move-object v9, v0

    invoke-direct {v9}, Ljavax/xml/datatype/XMLGregorianCalendar;-><init>()V

    move-object v9, v0

    const/high16 v10, -0x80000000

    iput v10, v9, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_year:I

    move-object v9, v0

    const/high16 v10, -0x80000000

    iput v10, v9, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_month:I

    move-object v9, v0

    const/high16 v10, -0x80000000

    iput v10, v9, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_day:I

    move-object v9, v0

    const/high16 v10, -0x80000000

    iput v10, v9, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_hour:I

    move-object v9, v0

    const/high16 v10, -0x80000000

    iput v10, v9, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_minute:I

    move-object v9, v0

    const/high16 v10, -0x80000000

    iput v10, v9, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_second:I

    move-object v9, v0

    const/high16 v10, -0x80000000

    iput v10, v9, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_timezone:I

    move-object v9, v0

    const/4 v10, 0x0

    iput-object v10, v9, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->eon:Ljava/math/BigInteger;

    move-object v9, v0

    const/high16 v10, -0x80000000

    iput v10, v9, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    move-object v9, v0

    const/high16 v10, -0x80000000

    iput v10, v9, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    move-object v9, v0

    const/high16 v10, -0x80000000

    iput v10, v9, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->day:I

    move-object v9, v0

    const/high16 v10, -0x80000000

    iput v10, v9, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->timezone:I

    move-object v9, v0

    const/high16 v10, -0x80000000

    iput v10, v9, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->hour:I

    move-object v9, v0

    const/high16 v10, -0x80000000

    iput v10, v9, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->minute:I

    move-object v9, v0

    const/high16 v10, -0x80000000

    iput v10, v9, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->second:I

    move-object v9, v0

    const/4 v10, 0x0

    iput-object v10, v9, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->fractionalSecond:Ljava/math/BigDecimal;

    move-object v9, v0

    move-object v10, v1

    invoke-virtual {v9, v10}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setYear(Ljava/math/BigInteger;)V

    move-object v9, v0

    move v10, v2

    invoke-virtual {v9, v10}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setMonth(I)V

    move-object v9, v0

    move v10, v3

    invoke-virtual {v9, v10}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setDay(I)V

    move-object v9, v0

    move v10, v4

    move v11, v5

    move v12, v6

    move-object v13, v7

    invoke-virtual {v9, v10, v11, v12, v13}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setTime(IIILjava/math/BigDecimal;)V

    move-object v9, v0

    move v10, v8

    invoke-virtual {v9, v10}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setTimezone(I)V

    move-object v9, v0

    invoke-virtual {v9}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->isValid()Z

    move-result v9

    if-nez v9, :cond_0

    new-instance v9, Ljava/lang/IllegalArgumentException;

    move-object/from16 v19, v9

    move-object/from16 v9, v19

    move-object/from16 v10, v19

    const/4 v11, 0x0

    const-string/jumbo v12, "InvalidXGCValue-fractional"

    const/16 v13, 0x8

    new-array v13, v13, [Ljava/lang/Object;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    const/4 v15, 0x0

    move-object/from16 v16, v1

    aput-object v16, v14, v15

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    const/4 v15, 0x1

    new-instance v16, Ljava/lang/Integer;

    move-object/from16 v19, v16

    move-object/from16 v16, v19

    move-object/from16 v17, v19

    move/from16 v18, v2

    invoke-direct/range {v17 .. v18}, Ljava/lang/Integer;-><init>(I)V

    aput-object v16, v14, v15

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    const/4 v15, 0x2

    new-instance v16, Ljava/lang/Integer;

    move-object/from16 v19, v16

    move-object/from16 v16, v19

    move-object/from16 v17, v19

    move/from16 v18, v3

    invoke-direct/range {v17 .. v18}, Ljava/lang/Integer;-><init>(I)V

    aput-object v16, v14, v15

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    const/4 v15, 0x3

    new-instance v16, Ljava/lang/Integer;

    move-object/from16 v19, v16

    move-object/from16 v16, v19

    move-object/from16 v17, v19

    move/from16 v18, v4

    invoke-direct/range {v17 .. v18}, Ljava/lang/Integer;-><init>(I)V

    aput-object v16, v14, v15

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    const/4 v15, 0x4

    new-instance v16, Ljava/lang/Integer;

    move-object/from16 v19, v16

    move-object/from16 v16, v19

    move-object/from16 v17, v19

    move/from16 v18, v5

    invoke-direct/range {v17 .. v18}, Ljava/lang/Integer;-><init>(I)V

    aput-object v16, v14, v15

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    const/4 v15, 0x5

    new-instance v16, Ljava/lang/Integer;

    move-object/from16 v19, v16

    move-object/from16 v16, v19

    move-object/from16 v17, v19

    move/from16 v18, v6

    invoke-direct/range {v17 .. v18}, Ljava/lang/Integer;-><init>(I)V

    aput-object v16, v14, v15

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    const/4 v15, 0x6

    move-object/from16 v16, v7

    aput-object v16, v14, v15

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    const/4 v15, 0x7

    new-instance v16, Ljava/lang/Integer;

    move-object/from16 v19, v16

    move-object/from16 v16, v19

    move-object/from16 v17, v19

    move/from16 v18, v8

    invoke-direct/range {v17 .. v18}, Ljava/lang/Integer;-><init>(I)V

    aput-object v16, v14, v15

    invoke-static {v11, v12, v13}, Lorg/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_0
    move-object v9, v0

    invoke-direct {v9}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->save()V

    return-void
.end method

.method public constructor <init>(Ljava/util/GregorianCalendar;)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    invoke-direct {v4}, Ljavax/xml/datatype/XMLGregorianCalendar;-><init>()V

    move-object v4, v0

    const/high16 v5, -0x80000000

    iput v5, v4, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_year:I

    move-object v4, v0

    const/high16 v5, -0x80000000

    iput v5, v4, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_month:I

    move-object v4, v0

    const/high16 v5, -0x80000000

    iput v5, v4, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_day:I

    move-object v4, v0

    const/high16 v5, -0x80000000

    iput v5, v4, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_hour:I

    move-object v4, v0

    const/high16 v5, -0x80000000

    iput v5, v4, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_minute:I

    move-object v4, v0

    const/high16 v5, -0x80000000

    iput v5, v4, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_second:I

    move-object v4, v0

    const/high16 v5, -0x80000000

    iput v5, v4, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_timezone:I

    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->eon:Ljava/math/BigInteger;

    move-object v4, v0

    const/high16 v5, -0x80000000

    iput v5, v4, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    move-object v4, v0

    const/high16 v5, -0x80000000

    iput v5, v4, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    move-object v4, v0

    const/high16 v5, -0x80000000

    iput v5, v4, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->day:I

    move-object v4, v0

    const/high16 v5, -0x80000000

    iput v5, v4, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->timezone:I

    move-object v4, v0

    const/high16 v5, -0x80000000

    iput v5, v4, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->hour:I

    move-object v4, v0

    const/high16 v5, -0x80000000

    iput v5, v4, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->minute:I

    move-object v4, v0

    const/high16 v5, -0x80000000

    iput v5, v4, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->second:I

    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->fractionalSecond:Ljava/math/BigDecimal;

    move-object v4, v1

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    move v2, v4

    move-object v4, v1

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    if-nez v4, :cond_0

    move v4, v2

    neg-int v4, v4

    move v2, v4

    :cond_0
    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setYear(I)V

    move-object v4, v0

    move-object v5, v1

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setMonth(I)V

    move-object v4, v0

    move-object v5, v1

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setDay(I)V

    move-object v4, v0

    move-object v5, v1

    const/16 v6, 0xb

    invoke-virtual {v5, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    move-object v6, v1

    const/16 v7, 0xc

    invoke-virtual {v6, v7}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v6

    move-object v7, v1

    const/16 v8, 0xd

    invoke-virtual {v7, v8}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v7

    move-object v8, v1

    const/16 v9, 0xe

    invoke-virtual {v8, v9}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setTime(IIII)V

    move-object v4, v1

    const/16 v5, 0xf

    invoke-virtual {v4, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    move-object v5, v1

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    add-int/2addr v4, v5

    const v5, 0xea60

    div-int/2addr v4, v5

    move v3, v4

    move-object v4, v0

    move v5, v3

    invoke-virtual {v4, v5}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setTimezone(I)V

    move-object v4, v0

    invoke-direct {v4}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->save()V

    return-void
.end method

.method static access$200(C)Z
    .locals 2

    move v0, p0

    move v1, v0

    invoke-static {v1}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->isDigit(C)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method private checkFieldValueConstraint(II)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move v3, v2

    sget-object v4, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->MIN_FIELD_VALUE:[I

    move v5, v1

    aget v4, v4, v5

    if-ge v3, v4, :cond_0

    move v3, v2

    const/high16 v4, -0x80000000

    if-ne v3, v4, :cond_1

    :cond_0
    move v3, v2

    sget-object v4, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->MAX_FIELD_VALUE:[I

    move v5, v1

    aget v4, v4, v5

    if-le v3, v4, :cond_2

    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v13, v3

    move-object v3, v13

    move-object v4, v13

    const/4 v5, 0x0

    const-string/jumbo v6, "InvalidFieldValue"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/Integer;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    move v12, v2

    invoke-direct {v11, v12}, Ljava/lang/Integer;-><init>(I)V

    aput-object v10, v8, v9

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const/4 v9, 0x1

    sget-object v10, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->FIELD_NAME:[Ljava/lang/String;

    move v11, v1

    aget-object v10, v10, v11

    aput-object v10, v8, v9

    invoke-static {v5, v6, v7}, Lorg/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    return-void
.end method

.method private static compareField(II)I
    .locals 4

    move v0, p0

    move v1, p1

    move v2, v0

    move v3, v1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    move v2, v0

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_1

    move v2, v1

    const/high16 v3, -0x80000000

    if-ne v2, v3, :cond_2

    :cond_1
    const/4 v2, 0x2

    move v0, v2

    goto :goto_0

    :cond_2
    move v2, v0

    move v3, v1

    if-ge v2, v3, :cond_3

    const/4 v2, -0x1

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private static compareField(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)I
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    move-object v2, v0

    if-nez v2, :cond_1

    sget-object v2, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->DECIMAL_ZERO:Ljava/math/BigDecimal;

    move-object v0, v2

    :cond_1
    move-object v2, v1

    if-nez v2, :cond_2

    sget-object v2, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->DECIMAL_ZERO:Ljava/math/BigDecimal;

    move-object v1, v2

    :cond_2
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method private static compareField(Ljava/math/BigInteger;Ljava/math/BigInteger;)I
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    if-nez v2, :cond_1

    move-object v2, v1

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    move v0, v2

    :goto_1
    return v0

    :cond_0
    const/4 v2, 0x2

    goto :goto_0

    :cond_1
    move-object v2, v1

    if-nez v2, :cond_2

    const/4 v2, 0x2

    move v0, v2

    goto :goto_1

    :cond_2
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    move v0, v2

    goto :goto_1
.end method

.method public static createDate(IIII)Ljavax/xml/datatype/XMLGregorianCalendar;
    .locals 15

    move v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    new-instance v4, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    move-object v14, v4

    move-object v4, v14

    move-object v5, v14

    move v6, v0

    move v7, v1

    move v8, v2

    const/high16 v9, -0x80000000

    const/high16 v10, -0x80000000

    const/high16 v11, -0x80000000

    const/high16 v12, -0x80000000

    move v13, v3

    invoke-direct/range {v5 .. v13}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;-><init>(IIIIIIII)V

    move-object v0, v4

    return-object v0
.end method

.method public static createDateTime(IIIIII)Ljavax/xml/datatype/XMLGregorianCalendar;
    .locals 17

    move/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    new-instance v6, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    move-object/from16 v16, v6

    move-object/from16 v6, v16

    move-object/from16 v7, v16

    move v8, v0

    move v9, v1

    move v10, v2

    move v11, v3

    move v12, v4

    move v13, v5

    const/high16 v14, -0x80000000

    const/high16 v15, -0x80000000

    invoke-direct/range {v7 .. v15}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;-><init>(IIIIIIII)V

    move-object v0, v6

    return-object v0
.end method

.method public static createDateTime(IIIIIIII)Ljavax/xml/datatype/XMLGregorianCalendar;
    .locals 19

    move/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    new-instance v8, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    move-object/from16 v18, v8

    move-object/from16 v8, v18

    move-object/from16 v9, v18

    move v10, v0

    move v11, v1

    move v12, v2

    move v13, v3

    move v14, v4

    move v15, v5

    move/from16 v16, v6

    move/from16 v17, v7

    invoke-direct/range {v9 .. v17}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;-><init>(IIIIIIII)V

    move-object v0, v8

    return-object v0
.end method

.method public static createDateTime(Ljava/math/BigInteger;IIIIILjava/math/BigDecimal;I)Ljavax/xml/datatype/XMLGregorianCalendar;
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    new-instance v8, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    move-object/from16 v18, v8

    move-object/from16 v8, v18

    move-object/from16 v9, v18

    move-object v10, v0

    move v11, v1

    move v12, v2

    move v13, v3

    move v14, v4

    move v15, v5

    move-object/from16 v16, v6

    move/from16 v17, v7

    invoke-direct/range {v9 .. v17}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;-><init>(Ljava/math/BigInteger;IIIIILjava/math/BigDecimal;I)V

    move-object v0, v8

    return-object v0
.end method

.method public static createTime(IIII)Ljavax/xml/datatype/XMLGregorianCalendar;
    .locals 15

    move v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    new-instance v4, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    move-object v14, v4

    move-object v4, v14

    move-object v5, v14

    const/high16 v6, -0x80000000

    const/high16 v7, -0x80000000

    const/high16 v8, -0x80000000

    move v9, v0

    move v10, v1

    move v11, v2

    const/high16 v12, -0x80000000

    move v13, v3

    invoke-direct/range {v5 .. v13}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;-><init>(IIIIIIII)V

    move-object v0, v4

    return-object v0
.end method

.method public static createTime(IIIII)Ljavax/xml/datatype/XMLGregorianCalendar;
    .locals 16

    move/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    new-instance v5, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    move-object v15, v5

    move-object v5, v15

    move-object v6, v15

    const/high16 v7, -0x80000000

    const/high16 v8, -0x80000000

    const/high16 v9, -0x80000000

    move v10, v0

    move v11, v1

    move v12, v2

    move v13, v3

    move v14, v4

    invoke-direct/range {v6 .. v14}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;-><init>(IIIIIIII)V

    move-object v0, v5

    return-object v0
.end method

.method public static createTime(IIILjava/math/BigDecimal;I)Ljavax/xml/datatype/XMLGregorianCalendar;
    .locals 16

    move/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    new-instance v5, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    move-object v15, v5

    move-object v5, v15

    move-object v6, v15

    const/4 v7, 0x0

    const/high16 v8, -0x80000000

    const/high16 v9, -0x80000000

    move v10, v0

    move v11, v1

    move v12, v2

    move-object v13, v3

    move v14, v4

    invoke-direct/range {v6 .. v14}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;-><init>(Ljava/math/BigInteger;IIIIILjava/math/BigDecimal;I)V

    move-object v0, v5

    return-object v0
.end method

.method private format(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    move-object v0, p0

    move-object v1, p1

    new-instance v7, Ljava/lang/StringBuffer;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    move-object v2, v7

    const/4 v7, 0x0

    move v3, v7

    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    move v4, v7

    :cond_0
    :goto_0
    move v7, v3

    move v8, v4

    if-lt v7, v8, :cond_1

    move-object v7, v2

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    return-object v0

    :cond_1
    move-object v7, v1

    move v8, v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move v5, v7

    move v7, v5

    const/16 v8, 0x25

    if-eq v7, v8, :cond_2

    move-object v7, v2

    move v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v7

    goto :goto_0

    :cond_2
    move-object v7, v1

    move v8, v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    sparse-switch v7, :sswitch_data_0

    new-instance v7, Ljava/lang/InternalError;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljava/lang/InternalError;-><init>()V

    throw v7

    :sswitch_0
    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->eon:Ljava/math/BigInteger;

    if-nez v7, :cond_4

    move-object v7, v0

    iget v7, v7, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    move v6, v7

    move v7, v6

    if-gez v7, :cond_3

    move-object v7, v2

    const/16 v8, 0x2d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v7

    move-object v7, v0

    iget v7, v7, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    neg-int v7, v7

    move v6, v7

    :cond_3
    move-object v7, v0

    move-object v8, v2

    move v9, v6

    const/4 v10, 0x4

    invoke-direct {v7, v8, v9, v10}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->printNumber(Ljava/lang/StringBuffer;II)V

    goto :goto_0

    :cond_4
    move-object v7, v0

    move-object v8, v2

    move-object v9, v0

    invoke-virtual {v9}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getEonAndYear()Ljava/math/BigInteger;

    move-result-object v9

    const/4 v10, 0x4

    invoke-direct {v7, v8, v9, v10}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->printNumber(Ljava/lang/StringBuffer;Ljava/math/BigInteger;I)V

    goto :goto_0

    :sswitch_1
    move-object v7, v0

    move-object v8, v2

    move-object v9, v0

    invoke-virtual {v9}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getMonth()I

    move-result v9

    const/4 v10, 0x2

    invoke-direct {v7, v8, v9, v10}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->printNumber(Ljava/lang/StringBuffer;II)V

    goto :goto_0

    :sswitch_2
    move-object v7, v0

    move-object v8, v2

    move-object v9, v0

    invoke-virtual {v9}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getDay()I

    move-result v9

    const/4 v10, 0x2

    invoke-direct {v7, v8, v9, v10}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->printNumber(Ljava/lang/StringBuffer;II)V

    goto :goto_0

    :sswitch_3
    move-object v7, v0

    move-object v8, v2

    move-object v9, v0

    invoke-virtual {v9}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getHour()I

    move-result v9

    const/4 v10, 0x2

    invoke-direct {v7, v8, v9, v10}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->printNumber(Ljava/lang/StringBuffer;II)V

    goto/16 :goto_0

    :sswitch_4
    move-object v7, v0

    move-object v8, v2

    move-object v9, v0

    invoke-virtual {v9}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getMinute()I

    move-result v9

    const/4 v10, 0x2

    invoke-direct {v7, v8, v9, v10}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->printNumber(Ljava/lang/StringBuffer;II)V

    goto/16 :goto_0

    :sswitch_5
    move-object v7, v0

    move-object v8, v2

    move-object v9, v0

    invoke-virtual {v9}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getSecond()I

    move-result v9

    const/4 v10, 0x2

    invoke-direct {v7, v8, v9, v10}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->printNumber(Ljava/lang/StringBuffer;II)V

    move-object v7, v0

    invoke-virtual {v7}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getFractionalSecond()Ljava/math/BigDecimal;

    move-result-object v7

    if-eqz v7, :cond_0

    move-object v7, v0

    move-object v8, v0

    invoke-virtual {v8}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getFractionalSecond()Ljava/math/BigDecimal;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->toString(Ljava/math/BigDecimal;)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    move-object v7, v2

    move-object v8, v6

    const/4 v9, 0x1

    move-object v10, v6

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    goto/16 :goto_0

    :sswitch_6
    move-object v7, v0

    invoke-virtual {v7}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getTimezone()I

    move-result v7

    move v6, v7

    move v7, v6

    if-nez v7, :cond_5

    move-object v7, v2

    const/16 v8, 0x5a

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v7

    goto/16 :goto_0

    :cond_5
    move v7, v6

    const/high16 v8, -0x80000000

    if-eq v7, v8, :cond_0

    move v7, v6

    if-gez v7, :cond_6

    move-object v7, v2

    const/16 v8, 0x2d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v7

    move v7, v6

    const/4 v8, -0x1

    mul-int/lit8 v7, v7, -0x1

    move v6, v7

    :goto_1
    move-object v7, v0

    move-object v8, v2

    move v9, v6

    const/16 v10, 0x3c

    div-int/lit8 v9, v9, 0x3c

    const/4 v10, 0x2

    invoke-direct {v7, v8, v9, v10}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->printNumber(Ljava/lang/StringBuffer;II)V

    move-object v7, v2

    const/16 v8, 0x3a

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v7

    move-object v7, v0

    move-object v8, v2

    move v9, v6

    const/16 v10, 0x3c

    rem-int/lit8 v9, v9, 0x3c

    const/4 v10, 0x2

    invoke-direct {v7, v8, v9, v10}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->printNumber(Ljava/lang/StringBuffer;II)V

    goto/16 :goto_0

    :cond_6
    move-object v7, v2

    const/16 v8, 0x2b

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v7

    goto :goto_1

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

.method private getSeconds()Ljava/math/BigDecimal;
    .locals 4

    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->second:I

    const/high16 v3, -0x80000000

    if-ne v2, v3, :cond_0

    sget-object v2, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->DECIMAL_ZERO:Ljava/math/BigDecimal;

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    move-object v2, v0

    iget v2, v2, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->second:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v2

    move-object v1, v2

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->fractionalSecond:Ljava/math/BigDecimal;

    if-eqz v2, :cond_1

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->fractionalSecond:Ljava/math/BigDecimal;

    invoke-virtual {v2, v3}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    :cond_1
    move-object v2, v1

    move-object v0, v2

    goto :goto_0
.end method

.method private static internalCompare(Ljavax/xml/datatype/XMLGregorianCalendar;Ljavax/xml/datatype/XMLGregorianCalendar;)I
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-virtual {v3}, Ljavax/xml/datatype/XMLGregorianCalendar;->getEon()Ljava/math/BigInteger;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavax/xml/datatype/XMLGregorianCalendar;->getEon()Ljava/math/BigInteger;

    move-result-object v4

    if-ne v3, v4, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Ljavax/xml/datatype/XMLGregorianCalendar;->getYear()I

    move-result v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavax/xml/datatype/XMLGregorianCalendar;->getYear()I

    move-result v4

    invoke-static {v3, v4}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->compareField(II)I

    move-result v3

    move v2, v3

    move v3, v2

    if-eqz v3, :cond_1

    move v3, v2

    move v0, v3

    :goto_0
    return v0

    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Ljavax/xml/datatype/XMLGregorianCalendar;->getEonAndYear()Ljava/math/BigInteger;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavax/xml/datatype/XMLGregorianCalendar;->getEonAndYear()Ljava/math/BigInteger;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->compareField(Ljava/math/BigInteger;Ljava/math/BigInteger;)I

    move-result v3

    move v2, v3

    move v3, v2

    if-eqz v3, :cond_1

    move v3, v2

    move v0, v3

    goto :goto_0

    :cond_1
    move-object v3, v0

    invoke-virtual {v3}, Ljavax/xml/datatype/XMLGregorianCalendar;->getMonth()I

    move-result v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavax/xml/datatype/XMLGregorianCalendar;->getMonth()I

    move-result v4

    invoke-static {v3, v4}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->compareField(II)I

    move-result v3

    move v2, v3

    move v3, v2

    if-eqz v3, :cond_2

    move v3, v2

    move v0, v3

    goto :goto_0

    :cond_2
    move-object v3, v0

    invoke-virtual {v3}, Ljavax/xml/datatype/XMLGregorianCalendar;->getDay()I

    move-result v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavax/xml/datatype/XMLGregorianCalendar;->getDay()I

    move-result v4

    invoke-static {v3, v4}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->compareField(II)I

    move-result v3

    move v2, v3

    move v3, v2

    if-eqz v3, :cond_3

    move v3, v2

    move v0, v3

    goto :goto_0

    :cond_3
    move-object v3, v0

    invoke-virtual {v3}, Ljavax/xml/datatype/XMLGregorianCalendar;->getHour()I

    move-result v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavax/xml/datatype/XMLGregorianCalendar;->getHour()I

    move-result v4

    invoke-static {v3, v4}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->compareField(II)I

    move-result v3

    move v2, v3

    move v3, v2

    if-eqz v3, :cond_4

    move v3, v2

    move v0, v3

    goto :goto_0

    :cond_4
    move-object v3, v0

    invoke-virtual {v3}, Ljavax/xml/datatype/XMLGregorianCalendar;->getMinute()I

    move-result v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavax/xml/datatype/XMLGregorianCalendar;->getMinute()I

    move-result v4

    invoke-static {v3, v4}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->compareField(II)I

    move-result v3

    move v2, v3

    move v3, v2

    if-eqz v3, :cond_5

    move v3, v2

    move v0, v3

    goto :goto_0

    :cond_5
    move-object v3, v0

    invoke-virtual {v3}, Ljavax/xml/datatype/XMLGregorianCalendar;->getSecond()I

    move-result v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavax/xml/datatype/XMLGregorianCalendar;->getSecond()I

    move-result v4

    invoke-static {v3, v4}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->compareField(II)I

    move-result v3

    move v2, v3

    move v3, v2

    if-eqz v3, :cond_6

    move v3, v2

    move v0, v3

    goto :goto_0

    :cond_6
    move-object v3, v0

    invoke-virtual {v3}, Ljavax/xml/datatype/XMLGregorianCalendar;->getFractionalSecond()Ljava/math/BigDecimal;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavax/xml/datatype/XMLGregorianCalendar;->getFractionalSecond()Ljava/math/BigDecimal;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->compareField(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)I

    move-result v3

    move v2, v3

    move v3, v2

    move v0, v3

    goto/16 :goto_0
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

.method private static maximumDayInMonthFor(II)I
    .locals 4

    move v0, p0

    move v1, p1

    move v2, v1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    invoke-static {}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$DaysInMonth;->access$100()[I

    move-result-object v2

    move v3, v1

    aget v2, v2, v3

    move v0, v2

    :goto_0
    return v0

    :cond_0
    move v2, v0

    const/16 v3, 0x190

    rem-int/lit16 v2, v2, 0x190

    if-eqz v2, :cond_1

    move v2, v0

    const/16 v3, 0x64

    rem-int/lit8 v2, v2, 0x64

    if-eqz v2, :cond_2

    move v2, v0

    const/4 v3, 0x4

    rem-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_2

    :cond_1
    const/16 v2, 0x1d

    move v0, v2

    goto :goto_0

    :cond_2
    invoke-static {}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$DaysInMonth;->access$100()[I

    move-result-object v2

    const/4 v3, 0x2

    aget v2, v2, v3

    move v0, v2

    goto :goto_0
.end method

.method private static maximumDayInMonthFor(Ljava/math/BigInteger;I)I
    .locals 4

    move-object v0, p0

    move v1, p1

    move v2, v1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    invoke-static {}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$DaysInMonth;->access$100()[I

    move-result-object v2

    move v3, v1

    aget v2, v2, v3

    move v0, v2

    :goto_0
    return v0

    :cond_0
    move-object v2, v0

    sget-object v3, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->FOUR_HUNDRED:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    sget-object v3, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object v2, v0

    sget-object v3, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->HUNDRED:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    sget-object v3, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object v2, v0

    sget-object v3, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->FOUR:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    sget-object v3, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/16 v2, 0x1d

    move v0, v2

    goto :goto_0

    :cond_2
    invoke-static {}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$DaysInMonth;->access$100()[I

    move-result-object v2

    move v3, v1

    aget v2, v2, v3

    move v0, v2

    goto :goto_0
.end method

.method private normalizeToTimezone(Ljavax/xml/datatype/XMLGregorianCalendar;I)Ljavax/xml/datatype/XMLGregorianCalendar;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move v6, v2

    move v3, v6

    move-object v6, v1

    invoke-virtual {v6}, Ljavax/xml/datatype/XMLGregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavax/xml/datatype/XMLGregorianCalendar;

    move-object v4, v6

    move v6, v3

    neg-int v6, v6

    move v3, v6

    new-instance v6, Lorg/apache/xerces/jaxp/datatype/DurationImpl;

    move-object v15, v6

    move-object v6, v15

    move-object v7, v15

    move v8, v3

    if-ltz v8, :cond_0

    const/4 v8, 0x1

    :goto_0
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v13, v3

    if-gez v13, :cond_1

    move v13, v3

    neg-int v13, v13

    :goto_1
    const/4 v14, 0x0

    invoke-direct/range {v7 .. v14}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;-><init>(ZIIIIII)V

    move-object v5, v6

    move-object v6, v4

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljavax/xml/datatype/XMLGregorianCalendar;->add(Ljavax/xml/datatype/Duration;)V

    move-object v6, v4

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljavax/xml/datatype/XMLGregorianCalendar;->setTimezone(I)V

    move-object v6, v4

    move-object v0, v6

    return-object v0

    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    :cond_1
    move v13, v3

    goto :goto_1
.end method

.method public static parse(Ljava/lang/String;)Ljavax/xml/datatype/XMLGregorianCalendar;
    .locals 5

    move-object v0, p0

    new-instance v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    return-object v0
.end method

.method private printNumber(Ljava/lang/StringBuffer;II)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v6, v2

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    move-object v6, v4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    move v5, v6

    :goto_0
    move v6, v5

    move v7, v3

    if-lt v6, v7, :cond_0

    move-object v6, v1

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    return-void

    :cond_0
    move-object v6, v1

    const/16 v7, 0x30

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method private printNumber(Ljava/lang/StringBuffer;Ljava/math/BigInteger;I)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, v2

    invoke-virtual {v6}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    move-object v6, v4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    move v5, v6

    :goto_0
    move v6, v5

    move v7, v3

    if-lt v6, v7, :cond_0

    move-object v6, v1

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    return-void

    :cond_0
    move-object v6, v1

    const/16 v7, 0x30

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method static sanitize(Ljava/lang/Number;I)Ljava/math/BigInteger;
    .locals 3

    move-object v0, p0

    move v1, p1

    move v2, v1

    if-eqz v2, :cond_0

    move-object v2, v0

    if-nez v2, :cond_1

    :cond_0
    sget-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_1
    move v2, v1

    if-gez v2, :cond_2

    move-object v2, v0

    check-cast v2, Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v2

    :goto_1
    move-object v0, v2

    goto :goto_0

    :cond_2
    move-object v2, v0

    check-cast v2, Ljava/math/BigInteger;

    goto :goto_1
.end method

.method private save()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->eon:Ljava/math/BigInteger;

    iput-object v2, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_eon:Ljava/math/BigInteger;

    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    iput v2, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_year:I

    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    iput v2, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_month:I

    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->day:I

    iput v2, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_day:I

    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->hour:I

    iput v2, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_hour:I

    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->minute:I

    iput v2, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_minute:I

    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->second:I

    iput v2, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_second:I

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->fractionalSecond:Ljava/math/BigDecimal;

    iput-object v2, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_fracSeconds:Ljava/math/BigDecimal;

    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->timezone:I

    iput v2, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_timezone:I

    return-void
.end method

.method private setEon(Ljava/math/BigInteger;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    sget-object v3, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->eon:Ljava/math/BigInteger;

    :goto_0
    return-void

    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->eon:Ljava/math/BigInteger;

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

.method private writeReplace()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    new-instance v1, Lorg/apache/xerces/jaxp/datatype/SerializedXMLGregorianCalendar;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->toXMLFormat()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/xerces/jaxp/datatype/SerializedXMLGregorianCalendar;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    return-object v0
.end method


# virtual methods
.method public add(Ljavax/xml/datatype/Duration;)V
    .locals 38

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    const/16 v32, 0x6

    move/from16 v0, v32

    new-array v0, v0, [Z

    move-object/from16 v32, v0

    fill-array-data v32, :array_0

    move-object/from16 v4, v32

    move-object/from16 v32, v3

    invoke-virtual/range {v32 .. v32}, Ljavax/xml/datatype/Duration;->getSign()I

    move-result v32

    move/from16 v5, v32

    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v32}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getMonth()I

    move-result v32

    move/from16 v6, v32

    move/from16 v32, v6

    const/high16 v33, -0x80000000

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_0

    sget-object v32, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->MIN_FIELD_VALUE:[I

    const/16 v33, 0x1

    aget v32, v32, v33

    move/from16 v6, v32

    move-object/from16 v32, v4

    const/16 v33, 0x1

    const/16 v34, 0x1

    aput-boolean v34, v32, v33

    :cond_0
    move-object/from16 v32, v3

    sget-object v33, Ljavax/xml/datatype/DatatypeConstants;->MONTHS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual/range {v32 .. v33}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v32

    move/from16 v33, v5

    invoke-static/range {v32 .. v33}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->sanitize(Ljava/lang/Number;I)Ljava/math/BigInteger;

    move-result-object v32

    move-object/from16 v7, v32

    move/from16 v32, v6

    move/from16 v0, v32

    int-to-long v0, v0

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v32

    move-object/from16 v33, v7

    invoke-virtual/range {v32 .. v33}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v32

    move-object/from16 v8, v32

    move-object/from16 v32, v2

    move-object/from16 v33, v8

    sget-object v34, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual/range {v33 .. v34}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v33

    sget-object v34, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->TWELVE:Ljava/math/BigInteger;

    invoke-virtual/range {v33 .. v34}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/math/BigInteger;->intValue()I

    move-result v33

    const/16 v34, 0x1

    add-int/lit8 v33, v33, 0x1

    invoke-virtual/range {v32 .. v33}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setMonth(I)V

    new-instance v32, Ljava/math/BigDecimal;

    move-object/from16 v37, v32

    move-object/from16 v32, v37

    move-object/from16 v33, v37

    move-object/from16 v34, v8

    sget-object v35, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual/range {v34 .. v35}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    new-instance v33, Ljava/math/BigDecimal;

    move-object/from16 v37, v33

    move-object/from16 v33, v37

    move-object/from16 v34, v37

    sget-object v35, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->TWELVE:Ljava/math/BigInteger;

    invoke-direct/range {v34 .. v35}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    const/16 v34, 0x3

    invoke-virtual/range {v32 .. v34}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v32

    move-object/from16 v9, v32

    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v32}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getEonAndYear()Ljava/math/BigInteger;

    move-result-object v32

    move-object/from16 v10, v32

    move-object/from16 v32, v10

    if-nez v32, :cond_1

    move-object/from16 v32, v4

    const/16 v33, 0x0

    const/16 v34, 0x1

    aput-boolean v34, v32, v33

    sget-object v32, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    move-object/from16 v10, v32

    :cond_1
    move-object/from16 v32, v3

    sget-object v33, Ljavax/xml/datatype/DatatypeConstants;->YEARS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual/range {v32 .. v33}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v32

    move/from16 v33, v5

    invoke-static/range {v32 .. v33}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->sanitize(Ljava/lang/Number;I)Ljava/math/BigInteger;

    move-result-object v32

    move-object/from16 v11, v32

    move-object/from16 v32, v10

    move-object/from16 v33, v11

    invoke-virtual/range {v32 .. v33}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v32

    move-object/from16 v33, v9

    invoke-virtual/range {v32 .. v33}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v32

    move-object/from16 v12, v32

    move-object/from16 v32, v2

    move-object/from16 v33, v12

    invoke-virtual/range {v32 .. v33}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setYear(Ljava/math/BigInteger;)V

    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v32}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getSecond()I

    move-result v32

    const/high16 v33, -0x80000000

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_6

    move-object/from16 v32, v4

    const/16 v33, 0x5

    const/16 v34, 0x1

    aput-boolean v34, v32, v33

    sget-object v32, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->DECIMAL_ZERO:Ljava/math/BigDecimal;

    move-object/from16 v13, v32

    :goto_0
    move-object/from16 v32, v3

    sget-object v33, Ljavax/xml/datatype/DatatypeConstants;->SECONDS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual/range {v32 .. v33}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v32

    check-cast v32, Ljava/math/BigDecimal;

    move/from16 v33, v5

    invoke-static/range {v32 .. v33}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object v32

    move-object/from16 v14, v32

    move-object/from16 v32, v13

    move-object/from16 v33, v14

    invoke-virtual/range {v32 .. v33}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v32

    move-object/from16 v15, v32

    new-instance v32, Ljava/math/BigDecimal;

    move-object/from16 v37, v32

    move-object/from16 v32, v37

    move-object/from16 v33, v37

    new-instance v34, Ljava/math/BigDecimal;

    move-object/from16 v37, v34

    move-object/from16 v34, v37

    move-object/from16 v35, v37

    move-object/from16 v36, v15

    invoke-virtual/range {v36 .. v36}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v36

    invoke-direct/range {v35 .. v36}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    sget-object v35, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->DECIMAL_SIXTY:Ljava/math/BigDecimal;

    const/16 v36, 0x3

    invoke-virtual/range {v34 .. v36}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    move-object/from16 v16, v32

    move-object/from16 v32, v15

    move-object/from16 v33, v16

    sget-object v34, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->DECIMAL_SIXTY:Ljava/math/BigDecimal;

    invoke-virtual/range {v33 .. v34}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v32

    move-object/from16 v17, v32

    move-object/from16 v32, v16

    invoke-virtual/range {v32 .. v32}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v32

    move-object/from16 v9, v32

    move-object/from16 v32, v2

    move-object/from16 v33, v17

    invoke-virtual/range {v33 .. v33}, Ljava/math/BigDecimal;->intValue()I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setSecond(I)V

    move-object/from16 v32, v17

    new-instance v33, Ljava/math/BigDecimal;

    move-object/from16 v37, v33

    move-object/from16 v33, v37

    move-object/from16 v34, v37

    move-object/from16 v35, v2

    invoke-virtual/range {v35 .. v35}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getSecond()I

    move-result v35

    move/from16 v0, v35

    int-to-long v0, v0

    move-wide/from16 v35, v0

    invoke-static/range {v35 .. v36}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual/range {v32 .. v33}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v32

    move-object/from16 v18, v32

    move-object/from16 v32, v18

    sget-object v33, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->DECIMAL_ZERO:Ljava/math/BigDecimal;

    invoke-virtual/range {v32 .. v33}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v32

    if-gez v32, :cond_8

    move-object/from16 v32, v2

    sget-object v33, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->DECIMAL_ONE:Ljava/math/BigDecimal;

    move-object/from16 v34, v18

    invoke-virtual/range {v33 .. v34}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setFractionalSecond(Ljava/math/BigDecimal;)V

    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v32}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getSecond()I

    move-result v32

    if-nez v32, :cond_7

    move-object/from16 v32, v2

    const/16 v33, 0x3b

    invoke-virtual/range {v32 .. v33}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setSecond(I)V

    move-object/from16 v32, v9

    sget-object v33, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual/range {v32 .. v33}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v32

    move-object/from16 v9, v32

    :goto_1
    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v32}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getMinute()I

    move-result v32

    move/from16 v19, v32

    move/from16 v32, v19

    const/high16 v33, -0x80000000

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_2

    move-object/from16 v32, v4

    const/16 v33, 0x4

    const/16 v34, 0x1

    aput-boolean v34, v32, v33

    sget-object v32, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->MIN_FIELD_VALUE:[I

    const/16 v33, 0x4

    aget v32, v32, v33

    move/from16 v19, v32

    :cond_2
    move-object/from16 v32, v3

    sget-object v33, Ljavax/xml/datatype/DatatypeConstants;->MINUTES:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual/range {v32 .. v33}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v32

    move/from16 v33, v5

    invoke-static/range {v32 .. v33}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->sanitize(Ljava/lang/Number;I)Ljava/math/BigInteger;

    move-result-object v32

    move-object/from16 v20, v32

    move/from16 v32, v19

    move/from16 v0, v32

    int-to-long v0, v0

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v32

    move-object/from16 v33, v20

    invoke-virtual/range {v32 .. v33}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v32

    move-object/from16 v33, v9

    invoke-virtual/range {v32 .. v33}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v32

    move-object/from16 v8, v32

    move-object/from16 v32, v2

    move-object/from16 v33, v8

    sget-object v34, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->SIXTY:Ljava/math/BigInteger;

    invoke-virtual/range {v33 .. v34}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/math/BigInteger;->intValue()I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setMinute(I)V

    new-instance v32, Ljava/math/BigDecimal;

    move-object/from16 v37, v32

    move-object/from16 v32, v37

    move-object/from16 v33, v37

    move-object/from16 v34, v8

    invoke-direct/range {v33 .. v34}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    sget-object v33, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->DECIMAL_SIXTY:Ljava/math/BigDecimal;

    const/16 v34, 0x3

    invoke-virtual/range {v32 .. v34}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v32

    move-object/from16 v9, v32

    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v32}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getHour()I

    move-result v32

    move/from16 v21, v32

    move/from16 v32, v21

    const/high16 v33, -0x80000000

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_3

    move-object/from16 v32, v4

    const/16 v33, 0x3

    const/16 v34, 0x1

    aput-boolean v34, v32, v33

    sget-object v32, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->MIN_FIELD_VALUE:[I

    const/16 v33, 0x3

    aget v32, v32, v33

    move/from16 v21, v32

    :cond_3
    move-object/from16 v32, v3

    sget-object v33, Ljavax/xml/datatype/DatatypeConstants;->HOURS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual/range {v32 .. v33}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v32

    move/from16 v33, v5

    invoke-static/range {v32 .. v33}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->sanitize(Ljava/lang/Number;I)Ljava/math/BigInteger;

    move-result-object v32

    move-object/from16 v22, v32

    move/from16 v32, v21

    move/from16 v0, v32

    int-to-long v0, v0

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v32

    move-object/from16 v33, v22

    invoke-virtual/range {v32 .. v33}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v32

    move-object/from16 v33, v9

    invoke-virtual/range {v32 .. v33}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v32

    move-object/from16 v8, v32

    move-object/from16 v32, v2

    move-object/from16 v33, v8

    sget-object v34, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->TWENTY_FOUR:Ljava/math/BigInteger;

    invoke-virtual/range {v33 .. v34}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/math/BigInteger;->intValue()I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setHour(I)V

    new-instance v32, Ljava/math/BigDecimal;

    move-object/from16 v37, v32

    move-object/from16 v32, v37

    move-object/from16 v33, v37

    move-object/from16 v34, v8

    invoke-direct/range {v33 .. v34}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    new-instance v33, Ljava/math/BigDecimal;

    move-object/from16 v37, v33

    move-object/from16 v33, v37

    move-object/from16 v34, v37

    sget-object v35, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->TWENTY_FOUR:Ljava/math/BigInteger;

    invoke-direct/range {v34 .. v35}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    const/16 v34, 0x3

    invoke-virtual/range {v32 .. v34}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v32

    move-object/from16 v9, v32

    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v32}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getDay()I

    move-result v32

    move/from16 v24, v32

    move/from16 v32, v24

    const/high16 v33, -0x80000000

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_4

    move-object/from16 v32, v4

    const/16 v33, 0x2

    const/16 v34, 0x1

    aput-boolean v34, v32, v33

    sget-object v32, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->MIN_FIELD_VALUE:[I

    const/16 v33, 0x2

    aget v32, v32, v33

    move/from16 v24, v32

    :cond_4
    move-object/from16 v32, v3

    sget-object v33, Ljavax/xml/datatype/DatatypeConstants;->DAYS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual/range {v32 .. v33}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v32

    move/from16 v33, v5

    invoke-static/range {v32 .. v33}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->sanitize(Ljava/lang/Number;I)Ljava/math/BigInteger;

    move-result-object v32

    move-object/from16 v25, v32

    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v32}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getEonAndYear()Ljava/math/BigInteger;

    move-result-object v32

    move-object/from16 v33, v2

    invoke-virtual/range {v33 .. v33}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getMonth()I

    move-result v33

    invoke-static/range {v32 .. v33}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->maximumDayInMonthFor(Ljava/math/BigInteger;I)I

    move-result v32

    move/from16 v26, v32

    move/from16 v32, v24

    move/from16 v33, v26

    move/from16 v0, v32

    move/from16 v1, v33

    if-le v0, v1, :cond_9

    move/from16 v32, v26

    move/from16 v0, v32

    int-to-long v0, v0

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v32

    move-object/from16 v23, v32

    :goto_2
    move-object/from16 v32, v23

    move-object/from16 v33, v25

    invoke-virtual/range {v32 .. v33}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v32

    move-object/from16 v33, v9

    invoke-virtual/range {v32 .. v33}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v32

    move-object/from16 v27, v32

    :cond_5
    :goto_3
    move-object/from16 v32, v27

    sget-object v33, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual/range {v32 .. v33}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v32

    if-gez v32, :cond_c

    const/16 v32, 0x0

    move-object/from16 v30, v32

    move-object/from16 v32, v2

    move-object/from16 v0, v32

    iget v0, v0, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    move/from16 v32, v0

    const/16 v33, 0x2

    move/from16 v0, v32

    move/from16 v1, v33

    if-lt v0, v1, :cond_b

    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v32}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getEonAndYear()Ljava/math/BigInteger;

    move-result-object v32

    move-object/from16 v33, v2

    invoke-virtual/range {v33 .. v33}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getMonth()I

    move-result v33

    const/16 v34, 0x1

    add-int/lit8 v33, v33, -0x1

    invoke-static/range {v32 .. v33}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->maximumDayInMonthFor(Ljava/math/BigInteger;I)I

    move-result v32

    move/from16 v0, v32

    int-to-long v0, v0

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v32

    move-object/from16 v30, v32

    :goto_4
    move-object/from16 v32, v27

    move-object/from16 v33, v30

    invoke-virtual/range {v32 .. v33}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v32

    move-object/from16 v27, v32

    const/16 v32, -0x1

    move/from16 v28, v32

    :goto_5
    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v32}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getMonth()I

    move-result v32

    move/from16 v33, v28

    add-int v32, v32, v33

    move/from16 v29, v32

    move/from16 v32, v29

    const/16 v33, 0x1

    add-int/lit8 v32, v32, -0x1

    const/16 v33, 0xc

    rem-int/lit8 v32, v32, 0xc

    move/from16 v30, v32

    move/from16 v32, v30

    if-gez v32, :cond_d

    const/16 v32, 0xc

    move/from16 v33, v30

    add-int v32, v32, v33

    const/16 v33, 0x1

    add-int/lit8 v32, v32, 0x1

    move/from16 v30, v32

    move/from16 v32, v29

    const/16 v33, 0x1

    add-int/lit8 v32, v32, -0x1

    move/from16 v0, v32

    int-to-long v0, v0

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v32

    new-instance v33, Ljava/math/BigDecimal;

    move-object/from16 v37, v33

    move-object/from16 v33, v37

    move-object/from16 v34, v37

    sget-object v35, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->TWELVE:Ljava/math/BigInteger;

    invoke-direct/range {v34 .. v35}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    const/16 v34, 0x0

    invoke-virtual/range {v32 .. v34}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/math/BigDecimal;->intValue()I

    move-result v32

    move/from16 v31, v32

    :goto_6
    move-object/from16 v32, v2

    move/from16 v33, v30

    invoke-virtual/range {v32 .. v33}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setMonth(I)V

    move/from16 v32, v31

    if-eqz v32, :cond_5

    move-object/from16 v32, v2

    move-object/from16 v33, v2

    invoke-virtual/range {v33 .. v33}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getEonAndYear()Ljava/math/BigInteger;

    move-result-object v33

    move/from16 v34, v31

    move/from16 v0, v34

    int-to-long v0, v0

    move-wide/from16 v34, v0

    invoke-static/range {v34 .. v35}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setYear(Ljava/math/BigInteger;)V

    goto/16 :goto_3

    :cond_6
    move-object/from16 v32, v2

    invoke-direct/range {v32 .. v32}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getSeconds()Ljava/math/BigDecimal;

    move-result-object v32

    move-object/from16 v13, v32

    goto/16 :goto_0

    :cond_7
    move-object/from16 v32, v2

    move-object/from16 v33, v2

    invoke-virtual/range {v33 .. v33}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getSecond()I

    move-result v33

    const/16 v34, 0x1

    add-int/lit8 v33, v33, -0x1

    invoke-virtual/range {v32 .. v33}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setSecond(I)V

    goto/16 :goto_1

    :cond_8
    move-object/from16 v32, v2

    move-object/from16 v33, v18

    invoke-virtual/range {v32 .. v33}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setFractionalSecond(Ljava/math/BigDecimal;)V

    goto/16 :goto_1

    :cond_9
    move/from16 v32, v24

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_a

    sget-object v32, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    move-object/from16 v23, v32

    goto/16 :goto_2

    :cond_a
    move/from16 v32, v24

    move/from16 v0, v32

    int-to-long v0, v0

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v32

    move-object/from16 v23, v32

    goto/16 :goto_2

    :cond_b
    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v32}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getEonAndYear()Ljava/math/BigInteger;

    move-result-object v32

    const-wide/16 v33, 0x1

    invoke-static/range {v33 .. v34}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v32

    const/16 v33, 0xc

    invoke-static/range {v32 .. v33}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->maximumDayInMonthFor(Ljava/math/BigInteger;I)I

    move-result v32

    move/from16 v0, v32

    int-to-long v0, v0

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v32

    move-object/from16 v30, v32

    goto/16 :goto_4

    :cond_c
    move-object/from16 v32, v27

    move-object/from16 v33, v2

    invoke-virtual/range {v33 .. v33}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getEonAndYear()Ljava/math/BigInteger;

    move-result-object v33

    move-object/from16 v34, v2

    invoke-virtual/range {v34 .. v34}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getMonth()I

    move-result v34

    invoke-static/range {v33 .. v34}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->maximumDayInMonthFor(Ljava/math/BigInteger;I)I

    move-result v33

    move/from16 v0, v33

    int-to-long v0, v0

    move-wide/from16 v33, v0

    invoke-static/range {v33 .. v34}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v32

    if-lez v32, :cond_e

    move-object/from16 v32, v27

    move-object/from16 v33, v2

    invoke-virtual/range {v33 .. v33}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getEonAndYear()Ljava/math/BigInteger;

    move-result-object v33

    move-object/from16 v34, v2

    invoke-virtual/range {v34 .. v34}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getMonth()I

    move-result v34

    invoke-static/range {v33 .. v34}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->maximumDayInMonthFor(Ljava/math/BigInteger;I)I

    move-result v33

    move/from16 v0, v33

    neg-int v0, v0

    move/from16 v33, v0

    move/from16 v0, v33

    int-to-long v0, v0

    move-wide/from16 v33, v0

    invoke-static/range {v33 .. v34}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v32

    move-object/from16 v27, v32

    const/16 v32, 0x1

    move/from16 v28, v32

    goto/16 :goto_5

    :cond_d
    move/from16 v32, v29

    const/16 v33, 0x1

    add-int/lit8 v32, v32, -0x1

    const/16 v33, 0xc

    div-int/lit8 v32, v32, 0xc

    move/from16 v31, v32

    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_6

    :cond_e
    move-object/from16 v32, v2

    move-object/from16 v33, v27

    invoke-virtual/range {v33 .. v33}, Ljava/math/BigInteger;->intValue()I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setDay(I)V

    const/16 v32, 0x0

    move/from16 v30, v32

    :goto_7
    move/from16 v32, v30

    const/16 v33, 0x5

    move/from16 v0, v32

    move/from16 v1, v33

    if-le v0, v1, :cond_f

    return-void

    :cond_f
    move-object/from16 v32, v4

    move/from16 v33, v30

    aget-boolean v32, v32, v33

    if-eqz v32, :cond_10

    move/from16 v32, v30

    packed-switch v32, :pswitch_data_0

    :cond_10
    :goto_8
    add-int/lit8 v30, v30, 0x1

    goto :goto_7

    :pswitch_0
    move-object/from16 v32, v2

    const/high16 v33, -0x80000000

    invoke-virtual/range {v32 .. v33}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setYear(I)V

    goto :goto_8

    :pswitch_1
    move-object/from16 v32, v2

    const/high16 v33, -0x80000000

    invoke-virtual/range {v32 .. v33}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setMonth(I)V

    goto :goto_8

    :pswitch_2
    move-object/from16 v32, v2

    const/high16 v33, -0x80000000

    invoke-virtual/range {v32 .. v33}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setDay(I)V

    goto :goto_8

    :pswitch_3
    move-object/from16 v32, v2

    const/high16 v33, -0x80000000

    invoke-virtual/range {v32 .. v33}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setHour(I)V

    goto :goto_8

    :pswitch_4
    move-object/from16 v32, v2

    const/high16 v33, -0x80000000

    invoke-virtual/range {v32 .. v33}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setMinute(I)V

    goto :goto_8

    :pswitch_5
    move-object/from16 v32, v2

    const/high16 v33, -0x80000000

    invoke-virtual/range {v32 .. v33}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setSecond(I)V

    move-object/from16 v32, v2

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setFractionalSecond(Ljava/math/BigDecimal;)V

    goto :goto_8

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public clear()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->eon:Ljava/math/BigInteger;

    move-object v1, v0

    const/high16 v2, -0x80000000

    iput v2, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    move-object v1, v0

    const/high16 v2, -0x80000000

    iput v2, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    move-object v1, v0

    const/high16 v2, -0x80000000

    iput v2, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->day:I

    move-object v1, v0

    const/high16 v2, -0x80000000

    iput v2, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->timezone:I

    move-object v1, v0

    const/high16 v2, -0x80000000

    iput v2, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->hour:I

    move-object v1, v0

    const/high16 v2, -0x80000000

    iput v2, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->minute:I

    move-object v1, v0

    const/high16 v2, -0x80000000

    iput v2, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->second:I

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->fractionalSecond:Ljava/math/BigDecimal;

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 12

    move-object v0, p0

    new-instance v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    move-object v11, v1

    move-object v1, v11

    move-object v2, v11

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getEonAndYear()Ljava/math/BigInteger;

    move-result-object v3

    move-object v4, v0

    iget v4, v4, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    move-object v5, v0

    iget v5, v5, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->day:I

    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->hour:I

    move-object v7, v0

    iget v7, v7, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->minute:I

    move-object v8, v0

    iget v8, v8, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->second:I

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->fractionalSecond:Ljava/math/BigDecimal;

    move-object v10, v0

    iget v10, v10, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->timezone:I

    invoke-direct/range {v2 .. v10}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;-><init>(Ljava/math/BigInteger;IIIIILjava/math/BigDecimal;I)V

    move-object v0, v1

    return-object v0
.end method

.method public compare(Ljavax/xml/datatype/XMLGregorianCalendar;)I
    .locals 10

    move-object v0, p0

    move-object v1, p1

    const/4 v7, 0x2

    move v2, v7

    move-object v7, v0

    move-object v3, v7

    move-object v7, v1

    move-object v4, v7

    move-object v7, v3

    invoke-virtual {v7}, Ljavax/xml/datatype/XMLGregorianCalendar;->getTimezone()I

    move-result v7

    move-object v8, v4

    invoke-virtual {v8}, Ljavax/xml/datatype/XMLGregorianCalendar;->getTimezone()I

    move-result v8

    if-ne v7, v8, :cond_0

    move-object v7, v3

    move-object v8, v4

    invoke-static {v7, v8}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->internalCompare(Ljavax/xml/datatype/XMLGregorianCalendar;Ljavax/xml/datatype/XMLGregorianCalendar;)I

    move-result v7

    move v0, v7

    :goto_0
    return v0

    :cond_0
    move-object v7, v3

    invoke-virtual {v7}, Ljavax/xml/datatype/XMLGregorianCalendar;->getTimezone()I

    move-result v7

    const/high16 v8, -0x80000000

    if-eq v7, v8, :cond_1

    move-object v7, v4

    invoke-virtual {v7}, Ljavax/xml/datatype/XMLGregorianCalendar;->getTimezone()I

    move-result v7

    const/high16 v8, -0x80000000

    if-eq v7, v8, :cond_1

    move-object v7, v3

    invoke-virtual {v7}, Ljavax/xml/datatype/XMLGregorianCalendar;->normalize()Ljavax/xml/datatype/XMLGregorianCalendar;

    move-result-object v7

    check-cast v7, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    move-object v3, v7

    move-object v7, v4

    invoke-virtual {v7}, Ljavax/xml/datatype/XMLGregorianCalendar;->normalize()Ljavax/xml/datatype/XMLGregorianCalendar;

    move-result-object v7

    check-cast v7, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    move-object v4, v7

    move-object v7, v3

    move-object v8, v4

    invoke-static {v7, v8}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->internalCompare(Ljavax/xml/datatype/XMLGregorianCalendar;Ljavax/xml/datatype/XMLGregorianCalendar;)I

    move-result v7

    move v0, v7

    goto :goto_0

    :cond_1
    move-object v7, v3

    invoke-virtual {v7}, Ljavax/xml/datatype/XMLGregorianCalendar;->getTimezone()I

    move-result v7

    const/high16 v8, -0x80000000

    if-eq v7, v8, :cond_5

    move-object v7, v3

    invoke-virtual {v7}, Ljavax/xml/datatype/XMLGregorianCalendar;->getTimezone()I

    move-result v7

    if-eqz v7, :cond_2

    move-object v7, v3

    invoke-virtual {v7}, Ljavax/xml/datatype/XMLGregorianCalendar;->normalize()Ljavax/xml/datatype/XMLGregorianCalendar;

    move-result-object v7

    check-cast v7, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    move-object v3, v7

    :cond_2
    move-object v7, v0

    move-object v8, v4

    const/16 v9, 0x348

    invoke-direct {v7, v8, v9}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->normalizeToTimezone(Ljavax/xml/datatype/XMLGregorianCalendar;I)Ljavax/xml/datatype/XMLGregorianCalendar;

    move-result-object v7

    move-object v5, v7

    move-object v7, v3

    move-object v8, v5

    invoke-static {v7, v8}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->internalCompare(Ljavax/xml/datatype/XMLGregorianCalendar;Ljavax/xml/datatype/XMLGregorianCalendar;)I

    move-result v7

    move v2, v7

    move v7, v2

    const/4 v8, -0x1

    if-ne v7, v8, :cond_3

    move v7, v2

    move v0, v7

    goto :goto_0

    :cond_3
    move-object v7, v0

    move-object v8, v4

    const/16 v9, -0x348

    invoke-direct {v7, v8, v9}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->normalizeToTimezone(Ljavax/xml/datatype/XMLGregorianCalendar;I)Ljavax/xml/datatype/XMLGregorianCalendar;

    move-result-object v7

    move-object v6, v7

    move-object v7, v3

    move-object v8, v6

    invoke-static {v7, v8}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->internalCompare(Ljavax/xml/datatype/XMLGregorianCalendar;Ljavax/xml/datatype/XMLGregorianCalendar;)I

    move-result v7

    move v2, v7

    move v7, v2

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4

    move v7, v2

    move v0, v7

    goto :goto_0

    :cond_4
    const/4 v7, 0x2

    move v0, v7

    goto :goto_0

    :cond_5
    move-object v7, v4

    invoke-virtual {v7}, Ljavax/xml/datatype/XMLGregorianCalendar;->getTimezone()I

    move-result v7

    if-eqz v7, :cond_6

    move-object v7, v0

    move-object v8, v4

    move-object v9, v4

    invoke-virtual {v9}, Ljavax/xml/datatype/XMLGregorianCalendar;->getTimezone()I

    move-result v9

    invoke-direct {v7, v8, v9}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->normalizeToTimezone(Ljavax/xml/datatype/XMLGregorianCalendar;I)Ljavax/xml/datatype/XMLGregorianCalendar;

    move-result-object v7

    check-cast v7, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    move-object v4, v7

    :cond_6
    move-object v7, v0

    move-object v8, v3

    const/16 v9, -0x348

    invoke-direct {v7, v8, v9}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->normalizeToTimezone(Ljavax/xml/datatype/XMLGregorianCalendar;I)Ljavax/xml/datatype/XMLGregorianCalendar;

    move-result-object v7

    move-object v5, v7

    move-object v7, v5

    move-object v8, v4

    invoke-static {v7, v8}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->internalCompare(Ljavax/xml/datatype/XMLGregorianCalendar;Ljavax/xml/datatype/XMLGregorianCalendar;)I

    move-result v7

    move v2, v7

    move v7, v2

    const/4 v8, -0x1

    if-ne v7, v8, :cond_7

    move v7, v2

    move v0, v7

    goto/16 :goto_0

    :cond_7
    move-object v7, v0

    move-object v8, v3

    const/16 v9, 0x348

    invoke-direct {v7, v8, v9}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->normalizeToTimezone(Ljavax/xml/datatype/XMLGregorianCalendar;I)Ljavax/xml/datatype/XMLGregorianCalendar;

    move-result-object v7

    move-object v6, v7

    move-object v7, v6

    move-object v8, v4

    invoke-static {v7, v8}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->internalCompare(Ljavax/xml/datatype/XMLGregorianCalendar;Ljavax/xml/datatype/XMLGregorianCalendar;)I

    move-result v7

    move v2, v7

    move v7, v2

    const/4 v8, 0x1

    if-ne v7, v8, :cond_8

    move v7, v2

    move v0, v7

    goto/16 :goto_0

    :cond_8
    const/4 v7, 0x2

    move v0, v7

    goto/16 :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    move-object v3, v0

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    move v0, v2

    :goto_0
    return v0

    :cond_0
    move-object v2, v1

    instance-of v2, v2, Ljavax/xml/datatype/XMLGregorianCalendar;

    if-eqz v2, :cond_2

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavax/xml/datatype/XMLGregorianCalendar;

    invoke-virtual {v2, v3}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->compare(Ljavax/xml/datatype/XMLGregorianCalendar;)I

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public getDay()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->day:I

    move v0, v1

    return v0
.end method

.method public getEon()Ljava/math/BigInteger;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->eon:Ljava/math/BigInteger;

    move-object v0, v1

    return-object v0
.end method

.method public getEonAndYear()Ljava/math/BigInteger;
    .locals 4

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->eon:Ljava/math/BigInteger;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->eon:Ljava/math/BigInteger;

    move-object v2, v0

    iget v2, v2, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->eon:Ljava/math/BigInteger;

    if-nez v1, :cond_1

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public getFractionalSecond()Ljava/math/BigDecimal;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->fractionalSecond:Ljava/math/BigDecimal;

    move-object v0, v1

    return-object v0
.end method

.method public getHour()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->hour:I

    move v0, v1

    return v0
.end method

.method public getMillisecond()I
    .locals 3

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->fractionalSecond:Ljava/math/BigDecimal;

    if-nez v1, :cond_0

    const/high16 v1, -0x80000000

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->fractionalSecond:Ljava/math/BigDecimal;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->movePointRight(I)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->intValue()I

    move-result v1

    move v0, v1

    goto :goto_0
.end method

.method public getMinute()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->minute:I

    move v0, v1

    return v0
.end method

.method public getMonth()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    move v0, v1

    return v0
.end method

.method public getSecond()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->second:I

    move v0, v1

    return v0
.end method

.method public getTimeZone(I)Ljava/util/TimeZone;
    .locals 12

    move-object v0, p0

    move v1, p1

    const/4 v8, 0x0

    move-object v2, v8

    move-object v8, v0

    invoke-virtual {v8}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getTimezone()I

    move-result v8

    move v3, v8

    move v8, v3

    const/high16 v9, -0x80000000

    if-ne v8, v9, :cond_0

    move v8, v1

    move v3, v8

    :cond_0
    move v8, v3

    const/high16 v9, -0x80000000

    if-ne v8, v9, :cond_1

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v8

    move-object v2, v8

    :goto_0
    move-object v8, v2

    move-object v0, v8

    return-object v0

    :cond_1
    move v8, v3

    if-gez v8, :cond_5

    const/16 v8, 0x2d

    :goto_1
    move v4, v8

    move v8, v4

    const/16 v9, 0x2d

    if-ne v8, v9, :cond_2

    move v8, v3

    neg-int v8, v8

    move v3, v8

    :cond_2
    move v8, v3

    const/16 v9, 0x3c

    div-int/lit8 v8, v8, 0x3c

    move v5, v8

    move v8, v3

    move v9, v5

    const/16 v10, 0x3c

    mul-int/lit8 v9, v9, 0x3c

    sub-int/2addr v8, v9

    move v6, v8

    new-instance v8, Ljava/lang/StringBuffer;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    const/16 v10, 0x8

    invoke-direct {v9, v10}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object v7, v8

    move-object v8, v7

    const-string/jumbo v9, "GMT"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    move-object v8, v7

    move v9, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v8

    move-object v8, v7

    move v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    move v8, v6

    if-eqz v8, :cond_4

    move v8, v6

    const/16 v9, 0xa

    if-ge v8, v9, :cond_3

    move-object v8, v7

    const/16 v9, 0x30

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v8

    :cond_3
    move-object v8, v7

    move v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    :cond_4
    move-object v8, v7

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v8

    move-object v2, v8

    goto :goto_0

    :cond_5
    const/16 v8, 0x2b

    goto :goto_1
.end method

.method public getTimezone()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->timezone:I

    move v0, v1

    return v0
.end method

.method public getXMLSchemaType()Ljavax/xml/namespace/QName;
    .locals 8

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_0

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_0

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->day:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_0

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->hour:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_0

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->minute:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_0

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->second:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_0

    sget-object v1, Ljavax/xml/datatype/DatatypeConstants;->DATETIME:Ljavax/xml/namespace/QName;

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->day:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->hour:I

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_1

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->minute:I

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_1

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->second:I

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_1

    sget-object v1, Ljavax/xml/datatype/DatatypeConstants;->DATE:Ljavax/xml/namespace/QName;

    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_2

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_2

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->day:I

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_2

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->hour:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_2

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->minute:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_2

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->second:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_2

    sget-object v1, Ljavax/xml/datatype/DatatypeConstants;->TIME:Ljavax/xml/namespace/QName;

    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_3

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_3

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->day:I

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_3

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->hour:I

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_3

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->minute:I

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_3

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->second:I

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_3

    sget-object v1, Ljavax/xml/datatype/DatatypeConstants;->GYEARMONTH:Ljavax/xml/namespace/QName;

    move-object v0, v1

    goto/16 :goto_0

    :cond_3
    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_4

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_4

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->day:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_4

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->hour:I

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_4

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->minute:I

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_4

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->second:I

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_4

    sget-object v1, Ljavax/xml/datatype/DatatypeConstants;->GMONTHDAY:Ljavax/xml/namespace/QName;

    move-object v0, v1

    goto/16 :goto_0

    :cond_4
    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_5

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_5

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->day:I

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_5

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->hour:I

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_5

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->minute:I

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_5

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->second:I

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_5

    sget-object v1, Ljavax/xml/datatype/DatatypeConstants;->GYEAR:Ljavax/xml/namespace/QName;

    move-object v0, v1

    goto/16 :goto_0

    :cond_5
    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_6

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_6

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->day:I

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_6

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->hour:I

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_6

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->minute:I

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_6

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->second:I

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_6

    sget-object v1, Ljavax/xml/datatype/DatatypeConstants;->GMONTH:Ljavax/xml/namespace/QName;

    move-object v0, v1

    goto/16 :goto_0

    :cond_6
    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_7

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_7

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->day:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_7

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->hour:I

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_7

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->minute:I

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_7

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->second:I

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_7

    sget-object v1, Ljavax/xml/datatype/DatatypeConstants;->GDAY:Ljavax/xml/namespace/QName;

    move-object v0, v1

    goto/16 :goto_0

    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    new-instance v3, Ljava/lang/StringBuffer;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string/jumbo v4, "#getXMLSchemaType() :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const/4 v4, 0x0

    const-string/jumbo v5, "InvalidXGCFields"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lorg/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getYear()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    move v0, v1

    return v0
.end method

.method public hashCode()I
    .locals 6

    move-object v0, p0

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getTimezone()I

    move-result v3

    move v1, v3

    move v3, v1

    const/high16 v4, -0x80000000

    if-ne v3, v4, :cond_0

    const/4 v3, 0x0

    move v1, v3

    :cond_0
    move-object v3, v0

    move-object v2, v3

    move v3, v1

    if-eqz v3, :cond_1

    move-object v3, v0

    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getTimezone()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->normalizeToTimezone(Ljavax/xml/datatype/XMLGregorianCalendar;I)Ljavax/xml/datatype/XMLGregorianCalendar;

    move-result-object v3

    move-object v2, v3

    :cond_1
    move-object v3, v2

    invoke-virtual {v3}, Ljavax/xml/datatype/XMLGregorianCalendar;->getYear()I

    move-result v3

    move-object v4, v2

    invoke-virtual {v4}, Ljavax/xml/datatype/XMLGregorianCalendar;->getMonth()I

    move-result v4

    add-int/2addr v3, v4

    move-object v4, v2

    invoke-virtual {v4}, Ljavax/xml/datatype/XMLGregorianCalendar;->getDay()I

    move-result v4

    add-int/2addr v3, v4

    move-object v4, v2

    invoke-virtual {v4}, Ljavax/xml/datatype/XMLGregorianCalendar;->getHour()I

    move-result v4

    add-int/2addr v3, v4

    move-object v4, v2

    invoke-virtual {v4}, Ljavax/xml/datatype/XMLGregorianCalendar;->getMinute()I

    move-result v4

    add-int/2addr v3, v4

    move-object v4, v2

    invoke-virtual {v4}, Ljavax/xml/datatype/XMLGregorianCalendar;->getSecond()I

    move-result v4

    add-int/2addr v3, v4

    move v0, v3

    return v0
.end method

.method public isValid()Z
    .locals 4

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_2

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->day:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_2

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->eon:Ljava/math/BigInteger;

    if-nez v1, :cond_0

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->day:I

    move-object v2, v0

    iget v2, v2, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    move-object v3, v0

    iget v3, v3, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    invoke-static {v2, v3}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->maximumDayInMonthFor(II)I

    move-result v2

    if-le v1, v2, :cond_2

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->day:I

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getEonAndYear()Ljava/math/BigInteger;

    move-result-object v2

    move-object v3, v0

    iget v3, v3, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    invoke-static {v2, v3}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->maximumDayInMonthFor(Ljava/math/BigInteger;I)I

    move-result v2

    if-le v1, v2, :cond_2

    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->day:I

    const/16 v2, 0x7d0

    move-object v3, v0

    iget v3, v3, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    invoke-static {v2, v3}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->maximumDayInMonthFor(II)I

    move-result v2

    if-le v1, v2, :cond_2

    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    :cond_2
    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->hour:I

    const/16 v2, 0x18

    if-ne v1, v2, :cond_4

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->minute:I

    if-nez v1, :cond_3

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->second:I

    if-nez v1, :cond_3

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->fractionalSecond:Ljava/math/BigDecimal;

    if-eqz v1, :cond_4

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->fractionalSecond:Ljava/math/BigDecimal;

    sget-object v2, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->DECIMAL_ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    :cond_4
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->eon:Ljava/math/BigInteger;

    if-nez v1, :cond_5

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    if-nez v1, :cond_5

    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    :cond_5
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0
.end method

.method public normalize()Ljavax/xml/datatype/XMLGregorianCalendar;
    .locals 5

    move-object v0, p0

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->timezone:I

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->normalizeToTimezone(Ljavax/xml/datatype/XMLGregorianCalendar;I)Ljavax/xml/datatype/XMLGregorianCalendar;

    move-result-object v2

    move-object v1, v2

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getTimezone()I

    move-result v2

    const/high16 v3, -0x80000000

    if-ne v2, v3, :cond_0

    move-object v2, v1

    const/high16 v3, -0x80000000

    invoke-virtual {v2, v3}, Ljavax/xml/datatype/XMLGregorianCalendar;->setTimezone(I)V

    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getMillisecond()I

    move-result v2

    const/high16 v3, -0x80000000

    if-ne v2, v3, :cond_1

    move-object v2, v1

    const/high16 v3, -0x80000000

    invoke-virtual {v2, v3}, Ljavax/xml/datatype/XMLGregorianCalendar;->setMillisecond(I)V

    :cond_1
    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method public reset()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_eon:Ljava/math/BigInteger;

    iput-object v2, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->eon:Ljava/math/BigInteger;

    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_year:I

    iput v2, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_month:I

    iput v2, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_day:I

    iput v2, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->day:I

    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_hour:I

    iput v2, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->hour:I

    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_minute:I

    iput v2, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->minute:I

    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_second:I

    iput v2, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->second:I

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_fracSeconds:Ljava/math/BigDecimal;

    iput-object v2, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->fractionalSecond:Ljava/math/BigDecimal;

    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_timezone:I

    iput v2, v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->timezone:I

    return-void
.end method

.method public setDay(I)V
    .locals 5

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const/4 v3, 0x2

    move v4, v1

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->checkFieldValueConstraint(II)V

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->day:I

    return-void
.end method

.method public setFractionalSecond(Ljava/math/BigDecimal;)V
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-eqz v2, :cond_1

    move-object v2, v1

    sget-object v3, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->DECIMAL_ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v2, v3}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v2

    if-ltz v2, :cond_0

    move-object v2, v1

    sget-object v3, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->DECIMAL_ONE:Ljava/math/BigDecimal;

    invoke-virtual {v2, v3}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v2

    if-lez v2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v10, v2

    move-object v2, v10

    move-object v3, v10

    const/4 v4, 0x0

    const-string/jumbo v5, "InvalidFractional"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v1

    aput-object v9, v7, v8

    invoke-static {v4, v5, v6}, Lorg/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->fractionalSecond:Ljava/math/BigDecimal;

    return-void
.end method

.method public setHour(I)V
    .locals 5

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const/4 v3, 0x3

    move v4, v1

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->checkFieldValueConstraint(II)V

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->hour:I

    return-void
.end method

.method public setMillisecond(I)V
    .locals 7

    move-object v1, p0

    move v2, p1

    move v3, v2

    const/high16 v4, -0x80000000

    if-ne v3, v4, :cond_0

    move-object v3, v1

    const/4 v4, 0x0

    iput-object v4, v3, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->fractionalSecond:Ljava/math/BigDecimal;

    :goto_0
    return-void

    :cond_0
    move-object v3, v1

    const/4 v4, 0x6

    move v5, v2

    invoke-direct {v3, v4, v5}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->checkFieldValueConstraint(II)V

    move-object v3, v1

    move v4, v2

    int-to-long v4, v4

    const/4 v6, 0x3

    invoke-static {v4, v5, v6}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v4

    iput-object v4, v3, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->fractionalSecond:Ljava/math/BigDecimal;

    goto :goto_0
.end method

.method public setMinute(I)V
    .locals 5

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const/4 v3, 0x4

    move v4, v1

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->checkFieldValueConstraint(II)V

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->minute:I

    return-void
.end method

.method public setMonth(I)V
    .locals 5

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const/4 v3, 0x1

    move v4, v1

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->checkFieldValueConstraint(II)V

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    return-void
.end method

.method public setSecond(I)V
    .locals 5

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const/4 v3, 0x5

    move v4, v1

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->checkFieldValueConstraint(II)V

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->second:I

    return-void
.end method

.method public setTime(III)V
    .locals 9

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    move v5, v1

    move v6, v2

    move v7, v3

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setTime(IIILjava/math/BigDecimal;)V

    return-void
.end method

.method public setTime(IIII)V
    .locals 7

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    move v6, v1

    invoke-virtual {v5, v6}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setHour(I)V

    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setMinute(I)V

    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setSecond(I)V

    move-object v5, v0

    move v6, v4

    invoke-virtual {v5, v6}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setMillisecond(I)V

    return-void
.end method

.method public setTime(IIILjava/math/BigDecimal;)V
    .locals 7

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, v0

    move v6, v1

    invoke-virtual {v5, v6}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setHour(I)V

    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setMinute(I)V

    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setSecond(I)V

    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v5, v6}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setFractionalSecond(Ljava/math/BigDecimal;)V

    return-void
.end method

.method public setTimezone(I)V
    .locals 5

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const/4 v3, 0x7

    move v4, v1

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->checkFieldValueConstraint(II)V

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->timezone:I

    return-void
.end method

.method public setYear(I)V
    .locals 7

    move-object v0, p0

    move v1, p1

    move v4, v1

    const/high16 v5, -0x80000000

    if-ne v4, v5, :cond_0

    move-object v4, v0

    const/high16 v5, -0x80000000

    iput v5, v4, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->eon:Ljava/math/BigInteger;

    :goto_0
    return-void

    :cond_0
    move v4, v1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const v5, 0x3b9aca00

    if-ge v4, v5, :cond_1

    move-object v4, v0

    move v5, v1

    iput v5, v4, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->eon:Ljava/math/BigInteger;

    goto :goto_0

    :cond_1
    move v4, v1

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    move-object v2, v4

    move-object v4, v2

    sget-object v5, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->BILLION_B:Ljava/math/BigInteger;

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    move-object v3, v4

    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    iput v5, v4, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setEon(Ljava/math/BigInteger;)V

    goto :goto_0
.end method

.method public setYear(Ljava/math/BigInteger;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    if-nez v3, :cond_0

    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->eon:Ljava/math/BigInteger;

    move-object v3, v0

    const/high16 v4, -0x80000000

    iput v4, v3, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    :goto_0
    return-void

    :cond_0
    move-object v3, v1

    sget-object v4, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->BILLION_B:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    move-object v2, v3

    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    iput v4, v3, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setEon(Ljava/math/BigInteger;)V

    goto :goto_0
.end method

.method public toGregorianCalendar()Ljava/util/GregorianCalendar;
    .locals 11

    move-object v0, p0

    const/4 v6, 0x0

    move-object v1, v6

    move-object v6, v0

    const/high16 v7, -0x80000000

    invoke-virtual {v6, v7}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getTimeZone(I)Ljava/util/TimeZone;

    move-result-object v6

    move-object v3, v6

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    move-object v4, v6

    new-instance v6, Ljava/util/GregorianCalendar;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v3

    move-object v9, v4

    invoke-direct {v7, v8, v9}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    move-object v1, v6

    move-object v6, v1

    invoke-virtual {v6}, Ljava/util/GregorianCalendar;->clear()V

    move-object v6, v1

    sget-object v7, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->PURE_GREGORIAN_CHANGE:Ljava/util/Date;

    invoke-virtual {v6, v7}, Ljava/util/GregorianCalendar;->setGregorianChange(Ljava/util/Date;)V

    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    const/high16 v7, -0x80000000

    if-eq v6, v7, :cond_0

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->eon:Ljava/math/BigInteger;

    if-nez v6, :cond_8

    move-object v6, v1

    const/4 v7, 0x0

    move-object v8, v0

    iget v8, v8, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    if-gez v8, :cond_7

    const/4 v8, 0x0

    :goto_0
    invoke-virtual {v6, v7, v8}, Ljava/util/GregorianCalendar;->set(II)V

    move-object v6, v1

    const/4 v7, 0x1

    move-object v8, v0

    iget v8, v8, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/util/GregorianCalendar;->set(II)V

    :cond_0
    :goto_1
    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    const/high16 v7, -0x80000000

    if-eq v6, v7, :cond_1

    move-object v6, v1

    const/4 v7, 0x2

    move-object v8, v0

    iget v8, v8, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v6, v7, v8}, Ljava/util/GregorianCalendar;->set(II)V

    :cond_1
    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->day:I

    const/high16 v7, -0x80000000

    if-eq v6, v7, :cond_2

    move-object v6, v1

    const/4 v7, 0x5

    move-object v8, v0

    iget v8, v8, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->day:I

    invoke-virtual {v6, v7, v8}, Ljava/util/GregorianCalendar;->set(II)V

    :cond_2
    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->hour:I

    const/high16 v7, -0x80000000

    if-eq v6, v7, :cond_3

    move-object v6, v1

    const/16 v7, 0xb

    move-object v8, v0

    iget v8, v8, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->hour:I

    invoke-virtual {v6, v7, v8}, Ljava/util/GregorianCalendar;->set(II)V

    :cond_3
    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->minute:I

    const/high16 v7, -0x80000000

    if-eq v6, v7, :cond_4

    move-object v6, v1

    const/16 v7, 0xc

    move-object v8, v0

    iget v8, v8, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->minute:I

    invoke-virtual {v6, v7, v8}, Ljava/util/GregorianCalendar;->set(II)V

    :cond_4
    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->second:I

    const/high16 v7, -0x80000000

    if-eq v6, v7, :cond_5

    move-object v6, v1

    const/16 v7, 0xd

    move-object v8, v0

    iget v8, v8, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->second:I

    invoke-virtual {v6, v7, v8}, Ljava/util/GregorianCalendar;->set(II)V

    :cond_5
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->fractionalSecond:Ljava/math/BigDecimal;

    if-eqz v6, :cond_6

    move-object v6, v1

    const/16 v7, 0xe

    move-object v8, v0

    invoke-virtual {v8}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getMillisecond()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/util/GregorianCalendar;->set(II)V

    :cond_6
    move-object v6, v1

    move-object v0, v6

    return-object v0

    :cond_7
    const/4 v8, 0x1

    goto :goto_0

    :cond_8
    move-object v6, v0

    invoke-virtual {v6}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getEonAndYear()Ljava/math/BigInteger;

    move-result-object v6

    move-object v5, v6

    move-object v6, v1

    const/4 v7, 0x0

    move-object v8, v5

    invoke-virtual {v8}, Ljava/math/BigInteger;->signum()I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_9

    const/4 v8, 0x0

    :goto_2
    invoke-virtual {v6, v7, v8}, Ljava/util/GregorianCalendar;->set(II)V

    move-object v6, v1

    const/4 v7, 0x1

    move-object v8, v5

    invoke-virtual {v8}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8}, Ljava/math/BigInteger;->intValue()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/util/GregorianCalendar;->set(II)V

    goto/16 :goto_1

    :cond_9
    const/4 v8, 0x1

    goto :goto_2
.end method

.method public toGregorianCalendar(Ljava/util/TimeZone;Ljava/util/Locale;Ljavax/xml/datatype/XMLGregorianCalendar;)Ljava/util/GregorianCalendar;
    .locals 13

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    const/4 v8, 0x0

    move-object v4, v8

    move-object v8, v1

    move-object v5, v8

    move-object v8, v5

    if-nez v8, :cond_1

    const/high16 v8, -0x80000000

    move v6, v8

    move-object v8, v3

    if-eqz v8, :cond_0

    move-object v8, v3

    invoke-virtual {v8}, Ljavax/xml/datatype/XMLGregorianCalendar;->getTimezone()I

    move-result v8

    move v6, v8

    :cond_0
    move-object v8, v0

    move v9, v6

    invoke-virtual {v8, v9}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getTimeZone(I)Ljava/util/TimeZone;

    move-result-object v8

    move-object v5, v8

    :cond_1
    move-object v8, v2

    if-nez v8, :cond_2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    move-object v2, v8

    :cond_2
    new-instance v8, Ljava/util/GregorianCalendar;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v5

    move-object v11, v2

    invoke-direct {v9, v10, v11}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    move-object v4, v8

    move-object v8, v4

    invoke-virtual {v8}, Ljava/util/GregorianCalendar;->clear()V

    move-object v8, v4

    sget-object v9, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->PURE_GREGORIAN_CHANGE:Ljava/util/Date;

    invoke-virtual {v8, v9}, Ljava/util/GregorianCalendar;->setGregorianChange(Ljava/util/Date;)V

    move-object v8, v0

    iget v8, v8, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    const/high16 v9, -0x80000000

    if-eq v8, v9, :cond_d

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->eon:Ljava/math/BigInteger;

    if-nez v8, :cond_b

    move-object v8, v4

    const/4 v9, 0x0

    move-object v10, v0

    iget v10, v10, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    if-gez v10, :cond_a

    const/4 v10, 0x0

    :goto_0
    invoke-virtual {v8, v9, v10}, Ljava/util/GregorianCalendar;->set(II)V

    move-object v8, v4

    const/4 v9, 0x1

    move-object v10, v0

    iget v10, v10, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Ljava/util/GregorianCalendar;->set(II)V

    :cond_3
    :goto_1
    move-object v8, v0

    iget v8, v8, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    const/high16 v9, -0x80000000

    if-eq v8, v9, :cond_11

    move-object v8, v4

    const/4 v9, 0x2

    move-object v10, v0

    iget v10, v10, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v8, v9, v10}, Ljava/util/GregorianCalendar;->set(II)V

    :cond_4
    :goto_2
    move-object v8, v0

    iget v8, v8, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->day:I

    const/high16 v9, -0x80000000

    if-eq v8, v9, :cond_13

    move-object v8, v4

    const/4 v9, 0x5

    move-object v10, v0

    iget v10, v10, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->day:I

    invoke-virtual {v8, v9, v10}, Ljava/util/GregorianCalendar;->set(II)V

    :cond_5
    :goto_3
    move-object v8, v0

    iget v8, v8, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->hour:I

    const/high16 v9, -0x80000000

    if-eq v8, v9, :cond_15

    move-object v8, v4

    const/16 v9, 0xb

    move-object v10, v0

    iget v10, v10, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->hour:I

    invoke-virtual {v8, v9, v10}, Ljava/util/GregorianCalendar;->set(II)V

    :cond_6
    :goto_4
    move-object v8, v0

    iget v8, v8, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->minute:I

    const/high16 v9, -0x80000000

    if-eq v8, v9, :cond_17

    move-object v8, v4

    const/16 v9, 0xc

    move-object v10, v0

    iget v10, v10, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->minute:I

    invoke-virtual {v8, v9, v10}, Ljava/util/GregorianCalendar;->set(II)V

    :cond_7
    :goto_5
    move-object v8, v0

    iget v8, v8, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->second:I

    const/high16 v9, -0x80000000

    if-eq v8, v9, :cond_19

    move-object v8, v4

    const/16 v9, 0xd

    move-object v10, v0

    iget v10, v10, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->second:I

    invoke-virtual {v8, v9, v10}, Ljava/util/GregorianCalendar;->set(II)V

    :cond_8
    :goto_6
    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->fractionalSecond:Ljava/math/BigDecimal;

    if-eqz v8, :cond_1b

    move-object v8, v4

    const/16 v9, 0xe

    move-object v10, v0

    invoke-virtual {v10}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getMillisecond()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Ljava/util/GregorianCalendar;->set(II)V

    :cond_9
    :goto_7
    move-object v8, v4

    move-object v0, v8

    return-object v0

    :cond_a
    const/4 v10, 0x1

    goto :goto_0

    :cond_b
    move-object v8, v0

    invoke-virtual {v8}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getEonAndYear()Ljava/math/BigInteger;

    move-result-object v8

    move-object v6, v8

    move-object v8, v4

    const/4 v9, 0x0

    move-object v10, v6

    invoke-virtual {v10}, Ljava/math/BigInteger;->signum()I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_c

    const/4 v10, 0x0

    :goto_8
    invoke-virtual {v8, v9, v10}, Ljava/util/GregorianCalendar;->set(II)V

    move-object v8, v4

    const/4 v9, 0x1

    move-object v10, v6

    invoke-virtual {v10}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10}, Ljava/math/BigInteger;->intValue()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Ljava/util/GregorianCalendar;->set(II)V

    goto/16 :goto_1

    :cond_c
    const/4 v10, 0x1

    goto :goto_8

    :cond_d
    move-object v8, v3

    if-eqz v8, :cond_3

    move-object v8, v3

    invoke-virtual {v8}, Ljavax/xml/datatype/XMLGregorianCalendar;->getYear()I

    move-result v8

    move v6, v8

    move v8, v6

    const/high16 v9, -0x80000000

    if-eq v8, v9, :cond_3

    move-object v8, v3

    invoke-virtual {v8}, Ljavax/xml/datatype/XMLGregorianCalendar;->getEon()Ljava/math/BigInteger;

    move-result-object v8

    if-nez v8, :cond_f

    move-object v8, v4

    const/4 v9, 0x0

    move v10, v6

    if-gez v10, :cond_e

    const/4 v10, 0x0

    :goto_9
    invoke-virtual {v8, v9, v10}, Ljava/util/GregorianCalendar;->set(II)V

    move-object v8, v4

    const/4 v9, 0x1

    move v10, v6

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Ljava/util/GregorianCalendar;->set(II)V

    goto/16 :goto_1

    :cond_e
    const/4 v10, 0x1

    goto :goto_9

    :cond_f
    move-object v8, v3

    invoke-virtual {v8}, Ljavax/xml/datatype/XMLGregorianCalendar;->getEonAndYear()Ljava/math/BigInteger;

    move-result-object v8

    move-object v7, v8

    move-object v8, v4

    const/4 v9, 0x0

    move-object v10, v7

    invoke-virtual {v10}, Ljava/math/BigInteger;->signum()I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_10

    const/4 v10, 0x0

    :goto_a
    invoke-virtual {v8, v9, v10}, Ljava/util/GregorianCalendar;->set(II)V

    move-object v8, v4

    const/4 v9, 0x1

    move-object v10, v7

    invoke-virtual {v10}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10}, Ljava/math/BigInteger;->intValue()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Ljava/util/GregorianCalendar;->set(II)V

    goto/16 :goto_1

    :cond_10
    const/4 v10, 0x1

    goto :goto_a

    :cond_11
    move-object v8, v3

    if-eqz v8, :cond_12

    move-object v8, v3

    invoke-virtual {v8}, Ljavax/xml/datatype/XMLGregorianCalendar;->getMonth()I

    move-result v8

    :goto_b
    move v6, v8

    move v8, v6

    const/high16 v9, -0x80000000

    if-eq v8, v9, :cond_4

    move-object v8, v4

    const/4 v9, 0x2

    move v10, v6

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v8, v9, v10}, Ljava/util/GregorianCalendar;->set(II)V

    goto/16 :goto_2

    :cond_12
    const/high16 v8, -0x80000000

    goto :goto_b

    :cond_13
    move-object v8, v3

    if-eqz v8, :cond_14

    move-object v8, v3

    invoke-virtual {v8}, Ljavax/xml/datatype/XMLGregorianCalendar;->getDay()I

    move-result v8

    :goto_c
    move v6, v8

    move v8, v6

    const/high16 v9, -0x80000000

    if-eq v8, v9, :cond_5

    move-object v8, v4

    const/4 v9, 0x5

    move v10, v6

    invoke-virtual {v8, v9, v10}, Ljava/util/GregorianCalendar;->set(II)V

    goto/16 :goto_3

    :cond_14
    const/high16 v8, -0x80000000

    goto :goto_c

    :cond_15
    move-object v8, v3

    if-eqz v8, :cond_16

    move-object v8, v3

    invoke-virtual {v8}, Ljavax/xml/datatype/XMLGregorianCalendar;->getHour()I

    move-result v8

    :goto_d
    move v6, v8

    move v8, v6

    const/high16 v9, -0x80000000

    if-eq v8, v9, :cond_6

    move-object v8, v4

    const/16 v9, 0xb

    move v10, v6

    invoke-virtual {v8, v9, v10}, Ljava/util/GregorianCalendar;->set(II)V

    goto/16 :goto_4

    :cond_16
    const/high16 v8, -0x80000000

    goto :goto_d

    :cond_17
    move-object v8, v3

    if-eqz v8, :cond_18

    move-object v8, v3

    invoke-virtual {v8}, Ljavax/xml/datatype/XMLGregorianCalendar;->getMinute()I

    move-result v8

    :goto_e
    move v6, v8

    move v8, v6

    const/high16 v9, -0x80000000

    if-eq v8, v9, :cond_7

    move-object v8, v4

    const/16 v9, 0xc

    move v10, v6

    invoke-virtual {v8, v9, v10}, Ljava/util/GregorianCalendar;->set(II)V

    goto/16 :goto_5

    :cond_18
    const/high16 v8, -0x80000000

    goto :goto_e

    :cond_19
    move-object v8, v3

    if-eqz v8, :cond_1a

    move-object v8, v3

    invoke-virtual {v8}, Ljavax/xml/datatype/XMLGregorianCalendar;->getSecond()I

    move-result v8

    :goto_f
    move v6, v8

    move v8, v6

    const/high16 v9, -0x80000000

    if-eq v8, v9, :cond_8

    move-object v8, v4

    const/16 v9, 0xd

    move v10, v6

    invoke-virtual {v8, v9, v10}, Ljava/util/GregorianCalendar;->set(II)V

    goto/16 :goto_6

    :cond_1a
    const/high16 v8, -0x80000000

    goto :goto_f

    :cond_1b
    move-object v8, v3

    if-eqz v8, :cond_1c

    move-object v8, v3

    invoke-virtual {v8}, Ljavax/xml/datatype/XMLGregorianCalendar;->getFractionalSecond()Ljava/math/BigDecimal;

    move-result-object v8

    :goto_10
    move-object v6, v8

    move-object v8, v6

    if-eqz v8, :cond_9

    move-object v8, v4

    const/16 v9, 0xe

    move-object v10, v3

    invoke-virtual {v10}, Ljavax/xml/datatype/XMLGregorianCalendar;->getMillisecond()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Ljava/util/GregorianCalendar;->set(II)V

    goto/16 :goto_7

    :cond_1c
    const/4 v8, 0x0

    goto :goto_10
.end method

.method public toXMLFormat()Ljava/lang/String;
    .locals 5

    move-object v0, p0

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getXMLSchemaType()Ljavax/xml/namespace/QName;

    move-result-object v3

    move-object v1, v3

    const/4 v3, 0x0

    move-object v2, v3

    move-object v3, v1

    sget-object v4, Ljavax/xml/datatype/DatatypeConstants;->DATETIME:Ljavax/xml/namespace/QName;

    if-ne v3, v4, :cond_1

    const-string/jumbo v3, "%Y-%M-%DT%h:%m:%s%z"

    move-object v2, v3

    :cond_0
    :goto_0
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    return-object v0

    :cond_1
    move-object v3, v1

    sget-object v4, Ljavax/xml/datatype/DatatypeConstants;->DATE:Ljavax/xml/namespace/QName;

    if-ne v3, v4, :cond_2

    const-string/jumbo v3, "%Y-%M-%D%z"

    move-object v2, v3

    goto :goto_0

    :cond_2
    move-object v3, v1

    sget-object v4, Ljavax/xml/datatype/DatatypeConstants;->TIME:Ljavax/xml/namespace/QName;

    if-ne v3, v4, :cond_3

    const-string/jumbo v3, "%h:%m:%s%z"

    move-object v2, v3

    goto :goto_0

    :cond_3
    move-object v3, v1

    sget-object v4, Ljavax/xml/datatype/DatatypeConstants;->GMONTH:Ljavax/xml/namespace/QName;

    if-ne v3, v4, :cond_4

    const-string/jumbo v3, "--%M--%z"

    move-object v2, v3

    goto :goto_0

    :cond_4
    move-object v3, v1

    sget-object v4, Ljavax/xml/datatype/DatatypeConstants;->GDAY:Ljavax/xml/namespace/QName;

    if-ne v3, v4, :cond_5

    const-string/jumbo v3, "---%D%z"

    move-object v2, v3

    goto :goto_0

    :cond_5
    move-object v3, v1

    sget-object v4, Ljavax/xml/datatype/DatatypeConstants;->GYEAR:Ljavax/xml/namespace/QName;

    if-ne v3, v4, :cond_6

    const-string/jumbo v3, "%Y%z"

    move-object v2, v3

    goto :goto_0

    :cond_6
    move-object v3, v1

    sget-object v4, Ljavax/xml/datatype/DatatypeConstants;->GYEARMONTH:Ljavax/xml/namespace/QName;

    if-ne v3, v4, :cond_7

    const-string/jumbo v3, "%Y-%M%z"

    move-object v2, v3

    goto :goto_0

    :cond_7
    move-object v3, v1

    sget-object v4, Ljavax/xml/datatype/DatatypeConstants;->GMONTHDAY:Ljavax/xml/namespace/QName;

    if-ne v3, v4, :cond_0

    const-string/jumbo v3, "--%M-%D%z"

    move-object v2, v3

    goto :goto_0
.end method
