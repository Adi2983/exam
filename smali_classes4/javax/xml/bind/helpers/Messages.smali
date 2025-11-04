.class Ljavax/xml/bind/helpers/Messages;
.super Ljava/lang/Object;
.source "Messages.java"


# static fields
.field static final ERROR:Ljava/lang/String; = "DefaultValidationEventHandler.Error"

.field static final FATAL_ERROR:Ljava/lang/String; = "DefaultValidationEventHandler.FatalError"

.field static final ILLEGAL_SEVERITY:Ljava/lang/String; = "ValidationEventImpl.IllegalSeverity"

.field static final INPUTSTREAM_NOT_NULL:Ljava/lang/String; = "AbstractUnmarshallerImpl.ISNotNull"

.field static final LOCATION_UNAVAILABLE:Ljava/lang/String; = "DefaultValidationEventHandler.LocationUnavailable"

.field static final MUST_BE_BOOLEAN:Ljava/lang/String; = "AbstractMarshallerImpl.MustBeBoolean"

.field static final MUST_BE_STRING:Ljava/lang/String; = "AbstractMarshallerImpl.MustBeString"

.field static final MUST_NOT_BE_NULL:Ljava/lang/String; = "Shared.MustNotBeNull"

.field static final SEVERITY_MESSAGE:Ljava/lang/String; = "DefaultValidationEventHandler.SeverityMessage"

.field static final UNRECOGNIZED_SEVERITY:Ljava/lang/String; = "DefaultValidationEventHandler.UnrecognizedSeverity"

.field static final WARNING:Ljava/lang/String; = "DefaultValidationEventHandler.Warning"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 14
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/Messages;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static format(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 17
    move-object v0, p0

    .local v0, "property":Ljava/lang/String;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljavax/xml/bind/helpers/Messages;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "property":Ljava/lang/String;
    return-object v0
.end method

.method static format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "property":Ljava/lang/String;
    move-object v1, p1

    .local v1, "arg1":Ljava/lang/Object;
    move-object v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    move-object v6, v1

    aput-object v6, v4, v5

    invoke-static {v2, v3}, Ljavax/xml/bind/helpers/Messages;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "property":Ljava/lang/String;
    return-object v0
.end method

.method static format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 9

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "property":Ljava/lang/String;
    move-object v1, p1

    .local v1, "arg1":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "arg2":Ljava/lang/Object;
    move-object v3, v0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x1

    move-object v7, v2

    aput-object v7, v5, v6

    invoke-static {v3, v4}, Ljavax/xml/bind/helpers/Messages;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "property":Ljava/lang/String;
    return-object v0
.end method

.method static format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 10

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "property":Ljava/lang/String;
    move-object v1, p1

    .local v1, "arg1":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "arg2":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "arg3":Ljava/lang/Object;
    move-object v4, v0

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v1

    aput-object v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x1

    move-object v8, v2

    aput-object v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x2

    move-object v8, v3

    aput-object v8, v6, v7

    invoke-static {v4, v5}, Ljavax/xml/bind/helpers/Messages;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "property":Ljava/lang/String;
    return-object v0
.end method

.method static format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "property":Ljava/lang/String;
    move-object v1, p1

    .local v1, "args":[Ljava/lang/Object;
    const-class v3, Ljavax/xml/bind/helpers/Messages;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 37
    .local v2, "text":Ljava/lang/String;
    move-object v3, v2

    move-object v4, v1

    invoke-static {v3, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "property":Ljava/lang/String;
    return-object v0
.end method
