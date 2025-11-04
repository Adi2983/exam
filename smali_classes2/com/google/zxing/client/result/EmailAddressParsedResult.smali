.class public final Lcom/google/zxing/client/result/EmailAddressParsedResult;
.super Lcom/google/zxing/client/result/ParsedResult;
.source "EmailAddressParsedResult.java"


# instance fields
.field private final body:Ljava/lang/String;

.field private final emailAddress:Ljava/lang/String;

.field private final mailtoURI:Ljava/lang/String;

.field private final subject:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/EmailAddressParsedResult;
    move-object v1, p1

    .local v1, "emailAddress":Ljava/lang/String;
    move-object v2, p2

    .local v2, "subject":Ljava/lang/String;
    move-object v3, p3

    .local v3, "body":Ljava/lang/String;
    move-object v4, p4

    .local v4, "mailtoURI":Ljava/lang/String;
    move-object v5, v0

    sget-object v6, Lcom/google/zxing/client/result/ParsedResultType;->EMAIL_ADDRESS:Lcom/google/zxing/client/result/ParsedResultType;

    invoke-direct {v5, v6}, Lcom/google/zxing/client/result/ParsedResult;-><init>(Lcom/google/zxing/client/result/ParsedResultType;)V

    .line 34
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/google/zxing/client/result/EmailAddressParsedResult;->emailAddress:Ljava/lang/String;

    .line 35
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lcom/google/zxing/client/result/EmailAddressParsedResult;->subject:Ljava/lang/String;

    .line 36
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lcom/google/zxing/client/result/EmailAddressParsedResult;->body:Ljava/lang/String;

    .line 37
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lcom/google/zxing/client/result/EmailAddressParsedResult;->mailtoURI:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 2

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/EmailAddressParsedResult;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/client/result/EmailAddressParsedResult;->body:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/client/result/EmailAddressParsedResult;
    return-object v0
.end method

.method public getDisplayResult()Ljava/lang/String;
    .locals 6

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/EmailAddressParsedResult;
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/16 v4, 0x1e

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v2

    .line 59
    .local v1, "result":Ljava/lang/StringBuilder;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/zxing/client/result/EmailAddressParsedResult;->emailAddress:Ljava/lang/String;

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/google/zxing/client/result/EmailAddressParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 60
    move-object v2, v0

    iget-object v2, v2, Lcom/google/zxing/client/result/EmailAddressParsedResult;->subject:Ljava/lang/String;

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/google/zxing/client/result/EmailAddressParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 61
    move-object v2, v0

    iget-object v2, v2, Lcom/google/zxing/client/result/EmailAddressParsedResult;->body:Ljava/lang/String;

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/google/zxing/client/result/EmailAddressParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 62
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/google/zxing/client/result/EmailAddressParsedResult;
    return-object v0
.end method

.method public getEmailAddress()Ljava/lang/String;
    .locals 2

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/EmailAddressParsedResult;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/client/result/EmailAddressParsedResult;->emailAddress:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/client/result/EmailAddressParsedResult;
    return-object v0
.end method

.method public getMailtoURI()Ljava/lang/String;
    .locals 2

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/EmailAddressParsedResult;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/client/result/EmailAddressParsedResult;->mailtoURI:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/client/result/EmailAddressParsedResult;
    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 2

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/EmailAddressParsedResult;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/client/result/EmailAddressParsedResult;->subject:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/client/result/EmailAddressParsedResult;
    return-object v0
.end method
