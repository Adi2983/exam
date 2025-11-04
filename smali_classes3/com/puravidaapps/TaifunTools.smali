.class public Lcom/puravidaapps/TaifunTools;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "TaifunTools.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/OnPauseListener;
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;
.implements Lcom/google/appinventor/components/runtime/OnStopListener;
.implements Lcom/google/appinventor/components/runtime/OnDestroyListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->EXTENSION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A collection of several tools, which do not need additional permissions. Version 21a as of 2021-01-06."
    helpUrl = "https://puravidaapps.com/tools.php"
    iconName = "https://puravidaapps.com/images/taifun16.png"
    nonVisible = true
    version = 0x15
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
    external = true
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TaifunTools"

.field public static final VERSION:I = 0x15

.field private static context:Landroid/content/Context;


# instance fields
.field private final activity:Landroid/app/Activity;

.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private file:Ljava/io/File;

.field private final imm:Landroid/view/inputmethod/InputMethodManager;

.field private isRepl:Z

.field private msc:Landroid/media/MediaScannerConnection;

.field private suppressWarnings:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 5

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Lcom/puravidaapps/TaifunTools;
    move-object v1, p1

    .local v1, "container":Lcom/google/appinventor/components/runtime/ComponentContainer;
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 95
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/puravidaapps/TaifunTools;->isRepl:Z

    .line 99
    move-object v2, v0

    iget-object v2, v2, Lcom/puravidaapps/TaifunTools;->form:Lcom/google/appinventor/components/runtime/Form;

    instance-of v2, v2, Lcom/google/appinventor/components/runtime/ReplForm;

    if-eqz v2, :cond_0

    .line 100
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/puravidaapps/TaifunTools;->isRepl:Z

    .line 102
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/puravidaapps/TaifunTools;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v3, v0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->registerForOnPause(Lcom/google/appinventor/components/runtime/OnPauseListener;)V

    .line 103
    move-object v2, v0

    iget-object v2, v2, Lcom/puravidaapps/TaifunTools;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v3, v0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->registerForOnStop(Lcom/google/appinventor/components/runtime/OnStopListener;)V

    .line 104
    move-object v2, v0

    iget-object v2, v2, Lcom/puravidaapps/TaifunTools;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v3, v0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    .line 105
    move-object v2, v0

    iget-object v2, v2, Lcom/puravidaapps/TaifunTools;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v3, v0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V

    .line 106
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/puravidaapps/TaifunTools;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 107
    move-object v2, v1

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    sput-object v2, Lcom/puravidaapps/TaifunTools;->context:Landroid/content/Context;

    .line 108
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, v2, Lcom/puravidaapps/TaifunTools;->activity:Landroid/app/Activity;

    .line 109
    move-object v2, v0

    sget-object v3, Lcom/puravidaapps/TaifunTools;->context:Landroid/content/Context;

    const-string/jumbo v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    iput-object v3, v2, Lcom/puravidaapps/TaifunTools;->imm:Landroid/view/inputmethod/InputMethodManager;

    .line 110
    const-string/jumbo v2, "TaifunTools"

    const-string/jumbo v3, "TaifunTools Created"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 111
    return-void
.end method

