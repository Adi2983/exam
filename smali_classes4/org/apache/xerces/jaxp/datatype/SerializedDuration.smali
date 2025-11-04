.class final Lorg/apache/xerces/jaxp/datatype/SerializedDuration;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x36159cec8c6d6141L


# instance fields
.field private final lexicalValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/jaxp/datatype/SerializedDuration;->lexicalValue:Ljava/lang/String;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    move-object v0, p0

    new-instance v1, Lorg/apache/xerces/jaxp/datatype/DatatypeFactoryImpl;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lorg/apache/xerces/jaxp/datatype/DatatypeFactoryImpl;-><init>()V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/datatype/SerializedDuration;->lexicalValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/apache/xerces/jaxp/datatype/DatatypeFactoryImpl;->newDuration(Ljava/lang/String;)Ljavax/xml/datatype/Duration;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method
