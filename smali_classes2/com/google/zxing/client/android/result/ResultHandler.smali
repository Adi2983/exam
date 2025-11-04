.class public abstract Lcom/google/zxing/client/android/result/ResultHandler;
.super Ljava/lang/Object;
.source "ResultHandler.java"


# static fields
.field private static final ADDRESS_TYPE_STRINGS:[Ljava/lang/String;

.field private static final ADDRESS_TYPE_VALUES:[I

.field private static final EMAIL_TYPE_STRINGS:[Ljava/lang/String;

.field private static final EMAIL_TYPE_VALUES:[I

.field private static final GOOGLE_SHOPPER_ACTIVITY:Ljava/lang/String; = "com.google.android.apps.shopper.results.SearchResultsActivity"

.field private static final GOOGLE_SHOPPER_PACKAGE:Ljava/lang/String; = "com.google.android.apps.shopper"

.field private static final MARKET_REFERRER_SUFFIX:Ljava/lang/String; = "&referrer=utm_source%3Dbarcodescanner%26utm_medium%3Dapps%26utm_campaign%3Dscan"

.field private static final MARKET_URI_PREFIX:Ljava/lang/String; = "market://details?id="

.field public static final MAX_BUTTON_COUNT:I = 0x4

.field private static final NO_TYPE:I = -0x1

.field private static final PHONE_TYPE_STRINGS:[Ljava/lang/String;

.field private static final PHONE_TYPE_VALUES:[I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final customProductSearch:Ljava/lang/String;

.field private final rawResult:Lcom/google/zxing/Result;

.field private final result:Lcom/google/zxing/client/result/ParsedResult;

.field private final shopperMarketListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 50
    const-class v0, Lcom/google/zxing/client/android/result/ResultHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/result/ResultHandler;->TAG:Ljava/lang/String;

    .line 59
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string/jumbo v3, "home"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const-string/jumbo v3, "work"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    const-string/jumbo v3, "mobile"

    aput-object v3, v1, v2

    sput-object v0, Lcom/google/zxing/client/android/result/ResultHandler;->EMAIL_TYPE_STRINGS:[Ljava/lang/String;

    .line 60
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string/jumbo v3, "home"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const-string/jumbo v3, "work"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    const-string/jumbo v3, "mobile"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    const-string/jumbo v3, "fax"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    const-string/jumbo v3, "pager"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x5

    const-string/jumbo v3, "main"

    aput-object v3, v1, v2

    sput-object v0, Lcom/google/zxing/client/android/result/ResultHandler;->PHONE_TYPE_STRINGS:[Ljava/lang/String;

    .line 61
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string/jumbo v3, "home"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const-string/jumbo v3, "work"

    aput-object v3, v1, v2

    sput-object v0, Lcom/google/zxing/client/android/result/ResultHandler;->ADDRESS_TYPE_STRINGS:[Ljava/lang/String;

    .line 62
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/client/android/result/ResultHandler;->EMAIL_TYPE_VALUES:[I

    .line 67
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/zxing/client/android/result/ResultHandler;->PHONE_TYPE_VALUES:[I

    .line 75
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/zxing/client/android/result/ResultHandler;->ADDRESS_TYPE_VALUES:[I

    return-void

    .line 62
    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x4
    .end array-data

    .line 67
    :array_1
    .array-data 4
        0x1
        0x3
        0x2
        0x4
        0x6
        0xc
    .end array-data

    .line 75
    :array_2
    .array-data 4
        0x1
        0x2
    .end array-data
.end method

.method constructor <init>(Landroid/app/Activity;Lcom/google/zxing/client/result/ParsedResult;)V
    .locals 7

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/result/ResultHandler;
    move-object v1, p1

    .local v1, "activity":Landroid/app/Activity;
    move-object v2, p2

    .local v2, "result":Lcom/google/zxing/client/result/ParsedResult;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/google/zxing/client/android/result/ResultHandler;-><init>(Landroid/app/Activity;Lcom/google/zxing/client/result/ParsedResult;Lcom/google/zxing/Result;)V

    .line 99
    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Lcom/google/zxing/client/result/ParsedResult;Lcom/google/zxing/Result;)V
    .locals 9

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/result/ResultHandler;
    move-object v1, p1

    .local v1, "activity":Landroid/app/Activity;
    move-object v2, p2

    .local v2, "result":Lcom/google/zxing/client/result/ParsedResult;
    move-object v3, p3

    .local v3, "rawResult":Lcom/google/zxing/Result;
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 88
    move-object v4, v0

    new-instance v5, Lcom/google/zxing/client/android/result/ResultHandler$1;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/google/zxing/client/android/result/ResultHandler$1;-><init>(Lcom/google/zxing/client/android/result/ResultHandler;)V

    iput-object v5, v4, Lcom/google/zxing/client/android/result/ResultHandler;->shopperMarketListener:Landroid/content/DialogInterface$OnClickListener;

    .line 102
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/google/zxing/client/android/result/ResultHandler;->result:Lcom/google/zxing/client/result/ParsedResult;

    .line 103
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/google/zxing/client/android/result/ResultHandler;->activity:Landroid/app/Activity;

    .line 104
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/google/zxing/client/android/result/ResultHandler;->rawResult:Lcom/google/zxing/Result;

    .line 105
    move-object v4, v0

    move-object v5, v0

    invoke-direct {v5}, Lcom/google/zxing/client/android/result/ResultHandler;->parseCustomSearchURL()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/google/zxing/client/android/result/ResultHandler;->customProductSearch:Ljava/lang/String;

    .line 109
    return-void
.end method

.method private static doToContractType(Ljava/lang/String;[Ljava/lang/String;[I)I
    .locals 8

    .prologue
    .line 282
    move-object v0, p0

    .local v0, "typeString":Ljava/lang/String;
    move-object v1, p1

    .local v1, "types":[Ljava/lang/String;
    move-object v2, p2

    .local v2, "values":[I
    move-object v5, v0

    if-nez v5, :cond_0

    .line 283
    const/4 v5, -0x1

    move v0, v5

    .line 291
    .end local v0    # "typeString":Ljava/lang/String;
    :goto_0
    return v0

    .line 285
    .restart local v0    # "typeString":Ljava/lang/String;
    :cond_0
    const/4 v5, 0x0

    move v3, v5

    .local v3, "i":I
    :goto_1
    move v5, v3

    move-object v6, v1

    array-length v6, v6

    if-ge v5, v6, :cond_3

    .line 286
    move-object v5, v1

    move v6, v3

    aget-object v5, v5, v6

    move-object v4, v5

    .line 287
    .local v4, "type":Ljava/lang/String;
    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    move-object v5, v0

    move-object v6, v4

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 288
    :cond_1
    move-object v5, v2

    move v6, v3

    aget v5, v5, v6

    move v0, v5

    goto :goto_0

    .line 285
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 291
    .end local v4    # "type":Ljava/lang/String;
    :cond_3
    const/4 v5, -0x1

    move v0, v5

    goto :goto_0
.end method

.method private parseCustomSearchURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 491
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/result/ResultHandler;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/client/android/result/ResultHandler;
    return-object v0
.end method

.method private static putExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 478
    move-object v0, p0

    .local v0, "intent":Landroid/content/Intent;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move-object v2, p2

    .local v2, "value":Ljava/lang/String;
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 479
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 481
    :cond_0
    return-void
.end method

.method private static toAddressContractType(Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 278
    move-object v0, p0

    .local v0, "typeString":Ljava/lang/String;
    move-object v1, v0

    sget-object v2, Lcom/google/zxing/client/android/result/ResultHandler;->ADDRESS_TYPE_STRINGS:[Ljava/lang/String;

    sget-object v3, Lcom/google/zxing/client/android/result/ResultHandler;->ADDRESS_TYPE_VALUES:[I

    invoke-static {v1, v2, v3}, Lcom/google/zxing/client/android/result/ResultHandler;->doToContractType(Ljava/lang/String;[Ljava/lang/String;[I)I

    move-result v1

    move v0, v1

    .end local v0    # "typeString":Ljava/lang/String;
    return v0
.end method

.method private static toEmailContractType(Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 270
    move-object v0, p0

    .local v0, "typeString":Ljava/lang/String;
    move-object v1, v0

    sget-object v2, Lcom/google/zxing/client/android/result/ResultHandler;->EMAIL_TYPE_STRINGS:[Ljava/lang/String;

    sget-object v3, Lcom/google/zxing/client/android/result/ResultHandler;->EMAIL_TYPE_VALUES:[I

    invoke-static {v1, v2, v3}, Lcom/google/zxing/client/android/result/ResultHandler;->doToContractType(Ljava/lang/String;[Ljava/lang/String;[I)I

    move-result v1

    move v0, v1

    .end local v0    # "typeString":Ljava/lang/String;
    return v0
.end method

.method private static toPhoneContractType(Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 274
    move-object v0, p0

    .local v0, "typeString":Ljava/lang/String;
    move-object v1, v0

    sget-object v2, Lcom/google/zxing/client/android/result/ResultHandler;->PHONE_TYPE_STRINGS:[Ljava/lang/String;

    sget-object v3, Lcom/google/zxing/client/android/result/ResultHandler;->PHONE_TYPE_VALUES:[I

    invoke-static {v1, v2, v3}, Lcom/google/zxing/client/android/result/ResultHandler;->doToContractType(Ljava/lang/String;[Ljava/lang/String;[I)I

    move-result v1

    move v0, v1

    .end local v0    # "typeString":Ljava/lang/String;
    return v0
.end method


# virtual methods
.method final addContact([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 30

    .prologue
    .line 214
    move-object/from16 v2, p0

    .local v2, "this":Lcom/google/zxing/client/android/result/ResultHandler;
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

    .local v9, "note":Ljava/lang/String;
    move-object/from16 v10, p8

    .local v10, "instantMessenger":Ljava/lang/String;
    move-object/from16 v11, p9

    .local v11, "address":Ljava/lang/String;
    move-object/from16 v12, p10

    .local v12, "addressType":Ljava/lang/String;
    move-object/from16 v13, p11

    .local v13, "org":Ljava/lang/String;
    move-object/from16 v14, p12

    .local v14, "title":Ljava/lang/String;
    move-object/from16 v15, p13

    .local v15, "url":Ljava/lang/String;
    move-object/from16 v16, p14

    .local v16, "birthday":Ljava/lang/String;
    new-instance v25, Landroid/content/Intent;

    move-object/from16 v29, v25

    move-object/from16 v25, v29

    move-object/from16 v26, v29

    const-string/jumbo v27, "android.intent.action.INSERT_OR_EDIT"

    sget-object v28, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct/range {v26 .. v28}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v17, v25

    .line 215
    .local v17, "intent":Landroid/content/Intent;
    move-object/from16 v25, v17

    const-string/jumbo v26, "vnd.android.cursor.item/contact"

    invoke-virtual/range {v25 .. v26}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v25

    .line 216
    move-object/from16 v25, v17

    const-string/jumbo v26, "name"

    move-object/from16 v27, v3

    if-eqz v27, :cond_1

    move-object/from16 v27, v3

    const/16 v28, 0x0

    aget-object v27, v27, v28

    :goto_0
    invoke-static/range {v25 .. v27}, Lcom/google/zxing/client/android/result/ResultHandler;->putExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    move-object/from16 v25, v17

    const-string/jumbo v26, "phonetic_name"

    move-object/from16 v27, v4

    invoke-static/range {v25 .. v27}, Lcom/google/zxing/client/android/result/ResultHandler;->putExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    move-object/from16 v25, v5

    if-eqz v25, :cond_2

    move-object/from16 v25, v5

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    :goto_1
    sget-object v26, Lcom/google/zxing/client/android/Contents;->PHONE_KEYS:[Ljava/lang/String;

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->min(II)I

    move-result v25

    move/from16 v18, v25

    .line 221
    .local v18, "phoneCount":I
    const/16 v25, 0x0

    move/from16 v19, v25

    .local v19, "x":I
    :goto_2
    move/from16 v25, v19

    move/from16 v26, v18

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_3

    .line 222
    move-object/from16 v25, v17

    sget-object v26, Lcom/google/zxing/client/android/Contents;->PHONE_KEYS:[Ljava/lang/String;

    move/from16 v27, v19

    aget-object v26, v26, v27

    move-object/from16 v27, v5

    move/from16 v28, v19

    aget-object v27, v27, v28

    invoke-static/range {v25 .. v27}, Lcom/google/zxing/client/android/result/ResultHandler;->putExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    move-object/from16 v25, v6

    if-eqz v25, :cond_0

    move/from16 v25, v19

    move-object/from16 v26, v6

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_0

    .line 224
    move-object/from16 v25, v6

    move/from16 v26, v19

    aget-object v25, v25, v26

    invoke-static/range {v25 .. v25}, Lcom/google/zxing/client/android/result/ResultHandler;->toPhoneContractType(Ljava/lang/String;)I

    move-result v25

    move/from16 v20, v25

    .line 225
    .local v20, "type":I
    move/from16 v25, v20

    if-ltz v25, :cond_0

    .line 226
    move-object/from16 v25, v17

    sget-object v26, Lcom/google/zxing/client/android/Contents;->PHONE_TYPE_KEYS:[Ljava/lang/String;

    move/from16 v27, v19

    aget-object v26, v26, v27

    move/from16 v27, v20

    invoke-virtual/range {v25 .. v27}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v25

    .line 221
    .end local v20    # "type":I
    :cond_0
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 216
    .end local v18    # "phoneCount":I
    .end local v19    # "x":I
    :cond_1
    const/16 v27, 0x0

    goto :goto_0

    .line 220
    :cond_2
    const/16 v25, 0x0

    goto :goto_1

    .line 231
    .restart local v18    # "phoneCount":I
    .restart local v19    # "x":I
    :cond_3
    move-object/from16 v25, v7

    if-eqz v25, :cond_5

    move-object/from16 v25, v7

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    :goto_3
    sget-object v26, Lcom/google/zxing/client/android/Contents;->EMAIL_KEYS:[Ljava/lang/String;

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->min(II)I

    move-result v25

    move/from16 v19, v25

    .line 232
    .local v19, "emailCount":I
    const/16 v25, 0x0

    move/from16 v20, v25

    .local v20, "x":I
    :goto_4
    move/from16 v25, v20

    move/from16 v26, v19

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_6

    .line 233
    move-object/from16 v25, v17

    sget-object v26, Lcom/google/zxing/client/android/Contents;->EMAIL_KEYS:[Ljava/lang/String;

    move/from16 v27, v20

    aget-object v26, v26, v27

    move-object/from16 v27, v7

    move/from16 v28, v20

    aget-object v27, v27, v28

    invoke-static/range {v25 .. v27}, Lcom/google/zxing/client/android/result/ResultHandler;->putExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    move-object/from16 v25, v8

    if-eqz v25, :cond_4

    move/from16 v25, v20

    move-object/from16 v26, v8

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_4

    .line 235
    move-object/from16 v25, v8

    move/from16 v26, v20

    aget-object v25, v25, v26

    invoke-static/range {v25 .. v25}, Lcom/google/zxing/client/android/result/ResultHandler;->toEmailContractType(Ljava/lang/String;)I

    move-result v25

    move/from16 v21, v25

    .line 236
    .local v21, "type":I
    move/from16 v25, v21

    if-ltz v25, :cond_4

    .line 237
    move-object/from16 v25, v17

    sget-object v26, Lcom/google/zxing/client/android/Contents;->EMAIL_TYPE_KEYS:[Ljava/lang/String;

    move/from16 v27, v20

    aget-object v26, v26, v27

    move/from16 v27, v21

    invoke-virtual/range {v25 .. v27}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v25

    .line 232
    .end local v21    # "type":I
    :cond_4
    add-int/lit8 v20, v20, 0x1

    goto :goto_4

    .line 231
    .end local v20    # "x":I
    .local v19, "x":I
    :cond_5
    const/16 v25, 0x0

    goto :goto_3

    .line 243
    .local v19, "emailCount":I
    .restart local v20    # "x":I
    :cond_6
    new-instance v25, Ljava/lang/StringBuilder;

    move-object/from16 v29, v25

    move-object/from16 v25, v29

    move-object/from16 v26, v29

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v25

    .line 244
    .local v20, "aggregatedNotes":Ljava/lang/StringBuilder;
    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v29, v25

    move-object/from16 v25, v29

    move-object/from16 v26, v29

    const/16 v27, 0x0

    move-object/from16 v28, v15

    aput-object v28, v26, v27

    move-object/from16 v29, v25

    move-object/from16 v25, v29

    move-object/from16 v26, v29

    const/16 v27, 0x1

    move-object/from16 v28, v16

    aput-object v28, v26, v27

    move-object/from16 v29, v25

    move-object/from16 v25, v29

    move-object/from16 v26, v29

    const/16 v27, 0x2

    move-object/from16 v28, v9

    aput-object v28, v26, v27

    move-object/from16 v21, v25

    move-object/from16 v25, v21

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v22, v25

    const/16 v25, 0x0

    move/from16 v23, v25

    :goto_5
    move/from16 v25, v23

    move/from16 v26, v22

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_9

    move-object/from16 v25, v21

    move/from16 v26, v23

    aget-object v25, v25, v26

    move-object/from16 v24, v25

    .line 245
    .local v24, "aNote":Ljava/lang/String;
    move-object/from16 v25, v24

    if-eqz v25, :cond_8

    .line 246
    move-object/from16 v25, v20

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->length()I

    move-result v25

    if-lez v25, :cond_7

    .line 247
    move-object/from16 v25, v20

    const/16 v26, 0xa

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 249
    :cond_7
    move-object/from16 v25, v20

    move-object/from16 v26, v24

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 244
    :cond_8
    add-int/lit8 v23, v23, 0x1

    goto :goto_5

    .line 252
    .end local v24    # "aNote":Ljava/lang/String;
    :cond_9
    move-object/from16 v25, v20

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->length()I

    move-result v25

    if-lez v25, :cond_a

    .line 253
    move-object/from16 v25, v17

    const-string/jumbo v26, "notes"

    move-object/from16 v27, v20

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v25 .. v27}, Lcom/google/zxing/client/android/result/ResultHandler;->putExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    :cond_a
    move-object/from16 v25, v17

    const-string/jumbo v26, "im_handle"

    move-object/from16 v27, v10

    invoke-static/range {v25 .. v27}, Lcom/google/zxing/client/android/result/ResultHandler;->putExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    move-object/from16 v25, v17

    const-string/jumbo v26, "postal"

    move-object/from16 v27, v11

    invoke-static/range {v25 .. v27}, Lcom/google/zxing/client/android/result/ResultHandler;->putExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    move-object/from16 v25, v12

    if-eqz v25, :cond_b

    .line 259
    move-object/from16 v25, v12

    invoke-static/range {v25 .. v25}, Lcom/google/zxing/client/android/result/ResultHandler;->toAddressContractType(Ljava/lang/String;)I

    move-result v25

    move/from16 v21, v25

    .line 260
    .restart local v21    # "type":I
    move/from16 v25, v21

    if-ltz v25, :cond_b

    .line 261
    move-object/from16 v25, v17

    const-string/jumbo v26, "postal_type"

    move/from16 v27, v21

    invoke-virtual/range {v25 .. v27}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v25

    .line 264
    .end local v21    # "type":I
    :cond_b
    move-object/from16 v25, v17

    const-string/jumbo v26, "company"

    move-object/from16 v27, v13

    invoke-static/range {v25 .. v27}, Lcom/google/zxing/client/android/result/ResultHandler;->putExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    move-object/from16 v25, v17

    const-string/jumbo v26, "job_title"

    move-object/from16 v27, v14

    invoke-static/range {v25 .. v27}, Lcom/google/zxing/client/android/result/ResultHandler;->putExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    move-object/from16 v25, v2

    move-object/from16 v26, v17

    invoke-virtual/range {v25 .. v26}, Lcom/google/zxing/client/android/result/ResultHandler;->launchIntent(Landroid/content/Intent;)V

    .line 267
    return-void
.end method

.method final addEmailOnlyContact([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 18

    .prologue
    .line 195
    move-object/from16 v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/result/ResultHandler;
    move-object/from16 v1, p1

    .local v1, "emails":[Ljava/lang/String;
    move-object/from16 v2, p2

    .local v2, "emailTypes":[Ljava/lang/String;
    move-object v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v8, v1

    move-object v9, v2

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v3 .. v17}, Lcom/google/zxing/client/android/result/ResultHandler;->addContact([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method final addPhoneOnlyContact([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 18

    .prologue
    .line 191
    move-object/from16 v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/result/ResultHandler;
    move-object/from16 v1, p1

    .local v1, "phoneNumbers":[Ljava/lang/String;
    move-object/from16 v2, p2

    .local v2, "phoneTypes":[Ljava/lang/String;
    move-object v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v1

    move-object v7, v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v3 .. v17}, Lcom/google/zxing/client/android/result/ResultHandler;->addContact([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    return-void
.end method

.method public areContentsSecure()Z
    .locals 2

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/result/ResultHandler;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/google/zxing/client/android/result/ResultHandler;
    return v0
.end method

.method final dialPhone(Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 350
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/result/ResultHandler;
    move-object v1, p1

    .local v1, "phoneNumber":Ljava/lang/String;
    move-object v2, v0

    new-instance v3, Landroid/content/Intent;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const-string/jumbo v5, "android.intent.action.DIAL"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "tel:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v2, v3}, Lcom/google/zxing/client/android/result/ResultHandler;->launchIntent(Landroid/content/Intent;)V

    .line 351
    return-void
.end method

.method final dialPhoneFromUri(Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 354
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/result/ResultHandler;
    move-object v1, p1

    .local v1, "uri":Ljava/lang/String;
    move-object v2, v0

    new-instance v3, Landroid/content/Intent;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string/jumbo v5, "android.intent.action.DIAL"

    move-object v6, v1

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v2, v3}, Lcom/google/zxing/client/android/result/ResultHandler;->launchIntent(Landroid/content/Intent;)V

    .line 355
    return-void
.end method

.method fillInCustomSearchURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 495
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/result/ResultHandler;
    move-object v1, p1

    .local v1, "text":Ljava/lang/String;
    move-object v4, v0

    iget-object v4, v4, Lcom/google/zxing/client/android/result/ResultHandler;->customProductSearch:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 496
    move-object v4, v1

    move-object v0, v4

    .line 506
    .end local v0    # "this":Lcom/google/zxing/client/android/result/ResultHandler;
    :goto_0
    return-object v0

    .line 498
    .restart local v0    # "this":Lcom/google/zxing/client/android/result/ResultHandler;
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/google/zxing/client/android/result/ResultHandler;->customProductSearch:Ljava/lang/String;

    const-string/jumbo v5, "%s"

    move-object v6, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 499
    .local v2, "url":Ljava/lang/String;
    move-object v4, v0

    iget-object v4, v4, Lcom/google/zxing/client/android/result/ResultHandler;->rawResult:Lcom/google/zxing/Result;

    if-eqz v4, :cond_1

    .line 500
    move-object v4, v2

    const-string/jumbo v5, "%f"

    move-object v6, v0

    iget-object v6, v6, Lcom/google/zxing/client/android/result/ResultHandler;->rawResult:Lcom/google/zxing/Result;

    invoke-virtual {v6}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 501
    move-object v4, v2

    const-string/jumbo v5, "%t"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 502
    move-object v4, v0

    iget-object v4, v4, Lcom/google/zxing/client/android/result/ResultHandler;->rawResult:Lcom/google/zxing/Result;

    invoke-static {v4}, Lcom/google/zxing/client/result/ResultParser;->parseResult(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v4

    move-object v3, v4

    .line 503
    .local v3, "parsedResultAgain":Lcom/google/zxing/client/result/ParsedResult;
    move-object v4, v2

    const-string/jumbo v5, "%t"

    move-object v6, v3

    invoke-virtual {v6}, Lcom/google/zxing/client/result/ParsedResult;->getType()Lcom/google/zxing/client/result/ParsedResultType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/zxing/client/result/ParsedResultType;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 506
    .end local v3    # "parsedResultAgain":Lcom/google/zxing/client/result/ParsedResult;
    :cond_1
    move-object v4, v2

    move-object v0, v4

    goto :goto_0
.end method

.method getActivity()Landroid/app/Activity;
    .locals 2

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/result/ResultHandler;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/client/android/result/ResultHandler;->activity:Landroid/app/Activity;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/client/android/result/ResultHandler;
    return-object v0
.end method

.method public abstract getButtonCount()I
.end method

.method public abstract getButtonText(I)I
.end method

.method final getDirections(DD)V
    .locals 13

    .prologue
    .line 376
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/result/ResultHandler;
    move-wide v1, p1

    .local v1, "latitude":D
    move-wide/from16 v3, p3

    .local v3, "longitude":D
    move-object v5, v0

    new-instance v6, Landroid/content/Intent;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const-string/jumbo v8, "android.intent.action.VIEW"

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "http://maps.google."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v0

    iget-object v10, v10, Lcom/google/zxing/client/android/result/ResultHandler;->activity:Landroid/app/Activity;

    .line 377
    invoke-static {v10}, Lcom/google/zxing/client/android/LocaleManager;->getCountryTLD(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "/maps?f=d&daddr="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide v10, v1

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x2c

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide v10, v3

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 376
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v5, v6}, Lcom/google/zxing/client/android/result/ResultHandler;->launchIntent(Landroid/content/Intent;)V

    .line 378
    return-void
.end method

.method public getDisplayContents()Ljava/lang/CharSequence;
    .locals 5

    .prologue
    .line 170
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/result/ResultHandler;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/zxing/client/android/result/ResultHandler;->result:Lcom/google/zxing/client/result/ParsedResult;

    invoke-virtual {v2}, Lcom/google/zxing/client/result/ParsedResult;->getDisplayResult()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 171
    .local v1, "contents":Ljava/lang/String;
    move-object v2, v1

    const-string/jumbo v3, "\r"

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/google/zxing/client/android/result/ResultHandler;
    return-object v0
.end method

.method public abstract getDisplayTitle()I
.end method

.method public getResult()Lcom/google/zxing/client/result/ParsedResult;
    .locals 2

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/result/ResultHandler;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/client/android/result/ResultHandler;->result:Lcom/google/zxing/client/result/ParsedResult;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/client/android/result/ResultHandler;
    return-object v0
.end method

.method public final getType()Lcom/google/zxing/client/result/ParsedResultType;
    .locals 2

    .prologue
    .line 187
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/result/ResultHandler;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/client/android/result/ResultHandler;->result:Lcom/google/zxing/client/result/ParsedResult;

    invoke-virtual {v1}, Lcom/google/zxing/client/result/ParsedResult;->getType()Lcom/google/zxing/client/result/ParsedResultType;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/client/android/result/ResultHandler;
    return-object v0
.end method

.method public abstract handleButtonPress(I)V
.end method

.method hasCustomProductSearch()Z
    .locals 2

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/result/ResultHandler;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/client/android/result/ResultHandler;->customProductSearch:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/google/zxing/client/android/result/ResultHandler;
    return v0

    .restart local v0    # "this":Lcom/google/zxing/client/android/result/ResultHandler;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method launchIntent(Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 467
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/result/ResultHandler;
    move-object v1, p1

    .local v1, "intent":Landroid/content/Intent;
    move-object v3, v0

    move-object v4, v1

    :try_start_0
    invoke-virtual {v3, v4}, Lcom/google/zxing/client/android/result/ResultHandler;->rawLaunchIntent(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 474
    .line 475
    :goto_0
    return-void

    .line 468
    :catch_0
    move-exception v3

    move-object v2, v3

    goto :goto_0
.end method

.method final openBookSearch(Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 388
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/result/ResultHandler;
    move-object v1, p1

    .local v1, "isbn":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "http://books.google."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/google/zxing/client/android/result/ResultHandler;->activity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/google/zxing/client/android/LocaleManager;->getBookSearchCountryTLD(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/books?vid=isbn"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object v2, v3

    .line 390
    .local v2, "uri":Landroid/net/Uri;
    move-object v3, v0

    new-instance v4, Landroid/content/Intent;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string/jumbo v6, "android.intent.action.VIEW"

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v3, v4}, Lcom/google/zxing/client/android/result/ResultHandler;->launchIntent(Landroid/content/Intent;)V

    .line 391
    return-void
.end method

.method final openGoogleShopper(Ljava/lang/String;)V
    .locals 0
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 446
    return-void
.end method

.method final openMap(Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 358
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/result/ResultHandler;
    move-object v1, p1

    .local v1, "geoURI":Ljava/lang/String;
    move-object v2, v0

    new-instance v3, Landroid/content/Intent;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string/jumbo v5, "android.intent.action.VIEW"

    move-object v6, v1

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v2, v3}, Lcom/google/zxing/client/android/result/ResultHandler;->launchIntent(Landroid/content/Intent;)V

    .line 359
    return-void
.end method

.method final openProductSearch(Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 382
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/result/ResultHandler;
    move-object v1, p1

    .local v1, "upc":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "http://www.google."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/google/zxing/client/android/result/ResultHandler;->activity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/google/zxing/client/android/LocaleManager;->getProductSearchCountryTLD(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/m/products?q="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "&source=zxing"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object v2, v3

    .line 384
    .local v2, "uri":Landroid/net/Uri;
    move-object v3, v0

    new-instance v4, Landroid/content/Intent;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string/jumbo v6, "android.intent.action.VIEW"

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v3, v4}, Lcom/google/zxing/client/android/result/ResultHandler;->launchIntent(Landroid/content/Intent;)V

    .line 385
    return-void
.end method

.method final openURL(Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 403
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/result/ResultHandler;
    move-object v1, p1

    .local v1, "url":Ljava/lang/String;
    move-object v4, v1

    const-string/jumbo v5, "HTTP://"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 404
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "http"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 408
    :cond_0
    :goto_0
    new-instance v4, Landroid/content/Intent;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string/jumbo v6, "android.intent.action.VIEW"

    move-object v7, v1

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v2, v4

    .line 410
    .local v2, "intent":Landroid/content/Intent;
    move-object v4, v0

    move-object v5, v2

    :try_start_0
    invoke-virtual {v4, v5}, Lcom/google/zxing/client/android/result/ResultHandler;->launchIntent(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    .line 414
    :goto_1
    return-void

    .line 405
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    move-object v4, v1

    const-string/jumbo v5, "HTTPS://"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 406
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "https"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    goto :goto_0

    .line 411
    .restart local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 412
    .local v3, "anfe":Landroid/content/ActivityNotFoundException;
    sget-object v4, Lcom/google/zxing/client/android/result/ResultHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Nothing available to handle "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    goto :goto_1
.end method

.method rawLaunchIntent(Landroid/content/Intent;)V
    .locals 6

    .prologue
    .line 455
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/result/ResultHandler;
    move-object v1, p1

    .local v1, "intent":Landroid/content/Intent;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 456
    move-object v2, v1

    const/high16 v3, 0x80000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    .line 457
    sget-object v2, Lcom/google/zxing/client/android/result/ResultHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Launching intent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " with extras: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 458
    move-object v2, v0

    iget-object v2, v2, Lcom/google/zxing/client/android/result/ResultHandler;->activity:Landroid/app/Activity;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 460
    :cond_0
    return-void
.end method

.method final searchBookContents(Ljava/lang/String;)V
    .locals 0
    .param p1, "isbnOrUrl"    # Ljava/lang/String;

    .prologue
    .line 398
    return-void
.end method

.method final searchMap(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 11

    .prologue
    .line 368
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/result/ResultHandler;
    move-object v1, p1

    .local v1, "address":Ljava/lang/String;
    move-object v2, p2

    .local v2, "title":Ljava/lang/CharSequence;
    move-object v4, v1

    move-object v3, v4

    .line 369
    .local v3, "query":Ljava/lang/String;
    move-object v4, v2

    if-eqz v4, :cond_0

    move-object v4, v2

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 370
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x29

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 372
    :cond_0
    move-object v4, v0

    new-instance v5, Landroid/content/Intent;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string/jumbo v7, "android.intent.action.VIEW"

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "geo:0,0?q="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v3

    invoke-static {v9}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v4, v5}, Lcom/google/zxing/client/android/result/ResultHandler;->launchIntent(Landroid/content/Intent;)V

    .line 373
    return-void
.end method

.method final sendEmail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 300
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/result/ResultHandler;
    move-object v1, p1

    .local v1, "address":Ljava/lang/String;
    move-object v2, p2

    .local v2, "subject":Ljava/lang/String;
    move-object v3, p3

    .local v3, "body":Ljava/lang/String;
    move-object v4, v0

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mailto:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/zxing/client/android/result/ResultHandler;->sendEmailFromUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    return-void
.end method

.method final sendEmailFromUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13

    .prologue
    .line 305
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/result/ResultHandler;
    move-object v1, p1

    .local v1, "uri":Ljava/lang/String;
    move-object v2, p2

    .local v2, "email":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "subject":Ljava/lang/String;
    move-object/from16 v4, p4

    .local v4, "body":Ljava/lang/String;
    new-instance v6, Landroid/content/Intent;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const-string/jumbo v8, "android.intent.action.SEND"

    move-object v9, v1

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v5, v6

    .line 306
    .local v5, "intent":Landroid/content/Intent;
    move-object v6, v2

    if-eqz v6, :cond_0

    .line 307
    move-object v6, v5

    const-string/jumbo v7, "android.intent.extra.EMAIL"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v2

    aput-object v11, v9, v10

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 309
    :cond_0
    move-object v6, v5

    const-string/jumbo v7, "android.intent.extra.SUBJECT"

    move-object v8, v3

    invoke-static {v6, v7, v8}, Lcom/google/zxing/client/android/result/ResultHandler;->putExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    move-object v6, v5

    const-string/jumbo v7, "android.intent.extra.TEXT"

    move-object v8, v4

    invoke-static {v6, v7, v8}, Lcom/google/zxing/client/android/result/ResultHandler;->putExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    move-object v6, v5

    const-string/jumbo v7, "text/plain"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 312
    move-object v6, v0

    move-object v7, v5

    invoke-virtual {v6, v7}, Lcom/google/zxing/client/android/result/ResultHandler;->launchIntent(Landroid/content/Intent;)V

    .line 313
    return-void
.end method

.method final sendMMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 333
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/result/ResultHandler;
    move-object v1, p1

    .local v1, "phoneNumber":Ljava/lang/String;
    move-object v2, p2

    .local v2, "subject":Ljava/lang/String;
    move-object v3, p3

    .local v3, "body":Ljava/lang/String;
    move-object v4, v0

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mmsto:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/zxing/client/android/result/ResultHandler;->sendMMSFromUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    return-void
.end method

.method final sendMMSFromUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "subject"    # Ljava/lang/String;
    .param p3, "body"    # Ljava/lang/String;

    .prologue
    .line 347
    return-void
.end method

.method final sendSMS(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 321
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/result/ResultHandler;
    move-object v1, p1

    .local v1, "phoneNumber":Ljava/lang/String;
    move-object v2, p2

    .local v2, "body":Ljava/lang/String;
    move-object v3, v0

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "smsto:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/google/zxing/client/android/result/ResultHandler;->sendSMSFromUri(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    return-void
.end method

.method final sendSMSFromUri(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 325
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/result/ResultHandler;
    move-object v1, p1

    .local v1, "uri":Ljava/lang/String;
    move-object v2, p2

    .local v2, "body":Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string/jumbo v6, "android.intent.action.SENDTO"

    move-object v7, v1

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v3, v4

    .line 326
    .local v3, "intent":Landroid/content/Intent;
    move-object v4, v3

    const-string/jumbo v5, "sms_body"

    move-object v6, v2

    invoke-static {v4, v5, v6}, Lcom/google/zxing/client/android/result/ResultHandler;->putExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    move-object v4, v3

    const-string/jumbo v5, "compose_mode"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v4

    .line 329
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Lcom/google/zxing/client/android/result/ResultHandler;->launchIntent(Landroid/content/Intent;)V

    .line 330
    return-void
.end method

.method final shareByEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "contents"    # Ljava/lang/String;

    .prologue
    .line 297
    return-void
.end method

.method final shareBySMS(Ljava/lang/String;)V
    .locals 0
    .param p1, "contents"    # Ljava/lang/String;

    .prologue
    .line 318
    return-void
.end method

.method showGoogleShopperButton(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 162
    return-void
.end method

.method final webSearch(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 417
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/result/ResultHandler;
    move-object v1, p1

    .local v1, "query":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "android.intent.action.WEB_SEARCH"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 418
    .local v2, "intent":Landroid/content/Intent;
    move-object v3, v2

    const-string/jumbo v4, "query"

    move-object v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 419
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/google/zxing/client/android/result/ResultHandler;->launchIntent(Landroid/content/Intent;)V

    .line 420
    return-void
.end method
