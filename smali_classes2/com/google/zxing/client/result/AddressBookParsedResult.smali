.class public final Lcom/google/zxing/client/result/AddressBookParsedResult;
.super Lcom/google/zxing/client/result/ParsedResult;
.source "AddressBookParsedResult.java"


# instance fields
.field private final addressTypes:[Ljava/lang/String;

.field private final addresses:[Ljava/lang/String;

.field private final birthday:Ljava/lang/String;

.field private final emailTypes:[Ljava/lang/String;

.field private final emails:[Ljava/lang/String;

.field private final instantMessenger:Ljava/lang/String;

.field private final names:[Ljava/lang/String;

.field private final note:Ljava/lang/String;

.field private final org:Ljava/lang/String;

.field private final phoneNumbers:[Ljava/lang/String;

.field private final phoneTypes:[Ljava/lang/String;

.field private final pronunciation:Ljava/lang/String;

.field private final title:Ljava/lang/String;

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 19

    .prologue
    .line 53
    move-object/from16 v2, p0

    .local v2, "this":Lcom/google/zxing/client/result/AddressBookParsedResult;
    move-object/from16 v3, p1

    .local v3, "names":[Ljava/lang/String;
    move-object/from16 v4, p2

    .local v4, "pronunciation":Ljava/lang/String;
    move-object/from16 v5, p3

    .local v5, "phoneNumbers":[Ljava/lang/String;
    move-object/from16 v6, p4

    .local v6, "phoneTypes":[Ljava/lang/String;
    move-object/from16 v7, p5

    .local v7, "emails":[Ljava/lang/String;
    move-object/from16 v8, p6

    .local v8, "emailTypes":[Ljava/lang/String;
    move-object/from16 v9, p7

    .local v9, "instantMessenger":Ljava/lang/String;
    move-object/from16 v10, p8

    .local v10, "note":Ljava/lang/String;
    move-object/from16 v11, p9

    .local v11, "addresses":[Ljava/lang/String;
    move-object/from16 v12, p10

    .local v12, "addressTypes":[Ljava/lang/String;
    move-object/from16 v13, p11

    .local v13, "org":Ljava/lang/String;
    move-object/from16 v14, p12

    .local v14, "birthday":Ljava/lang/String;
    move-object/from16 v15, p13

    .local v15, "title":Ljava/lang/String;
    move-object/from16 v16, p14

    .local v16, "url":Ljava/lang/String;
    move-object/from16 v17, v2

    sget-object v18, Lcom/google/zxing/client/result/ParsedResultType;->ADDRESSBOOK:Lcom/google/zxing/client/result/ParsedResultType;

    invoke-direct/range {v17 .. v18}, Lcom/google/zxing/client/result/ParsedResult;-><init>(Lcom/google/zxing/client/result/ParsedResultType;)V

    .line 54
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/google/zxing/client/result/AddressBookParsedResult;->names:[Ljava/lang/String;

    .line 55
    move-object/from16 v17, v2

    move-object/from16 v18, v4

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/google/zxing/client/result/AddressBookParsedResult;->pronunciation:Ljava/lang/String;

    .line 56
    move-object/from16 v17, v2

    move-object/from16 v18, v5

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/google/zxing/client/result/AddressBookParsedResult;->phoneNumbers:[Ljava/lang/String;

    .line 57
    move-object/from16 v17, v2

    move-object/from16 v18, v6

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/google/zxing/client/result/AddressBookParsedResult;->phoneTypes:[Ljava/lang/String;

    .line 58
    move-object/from16 v17, v2

    move-object/from16 v18, v7

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/google/zxing/client/result/AddressBookParsedResult;->emails:[Ljava/lang/String;

    .line 59
    move-object/from16 v17, v2

    move-object/from16 v18, v8

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/google/zxing/client/result/AddressBookParsedResult;->emailTypes:[Ljava/lang/String;

    .line 60
    move-object/from16 v17, v2

    move-object/from16 v18, v9

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/google/zxing/client/result/AddressBookParsedResult;->instantMessenger:Ljava/lang/String;

    .line 61
    move-object/from16 v17, v2

    move-object/from16 v18, v10

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/google/zxing/client/result/AddressBookParsedResult;->note:Ljava/lang/String;

    .line 62
    move-object/from16 v17, v2

    move-object/from16 v18, v11

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/google/zxing/client/result/AddressBookParsedResult;->addresses:[Ljava/lang/String;

    .line 63
    move-object/from16 v17, v2

    move-object/from16 v18, v12

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/google/zxing/client/result/AddressBookParsedResult;->addressTypes:[Ljava/lang/String;

    .line 64
    move-object/from16 v17, v2

    move-object/from16 v18, v13

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/google/zxing/client/result/AddressBookParsedResult;->org:Ljava/lang/String;

    .line 65
    move-object/from16 v17, v2

    move-object/from16 v18, v14

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/google/zxing/client/result/AddressBookParsedResult;->birthday:Ljava/lang/String;

    .line 66
    move-object/from16 v17, v2

    move-object/from16 v18, v15

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/google/zxing/client/result/AddressBookParsedResult;->title:Ljava/lang/String;

    .line 67
    move-object/from16 v17, v2

    move-object/from16 v18, v16

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/google/zxing/client/result/AddressBookParsedResult;->url:Ljava/lang/String;

    .line 68
    return-void
.end method


# virtual methods
.method public getAddressTypes()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/AddressBookParsedResult;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/client/result/AddressBookParsedResult;->addressTypes:[Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/client/result/AddressBookParsedResult;
    return-object v0
.end method

.method public getAddresses()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/AddressBookParsedResult;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/client/result/AddressBookParsedResult;->addresses:[Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/client/result/AddressBookParsedResult;
    return-object v0
.end method

.method public getBirthday()Ljava/lang/String;
    .locals 2

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/AddressBookParsedResult;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/client/result/AddressBookParsedResult;->birthday:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/client/result/AddressBookParsedResult;
    return-object v0
.end method

.method public getDisplayResult()Ljava/lang/String;
    .locals 6

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/AddressBookParsedResult;
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/16 v4, 0x64

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v2

    .line 150
    .local v1, "result":Ljava/lang/StringBuilder;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/zxing/client/result/AddressBookParsedResult;->names:[Ljava/lang/String;

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/google/zxing/client/result/AddressBookParsedResult;->maybeAppend([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 151
    move-object v2, v0

    iget-object v2, v2, Lcom/google/zxing/client/result/AddressBookParsedResult;->pronunciation:Ljava/lang/String;

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/google/zxing/client/result/AddressBookParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 152
    move-object v2, v0

    iget-object v2, v2, Lcom/google/zxing/client/result/AddressBookParsedResult;->title:Ljava/lang/String;

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/google/zxing/client/result/AddressBookParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 153
    move-object v2, v0

    iget-object v2, v2, Lcom/google/zxing/client/result/AddressBookParsedResult;->org:Ljava/lang/String;

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/google/zxing/client/result/AddressBookParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 154
    move-object v2, v0

    iget-object v2, v2, Lcom/google/zxing/client/result/AddressBookParsedResult;->addresses:[Ljava/lang/String;

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/google/zxing/client/result/AddressBookParsedResult;->maybeAppend([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 155
    move-object v2, v0

    iget-object v2, v2, Lcom/google/zxing/client/result/AddressBookParsedResult;->phoneNumbers:[Ljava/lang/String;

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/google/zxing/client/result/AddressBookParsedResult;->maybeAppend([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 156
    move-object v2, v0

    iget-object v2, v2, Lcom/google/zxing/client/result/AddressBookParsedResult;->emails:[Ljava/lang/String;

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/google/zxing/client/result/AddressBookParsedResult;->maybeAppend([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 157
    move-object v2, v0

    iget-object v2, v2, Lcom/google/zxing/client/result/AddressBookParsedResult;->instantMessenger:Ljava/lang/String;

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/google/zxing/client/result/AddressBookParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 158
    move-object v2, v0

    iget-object v2, v2, Lcom/google/zxing/client/result/AddressBookParsedResult;->url:Ljava/lang/String;

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/google/zxing/client/result/AddressBookParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 159
    move-object v2, v0

    iget-object v2, v2, Lcom/google/zxing/client/result/AddressBookParsedResult;->birthday:Ljava/lang/String;

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/google/zxing/client/result/AddressBookParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 160
    move-object v2, v0

    iget-object v2, v2, Lcom/google/zxing/client/result/AddressBookParsedResult;->note:Ljava/lang/String;

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/google/zxing/client/result/AddressBookParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 161
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/google/zxing/client/result/AddressBookParsedResult;
    return-object v0
.end method

.method public getEmailTypes()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/AddressBookParsedResult;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/client/result/AddressBookParsedResult;->emailTypes:[Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/client/result/AddressBookParsedResult;
    return-object v0
.end method

.method public getEmails()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/AddressBookParsedResult;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/client/result/AddressBookParsedResult;->emails:[Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/client/result/AddressBookParsedResult;
    return-object v0
.end method

.method public getInstantMessenger()Ljava/lang/String;
    .locals 2

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/AddressBookParsedResult;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/client/result/AddressBookParsedResult;->instantMessenger:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/client/result/AddressBookParsedResult;
    return-object v0
.end method

.method public getNames()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/AddressBookParsedResult;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/client/result/AddressBookParsedResult;->names:[Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/client/result/AddressBookParsedResult;
    return-object v0
.end method

.method public getNote()Ljava/lang/String;
    .locals 2

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/AddressBookParsedResult;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/client/result/AddressBookParsedResult;->note:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/client/result/AddressBookParsedResult;
    return-object v0
.end method

.method public getOrg()Ljava/lang/String;
    .locals 2

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/AddressBookParsedResult;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/client/result/AddressBookParsedResult;->org:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/client/result/AddressBookParsedResult;
    return-object v0
.end method

.method public getPhoneNumbers()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/AddressBookParsedResult;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/client/result/AddressBookParsedResult;->phoneNumbers:[Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/client/result/AddressBookParsedResult;
    return-object v0
.end method

.method public getPhoneTypes()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/AddressBookParsedResult;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/client/result/AddressBookParsedResult;->phoneTypes:[Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/client/result/AddressBookParsedResult;
    return-object v0
.end method

.method public getPronunciation()Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/AddressBookParsedResult;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/client/result/AddressBookParsedResult;->pronunciation:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/client/result/AddressBookParsedResult;
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/AddressBookParsedResult;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/client/result/AddressBookParsedResult;->title:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/client/result/AddressBookParsedResult;
    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/AddressBookParsedResult;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/client/result/AddressBookParsedResult;->url:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/client/result/AddressBookParsedResult;
    return-object v0
.end method
