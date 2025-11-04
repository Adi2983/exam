.class public abstract Ljavax/xml/bind/helpers/AbstractMarshallerImpl;
.super Ljava/lang/Object;
.source "AbstractMarshallerImpl.java"

# interfaces
.implements Ljavax/xml/bind/Marshaller;


# static fields
.field static aliases:[Ljava/lang/String;


# instance fields
.field private encoding:Ljava/lang/String;

.field private eventHandler:Ljavax/xml/bind/ValidationEventHandler;

.field private formattedOutput:Z

.field private fragment:Z

.field private noNSSchemaLocation:Ljava/lang/String;

.field private schemaLocation:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 223
    const/16 v0, 0x36

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string/jumbo v3, "UTF-8"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const-string/jumbo v3, "UTF8"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    const-string/jumbo v3, "UTF-16"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    const-string/jumbo v3, "Unicode"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    const-string/jumbo v3, "UTF-16BE"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x5

    const-string/jumbo v3, "UnicodeBigUnmarked"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x6

    const-string/jumbo v3, "UTF-16LE"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x7

    const-string/jumbo v3, "UnicodeLittleUnmarked"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x8

    const-string/jumbo v3, "US-ASCII"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x9

    const-string/jumbo v3, "ASCII"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xa

    const-string/jumbo v3, "TIS-620"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xb

    const-string/jumbo v3, "TIS620"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xc

    const-string/jumbo v3, "ISO-10646-UCS-2"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xd

    const-string/jumbo v3, "Unicode"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xe

    const-string/jumbo v3, "EBCDIC-CP-US"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xf

    const-string/jumbo v3, "cp037"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x10

    const-string/jumbo v3, "EBCDIC-CP-CA"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x11

    const-string/jumbo v3, "cp037"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x12

    const-string/jumbo v3, "EBCDIC-CP-NL"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x13

    const-string/jumbo v3, "cp037"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x14

    const-string/jumbo v3, "EBCDIC-CP-WT"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x15

    const-string/jumbo v3, "cp037"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x16

    const-string/jumbo v3, "EBCDIC-CP-DK"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x17

    const-string/jumbo v3, "cp277"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x18

    const-string/jumbo v3, "EBCDIC-CP-NO"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x19

    const-string/jumbo v3, "cp277"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x1a

    const-string/jumbo v3, "EBCDIC-CP-FI"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x1b

    const-string/jumbo v3, "cp278"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x1c

    const-string/jumbo v3, "EBCDIC-CP-SE"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x1d

    const-string/jumbo v3, "cp278"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x1e

    const-string/jumbo v3, "EBCDIC-CP-IT"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x1f

    const-string/jumbo v3, "cp280"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x20

    const-string/jumbo v3, "EBCDIC-CP-ES"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x21

    const-string/jumbo v3, "cp284"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x22

    const-string/jumbo v3, "EBCDIC-CP-GB"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x23

    const-string/jumbo v3, "cp285"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x24

    const-string/jumbo v3, "EBCDIC-CP-FR"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x25

    const-string/jumbo v3, "cp297"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x26

    const-string/jumbo v3, "EBCDIC-CP-AR1"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x27

    const-string/jumbo v3, "cp420"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x28

    const-string/jumbo v3, "EBCDIC-CP-HE"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x29

    const-string/jumbo v3, "cp424"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x2a

    const-string/jumbo v3, "EBCDIC-CP-BE"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x2b

    const-string/jumbo v3, "cp500"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x2c

    const-string/jumbo v3, "EBCDIC-CP-CH"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x2d

    const-string/jumbo v3, "cp500"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x2e

    const-string/jumbo v3, "EBCDIC-CP-ROECE"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x2f

    const-string/jumbo v3, "cp870"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x30

    const-string/jumbo v3, "EBCDIC-CP-YU"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x31

    const-string/jumbo v3, "cp870"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x32

    const-string/jumbo v3, "EBCDIC-CP-IS"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x33

    const-string/jumbo v3, "cp871"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x34

    const-string/jumbo v3, "EBCDIC-CP-AR2"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x35

    const-string/jumbo v3, "cp918"

    aput-object v3, v1, v2

    sput-object v0, Ljavax/xml/bind/helpers/AbstractMarshallerImpl;->aliases:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/AbstractMarshallerImpl;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 50
    move-object v1, v0

    new-instance v2, Ljavax/xml/bind/helpers/DefaultValidationEventHandler;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavax/xml/bind/helpers/DefaultValidationEventHandler;-><init>()V

    iput-object v2, v1, Ljavax/xml/bind/helpers/AbstractMarshallerImpl;->eventHandler:Ljavax/xml/bind/ValidationEventHandler;

    .line 57
    move-object v1, v0

    const-string/jumbo v2, "UTF-8"

    iput-object v2, v1, Ljavax/xml/bind/helpers/AbstractMarshallerImpl;->encoding:Ljava/lang/String;

    .line 60
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavax/xml/bind/helpers/AbstractMarshallerImpl;->schemaLocation:Ljava/lang/String;

    .line 63
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavax/xml/bind/helpers/AbstractMarshallerImpl;->noNSSchemaLocation:Ljava/lang/String;

    .line 66
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Ljavax/xml/bind/helpers/AbstractMarshallerImpl;->formattedOutput:Z

    .line 69
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Ljavax/xml/bind/helpers/AbstractMarshallerImpl;->fragment:Z

    return-void
.end method

.method private checkBoolean(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/PropertyException;
        }
    .end annotation

    .prologue
    .line 396
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/AbstractMarshallerImpl;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    move-object v3, v2

    instance-of v3, v3, Ljava/lang/Boolean;

    if-nez v3, :cond_0

    .line 397
    new-instance v3, Ljavax/xml/bind/PropertyException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string/jumbo v5, "AbstractMarshallerImpl.MustBeBoolean"

    move-object v6, v1

    invoke-static {v5, v6}, Ljavax/xml/bind/helpers/Messages;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljavax/xml/bind/PropertyException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 399
    :cond_0
    return-void
.end method

.method private checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 416
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/AbstractMarshallerImpl;
    move-object v1, p1

    .local v1, "o1":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "o1Name":Ljava/lang/String;
    move-object v3, p3

    .local v3, "o2":Ljava/lang/Object;
    move-object v4, p4

    .local v4, "o2Name":Ljava/lang/String;
    move-object v5, v1

    if-nez v5, :cond_0

    .line 417
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string/jumbo v7, "Shared.MustNotBeNull"

    move-object v8, v2

    invoke-static {v7, v8}, Ljavax/xml/bind/helpers/Messages;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 420
    :cond_0
    move-object v5, v3

    if-nez v5, :cond_1

    .line 421
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string/jumbo v7, "Shared.MustNotBeNull"

    move-object v8, v4

    invoke-static {v7, v8}, Ljavax/xml/bind/helpers/Messages;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 424
    :cond_1
    return-void
.end method

.method private checkString(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/PropertyException;
        }
    .end annotation

    .prologue
    .line 405
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/AbstractMarshallerImpl;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    move-object v3, v2

    instance-of v3, v3, Ljava/lang/String;

    if-nez v3, :cond_0

    .line 406
    new-instance v3, Ljavax/xml/bind/PropertyException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string/jumbo v5, "AbstractMarshallerImpl.MustBeString"

    move-object v6, v1

    invoke-static {v5, v6}, Ljavax/xml/bind/helpers/Messages;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljavax/xml/bind/PropertyException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 408
    :cond_0
    return-void
.end method


# virtual methods
.method public getAdapter(Ljava/lang/Class;)Ljavax/xml/bind/annotation/adapters/XmlAdapter;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljavax/xml/bind/annotation/adapters/XmlAdapter;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation

    .prologue
    .line 457
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/AbstractMarshallerImpl;
    move-object v1, p1

    .local v1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method

.method public getAttachmentMarshaller()Ljavax/xml/bind/attachment/AttachmentMarshaller;
    .locals 4

    .prologue
    .line 465
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/AbstractMarshallerImpl;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method

.method protected getEncoding()Ljava/lang/String;
    .locals 2

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/AbstractMarshallerImpl;
    move-object v1, v0

    iget-object v1, v1, Ljavax/xml/bind/helpers/AbstractMarshallerImpl;->encoding:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Ljavax/xml/bind/helpers/AbstractMarshallerImpl;
    return-object v0
.end method

.method public getEventHandler()Ljavax/xml/bind/ValidationEventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 373
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/AbstractMarshallerImpl;
    move-object v1, v0

    iget-object v1, v1, Ljavax/xml/bind/helpers/AbstractMarshallerImpl;->eventHandler:Ljavax/xml/bind/ValidationEventHandler;

    move-object v0, v1

    .end local v0    # "this":Ljavax/xml/bind/helpers/AbstractMarshallerImpl;
    return-object v0
.end method

.method protected getJavaEncoding(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 275
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/AbstractMarshallerImpl;
    move-object v1, p1

    .local v1, "encoding":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v4, "1"

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 276
    move-object v4, v1

    move-object v0, v4

    .line 282
    .end local v0    # "this":Ljavax/xml/bind/helpers/AbstractMarshallerImpl;
    :goto_0
    return-object v0

    .line 277
    .restart local v0    # "this":Ljavax/xml/bind/helpers/AbstractMarshallerImpl;
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 279
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_1
    move v4, v3

    sget-object v5, Ljavax/xml/bind/helpers/AbstractMarshallerImpl;->aliases:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_1

    .line 280
    move-object v4, v1

    sget-object v5, Ljavax/xml/bind/helpers/AbstractMarshallerImpl;->aliases:[Ljava/lang/String;

    move v6, v3

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 281
    const-string/jumbo v4, "1"

    sget-object v5, Ljavax/xml/bind/helpers/AbstractMarshallerImpl;->aliases:[Ljava/lang/String;

    move v6, v3

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 282
    sget-object v4, Ljavax/xml/bind/helpers/AbstractMarshallerImpl;->aliases:[Ljava/lang/String;

    move v5, v3

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    aget-object v4, v4, v5

    move-object v0, v4

    goto :goto_0

    .line 279
    :cond_0
    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    .line 286
    :cond_1
    new-instance v4, Ljava/io/UnsupportedEncodingException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    invoke-direct {v5, v6}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getListener()Ljavax/xml/bind/Marshaller$Listener;
    .locals 4

    .prologue
    .line 473
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/AbstractMarshallerImpl;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method

.method protected getNoNSSchemaLocation()Ljava/lang/String;
    .locals 2

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/AbstractMarshallerImpl;
    move-object v1, v0

    iget-object v1, v1, Ljavax/xml/bind/helpers/AbstractMarshallerImpl;->noNSSchemaLocation:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Ljavax/xml/bind/helpers/AbstractMarshallerImpl;
    return-object v0
.end method

.method public getNode(Ljava/lang/Object;)Lorg/w3c/dom/Node;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/AbstractMarshallerImpl;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "obj"

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string/jumbo v6, "foo"

    invoke-direct {v2, v3, v4, v5, v6}, Ljavax/xml/bind/helpers/AbstractMarshallerImpl;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/PropertyException;
        }
    .end annotation

    .prologue
    .line 350
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/AbstractMarshallerImpl;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 351
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string/jumbo v4, "Shared.MustNotBeNull"

    const-string/jumbo v5, "name"

    invoke-static {v4, v5}, Ljavax/xml/bind/helpers/Messages;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 356
    :cond_0
    const-string/jumbo v2, "jaxb.encoding"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 357
    move-object v2, v0

    invoke-virtual {v2}, Ljavax/xml/bind/helpers/AbstractMarshallerImpl;->getEncoding()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 365
    .end local v0    # "this":Ljavax/xml/bind/helpers/AbstractMarshallerImpl;
    :goto_0
    return-object v0

    .line 358
    .restart local v0    # "this":Ljavax/xml/bind/helpers/AbstractMarshallerImpl;
    :cond_1
    const-string/jumbo v2, "jaxb.formatted.output"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 359
    move-object v2, v0

    invoke-virtual {v2}, Ljavax/xml/bind/helpers/AbstractMarshallerImpl;->isFormattedOutput()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_1
    move-object v0, v2

    goto :goto_0

    :cond_2
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    .line 360
    :cond_3
    const-string/jumbo v2, "jaxb.noNamespaceSchemaLocation"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 361
    move-object v2, v0

    invoke-virtual {v2}, Ljavax/xml/bind/helpers/AbstractMarshallerImpl;->getNoNSSchemaLocation()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 362
    :cond_4
    const-string/jumbo v2, "jaxb.schemaLocation"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 363
    move-object v2, v0

    invoke-virtual {v2}, Ljavax/xml/bind/helpers/AbstractMarshallerImpl;->getSchemaLocation()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 364
    :cond_5
    const-string/jumbo v2, "jaxb.fragment"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 365
    move-object v2, v0

    invoke-virtual {v2}, Ljavax/xml/bind/helpers/AbstractMarshallerImpl;->isFragment()Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_2
    move-object v0, v2

    goto :goto_0

    :cond_6
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_2

    .line 367
    :cond_7
    new-instance v2, Ljavax/xml/bind/PropertyException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v1

    invoke-direct {v3, v4}, Ljavax/xml/bind/PropertyException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getSchema()Ljavax/xml/validation/Schema;
    .locals 4

    .prologue
    .line 443
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/AbstractMarshallerImpl;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method

.method protected getSchemaLocation()Ljava/lang/String;
    .locals 2

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/AbstractMarshallerImpl;
    move-object v1, v0

    iget-object v1, v1, Ljavax/xml/bind/helpers/AbstractMarshallerImpl;->schemaLocation:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Ljavax/xml/bind/helpers/AbstractMarshallerImpl;
    return-object v0
.end method

.method protected isFormattedOutput()Z
    .locals 2

    .prologue
    .line 190
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/AbstractMarshallerImpl;
    move-object v1, v0

    iget-boolean v1, v1, Ljavax/xml/bind/helpers/AbstractMarshallerImpl;->formattedOutput:Z

    move v0, v1

    .end local v0    # "this":Ljavax/xml/bind/helpers/AbstractMarshallerImpl;
    return v0
.end method

.method protected isFragment()Z
    .locals 2

    .prologue
    .line 210
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/AbstractMarshallerImpl;
    move-object v1, v0

    iget-boolean v1, v1, Ljavax/xml/bind/helpers/AbstractMarshallerImpl;->fragment:Z

    move v0, v1

    .end local v0    # "this":Ljavax/xml/bind/helpers/AbstractMarshallerImpl;
    return v0
.end method

.method public marshal(Ljava/lang/Object;Ljava/io/File;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/AbstractMarshallerImpl;
    move-object v1, p1

    .local v1, "jaxbElement":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "output":Ljava/io/File;
    move-object v5, v0

    move-object v6, v1

    const-string/jumbo v7, "jaxbElement"

    move-object v8, v2

    const-string/jumbo v9, "output"

    invoke-direct {v5, v6, v7, v8, v9}, Ljavax/xml/bind/helpers/AbstractMarshallerImpl;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    :try_start_0
    new-instance v5, Ljava/io/BufferedOutputStream;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    new-instance v7, Ljava/io/FileOutputStream;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v2

    invoke-direct {v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v5

    .line 83
    .local v3, "os":Ljava/io/OutputStream;
    move-object v5, v0

    move-object v6, v1

    :try_start_1
    new-instance v7, Ljavax/xml/transform/stream/StreamResult;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v3

    invoke-direct {v8, v9}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v5, v6, v7}, Ljavax/xml/bind/helpers/AbstractMarshallerImpl;->marshal(Ljava/lang/Object;Ljavax/xml/transform/Result;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    move-object v5, v3

    :try_start_2
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 86
    .line 89
    .line 90
    return-void

    .line 85
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v3

    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 86
    move-object v5, v4

    throw v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 87
    .end local v3    # "os":Ljava/io/OutputStream;
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 88
    .local v3, "e":Ljava/io/IOException;
    new-instance v5, Ljavax/xml/bind/JAXBException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v3

    invoke-direct {v6, v7}, Ljavax/xml/bind/JAXBException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public final marshal(Ljava/lang/Object;Ljava/io/OutputStream;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/AbstractMarshallerImpl;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "os":Ljava/io/OutputStream;
    move-object v3, v0

    move-object v4, v1

    const-string/jumbo v5, "obj"

    move-object v6, v2

    const-string/jumbo v7, "os"

    invoke-direct {v3, v4, v5, v6, v7}, Ljavax/xml/bind/helpers/AbstractMarshallerImpl;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    move-object v3, v0

    move-object v4, v1

    new-instance v5, Ljavax/xml/transform/stream/StreamResult;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v2

    invoke-direct {v6, v7}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v3, v4, v5}, Ljavax/xml/bind/helpers/AbstractMarshallerImpl;->marshal(Ljava/lang/Object;Ljavax/xml/transform/Result;)V

    .line 76
    return-void
.end method

.method public final marshal(Ljava/lang/Object;Ljava/io/Writer;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/AbstractMarshallerImpl;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "w":Ljava/io/Writer;
    move-object v3, v0

    move-object v4, v1

    const-string/jumbo v5, "obj"

    move-object v6, v2

    const-string/jumbo v7, "writer"

    invoke-direct {v3, v4, v5, v6, v7}, Ljavax/xml/bind/helpers/AbstractMarshallerImpl;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    move-object v3, v0

    move-object v4, v1

    new-instance v5, Ljavax/xml/transform/stream/StreamResult;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v2

    invoke-direct {v6, v7}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v3, v4, v5}, Ljavax/xml/bind/helpers/AbstractMarshallerImpl;->marshal(Ljava/lang/Object;Ljavax/xml/transform/Result;)V

    .line 97
    return-void
.end method

.method public marshal(Ljava/lang/Object;Ljavax/xml/stream/XMLEventWriter;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 429
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/AbstractMarshallerImpl;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "writer":Ljavax/xml/stream/XMLEventWriter;
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v3
.end method

.method public marshal(Ljava/lang/Object;Ljavax/xml/stream/XMLStreamWriter;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 435
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/AbstractMarshallerImpl;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "writer":Ljavax/xml/stream/XMLStreamWriter;
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v3
.end method

.method public final marshal(Ljava/lang/Object;Lorg/w3c/dom/Node;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/AbstractMarshallerImpl;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "node":Lorg/w3c/dom/Node;
    move-object v3, v0

    move-object v4, v1

    const-string/jumbo v5, "obj"

    move-object v6, v2

    const-string/jumbo v7, "node"

    invoke-direct {v3, v4, v5, v6, v7}, Ljavax/xml/bind/helpers/AbstractMarshallerImpl;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    move-object v3, v0

    move-object v4, v1

    new-instance v5, Ljavax/xml/transform/dom/DOMResult;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v2

    invoke-direct {v6, v7}, Ljavax/xml/transform/dom/DOMResult;-><init>(Lorg/w3c/dom/Node;)V

    invoke-virtual {v3, v4, v5}, Ljavax/xml/bind/helpers/AbstractMarshallerImpl;->marshal(Ljava/lang/Object;Ljavax/xml/transform/Result;)V

    .line 111
    return-void
.end method

.method public final marshal(Ljava/lang/Object;Lorg/xml/sax/ContentHandler;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/AbstractMarshallerImpl;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "handler":Lorg/xml/sax/ContentHandler;
    move-object v3, v0

    move-object v4, v1

    const-string/jumbo v5, "obj"

    move-object v6, v2

    const-string/jumbo v7, "handler"

    invoke-direct {v3, v4, v5, v6, v7}, Ljavax/xml/bind/helpers/AbstractMarshallerImpl;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    move-object v3, v0

    move-object v4, v1

    new-instance v5, Ljavax/xml/transform/sax/SAXResult;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v2

    invoke-direct {v6, v7}, Ljavax/xml/transform/sax/SAXResult;-><init>(Lorg/xml/sax/ContentHandler;)V

    invoke-virtual {v3, v4, v5}, Ljavax/xml/bind/helpers/AbstractMarshallerImpl;->marshal(Ljava/lang/Object;Ljavax/xml/transform/Result;)V

    .line 104
    return-void
.end method

.method public setAdapter(Ljava/lang/Class;Ljavax/xml/bind/annotation/adapters/XmlAdapter;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljavax/xml/bind/annotation/adapters/XmlAdapter;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;TA;)V"
        }
    .end annotation

    .prologue
    .line 453
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/AbstractMarshallerImpl;
    move-object v1, p1

    .local v1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    move-object v2, p2

    .local v2, "adapter":Ljavax/xml/bind/annotation/adapters/XmlAdapter;, "TA;"
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v3
.end method

.method public setAdapter(Ljavax/xml/bind/annotation/adapters/XmlAdapter;)V
    .locals 6

    .prologue
    .line 447
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/AbstractMarshallerImpl;
    move-object v1, p1

    .local v1, "adapter":Ljavax/xml/bind/annotation/adapters/XmlAdapter;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 448
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 449
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Ljavax/xml/bind/helpers/AbstractMarshallerImpl;->setAdapter(Ljava/lang/Class;Ljavax/xml/bind/annotation/adapters/XmlAdapter;)V

    .line 450
    return-void
.end method

.method public setAttachmentMarshaller(Ljavax/xml/bind/attachment/AttachmentMarshaller;)V
    .locals 5

    .prologue
    .line 461
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/AbstractMarshallerImpl;
    move-object v1, p1

    .local v1, "am":Ljavax/xml/bind/attachment/AttachmentMarshaller;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method

.method protected setEncoding(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/AbstractMarshallerImpl;
    move-object v1, p1

    .local v1, "encoding":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavax/xml/bind/helpers/AbstractMarshallerImpl;->encoding:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public setEventHandler(Ljavax/xml/bind/ValidationEventHandler;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 382
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/AbstractMarshallerImpl;
    move-object v1, p1

    .local v1, "handler":Ljavax/xml/bind/ValidationEventHandler;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 383
    move-object v2, v0

    new-instance v3, Ljavax/xml/bind/helpers/DefaultValidationEventHandler;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljavax/xml/bind/helpers/DefaultValidationEventHandler;-><init>()V

    iput-object v3, v2, Ljavax/xml/bind/helpers/AbstractMarshallerImpl;->eventHandler:Ljavax/xml/bind/ValidationEventHandler;

    .line 384
    .line 387
    :goto_0
    return-void

    .line 385
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavax/xml/bind/helpers/AbstractMarshallerImpl;->eventHandler:Ljavax/xml/bind/ValidationEventHandler;

    goto :goto_0
.end method

.method protected setFormattedOutput(Z)V
    .locals 4

    .prologue
    .line 199
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/AbstractMarshallerImpl;
    move v1, p1

    .local v1, "v":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavax/xml/bind/helpers/AbstractMarshallerImpl;->formattedOutput:Z

    .line 200
    return-void
.end method

.method protected setFragment(Z)V
    .locals 4

    .prologue
    .line 219
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/AbstractMarshallerImpl;
    move v1, p1

    .local v1, "v":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavax/xml/bind/helpers/AbstractMarshallerImpl;->fragment:Z

    .line 220
    return-void
.end method

.method public setListener(Ljavax/xml/bind/Marshaller$Listener;)V
    .locals 5

    .prologue
    .line 469
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/AbstractMarshallerImpl;
    move-object v1, p1

    .local v1, "listener":Ljavax/xml/bind/Marshaller$Listener;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method

.method protected setNoNSSchemaLocation(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 180
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/AbstractMarshallerImpl;
    move-object v1, p1

    .local v1, "location":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavax/xml/bind/helpers/AbstractMarshallerImpl;->noNSSchemaLocation:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/PropertyException;
        }
    .end annotation

    .prologue
    .line 306
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/AbstractMarshallerImpl;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 307
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string/jumbo v5, "Shared.MustNotBeNull"

    const-string/jumbo v6, "name"

    invoke-static {v5, v6}, Ljavax/xml/bind/helpers/Messages;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 312
    :cond_0
    const-string/jumbo v3, "jaxb.encoding"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 313
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Ljavax/xml/bind/helpers/AbstractMarshallerImpl;->checkString(Ljava/lang/String;Ljava/lang/Object;)V

    .line 314
    move-object v3, v0

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljavax/xml/bind/helpers/AbstractMarshallerImpl;->setEncoding(Ljava/lang/String;)V

    .line 315
    .line 335
    :goto_0
    return-void

    .line 317
    :cond_1
    const-string/jumbo v3, "jaxb.formatted.output"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 318
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Ljavax/xml/bind/helpers/AbstractMarshallerImpl;->checkBoolean(Ljava/lang/String;Ljava/lang/Object;)V

    .line 319
    move-object v3, v0

    move-object v4, v2

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljavax/xml/bind/helpers/AbstractMarshallerImpl;->setFormattedOutput(Z)V

    .line 320
    goto :goto_0

    .line 322
    :cond_2
    const-string/jumbo v3, "jaxb.noNamespaceSchemaLocation"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 323
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Ljavax/xml/bind/helpers/AbstractMarshallerImpl;->checkString(Ljava/lang/String;Ljava/lang/Object;)V

    .line 324
    move-object v3, v0

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljavax/xml/bind/helpers/AbstractMarshallerImpl;->setNoNSSchemaLocation(Ljava/lang/String;)V

    .line 325
    goto :goto_0

    .line 327
    :cond_3
    const-string/jumbo v3, "jaxb.schemaLocation"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 328
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Ljavax/xml/bind/helpers/AbstractMarshallerImpl;->checkString(Ljava/lang/String;Ljava/lang/Object;)V

    .line 329
    move-object v3, v0

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljavax/xml/bind/helpers/AbstractMarshallerImpl;->setSchemaLocation(Ljava/lang/String;)V

    .line 330
    goto :goto_0

    .line 332
    :cond_4
    const-string/jumbo v3, "jaxb.fragment"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 333
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Ljavax/xml/bind/helpers/AbstractMarshallerImpl;->checkBoolean(Ljava/lang/String;Ljava/lang/Object;)V

    .line 334
    move-object v3, v0

    move-object v4, v2

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljavax/xml/bind/helpers/AbstractMarshallerImpl;->setFragment(Z)V

    .line 335
    goto :goto_0

    .line 338
    :cond_5
    new-instance v3, Ljavax/xml/bind/PropertyException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Ljavax/xml/bind/PropertyException;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    throw v3
.end method

.method public setSchema(Ljavax/xml/validation/Schema;)V
    .locals 5

    .prologue
    .line 439
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/AbstractMarshallerImpl;
    move-object v1, p1

    .local v1, "schema":Ljavax/xml/validation/Schema;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method

.method protected setSchemaLocation(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/AbstractMarshallerImpl;
    move-object v1, p1

    .local v1, "location":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavax/xml/bind/helpers/AbstractMarshallerImpl;->schemaLocation:Ljava/lang/String;

    .line 162
    return-void
.end method
