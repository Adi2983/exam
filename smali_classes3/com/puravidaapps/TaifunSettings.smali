.class public Lcom/puravidaapps/TaifunSettings;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "TaifunSettings.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->EXTENSION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Settings Extension. Version 7a (FREE VERSION) as of 2019-02-13 for App Inventor version nb175 and Companion version 2.51."
    helpUrl = "https://puravidaapps.com/settings.php"
    iconName = "https://puravidaapps.com/images/taifun16.png"
    nonVisible = true
    version = 0x7
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
    external = true
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.READ_EXTERNAL_STORAGE, android.permission.WRITE_SETTINGS, android.permission.ACCESS_NOTIFICATION_POLICY"
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TaifunSettings"

.field public static final VERSION:I = 0x7


# instance fields
.field private final activity:Landroid/app/Activity;

.field private audioManager:Landroid/media/AudioManager;

.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private contentResolver:Landroid/content/ContentResolver;

.field private context:Landroid/content/Context;

.field private isAlarm:Z

.field private isNotification:Z

.field private isRepl:Z

.field private isRingtone:Z

.field private ringtone:Landroid/media/Ringtone;

.field private showUI:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 5

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lcom/puravidaapps/TaifunSettings;
    move-object v1, p1

    .local v1, "container":Lcom/google/appinventor/components/runtime/ComponentContainer;
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 64
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/puravidaapps/TaifunSettings;->isRepl:Z

    .line 65
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/puravidaapps/TaifunSettings;->isRingtone:Z

    .line 66
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/puravidaapps/TaifunSettings;->isNotification:Z

    .line 67
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/puravidaapps/TaifunSettings;->isAlarm:Z

    .line 78
    move-object v2, v0

    iget-object v2, v2, Lcom/puravidaapps/TaifunSettings;->form:Lcom/google/appinventor/components/runtime/Form;

    instance-of v2, v2, Lcom/google/appinventor/components/runtime/ReplForm;

    if-eqz v2, :cond_0

    .line 79
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/puravidaapps/TaifunSettings;->isRepl:Z

    .line 81
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/puravidaapps/TaifunSettings;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 82
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, v2, Lcom/puravidaapps/TaifunSettings;->context:Landroid/content/Context;

    .line 83
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, v2, Lcom/puravidaapps/TaifunSettings;->activity:Landroid/app/Activity;

    .line 86
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/puravidaapps/TaifunSettings;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, v2, Lcom/puravidaapps/TaifunSettings;->contentResolver:Landroid/content/ContentResolver;

    .line 88
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/puravidaapps/TaifunSettings;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, v2, Lcom/puravidaapps/TaifunSettings;->audioManager:Landroid/media/AudioManager;

    .line 90
    const-string/jumbo v2, "TaifunSettings"

    const-string/jumbo v3, "TaifunSettings Created"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 91
    return-void
.end method

.method private completeFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 282
    move-object v0, p0

    .local v0, "this":Lcom/puravidaapps/TaifunSettings;
    move-object v1, p1

    .local v1, "fileName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    move-object v2, v4

    .line 283
    .local v2, "sd":Ljava/io/File;
    move-object v4, v1

    move-object v3, v4

    .line 285
    .local v3, "completeFileName":Ljava/lang/String;
    move-object v4, v1

    const-string/jumbo v5, "file:///"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 287
    move-object v4, v1

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 304
    :cond_0
    :goto_0
    const-string/jumbo v4, "TaifunSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "completeFileName= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 305
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Lcom/puravidaapps/TaifunSettings;
    return-object v0

    .line 288
    .restart local v0    # "this":Lcom/puravidaapps/TaifunSettings;
    :cond_1
    move-object v4, v1

    const-string/jumbo v5, "//"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 290
    move-object v4, v1

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 292
    move-object v4, v0

    iget-boolean v4, v4, Lcom/puravidaapps/TaifunSettings;->isRepl:Z

    if-eqz v4, :cond_2

    .line 293
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/AppInventor/assets/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    goto :goto_0

    .line 295
    :cond_2
    move-object v4, v1

    move-object v3, v4

    goto :goto_0

    .line 297
    :cond_3
    move-object v4, v1

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 298
    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 299
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    goto/16 :goto_0

    .line 302
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    goto/16 :goto_0
.end method

