.class public final Lorg/apache/xerces/parsers/SecureProcessingConfiguration;
.super Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xerces/parsers/SecureProcessingConfiguration$ExternalEntityMonitor;,
        Lorg/apache/xerces/parsers/SecureProcessingConfiguration$InternalEntityMonitor;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final ENTITY_EXPANSION_LIMIT_DEFAULT_VALUE:I = 0xfa00

.field private static final ENTITY_EXPANSION_LIMIT_PROPERTY_NAME:Ljava/lang/String; = "jdk.xml.entityExpansionLimit"

.field private static final ENTITY_RESOLVER_PROPERTY:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-resolver"

.field private static final EXTERNAL_GENERAL_ENTITIES:Ljava/lang/String; = "http://xml.org/sax/features/external-general-entities"

.field private static final EXTERNAL_PARAMETER_ENTITIES:Ljava/lang/String; = "http://xml.org/sax/features/external-parameter-entities"

.field private static final LOAD_EXTERNAL_DTD:Ljava/lang/String; = "http://apache.org/xml/features/nonvalidating/load-external-dtd"

.field private static final MAX_GENERAL_ENTITY_SIZE_LIMIT_DEFAULT_VALUE:I = 0x7fffffff

.field private static final MAX_GENERAL_ENTITY_SIZE_LIMIT_PROPERTY_NAME:Ljava/lang/String; = "jdk.xml.maxGeneralEntitySizeLimit"

.field private static final MAX_OCCUR_LIMIT_DEFAULT_VALUE:I = 0x1388

.field private static final MAX_OCCUR_LIMIT_PROPERTY_NAME:Ljava/lang/String; = "jdk.xml.maxOccur"

.field private static final MAX_PARAMETER_ENTITY_SIZE_LIMIT_DEFAULT_VALUE:I = 0x7fffffff

.field private static final MAX_PARAMETER_ENTITY_SIZE_LIMIT_PROPERTY_NAME:Ljava/lang/String; = "jdk.xml.maxParameterEntitySizeLimit"

.field private static final RESOLVE_EXTERNAL_ENTITIES_DEFAULT_VALUE:Z = true

.field private static final RESOLVE_EXTERNAL_ENTITIES_PROPERTY_NAME:Ljava/lang/String; = "jdk.xml.resolveExternalEntities"

.field private static final SECURITY_MANAGER_DEFAULT_ENTITY_EXPANSION_LIMIT:I = 0x186a0

.field private static final SECURITY_MANAGER_DEFAULT_MAX_OCCUR_NODE_LIMIT:I = 0xbb8

.field private static final SECURITY_MANAGER_PROPERTY:Ljava/lang/String; = "http://apache.org/xml/properties/security-manager"

.field private static final TOTAL_ENTITY_SIZE_LIMIT_DEFAULT_VALUE:I = 0x2faf080

.field private static final TOTAL_ENTITY_SIZE_LIMIT_PROPERTY_NAME:Ljava/lang/String; = "jdk.xml.totalEntitySizeLimit"

.field static class$org$apache$xerces$parsers$SecureProcessingConfiguration:Ljava/lang/Class;

.field private static jaxpProperties:Ljava/util/Properties;

.field private static lastModified:J


# instance fields
.field protected final ENTITY_EXPANSION_LIMIT_SYSTEM_VALUE:I

.field protected final MAX_GENERAL_ENTITY_SIZE_LIMIT_SYSTEM_VALUE:I

.field protected final MAX_OCCUR_LIMIT_SYSTEM_VALUE:I

.field protected final MAX_PARAMETER_ENTITY_SIZE_LIMIT_SYSTEM_VALUE:I

.field protected final RESOLVE_EXTERNAL_ENTITIES_SYSTEM_VALUE:Z

.field protected final TOTAL_ENTITY_SIZE_LIMIT_SYSTEM_VALUE:I

.field private final fExternalEntityMonitor:Lorg/apache/xerces/parsers/SecureProcessingConfiguration$ExternalEntityMonitor;

.field private fInternalEntityMonitor:Lorg/apache/xerces/parsers/SecureProcessingConfiguration$InternalEntityMonitor;

.field private final fJavaSecurityManagerEnabled:Z

.field private fLimitSpecified:Z

.field private fSecurityManager:Lorg/apache/xerces/util/SecurityManager;

