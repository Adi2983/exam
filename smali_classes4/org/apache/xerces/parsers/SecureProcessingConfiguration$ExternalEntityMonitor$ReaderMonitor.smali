.class final Lorg/apache/xerces/parsers/SecureProcessingConfiguration$ExternalEntityMonitor$ReaderMonitor;
.super Ljava/io/FilterReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/parsers/SecureProcessingConfiguration$ExternalEntityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ReaderMonitor"
.end annotation


# instance fields
.field private final isPE:Z

.field private size:I

.field private final this$1:Lorg/apache/xerces/parsers/SecureProcessingConfiguration$ExternalEntityMonitor;


# direct methods
.method protected constructor <init>(Lorg/apache/xerces/parsers/SecureProcessingConfiguration$ExternalEntityMonitor;Ljava/io/Reader;Z)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v2

    invoke-direct {v4, v5}, Ljava/io/FilterReader;-><init>(Ljava/io/Reader;)V

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lorg/apache/xerces/parsers/SecureProcessingConfiguration$ExternalEntityMonitor$ReaderMonitor;->this$1:Lorg/apache/xerces/parsers/SecureProcessingConfiguration$ExternalEntityMonitor;

    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Lorg/apache/xerces/parsers/SecureProcessingConfiguration$ExternalEntityMonitor$ReaderMonitor;->size:I

    move-object v4, v0

    move v5, v3

    iput-boolean v5, v4, Lorg/apache/xerces/parsers/SecureProcessingConfiguration$ExternalEntityMonitor$ReaderMonitor;->isPE:Z

    return-void
.end method


# virtual methods
.method public read()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v2, v0

    invoke-super {v2}, Ljava/io/FilterReader;->read()I

    move-result v2

    move v1, v2

    move v2, v1

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Lorg/apache/xerces/parsers/SecureProcessingConfiguration$ExternalEntityMonitor$ReaderMonitor;->size:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lorg/apache/xerces/parsers/SecureProcessingConfiguration$ExternalEntityMonitor$ReaderMonitor;->size:I

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/SecureProcessingConfiguration$ExternalEntityMonitor$ReaderMonitor;->this$1:Lorg/apache/xerces/parsers/SecureProcessingConfiguration$ExternalEntityMonitor;

    invoke-static {v2}, Lorg/apache/xerces/parsers/SecureProcessingConfiguration$ExternalEntityMonitor;->access$000(Lorg/apache/xerces/parsers/SecureProcessingConfiguration$ExternalEntityMonitor;)Lorg/apache/xerces/parsers/SecureProcessingConfiguration;

    move-result-object v2

    move-object v3, v0

    iget v3, v3, Lorg/apache/xerces/parsers/SecureProcessingConfiguration$ExternalEntityMonitor$ReaderMonitor;->size:I

    const/4 v4, 0x1

    move-object v5, v0

    iget-boolean v5, v5, Lorg/apache/xerces/parsers/SecureProcessingConfiguration$ExternalEntityMonitor$ReaderMonitor;->isPE:Z

    invoke-virtual {v2, v3, v4, v5}, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->checkEntitySizeLimits(IIZ)V

    :cond_0
    move v2, v1

    move v0, v2

    return v0
.end method

.method public read([CII)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, v0

    move-object v6, v1

    move v7, v2

    move v8, v3

    invoke-super {v5, v6, v7, v8}, Ljava/io/FilterReader;->read([CII)I

    move-result v5

    move v4, v5

    move v5, v4

    if-lez v5, :cond_0

    move-object v5, v0

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    iget v6, v6, Lorg/apache/xerces/parsers/SecureProcessingConfiguration$ExternalEntityMonitor$ReaderMonitor;->size:I

    move v7, v4

    add-int/2addr v6, v7

    iput v6, v5, Lorg/apache/xerces/parsers/SecureProcessingConfiguration$ExternalEntityMonitor$ReaderMonitor;->size:I

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/SecureProcessingConfiguration$ExternalEntityMonitor$ReaderMonitor;->this$1:Lorg/apache/xerces/parsers/SecureProcessingConfiguration$ExternalEntityMonitor;

    invoke-static {v5}, Lorg/apache/xerces/parsers/SecureProcessingConfiguration$ExternalEntityMonitor;->access$000(Lorg/apache/xerces/parsers/SecureProcessingConfiguration$ExternalEntityMonitor;)Lorg/apache/xerces/parsers/SecureProcessingConfiguration;

    move-result-object v5

    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/parsers/SecureProcessingConfiguration$ExternalEntityMonitor$ReaderMonitor;->size:I

    move v7, v4

    move-object v8, v0

    iget-boolean v8, v8, Lorg/apache/xerces/parsers/SecureProcessingConfiguration$ExternalEntityMonitor$ReaderMonitor;->isPE:Z

    invoke-virtual {v5, v6, v7, v8}, Lorg/apache/xerces/parsers/SecureProcessingConfiguration;->checkEntitySizeLimits(IIZ)V

    :cond_0
    move v5, v4

    move v0, v5

    return v0
.end method