.method private static fileExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 311
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    move-object v2, v0

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    move v1, v2

    .line 312
    .local v1, "idx":I
    move v2, v1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const-string/jumbo v2, ""

    move-object v0, v2

    .line 314
    .end local v0    # "name":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 313
    .restart local v0    # "name":Ljava/lang/String;
    :cond_0
    move v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_1

    const-string/jumbo v2, ""

    move-object v0, v2

    goto :goto_0

    .line 314
    :cond_1
    move-object v2, v0

    move v3, v1

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method private getVolume(I)I
    .locals 9

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Lcom/puravidaapps/TaifunSettings;
    move v1, p1

    .local v1, "type":I
    move-object v5, v0

    iget-object v5, v5, Lcom/puravidaapps/TaifunSettings;->audioManager:Landroid/media/AudioManager;

    move v6, v1

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v5

    move v2, v5

    .line 165
    .local v2, "maxVolume":I
    move-object v5, v0

    iget-object v5, v5, Lcom/puravidaapps/TaifunSettings;->audioManager:Landroid/media/AudioManager;

    move v6, v1

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    move v3, v5

    .line 166
    .local v3, "currentVolume":I
    move v5, v3

    const/16 v6, 0x64

    mul-int/lit8 v5, v5, 0x64

    move v6, v2

    div-int/2addr v5, v6

    move v4, v5

    .line 167
    .local v4, "percent":I
    const-string/jumbo v5, "TaifunSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getVolume,  percent= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " * 100 / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 168
    move v5, v4

    move v0, v5

    .end local v0    # "this":Lcom/puravidaapps/TaifunSettings;
    return v0
.end method