.field private fTotalEntitySize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->isDebugEnabled()Z

    move-result v0

    sput-boolean v0, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->DEBUG:Z

    const/4 v0, 0x0

    sput-object v0, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->jaxpProperties:Ljava/util/Properties;

    const-wide/16 v0, -0x1

    sput-wide v0, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->lastModified:J

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;-><init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/util/SymbolTable;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;-><init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;-><init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;Lorg/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;-><init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->fTotalEntitySize:I

    move-object v4, v0

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v5

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    :goto_0
    iput-boolean v5, v4, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->fJavaSecurityManagerEnabled:Z

    move-object v4, v0

    move-object v5, v0

    const-string/jumbo v6, "jdk.xml.entityExpansionLimit"

    const v7, 0xfa00

    invoke-direct {v5, v6, v7}, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->getPropertyValue(Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->ENTITY_EXPANSION_LIMIT_SYSTEM_VALUE:I

    move-object v4, v0

    move-object v5, v0

    const-string/jumbo v6, "jdk.xml.maxOccur"

    const/16 v7, 0x1388

    invoke-direct {v5, v6, v7}, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->getPropertyValue(Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->MAX_OCCUR_LIMIT_SYSTEM_VALUE:I

    move-object v4, v0

    move-object v5, v0

    const-string/jumbo v6, "jdk.xml.totalEntitySizeLimit"

    const v7, 0x2faf080

    invoke-direct {v5, v6, v7}, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->getPropertyValue(Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->TOTAL_ENTITY_SIZE_LIMIT_SYSTEM_VALUE:I

    move-object v4, v0

    move-object v5, v0

    const-string/jumbo v6, "jdk.xml.maxGeneralEntitySizeLimit"

    const v7, 0x7fffffff

    invoke-direct {v5, v6, v7}, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->getPropertyValue(Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->MAX_GENERAL_ENTITY_SIZE_LIMIT_SYSTEM_VALUE:I

    move-object v4, v0

    move-object v5, v0

    const-string/jumbo v6, "jdk.xml.maxParameterEntitySizeLimit"

    const v7, 0x7fffffff

    invoke-direct {v5, v6, v7}, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->getPropertyValue(Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->MAX_PARAMETER_ENTITY_SIZE_LIMIT_SYSTEM_VALUE:I

    move-object v4, v0

    move-object v5, v0

    const-string/jumbo v6, "jdk.xml.resolveExternalEntities"

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->getPropertyValue(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v4, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->RESOLVE_EXTERNAL_ENTITIES_SYSTEM_VALUE:Z

    move-object v4, v0

    iget-boolean v4, v4, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->fJavaSecurityManagerEnabled:Z

    if-nez v4, :cond_0

    move-object v4, v0

    iget-boolean v4, v4, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->fLimitSpecified:Z

    if-eqz v4, :cond_2

    :cond_0
    move-object v4, v0

    iget-boolean v4, v4, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->RESOLVE_EXTERNAL_ENTITIES_SYSTEM_VALUE:Z

    if-nez v4, :cond_1

    move-object v4, v0

    const-string/jumbo v5, "http://xml.org/sax/features/external-general-entities"

    const/4 v6, 0x0

    invoke-super {v4, v5, v6}, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    move-object v4, v0

    const-string/jumbo v5, "http://xml.org/sax/features/external-parameter-entities"

    const/4 v6, 0x0

    invoke-super {v4, v5, v6}, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    move-object v4, v0

    const-string/jumbo v5, "http://apache.org/xml/features/nonvalidating/load-external-dtd"

    const/4 v6, 0x0

    invoke-super {v4, v5, v6}, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    :cond_1
    move-object v4, v0

    new-instance v5, Lorg/apache/xerces/util/SecurityManager;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Lorg/apache/xerces/util/SecurityManager;-><init>()V

    iput-object v5, v4, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->fSecurityManager:Lorg/apache/xerces/util/SecurityManager;

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->fSecurityManager:Lorg/apache/xerces/util/SecurityManager;

    move-object v5, v0

    iget v5, v5, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->ENTITY_EXPANSION_LIMIT_SYSTEM_VALUE:I

    invoke-virtual {v4, v5}, Lorg/apache/xerces/util/SecurityManager;->setEntityExpansionLimit(I)V

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->fSecurityManager:Lorg/apache/xerces/util/SecurityManager;

    move-object v5, v0

    iget v5, v5, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->MAX_OCCUR_LIMIT_SYSTEM_VALUE:I

    invoke-virtual {v4, v5}, Lorg/apache/xerces/util/SecurityManager;->setMaxOccurNodeLimit(I)V

    move-object v4, v0

    const-string/jumbo v5, "http://apache.org/xml/properties/security-manager"

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->fSecurityManager:Lorg/apache/xerces/util/SecurityManager;

    invoke-super {v4, v5, v6}, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    move-object v4, v0

    new-instance v5, Lorg/apache/xerces/parsers/SecureProcessingConfiguration$ExternalEntityMonitor;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Lorg/apache/xerces/parsers/SecureProcessingConfiguration$ExternalEntityMonitor;-><init>(Lorg/apache/xerces/parsers/SecureProcessingConfiguration;)V

    iput-object v5, v4, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->fExternalEntityMonitor:Lorg/apache/xerces/parsers/SecureProcessingConfiguration$ExternalEntityMonitor;

    move-object v4, v0

    const-string/jumbo v5, "http://apache.org/xml/properties/internal/entity-resolver"

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->fExternalEntityMonitor:Lorg/apache/xerces/parsers/SecureProcessingConfiguration$ExternalEntityMonitor;

    invoke-super {v4, v5, v6}, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_3
    const/4 v5, 0x0

    goto/16 :goto_0
.end method

.method static access$100(Lorg/apache/xerces/parsers/SecureProcessingConfiguration;)Lorg/apache/xerces/util/SecurityManager;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->fSecurityManager:Lorg/apache/xerces/util/SecurityManager;

    move-object v0, v1

    return-object v0
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 6

    move-object v0, p0

    move-object v2, v0

    :try_start_0
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v0, v2

    return-object v0

    :catch_0
    move-exception v2

    move-object v1, v2

    new-instance v2, Ljava/lang/NoClassDefFoundError;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private configurePipelineCommon(Z)V
    .locals 9

    move-object v0, p0

    move v1, p1

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->fSecurityManager:Lorg/apache/xerces/util/SecurityManager;

    if-eqz v4, :cond_1

    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->fTotalEntitySize:I

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->fInternalEntityMonitor:Lorg/apache/xerces/parsers/SecureProcessingConfiguration$InternalEntityMonitor;

    if-nez v4, :cond_0

    move-object v4, v0

    new-instance v5, Lorg/apache/xerces/parsers/SecureProcessingConfiguration$InternalEntityMonitor;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Lorg/apache/xerces/parsers/SecureProcessingConfiguration$InternalEntityMonitor;-><init>(Lorg/apache/xerces/parsers/SecureProcessingConfiguration;)V

    iput-object v5, v4, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->fInternalEntityMonitor:Lorg/apache/xerces/parsers/SecureProcessingConfiguration$InternalEntityMonitor;

    :cond_0
    move v4, v1

    if-eqz v4, :cond_2

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->fDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    move-object v2, v4

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->fDTDProcessor:Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;

    move-object v3, v4

    :goto_0
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->fInternalEntityMonitor:Lorg/apache/xerces/parsers/SecureProcessingConfiguration$InternalEntityMonitor;

    invoke-interface {v4, v5}, Lorg/apache/xerces/xni/parser/XMLDTDScanner;->setDTDHandler(Lorg/apache/xerces/xni/XMLDTDHandler;)V

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->fInternalEntityMonitor:Lorg/apache/xerces/parsers/SecureProcessingConfiguration$InternalEntityMonitor;

    move-object v5, v2

    invoke-virtual {v4, v5}, Lorg/apache/xerces/parsers/SecureProcessingConfiguration$InternalEntityMonitor;->setDTDSource(Lorg/apache/xerces/xni/parser/XMLDTDSource;)V

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->fInternalEntityMonitor:Lorg/apache/xerces/parsers/SecureProcessingConfiguration$InternalEntityMonitor;

    move-object v5, v3

    invoke-virtual {v4, v5}, Lorg/apache/xerces/parsers/SecureProcessingConfiguration$InternalEntityMonitor;->setDTDHandler(Lorg/apache/xerces/xni/XMLDTDHandler;)V

    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->fInternalEntityMonitor:Lorg/apache/xerces/parsers/SecureProcessingConfiguration$InternalEntityMonitor;

    invoke-virtual {v4, v5}, Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;->setDTDSource(Lorg/apache/xerces/xni/parser/XMLDTDSource;)V

    :cond_1
    return-void

    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->fXML11DTDScanner:Lorg/apache/xerces/impl/XML11DTDScannerImpl;

    move-object v2, v4

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->fXML11DTDProcessor:Lorg/apache/xerces/impl/dtd/XML11DTDProcessor;

    move-object v3, v4

    goto :goto_0
.end method

.method private static debugPrintln(Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    sget-boolean v1, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "XERCES: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private getPropertyValue(Ljava/lang/String;I)I
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object v14, v2

    :try_start_0
    invoke-static {v14}, Lorg/apache/xerces/parsers/SecuritySupport;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object v4, v14

    move-object v14, v4

    if-eqz v14, :cond_2

    move-object v14, v4

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_2

    sget-boolean v14, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->DEBUG:Z

    if-eqz v14, :cond_0

    new-instance v14, Ljava/lang/StringBuffer;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v15, "found system property \""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    move-object v15, v2

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    const-string/jumbo v15, "\", value="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    move-object v15, v4

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->debugPrintln(Ljava/lang/String;)V

    :cond_0
    move-object v14, v4

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    move v5, v14

    move-object v14, v1

    const/4 v15, 0x1

    iput-boolean v15, v14, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->fLimitSpecified:Z
    :try_end_0
    .catch Ljava/lang/VirtualMachineError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move v14, v5

    if-lez v14, :cond_1

    move v14, v5

    move v1, v14

    :goto_0
    return v1

    :cond_1
    const v14, 0x7fffffff

    move v1, v14

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v14, 0x0

    move v4, v14

    const/4 v14, 0x0

    move-object v5, v14

    :try_start_1
    const-string/jumbo v14, "java.home"

    invoke-static {v14}, Lorg/apache/xerces/parsers/SecuritySupport;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object v6, v14

    new-instance v14, Ljava/lang/StringBuffer;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    move-object v15, v6

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    const-string/jumbo v15, "lib"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    const-string/jumbo v15, "jaxp.properties"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    move-object v7, v14

    new-instance v14, Ljava/io/File;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    move-object/from16 v16, v7

    invoke-direct/range {v15 .. v16}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v5, v14

    move-object v14, v5

    invoke-static {v14}, Lorg/apache/xerces/parsers/SecuritySupport;->getFileExists(Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/VirtualMachineError; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_7

    move-result v14

    move v4, v14

    :goto_2
    :try_start_2
    sget-object v14, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->class$org$apache$xerces$parsers$SecureProcessingConfiguration:Ljava/lang/Class;

    if-nez v14, :cond_7

    const-string/jumbo v14, "org.apache.xerces.parsers.SecureProcessingConfiguration"

    invoke-static {v14}, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    sput-object v15, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->class$org$apache$xerces$parsers$SecureProcessingConfiguration:Ljava/lang/Class;

    :goto_3
    move-object v6, v14

    move-object v14, v6

    monitor-enter v14
    :try_end_2
    .catch Ljava/lang/VirtualMachineError; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/ThreadDeath; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_7

    const/4 v14, 0x0

    move v7, v14

    const/4 v14, 0x0

    move-object v8, v14

    :try_start_3
    sget-wide v14, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->lastModified:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-ltz v14, :cond_9

    move v14, v4

    if-eqz v14, :cond_8

    sget-wide v14, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->lastModified:J

    move-object/from16 v16, v5

    invoke-static/range {v16 .. v16}, Lorg/apache/xerces/parsers/SecuritySupport;->getLastModified(Ljava/io/File;)J

    move-result-wide v16

    move-wide/from16 v20, v16

    move-wide/from16 v16, v20

    move-wide/from16 v18, v20

    sput-wide v18, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->lastModified:J

    cmp-long v14, v14, v16

    if-gez v14, :cond_8

    const/4 v14, 0x1

    move v7, v14

    :cond_3
    :goto_4
    move v14, v7

    const/4 v15, 0x1

    if-ne v14, v15, :cond_4

    new-instance v14, Ljava/util/Properties;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    invoke-direct {v15}, Ljava/util/Properties;-><init>()V

    sput-object v14, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->jaxpProperties:Ljava/util/Properties;

    move-object v14, v5

    invoke-static {v14}, Lorg/apache/xerces/parsers/SecuritySupport;->getFileInputStream(Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object v14

    move-object v8, v14

    sget-object v14, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->jaxpProperties:Ljava/util/Properties;

    move-object v15, v8

    invoke-virtual {v14, v15}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_4
    move-object v14, v8

    if-eqz v14, :cond_5

    move-object v14, v8

    :try_start_4
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_a
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_5
    :goto_5
    move-object v14, v6

    :try_start_5
    monitor-exit v14
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    sget-object v14, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->jaxpProperties:Ljava/util/Properties;

    if-eqz v14, :cond_d

    sget-object v14, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->jaxpProperties:Ljava/util/Properties;

    move-object v15, v2

    invoke-virtual {v14, v15}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object v7, v14

    move-object v14, v7

    if-eqz v14, :cond_d

    move-object v14, v7

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_d

    sget-boolean v14, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->DEBUG:Z

    if-eqz v14, :cond_6

    new-instance v14, Ljava/lang/StringBuffer;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v15, "found \""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    move-object v15, v2

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    const-string/jumbo v15, "\" in jaxp.properties, value="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    move-object v15, v7

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->debugPrintln(Ljava/lang/String;)V

    :cond_6
    move-object v14, v7

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    move v8, v14

    move-object v14, v1

    const/4 v15, 0x1

    iput-boolean v15, v14, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->fLimitSpecified:Z
    :try_end_6
    .catch Ljava/lang/VirtualMachineError; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/ThreadDeath; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_7

    move v14, v8

    if-lez v14, :cond_c

    move v14, v8

    move v1, v14

    goto/16 :goto_0

    :catch_0
    move-exception v14

    move-object v4, v14

    move-object v14, v4

    throw v14

    :catch_1
    move-exception v14

    move-object v5, v14

    move-object v14, v5

    throw v14

    :catch_2
    move-exception v14

    move-object v6, v14

    sget-boolean v14, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->DEBUG:Z

    if-eqz v14, :cond_2

    new-instance v14, Ljava/lang/StringBuffer;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    move-object v15, v6

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    const-string/jumbo v15, ": "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    move-object v15, v6

    invoke-virtual {v15}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->debugPrintln(Ljava/lang/String;)V

    move-object v14, v6

    invoke-virtual {v14}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    :catch_3
    move-exception v14

    move-object v6, v14

    const-wide/16 v14, -0x1

    :try_start_7
    sput-wide v14, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->lastModified:J

    const/4 v14, 0x0

    sput-object v14, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->jaxpProperties:Ljava/util/Properties;
    :try_end_7
    .catch Ljava/lang/VirtualMachineError; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/ThreadDeath; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_7

    goto/16 :goto_2

    :catch_4
    move-exception v14

    move-object v4, v14

    move-object v14, v4

    throw v14

    :cond_7
    :try_start_8
    sget-object v14, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->class$org$apache$xerces$parsers$SecureProcessingConfiguration:Ljava/lang/Class;
    :try_end_8
    .catch Ljava/lang/VirtualMachineError; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/ThreadDeath; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_7

    goto/16 :goto_3

    :cond_8
    move v14, v4

    if-nez v14, :cond_3

    const-wide/16 v14, -0x1

    :try_start_9
    sput-wide v14, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->lastModified:J

    const/4 v14, 0x0

    sput-object v14, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->jaxpProperties:Ljava/util/Properties;

    goto/16 :goto_4

    :cond_9
    move v14, v4

    if-eqz v14, :cond_3

    const/4 v14, 0x1

    move v7, v14

    move-object v14, v5

    invoke-static {v14}, Lorg/apache/xerces/parsers/SecuritySupport;->getLastModified(Ljava/io/File;)J

    move-result-wide v14

    sput-wide v14, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->lastModified:J
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_4

    :catch_5
    move-exception v14

    move-object v9, v14

    const-wide/16 v14, -0x1

    :try_start_a
    sput-wide v14, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->lastModified:J

    const/4 v14, 0x0

    sput-object v14, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->jaxpProperties:Ljava/util/Properties;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-object v14, v8

    if-eqz v14, :cond_a

    move-object v14, v8

    :try_start_b
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :cond_a
    :goto_6
    goto/16 :goto_5

    :catchall_0
    move-exception v14

    move-object v10, v14

    move-object v14, v8

    if-eqz v14, :cond_b

    move-object v14, v8

    :try_start_c
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :cond_b
    :goto_7
    move-object v14, v10

    :try_start_d
    throw v14
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :catchall_1
    move-exception v14

    move-object v13, v14

    move-object v14, v6

    :try_start_e
    monitor-exit v14

    move-object v14, v13

    throw v14
    :try_end_e
    .catch Ljava/lang/VirtualMachineError; {:try_start_e .. :try_end_e} :catch_4
    .catch Ljava/lang/ThreadDeath; {:try_start_e .. :try_end_e} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_7

    :catch_6
    move-exception v14

    move-object v5, v14

    move-object v14, v5

    throw v14

    :cond_c
    const v14, 0x7fffffff

    move v1, v14

    goto/16 :goto_0

    :cond_d
    :goto_8
    move v14, v3

    move v1, v14

    goto/16 :goto_0

    :catch_7
    move-exception v14

    move-object v6, v14

    sget-boolean v14, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->DEBUG:Z

    if-eqz v14, :cond_d

    new-instance v14, Ljava/lang/StringBuffer;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    move-object v15, v6

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    const-string/jumbo v15, ": "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    move-object v15, v6

    invoke-virtual {v15}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->debugPrintln(Ljava/lang/String;)V

    move-object v14, v6

    invoke-virtual {v14}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_8

    :catch_8
    move-exception v14

    move-object v12, v14

    goto :goto_7

    :catch_9
    move-exception v14

    move-object v12, v14

    goto :goto_6

    :catch_a
    move-exception v14

    move-object v12, v14

    goto/16 :goto_5
.end method

.method private getPropertyValue(Ljava/lang/String;Z)Z
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object v14, v2

    :try_start_0
    invoke-static {v14}, Lorg/apache/xerces/parsers/SecuritySupport;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object v4, v14

    move-object v14, v4

    if-eqz v14, :cond_1

    move-object v14, v4

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_1

    sget-boolean v14, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->DEBUG:Z

    if-eqz v14, :cond_0

    new-instance v14, Ljava/lang/StringBuffer;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v15, "found system property \""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    move-object v15, v2

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    const-string/jumbo v15, "\", value="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    move-object v15, v4

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->debugPrintln(Ljava/lang/String;)V

    :cond_0
    move-object v14, v4

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    move v5, v14

    move-object v14, v1

    const/4 v15, 0x1

    iput-boolean v15, v14, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->fLimitSpecified:Z
    :try_end_0
    .catch Ljava/lang/VirtualMachineError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move v14, v5

    move v1, v14

    :goto_0
    return v1

    :cond_1
    :goto_1
    const/4 v14, 0x0

    move v4, v14

    const/4 v14, 0x0

    move-object v5, v14

    :try_start_1
    const-string/jumbo v14, "java.home"

    invoke-static {v14}, Lorg/apache/xerces/parsers/SecuritySupport;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object v6, v14

    new-instance v14, Ljava/lang/StringBuffer;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    move-object v15, v6

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    const-string/jumbo v15, "lib"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    const-string/jumbo v15, "jaxp.properties"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    move-object v7, v14

    new-instance v14, Ljava/io/File;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    move-object/from16 v16, v7

    invoke-direct/range {v15 .. v16}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v5, v14

    move-object v14, v5

    invoke-static {v14}, Lorg/apache/xerces/parsers/SecuritySupport;->getFileExists(Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/VirtualMachineError; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_7

    move-result v14

    move v4, v14

    :goto_2
    :try_start_2
    sget-object v14, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->class$org$apache$xerces$parsers$SecureProcessingConfiguration:Ljava/lang/Class;

    if-nez v14, :cond_6

    const-string/jumbo v14, "org.apache.xerces.parsers.SecureProcessingConfiguration"

    invoke-static {v14}, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    sput-object v15, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->class$org$apache$xerces$parsers$SecureProcessingConfiguration:Ljava/lang/Class;

    :goto_3
    move-object v6, v14

    move-object v14, v6

    monitor-enter v14
    :try_end_2
    .catch Ljava/lang/VirtualMachineError; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/ThreadDeath; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_7

    const/4 v14, 0x0

    move v7, v14

    const/4 v14, 0x0

    move-object v8, v14

    :try_start_3
    sget-wide v14, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->lastModified:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-ltz v14, :cond_8

    move v14, v4

    if-eqz v14, :cond_7

    sget-wide v14, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->lastModified:J

    move-object/from16 v16, v5

    invoke-static/range {v16 .. v16}, Lorg/apache/xerces/parsers/SecuritySupport;->getLastModified(Ljava/io/File;)J

    move-result-wide v16

    move-wide/from16 v20, v16

    move-wide/from16 v16, v20

    move-wide/from16 v18, v20

    sput-wide v18, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->lastModified:J

    cmp-long v14, v14, v16

    if-gez v14, :cond_7

    const/4 v14, 0x1

    move v7, v14

    :cond_2
    :goto_4
    move v14, v7

    const/4 v15, 0x1

    if-ne v14, v15, :cond_3

    new-instance v14, Ljava/util/Properties;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    invoke-direct {v15}, Ljava/util/Properties;-><init>()V

    sput-object v14, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->jaxpProperties:Ljava/util/Properties;

    move-object v14, v5

    invoke-static {v14}, Lorg/apache/xerces/parsers/SecuritySupport;->getFileInputStream(Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object v14

    move-object v8, v14

    sget-object v14, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->jaxpProperties:Ljava/util/Properties;

    move-object v15, v8

    invoke-virtual {v14, v15}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    move-object v14, v8

    if-eqz v14, :cond_4

    move-object v14, v8

    :try_start_4
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_a
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_4
    :goto_5
    move-object v14, v6

    :try_start_5
    monitor-exit v14
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    sget-object v14, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->jaxpProperties:Ljava/util/Properties;

    if-eqz v14, :cond_b

    sget-object v14, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->jaxpProperties:Ljava/util/Properties;

    move-object v15, v2

    invoke-virtual {v14, v15}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object v7, v14

    move-object v14, v7

    if-eqz v14, :cond_b

    move-object v14, v7

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_b

    sget-boolean v14, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->DEBUG:Z

    if-eqz v14, :cond_5

    new-instance v14, Ljava/lang/StringBuffer;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v15, "found \""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    move-object v15, v2

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    const-string/jumbo v15, "\" in jaxp.properties, value="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    move-object v15, v7

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->debugPrintln(Ljava/lang/String;)V

    :cond_5
    move-object v14, v7

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    move v8, v14

    move-object v14, v1

    const/4 v15, 0x1

    iput-boolean v15, v14, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->fLimitSpecified:Z
    :try_end_6
    .catch Ljava/lang/VirtualMachineError; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/ThreadDeath; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_7

    move v14, v8

    move v1, v14

    goto/16 :goto_0

    :catch_0
    move-exception v14

    move-object v4, v14

    move-object v14, v4

    throw v14

    :catch_1
    move-exception v14

    move-object v5, v14

    move-object v14, v5

    throw v14

    :catch_2
    move-exception v14

    move-object v6, v14

    sget-boolean v14, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->DEBUG:Z

    if-eqz v14, :cond_1

    new-instance v14, Ljava/lang/StringBuffer;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    move-object v15, v6

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    const-string/jumbo v15, ": "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    move-object v15, v6

    invoke-virtual {v15}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->debugPrintln(Ljava/lang/String;)V

    move-object v14, v6

    invoke-virtual {v14}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    :catch_3
    move-exception v14

    move-object v6, v14

    const-wide/16 v14, -0x1

    :try_start_7
    sput-wide v14, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->lastModified:J

    const/4 v14, 0x0

    sput-object v14, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->jaxpProperties:Ljava/util/Properties;
    :try_end_7
    .catch Ljava/lang/VirtualMachineError; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/ThreadDeath; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_7

    goto/16 :goto_2

    :catch_4
    move-exception v14

    move-object v4, v14

    move-object v14, v4

    throw v14

    :cond_6
    :try_start_8
    sget-object v14, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->class$org$apache$xerces$parsers$SecureProcessingConfiguration:Ljava/lang/Class;
    :try_end_8
    .catch Ljava/lang/VirtualMachineError; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/ThreadDeath; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_7

    goto/16 :goto_3

    :cond_7
    move v14, v4

    if-nez v14, :cond_2

    const-wide/16 v14, -0x1

    :try_start_9
    sput-wide v14, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->lastModified:J

    const/4 v14, 0x0

    sput-object v14, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->jaxpProperties:Ljava/util/Properties;

    goto/16 :goto_4

    :cond_8
    move v14, v4

    if-eqz v14, :cond_2

    const/4 v14, 0x1

    move v7, v14

    move-object v14, v5

    invoke-static {v14}, Lorg/apache/xerces/parsers/SecuritySupport;->getLastModified(Ljava/io/File;)J

    move-result-wide v14

    sput-wide v14, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->lastModified:J
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_4

    :catch_5
    move-exception v14

    move-object v9, v14

    const-wide/16 v14, -0x1

    :try_start_a
    sput-wide v14, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->lastModified:J

    const/4 v14, 0x0

    sput-object v14, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->jaxpProperties:Ljava/util/Properties;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-object v14, v8

    if-eqz v14, :cond_9

    move-object v14, v8

    :try_start_b
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :cond_9
    :goto_6
    goto/16 :goto_5

    :catchall_0
    move-exception v14

    move-object v10, v14

    move-object v14, v8

    if-eqz v14, :cond_a

    move-object v14, v8

    :try_start_c
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :cond_a
    :goto_7
    move-object v14, v10

    :try_start_d
    throw v14
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :catchall_1
    move-exception v14

    move-object v13, v14

    move-object v14, v6

    :try_start_e
    monitor-exit v14

    move-object v14, v13

    throw v14
    :try_end_e
    .catch Ljava/lang/VirtualMachineError; {:try_start_e .. :try_end_e} :catch_4
    .catch Ljava/lang/ThreadDeath; {:try_start_e .. :try_end_e} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_7

    :catch_6
    move-exception v14

    move-object v5, v14

    move-object v14, v5

    throw v14

    :cond_b
    :goto_8
    move v14, v3

    move v1, v14

    goto/16 :goto_0

    :catch_7
    move-exception v14

    move-object v6, v14

    sget-boolean v14, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->DEBUG:Z

    if-eqz v14, :cond_b

    new-instance v14, Ljava/lang/StringBuffer;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    move-object v15, v6

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    const-string/jumbo v15, ": "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    move-object v15, v6

    invoke-virtual {v15}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->debugPrintln(Ljava/lang/String;)V

    move-object v14, v6

    invoke-virtual {v14}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_8

    :catch_8
    move-exception v14

    move-object v12, v14

    goto :goto_7

    :catch_9
    move-exception v14

    move-object v12, v14

    goto :goto_6

    :catch_a
    move-exception v14

    move-object v12, v14

    goto/16 :goto_5
.end method

.method private static isDebugEnabled()Z
    .locals 3

    :try_start_0
    const-string/jumbo v1, "xerces.debug"

    invoke-static {v1}, Lorg/apache/xerces/parsers/SecuritySupport;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    move-object v1, v0

    if-eqz v1, :cond_0

    const-string/jumbo v1, "false"

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    :goto_1
    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v0, v1

    const/4 v1, 0x0

    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method protected checkEntitySizeLimits(IIZ)V
    .locals 14

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object v4, v0

    move-object v13, v4

    move-object v4, v13

    move-object v5, v13

    iget v5, v5, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->fTotalEntitySize:I

    move v6, v2

    add-int/2addr v5, v6

    iput v5, v4, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->fTotalEntitySize:I

    move-object v4, v0

    iget v4, v4, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->fTotalEntitySize:I

    move-object v5, v0

    iget v5, v5, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->TOTAL_ENTITY_SIZE_LIMIT_SYSTEM_VALUE:I

    if-le v4, v5, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v5, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v6, "TotalEntitySizeLimitExceeded"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/Integer;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    move-object v12, v0

    iget v12, v12, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->TOTAL_ENTITY_SIZE_LIMIT_SYSTEM_VALUE:I

    invoke-direct {v11, v12}, Ljava/lang/Integer;-><init>(I)V

    aput-object v10, v8, v9

    const/4 v8, 0x2

    invoke-virtual {v4, v5, v6, v7, v8}, Lorg/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    move-result-object v4

    :cond_0
    move v4, v3

    if-eqz v4, :cond_2

    move v4, v1

    move-object v5, v0

    iget v5, v5, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->MAX_PARAMETER_ENTITY_SIZE_LIMIT_SYSTEM_VALUE:I

    if-le v4, v5, :cond_1

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v5, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v6, "MaxParameterEntitySizeLimitExceeded"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/Integer;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    move-object v12, v0

    iget v12, v12, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->MAX_PARAMETER_ENTITY_SIZE_LIMIT_SYSTEM_VALUE:I

    invoke-direct {v11, v12}, Ljava/lang/Integer;-><init>(I)V

    aput-object v10, v8, v9

    const/4 v8, 0x2

    invoke-virtual {v4, v5, v6, v7, v8}, Lorg/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    move-result-object v4

    :cond_1
    :goto_0
    return-void

    :cond_2
    move v4, v1

    move-object v5, v0

    iget v5, v5, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->MAX_GENERAL_ENTITY_SIZE_LIMIT_SYSTEM_VALUE:I

    if-le v4, v5, :cond_1

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v5, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v6, "MaxGeneralEntitySizeLimitExceeded"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/Integer;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    move-object v12, v0

    iget v12, v12, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->MAX_GENERAL_ENTITY_SIZE_LIMIT_SYSTEM_VALUE:I

    invoke-direct {v11, v12}, Ljava/lang/Integer;-><init>(I)V

    aput-object v10, v8, v9

    const/4 v8, 0x2

    invoke-virtual {v4, v5, v6, v7, v8}, Lorg/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method protected configurePipeline()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->configurePipeline()V

    move-object v1, v0

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->configurePipelineCommon(Z)V

    return-void
.end method

.method protected configureXML11Pipeline()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->configureXML11Pipeline()V

    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->configurePipelineCommon(Z)V

    return-void
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v2, "http://apache.org/xml/properties/security-manager"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->fSecurityManager:Lorg/apache/xerces/util/SecurityManager;

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v2, "http://apache.org/xml/properties/internal/entity-resolver"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->fExternalEntityMonitor:Lorg/apache/xerces/parsers/SecureProcessingConfiguration$ExternalEntityMonitor;

    move-object v0, v2

    goto :goto_0

    :cond_1
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const-string/jumbo v3, "http://apache.org/xml/properties/security-manager"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v3, v2

    if-nez v3, :cond_0

    move-object v3, v0

    iget-boolean v3, v3, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->fJavaSecurityManagerEnabled:Z

    if-eqz v3, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object v3, v0

    move-object v4, v2

    check-cast v4, Lorg/apache/xerces/util/SecurityManager;

    iput-object v4, v3, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->fSecurityManager:Lorg/apache/xerces/util/SecurityManager;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->fSecurityManager:Lorg/apache/xerces/util/SecurityManager;

    if-eqz v3, :cond_2

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->fSecurityManager:Lorg/apache/xerces/util/SecurityManager;

    invoke-virtual {v3}, Lorg/apache/xerces/util/SecurityManager;->getEntityExpansionLimit()I

    move-result v3

    const v4, 0x186a0

    if-ne v3, v4, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->fSecurityManager:Lorg/apache/xerces/util/SecurityManager;

    move-object v4, v0

    iget v4, v4, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->ENTITY_EXPANSION_LIMIT_SYSTEM_VALUE:I

    invoke-virtual {v3, v4}, Lorg/apache/xerces/util/SecurityManager;->setEntityExpansionLimit(I)V

    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->fSecurityManager:Lorg/apache/xerces/util/SecurityManager;

    invoke-virtual {v3}, Lorg/apache/xerces/util/SecurityManager;->getMaxOccurNodeLimit()I

    move-result v3

    const/16 v4, 0xbb8

    if-ne v3, v4, :cond_2

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->fSecurityManager:Lorg/apache/xerces/util/SecurityManager;

    move-object v4, v0

    iget v4, v4, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->MAX_OCCUR_LIMIT_SYSTEM_VALUE:I

    invoke-virtual {v3, v4}, Lorg/apache/xerces/util/SecurityManager;->setMaxOccurNodeLimit(I)V

    :cond_2
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v3, "http://apache.org/xml/properties/internal/entity-resolver"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->fExternalEntityMonitor:Lorg/apache/xerces/parsers/SecureProcessingConfiguration$ExternalEntityMonitor;

    move-object v4, v2

    check-cast v4, Lorg/apache/xerces/xni/parser/XMLEntityResolver;

    invoke-virtual {v3, v4}, Lorg/apache/xerces/parsers/SecureProcessingConfiguration$ExternalEntityMonitor;->setEntityResolver(Lorg/apache/xerces/xni/parser/XMLEntityResolver;)V

    goto :goto_0
.end method
