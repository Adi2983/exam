.class public Lorg/apache/xerces/jaxp/datatype/DatatypeFactoryImpl;
.super Ljavax/xml/datatype/DatatypeFactory;


# direct methods
.method public constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljavax/xml/datatype/DatatypeFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public newDuration(J)Ljavax/xml/datatype/Duration;
    .locals 9

    move-object v1, p0

    move-wide v2, p1

    new-instance v4, Lorg/apache/xerces/jaxp/datatype/DurationImpl;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-wide v6, v2

    invoke-direct {v5, v6, v7}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;-><init>(J)V

    move-object v1, v4

    return-object v1
.end method

.method public newDuration(Ljava/lang/String;)Ljavax/xml/datatype/Duration;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    new-instance v2, Lorg/apache/xerces/jaxp/datatype/DurationImpl;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    return-object v0
.end method

.method public newDuration(ZLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigDecimal;)Ljavax/xml/datatype/Duration;
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    new-instance v8, Lorg/apache/xerces/jaxp/datatype/DurationImpl;

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    move v10, v1

    move-object v11, v2

    move-object v12, v3

    move-object v13, v4

    move-object v14, v5

    move-object v15, v6

    move-object/from16 v16, v7

    invoke-direct/range {v9 .. v16}, Lorg/apache/xerces/jaxp/datatype/DurationImpl;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigDecimal;)V

    move-object v0, v8

    return-object v0
.end method

.method public newXMLGregorianCalendar()Ljavax/xml/datatype/XMLGregorianCalendar;
    .locals 4

    move-object v0, p0

    new-instance v1, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;-><init>()V

    move-object v0, v1

    return-object v0
.end method

.method public newXMLGregorianCalendar(IIIIIIII)Ljavax/xml/datatype/XMLGregorianCalendar;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move v9, v1

    move v10, v2

    move v11, v3

    move v12, v4

    move v13, v5

    move v14, v6

    move v15, v7

    move/from16 v16, v8

    invoke-static/range {v9 .. v16}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->createDateTime(IIIIIIII)Ljavax/xml/datatype/XMLGregorianCalendar;

    move-result-object v9

    move-object v0, v9

    return-object v0
.end method

.method public newXMLGregorianCalendar(Ljava/lang/String;)Ljavax/xml/datatype/XMLGregorianCalendar;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    new-instance v2, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    return-object v0
.end method

.method public newXMLGregorianCalendar(Ljava/math/BigInteger;IIIIILjava/math/BigDecimal;I)Ljavax/xml/datatype/XMLGregorianCalendar;
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

    new-instance v9, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    move-object/from16 v19, v9

    move-object/from16 v9, v19

    move-object/from16 v10, v19

    move-object v11, v1

    move v12, v2

    move v13, v3

    move v14, v4

    move v15, v5

    move/from16 v16, v6

    move-object/from16 v17, v7

    move/from16 v18, v8

    invoke-direct/range {v10 .. v18}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;-><init>(Ljava/math/BigInteger;IIIIILjava/math/BigDecimal;I)V

    move-object v0, v9

    return-object v0
.end method

.method public newXMLGregorianCalendar(Ljava/util/GregorianCalendar;)Ljavax/xml/datatype/XMLGregorianCalendar;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    new-instance v2, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Lorg/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;-><init>(Ljava/util/GregorianCalendar;)V

    move-object v0, v2

    return-object v0
.end method
