.class Ljavax/xml/bind/util/JAXBSource$1;
.super Ljava/lang/Object;
.source "JAXBSource.java"

# interfaces
.implements Lorg/xml/sax/XMLReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/xml/bind/util/JAXBSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private dtdHandler:Lorg/xml/sax/DTDHandler;

.field private entityResolver:Lorg/xml/sax/EntityResolver;

.field private errorHandler:Lorg/xml/sax/ErrorHandler;

.field private lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

.field private repeater:Lorg/xml/sax/helpers/XMLFilterImpl;

.field final synthetic this$0:Ljavax/xml/bind/util/JAXBSource;


# direct methods
.method constructor <init>(Ljavax/xml/bind/util/JAXBSource;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 217
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/util/JAXBSource$1;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavax/xml/bind/util/JAXBSource$1;->this$0:Ljavax/xml/bind/util/JAXBSource;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 192
    move-object v2, v0

    new-instance v3, Lorg/xml/sax/helpers/XMLFilterImpl;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lorg/xml/sax/helpers/XMLFilterImpl;-><init>()V

    iput-object v3, v2, Ljavax/xml/bind/util/JAXBSource$1;->repeater:Lorg/xml/sax/helpers/XMLFilterImpl;

    return-void
.end method


# virtual methods
.method public getContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 2

    .prologue
    .line 198
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/util/JAXBSource$1;
    move-object v1, v0

    iget-object v1, v1, Ljavax/xml/bind/util/JAXBSource$1;->repeater:Lorg/xml/sax/helpers/XMLFilterImpl;

    invoke-virtual {v1}, Lorg/xml/sax/helpers/XMLFilterImpl;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavax/xml/bind/util/JAXBSource$1;
    return-object v0
.end method

.method public getDTDHandler()Lorg/xml/sax/DTDHandler;
    .locals 2

    .prologue
    .line 186
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/util/JAXBSource$1;
    move-object v1, v0

    iget-object v1, v1, Ljavax/xml/bind/util/JAXBSource$1;->dtdHandler:Lorg/xml/sax/DTDHandler;

    move-object v0, v1

    .end local v0    # "this":Ljavax/xml/bind/util/JAXBSource$1;
    return-object v0
.end method

.method public getEntityResolver()Lorg/xml/sax/EntityResolver;
    .locals 2

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/util/JAXBSource$1;
    move-object v1, v0

    iget-object v1, v1, Ljavax/xml/bind/util/JAXBSource$1;->entityResolver:Lorg/xml/sax/EntityResolver;

    move-object v0, v1

    .end local v0    # "this":Ljavax/xml/bind/util/JAXBSource$1;
    return-object v0
.end method

.method public getErrorHandler()Lorg/xml/sax/ErrorHandler;
    .locals 2

    .prologue
    .line 206
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/util/JAXBSource$1;
    move-object v1, v0

    iget-object v1, v1, Ljavax/xml/bind/util/JAXBSource$1;->errorHandler:Lorg/xml/sax/ErrorHandler;

    move-object v0, v1

    .end local v0    # "this":Ljavax/xml/bind/util/JAXBSource$1;
    return-object v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;
        }
    .end annotation

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/util/JAXBSource$1;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v1

    const-string/jumbo v3, "http://xml.org/sax/features/namespaces"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 141
    const/4 v2, 0x1

    move v0, v2

    .line 143
    .end local v0    # "this":Ljavax/xml/bind/util/JAXBSource$1;
    :goto_0
    return v0

    .line 142
    .restart local v0    # "this":Ljavax/xml/bind/util/JAXBSource$1;
    :cond_0
    move-object v2, v1

    const-string/jumbo v3, "http://xml.org/sax/features/namespace-prefixes"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 143
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 144
    :cond_1
    new-instance v2, Lorg/xml/sax/SAXNotRecognizedException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;
        }
    .end annotation

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/util/JAXBSource$1;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    const-string/jumbo v2, "http://xml.org/sax/properties/lexical-handler"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 157
    move-object v2, v0

    iget-object v2, v2, Ljavax/xml/bind/util/JAXBSource$1;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    move-object v0, v2

    .end local v0    # "this":Ljavax/xml/bind/util/JAXBSource$1;
    return-object v0

    .line 159
    .restart local v0    # "this":Ljavax/xml/bind/util/JAXBSource$1;
    :cond_0
    new-instance v2, Lorg/xml/sax/SAXNotRecognizedException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public parse()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 222
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/util/JAXBSource$1;
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Ljavax/xml/bind/util/JAXBSource$1;->this$0:Ljavax/xml/bind/util/JAXBSource;

    invoke-static {v3}, Ljavax/xml/bind/util/JAXBSource;->access$100(Ljavax/xml/bind/util/JAXBSource;)Ljavax/xml/bind/Marshaller;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavax/xml/bind/util/JAXBSource$1;->this$0:Ljavax/xml/bind/util/JAXBSource;

    invoke-static {v4}, Ljavax/xml/bind/util/JAXBSource;->access$000(Ljavax/xml/bind/util/JAXBSource;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljavax/xml/bind/util/JAXBSource$1;->repeater:Lorg/xml/sax/helpers/XMLFilterImpl;

    invoke-interface {v3, v4, v5}, Ljavax/xml/bind/Marshaller;->marshal(Ljava/lang/Object;Lorg/xml/sax/ContentHandler;)V
    :try_end_0
    .catch Ljavax/xml/bind/JAXBException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    .line 238
    return-void

    .line 223
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 225
    .local v1, "e":Ljavax/xml/bind/JAXBException;
    new-instance v3, Lorg/xml/sax/SAXParseException;

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    move-object v5, v1

    invoke-virtual {v5}, Ljavax/xml/bind/JAXBException;->getMessage()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, -0x1

    move-object v10, v1

    invoke-direct/range {v4 .. v10}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Exception;)V

    move-object v2, v3

    .line 231
    .local v2, "se":Lorg/xml/sax/SAXParseException;
    move-object v3, v0

    iget-object v3, v3, Ljavax/xml/bind/util/JAXBSource$1;->errorHandler:Lorg/xml/sax/ErrorHandler;

    if-eqz v3, :cond_0

    .line 232
    move-object v3, v0

    iget-object v3, v3, Ljavax/xml/bind/util/JAXBSource$1;->errorHandler:Lorg/xml/sax/ErrorHandler;

    move-object v4, v2

    invoke-interface {v3, v4}, Lorg/xml/sax/ErrorHandler;->fatalError(Lorg/xml/sax/SAXParseException;)V

    .line 236
    :cond_0
    move-object v3, v2

    throw v3
