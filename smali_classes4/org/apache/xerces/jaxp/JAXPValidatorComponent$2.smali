.class Lorg/apache/xerces/jaxp/JAXPValidatorComponent$2;
.super Lorg/apache/xerces/util/ErrorHandlerProxy;


# instance fields
.field private final this$0:Lorg/apache/xerces/jaxp/JAXPValidatorComponent;


# direct methods
.method constructor <init>(Lorg/apache/xerces/jaxp/JAXPValidatorComponent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Lorg/apache/xerces/util/ErrorHandlerProxy;-><init>()V

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/jaxp/JAXPValidatorComponent$2;->this$0:Lorg/apache/xerces/jaxp/JAXPValidatorComponent;

    return-void
.end method


# virtual methods
.method protected getErrorHandler()Lorg/apache/xerces/xni/parser/XMLErrorHandler;
    .locals 6

    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/JAXPValidatorComponent$2;->this$0:Lorg/apache/xerces/jaxp/JAXPValidatorComponent;

    invoke-static {v2}, Lorg/apache/xerces/jaxp/JAXPValidatorComponent;->access$200(Lorg/apache/xerces/jaxp/JAXPValidatorComponent;)Lorg/apache/xerces/impl/XMLErrorReporter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/xerces/impl/XMLErrorReporter;->getErrorHandler()Lorg/apache/xerces/xni/parser/XMLErrorHandler;

    move-result-object v2

    move-object v1, v2

    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Lorg/apache/xerces/util/ErrorHandlerWrapper;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-static {}, Lorg/apache/xerces/jaxp/JAXPValidatorComponent$DraconianErrorHandler;->getInstance()Lorg/apache/xerces/jaxp/JAXPValidatorComponent$DraconianErrorHandler;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/xerces/util/ErrorHandlerWrapper;-><init>(Lorg/xml/sax/ErrorHandler;)V

    move-object v0, v2

    goto :goto_0
.end method
