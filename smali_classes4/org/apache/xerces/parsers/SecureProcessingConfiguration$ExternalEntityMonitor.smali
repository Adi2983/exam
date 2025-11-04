.class final Lorg/apache/xerces/parsers/SecureProcessingConfiguration$ExternalEntityMonitor;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/xerces/xni/parser/XMLEntityResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/parsers/SecureProcessingConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ExternalEntityMonitor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xerces/parsers/SecureProcessingConfiguration$ExternalEntityMonitor$ReaderMonitor;,
        Lorg/apache/xerces/parsers/SecureProcessingConfiguration$ExternalEntityMonitor$InputStreamMonitor;
    }
.end annotation


# instance fields
.field private fEntityResolver:Lorg/apache/xerces/xni/parser/XMLEntityResolver;

.field private final this$0:Lorg/apache/xerces/parsers/SecureProcessingConfiguration;


# direct methods
.method constructor <init>(Lorg/apache/xerces/parsers/SecureProcessingConfiguration;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/parsers/SecureProcessingConfiguration$ExternalEntityMonitor;->this$0:Lorg/apache/xerces/parsers/SecureProcessingConfiguration;

    return-void
.end method

.method static access$000(Lorg/apache/xerces/parsers/SecureProcessingConfiguration$ExternalEntityMonitor;)Lorg/apache/xerces/parsers/SecureProcessingConfiguration;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/SecureProcessingConfiguration$ExternalEntityMonitor;->this$0:Lorg/apache/xerces/parsers/SecureProcessingConfiguration;

    move-object v0, v1

    return-object v0
.end method


# virtual methods
.method public getEntityResolver()Lorg/apache/xerces/xni/parser/XMLEntityResolver;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/SecureProcessingConfiguration$ExternalEntityMonitor;->fEntityResolver:Lorg/apache/xerces/xni/parser/XMLEntityResolver;

    move-object v0, v1

    return-object v0
.end method

.method public resolveEntity(Lorg/apache/xerces/xni/XMLResourceIdentifier;)Lorg/apache/xerces/xni/parser/XMLInputSource;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v9, 0x0

    move-object v2, v9

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/parsers/SecureProcessingConfiguration$ExternalEntityMonitor;->fEntityResolver:Lorg/apache/xerces/xni/parser/XMLEntityResolver;

    if-eqz v9, :cond_0

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/parsers/SecureProcessingConfiguration$ExternalEntityMonitor;->fEntityResolver:Lorg/apache/xerces/xni/parser/XMLEntityResolver;

    move-object v10, v1

    invoke-interface {v9, v10}, Lorg/apache/xerces/xni/parser/XMLEntityResolver;->resolveEntity(Lorg/apache/xerces/xni/XMLResourceIdentifier;)Lorg/apache/xerces/xni/parser/XMLInputSource;

    move-result-object v9

    move-object v2, v9

    :cond_0
    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/parsers/SecureProcessingConfiguration$ExternalEntityMonitor;->this$0:Lorg/apache/xerces/parsers/SecureProcessingConfiguration;

    invoke-static {v9}, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->access$100(Lorg/apache/xerces/parsers/SecureProcessingConfiguration;)Lorg/apache/xerces/util/SecurityManager;

    move-result-object v9

    if-eqz v9, :cond_2

    move-object v9, v1

    instance-of v9, v9, Lorg/apache/xerces/impl/XMLEntityDescription;

    if-eqz v9, :cond_2

    move-object v9, v1

    check-cast v9, Lorg/apache/xerces/impl/XMLEntityDescription;

    invoke-interface {v9}, Lorg/apache/xerces/impl/XMLEntityDescription;->getEntityName()Ljava/lang/String;

    move-result-object v9

    move-object v3, v9

    move-object v9, v3

    if-eqz v9, :cond_3

    move-object v9, v3

    const-string/jumbo v10, "%"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v9, 0x1

    :goto_0
    move v4, v9

    move-object v9, v2

    if-nez v9, :cond_1

    move-object v9, v1

    invoke-interface {v9}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v9

    move-object v5, v9

    move-object v9, v1

    invoke-interface {v9}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v9

    move-object v6, v9

    move-object v9, v1

    invoke-interface {v9}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v9

    move-object v7, v9

    new-instance v9, Lorg/apache/xerces/xni/parser/XMLInputSource;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v11, v5

    move-object v12, v6

    move-object v13, v7

    invoke-direct {v10, v11, v12, v13}, Lorg/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v9

    :cond_1
    move-object v9, v2

    invoke-virtual {v9}, Lorg/apache/xerces/xni/parser/XMLInputSource;->getCharacterStream()Ljava/io/Reader;

    move-result-object v9

    move-object v5, v9

    move-object v9, v5

    if-eqz v9, :cond_4

    move-object v9, v2

    new-instance v10, Lorg/apache/xerces/parsers/SecureProcessingConfiguration$ExternalEntityMonitor$ReaderMonitor;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v0

    move-object v13, v5

    move v14, v4

    invoke-direct {v11, v12, v13, v14}, Lorg/apache/xerces/parsers/SecureProcessingConfiguration$ExternalEntityMonitor$ReaderMonitor;-><init>(Lorg/apache/xerces/parsers/SecureProcessingConfiguration$ExternalEntityMonitor;Ljava/io/Reader;Z)V

    invoke-virtual {v9, v10}, Lorg/apache/xerces/xni/parser/XMLInputSource;->setCharacterStream(Ljava/io/Reader;)V

    :cond_2
    :goto_1
    move-object v9, v2

    move-object v0, v9

    return-object v0

    :cond_3
    const/4 v9, 0x0

    goto :goto_0

    :cond_4
    move-object v9, v2

    invoke-virtual {v9}, Lorg/apache/xerces/xni/parser/XMLInputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object v9

    move-object v6, v9

    move-object v9, v6

    if-eqz v9, :cond_5

    move-object v9, v2

    new-instance v10, Lorg/apache/xerces/parsers/SecureProcessingConfiguration$ExternalEntityMonitor$InputStreamMonitor;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v0

    move-object v13, v6

    move v14, v4

    invoke-direct {v11, v12, v13, v14}, Lorg/apache/xerces/parsers/SecureProcessingConfiguration$ExternalEntityMonitor$InputStreamMonitor;-><init>(Lorg/apache/xerces/parsers/SecureProcessingConfiguration$ExternalEntityMonitor;Ljava/io/InputStream;Z)V

    invoke-virtual {v9, v10}, Lorg/apache/xerces/xni/parser/XMLInputSource;->setByteStream(Ljava/io/InputStream;)V

    goto :goto_1

    :cond_5
    move-object v9, v1

    invoke-interface {v9}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v9

    move-object v7, v9

    new-instance v9, Ljava/net/URL;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v11, v7

    invoke-direct {v10, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object v8, v9

    move-object v9, v8

    invoke-virtual {v9}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v9

    move-object v6, v9

    move-object v9, v2

    new-instance v10, Lorg/apache/xerces/parsers/SecureProcessingConfiguration$ExternalEntityMonitor$InputStreamMonitor;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v0

    move-object v13, v6

    move v14, v4

    invoke-direct {v11, v12, v13, v14}, Lorg/apache/xerces/parsers/SecureProcessingConfiguration$ExternalEntityMonitor$InputStreamMonitor;-><init>(Lorg/apache/xerces/parsers/SecureProcessingConfiguration$ExternalEntityMonitor;Ljava/io/InputStream;Z)V

    invoke-virtual {v9, v10}, Lorg/apache/xerces/xni/parser/XMLInputSource;->setByteStream(Ljava/io/InputStream;)V

    goto :goto_1
.end method

.method public setEntityResolver(Lorg/apache/xerces/xni/parser/XMLEntityResolver;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/parsers/SecureProcessingConfiguration$ExternalEntityMonitor;->fEntityResolver:Lorg/apache/xerces/xni/parser/XMLEntityResolver;

    return-void
.end method
