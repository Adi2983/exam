.class Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/util/DOMErrorHandlerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DOMErrorTypeMap"
.end annotation


# static fields
.field private static fgDOMErrorTypeTable:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Ljava/util/Hashtable;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "InvalidCharInCDSect"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "InvalidCharInContent"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "TwoColonsInQName"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character-in-node-name"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "ColonNotLegalWithNS"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character-in-node-name"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "InvalidCharInProlog"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "CDEndInContent"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "CDSectUnterminated"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "DoctypeNotAllowed"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "doctype-not-allowed"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "ETagRequired"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character-in-node-name"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "ElementUnterminated"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character-in-node-name"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "EqRequiredInAttribute"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "OpenQuoteExpected"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "CloseQuoteExpected"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "ETagUnterminated"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character-in-node-name"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "MarkupNotRecognizedInContent"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "DoctypeIllegalInContent"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "doctype-not-allowed"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "InvalidCharInAttValue"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "InvalidCharInPI"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "InvalidCharInInternalSubset"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "QuoteRequiredInAttValue"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "LessthanInAttValue"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "AttributeValueUnterminated"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "PITargetRequired"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "SpaceRequiredInPI"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "PIUnterminated"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "ReservedPITarget"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "PI_NOT_IN_ONE_ENTITY"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "PINotInOneEntity"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "EncodingDeclInvalid"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "unsupported-encoding"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "EncodingByteOrderUnsupported"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "unsupported-encoding"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "InvalidCharInEntityValue"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character-in-node-name"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "InvalidCharInExternalSubset"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "InvalidCharInIgnoreSect"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "InvalidCharInPublicID"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "InvalidCharInSystemID"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "SpaceRequiredAfterSYSTEM"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "QuoteRequiredInSystemID"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "SystemIDUnterminated"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "SpaceRequiredAfterPUBLIC"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "QuoteRequiredInPublicID"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "PublicIDUnterminated"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "PubidCharIllegal"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "SpaceRequiredBetweenPublicAndSystem"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "MSG_SPACE_REQUIRED_BEFORE_ROOT_ELEMENT_TYPE_IN_DOCTYPEDECL"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character-in-node-name"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "MSG_ROOT_ELEMENT_TYPE_REQUIRED"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character-in-node-name"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "DoctypedeclUnterminated"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character-in-node-name"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "PEReferenceWithinMarkup"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "MSG_MARKUP_NOT_RECOGNIZED_IN_DTD"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "MSG_SPACE_REQUIRED_BEFORE_ELEMENT_TYPE_IN_ELEMENTDECL"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "MSG_ELEMENT_TYPE_REQUIRED_IN_ELEMENTDECL"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "MSG_SPACE_REQUIRED_BEFORE_CONTENTSPEC_IN_ELEMENTDECL"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "MSG_CONTENTSPEC_REQUIRED_IN_ELEMENTDECL"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "ElementDeclUnterminated"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "MSG_OPEN_PAREN_OR_ELEMENT_TYPE_REQUIRED_IN_CHILDREN"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "MSG_CLOSE_PAREN_REQUIRED_IN_CHILDREN"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "MSG_ELEMENT_TYPE_REQUIRED_IN_MIXED_CONTENT"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "MSG_CLOSE_PAREN_REQUIRED_IN_MIXED"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "MixedContentUnterminated"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "MSG_SPACE_REQUIRED_BEFORE_ELEMENT_TYPE_IN_ATTLISTDECL"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "MSG_ELEMENT_TYPE_REQUIRED_IN_ATTLISTDECL"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "MSG_SPACE_REQUIRED_BEFORE_ATTRIBUTE_NAME_IN_ATTDEF"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "AttNameRequiredInAttDef"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "MSG_SPACE_REQUIRED_BEFORE_ATTTYPE_IN_ATTDEF"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "AttTypeRequiredInAttDef"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "MSG_SPACE_REQUIRED_BEFORE_DEFAULTDECL_IN_ATTDEF"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "MSG_DUPLICATE_ATTRIBUTE_DEFINITION"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "MSG_SPACE_REQUIRED_AFTER_NOTATION_IN_NOTATIONTYPE"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "MSG_OPEN_PAREN_REQUIRED_IN_NOTATIONTYPE"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "MSG_NAME_REQUIRED_IN_NOTATIONTYPE"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "NotationTypeUnterminated"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "MSG_NMTOKEN_REQUIRED_IN_ENUMERATION"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "EnumerationUnterminated"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "MSG_DISTINCT_TOKENS_IN_ENUMERATION"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "MSG_DISTINCT_NOTATION_IN_ENUMERATION"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "MSG_SPACE_REQUIRED_AFTER_FIXED_IN_DEFAULTDECL"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "IncludeSectUnterminated"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "IgnoreSectUnterminated"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "NameRequiredInPEReference"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "SemicolonRequiredInPEReference"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "MSG_SPACE_REQUIRED_BEFORE_ENTITY_NAME_IN_ENTITYDECL"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character-in-node-name"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "MSG_SPACE_REQUIRED_BEFORE_PERCENT_IN_PEDECL"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character-in-node-name"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "MSG_SPACE_REQUIRED_BEFORE_ENTITY_NAME_IN_PEDECL"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character-in-node-name"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "MSG_ENTITY_NAME_REQUIRED_IN_ENTITYDECL"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character-in-node-name"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "MSG_SPACE_REQUIRED_AFTER_ENTITY_NAME_IN_ENTITYDECL"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character-in-node-name"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "MSG_SPACE_REQUIRED_BEFORE_NOTATION_NAME_IN_UNPARSED_ENTITYDECL"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "MSG_SPACE_REQUIRED_BEFORE_NDATA_IN_UNPARSED_ENTITYDECL"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "MSG_NOTATION_NAME_REQUIRED_FOR_UNPARSED_ENTITYDECL"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "EntityDeclUnterminated"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character-in-node-name"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "MSG_DUPLICATE_ENTITY_DEFINITION"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character-in-node-name"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "ExternalIDRequired"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "MSG_SPACE_REQUIRED_BEFORE_PUBIDLITERAL_IN_EXTERNALID"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "MSG_SPACE_REQUIRED_AFTER_PUBIDLITERAL_IN_EXTERNALID"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "MSG_SPACE_REQUIRED_BEFORE_SYSTEMLITERAL_IN_EXTERNALID"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "MSG_URI_FRAGMENT_IN_SYSTEMID"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "MSG_SPACE_REQUIRED_BEFORE_NOTATION_NAME_IN_NOTATIONDECL"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character-in-node-name"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "MSG_NOTATION_NAME_REQUIRED_IN_NOTATIONDECL"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character-in-node-name"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "MSG_SPACE_REQUIRED_AFTER_NOTATION_NAME_IN_NOTATIONDECL"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character-in-node-name"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "ExternalIDorPublicIDRequired"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "NotationDeclUnterminated"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character-in-node-name"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "ReferenceToExternalEntity"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "ReferenceToUnparsedEntity"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "EncodingNotSupported"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "unsupported-encoding"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "EncodingRequired"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "unsupported-encoding"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "IllegalQName"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character-in-node-name"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "ElementXMLNSPrefix"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character-in-node-name"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "ElementPrefixUnbound"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character-in-node-name"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "AttributePrefixUnbound"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character-in-node-name"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "EmptyPrefixedAttName"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character-in-node-name"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "PrefixDeclared"

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wf-invalid-character-in-node-name"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDOMErrorType(Lorg/apache/xerces/util/XMLErrorCode;)Ljava/lang/String;
    .locals 3

    move-object v0, p0

    sget-object v1, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->fgDOMErrorTypeTable:Ljava/util/Hashtable;

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method