.method private static HmacDigest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    .prologue
    .line 185
    move-object v0, p0

    .local v0, "msg":Ljava/lang/String;
    move-object v1, p1

    .local v1, "keyString":Ljava/lang/String;
    move-object v2, p2

    .local v2, "algo":Ljava/lang/String;
    const/4 v8, 0x0

    move-object v3, v8

    .line 186
    .local v3, "digest":Ljava/lang/String;
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    move v4, v8

    .line 187
    .local v4, "version":I
    move v8, v4

    const/16 v9, 0x8

    if-ge v8, v9, :cond_0

    .line 188
    const-string/jumbo v8, "TaifunTools"

    const-string/jumbo v9, "Sorry, Base64 encode is not available for API < 8"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 202
    :goto_0
    move-object v8, v3

    move-object v0, v8

    .end local v0    # "msg":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 191
    .restart local v0    # "msg":Ljava/lang/String;
    :cond_0
    :try_start_0
    new-instance v8, Ljavax/crypto/spec/SecretKeySpec;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v1

    const-string/jumbo v11, "UTF-8"

    invoke-virtual {v10, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    move-object v11, v2

    invoke-direct {v9, v10, v11}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    move-object v5, v8

    .line 192
    .local v5, "key":Ljavax/crypto/spec/SecretKeySpec;
    move-object v8, v2

    invoke-static {v8}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v8

    move-object v6, v8

    .line 193
    .local v6, "mac":Ljavax/crypto/Mac;
    move-object v8, v6

    move-object v9, v5

    invoke-virtual {v8, v9}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 195
    move-object v8, v6

    move-object v9, v0

    const-string/jumbo v10, "UTF-8"

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {v8, v9}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v8

    move-object v7, v8

    .line 196
    .local v7, "rawHmac":[B
    move-object v8, v7

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    move-object v0, v8

    goto :goto_1

    .line 197
    .end local v5    # "key":Ljavax/crypto/spec/SecretKeySpec;
    .end local v6    # "mac":Ljavax/crypto/Mac;
    .end local v7    # "rawHmac":[B
    :catch_0
    move-exception v8

    move-object v5, v8

    .line 198
    .local v5, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "TaifunTools"

    move-object v9, v5

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 199
    move-object v8, v5

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static deleteDir(Ljava/io/File;)Z
    .locals 10

    .prologue
    .line 361
    move-object v0, p0

    .local v0, "dir":Ljava/io/File;
    move-object v4, v0

    if-eqz v4, :cond_2

    move-object v4, v0

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 362
    move-object v4, v0

    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 363
    .local v1, "children":[Ljava/lang/String;
    const/4 v4, 0x0

    move v2, v4

    .local v2, "i":I
    :goto_0
    move v4, v2

    move-object v5, v1

    array-length v5, v5

    if-ge v4, v5, :cond_1

    .line 364
    const-string/jumbo v4, "TaifunTools"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "i: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", children: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    move v7, v2

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 365
    new-instance v4, Ljava/io/File;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    move-object v7, v1

    move v8, v2

    aget-object v7, v7, v8

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/puravidaapps/TaifunTools;->deleteDir(Ljava/io/File;)Z

    move-result v4

    move v3, v4

    .line 366
    .local v3, "success":Z
    move v4, v3

    if-nez v4, :cond_0

    .line 367
    const/4 v4, 0x0

    move v0, v4

    .line 374
    .end local v0    # "dir":Ljava/io/File;
    .end local v1    # "children":[Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "success":Z
    :goto_1
    return v0

    .line 363
    .restart local v0    # "dir":Ljava/io/File;
    .restart local v1    # "children":[Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v3    # "success":Z
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 370
    .end local v3    # "success":Z
    :cond_1
    move-object v4, v0

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v4

    move v0, v4

    goto :goto_1

    .line 371
    .end local v1    # "children":[Ljava/lang/String;
    .end local v2    # "i":I
    :cond_2
    move-object v4, v0

    if-eqz v4, :cond_3

    move-object v4, v0

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 372
    move-object v4, v0

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v4

    move v0, v4

    goto :goto_1

    .line 374
    :cond_3
    const/4 v4, 0x0

    move v0, v4

    goto :goto_1
.end method

.method private static fromHex(C)I
    .locals 4

    .prologue
    .line 441
    move v0, p0

    .local v0, "c":C
    move v1, v0

    const/16 v2, 0x30

    if-lt v1, v2, :cond_0

    move v1, v0

    const/16 v2, 0x39

    if-gt v1, v2, :cond_0

    .line 442
    move v1, v0

    const/16 v2, 0x30

    add-int/lit8 v1, v1, -0x30

    move v0, v1

    .line 448
    .end local v0    # "c":C
    :goto_0
    return v0

    .line 444
    .restart local v0    # "c":C
    :cond_0
    move v1, v0

    const/16 v2, 0x41

    if-lt v1, v2, :cond_1

    move v1, v0

    const/16 v2, 0x46

    if-gt v1, v2, :cond_1

    .line 445
    move v1, v0

    const/16 v2, 0x41

    add-int/lit8 v1, v1, -0x41

    const/16 v2, 0xa

    add-int/lit8 v1, v1, 0xa

    move v0, v1

    goto :goto_0

    .line 447
    :cond_1
    move v1, v0

    const/16 v2, 0x61

    if-lt v1, v2, :cond_2

    move v1, v0

    const/16 v2, 0x66

    if-gt v1, v2, :cond_2

    .line 448
    move v1, v0

    const/16 v2, 0x61

    add-int/lit8 v1, v1, -0x61

    const/16 v2, 0xa

    add-int/lit8 v1, v1, 0xa

    move v0, v1

    goto :goto_0

    .line 450
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method private isHex(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 463
    move-object v0, p0

    .local v0, "this":Lcom/puravidaapps/TaifunTools;
    move-object v1, p1

    .local v1, "s":Ljava/lang/String;
    move-object v2, v1

    const-string/jumbo v3, "-?[0-9a-fA-F]+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/puravidaapps/TaifunTools;
    return v0
.end method

.method private toHex(I)C
    .locals 5

    .prologue
    .line 454
    move-object v0, p0

    .local v0, "this":Lcom/puravidaapps/TaifunTools;
    move v1, p1

    .local v1, "nybble":I
    move v2, v1

    if-ltz v2, :cond_0

    move v2, v1

    const/16 v3, 0xf

    if-le v2, v3, :cond_1

    .line 455
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 457
    :cond_1
    const-string/jumbo v2, "0123456789ABCDEF"

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/puravidaapps/TaifunTools;
    return v0
.end method


# virtual methods
.method public ActivityStateChanged(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event indicating that the state of the activity changed.Possible values are pause, stop, resume. See also the activity lifecycle here http://developer.android.com/reference/android/app/Activity.html#ActivityLifecycle"
    .end annotation

    .prologue
    .line 291
    move-object v0, p0

    .local v0, "this":Lcom/puravidaapps/TaifunTools;
    move-object v1, p1

    .local v1, "state":Ljava/lang/String;
    const-string/jumbo v2, "TaifunTools"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ActivityStateChanged: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 292
    move-object v2, v0

    const-string/jumbo v3, "ActivityStateChanged"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v2

    .line 293
    return-void
.end method

.method public ApiLevel()I
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "API Level."
    .end annotation

    .prologue
    .line 770
    move-object v0, p0

    .local v0, "this":Lcom/puravidaapps/TaifunTools;
    const-string/jumbo v1, "TaifunTools"

    const-string/jumbo v2, "ApiLEvel"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 771
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    move v0, v1

    .end local v0    # "this":Lcom/puravidaapps/TaifunTools;
    return v0
.end method

.method public ApplicationSpecificDirectory()Ljava/lang/String;
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the application specific directory you can use to write files without having WRITE_EXTERNAL_STORAGE permission."
    .end annotation

    .prologue
    .line 782
    move-object v0, p0

    .local v0, "this":Lcom/puravidaapps/TaifunTools;
    const-string/jumbo v2, "TaifunTools"

    const-string/jumbo v3, "ApplicationSpecificDirectory"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 783
    sget-object v2, Lcom/puravidaapps/TaifunTools;->context:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    move-object v1, v2

    .line 784
    .local v1, "file":Ljava/io/File;
    move-object v2, v1

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/puravidaapps/TaifunTools;
    return-object v0
.end method

.method public Base64Encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Base64 encode a string. Precondition to use this block: Min Android Version of the app must be 8!"
    .end annotation

    .prologue
    .line 580
    move-object v0, p0

    .local v0, "this":Lcom/puravidaapps/TaifunTools;
    move-object v1, p1

    .local v1, "string":Ljava/lang/String;
    const-string/jumbo v4, "TaifunTools"

    const-string/jumbo v5, "Base64Encode"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 583
    move-object v4, v1

    :try_start_0
    const-string/jumbo v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    move-object v2, v4

    .line 584
    .local v2, "data":[B
    move-object v4, v2

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move-object v0, v4

    .line 588
    .end local v0    # "this":Lcom/puravidaapps/TaifunTools;
    .end local v2    # "data":[B
    :goto_0
    return-object v0

    .line 585
    .restart local v0    # "this":Lcom/puravidaapps/TaifunTools;
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 586
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v4, "TaifunTools"

    move-object v5, v3

    invoke-virtual {v5}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 587
    move-object v4, v3

    invoke-virtual {v4}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 588
    move-object v4, v3

    invoke-virtual {v4}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method

.method public ClearAppData()Z
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Clear the app data of the current app. Returns true if clearing was successful, else false."
    .end annotation

    .prologue
    .line 799
    move-object v0, p0

    .local v0, "this":Lcom/puravidaapps/TaifunTools;
    const-string/jumbo v3, "TaifunTools"

    const-string/jumbo v4, "ClearAppData"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 802
    const/16 v3, 0x13

    :try_start_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v3, v4, :cond_0

    .line 803
    sget-object v3, Lcom/puravidaapps/TaifunTools;->context:Landroid/content/Context;

    sget-object v4, Lcom/puravidaapps/TaifunTools;->context:Landroid/content/Context;

    const-string/jumbo v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    invoke-virtual {v3}, Landroid/app/ActivityManager;->clearApplicationUserData()Z

    move-result v3

    .line 809
    :goto_0
    const/4 v3, 0x1

    move v0, v3

    .line 813
    .end local v0    # "this":Lcom/puravidaapps/TaifunTools;
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    return v0

    .line 805
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "this":Lcom/puravidaapps/TaifunTools;
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Lcom/puravidaapps/TaifunTools;->PackageName()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 806
    .local v1, "packageName":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    move-object v2, v3

    .line 807
    .local v2, "runtime":Ljava/lang/Runtime;
    move-object v3, v2

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "pm clear "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 810
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "runtime":Ljava/lang/Runtime;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 811
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "TaifunTools"

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 812
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 813
    const/4 v3, 0x0

    move v0, v3

    goto :goto_1
.end method

.method public ClearCache()Z
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Clear the cache of the current app. Returns true if clearing was successful, else false."
    .end annotation

    .prologue
    .line 348
    move-object v0, p0

    .local v0, "this":Lcom/puravidaapps/TaifunTools;
    const-string/jumbo v2, "TaifunTools"

    const-string/jumbo v3, "ClearCache"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 350
    :try_start_0
    sget-object v2, Lcom/puravidaapps/TaifunTools;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    move-object v1, v2

    .line 351
    .local v1, "dir":Ljava/io/File;
    const-string/jumbo v2, "TaifunTools"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dir: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 352
    move-object v2, v1

    invoke-static {v2}, Lcom/puravidaapps/TaifunTools;->deleteDir(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    move v0, v2

    .line 356
    .end local v0    # "this":Lcom/puravidaapps/TaifunTools;
    .end local v1    # "dir":Ljava/io/File;
    :goto_0
    return v0

    .line 353
    .restart local v0    # "this":Lcom/puravidaapps/TaifunTools;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 354
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "TaifunTools"

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 355
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 356
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public Country()Ljava/lang/String;
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the country/region code of the current Locale, which should either be the empty string, an uppercase ISO 3166 2-letter code, or a UN M.49 3-digit code. A Locale object represents a specific geographical, political, or cultural region."
    .end annotation

    .prologue
    .line 561
    move-object v0, p0

    .local v0, "this":Lcom/puravidaapps/TaifunTools;
    sget-object v2, Lcom/puravidaapps/TaifunTools;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object v1, v2

    .line 562
    .local v1, "current":Ljava/util/Locale;
    move-object v2, v1

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/puravidaapps/TaifunTools;
    return-object v0
.end method

.method public Density()D
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the density of the device."
    .end annotation

    .prologue
    .line 693
    move-object v0, p0

    .local v0, "this":Lcom/puravidaapps/TaifunTools;
    const-string/jumbo v2, "TaifunTools"

    const-string/jumbo v3, "Density"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 694
    move-object v2, v0

    iget-object v2, v2, Lcom/puravidaapps/TaifunTools;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    move-object v1, v2

    .line 696
    .local v1, "dm":Landroid/util/DisplayMetrics;
    move-object v2, v1

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    float-to-double v2, v2

    move-wide v0, v2

    .end local v0    # "this":Lcom/puravidaapps/TaifunTools;
    return-wide v0
.end method

.method public DontKeepScreenOn()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Remove the KeepScreenOn flag."
    .end annotation

    .prologue
    .line 758
    move-object v0, p0

    .local v0, "this":Lcom/puravidaapps/TaifunTools;
    const-string/jumbo v1, "TaifunTools"

    const-string/jumbo v2, "KeepScreenOn"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 759
    move-object v1, v0

    iget-object v1, v1, Lcom/puravidaapps/TaifunTools;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 760
    return-void
.end method

.method public EmailAddressIsValid(Ljava/lang/String;)Z
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns true, if it is a valid email address, else false."
    .end annotation

    .prologue
    .line 655
    move-object v0, p0

    .local v0, "this":Lcom/puravidaapps/TaifunTools;
    move-object v1, p1

    .local v1, "emailAddress":Ljava/lang/String;
    const-string/jumbo v3, "TaifunTools"

    const-string/jumbo v4, "EmailAddressIsValid"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 656
    sget-object v3, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    move v2, v3

    .line 657
    .local v2, "isValid":Z
    move v3, v2

    move v0, v3

    .end local v0    # "this":Lcom/puravidaapps/TaifunTools;
    return v0
.end method

.method public GalleryRefresh(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Gallery Refresh for a specific filename."
    .end annotation

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "this":Lcom/puravidaapps/TaifunTools;
    move-object v1, p1

    .local v1, "fileName":Ljava/lang/String;
    const-string/jumbo v2, "TaifunTools"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Refresh, filename: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 145
    move-object v2, v0

    new-instance v3, Ljava/io/File;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, v2, Lcom/puravidaapps/TaifunTools;->file:Ljava/io/File;

    .line 147
    sget-object v2, Lcom/puravidaapps/TaifunTools;->context:Landroid/content/Context;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Lcom/puravidaapps/TaifunTools;->file:Ljava/io/File;

    .line 148
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v4, 0x0

    new-instance v5, Lcom/puravidaapps/TaifunTools$1;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/puravidaapps/TaifunTools$1;-><init>(Lcom/puravidaapps/TaifunTools;)V

    .line 147
    invoke-static {v2, v3, v4, v5}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 155
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/puravidaapps/TaifunTools;
    return-object v0
.end method

.method public HideContent()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Hide content, i.e. enable content to move behind status and navigation bar."
    .end annotation

    .prologue
    .line 518
    move-object v0, p0

    .local v0, "this":Lcom/puravidaapps/TaifunTools;
    move-object v2, v0

    iget-object v2, v2, Lcom/puravidaapps/TaifunTools;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    move-object v1, v2

    .line 519
    .local v1, "decorView":Landroid/view/View;
    move-object v2, v1

    const/16 v3, 0x700

    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 524
    return-void
.end method

.method public HideSystemUI()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Hide the system user interface"
    .end annotation

    .prologue
    .line 237
    move-object v0, p0

    .local v0, "this":Lcom/puravidaapps/TaifunTools;
    move-object v2, v0

    iget-object v2, v2, Lcom/puravidaapps/TaifunTools;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    move-object v1, v2

    .line 238
    .local v1, "decorView":Landroid/view/View;
    move-object v2, v1

    const/16 v3, 0x1706

    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 245
    return-void
.end method

.method public HmacSha1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns a base64 encoded HMAC SHA1 hash. Precondition to use this block: Min Android Version of the app must be 8!"
    .end annotation

    .prologue
    .line 168
    move-object v0, p0

    .local v0, "this":Lcom/puravidaapps/TaifunTools;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    move-object v2, p2

    .local v2, "key":Ljava/lang/String;
    const-string/jumbo v3, "TaifunTools"

    const-string/jumbo v4, "HmacSha1"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 169
    move-object v3, v1

    move-object v4, v2

    const-string/jumbo v5, "HmacSHA1"

    invoke-static {v3, v4, v5}, Lcom/puravidaapps/TaifunTools;->HmacDigest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/puravidaapps/TaifunTools;
    return-object v0
.end method

.method public HmacSha256(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns a base64 encoded HMAC SHA256 hash. Precondition to use this block: Min Android Version of the app must be 8!"
    .end annotation

    .prologue
    .line 176
    move-object v0, p0

    .local v0, "this":Lcom/puravidaapps/TaifunTools;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    move-object v2, p2

    .local v2, "key":Ljava/lang/String;
    const-string/jumbo v3, "TaifunTools"

    const-string/jumbo v4, "HmacSha256"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 177
    move-object v3, v1

    move-object v4, v2

    const-string/jumbo v5, "HmacSha256"

    invoke-static {v3, v4, v5}, Lcom/puravidaapps/TaifunTools;->HmacDigest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/puravidaapps/TaifunTools;
    return-object v0
.end method

.method public IsDevelopment()Z
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns true, if app is running in development mode (using the companion app), else returns false."
    .end annotation

    .prologue
    .line 716
    move-object v0, p0

    .local v0, "this":Lcom/puravidaapps/TaifunTools;
    const-string/jumbo v1, "TaifunTools"

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "IsDevelopment: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-boolean v3, v3, Lcom/puravidaapps/TaifunTools;->isRepl:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 717
    move-object v1, v0

    iget-boolean v1, v1, Lcom/puravidaapps/TaifunTools;->isRepl:Z

    move v0, v1

    .end local v0    # "this":Lcom/puravidaapps/TaifunTools;
    return v0
.end method

.method public KeepScreenOn()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "As long as this window is visible to the user, keep the device\'s screen turned on and bright."
    .end annotation

    .prologue
    .line 627
    move-object v0, p0

    .local v0, "this":Lcom/puravidaapps/TaifunTools;
    const-string/jumbo v1, "TaifunTools"

    const-string/jumbo v2, "KeepScreenOn"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 628
    move-object v1, v0

    iget-object v1, v1, Lcom/puravidaapps/TaifunTools;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 629
    return-void
.end method

.method public Language()Ljava/lang/String;
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the language code of the current Locale. A Locale object represents a specific geographical, political, or cultural region."
    .end annotation

    .prologue
    .line 549
    move-object v0, p0

    .local v0, "this":Lcom/puravidaapps/TaifunTools;
    sget-object v2, Lcom/puravidaapps/TaifunTools;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object v1, v2

    .line 550
    .local v1, "current":Ljava/util/Locale;
    move-object v2, v1

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/puravidaapps/TaifunTools;
    return-object v0
.end method

.method public Matches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "returns true, if string matches a regular expression, else false"
    .end annotation

    .prologue
    .line 603
    move-object v0, p0

    .local v0, "this":Lcom/puravidaapps/TaifunTools;
    move-object v1, p1

    .local v1, "string":Ljava/lang/String;
    move-object v2, p2

    .local v2, "regex":Ljava/lang/String;
    const-string/jumbo v3, "TaifunTools"

    const-string/jumbo v4, "Matches"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 604
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 605
    const/4 v3, 0x1

    move v0, v3

    .line 607
    .end local v0    # "this":Lcom/puravidaapps/TaifunTools;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/puravidaapps/TaifunTools;
    :cond_0
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public NavigationBarColor(I)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&H00FFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set navigation bar color. This will work starting from API Level 21 (Android Lollipop"
    .end annotation

    .prologue
    .line 501
    move-object v0, p0

    .local v0, "this":Lcom/puravidaapps/TaifunTools;
    move v1, p1

    .local v1, "argb":I
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    move v2, v4

    .line 502
    .local v2, "version":I
    move v4, v2

    const/16 v5, 0x15

    if-ge v4, v5, :cond_0

    .line 503
    const-string/jumbo v4, "TaifunTools"

    const-string/jumbo v5, "Sorry, NavigationBarColor is not available for API Level < 21"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 510
    :goto_0
    return-void

    .line 505
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/puravidaapps/TaifunTools;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    move-object v3, v4

    .line 506
    .local v3, "window":Landroid/view/Window;
    move-object v4, v3

    const/high16 v5, -0x80000000

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 507
    move-object v4, v3

    const/high16 v5, 0x8000000

    invoke-virtual {v4, v5}, Landroid/view/Window;->clearFlags(I)V

    .line 508
    move-object v4, v3

    move v5, v1

    invoke-virtual {v4, v5}, Landroid/view/Window;->setNavigationBarColor(I)V

    goto :goto_0
.end method

.method public PackageName()Ljava/lang/String;
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the package name of the app."
    .end annotation

    .prologue
    .line 708
    move-object v0, p0

    .local v0, "this":Lcom/puravidaapps/TaifunTools;
    const-string/jumbo v1, "TaifunTools"

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "PackageName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/puravidaapps/TaifunTools;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 709
    sget-object v1, Lcom/puravidaapps/TaifunTools;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/puravidaapps/TaifunTools;
    return-object v0
.end method

.method public PathToAssets()Ljava/lang/String;
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the path to the assets. This method is useful, if you want to access files from the webviewer component stored in the assets of the app. The method will return \'file:///android_asset/\' in case the app is running after building the app as apk file. For the companion app there can be returned 3 different values: file:///storage/emulated/0/Android/data/<packageName>/files/assets/ for devices >= Android 10, file:///storage/emulated/0/AppInventor/assets/\' for the App Inventor companion app and < Android 10, file:///storage/emulated/0/Makeroid/assets/\' for the Kodular (formerly Makeroid) companion app and < Android 10."
    .end annotation

    .prologue
    .line 668
    move-object v0, p0

    .local v0, "this":Lcom/puravidaapps/TaifunTools;
    const-string/jumbo v2, "TaifunTools"

    const-string/jumbo v3, "PathToAssets"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 669
    move-object v2, v0

    iget-boolean v2, v2, Lcom/puravidaapps/TaifunTools;->isRepl:Z

    if-eqz v2, :cond_2

    .line 670
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v2, v3, :cond_0

    .line 671
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Lcom/puravidaapps/TaifunTools;->ApplicationSpecificDirectory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/assets/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 672
    .local v1, "path":Ljava/lang/String;
    move-object v2, v1

    move-object v0, v2

    .line 679
    .end local v0    # "this":Lcom/puravidaapps/TaifunTools;
    .end local v1    # "path":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 673
    .restart local v0    # "this":Lcom/puravidaapps/TaifunTools;
    :cond_0
    sget-object v2, Lcom/puravidaapps/TaifunTools;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "makeroid"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 674
    const-string/jumbo v2, "file:///storage/emulated/0/Makeroid/assets/"

    move-object v0, v2

    goto :goto_0

    .line 676
    :cond_1
    const-string/jumbo v2, "file:///storage/emulated/0/AppInventor/assets/"

    move-object v0, v2

    goto :goto_0

    .line 679
    :cond_2
    const-string/jumbo v2, "file:///android_asset/"

    move-object v0, v2

    goto :goto_0
.end method

.method public SensorList()Ljava/lang/Object;
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns a list of available sensors"
    .end annotation

    .prologue
    .line 214
    move-object v0, p0

    .local v0, "this":Lcom/puravidaapps/TaifunTools;
    move-object v7, v0

    iget-object v7, v7, Lcom/puravidaapps/TaifunTools;->activity:Landroid/app/Activity;

    const-string/jumbo v8, "sensor"

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/SensorManager;

    move-object v1, v7

    .line 217
    .local v1, "sensorManager":Landroid/hardware/SensorManager;
    move-object v7, v1

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v7

    move-object v2, v7

    .line 219
    .local v2, "sensorList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    new-instance v7, Ljava/util/ArrayList;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v7

    .line 221
    .local v3, "sensorData":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    move-object v7, v2

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v4, v7

    :goto_0
    move-object v7, v4

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v7, v4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/Sensor;

    move-object v5, v7

    .line 222
    .local v5, "sensor":Landroid/hardware/Sensor;
    new-instance v7, Ljava/util/HashMap;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    move-object v6, v7

    .line 223
    .local v6, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v7, v6

    const-string/jumbo v8, "name"

    move-object v9, v5

    invoke-virtual {v9}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 224
    move-object v7, v6

    const-string/jumbo v8, "vendor"

    move-object v9, v5

    invoke-virtual {v9}, Landroid/hardware/Sensor;->getVendor()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 225
    move-object v7, v3

    move-object v8, v6

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 226
    goto :goto_0

    .line 227
    .end local v5    # "sensor":Landroid/hardware/Sensor;
    .end local v6    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    move-object v7, v3

    move-object v0, v7

    .end local v0    # "this":Lcom/puravidaapps/TaifunTools;
    return-object v0
.end method

.method public Sha256(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns a Sha256 hash of a given string."
    .end annotation

    .prologue
    .line 728
    move-object v0, p0

    .local v0, "this":Lcom/puravidaapps/TaifunTools;
    move-object v1, p1

    .local v1, "string":Ljava/lang/String;
    const-string/jumbo v7, "TaifunTools"

    const-string/jumbo v8, "Sha256"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 730
    :try_start_0
    const-string/jumbo v7, "SHA-256"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v7

    move-object v2, v7

    .line 731
    .local v2, "digest":Ljava/security/MessageDigest;
    move-object v7, v2

    move-object v8, v1

    const-string/jumbo v9, "UTF-8"

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v7

    move-object v3, v7

    .line 732
    .local v3, "hash":[B
    new-instance v7, Ljava/lang/StringBuffer;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    move-object v4, v7

    .line 734
    .local v4, "hexString":Ljava/lang/StringBuffer;
    const/4 v7, 0x0

    move v5, v7

    .local v5, "i":I
    :goto_0
    move v7, v5

    move-object v8, v3

    array-length v8, v8

    if-ge v7, v8, :cond_1

    .line 735
    const/16 v7, 0xff

    move-object v8, v3

    move v9, v5

    aget-byte v8, v8, v9

    and-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 736
    .local v6, "hex":Ljava/lang/String;
    move-object v7, v6

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    move-object v7, v4

    const/16 v8, 0x30

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v7

    .line 737
    :cond_0
    move-object v7, v4

    move-object v8, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    .line 734
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 739
    .end local v6    # "hex":Ljava/lang/String;
    :cond_1
    move-object v7, v4

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    move-object v0, v7

    .line 743
    .end local v0    # "this":Lcom/puravidaapps/TaifunTools;
    .end local v2    # "digest":Ljava/security/MessageDigest;
    .end local v3    # "hash":[B
    .end local v4    # "hexString":Ljava/lang/StringBuffer;
    .end local v5    # "i":I
    :goto_1
    return-object v0

    .line 740
    .restart local v0    # "this":Lcom/puravidaapps/TaifunTools;
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 741
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "TaifunTools"

    move-object v8, v2

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 742
    move-object v7, v2

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 743
    const-string/jumbo v7, ""

    move-object v0, v7

    goto :goto_1
.end method

.method public ShowKeyboard()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Show the keyboard"
    .end annotation

    .prologue
    .line 330
    move-object v0, p0

    .local v0, "this":Lcom/puravidaapps/TaifunTools;
    const-string/jumbo v1, "TaifunTools"

    const-string/jumbo v2, "ShowKeyboard"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 331
    move-object v1, v0

    iget-object v1, v1, Lcom/puravidaapps/TaifunTools;->imm:Landroid/view/inputmethod/InputMethodManager;

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 332
    return-void
.end method

.method public ShowSystemUI()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Show the system user interface"
    .end annotation

    .prologue
    .line 252
    move-object v0, p0

    .local v0, "this":Lcom/puravidaapps/TaifunTools;
    move-object v2, v0

    iget-object v2, v2, Lcom/puravidaapps/TaifunTools;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    move-object v1, v2

    .line 253
    .local v1, "decorView":Landroid/view/View;
    move-object v2, v1

    const/16 v3, 0x700

    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 257
    return-void
.end method

.method public StatusBarColor(I)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&H00FFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set status bar color. This will work starting from API Level 21 (Android Lollipop"
    .end annotation

    .prologue
    .line 481
    move-object v0, p0

    .local v0, "this":Lcom/puravidaapps/TaifunTools;
    move v1, p1

    .local v1, "argb":I
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    move v2, v4

    .line 482
    .local v2, "version":I
    move v4, v2

    const/16 v5, 0x15

    if-ge v4, v5, :cond_0

    .line 483
    const-string/jumbo v4, "TaifunTools"

    const-string/jumbo v5, "Sorry, setStatusBarColor is not available for API Level < 21"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 490
    :goto_0
    return-void

    .line 485
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/puravidaapps/TaifunTools;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    move-object v3, v4

    .line 486
    .local v3, "window":Landroid/view/Window;
    move-object v4, v3

    const/high16 v5, -0x80000000

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 487
    move-object v4, v3

    const/high16 v5, 0x4000000

    invoke-virtual {v4, v5}, Landroid/view/Window;->clearFlags(I)V

    .line 488
    move-object v4, v3

    move v5, v1

    invoke-virtual {v4, v5}, Landroid/view/Window;->setStatusBarColor(I)V

    goto :goto_0
.end method

.method public SuppressWarnings(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "false"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 401
    move-object v0, p0

    .local v0, "this":Lcom/puravidaapps/TaifunTools;
    move v1, p1

    .local v1, "suppressWarnings":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/puravidaapps/TaifunTools;->suppressWarnings:Z

    .line 402
    return-void
.end method

.method public SuppressWarnings()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "whether Warnings should be suppressed"
    .end annotation

    .prologue
    .line 390
    move-object v0, p0

    .local v0, "this":Lcom/puravidaapps/TaifunTools;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/puravidaapps/TaifunTools;->suppressWarnings:Z

    move v0, v1

    .end local v0    # "this":Lcom/puravidaapps/TaifunTools;
    return v0
.end method

.method public TitleColor(I)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&H00FFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set title color."
    .end annotation

    .prologue
    .line 535
    move-object v0, p0

    .local v0, "this":Lcom/puravidaapps/TaifunTools;
    move v1, p1

    .local v1, "argb":I
    move-object v3, v0

    iget-object v3, v3, Lcom/puravidaapps/TaifunTools;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    move-object v2, v3

    .line 538
    .local v2, "window":Landroid/view/Window;
    move-object v3, v2

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/view/Window;->setTitleColor(I)V

    .line 539
    return-void
.end method

.method public VersionCode()I
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the version code of the app"
    .end annotation

    .prologue
    .line 267
    move-object v0, p0

    .local v0, "this":Lcom/puravidaapps/TaifunTools;
    const-string/jumbo v3, "TaifunTools"

    const-string/jumbo v4, "VersionCode"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 269
    :try_start_0
    sget-object v3, Lcom/puravidaapps/TaifunTools;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    sget-object v4, Lcom/puravidaapps/TaifunTools;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    move-object v1, v3

    .line 270
    .local v1, "pInfo":Landroid/content/pm/PackageInfo;
    move-object v3, v1

    iget v3, v3, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 271
    .local v2, "version":I
    move v3, v2

    move v0, v3

    .line 275
    .end local v0    # "this":Lcom/puravidaapps/TaifunTools;
    .end local v1    # "pInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "version":I
    :goto_0
    return v0

    .line 272
    .restart local v0    # "this":Lcom/puravidaapps/TaifunTools;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 273
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v3, "TaifunTools"

    move-object v4, v1

    invoke-virtual {v4}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 274
    move-object v3, v1

    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 275
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public VersionName()Ljava/lang/String;
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the version name of the app"
    .end annotation

    .prologue
    .line 639
    move-object v0, p0

    .local v0, "this":Lcom/puravidaapps/TaifunTools;
    const-string/jumbo v3, "TaifunTools"

    const-string/jumbo v4, "VersionName"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 641
    :try_start_0
    sget-object v3, Lcom/puravidaapps/TaifunTools;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    sget-object v4, Lcom/puravidaapps/TaifunTools;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    move-object v1, v3

    .line 642
    .local v1, "pInfo":Landroid/content/pm/PackageInfo;
    move-object v3, v1

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    .line 643
    .local v2, "version":Ljava/lang/String;
    move-object v3, v2

    move-object v0, v3

    .line 647
    .end local v0    # "this":Lcom/puravidaapps/TaifunTools;
    .end local v1    # "pInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "version":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 644
    .restart local v0    # "this":Lcom/puravidaapps/TaifunTools;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 645
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v3, "TaifunTools"

    move-object v4, v1

    invoke-virtual {v4}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 646
    move-object v3, v1

    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 647
    const-string/jumbo v3, ""

    move-object v0, v3

    goto :goto_0
.end method

.method public Xor(ZZ)Z
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Exclusive or for boolean: returns true only when inputs differ (one is true, the other is false)."
    .end annotation

    .prologue
    .line 409
    move-object v0, p0

    .local v0, "this":Lcom/puravidaapps/TaifunTools;
    move v1, p1

    .local v1, "a":Z
    move v2, p2

    .local v2, "b":Z
    move v3, v1

    move v4, v2

    xor-int/2addr v3, v4

    move v0, v3

    .end local v0    # "this":Lcom/puravidaapps/TaifunTools;
    return v0
.end method

.method public XorHex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Exclusive or for hex strings, returns hex result. Strings must have the same length."
    .end annotation

    .prologue
    .line 420
    move-object v0, p0

    .local v0, "this":Lcom/puravidaapps/TaifunTools;
    move-object v1, p1

    .local v1, "a":Ljava/lang/String;
    move-object v2, p2

    .local v2, "b":Ljava/lang/String;
    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move-object v6, v2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eq v5, v6, :cond_1

    .line 421
    move-object v5, v0

    iget-boolean v5, v5, Lcom/puravidaapps/TaifunTools;->suppressWarnings:Z

    if-nez v5, :cond_0

    .line 422
    sget-object v5, Lcom/puravidaapps/TaifunTools;->context:Landroid/content/Context;

    const-string/jumbo v6, "Strings must have the same length."

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 424
    :cond_0
    const-string/jumbo v5, ""

    move-object v0, v5

    .line 435
    .end local v0    # "this":Lcom/puravidaapps/TaifunTools;
    :goto_0
    return-object v0

    .line 425
    .restart local v0    # "this":Lcom/puravidaapps/TaifunTools;
    :cond_1
    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/puravidaapps/TaifunTools;->isHex(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v0

    move-object v6, v2

    invoke-direct {v5, v6}, Lcom/puravidaapps/TaifunTools;->isHex(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 426
    :cond_2
    move-object v5, v0

    iget-boolean v5, v5, Lcom/puravidaapps/TaifunTools;->suppressWarnings:Z

    if-nez v5, :cond_3

    .line 427
    sget-object v5, Lcom/puravidaapps/TaifunTools;->context:Landroid/content/Context;

    const-string/jumbo v6, "Strings must be hex values."

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 429
    :cond_3
    const-string/jumbo v5, ""

    move-object v0, v5

    goto :goto_0

    .line 431
    :cond_4
    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    new-array v5, v5, [C

    move-object v3, v5

    .line 432
    .local v3, "chars":[C
    const/4 v5, 0x0

    move v4, v5

    .local v4, "i":I
    :goto_1
    move v5, v4

    move-object v6, v3

    array-length v6, v6

    if-ge v5, v6, :cond_5

    .line 433
    move-object v5, v3

    move v6, v4

    move-object v7, v0

    move-object v8, v1

    move v9, v4

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lcom/puravidaapps/TaifunTools;->fromHex(C)I

    move-result v8

    move-object v9, v2

    move v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Lcom/puravidaapps/TaifunTools;->fromHex(C)I

    move-result v9

    xor-int/2addr v8, v9

    invoke-direct {v7, v8}, Lcom/puravidaapps/TaifunTools;->toHex(I)C

    move-result v7

    aput-char v7, v5, v6

    .line 432
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 435
    :cond_5
    new-instance v5, Ljava/lang/String;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v3

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([C)V

    move-object v0, v5

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 313
    move-object v0, p0

    .local v0, "this":Lcom/puravidaapps/TaifunTools;
    const-string/jumbo v1, "TaifunTools"

    const-string/jumbo v2, "onDestroy"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 314
    move-object v1, v0

    const-string/jumbo v2, "destroy"

    invoke-virtual {v1, v2}, Lcom/puravidaapps/TaifunTools;->ActivityStateChanged(Ljava/lang/String;)V

    .line 315
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 303
    move-object v0, p0

    .local v0, "this":Lcom/puravidaapps/TaifunTools;
    move-object v1, v0

    const-string/jumbo v2, "pause"

    invoke-virtual {v1, v2}, Lcom/puravidaapps/TaifunTools;->ActivityStateChanged(Ljava/lang/String;)V

    .line 304
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 298
    move-object v0, p0

    .local v0, "this":Lcom/puravidaapps/TaifunTools;
    move-object v1, v0

    const-string/jumbo v2, "resume"

    invoke-virtual {v1, v2}, Lcom/puravidaapps/TaifunTools;->ActivityStateChanged(Ljava/lang/String;)V

    .line 299
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 308
    move-object v0, p0

    .local v0, "this":Lcom/puravidaapps/TaifunTools;
    move-object v1, v0

    const-string/jumbo v2, "stop"

    invoke-virtual {v1, v2}, Lcom/puravidaapps/TaifunTools;->ActivityStateChanged(Ljava/lang/String;)V

    .line 309
    return-void
.end method
