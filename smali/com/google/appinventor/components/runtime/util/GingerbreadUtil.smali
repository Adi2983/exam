.class public Lcom/google/appinventor/components/runtime/util/GingerbreadUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static clearCookies(Ljava/net/CookieHandler;)Z
    .locals 4

    .prologue
    .line 57
    move-object v0, p0

    move-object v1, v0

    instance-of v1, v1, Ljava/net/CookieManager;

    if-eqz v1, :cond_0

    .line 58
    move-object v1, v0

    check-cast v1, Ljava/net/CookieManager;

    .line 59
    invoke-virtual {v1}, Ljava/net/CookieManager;->getCookieStore()Ljava/net/CookieStore;

    move-result-object v1

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    .line 60
    move-object v0, v2

    if-eqz v1, :cond_0

    .line 61
    move-object v1, v0

    invoke-interface {v1}, Ljava/net/CookieStore;->removeAll()Z

    move-result v1

    .line 62
    const/4 v1, 0x1

    move v0, v1

    .line 65
    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public static createTextRecord(Ljava/lang/String;Z)Landroid/nfc/NdefRecord;
    .locals 11

    .prologue
    .line 79
    move-object v0, p0

    move v1, p1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    move-object v2, v4

    .line 80
    move v4, v1

    if-eqz v4, :cond_0

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    :goto_0
    move-object v3, v4

    .line 81
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    move-object v0, v4

    .line 82
    move v4, v1

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    .line 83
    :goto_1
    move-object v5, v2

    array-length v5, v5

    add-int/2addr v4, v5

    int-to-char v4, v4

    move v1, v4

    .line 84
    const/4 v4, 0x1

    move-object v5, v2

    array-length v5, v5

    add-int/2addr v4, v5

    move-object v5, v0

    array-length v5, v5

    add-int/2addr v4, v5

    new-array v4, v4, [B

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    .line 85
    move-object v3, v5

    const/4 v5, 0x0

    move v6, v1

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 86
    move-object v4, v2

    const/4 v5, 0x0

    move-object v6, v3

    const/4 v7, 0x1

    move-object v8, v2

    array-length v8, v8

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    move-object v4, v0

    const/4 v5, 0x0

    move-object v6, v3

    const/4 v7, 0x1

    move-object v8, v2

    array-length v8, v8

    add-int/2addr v7, v8

    move-object v8, v0

    array-length v8, v8

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 88
    new-instance v4, Landroid/nfc/NdefRecord;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const/4 v6, 0x1

    sget-object v7, Landroid/nfc/NdefRecord;->RTD_TEXT:[B

    const/4 v8, 0x0

    new-array v8, v8, [B

    move-object v9, v3

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    .line 90
    move-object v0, v4

    return-object v0

    .line 80
    :cond_0
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    goto :goto_0

    .line 82
    :cond_1
    const/16 v4, 0x80

    goto :goto_1
.end method

.method public static disableNFCAdapter(Landroid/app/Activity;Landroid/nfc/NfcAdapter;)V
    .locals 4

    .prologue
    .line 75
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/nfc/NfcAdapter;->disableForegroundNdefPush(Landroid/app/Activity;)V

    .line 76
    return-void
.end method

.method public static enableNFCWriteMode(Landroid/app/Activity;Landroid/nfc/NfcAdapter;Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 69
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v2

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/GingerbreadUtil;->createTextRecord(Ljava/lang/String;Z)Landroid/nfc/NdefRecord;

    move-result-object v3

    move-object v2, v3

    .line 70
    new-instance v3, Landroid/nfc/NdefMessage;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/nfc/NdefRecord;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v2

    aput-object v8, v6, v7

    invoke-direct {v4, v5}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    move-object v2, v3

    .line 71
    move-object v3, v1

    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/nfc/NfcAdapter;->enableForegroundNdefPush(Landroid/app/Activity;Landroid/nfc/NdefMessage;)V

    .line 72
    return-void
.end method

.method public static newCookieManager()Ljava/net/CookieHandler;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 46
    new-instance v0, Ljava/net/CookieManager;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/net/CookieManager;-><init>()V

    return-object v0
.end method

.method public static resolveNFCIntent(Landroid/content/Intent;Lcom/google/appinventor/components/runtime/NearField;)V
    .locals 12

    .prologue
    .line 94
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 96
    const-string/jumbo v5, "android.nfc.action.NDEF_DISCOVERED"

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 104
    move-object v5, v1

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/NearField;->ReadMode()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 106
    move-object v5, v0

    const-string/jumbo v6, "android.nfc.extra.NDEF_MESSAGES"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v5

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    .line 108
    move-object v2, v6

    if-eqz v5, :cond_1

    .line 109
    move-object v5, v2

    array-length v5, v5

    new-array v5, v5, [Landroid/nfc/NdefMessage;

    move-object v3, v5

    .line 110
    const/4 v5, 0x0

    move v4, v5

    :goto_0
    move v5, v4

    move-object v6, v2

    array-length v6, v6

    if-ge v5, v6, :cond_0

    .line 111
    move-object v5, v3

    move v6, v4

    move-object v7, v2

    move v8, v4

    aget-object v7, v7, v8

    check-cast v7, Landroid/nfc/NdefMessage;

    aput-object v7, v5, v6

    .line 110
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 122
    :cond_0
    :goto_1
    move-object v5, v3

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v5

    move-object v4, v5

    .line 124
    new-instance v5, Ljava/lang/String;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v4

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 127
    move-object v5, v0

    const-string/jumbo v6, "android.nfc.extra.TAG"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/nfc/Tag;

    move-object v3, v5

    .line 129
    move-object v5, v1

    move-object v6, v3

    invoke-virtual {v6}, Landroid/nfc/Tag;->getId()[B

    move-result-object v6

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/NearField;->toHexString([B)Ljava/lang/String;

    move-result-object v6

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Lcom/google/appinventor/components/runtime/NearField;->TagRead(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 144
    :goto_2
    return-void

    .line 117
    :cond_1
    const/4 v5, 0x0

    new-array v5, v5, [B

    move-object v4, v5

    .line 118
    new-instance v5, Landroid/nfc/NdefRecord;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    const/4 v7, 0x5

    move-object v8, v4

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v4

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    move-object v2, v5

    .line 119
    new-instance v5, Landroid/nfc/NdefMessage;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    const/4 v7, 0x1

    new-array v7, v7, [Landroid/nfc/NdefRecord;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move-object v10, v2

    aput-object v10, v8, v9

    invoke-direct {v6, v7}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    move-object v3, v5

    .line 120
    const/4 v5, 0x1

    new-array v5, v5, [Landroid/nfc/NdefMessage;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    const/4 v7, 0x0

    move-object v8, v3

    aput-object v8, v6, v7

    move-object v3, v5

    goto :goto_1

    .line 131
    :cond_2
    move-object v5, v0

    const-string/jumbo v6, "android.nfc.extra.TAG"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/nfc/Tag;

    move-object v2, v5

    .line 132
    const/4 v5, 0x0

    move-object v3, v5

    .line 133
    move-object v5, v1

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/NearField;->WriteType()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 134
    move-object v5, v1

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/NearField;->TextToWrite()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/google/appinventor/components/runtime/util/GingerbreadUtil;->createTextRecord(Ljava/lang/String;Z)Landroid/nfc/NdefRecord;

    move-result-object v5

    move-object v4, v5

    .line 135
    new-instance v5, Landroid/nfc/NdefMessage;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    const/4 v7, 0x1

    new-array v7, v7, [Landroid/nfc/NdefRecord;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move-object v10, v4

    aput-object v10, v8, v9

    invoke-direct {v6, v7}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    move-object v3, v5

    .line 137
    :cond_3
    move-object v5, v3

    move-object v6, v2

    invoke-static {v5, v6}, Lcom/google/appinventor/components/runtime/util/GingerbreadUtil;->writeNFCTag(Landroid/nfc/NdefMessage;Landroid/nfc/Tag;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 138
    move-object v5, v1

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/NearField;->TagWritten()V

    .line 140
    :cond_4
    goto :goto_2

    .line 142
    :cond_5
    const-string/jumbo v5, "nearfield"

    const-string/jumbo v6, "Unknown intent "

    move-object v7, v0

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 144
    goto/16 :goto_2
.end method

.method public static writeNFCTag(Landroid/nfc/NdefMessage;Landroid/nfc/Tag;)Z
    .locals 7

    .prologue
    .line 150
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    invoke-virtual {v4}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v4

    array-length v4, v4

    move v2, v4

    .line 152
    move-object v4, v1

    :try_start_0
    invoke-static {v4}, Landroid/nfc/tech/Ndef;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/Ndef;

    move-result-object v4

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    .line 153
    move-object v3, v5

    if-eqz v4, :cond_2

    .line 154
    move-object v4, v3

    invoke-virtual {v4}, Landroid/nfc/tech/Ndef;->connect()V

    .line 155
    move-object v4, v3

    invoke-virtual {v4}, Landroid/nfc/tech/Ndef;->isWritable()Z

    move-result v4

    if-nez v4, :cond_0

    .line 156
    const/4 v4, 0x0

    move v0, v4

    .line 178
    :goto_0
    return v0

    .line 158
    :cond_0
    move-object v4, v3

    invoke-virtual {v4}, Landroid/nfc/tech/Ndef;->getMaxSize()I

    move-result v4

    move v5, v2

    if-ge v4, v5, :cond_1

    .line 159
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 161
    :cond_1
    move-object v4, v3

    move-object v5, v0

    invoke-virtual {v4, v5}, Landroid/nfc/tech/Ndef;->writeNdefMessage(Landroid/nfc/NdefMessage;)V

    .line 162
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    .line 164
    :cond_2
    move-object v4, v1

    invoke-static {v4}, Landroid/nfc/tech/NdefFormatable;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/NdefFormatable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    .line 165
    move-object v1, v5

    if-eqz v4, :cond_3

    .line 167
    move-object v4, v1

    :try_start_1
    invoke-virtual {v4}, Landroid/nfc/tech/NdefFormatable;->connect()V

    .line 168
    move-object v4, v1

    move-object v5, v0

    invoke-virtual {v4, v5}, Landroid/nfc/tech/NdefFormatable;->format(Landroid/nfc/NdefMessage;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 169
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    .line 171
    :catch_0
    move-exception v4

    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 174
    :cond_3
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 178
    :catch_1
    move-exception v4

    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method