.method private setRingtone(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 264
    move-object v0, p0

    .local v0, "this":Lcom/puravidaapps/TaifunSettings;
    move-object v1, p1

    .local v1, "type":Ljava/lang/String;
    move-object v3, v1

    const-string/jumbo v4, "NOTIFICATION"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 265
    const-string/jumbo v3, "TaifunSettings"

    const-string/jumbo v4, "setRingtone, NOTIFICATION"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 266
    move-object v3, v0

    iget-object v3, v3, Lcom/puravidaapps/TaifunSettings;->context:Landroid/content/Context;

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v3

    move-object v2, v3

    .line 274
    .local v2, "uri":Landroid/net/Uri;
    :goto_0
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/puravidaapps/TaifunSettings;->context:Landroid/content/Context;

    move-object v5, v2

    invoke-static {v4, v5}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v4

    iput-object v4, v3, Lcom/puravidaapps/TaifunSettings;->ringtone:Landroid/media/Ringtone;

    .line 275
    return-void

    .line 267
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_0
    move-object v3, v1

    const-string/jumbo v4, "ALARM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 268
    const-string/jumbo v3, "TaifunSettings"

    const-string/jumbo v4, "setRingtone, ALARM"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 269
    move-object v3, v0

    iget-object v3, v3, Lcom/puravidaapps/TaifunSettings;->context:Landroid/content/Context;

    const/4 v4, 0x4

    invoke-static {v3, v4}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v3

    move-object v2, v3

    .restart local v2    # "uri":Landroid/net/Uri;
    goto :goto_0

    .line 271
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_1
    const-string/jumbo v3, "TaifunSettings"

    const-string/jumbo v4, "setRingtone, RINGTONE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 272
    move-object v3, v0

    iget-object v3, v3, Lcom/puravidaapps/TaifunSettings;->context:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v3

    move-object v2, v3

    .restart local v2    # "uri":Landroid/net/Uri;
    goto :goto_0
.end method

.method private setVolume(II)V
    .locals 11

    .prologue
    .line 210
    move-object v0, p0

    .local v0, "this":Lcom/puravidaapps/TaifunSettings;
    move v1, p1

    .local v1, "percent":I
    move v2, p2

    .local v2, "type":I
    move v6, v1

    if-gez v6, :cond_1

    .line 211
    const/4 v6, 0x0

    move v1, v6

    .line 217
    :cond_0
    :goto_0
    move-object v6, v0

    iget-boolean v6, v6, Lcom/puravidaapps/TaifunSettings;->showUI:Z

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    :goto_1
    move v3, v6

    .line 219
    .local v3, "flagShowUi":I
    move-object v6, v0

    iget-object v6, v6, Lcom/puravidaapps/TaifunSettings;->audioManager:Landroid/media/AudioManager;

    move v7, v2

    invoke-virtual {v6, v7}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v6

    move v4, v6

    .line 220
    .local v4, "maxVolume":I
    move v6, v4

    move v7, v1

    mul-int/2addr v6, v7

    const/16 v7, 0x64

    div-int/lit8 v6, v6, 0x64

    move v5, v6

    .line 221
    .local v5, "newVolume":I
    const-string/jumbo v6, "TaifunSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setVolume, newVolume: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " * "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " / 100 = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 222
    move-object v6, v0

    iget-object v6, v6, Lcom/puravidaapps/TaifunSettings;->audioManager:Landroid/media/AudioManager;

    move v7, v2

    move v8, v5

    move v9, v3

    invoke-virtual {v6, v7, v8, v9}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 223
    return-void

    .line 212
    .end local v3    # "flagShowUi":I
    .end local v4    # "maxVolume":I
    .end local v5    # "newVolume":I
    :cond_1
    move v6, v1

    const/16 v7, 0xff

    if-le v6, v7, :cond_0

    .line 213
    const/16 v6, 0x64

    move v1, v6

    goto :goto_0

    .line 217
    :cond_2
    const/4 v6, 0x0

    goto :goto_1
.end method


# virtual methods
.method public Brightness()I
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "brightness (a value between 0 and 255)"
    .end annotation

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Lcom/puravidaapps/TaifunSettings;
    move-object v2, v0

    iget-object v2, v2, Lcom/puravidaapps/TaifunSettings;->contentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "screen_brightness"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    move v1, v2

    .line 102
    .local v1, "brightness":I
    const-string/jumbo v2, "TaifunSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Brightness (get): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 103
    move v2, v1

    move v0, v2

    .end local v0    # "this":Lcom/puravidaapps/TaifunSettings;
    return v0
.end method

.method public BrightnessMode()Ljava/lang/String;
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "brightness mode (MANUAL or AUTO)"
    .end annotation

    .prologue
    .line 329
    move-object v0, p0

    .local v0, "this":Lcom/puravidaapps/TaifunSettings;
    move-object v2, v0

    iget-object v2, v2, Lcom/puravidaapps/TaifunSettings;->contentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "screen_brightness_mode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    move v1, v2

    .line 330
    .local v1, "brightnessMode":I
    const-string/jumbo v2, "TaifunSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "BrightnessMode (get): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 331
    move v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const-string/jumbo v2, "AUTO"

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Lcom/puravidaapps/TaifunSettings;
    return-object v0

    .restart local v0    # "this":Lcom/puravidaapps/TaifunSettings;
    :cond_0
    const-string/jumbo v2, "MANUAL"

    goto :goto_0
.end method

.method public FontScale()F
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "font scale"
    .end annotation

    .prologue
    .line 345
    move-object v0, p0

    .local v0, "this":Lcom/puravidaapps/TaifunSettings;
    const-string/jumbo v1, "TaifunSettings"

    const-string/jumbo v2, "FontScale"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 346
    move-object v1, v0

    iget-object v1, v1, Lcom/puravidaapps/TaifunSettings;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "font_scale"

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/puravidaapps/TaifunSettings;
    return v0
.end method

.method public RingtoneGet(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get current ringtone. Type can be RINGTONE, NOTIFICATION or ALARM."
    .end annotation

    .prologue
    .line 234
    move-object v0, p0

    .local v0, "this":Lcom/puravidaapps/TaifunSettings;
    move-object v1, p1

    .local v1, "type":Ljava/lang/String;
    const-string/jumbo v2, "TaifunSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "RingtoneGet, type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 235
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/puravidaapps/TaifunSettings;->setRingtone(Ljava/lang/String;)V

    .line 236
    move-object v2, v0

    iget-object v2, v2, Lcom/puravidaapps/TaifunSettings;->ringtone:Landroid/media/Ringtone;

    move-object v3, v0

    iget-object v3, v3, Lcom/puravidaapps/TaifunSettings;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/puravidaapps/TaifunSettings;
    return-object v0
.end method

.method public RingtonePlay(Ljava/lang/String;)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Play ringtone. Type can be RINGTONE, NOTIFICATION or ALARM."
    .end annotation

    .prologue
    .line 242
    move-object v0, p0

    .local v0, "this":Lcom/puravidaapps/TaifunSettings;
    move-object v1, p1

    .local v1, "type":Ljava/lang/String;
    const-string/jumbo v2, "TaifunSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "RingtonePlay, type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 243
    move-object v2, v0

    iget-object v2, v2, Lcom/puravidaapps/TaifunSettings;->ringtone:Landroid/media/Ringtone;

    if-eqz v2, :cond_0

    .line 244
    move-object v2, v0

    iget-object v2, v2, Lcom/puravidaapps/TaifunSettings;->ringtone:Landroid/media/Ringtone;

    invoke-virtual {v2}, Landroid/media/Ringtone;->stop()V

    .line 246
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/puravidaapps/TaifunSettings;->setRingtone(Ljava/lang/String;)V

    .line 247
    move-object v2, v0

    iget-object v2, v2, Lcom/puravidaapps/TaifunSettings;->ringtone:Landroid/media/Ringtone;

    invoke-virtual {v2}, Landroid/media/Ringtone;->play()V

    .line 248
    return-void
.end method

.method public RingtoneStop()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Stop currently playing ringtone."
    .end annotation

    .prologue
    .line 253
    move-object v0, p0

    .local v0, "this":Lcom/puravidaapps/TaifunSettings;
    const-string/jumbo v1, "TaifunSettings"

    const-string/jumbo v2, "RingtoneStop"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 254
    move-object v1, v0

    iget-object v1, v1, Lcom/puravidaapps/TaifunSettings;->ringtone:Landroid/media/Ringtone;

    if-eqz v1, :cond_0

    .line 255
    move-object v1, v0

    iget-object v1, v1, Lcom/puravidaapps/TaifunSettings;->ringtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->stop()V

    .line 257
    :cond_0
    return-void
.end method

.method public ShowUI(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Lcom/puravidaapps/TaifunSettings;
    move v1, p1

    .local v1, "showUI":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/puravidaapps/TaifunSettings;->showUI:Z

    .line 133
    return-void
.end method

.method public ShowUI()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "whether User Interface shoud be showed while setting the volume."
    .end annotation

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Lcom/puravidaapps/TaifunSettings;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/puravidaapps/TaifunSettings;->showUI:Z

    move v0, v1

    .end local v0    # "this":Lcom/puravidaapps/TaifunSettings;
    return v0
.end method

.method public VolumeAlarm()I
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "notification volume in percent."
    .end annotation

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "this":Lcom/puravidaapps/TaifunSettings;
    move-object v1, v0

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/puravidaapps/TaifunSettings;->getVolume(I)I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/puravidaapps/TaifunSettings;
    return v0
.end method

.method public VolumeAlarm(I)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "82"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 204
    move-object v0, p0

    .local v0, "this":Lcom/puravidaapps/TaifunSettings;
    move v1, p1

    .local v1, "percent":I
    move-object v2, v0

    move v3, v1

    const/4 v4, 0x4

    invoke-direct {v2, v3, v4}, Lcom/puravidaapps/TaifunSettings;->setVolume(II)V

    .line 205
    return-void
.end method

.method public VolumeMusic()I
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "media volume in percent."
    .end annotation

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Lcom/puravidaapps/TaifunSettings;
    move-object v1, v0

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/puravidaapps/TaifunSettings;->getVolume(I)I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/puravidaapps/TaifunSettings;
    return v0
.end method

.method public VolumeMusic(I)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "82"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 179
    move-object v0, p0

    .local v0, "this":Lcom/puravidaapps/TaifunSettings;
    move v1, p1

    .local v1, "percent":I
    move-object v2, v0

    move v3, v1

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4}, Lcom/puravidaapps/TaifunSettings;->setVolume(II)V

    .line 180
    return-void
.end method

.method public VolumeRing()I
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "ringtone volume in percent."
    .end annotation

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "this":Lcom/puravidaapps/TaifunSettings;
    move-object v1, v0

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/puravidaapps/TaifunSettings;->getVolume(I)I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/puravidaapps/TaifunSettings;
    return v0
.end method

.method public VolumeRing(I)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "82"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 190
    move-object v0, p0

    .local v0, "this":Lcom/puravidaapps/TaifunSettings;
    move v1, p1

    .local v1, "percent":I
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-ge v2, v3, :cond_0

    .line 191
    move-object v2, v0

    move v3, v1

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/puravidaapps/TaifunSettings;->setVolume(II)V

    .line 193
    :cond_0
    return-void
.end method
