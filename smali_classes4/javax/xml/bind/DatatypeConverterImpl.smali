.class final Ljavax/xml/bind/DatatypeConverterImpl;
.super Ljava/lang/Object;
.source "DatatypeConverterImpl.java"

# interfaces
.implements Ljavax/xml/bind/DatatypeConverterInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/xml/bind/DatatypeConverterImpl$CalendarFormatter;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final PADDING:B = 0x7ft

.field private static final datatypeFactory:Ljavax/xml/datatype/DatatypeFactory;

.field private static final decodeMap:[B

.field private static final encodeMap:[C

.field private static final hexCode:[C

.field public static final theInstance:Ljavax/xml/bind/DatatypeConverterInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 29
    const-class v1, Ljavax/xml/bind/DatatypeConverterImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    sput-boolean v1, Ljavax/xml/bind/DatatypeConverterImpl;->$assertionsDisabled:Z

    .line 34
    new-instance v1, Ljavax/xml/bind/DatatypeConverterImpl;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljavax/xml/bind/DatatypeConverterImpl;-><init>()V

    sput-object v1, Ljavax/xml/bind/DatatypeConverterImpl;->theInstance:Ljavax/xml/bind/DatatypeConverterInterface;

    .line 355
    const-string/jumbo v1, "0123456789ABCDEF"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    sput-object v1, Ljavax/xml/bind/DatatypeConverterImpl;->hexCode:[C

    .line 490
    invoke-static {}, Ljavax/xml/bind/DatatypeConverterImpl;->initDecodeMap()[B

    move-result-object v1

    sput-object v1, Ljavax/xml/bind/DatatypeConverterImpl;->decodeMap:[B

    .line 601
    invoke-static {}, Ljavax/xml/bind/DatatypeConverterImpl;->initEncodeMap()[C

    move-result-object v1

    sput-object v1, Ljavax/xml/bind/DatatypeConverterImpl;->encodeMap:[C

    .line 742
    :try_start_0
    invoke-static {}, Ljavax/xml/datatype/DatatypeFactory;->newInstance()Ljavax/xml/datatype/DatatypeFactory;

    move-result-object v1

    sput-object v1, Ljavax/xml/bind/DatatypeConverterImpl;->datatypeFactory:Ljavax/xml/datatype/DatatypeFactory;
    :try_end_0
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 745
    .line 746
    return-void

    .line 29
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 743
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 744
    .local v0, "e":Ljavax/xml/datatype/DatatypeConfigurationException;
    new-instance v1, Ljava/lang/Error;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/DatatypeConverterImpl;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static _parseBase64Binary(Ljava/lang/String;)[B
    .locals 15

    .prologue
    .line 563
    move-object v0, p0

    .local v0, "text":Ljava/lang/String;
    move-object v10, v0

    invoke-static {v10}, Ljavax/xml/bind/DatatypeConverterImpl;->guessLength(Ljava/lang/String;)I

    move-result v10

    move v1, v10

    .line 564
    .local v1, "buflen":I
    move v10, v1

    new-array v10, v10, [B

    move-object v2, v10

    .line 565
    .local v2, "out":[B
    const/4 v10, 0x0

    move v3, v10

    .line 567
    .local v3, "o":I
    move-object v10, v0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    move v4, v10

    .line 570
    .local v4, "len":I
    const/4 v10, 0x4

    new-array v10, v10, [B

    move-object v6, v10

    .line 571
    .local v6, "quadruplet":[B
    const/4 v10, 0x0

    move v7, v10

    .line 574
    .local v7, "q":I
    const/4 v10, 0x0

    move v5, v10

    .local v5, "i":I
    :goto_0
    move v10, v5

    move v11, v4

    if-ge v10, v11, :cond_4

    .line 575
    move-object v10, v0

    move v11, v5

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    move v8, v10

    .line 576
    .local v8, "ch":C
    sget-object v10, Ljavax/xml/bind/DatatypeConverterImpl;->decodeMap:[B

    move v11, v8

    aget-byte v10, v10, v11

    move v9, v10

    .line 578
    .local v9, "v":B
    move v10, v9

    const/4 v11, -0x1

    if-eq v10, v11, :cond_0

    .line 579
    move-object v10, v6

    move v11, v7

    add-int/lit8 v7, v7, 0x1

    move v12, v9

    aput-byte v12, v10, v11

    .line 581
    :cond_0
    move v10, v7

    const/4 v11, 0x4

    if-ne v10, v11, :cond_3

    .line 583
    move-object v10, v2

    move v11, v3

    add-int/lit8 v3, v3, 0x1

    move-object v12, v6

    const/4 v13, 0x0

    aget-byte v12, v12, v13

    const/4 v13, 0x2

    shl-int/lit8 v12, v12, 0x2

    move-object v13, v6

    const/4 v14, 0x1

    aget-byte v13, v13, v14

    const/4 v14, 0x4

    shr-int/lit8 v13, v13, 0x4

    or-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, v10, v11

    .line 584
    move-object v10, v6

    const/4 v11, 0x2

    aget-byte v10, v10, v11

    const/16 v11, 0x7f

    if-eq v10, v11, :cond_1

    .line 585
    move-object v10, v2

    move v11, v3

    add-int/lit8 v3, v3, 0x1

    move-object v12, v6

    const/4 v13, 0x1

    aget-byte v12, v12, v13

    const/4 v13, 0x4

    shl-int/lit8 v12, v12, 0x4

    move-object v13, v6

    const/4 v14, 0x2

    aget-byte v13, v13, v14

    const/4 v14, 0x2

    shr-int/lit8 v13, v13, 0x2

    or-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, v10, v11

    .line 586
    :cond_1
    move-object v10, v6

    const/4 v11, 0x3

    aget-byte v10, v10, v11

    const/16 v11, 0x7f

    if-eq v10, v11, :cond_2

    .line 587
    move-object v10, v2

    move v11, v3

    add-int/lit8 v3, v3, 0x1

    move-object v12, v6

    const/4 v13, 0x2

    aget-byte v12, v12, v13

    const/4 v13, 0x6

    shl-int/lit8 v12, v12, 0x6

    move-object v13, v6

    const/4 v14, 0x3

    aget-byte v13, v13, v14

    or-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, v10, v11

    .line 588
    :cond_2
    const/4 v10, 0x0

    move v7, v10

    .line 574
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 592
    .end local v8    # "ch":C
    .end local v9    # "v":B
    :cond_4
    move v10, v1

    move v11, v3

    if-ne v10, v11, :cond_5

    .line 593
    move-object v10, v2

    move-object v0, v10

    .line 598
    .end local v0    # "text":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 596
    .restart local v0    # "text":Ljava/lang/String;
    :cond_5
    move v10, v3

    new-array v10, v10, [B

    move-object v8, v10

    .line 597
    .local v8, "nb":[B
    move-object v10, v2

    const/4 v11, 0x0

    move-object v12, v8

    const/4 v13, 0x0

    move v14, v3

    invoke-static {v10, v11, v12, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 598
    move-object v10, v8

    move-object v0, v10

    goto :goto_1
.end method

.method public static _parseBoolean(Ljava/lang/CharSequence;)Z
    .locals 6

    .prologue
    .line 217
    move-object v0, p0

    .local v0, "literal":Ljava/lang/CharSequence;
    const/4 v4, 0x0

    move v1, v4

    .line 218
    .local v1, "i":I
    move-object v4, v0

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    move v2, v4

    .line 221
    .local v2, "len":I
    :cond_0
    move-object v4, v0

    move v5, v1

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v4, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    move v3, v4

    .line 222
    .local v3, "ch":C
    move v4, v3

    invoke-static {v4}, Ljavax/xml/bind/WhiteSpaceProcessor;->isWhiteSpace(C)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v1

    move v5, v2

    if-lt v4, v5, :cond_0

    .line 226
    :cond_1
    move v4, v3

    const/16 v5, 0x74

    if-eq v4, v5, :cond_2

    move v4, v3

    const/16 v5, 0x31

    if-ne v4, v5, :cond_3

    :cond_2
    const/4 v4, 0x1

    move v0, v4

    .line 228
    .end local v0    # "literal":Ljava/lang/CharSequence;
    :goto_0
    return v0

    .line 227
    .restart local v0    # "literal":Ljava/lang/CharSequence;
    :cond_3
    move v4, v3

    const/16 v5, 0x66

    if-eq v4, v5, :cond_4

    move v4, v3

    const/16 v5, 0x30

    if-ne v4, v5, :cond_5

    :cond_4
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 228
    :cond_5
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method public static _parseByte(Ljava/lang/CharSequence;)B
    .locals 2

    .prologue
    .line 243
    move-object v0, p0

    .local v0, "literal":Ljava/lang/CharSequence;
    move-object v1, v0

    invoke-static {v1}, Ljavax/xml/bind/DatatypeConverterImpl;->_parseInt(Ljava/lang/CharSequence;)I

    move-result v1

    int-to-byte v1, v1

    move v0, v1

    .end local v0    # "literal":Ljava/lang/CharSequence;
    return v0
.end method

.method public static _parseDateTime(Ljava/lang/CharSequence;)Ljava/util/GregorianCalendar;
    .locals 4

    .prologue
    .line 310
    move-object v0, p0

    .local v0, "s":Ljava/lang/CharSequence;
    move-object v2, v0

    invoke-static {v2}, Ljavax/xml/bind/WhiteSpaceProcessor;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 311
    .local v1, "val":Ljava/lang/String;
    sget-object v2, Ljavax/xml/bind/DatatypeConverterImpl;->datatypeFactory:Ljavax/xml/datatype/DatatypeFactory;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavax/xml/datatype/DatatypeFactory;->newXMLGregorianCalendar(Ljava/lang/String;)Ljavax/xml/datatype/XMLGregorianCalendar;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/datatype/XMLGregorianCalendar;->toGregorianCalendar()Ljava/util/GregorianCalendar;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "s":Ljava/lang/CharSequence;
    return-object v0
.end method

.method public static _parseDecimal(Ljava/lang/CharSequence;)Ljava/math/BigDecimal;
    .locals 5

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "content":Ljava/lang/CharSequence;
    move-object v1, v0

    invoke-static {v1}, Ljavax/xml/bind/WhiteSpaceProcessor;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    .line 129
    new-instance v1, Ljava/math/BigDecimal;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .end local v0    # "content":Ljava/lang/CharSequence;
    return-object v0
.end method

.method public static _parseDouble(Ljava/lang/CharSequence;)D
    .locals 6

    .prologue
    .line 196
    move-object v0, p0

    .local v0, "_val":Ljava/lang/CharSequence;
    move-object v2, v0

    invoke-static {v2}, Ljavax/xml/bind/WhiteSpaceProcessor;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 198
    .local v1, "val":Ljava/lang/String;
    move-object v2, v1

    const-string/jumbo v3, "NaN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    move-wide v0, v2

    .line 209
    .end local v0    # "_val":Ljava/lang/CharSequence;
    :goto_0
    return-wide v0

    .line 199
    .restart local v0    # "_val":Ljava/lang/CharSequence;
    :cond_0
    move-object v2, v1

    const-string/jumbo v3, "INF"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    move-wide v0, v2

    goto :goto_0

    .line 200
    :cond_1
    move-object v2, v1

    const-string/jumbo v3, "-INF"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-wide/high16 v2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    move-wide v0, v2

    goto :goto_0

    .line 202
    :cond_2
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljavax/xml/bind/DatatypeConverterImpl;->isDigitOrPeriodOrSign(C)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, v1

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljavax/xml/bind/DatatypeConverterImpl;->isDigitOrPeriodOrSign(C)Z

    move-result v2

    if-nez v2, :cond_4

    .line 205
    :cond_3
    new-instance v2, Ljava/lang/NumberFormatException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 209
    :cond_4
    move-object v2, v1

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    move-wide v0, v2

    goto :goto_0
.end method

.method public static _parseFloat(Ljava/lang/CharSequence;)F
    .locals 6

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "_val":Ljava/lang/CharSequence;
    move-object v2, v0

    invoke-static {v2}, Ljavax/xml/bind/WhiteSpaceProcessor;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 165
    .local v1, "s":Ljava/lang/String;
    move-object v2, v1

    const-string/jumbo v3, "NaN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/high16 v2, 0x7fc00000    # Float.NaN

    move v0, v2

    .line 175
    .end local v0    # "_val":Ljava/lang/CharSequence;
    :goto_0
    return v0

    .line 166
    .restart local v0    # "_val":Ljava/lang/CharSequence;
    :cond_0
    move-object v2, v1

    const-string/jumbo v3, "INF"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    move v0, v2

    goto :goto_0

    .line 167
    :cond_1
    move-object v2, v1

    const-string/jumbo v3, "-INF"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/high16 v2, -0x800000    # Float.NEGATIVE_INFINITY

    move v0, v2

    goto :goto_0

    .line 169
    :cond_2
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljavax/xml/bind/DatatypeConverterImpl;->isDigitOrPeriodOrSign(C)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, v1

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljavax/xml/bind/DatatypeConverterImpl;->isDigitOrPeriodOrSign(C)Z

    move-result v2

    if-nez v2, :cond_4

    .line 172
    :cond_3
    new-instance v2, Ljava/lang/NumberFormatException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/lang/NumberFormatException;-><init>()V

    throw v2

    .line 175
    :cond_4
    move-object v2, v1

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method public static _parseInt(Ljava/lang/CharSequence;)I
    .locals 11

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "s":Ljava/lang/CharSequence;
    move-object v6, v0

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    move v1, v6

    .line 75
    .local v1, "len":I
    const/4 v6, 0x1

    move v2, v6

    .line 77
    .local v2, "sign":I
    const/4 v6, 0x0

    move v3, v6

    .line 79
    .local v3, "r":I
    const/4 v6, 0x0

    move v4, v6

    .local v4, "i":I
    :goto_0
    move v6, v4

    move v7, v1

    if-ge v6, v7, :cond_4

    .line 80
    move-object v6, v0

    move v7, v4

    invoke-interface {v6, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    move v5, v6

    .line 81
    .local v5, "ch":C
    move v6, v5

    invoke-static {v6}, Ljavax/xml/bind/WhiteSpaceProcessor;->isWhiteSpace(C)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 83
    .line 79
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 84
    :cond_0
    const/16 v6, 0x30

    move v7, v5

    if-gt v6, v7, :cond_1

    move v6, v5

    const/16 v7, 0x39

    if-gt v6, v7, :cond_1

    .line 85
    move v6, v3

    const/16 v7, 0xa

    mul-int/lit8 v6, v6, 0xa

    move v7, v5

    const/16 v8, 0x30

    add-int/lit8 v7, v7, -0x30

    add-int/2addr v6, v7

    move v3, v6

    .line 86
    goto :goto_1

    .line 87
    :cond_1
    move v6, v5

    const/16 v7, 0x2d

    if-ne v6, v7, :cond_2

    .line 88
    const/4 v6, -0x1

    move v2, v6

    .line 89
    goto :goto_1

    .line 90
    :cond_2
    move v6, v5

    const/16 v7, 0x2b

    if-ne v6, v7, :cond_3

    .line 92
    goto :goto_1

    .line 93
    :cond_3
    new-instance v6, Ljava/lang/NumberFormatException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Not a number: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 96
    .end local v5    # "ch":C
    :cond_4
    move v6, v3

    move v7, v2

    mul-int/2addr v6, v7

    move v0, v6

    .end local v0    # "s":Ljava/lang/CharSequence;
    return v0
.end method

.method public static _parseInteger(Ljava/lang/CharSequence;)Ljava/math/BigInteger;
    .locals 5

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "s":Ljava/lang/CharSequence;
    new-instance v1, Ljava/math/BigInteger;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-static {v3}, Ljavax/xml/bind/WhiteSpaceProcessor;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Ljavax/xml/bind/DatatypeConverterImpl;->removeOptionalPlus(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .end local v0    # "s":Ljava/lang/CharSequence;
    return-object v0
.end method

.method public static _parseLong(Ljava/lang/CharSequence;)J
    .locals 3

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "s":Ljava/lang/CharSequence;
    move-object v1, v0

    invoke-static {v1}, Ljavax/xml/bind/WhiteSpaceProcessor;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljavax/xml/bind/DatatypeConverterImpl;->removeOptionalPlus(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "s":Ljava/lang/CharSequence;
    return-wide v0
.end method

.method public static _parseQName(Ljava/lang/CharSequence;Ljavax/xml/namespace/NamespaceContext;)Ljavax/xml/namespace/QName;
    .locals 15

    .prologue
    .line 262
    move-object v0, p0

    .local v0, "text":Ljava/lang/CharSequence;
    move-object/from16 v1, p1

    .local v1, "nsc":Ljavax/xml/namespace/NamespaceContext;
    move-object v9, v0

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v9

    move v2, v9

    .line 265
    .local v2, "length":I
    const/4 v9, 0x0

    move v3, v9

    .line 266
    .local v3, "start":I
    :goto_0
    move v9, v3

    move v10, v2

    if-ge v9, v10, :cond_0

    move-object v9, v0

    move v10, v3

    invoke-interface {v9, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljavax/xml/bind/WhiteSpaceProcessor;->isWhiteSpace(C)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 267
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 269
    :cond_0
    move v9, v2

    move v4, v9

    .line 270
    .local v4, "end":I
    :goto_1
    move v9, v4

    move v10, v3

    if-le v9, v10, :cond_1

    move-object v9, v0

    move v10, v4

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    invoke-interface {v9, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljavax/xml/bind/WhiteSpaceProcessor;->isWhiteSpace(C)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 271
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 273
    :cond_1
    move v9, v4

    move v10, v3

    if-ne v9, v10, :cond_2

    .line 274
    new-instance v9, Ljava/lang/IllegalArgumentException;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const-string/jumbo v11, "input is empty"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 282
    :cond_2
    move v9, v3

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    move v8, v9

    .line 283
    .local v8, "idx":I
    :goto_2
    move v9, v8

    move v10, v4

    if-ge v9, v10, :cond_3

    move-object v9, v0

    move v10, v8

    invoke-interface {v9, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const/16 v10, 0x3a

    if-eq v9, v10, :cond_3

    .line 284
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 286
    :cond_3
    move v9, v8

    move v10, v4

    if-ne v9, v10, :cond_5

    .line 287
    move-object v9, v1

    const-string/jumbo v10, ""

    invoke-interface {v9, v10}, Ljavax/xml/namespace/NamespaceContext;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v5, v9

    .line 288
    .local v5, "uri":Ljava/lang/String;
    move-object v9, v0

    move v10, v3

    move v11, v4

    invoke-interface {v9, v10, v11}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v6, v9

    .line 289
    .local v6, "localPart":Ljava/lang/String;
    const-string/jumbo v9, ""

    move-object v7, v9

    .line 302
    .local v7, "prefix":Ljava/lang/String;
    :cond_4
    new-instance v9, Ljavax/xml/namespace/QName;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v5

    move-object v12, v6

    move-object v13, v7

    invoke-direct {v10, v11, v12, v13}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v9

    .end local v0    # "text":Ljava/lang/CharSequence;
    return-object v0

    .line 292
    .end local v5    # "uri":Ljava/lang/String;
    .end local v6    # "localPart":Ljava/lang/String;
    .end local v7    # "prefix":Ljava/lang/String;
    .restart local v0    # "text":Ljava/lang/CharSequence;
    :cond_5
    move-object v9, v0

    move v10, v3

    move v11, v8

    invoke-interface {v9, v10, v11}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v7, v9

    .line 293
    .restart local v7    # "prefix":Ljava/lang/String;
    move-object v9, v0

    move v10, v8

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    move v11, v4

    invoke-interface {v9, v10, v11}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v6, v9

    .line 294
    .restart local v6    # "localPart":Ljava/lang/String;
    move-object v9, v1

    move-object v10, v7

    invoke-interface {v9, v10}, Ljavax/xml/namespace/NamespaceContext;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v5, v9

    .line 297
    .restart local v5    # "uri":Ljava/lang/String;
    move-object v9, v5

    if-eqz v9, :cond_6

    move-object v9, v5

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_4

    .line 299
    :cond_6
    new-instance v9, Ljava/lang/IllegalArgumentException;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "prefix "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v7

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " is not bound to a namespace"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method public static _parseShort(Ljava/lang/CharSequence;)S
    .locals 2

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "s":Ljava/lang/CharSequence;
    move-object v1, v0

    invoke-static {v1}, Ljavax/xml/bind/DatatypeConverterImpl;->_parseInt(Ljava/lang/CharSequence;)I

    move-result v1

    int-to-short v1, v1

    move v0, v1

    .end local v0    # "s":Ljava/lang/CharSequence;
    return v0
.end method

.method public static _printBase64Binary([BII[BI)I
    .locals 14

    .prologue
    .line 685
    move-object v0, p0

    .local v0, "input":[B
    move v1, p1

    .local v1, "offset":I
    move/from16 v2, p2

    .local v2, "len":I
    move-object/from16 v3, p3

    .local v3, "out":[B
    move/from16 v4, p4

    .local v4, "ptr":I
    move-object v8, v3

    move-object v5, v8

    .line 686
    .local v5, "buf":[B
    move v8, v2

    move v9, v1

    add-int/2addr v8, v9

    move v6, v8

    .line 687
    .local v6, "max":I
    move v8, v1

    move v7, v8

    .local v7, "i":I
    :goto_0
    move v8, v7

    move v9, v6

    if-ge v8, v9, :cond_0

    .line 688
    move v8, v6

    move v9, v7

    sub-int/2addr v8, v9

    packed-switch v8, :pswitch_data_0

    .line 704
    move-object v8, v5

    move v9, v4

    add-int/lit8 v4, v4, 0x1

    move-object v10, v0

    move v11, v7

    aget-byte v10, v10, v11

    const/4 v11, 0x2

    shr-int/lit8 v10, v10, 0x2

    invoke-static {v10}, Ljavax/xml/bind/DatatypeConverterImpl;->encodeByte(I)B

    move-result v10

    aput-byte v10, v8, v9

    .line 705
    move-object v8, v5

    move v9, v4

    add-int/lit8 v4, v4, 0x1

    move-object v10, v0

    move v11, v7

    aget-byte v10, v10, v11

    const/4 v11, 0x3

    and-int/lit8 v10, v10, 0x3

    const/4 v11, 0x4

    shl-int/lit8 v10, v10, 0x4

    move-object v11, v0

    move v12, v7

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    aget-byte v11, v11, v12

    const/4 v12, 0x4

    shr-int/lit8 v11, v11, 0x4

    const/16 v12, 0xf

    and-int/lit8 v11, v11, 0xf

    or-int/2addr v10, v11

    invoke-static {v10}, Ljavax/xml/bind/DatatypeConverterImpl;->encodeByte(I)B

    move-result v10

    aput-byte v10, v8, v9

    .line 708
    move-object v8, v5

    move v9, v4

    add-int/lit8 v4, v4, 0x1

    move-object v10, v0

    move v11, v7

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    aget-byte v10, v10, v11

    const/16 v11, 0xf

    and-int/lit8 v10, v10, 0xf

    const/4 v11, 0x2

    shl-int/lit8 v10, v10, 0x2

    move-object v11, v0

    move v12, v7

    const/4 v13, 0x2

    add-int/lit8 v12, v12, 0x2

    aget-byte v11, v11, v12

    const/4 v12, 0x6

    shr-int/lit8 v11, v11, 0x6

    const/4 v12, 0x3

    and-int/lit8 v11, v11, 0x3

    or-int/2addr v10, v11

    invoke-static {v10}, Ljavax/xml/bind/DatatypeConverterImpl;->encodeByte(I)B

    move-result v10

    aput-byte v10, v8, v9

    .line 711
    move-object v8, v5

    move v9, v4

    add-int/lit8 v4, v4, 0x1

    move-object v10, v0

    move v11, v7

    const/4 v12, 0x2

    add-int/lit8 v11, v11, 0x2

    aget-byte v10, v10, v11

    const/16 v11, 0x3f

    and-int/lit8 v10, v10, 0x3f

    invoke-static {v10}, Ljavax/xml/bind/DatatypeConverterImpl;->encodeByte(I)B

    move-result v10

    aput-byte v10, v8, v9

    .line 687
    :goto_1
    add-int/lit8 v7, v7, 0x3

    goto :goto_0

    .line 690
    :pswitch_0
    move-object v8, v5

    move v9, v4

    add-int/lit8 v4, v4, 0x1

    move-object v10, v0

    move v11, v7

    aget-byte v10, v10, v11

    const/4 v11, 0x2

    shr-int/lit8 v10, v10, 0x2

    invoke-static {v10}, Ljavax/xml/bind/DatatypeConverterImpl;->encodeByte(I)B

    move-result v10

    aput-byte v10, v8, v9

    .line 691
    move-object v8, v5

    move v9, v4

    add-int/lit8 v4, v4, 0x1

    move-object v10, v0

    move v11, v7

    aget-byte v10, v10, v11

    const/4 v11, 0x3

    and-int/lit8 v10, v10, 0x3

    const/4 v11, 0x4

    shl-int/lit8 v10, v10, 0x4

    invoke-static {v10}, Ljavax/xml/bind/DatatypeConverterImpl;->encodeByte(I)B

    move-result v10

    aput-byte v10, v8, v9

    .line 692
    move-object v8, v5

    move v9, v4

    add-int/lit8 v4, v4, 0x1

    const/16 v10, 0x3d

    aput-byte v10, v8, v9

    .line 693
    move-object v8, v5

    move v9, v4

    add-int/lit8 v4, v4, 0x1

    const/16 v10, 0x3d

    aput-byte v10, v8, v9

    .line 694
    goto :goto_1

    .line 696
    :pswitch_1
    move-object v8, v5

    move v9, v4

    add-int/lit8 v4, v4, 0x1

    move-object v10, v0

    move v11, v7

    aget-byte v10, v10, v11

    const/4 v11, 0x2

    shr-int/lit8 v10, v10, 0x2

    invoke-static {v10}, Ljavax/xml/bind/DatatypeConverterImpl;->encodeByte(I)B

    move-result v10

    aput-byte v10, v8, v9

    .line 697
    move-object v8, v5

    move v9, v4

    add-int/lit8 v4, v4, 0x1

    move-object v10, v0

    move v11, v7

    aget-byte v10, v10, v11

    const/4 v11, 0x3

    and-int/lit8 v10, v10, 0x3

    const/4 v11, 0x4

    shl-int/lit8 v10, v10, 0x4

    move-object v11, v0

    move v12, v7

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    aget-byte v11, v11, v12

    const/4 v12, 0x4

    shr-int/lit8 v11, v11, 0x4

    const/16 v12, 0xf

    and-int/lit8 v11, v11, 0xf

    or-int/2addr v10, v11

    invoke-static {v10}, Ljavax/xml/bind/DatatypeConverterImpl;->encodeByte(I)B

    move-result v10

    aput-byte v10, v8, v9

    .line 700
    move-object v8, v5

    move v9, v4

    add-int/lit8 v4, v4, 0x1

    move-object v10, v0

    move v11, v7

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    aget-byte v10, v10, v11

    const/16 v11, 0xf

    and-int/lit8 v10, v10, 0xf

    const/4 v11, 0x2

    shl-int/lit8 v10, v10, 0x2

    invoke-static {v10}, Ljavax/xml/bind/DatatypeConverterImpl;->encodeByte(I)B

    move-result v10

    aput-byte v10, v8, v9

    .line 701
    move-object v8, v5

    move v9, v4

    add-int/lit8 v4, v4, 0x1

    const/16 v10, 0x3d

    aput-byte v10, v8, v9

    .line 702
    goto/16 :goto_1

    .line 716
    :cond_0
    move v8, v4

    move v0, v8

    .end local v0    # "input":[B
    return v0

    .line 688
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static _printBase64Binary([BII[CI)I
    .locals 12

    .prologue
    .line 643
    move-object v0, p0

    .local v0, "input":[B
    move v1, p1

    .local v1, "offset":I
    move v2, p2

    .local v2, "len":I
    move-object v3, p3

    .local v3, "buf":[C
    move/from16 v4, p4

    .local v4, "ptr":I
    move v6, v1

    move v5, v6

    .local v5, "i":I
    :goto_0
    move v6, v5

    move v7, v2

    if-ge v6, v7, :cond_0

    .line 644
    move v6, v2

    move v7, v5

    sub-int/2addr v6, v7

    packed-switch v6, :pswitch_data_0

    .line 660
    move-object v6, v3

    move v7, v4

    add-int/lit8 v4, v4, 0x1

    move-object v8, v0

    move v9, v5

    aget-byte v8, v8, v9

    const/4 v9, 0x2

    shr-int/lit8 v8, v8, 0x2

    invoke-static {v8}, Ljavax/xml/bind/DatatypeConverterImpl;->encode(I)C

    move-result v8

    aput-char v8, v6, v7

    .line 661
    move-object v6, v3

    move v7, v4

    add-int/lit8 v4, v4, 0x1

    move-object v8, v0

    move v9, v5

    aget-byte v8, v8, v9

    const/4 v9, 0x3

    and-int/lit8 v8, v8, 0x3

    const/4 v9, 0x4

    shl-int/lit8 v8, v8, 0x4

    move-object v9, v0

    move v10, v5

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    aget-byte v9, v9, v10

    const/4 v10, 0x4

    shr-int/lit8 v9, v9, 0x4

    const/16 v10, 0xf

    and-int/lit8 v9, v9, 0xf

    or-int/2addr v8, v9

    invoke-static {v8}, Ljavax/xml/bind/DatatypeConverterImpl;->encode(I)C

    move-result v8

    aput-char v8, v6, v7

    .line 664
    move-object v6, v3

    move v7, v4

    add-int/lit8 v4, v4, 0x1

    move-object v8, v0

    move v9, v5

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    aget-byte v8, v8, v9

    const/16 v9, 0xf

    and-int/lit8 v8, v8, 0xf

    const/4 v9, 0x2

    shl-int/lit8 v8, v8, 0x2

    move-object v9, v0

    move v10, v5

    const/4 v11, 0x2

    add-int/lit8 v10, v10, 0x2

    aget-byte v9, v9, v10

    const/4 v10, 0x6

    shr-int/lit8 v9, v9, 0x6

    const/4 v10, 0x3

    and-int/lit8 v9, v9, 0x3

    or-int/2addr v8, v9

    invoke-static {v8}, Ljavax/xml/bind/DatatypeConverterImpl;->encode(I)C

    move-result v8

    aput-char v8, v6, v7

    .line 667
    move-object v6, v3

    move v7, v4

    add-int/lit8 v4, v4, 0x1

    move-object v8, v0

    move v9, v5

    const/4 v10, 0x2

    add-int/lit8 v9, v9, 0x2

    aget-byte v8, v8, v9

    const/16 v9, 0x3f

    and-int/lit8 v8, v8, 0x3f

    invoke-static {v8}, Ljavax/xml/bind/DatatypeConverterImpl;->encode(I)C

    move-result v8

    aput-char v8, v6, v7

    .line 643
    :goto_1
    add-int/lit8 v5, v5, 0x3

    goto :goto_0

    .line 646
    :pswitch_0
    move-object v6, v3

    move v7, v4

    add-int/lit8 v4, v4, 0x1

    move-object v8, v0

    move v9, v5

    aget-byte v8, v8, v9

    const/4 v9, 0x2

    shr-int/lit8 v8, v8, 0x2

    invoke-static {v8}, Ljavax/xml/bind/DatatypeConverterImpl;->encode(I)C

    move-result v8

    aput-char v8, v6, v7

    .line 647
    move-object v6, v3

    move v7, v4

    add-int/lit8 v4, v4, 0x1

    move-object v8, v0

    move v9, v5

    aget-byte v8, v8, v9

    const/4 v9, 0x3

    and-int/lit8 v8, v8, 0x3

    const/4 v9, 0x4

    shl-int/lit8 v8, v8, 0x4

    invoke-static {v8}, Ljavax/xml/bind/DatatypeConverterImpl;->encode(I)C

    move-result v8

    aput-char v8, v6, v7

    .line 648
    move-object v6, v3

    move v7, v4

    add-int/lit8 v4, v4, 0x1

    const/16 v8, 0x3d

    aput-char v8, v6, v7

    .line 649
    move-object v6, v3

    move v7, v4

    add-int/lit8 v4, v4, 0x1

    const/16 v8, 0x3d

    aput-char v8, v6, v7

    .line 650
    goto :goto_1

    .line 652
    :pswitch_1
    move-object v6, v3

    move v7, v4

    add-int/lit8 v4, v4, 0x1

    move-object v8, v0

    move v9, v5

    aget-byte v8, v8, v9

    const/4 v9, 0x2

    shr-int/lit8 v8, v8, 0x2

    invoke-static {v8}, Ljavax/xml/bind/DatatypeConverterImpl;->encode(I)C

    move-result v8

    aput-char v8, v6, v7

    .line 653
    move-object v6, v3

    move v7, v4

    add-int/lit8 v4, v4, 0x1

    move-object v8, v0

    move v9, v5

    aget-byte v8, v8, v9

    const/4 v9, 0x3

    and-int/lit8 v8, v8, 0x3

    const/4 v9, 0x4

    shl-int/lit8 v8, v8, 0x4

    move-object v9, v0

    move v10, v5

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    aget-byte v9, v9, v10

    const/4 v10, 0x4

    shr-int/lit8 v9, v9, 0x4

    const/16 v10, 0xf

    and-int/lit8 v9, v9, 0xf

    or-int/2addr v8, v9

    invoke-static {v8}, Ljavax/xml/bind/DatatypeConverterImpl;->encode(I)C

    move-result v8

    aput-char v8, v6, v7

    .line 656
    move-object v6, v3

    move v7, v4

    add-int/lit8 v4, v4, 0x1

    move-object v8, v0

    move v9, v5

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    aget-byte v8, v8, v9

    const/16 v9, 0xf

    and-int/lit8 v8, v8, 0xf

    const/4 v9, 0x2

    shl-int/lit8 v8, v8, 0x2

    invoke-static {v8}, Ljavax/xml/bind/DatatypeConverterImpl;->encode(I)C

    move-result v8

    aput-char v8, v6, v7

    .line 657
    move-object v6, v3

    move v7, v4

    add-int/lit8 v4, v4, 0x1

    const/16 v8, 0x3d

    aput-char v8, v6, v7

    .line 658
    goto/16 :goto_1

    .line 671
    :cond_0
    move v6, v4

    move v0, v6

    .end local v0    # "input":[B
    return v0

    .line 644
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static _printBase64Binary([B)Ljava/lang/String;
    .locals 4

    .prologue
    .line 624
    move-object v0, p0

    .local v0, "input":[B
    move-object v1, v0

    const/4 v2, 0x0

    move-object v3, v0

    array-length v3, v3

    invoke-static {v1, v2, v3}, Ljavax/xml/bind/DatatypeConverterImpl;->_printBase64Binary([BII)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "input":[B
    return-object v0
.end method

.method public static _printBase64Binary([BII)Ljava/lang/String;
    .locals 11

    .prologue
    .line 627
    move-object v0, p0

    .local v0, "input":[B
    move v1, p1

    .local v1, "offset":I
    move v2, p2

    .local v2, "len":I
    move v5, v2

    const/4 v6, 0x2

    add-int/lit8 v5, v5, 0x2

    const/4 v6, 0x3

    div-int/lit8 v5, v5, 0x3

    const/4 v6, 0x4

    mul-int/lit8 v5, v5, 0x4

    new-array v5, v5, [C

    move-object v3, v5

    .line 628
    .local v3, "buf":[C
    move-object v5, v0

    move v6, v1

    move v7, v2

    move-object v8, v3

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Ljavax/xml/bind/DatatypeConverterImpl;->_printBase64Binary([BII[CI)I

    move-result v5

    move v4, v5

    .line 629
    .local v4, "ptr":I
    sget-boolean v5, Ljavax/xml/bind/DatatypeConverterImpl;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    move v5, v4

    move-object v6, v3

    array-length v6, v6

    if-eq v5, v6, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 630
    :cond_0
    new-instance v5, Ljava/lang/String;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v3

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([C)V

    move-object v0, v5

    .end local v0    # "input":[B
    return-object v0
.end method

.method public static _printBoolean(Z)Ljava/lang/String;
    .locals 2

    .prologue
    .line 235
    move v0, p0

    .local v0, "val":Z
    move v1, v0

    if-eqz v1, :cond_0

    const-string/jumbo v1, "true"

    :goto_0
    move-object v0, v1

    .end local v0    # "val":Z
    return-object v0

    .restart local v0    # "val":Z
    :cond_0
    const-string/jumbo v1, "false"

    goto :goto_0
.end method

.method public static _printByte(B)Ljava/lang/String;
    .locals 2

    .prologue
    .line 251
    move v0, p0

    .local v0, "val":B
    move v1, v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "val":B
    return-object v0
.end method

.method public static _printDateTime(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 319
    move-object v0, p0

    .local v0, "val":Ljava/util/Calendar;
    const-string/jumbo v1, "%Y-%M-%DT%h:%m:%s%z"

    move-object v2, v0

    invoke-static {v1, v2}, Ljavax/xml/bind/DatatypeConverterImpl$CalendarFormatter;->doFormat(Ljava/lang/String;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "val":Ljava/util/Calendar;
    return-object v0
.end method

.method public static _printDecimal(Ljava/math/BigDecimal;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 428
    move-object v0, p0

    .local v0, "val":Ljava/math/BigDecimal;
    move-object v1, v0

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "val":Ljava/math/BigDecimal;
    return-object v0
.end method

.method public static _printDouble(D)Ljava/lang/String;
    .locals 6

    .prologue
    .line 436
    move-wide v0, p0

    .local v0, "v":D
    move-wide v2, v0

    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    const-string/jumbo v2, "NaN"

    move-object v0, v2

    .line 439
    .end local v0    # "v":D
    :goto_0
    return-object v0

    .line 437
    .restart local v0    # "v":D
    :cond_0
    move-wide v2, v0

    const-wide/high16 v4, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v2, v2, v4

    if-nez v2, :cond_1

    const-string/jumbo v2, "INF"

    move-object v0, v2

    goto :goto_0

    .line 438
    :cond_1
    move-wide v2, v0

    const-wide/high16 v4, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v2, v2, v4

    if-nez v2, :cond_2

    const-string/jumbo v2, "-INF"

    move-object v0, v2

    goto :goto_0

    .line 439
    :cond_2
    move-wide v2, v0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public static _printFloat(F)Ljava/lang/String;
    .locals 3

    .prologue
    .line 183
    move v0, p0

    .local v0, "v":F
    move v1, v0

    const/high16 v2, 0x7fc00000    # Float.NaN

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    const-string/jumbo v1, "NaN"

    move-object v0, v1

    .line 186
    .end local v0    # "v":F
    :goto_0
    return-object v0

    .line 184
    .restart local v0    # "v":F
    :cond_0
    move v1, v0

    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    const-string/jumbo v1, "INF"

    move-object v0, v1

    goto :goto_0

    .line 185
    :cond_1
    move v1, v0

    const/high16 v2, -0x800000    # Float.NEGATIVE_INFINITY

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    const-string/jumbo v1, "-INF"

    move-object v0, v1

    goto :goto_0

    .line 186
    :cond_2
    move v1, v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public static _printInt(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 412
    move v0, p0

    .local v0, "val":I
    move v1, v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "val":I
    return-object v0
.end method

.method public static _printInteger(Ljava/math/BigInteger;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "val":Ljava/math/BigInteger;
    move-object v1, v0

    invoke-virtual {v1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "val":Ljava/math/BigInteger;
    return-object v0
.end method

.method public static _printLong(J)Ljava/lang/String;
    .locals 4

    .prologue
    .line 420
    move-wide v0, p0

    .local v0, "val":J
    move-wide v2, v0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "val":J
    return-object v0
.end method

.method public static _printQName(Ljavax/xml/namespace/QName;Ljavax/xml/namespace/NamespaceContext;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 449
    move-object v0, p0

    .local v0, "val":Ljavax/xml/namespace/QName;
    move-object v1, p1

    .local v1, "nsc":Ljavax/xml/namespace/NamespaceContext;
    move-object v5, v1

    move-object v6, v0

    invoke-virtual {v6}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljavax/xml/namespace/NamespaceContext;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 450
    .local v3, "prefix":Ljava/lang/String;
    move-object v5, v0

    invoke-virtual {v5}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 452
    .local v4, "localPart":Ljava/lang/String;
    move-object v5, v3

    if-eqz v5, :cond_0

    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 453
    :cond_0
    move-object v5, v4

    move-object v2, v5

    .line 458
    .local v2, "qname":Ljava/lang/String;
    :goto_0
    move-object v5, v2

    move-object v0, v5

    .end local v0    # "val":Ljavax/xml/namespace/QName;
    return-object v0

    .line 455
    .end local v2    # "qname":Ljava/lang/String;
    .restart local v0    # "val":Ljavax/xml/namespace/QName;
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .restart local v2    # "qname":Ljava/lang/String;
    goto :goto_0
.end method

.method public static _printShort(S)Ljava/lang/String;
    .locals 2

    .prologue
    .line 120
    move v0, p0

    .local v0, "val":S
    move v1, v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "val":S
    return-object v0
.end method

.method public static encode(I)C
    .locals 4

    .prologue
    .line 616
    move v0, p0

    .local v0, "i":I
    sget-object v1, Ljavax/xml/bind/DatatypeConverterImpl;->encodeMap:[C

    move v2, v0

    const/16 v3, 0x3f

    and-int/lit8 v2, v2, 0x3f

    aget-char v1, v1, v2

    move v0, v1

    .end local v0    # "i":I
    return v0
.end method

.method public static encodeByte(I)B
    .locals 4

    .prologue
    .line 620
    move v0, p0

    .local v0, "i":I
    sget-object v1, Ljavax/xml/bind/DatatypeConverterImpl;->encodeMap:[C

    move v2, v0

    const/16 v3, 0x3f

    and-int/lit8 v2, v2, 0x3f

    aget-char v1, v1, v2

    int-to-byte v1, v1

    move v0, v1

    .end local v0    # "i":I
    return v0
.end method

.method private static guessLength(Ljava/lang/String;)I
    .locals 7

    .prologue
    .line 529
    move-object v0, p0

    .local v0, "text":Ljava/lang/String;
    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    move v1, v4

    .line 532
    .local v1, "len":I
    move v4, v1

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move v2, v4

    .line 533
    .local v2, "j":I
    :goto_0
    move v4, v2

    if-ltz v4, :cond_1

    .line 534
    sget-object v4, Ljavax/xml/bind/DatatypeConverterImpl;->decodeMap:[B

    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aget-byte v4, v4, v5

    move v3, v4

    .line 535
    .local v3, "code":B
    move v4, v3

    const/16 v5, 0x7f

    if-ne v4, v5, :cond_0

    .line 536
    .line 533
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 537
    :cond_0
    move v4, v3

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 539
    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x4

    div-int/lit8 v4, v4, 0x4

    const/4 v5, 0x3

    mul-int/lit8 v4, v4, 0x3

    move v0, v4

    .line 550
    .end local v0    # "text":Ljava/lang/String;
    .end local v3    # "code":B
    :goto_1
    return v0

    .line 543
    .restart local v0    # "text":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 544
    move v4, v1

    move v5, v2

    sub-int/2addr v4, v5

    move v3, v4

    .line 545
    .local v3, "padSize":I
    move v4, v3

    const/4 v5, 0x2

    if-le v4, v5, :cond_2

    .line 546
    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x4

    div-int/lit8 v4, v4, 0x4

    const/4 v5, 0x3

    mul-int/lit8 v4, v4, 0x3

    move v0, v4

    goto :goto_1

    .line 550
    :cond_2
    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x4

    div-int/lit8 v4, v4, 0x4

    const/4 v5, 0x3

    mul-int/lit8 v4, v4, 0x3

    move v5, v3

    sub-int/2addr v4, v5

    move v0, v4

    goto :goto_1
.end method

.method private static hexToBin(C)I
    .locals 3

    .prologue
    .line 349
    move v0, p0

    .local v0, "ch":C
    const/16 v1, 0x30

    move v2, v0

    if-gt v1, v2, :cond_0

    move v1, v0

    const/16 v2, 0x39

    if-gt v1, v2, :cond_0

    move v1, v0

    const/16 v2, 0x30

    add-int/lit8 v1, v1, -0x30

    move v0, v1

    .line 352
    .end local v0    # "ch":C
    :goto_0
    return v0

    .line 350
    .restart local v0    # "ch":C
    :cond_0
    const/16 v1, 0x41

    move v2, v0

    if-gt v1, v2, :cond_1

    move v1, v0

    const/16 v2, 0x46

    if-gt v1, v2, :cond_1

    move v1, v0

    const/16 v2, 0x41

    add-int/lit8 v1, v1, -0x41

    const/16 v2, 0xa

    add-int/lit8 v1, v1, 0xa

    move v0, v1

    goto :goto_0

    .line 351
    :cond_1
    const/16 v1, 0x61

    move v2, v0

    if-gt v1, v2, :cond_2

    move v1, v0

    const/16 v2, 0x66

    if-gt v1, v2, :cond_2

    move v1, v0

    const/16 v2, 0x61

    add-int/lit8 v1, v1, -0x61

    const/16 v2, 0xa

    add-int/lit8 v1, v1, 0xa

    move v0, v1

    goto :goto_0

    .line 352
    :cond_2
    const/4 v1, -0x1

    move v0, v1

    goto :goto_0
.end method

.method private static initDecodeMap()[B
    .locals 6

    .prologue
    .line 494
    const/16 v2, 0x80

    new-array v2, v2, [B

    move-object v0, v2

    .line 496
    .local v0, "map":[B
    const/4 v2, 0x0

    move v1, v2

    .local v1, "i":I
    :goto_0
    move v2, v1

    const/16 v3, 0x80

    if-ge v2, v3, :cond_0

    move-object v2, v0

    move v3, v1

    const/4 v4, -0x1

    aput-byte v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 498
    :cond_0
    const/16 v2, 0x41

    move v1, v2

    :goto_1
    move v2, v1

    const/16 v3, 0x5a

    if-gt v2, v3, :cond_1

    move-object v2, v0

    move v3, v1

    move v4, v1

    const/16 v5, 0x41

    add-int/lit8 v4, v4, -0x41

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 499
    :cond_1
    const/16 v2, 0x61

    move v1, v2

    :goto_2
    move v2, v1

    const/16 v3, 0x7a

    if-gt v2, v3, :cond_2

    move-object v2, v0

    move v3, v1

    move v4, v1

    const/16 v5, 0x61

    add-int/lit8 v4, v4, -0x61

    const/16 v5, 0x1a

    add-int/lit8 v4, v4, 0x1a

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 500
    :cond_2
    const/16 v2, 0x30

    move v1, v2

    :goto_3
    move v2, v1

    const/16 v3, 0x39

    if-gt v2, v3, :cond_3

    move-object v2, v0

    move v3, v1

    move v4, v1

    const/16 v5, 0x30

    add-int/lit8 v4, v4, -0x30

    const/16 v5, 0x34

    add-int/lit8 v4, v4, 0x34

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 501
    :cond_3
    move-object v2, v0

    const/16 v3, 0x2b

    const/16 v4, 0x3e

    aput-byte v4, v2, v3

    .line 502
    move-object v2, v0

    const/16 v3, 0x2f

    const/16 v4, 0x3f

    aput-byte v4, v2, v3

    .line 503
    move-object v2, v0

    const/16 v3, 0x3d

    const/16 v4, 0x7f

    aput-byte v4, v2, v3

    .line 505
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "map":[B
    return-object v0
.end method

.method private static initEncodeMap()[C
    .locals 7

    .prologue
    .line 604
    const/16 v2, 0x40

    new-array v2, v2, [C

    move-object v0, v2

    .line 606
    .local v0, "map":[C
    const/4 v2, 0x0

    move v1, v2

    .local v1, "i":I
    :goto_0
    move v2, v1

    const/16 v3, 0x1a

    if-ge v2, v3, :cond_0

    move-object v2, v0

    move v3, v1

    const/16 v4, 0x41

    move v5, v1

    add-int/2addr v4, v5

    int-to-char v4, v4

    aput-char v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 607
    :cond_0
    const/16 v2, 0x1a

    move v1, v2

    :goto_1
    move v2, v1

    const/16 v3, 0x34

    if-ge v2, v3, :cond_1

    move-object v2, v0

    move v3, v1

    const/16 v4, 0x61

    move v5, v1

    const/16 v6, 0x1a

    add-int/lit8 v5, v5, -0x1a

    add-int/2addr v4, v5

    int-to-char v4, v4

    aput-char v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 608
    :cond_1
    const/16 v2, 0x34

    move v1, v2

    :goto_2
    move v2, v1

    const/16 v3, 0x3e

    if-ge v2, v3, :cond_2

    move-object v2, v0

    move v3, v1

    const/16 v4, 0x30

    move v5, v1

    const/16 v6, 0x34

    add-int/lit8 v5, v5, -0x34

    add-int/2addr v4, v5

    int-to-char v4, v4

    aput-char v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 609
    :cond_2
    move-object v2, v0

    const/16 v3, 0x3e

    const/16 v4, 0x2b

    aput-char v4, v2, v3

    .line 610
    move-object v2, v0

    const/16 v3, 0x3f

    const/16 v4, 0x2f

    aput-char v4, v2, v3

    .line 612
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "map":[C
    return-object v0
.end method

.method public static installHook(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 480
    move-object v0, p0

    .local v0, "s":Ljava/lang/String;
    sget-object v1, Ljavax/xml/bind/DatatypeConverterImpl;->theInstance:Ljavax/xml/bind/DatatypeConverterInterface;

    invoke-static {v1}, Ljavax/xml/bind/DatatypeConverter;->setDatatypeConverter(Ljavax/xml/bind/DatatypeConverterInterface;)V

    .line 481
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "s":Ljava/lang/String;
    return-object v0
.end method

.method private static isDigitOrPeriodOrSign(C)Z
    .locals 3

    .prologue
    .line 733
    move v0, p0

    .local v0, "ch":C
    const/16 v1, 0x30

    move v2, v0

    if-gt v1, v2, :cond_0

    move v1, v0

    const/16 v2, 0x39

    if-gt v1, v2, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .line 735
    .end local v0    # "ch":C
    :goto_0
    return v0

    .line 734
    .restart local v0    # "ch":C
    :cond_0
    move v1, v0

    const/16 v2, 0x2b

    if-eq v1, v2, :cond_1

    move v1, v0

    const/16 v2, 0x2d

    if-eq v1, v2, :cond_1

    move v1, v0

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0

    .line 735
    :cond_2
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method private static removeOptionalPlus(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 7

    .prologue
    .line 720
    move-object v0, p0

    .local v0, "s":Ljava/lang/CharSequence;
    move-object v3, v0

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move v1, v3

    .line 722
    .local v1, "len":I
    move v3, v1

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    move-object v3, v0

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x2b

    if-eq v3, v4, :cond_1

    :cond_0
    move-object v3, v0

    move-object v0, v3

    .line 727
    .end local v0    # "s":Ljava/lang/CharSequence;
    :goto_0
    return-object v0

    .line 724
    .restart local v0    # "s":Ljava/lang/CharSequence;
    :cond_1
    move-object v3, v0

    const/4 v4, 0x1

    move v5, v1

    invoke-interface {v3, v4, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    move-object v0, v3

    .line 725
    move-object v3, v0

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    move v2, v3

    .line 726
    .local v2, "ch":C
    const/16 v3, 0x30

    move v4, v2

    if-gt v3, v4, :cond_2

    move v3, v2

    const/16 v4, 0x39

    if-gt v3, v4, :cond_2

    move-object v3, v0

    move-object v0, v3

    goto :goto_0

    .line 727
    :cond_2
    const/16 v3, 0x2e

    move v4, v2

    if-ne v3, v4, :cond_3

    move-object v3, v0

    move-object v0, v3

    goto :goto_0

    .line 729
    :cond_3
    new-instance v3, Ljava/lang/NumberFormatException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/NumberFormatException;-><init>()V

    throw v3
.end method


# virtual methods
.method public parseAnySimpleType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 397
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/DatatypeConverterImpl;
    move-object v1, p1

    .local v1, "lexicalXSDAnySimpleType":Ljava/lang/String;
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavax/xml/bind/DatatypeConverterImpl;
    return-object v0
.end method

.method public parseBase64Binary(Ljava/lang/String;)[B
    .locals 3

    .prologue
    .line 323
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/DatatypeConverterImpl;
    move-object v1, p1

    .local v1, "lexicalXSDBase64Binary":Ljava/lang/String;
    move-object v2, v1

    invoke-static {v2}, Ljavax/xml/bind/DatatypeConverterImpl;->_parseBase64Binary(Ljava/lang/String;)[B

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavax/xml/bind/DatatypeConverterImpl;
    return-object v0
.end method

.method public parseBoolean(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 213
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/DatatypeConverterImpl;
    move-object v1, p1

    .local v1, "lexicalXSDBoolean":Ljava/lang/String;
    move-object v2, v1

    invoke-static {v2}, Ljavax/xml/bind/DatatypeConverterImpl;->_parseBoolean(Ljava/lang/CharSequence;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljavax/xml/bind/DatatypeConverterImpl;
    return v0
.end method

.method public parseByte(Ljava/lang/String;)B
    .locals 3

    .prologue
    .line 239
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/DatatypeConverterImpl;
    move-object v1, p1

    .local v1, "lexicalXSDByte":Ljava/lang/String;
    move-object v2, v1

    invoke-static {v2}, Ljavax/xml/bind/DatatypeConverterImpl;->_parseByte(Ljava/lang/CharSequence;)B

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljavax/xml/bind/DatatypeConverterImpl;
    return v0
.end method

.method public parseDate(Ljava/lang/String;)Ljava/util/Calendar;
    .locals 4

    .prologue
    .line 388
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/DatatypeConverterImpl;
    move-object v1, p1

    .local v1, "lexicalXSDDate":Ljava/lang/String;
    sget-object v2, Ljavax/xml/bind/DatatypeConverterImpl;->datatypeFactory:Ljavax/xml/datatype/DatatypeFactory;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavax/xml/datatype/DatatypeFactory;->newXMLGregorianCalendar(Ljava/lang/String;)Ljavax/xml/datatype/XMLGregorianCalendar;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/datatype/XMLGregorianCalendar;->toGregorianCalendar()Ljava/util/GregorianCalendar;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavax/xml/bind/DatatypeConverterImpl;
    return-object v0
.end method

.method public parseDateTime(Ljava/lang/String;)Ljava/util/Calendar;
    .locals 3

    .prologue
    .line 306
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/DatatypeConverterImpl;
    move-object v1, p1

    .local v1, "lexicalXSDDateTime":Ljava/lang/String;
    move-object v2, v1

    invoke-static {v2}, Ljavax/xml/bind/DatatypeConverterImpl;->_parseDateTime(Ljava/lang/CharSequence;)Ljava/util/GregorianCalendar;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavax/xml/bind/DatatypeConverterImpl;
    return-object v0
.end method

.method public parseDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;
    .locals 3

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/DatatypeConverterImpl;
    move-object v1, p1

    .local v1, "content":Ljava/lang/String;
    move-object v2, v1

    invoke-static {v2}, Ljavax/xml/bind/DatatypeConverterImpl;->_parseDecimal(Ljava/lang/CharSequence;)Ljava/math/BigDecimal;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavax/xml/bind/DatatypeConverterImpl;
    return-object v0
.end method

.method public parseDouble(Ljava/lang/String;)D
    .locals 4

    .prologue
    .line 192
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/DatatypeConverterImpl;
    move-object v1, p1

    .local v1, "lexicalXSDDouble":Ljava/lang/String;
    move-object v2, v1

    invoke-static {v2}, Ljavax/xml/bind/DatatypeConverterImpl;->_parseDouble(Ljava/lang/CharSequence;)D

    move-result-wide v2

    move-wide v0, v2

    .end local v0    # "this":Ljavax/xml/bind/DatatypeConverterImpl;
    return-wide v0
.end method

.method public parseFloat(Ljava/lang/String;)F
    .locals 3

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/DatatypeConverterImpl;
    move-object v1, p1

    .local v1, "lexicalXSDFloat":Ljava/lang/String;
    move-object v2, v1

    invoke-static {v2}, Ljavax/xml/bind/DatatypeConverterImpl;->_parseFloat(Ljava/lang/CharSequence;)F

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljavax/xml/bind/DatatypeConverterImpl;
    return v0
.end method

.method public parseHexBinary(Ljava/lang/String;)[B
    .locals 12

    .prologue
    .line 328
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/DatatypeConverterImpl;
    move-object v1, p1

    .local v1, "s":Ljava/lang/String;
    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    move v2, v7

    .line 331
    .local v2, "len":I
    move v7, v2

    const/4 v8, 0x2

    rem-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_0

    .line 332
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "hexBinary needs to be even-length: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 334
    :cond_0
    move v7, v2

    const/4 v8, 0x2

    div-int/lit8 v7, v7, 0x2

    new-array v7, v7, [B

    move-object v3, v7

    .line 336
    .local v3, "out":[B
    const/4 v7, 0x0

    move v4, v7

    .local v4, "i":I
    :goto_0
    move v7, v4

    move v8, v2

    if-ge v7, v8, :cond_3

    .line 337
    move-object v7, v1

    move v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljavax/xml/bind/DatatypeConverterImpl;->hexToBin(C)I

    move-result v7

    move v5, v7

    .line 338
    .local v5, "h":I
    move-object v7, v1

    move v8, v4

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljavax/xml/bind/DatatypeConverterImpl;->hexToBin(C)I

    move-result v7

    move v6, v7

    .line 339
    .local v6, "l":I
    move v7, v5

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    move v7, v6

    const/4 v8, -0x1

    if-ne v7, v8, :cond_2

    .line 340
    :cond_1
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "contains illegal character for hexBinary: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 342
    :cond_2
    move-object v7, v3

    move v8, v4

    const/4 v9, 0x2

    div-int/lit8 v8, v8, 0x2

    move v9, v5

    const/16 v10, 0x10

    mul-int/lit8 v9, v9, 0x10

    move v10, v6

    add-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    .line 336
    add-int/lit8 v4, v4, 0x2

    goto :goto_0

    .line 345
    .end local v5    # "h":I
    .end local v6    # "l":I
    :cond_3
    move-object v7, v3

    move-object v0, v7

    .end local v0    # "this":Ljavax/xml/bind/DatatypeConverterImpl;
    return-object v0
.end method

.method public parseInt(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/DatatypeConverterImpl;
    move-object v1, p1

    .local v1, "s":Ljava/lang/String;
    move-object v2, v1

    invoke-static {v2}, Ljavax/xml/bind/DatatypeConverterImpl;->_parseInt(Ljava/lang/CharSequence;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljavax/xml/bind/DatatypeConverterImpl;
    return v0
.end method

.method public parseInteger(Ljava/lang/String;)Ljava/math/BigInteger;
    .locals 3

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/DatatypeConverterImpl;
    move-object v1, p1

    .local v1, "lexicalXSDInteger":Ljava/lang/String;
    move-object v2, v1

    invoke-static {v2}, Ljavax/xml/bind/DatatypeConverterImpl;->_parseInteger(Ljava/lang/CharSequence;)Ljava/math/BigInteger;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavax/xml/bind/DatatypeConverterImpl;
    return-object v0
.end method

.method public parseLong(Ljava/lang/String;)J
    .locals 4

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/DatatypeConverterImpl;
    move-object v1, p1

    .local v1, "lexicalXSLong":Ljava/lang/String;
    move-object v2, v1

    invoke-static {v2}, Ljavax/xml/bind/DatatypeConverterImpl;->_parseLong(Ljava/lang/CharSequence;)J

    move-result-wide v2

    move-wide v0, v2

    .end local v0    # "this":Ljavax/xml/bind/DatatypeConverterImpl;
    return-wide v0
.end method

.method public parseQName(Ljava/lang/String;Ljavax/xml/namespace/NamespaceContext;)Ljavax/xml/namespace/QName;
    .locals 5

    .prologue
    .line 255
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/DatatypeConverterImpl;
    move-object v1, p1

    .local v1, "lexicalXSDQName":Ljava/lang/String;
    move-object v2, p2

    .local v2, "nsc":Ljavax/xml/namespace/NamespaceContext;
    move-object v3, v1

    move-object v4, v2

    invoke-static {v3, v4}, Ljavax/xml/bind/DatatypeConverterImpl;->_parseQName(Ljava/lang/CharSequence;Ljavax/xml/namespace/NamespaceContext;)Ljavax/xml/namespace/QName;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavax/xml/bind/DatatypeConverterImpl;
    return-object v0
.end method

.method public parseShort(Ljava/lang/String;)S
    .locals 3

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/DatatypeConverterImpl;
    move-object v1, p1

    .local v1, "lexicalXSDShort":Ljava/lang/String;
    move-object v2, v1

    invoke-static {v2}, Ljavax/xml/bind/DatatypeConverterImpl;->_parseShort(Ljava/lang/CharSequence;)S

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljavax/xml/bind/DatatypeConverterImpl;
    return v0
.end method

.method public parseString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/DatatypeConverterImpl;
    move-object v1, p1

    .local v1, "lexicalXSDString":Ljava/lang/String;
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavax/xml/bind/DatatypeConverterImpl;
    return-object v0
.end method

.method public parseTime(Ljava/lang/String;)Ljava/util/Calendar;
    .locals 4

    .prologue
    .line 380
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/DatatypeConverterImpl;
    move-object v1, p1

    .local v1, "lexicalXSDTime":Ljava/lang/String;
    sget-object v2, Ljavax/xml/bind/DatatypeConverterImpl;->datatypeFactory:Ljavax/xml/datatype/DatatypeFactory;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavax/xml/datatype/DatatypeFactory;->newXMLGregorianCalendar(Ljava/lang/String;)Ljavax/xml/datatype/XMLGregorianCalendar;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/datatype/XMLGregorianCalendar;->toGregorianCalendar()Ljava/util/GregorianCalendar;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavax/xml/bind/DatatypeConverterImpl;
    return-object v0
.end method

.method public parseUnsignedInt(Ljava/lang/String;)J
    .locals 4

    .prologue
    .line 368
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/DatatypeConverterImpl;
    move-object v1, p1

    .local v1, "lexicalXSDUnsignedInt":Ljava/lang/String;
    move-object v2, v1

    invoke-static {v2}, Ljavax/xml/bind/DatatypeConverterImpl;->_parseLong(Ljava/lang/CharSequence;)J

    move-result-wide v2

    move-wide v0, v2

    .end local v0    # "this":Ljavax/xml/bind/DatatypeConverterImpl;
    return-wide v0
.end method

.method public parseUnsignedShort(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 376
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/DatatypeConverterImpl;
    move-object v1, p1

    .local v1, "lexicalXSDUnsignedShort":Ljava/lang/String;
    move-object v2, v1

    invoke-static {v2}, Ljavax/xml/bind/DatatypeConverterImpl;->_parseInt(Ljava/lang/CharSequence;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljavax/xml/bind/DatatypeConverterImpl;
    return v0
.end method

.method public printAnySimpleType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 470
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/DatatypeConverterImpl;
    move-object v1, p1

    .local v1, "val":Ljava/lang/String;
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavax/xml/bind/DatatypeConverterImpl;
    return-object v0
.end method

.method public printBase64Binary([B)Ljava/lang/String;
    .locals 3

    .prologue
    .line 462
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/DatatypeConverterImpl;
    move-object v1, p1

    .local v1, "val":[B
    move-object v2, v1

    invoke-static {v2}, Ljavax/xml/bind/DatatypeConverterImpl;->_printBase64Binary([B)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavax/xml/bind/DatatypeConverterImpl;
    return-object v0
.end method

.method public printBoolean(Z)Ljava/lang/String;
    .locals 3

    .prologue
    .line 232
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/DatatypeConverterImpl;
    move v1, p1

    .local v1, "val":Z
    move v2, v1

    if-eqz v2, :cond_0

    const-string/jumbo v2, "true"

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Ljavax/xml/bind/DatatypeConverterImpl;
    return-object v0

    .restart local v0    # "this":Ljavax/xml/bind/DatatypeConverterImpl;
    :cond_0
    const-string/jumbo v2, "false"

    goto :goto_0
.end method

.method public printByte(B)Ljava/lang/String;
    .locals 3

    .prologue
    .line 247
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/DatatypeConverterImpl;
    move v1, p1

    .local v1, "val":B
    move v2, v1

    invoke-static {v2}, Ljavax/xml/bind/DatatypeConverterImpl;->_printByte(B)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavax/xml/bind/DatatypeConverterImpl;
    return-object v0
.end method

.method public printDate(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 393
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/DatatypeConverterImpl;
    move-object v1, p1

    .local v1, "val":Ljava/util/Calendar;
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "%Y-%M-%D"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "%z"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v1

    invoke-static {v2, v3}, Ljavax/xml/bind/DatatypeConverterImpl$CalendarFormatter;->doFormat(Ljava/lang/String;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavax/xml/bind/DatatypeConverterImpl;
    return-object v0
.end method

.method public printDateTime(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 315
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/DatatypeConverterImpl;
    move-object v1, p1

    .local v1, "val":Ljava/util/Calendar;
    move-object v2, v1

    invoke-static {v2}, Ljavax/xml/bind/DatatypeConverterImpl;->_printDateTime(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavax/xml/bind/DatatypeConverterImpl;
    return-object v0
.end method

.method public printDecimal(Ljava/math/BigDecimal;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 424
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/DatatypeConverterImpl;
    move-object v1, p1

    .local v1, "val":Ljava/math/BigDecimal;
    move-object v2, v1

    invoke-static {v2}, Ljavax/xml/bind/DatatypeConverterImpl;->_printDecimal(Ljava/math/BigDecimal;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavax/xml/bind/DatatypeConverterImpl;
    return-object v0
.end method

.method public printDouble(D)Ljava/lang/String;
    .locals 7

    .prologue
    .line 432
    move-object v1, p0

    .local v1, "this":Ljavax/xml/bind/DatatypeConverterImpl;
    move-wide v2, p1

    .local v2, "v":D
    move-wide v4, v2

    invoke-static {v4, v5}, Ljavax/xml/bind/DatatypeConverterImpl;->_printDouble(D)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .end local v1    # "this":Ljavax/xml/bind/DatatypeConverterImpl;
    return-object v1
.end method

.method public printFloat(F)Ljava/lang/String;
    .locals 3

    .prologue
    .line 179
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/DatatypeConverterImpl;
    move v1, p1

    .local v1, "v":F
    move v2, v1

    invoke-static {v2}, Ljavax/xml/bind/DatatypeConverterImpl;->_printFloat(F)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavax/xml/bind/DatatypeConverterImpl;
    return-object v0
.end method

.method public printHexBinary([B)Ljava/lang/String;
    .locals 12

    .prologue
    .line 358
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/DatatypeConverterImpl;
    move-object v1, p1

    .local v1, "data":[B
    new-instance v7, Ljava/lang/StringBuilder;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v1

    array-length v9, v9

    const/4 v10, 0x2

    mul-int/lit8 v9, v9, 0x2

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v2, v7

    .line 359
    .local v2, "r":Ljava/lang/StringBuilder;
    move-object v7, v1

    move-object v3, v7

    .local v3, "arr$":[B
    move-object v7, v3

    array-length v7, v7

    move v4, v7

    .local v4, "len$":I
    const/4 v7, 0x0

    move v5, v7

    .local v5, "i$":I
    :goto_0
    move v7, v5

    move v8, v4

    if-ge v7, v8, :cond_0

    move-object v7, v3

    move v8, v5

    aget-byte v7, v7, v8

    move v6, v7

    .line 360
    .local v6, "b":B
    move-object v7, v2

    sget-object v8, Ljavax/xml/bind/DatatypeConverterImpl;->hexCode:[C

    move v9, v6

    const/4 v10, 0x4

    shr-int/lit8 v9, v9, 0x4

    const/16 v10, 0xf

    and-int/lit8 v9, v9, 0xf

    aget-char v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 361
    move-object v7, v2

    sget-object v8, Ljavax/xml/bind/DatatypeConverterImpl;->hexCode:[C

    move v9, v6

    const/16 v10, 0xf

    and-int/lit8 v9, v9, 0xf

    aget-char v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 359
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 363
    .end local v6    # "b":B
    :cond_0
    move-object v7, v2

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    .end local v0    # "this":Ljavax/xml/bind/DatatypeConverterImpl;
    return-object v0
.end method

.method public printInt(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 408
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/DatatypeConverterImpl;
    move v1, p1

    .local v1, "val":I
    move v2, v1

    invoke-static {v2}, Ljavax/xml/bind/DatatypeConverterImpl;->_printInt(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavax/xml/bind/DatatypeConverterImpl;
    return-object v0
.end method

.method public printInteger(Ljava/math/BigInteger;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/DatatypeConverterImpl;
    move-object v1, p1

    .local v1, "val":Ljava/math/BigInteger;
    move-object v2, v1

    invoke-static {v2}, Ljavax/xml/bind/DatatypeConverterImpl;->_printInteger(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavax/xml/bind/DatatypeConverterImpl;
    return-object v0
.end method

.method public printLong(J)Ljava/lang/String;
    .locals 7

    .prologue
    .line 416
    move-object v1, p0

    .local v1, "this":Ljavax/xml/bind/DatatypeConverterImpl;
    move-wide v2, p1

    .local v2, "val":J
    move-wide v4, v2

    invoke-static {v4, v5}, Ljavax/xml/bind/DatatypeConverterImpl;->_printLong(J)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .end local v1    # "this":Ljavax/xml/bind/DatatypeConverterImpl;
    return-object v1
.end method

.method public printQName(Ljavax/xml/namespace/QName;Ljavax/xml/namespace/NamespaceContext;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 443
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/DatatypeConverterImpl;
    move-object v1, p1

    .local v1, "val":Ljavax/xml/namespace/QName;
    move-object v2, p2

    .local v2, "nsc":Ljavax/xml/namespace/NamespaceContext;
    move-object v3, v1

    move-object v4, v2

    invoke-static {v3, v4}, Ljavax/xml/bind/DatatypeConverterImpl;->_printQName(Ljavax/xml/namespace/QName;Ljavax/xml/namespace/NamespaceContext;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavax/xml/bind/DatatypeConverterImpl;
    return-object v0
.end method

.method public printShort(S)Ljava/lang/String;
    .locals 3

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/DatatypeConverterImpl;
    move v1, p1

    .local v1, "val":S
    move v2, v1

    invoke-static {v2}, Ljavax/xml/bind/DatatypeConverterImpl;->_printShort(S)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavax/xml/bind/DatatypeConverterImpl;
    return-object v0
.end method

.method public printString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 403
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/DatatypeConverterImpl;
    move-object v1, p1

    .local v1, "val":Ljava/lang/String;
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavax/xml/bind/DatatypeConverterImpl;
    return-object v0
.end method

.method public printTime(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 384
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/DatatypeConverterImpl;
    move-object v1, p1

    .local v1, "val":Ljava/util/Calendar;
    const-string/jumbo v2, "%h:%m:%s%z"

    move-object v3, v1

    invoke-static {v2, v3}, Ljavax/xml/bind/DatatypeConverterImpl$CalendarFormatter;->doFormat(Ljava/lang/String;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavax/xml/bind/DatatypeConverterImpl;
    return-object v0
.end method

.method public printUnsignedInt(J)Ljava/lang/String;
    .locals 7

    .prologue
    .line 372
    move-object v1, p0

    .local v1, "this":Ljavax/xml/bind/DatatypeConverterImpl;
    move-wide v2, p1

    .local v2, "val":J
    move-wide v4, v2

    invoke-static {v4, v5}, Ljavax/xml/bind/DatatypeConverterImpl;->_printLong(J)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .end local v1    # "this":Ljavax/xml/bind/DatatypeConverterImpl;
    return-object v1
.end method

.method public printUnsignedShort(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 466
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/DatatypeConverterImpl;
    move v1, p1

    .local v1, "val":I
    move v2, v1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavax/xml/bind/DatatypeConverterImpl;
    return-object v0
.end method
