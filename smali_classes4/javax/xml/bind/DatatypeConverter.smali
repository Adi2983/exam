.class public final Ljavax/xml/bind/DatatypeConverter;
.super Ljava/lang/Object;
.source "DatatypeConverter.java"


# static fields
.field private static theConverter:Ljavax/xml/bind/DatatypeConverterInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 78
    new-instance v0, Ljavax/xml/bind/DatatypeConverterImpl;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavax/xml/bind/DatatypeConverterImpl;-><init>()V

    sput-object v0, Ljavax/xml/bind/DatatypeConverter;->theConverter:Ljavax/xml/bind/DatatypeConverterInterface;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/DatatypeConverter;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 82
    return-void
.end method

.method public static parseAnySimpleType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 380
    move-object v0, p0

    .local v0, "lexicalXSDAnySimpleType":Ljava/lang/String;
    sget-object v1, Ljavax/xml/bind/DatatypeConverter;->theConverter:Ljavax/xml/bind/DatatypeConverterInterface;

    move-object v2, v0

    invoke-interface {v1, v2}, Ljavax/xml/bind/DatatypeConverterInterface;->parseAnySimpleType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "lexicalXSDAnySimpleType":Ljava/lang/String;
    return-object v0
.end method

.method public static parseBase64Binary(Ljava/lang/String;)[B
    .locals 3

    .prologue
    .line 296
    move-object v0, p0

    .local v0, "lexicalXSDBase64Binary":Ljava/lang/String;
    sget-object v1, Ljavax/xml/bind/DatatypeConverter;->theConverter:Ljavax/xml/bind/DatatypeConverterInterface;

    move-object v2, v0

    invoke-interface {v1, v2}, Ljavax/xml/bind/DatatypeConverterInterface;->parseBase64Binary(Ljava/lang/String;)[B

    move-result-object v1

    move-object v0, v1

    .end local v0    # "lexicalXSDBase64Binary":Ljava/lang/String;
    return-object v0
.end method

.method public static parseBoolean(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 232
    move-object v0, p0

    .local v0, "lexicalXSDBoolean":Ljava/lang/String;
    sget-object v1, Ljavax/xml/bind/DatatypeConverter;->theConverter:Ljavax/xml/bind/DatatypeConverterInterface;

    move-object v2, v0

    invoke-interface {v1, v2}, Ljavax/xml/bind/DatatypeConverterInterface;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    move v0, v1

    .end local v0    # "lexicalXSDBoolean":Ljava/lang/String;
    return v0
.end method

.method public static parseByte(Ljava/lang/String;)B
    .locals 3

    .prologue
    .line 246
    move-object v0, p0

    .local v0, "lexicalXSDByte":Ljava/lang/String;
    sget-object v1, Ljavax/xml/bind/DatatypeConverter;->theConverter:Ljavax/xml/bind/DatatypeConverterInterface;

    move-object v2, v0

    invoke-interface {v1, v2}, Ljavax/xml/bind/DatatypeConverterInterface;->parseByte(Ljava/lang/String;)B

    move-result v1

    move v0, v1

    .end local v0    # "lexicalXSDByte":Ljava/lang/String;
    return v0
.end method

.method public static parseDate(Ljava/lang/String;)Ljava/util/Calendar;
    .locals 3

    .prologue
    .line 365
    move-object v0, p0

    .local v0, "lexicalXSDDate":Ljava/lang/String;
    sget-object v1, Ljavax/xml/bind/DatatypeConverter;->theConverter:Ljavax/xml/bind/DatatypeConverterInterface;

    move-object v2, v0

    invoke-interface {v1, v2}, Ljavax/xml/bind/DatatypeConverterInterface;->parseDate(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "lexicalXSDDate":Ljava/lang/String;
    return-object v0
.end method

.method public static parseDateTime(Ljava/lang/String;)Ljava/util/Calendar;
    .locals 3

    .prologue
    .line 282
    move-object v0, p0

    .local v0, "lexicalXSDDateTime":Ljava/lang/String;
    sget-object v1, Ljavax/xml/bind/DatatypeConverter;->theConverter:Ljavax/xml/bind/DatatypeConverterInterface;

    move-object v2, v0

    invoke-interface {v1, v2}, Ljavax/xml/bind/DatatypeConverterInterface;->parseDateTime(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "lexicalXSDDateTime":Ljava/lang/String;
    return-object v0
.end method

.method public static parseDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;
    .locals 3

    .prologue
    .line 190
    move-object v0, p0

    .local v0, "lexicalXSDDecimal":Ljava/lang/String;
    sget-object v1, Ljavax/xml/bind/DatatypeConverter;->theConverter:Ljavax/xml/bind/DatatypeConverterInterface;

    move-object v2, v0

    invoke-interface {v1, v2}, Ljavax/xml/bind/DatatypeConverterInterface;->parseDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "lexicalXSDDecimal":Ljava/lang/String;
    return-object v0
.end method

.method public static parseDouble(Ljava/lang/String;)D
    .locals 3

    .prologue
    .line 218
    move-object v0, p0

    .local v0, "lexicalXSDDouble":Ljava/lang/String;
    sget-object v1, Ljavax/xml/bind/DatatypeConverter;->theConverter:Ljavax/xml/bind/DatatypeConverterInterface;

    move-object v2, v0

    invoke-interface {v1, v2}, Ljavax/xml/bind/DatatypeConverterInterface;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "lexicalXSDDouble":Ljava/lang/String;
    return-wide v0
.end method

.method public static parseFloat(Ljava/lang/String;)F
    .locals 3

    .prologue
    .line 204
    move-object v0, p0

    .local v0, "lexicalXSDFloat":Ljava/lang/String;
    sget-object v1, Ljavax/xml/bind/DatatypeConverter;->theConverter:Ljavax/xml/bind/DatatypeConverterInterface;

    move-object v2, v0

    invoke-interface {v1, v2}, Ljavax/xml/bind/DatatypeConverterInterface;->parseFloat(Ljava/lang/String;)F

    move-result v1

    move v0, v1

    .end local v0    # "lexicalXSDFloat":Ljava/lang/String;
    return v0
.end method

.method public static parseHexBinary(Ljava/lang/String;)[B
    .locals 3

    .prologue
    .line 310
    move-object v0, p0

    .local v0, "lexicalXSDHexBinary":Ljava/lang/String;
    sget-object v1, Ljavax/xml/bind/DatatypeConverter;->theConverter:Ljavax/xml/bind/DatatypeConverterInterface;

    move-object v2, v0

    invoke-interface {v1, v2}, Ljavax/xml/bind/DatatypeConverterInterface;->parseHexBinary(Ljava/lang/String;)[B

    move-result-object v1

    move-object v0, v1

    .end local v0    # "lexicalXSDHexBinary":Ljava/lang/String;
    return-object v0
.end method

.method public static parseInt(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 148
    move-object v0, p0

    .local v0, "lexicalXSDInt":Ljava/lang/String;
    sget-object v1, Ljavax/xml/bind/DatatypeConverter;->theConverter:Ljavax/xml/bind/DatatypeConverterInterface;

    move-object v2, v0

    invoke-interface {v1, v2}, Ljavax/xml/bind/DatatypeConverterInterface;->parseInt(Ljava/lang/String;)I

    move-result v1

    move v0, v1

    .end local v0    # "lexicalXSDInt":Ljava/lang/String;
    return v0
.end method

.method public static parseInteger(Ljava/lang/String;)Ljava/math/BigInteger;
    .locals 3

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "lexicalXSDInteger":Ljava/lang/String;
    sget-object v1, Ljavax/xml/bind/DatatypeConverter;->theConverter:Ljavax/xml/bind/DatatypeConverterInterface;

    move-object v2, v0

    invoke-interface {v1, v2}, Ljavax/xml/bind/DatatypeConverterInterface;->parseInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "lexicalXSDInteger":Ljava/lang/String;
    return-object v0
.end method

.method public static parseLong(Ljava/lang/String;)J
    .locals 3

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "lexicalXSDLong":Ljava/lang/String;
    sget-object v1, Ljavax/xml/bind/DatatypeConverter;->theConverter:Ljavax/xml/bind/DatatypeConverterInterface;

    move-object v2, v0

    invoke-interface {v1, v2}, Ljavax/xml/bind/DatatypeConverterInterface;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "lexicalXSDLong":Ljava/lang/String;
    return-wide v0
.end method

.method public static parseQName(Ljava/lang/String;Ljavax/xml/namespace/NamespaceContext;)Ljavax/xml/namespace/QName;
    .locals 5

    .prologue
    .line 268
    move-object v0, p0

    .local v0, "lexicalXSDQName":Ljava/lang/String;
    move-object v1, p1

    .local v1, "nsc":Ljavax/xml/namespace/NamespaceContext;
    sget-object v2, Ljavax/xml/bind/DatatypeConverter;->theConverter:Ljavax/xml/bind/DatatypeConverterInterface;

    move-object v3, v0

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Ljavax/xml/bind/DatatypeConverterInterface;->parseQName(Ljava/lang/String;Ljavax/xml/namespace/NamespaceContext;)Ljavax/xml/namespace/QName;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "lexicalXSDQName":Ljava/lang/String;
    return-object v0
.end method

.method public static parseShort(Ljava/lang/String;)S
    .locals 3

    .prologue
    .line 176
    move-object v0, p0

    .local v0, "lexicalXSDShort":Ljava/lang/String;
    sget-object v1, Ljavax/xml/bind/DatatypeConverter;->theConverter:Ljavax/xml/bind/DatatypeConverterInterface;

    move-object v2, v0

    invoke-interface {v1, v2}, Ljavax/xml/bind/DatatypeConverterInterface;->parseShort(Ljava/lang/String;)S

    move-result v1

    move v0, v1

    .end local v0    # "lexicalXSDShort":Ljava/lang/String;
    return v0
.end method

.method public static parseString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "lexicalXSDString":Ljava/lang/String;
    sget-object v1, Ljavax/xml/bind/DatatypeConverter;->theConverter:Ljavax/xml/bind/DatatypeConverterInterface;

    move-object v2, v0

    invoke-interface {v1, v2}, Ljavax/xml/bind/DatatypeConverterInterface;->parseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "lexicalXSDString":Ljava/lang/String;
    return-object v0
.end method

.method public static parseTime(Ljava/lang/String;)Ljava/util/Calendar;
    .locals 3

    .prologue
    .line 352
    move-object v0, p0

    .local v0, "lexicalXSDTime":Ljava/lang/String;
    sget-object v1, Ljavax/xml/bind/DatatypeConverter;->theConverter:Ljavax/xml/bind/DatatypeConverterInterface;

    move-object v2, v0

    invoke-interface {v1, v2}, Ljavax/xml/bind/DatatypeConverterInterface;->parseTime(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "lexicalXSDTime":Ljava/lang/String;
    return-object v0
.end method

.method public static parseUnsignedInt(Ljava/lang/String;)J
    .locals 3

    .prologue
    .line 324
    move-object v0, p0

    .local v0, "lexicalXSDUnsignedInt":Ljava/lang/String;
    sget-object v1, Ljavax/xml/bind/DatatypeConverter;->theConverter:Ljavax/xml/bind/DatatypeConverterInterface;

    move-object v2, v0

    invoke-interface {v1, v2}, Ljavax/xml/bind/DatatypeConverterInterface;->parseUnsignedInt(Ljava/lang/String;)J

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "lexicalXSDUnsignedInt":Ljava/lang/String;
    return-wide v0
.end method

.method public static parseUnsignedShort(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 338
    move-object v0, p0

    .local v0, "lexicalXSDUnsignedShort":Ljava/lang/String;
    sget-object v1, Ljavax/xml/bind/DatatypeConverter;->theConverter:Ljavax/xml/bind/DatatypeConverterInterface;

    move-object v2, v0

    invoke-interface {v1, v2}, Ljavax/xml/bind/DatatypeConverterInterface;->parseUnsignedShort(Ljava/lang/String;)I

    move-result v1

    move v0, v1

    .end local v0    # "lexicalXSDUnsignedShort":Ljava/lang/String;
    return v0
.end method

.method public static printAnySimpleType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 622
    move-object v0, p0

    .local v0, "val":Ljava/lang/String;
    sget-object v1, Ljavax/xml/bind/DatatypeConverter;->theConverter:Ljavax/xml/bind/DatatypeConverterInterface;

    move-object v2, v0

    invoke-interface {v1, v2}, Ljavax/xml/bind/DatatypeConverterInterface;->printAnySimpleType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "val":Ljava/lang/String;
    return-object v0
.end method

.method public static printBase64Binary([B)Ljava/lang/String;
    .locals 3

    .prologue
    .line 547
    move-object v0, p0

    .local v0, "val":[B
    sget-object v1, Ljavax/xml/bind/DatatypeConverter;->theConverter:Ljavax/xml/bind/DatatypeConverterInterface;

    move-object v2, v0

    invoke-interface {v1, v2}, Ljavax/xml/bind/DatatypeConverterInterface;->printBase64Binary([B)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "val":[B
    return-object v0
.end method

.method public static printBoolean(Z)Ljava/lang/String;
    .locals 3

    .prologue
    .line 492
    move v0, p0

    .local v0, "val":Z
    sget-object v1, Ljavax/xml/bind/DatatypeConverter;->theConverter:Ljavax/xml/bind/DatatypeConverterInterface;

    move v2, v0

    invoke-interface {v1, v2}, Ljavax/xml/bind/DatatypeConverterInterface;->printBoolean(Z)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "val":Z
    return-object v0
.end method

.method public static printByte(B)Ljava/lang/String;
    .locals 3

    .prologue
    .line 504
    move v0, p0

    .local v0, "val":B
    sget-object v1, Ljavax/xml/bind/DatatypeConverter;->theConverter:Ljavax/xml/bind/DatatypeConverterInterface;

    move v2, v0

    invoke-interface {v1, v2}, Ljavax/xml/bind/DatatypeConverterInterface;->printByte(B)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "val":B
    return-object v0
.end method

.method public static printDate(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 610
    move-object v0, p0

    .local v0, "val":Ljava/util/Calendar;
    sget-object v1, Ljavax/xml/bind/DatatypeConverter;->theConverter:Ljavax/xml/bind/DatatypeConverterInterface;

    move-object v2, v0

    invoke-interface {v1, v2}, Ljavax/xml/bind/DatatypeConverterInterface;->printDate(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "val":Ljava/util/Calendar;
    return-object v0
.end method

.method public static printDateTime(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 534
    move-object v0, p0

    .local v0, "val":Ljava/util/Calendar;
    sget-object v1, Ljavax/xml/bind/DatatypeConverter;->theConverter:Ljavax/xml/bind/DatatypeConverterInterface;

    move-object v2, v0

    invoke-interface {v1, v2}, Ljavax/xml/bind/DatatypeConverterInterface;->printDateTime(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "val":Ljava/util/Calendar;
    return-object v0
.end method

.method public static printDecimal(Ljava/math/BigDecimal;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 456
    move-object v0, p0

    .local v0, "val":Ljava/math/BigDecimal;
    sget-object v1, Ljavax/xml/bind/DatatypeConverter;->theConverter:Ljavax/xml/bind/DatatypeConverterInterface;

    move-object v2, v0

    invoke-interface {v1, v2}, Ljavax/xml/bind/DatatypeConverterInterface;->printDecimal(Ljava/math/BigDecimal;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "val":Ljava/math/BigDecimal;
    return-object v0
.end method

.method public static printDouble(D)Ljava/lang/String;
    .locals 6

    .prologue
    .line 480
    move-wide v0, p0

    .local v0, "val":D
    sget-object v2, Ljavax/xml/bind/DatatypeConverter;->theConverter:Ljavax/xml/bind/DatatypeConverterInterface;

    move-wide v3, v0

    invoke-interface {v2, v3, v4}, Ljavax/xml/bind/DatatypeConverterInterface;->printDouble(D)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "val":D
    return-object v0
.end method

.method public static printFloat(F)Ljava/lang/String;
    .locals 3

    .prologue
    .line 468
    move v0, p0

    .local v0, "val":F
    sget-object v1, Ljavax/xml/bind/DatatypeConverter;->theConverter:Ljavax/xml/bind/DatatypeConverterInterface;

    move v2, v0

    invoke-interface {v1, v2}, Ljavax/xml/bind/DatatypeConverterInterface;->printFloat(F)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "val":F
    return-object v0
.end method

.method public static printHexBinary([B)Ljava/lang/String;
    .locals 3

    .prologue
    .line 560
    move-object v0, p0

    .local v0, "val":[B
    sget-object v1, Ljavax/xml/bind/DatatypeConverter;->theConverter:Ljavax/xml/bind/DatatypeConverterInterface;

    move-object v2, v0

    invoke-interface {v1, v2}, Ljavax/xml/bind/DatatypeConverterInterface;->printHexBinary([B)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "val":[B
    return-object v0
.end method

.method public static printInt(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 419
    move v0, p0

    .local v0, "val":I
    sget-object v1, Ljavax/xml/bind/DatatypeConverter;->theConverter:Ljavax/xml/bind/DatatypeConverterInterface;

    move v2, v0

    invoke-interface {v1, v2}, Ljavax/xml/bind/DatatypeConverterInterface;->printInt(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "val":I
    return-object v0
.end method

.method public static printInteger(Ljava/math/BigInteger;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 407
    move-object v0, p0

    .local v0, "val":Ljava/math/BigInteger;
    sget-object v1, Ljavax/xml/bind/DatatypeConverter;->theConverter:Ljavax/xml/bind/DatatypeConverterInterface;

    move-object v2, v0

    invoke-interface {v1, v2}, Ljavax/xml/bind/DatatypeConverterInterface;->printInteger(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "val":Ljava/math/BigInteger;
    return-object v0
.end method

.method public static printLong(J)Ljava/lang/String;
    .locals 6

    .prologue
    .line 431
    move-wide v0, p0

    .local v0, "val":J
    sget-object v2, Ljavax/xml/bind/DatatypeConverter;->theConverter:Ljavax/xml/bind/DatatypeConverterInterface;

    move-wide v3, v0

    invoke-interface {v2, v3, v4}, Ljavax/xml/bind/DatatypeConverterInterface;->printLong(J)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "val":J
    return-object v0
.end method

.method public static printQName(Ljavax/xml/namespace/QName;Ljavax/xml/namespace/NamespaceContext;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 521
    move-object v0, p0

    .local v0, "val":Ljavax/xml/namespace/QName;
    move-object v1, p1

    .local v1, "nsc":Ljavax/xml/namespace/NamespaceContext;
    sget-object v2, Ljavax/xml/bind/DatatypeConverter;->theConverter:Ljavax/xml/bind/DatatypeConverterInterface;

    move-object v3, v0

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Ljavax/xml/bind/DatatypeConverterInterface;->printQName(Ljavax/xml/namespace/QName;Ljavax/xml/namespace/NamespaceContext;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "val":Ljavax/xml/namespace/QName;
    return-object v0
.end method

.method public static printShort(S)Ljava/lang/String;
    .locals 3

    .prologue
    .line 443
    move v0, p0

    .local v0, "val":S
    sget-object v1, Ljavax/xml/bind/DatatypeConverter;->theConverter:Ljavax/xml/bind/DatatypeConverterInterface;

    move v2, v0

    invoke-interface {v1, v2}, Ljavax/xml/bind/DatatypeConverterInterface;->printShort(S)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "val":S
    return-object v0
.end method

.method public static printString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 394
    move-object v0, p0

    .local v0, "val":Ljava/lang/String;
    sget-object v1, Ljavax/xml/bind/DatatypeConverter;->theConverter:Ljavax/xml/bind/DatatypeConverterInterface;

    move-object v2, v0

    invoke-interface {v1, v2}, Ljavax/xml/bind/DatatypeConverterInterface;->printString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "val":Ljava/lang/String;
    return-object v0
.end method

.method public static printTime(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 597
    move-object v0, p0

    .local v0, "val":Ljava/util/Calendar;
    sget-object v1, Ljavax/xml/bind/DatatypeConverter;->theConverter:Ljavax/xml/bind/DatatypeConverterInterface;

    move-object v2, v0

    invoke-interface {v1, v2}, Ljavax/xml/bind/DatatypeConverterInterface;->printTime(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "val":Ljava/util/Calendar;
    return-object v0
.end method

.method public static printUnsignedInt(J)Ljava/lang/String;
    .locals 6

    .prologue
    .line 572
    move-wide v0, p0

    .local v0, "val":J
    sget-object v2, Ljavax/xml/bind/DatatypeConverter;->theConverter:Ljavax/xml/bind/DatatypeConverterInterface;

    move-wide v3, v0

    invoke-interface {v2, v3, v4}, Ljavax/xml/bind/DatatypeConverterInterface;->printUnsignedInt(J)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "val":J
    return-object v0
.end method

.method public static printUnsignedShort(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 584
    move v0, p0

    .local v0, "val":I
    sget-object v1, Ljavax/xml/bind/DatatypeConverter;->theConverter:Ljavax/xml/bind/DatatypeConverterInterface;

    move v2, v0

    invoke-interface {v1, v2}, Ljavax/xml/bind/DatatypeConverterInterface;->printUnsignedShort(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "val":I
    return-object v0
.end method

.method public static setDatatypeConverter(Ljavax/xml/bind/DatatypeConverterInterface;)V
    .locals 5

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "converter":Ljavax/xml/bind/DatatypeConverterInterface;
    move-object v1, v0

    if-nez v1, :cond_0

    .line 103
    new-instance v1, Ljava/lang/IllegalArgumentException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string/jumbo v3, "DatatypeConverter.ConverterMustNotBeNull"

    invoke-static {v3}, Ljavax/xml/bind/Messages;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 105
    :cond_0
    sget-object v1, Ljavax/xml/bind/DatatypeConverter;->theConverter:Ljavax/xml/bind/DatatypeConverterInterface;

    if-nez v1, :cond_1

    .line 106
    move-object v1, v0

    sput-object v1, Ljavax/xml/bind/DatatypeConverter;->theConverter:Ljavax/xml/bind/DatatypeConverterInterface;

    .line 108
    :cond_1
    return-void
.end method
