.class public Ljavax/xml/bind/helpers/DefaultValidationEventHandler;
.super Ljava/lang/Object;
.source "DefaultValidationEventHandler.java"

# interfaces
.implements Ljavax/xml/bind/ValidationEventHandler;


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Ljavax/xml/bind/helpers/DefaultValidationEventHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ljavax/xml/bind/helpers/DefaultValidationEventHandler;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/DefaultValidationEventHandler;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getLocation(Ljavax/xml/bind/ValidationEvent;)Ljava/lang/String;
    .locals 12

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/DefaultValidationEventHandler;
    move-object v1, p1

    .local v1, "event":Ljavax/xml/bind/ValidationEvent;
    new-instance v8, Ljava/lang/StringBuffer;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    move-object v2, v8

    .line 87
    .local v2, "msg":Ljava/lang/StringBuffer;
    move-object v8, v1

    invoke-interface {v8}, Ljavax/xml/bind/ValidationEvent;->getLocator()Ljavax/xml/bind/ValidationEventLocator;

    move-result-object v8

    move-object v3, v8

    .line 89
    .local v3, "locator":Ljavax/xml/bind/ValidationEventLocator;
    move-object v8, v3

    if-eqz v8, :cond_4

    .line 91
    move-object v8, v3

    invoke-interface {v8}, Ljavax/xml/bind/ValidationEventLocator;->getURL()Ljava/net/URL;

    move-result-object v8

    move-object v4, v8

    .line 92
    .local v4, "url":Ljava/net/URL;
    move-object v8, v3

    invoke-interface {v8}, Ljavax/xml/bind/ValidationEventLocator;->getObject()Ljava/lang/Object;

    move-result-object v8

    move-object v5, v8

    .line 93
    .local v5, "obj":Ljava/lang/Object;
    move-object v8, v3

    invoke-interface {v8}, Ljavax/xml/bind/ValidationEventLocator;->getNode()Lorg/w3c/dom/Node;

    move-result-object v8

    move-object v6, v8

    .line 94
    .local v6, "node":Lorg/w3c/dom/Node;
    move-object v8, v3

    invoke-interface {v8}, Ljavax/xml/bind/ValidationEventLocator;->getLineNumber()I

    move-result v8

    move v7, v8

    .line 96
    .local v7, "line":I
    move-object v8, v4

    if-nez v8, :cond_0

    move v8, v7

    const/4 v9, -0x1

    if-eq v8, v9, :cond_2

    .line 97
    :cond_0
    move-object v8, v2

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "line "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move v10, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    .line 98
    move-object v8, v4

    if-eqz v8, :cond_1

    .line 99
    move-object v8, v2

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, " of "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    .line 105
    .line 109
    .end local v4    # "url":Ljava/net/URL;
    .end local v5    # "obj":Ljava/lang/Object;
    .end local v6    # "node":Lorg/w3c/dom/Node;
    .end local v7    # "line":I
    :cond_1
    :goto_0
    move-object v8, v2

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v0, v8

    .end local v0    # "this":Ljavax/xml/bind/helpers/DefaultValidationEventHandler;
    return-object v0

    .line 100
    .restart local v0    # "this":Ljavax/xml/bind/helpers/DefaultValidationEventHandler;
    .restart local v4    # "url":Ljava/net/URL;
    .restart local v5    # "obj":Ljava/lang/Object;
    .restart local v6    # "node":Lorg/w3c/dom/Node;
    .restart local v7    # "line":I
    :cond_2
    move-object v8, v5

    if-eqz v8, :cond_3

    .line 101
    move-object v8, v2

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, " obj: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v5

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    .line 102
    goto :goto_0

    :cond_3
    move-object v8, v6

    if-eqz v8, :cond_1

    .line 103
    move-object v8, v2

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, " node: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v6

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    goto :goto_0

    .line 106
    .end local v4    # "url":Ljava/net/URL;
    .end local v5    # "obj":Ljava/lang/Object;
    .end local v6    # "node":Lorg/w3c/dom/Node;
    .end local v7    # "line":I
    :cond_4
    move-object v8, v2

    const-string/jumbo v9, "DefaultValidationEventHandler.LocationUnavailable"

    invoke-static {v9}, Ljavax/xml/bind/helpers/Messages;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    goto :goto_0
.end method


# virtual methods
.method public handleEvent(Ljavax/xml/bind/ValidationEvent;)Z
    .locals 11

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/DefaultValidationEventHandler;
    move-object v1, p1

    .local v1, "event":Ljavax/xml/bind/ValidationEvent;
    move-object v5, v1

    if-nez v5, :cond_0

    .line 42
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 46
    :cond_0
    const/4 v5, 0x0

    move-object v2, v5

    .line 47
    .local v2, "severity":Ljava/lang/String;
    const/4 v5, 0x0

    move v3, v5

    .line 48
    .local v3, "retVal":Z
    move-object v5, v1

    invoke-interface {v5}, Ljavax/xml/bind/ValidationEvent;->getSeverity()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 63
    sget-boolean v5, Ljavax/xml/bind/helpers/DefaultValidationEventHandler;->$assertionsDisabled:Z

    if-nez v5, :cond_1

    new-instance v5, Ljava/lang/AssertionError;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string/jumbo v7, "DefaultValidationEventHandler.UnrecognizedSeverity"

    move-object v8, v1

    invoke-interface {v8}, Ljavax/xml/bind/ValidationEvent;->getSeverity()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7, v8}, Ljavax/xml/bind/helpers/Messages;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 50
    :pswitch_0
    const-string/jumbo v5, "DefaultValidationEventHandler.Warning"

    invoke-static {v5}, Ljavax/xml/bind/helpers/Messages;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 51
    const/4 v5, 0x1

    move v3, v5

    .line 68
    :cond_1
    :goto_0
    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Ljavax/xml/bind/helpers/DefaultValidationEventHandler;->getLocation(Ljavax/xml/bind/ValidationEvent;)Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 70
    .local v4, "location":Ljava/lang/String;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v6, "DefaultValidationEventHandler.SeverityMessage"

    move-object v7, v2

    move-object v8, v1

    invoke-interface {v8}, Ljavax/xml/bind/ValidationEvent;->getMessage()Ljava/lang/String;

    move-result-object v8

    move-object v9, v4

    invoke-static {v6, v7, v8, v9}, Ljavax/xml/bind/helpers/Messages;->format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 77
    move v5, v3

    move v0, v5

    .end local v0    # "this":Ljavax/xml/bind/helpers/DefaultValidationEventHandler;
    return v0

    .line 54
    .end local v4    # "location":Ljava/lang/String;
    .restart local v0    # "this":Ljavax/xml/bind/helpers/DefaultValidationEventHandler;
    :pswitch_1
    const-string/jumbo v5, "DefaultValidationEventHandler.Error"

    invoke-static {v5}, Ljavax/xml/bind/helpers/Messages;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 55
    const/4 v5, 0x0

    move v3, v5

    .line 56
    goto :goto_0

    .line 58
    :pswitch_2
    const-string/jumbo v5, "DefaultValidationEventHandler.FatalError"

    invoke-static {v5}, Ljavax/xml/bind/helpers/Messages;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 59
    const/4 v5, 0x0

    move v3, v5

    .line 60
    goto :goto_0

    .line 48
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
