.class Lorg/apache/xerces/jaxp/JAXPValidatorComponent$3;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/w3c/dom/ls/LSResourceResolver;


# instance fields
.field private final this$0:Lorg/apache/xerces/jaxp/JAXPValidatorComponent;


# direct methods
.method constructor <init>(Lorg/apache/xerces/jaxp/JAXPValidatorComponent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/jaxp/JAXPValidatorComponent$3;->this$0:Lorg/apache/xerces/jaxp/JAXPValidatorComponent;

    return-void
.end method


# virtual methods
.method public resolveResource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ls/LSInput;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/jaxp/JAXPValidatorComponent$3;->this$0:Lorg/apache/xerces/jaxp/JAXPValidatorComponent;

    invoke-static {v8}, Lorg/apache/xerces/jaxp/JAXPValidatorComponent;->access$300(Lorg/apache/xerces/jaxp/JAXPValidatorComponent;)Lorg/apache/xerces/xni/parser/XMLEntityResolver;

    move-result-object v8

    if-nez v8, :cond_0

    const/4 v8, 0x0

    move-object v0, v8

    :goto_0
    return-object v0

    :cond_0
    move-object v8, v0

    :try_start_0
    iget-object v8, v8, Lorg/apache/xerces/jaxp/JAXPValidatorComponent$3;->this$0:Lorg/apache/xerces/jaxp/JAXPValidatorComponent;

    invoke-static {v8}, Lorg/apache/xerces/jaxp/JAXPValidatorComponent;->access$300(Lorg/apache/xerces/jaxp/JAXPValidatorComponent;)Lorg/apache/xerces/xni/parser/XMLEntityResolver;

    move-result-object v8

    new-instance v9, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v11, v3

    move-object v12, v4

    move-object v13, v5

    const/4 v14, 0x0

    invoke-direct {v10, v11, v12, v13, v14}, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v9}, Lorg/apache/xerces/xni/parser/XMLEntityResolver;->resolveEntity(Lorg/apache/xerces/xni/XMLResourceIdentifier;)Lorg/apache/xerces/xni/parser/XMLInputSource;

    move-result-object v8

    move-object v6, v8

    move-object v8, v6

    if-nez v8, :cond_1

    const/4 v8, 0x0

    move-object v0, v8

    goto :goto_0

    :cond_1
    new-instance v8, Lorg/apache/xerces/dom/DOMInputImpl;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    invoke-direct {v9}, Lorg/apache/xerces/dom/DOMInputImpl;-><init>()V

    move-object v7, v8

    move-object v8, v7

    move-object v9, v6

    invoke-virtual {v9}, Lorg/apache/xerces/xni/parser/XMLInputSource;->getBaseSystemId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/w3c/dom/ls/LSInput;->setBaseURI(Ljava/lang/String;)V

    move-object v8, v7

    move-object v9, v6

    invoke-virtual {v9}, Lorg/apache/xerces/xni/parser/XMLInputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/w3c/dom/ls/LSInput;->setByteStream(Ljava/io/InputStream;)V

    move-object v8, v7

    move-object v9, v6

    invoke-virtual {v9}, Lorg/apache/xerces/xni/parser/XMLInputSource;->getCharacterStream()Ljava/io/Reader;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/w3c/dom/ls/LSInput;->setCharacterStream(Ljava/io/Reader;)V

    move-object v8, v7

    move-object v9, v6

    invoke-virtual {v9}, Lorg/apache/xerces/xni/parser/XMLInputSource;->getEncoding()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/w3c/dom/ls/LSInput;->setEncoding(Ljava/lang/String;)V

    move-object v8, v7

    move-object v9, v6

    invoke-virtual {v9}, Lorg/apache/xerces/xni/parser/XMLInputSource;->getPublicId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/w3c/dom/ls/LSInput;->setPublicId(Ljava/lang/String;)V

    move-object v8, v7

    move-object v9, v6

    invoke-virtual {v9}, Lorg/apache/xerces/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/w3c/dom/ls/LSInput;->setSystemId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v8, v7

    move-object v0, v8

    goto :goto_0

    :catch_0
    move-exception v8

    move-object v6, v8

    new-instance v8, Lorg/apache/xerces/xni/XNIException;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    move-object v10, v6

    invoke-direct {v9, v10}, Lorg/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v8
.end method