.end method

.method public parse(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 214
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/util/JAXBSource$1;
    move-object v1, p1

    .local v1, "systemId":Ljava/lang/String;
    move-object v2, v0

    invoke-virtual {v2}, Ljavax/xml/bind/util/JAXBSource$1;->parse()V

    .line 215
    return-void
.end method

.method public parse(Lorg/xml/sax/InputSource;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 210
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/util/JAXBSource$1;
    move-object v1, p1

    .local v1, "input":Lorg/xml/sax/InputSource;
    move-object v2, v0

    invoke-virtual {v2}, Ljavax/xml/bind/util/JAXBSource$1;->parse()V

    .line 211
    return-void
.end method

.method public setContentHandler(Lorg/xml/sax/ContentHandler;)V
    .locals 4

    .prologue
    .line 195
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/util/JAXBSource$1;
    move-object v1, p1

    .local v1, "handler":Lorg/xml/sax/ContentHandler;
    move-object v2, v0

    iget-object v2, v2, Ljavax/xml/bind/util/JAXBSource$1;->repeater:Lorg/xml/sax/helpers/XMLFilterImpl;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/xml/sax/helpers/XMLFilterImpl;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 196
    return-void
.end method

.method public setDTDHandler(Lorg/xml/sax/DTDHandler;)V
    .locals 4

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/util/JAXBSource$1;
    move-object v1, p1

    .local v1, "handler":Lorg/xml/sax/DTDHandler;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavax/xml/bind/util/JAXBSource$1;->dtdHandler:Lorg/xml/sax/DTDHandler;

    .line 184
    return-void
.end method

.method public setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    .locals 4

    .prologue
    .line 175
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/util/JAXBSource$1;
    move-object v1, p1

    .local v1, "resolver":Lorg/xml/sax/EntityResolver;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavax/xml/bind/util/JAXBSource$1;->entityResolver:Lorg/xml/sax/EntityResolver;

    .line 176
    return-void
.end method

.method public setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    .locals 4

    .prologue
    .line 203
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/util/JAXBSource$1;
    move-object v1, p1

    .local v1, "handler":Lorg/xml/sax/ErrorHandler;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavax/xml/bind/util/JAXBSource$1;->errorHandler:Lorg/xml/sax/ErrorHandler;

    .line 204
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;
        }
    .end annotation

    .prologue
    .line 148
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/util/JAXBSource$1;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move v2, p2

    .local v2, "value":Z
    move-object v3, v1

    const-string/jumbo v4, "http://xml.org/sax/features/namespaces"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v2

    if-eqz v3, :cond_0

    .line 149
    .line 151
    :goto_0
    return-void

    .line 150
    :cond_0
    move-object v3, v1

    const-string/jumbo v4, "http://xml.org/sax/features/namespace-prefixes"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v2

    if-nez v3, :cond_1

    .line 151
    goto :goto_0

    .line 152
    :cond_1
    new-instance v3, Lorg/xml/sax/SAXNotRecognizedException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;
        }
    .end annotation

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/util/JAXBSource$1;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    const-string/jumbo v3, "http://xml.org/sax/properties/lexical-handler"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 164
    move-object v3, v0

    move-object v4, v2

    check-cast v4, Lorg/xml/sax/ext/LexicalHandler;

    iput-object v4, v3, Ljavax/xml/bind/util/JAXBSource$1;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    .line 165
    return-void

    .line 167
    :cond_0
    new-instance v3, Lorg/xml/sax/SAXNotRecognizedException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
