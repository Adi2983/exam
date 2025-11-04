.class public Lcom/puravidaapps/TaifunPM/TaifunPM;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "TaifunPM.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->EXTENSION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Package Manager Extension. Version 3 as of 2023-08-19 11:51."
    helpUrl = "https://puravidaapps.com/packagemanager.php"
    iconName = "https://puravidaapps.com/images/taifun16.png"
    nonVisible = true
    version = 0x3
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
    external = true
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.QUERY_ALL_PACKAGES"
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TaifunPM"

.field public static final VERSION:I = 0x3


# instance fields
.field private final activity:Landroid/app/Activity;

.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private context:Landroid/content/Context;

.field private defaultDirectory:Ljava/lang/String;

.field private isRepl:Z

.field final packageManager:Landroid/content/pm/PackageManager;

.field private suppressWarnings:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 6

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lcom/puravidaapps/TaifunPM/TaifunPM;
    move-object v1, p1

    .local v1, "container":Lcom/google/appinventor/components/runtime/ComponentContainer;
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 57
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/puravidaapps/TaifunPM/TaifunPM;->isRepl:Z

    .line 65
    move-object v2, v0

    iget-object v2, v2, Lcom/puravidaapps/TaifunPM/TaifunPM;->form:Lcom/google/appinventor/components/runtime/Form;

    instance-of v2, v2, Lcom/google/appinventor/components/runtime/ReplForm;

    if-eqz v2, :cond_0

    .line 66
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/puravidaapps/TaifunPM/TaifunPM;->isRepl:Z

    .line 68
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/puravidaapps/TaifunPM/TaifunPM;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 69
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, v2, Lcom/puravidaapps/TaifunPM/TaifunPM;->context:Landroid/content/Context;

    .line 70
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, v2, Lcom/puravidaapps/TaifunPM/TaifunPM;->activity:Landroid/app/Activity;

    .line 71
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/puravidaapps/TaifunPM/TaifunPM;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, v2, Lcom/puravidaapps/TaifunPM/TaifunPM;->packageManager:Landroid/content/pm/PackageManager;

    .line 73
    move-object v2, v0

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v0

    invoke-direct {v4}, Lcom/puravidaapps/TaifunPM/TaifunPM;->ApplicationSpecificDirectory()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/Packages"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/puravidaapps/TaifunPM/TaifunPM;->defaultDirectory:Ljava/lang/String;

    .line 74
    const-string/jumbo v2, "TaifunPM"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "TaifunPM Created, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/puravidaapps/TaifunPM/TaifunPM;->defaultDirectory:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 75
    return-void
.end method

.method private ApplicationSpecificDirectory()Ljava/lang/String;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 321
    move-object v0, p0

    .local v0, "this":Lcom/puravidaapps/TaifunPM/TaifunPM;
    const-string/jumbo v2, "TaifunPM"

    const-string/jumbo v3, "ApplicationSpecificDirectory"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 322
    move-object v2, v0

    iget-object v2, v2, Lcom/puravidaapps/TaifunPM/TaifunPM;->context:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    move-object v1, v2

    .line 323
    .local v1, "file":Ljava/io/File;
    move-object v2, v1

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/puravidaapps/TaifunPM/TaifunPM;
    return-object v0
.end method

.method private AsyncGet()V
    .locals 25
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 122
    move-object/from16 v1, p0

    .local v1, "this":Lcom/puravidaapps/TaifunPM/TaifunPM;
    const-string/jumbo v19, "TaifunPM"

    const-string/jumbo v20, "AsyncGet"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v19

    .line 123
    move-object/from16 v19, v1

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/puravidaapps/TaifunPM/TaifunPM;->packageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v19, v0

    const/16 v20, 0x80

    invoke-virtual/range {v19 .. v20}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v19

    move-object/from16 v2, v19

    .line 124
    .local v2, "allInstalledPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    new-instance v19, Lorg/json/JSONArray;

    move-object/from16 v24, v19

    move-object/from16 v19, v24

    move-object/from16 v20, v24

    invoke-direct/range {v20 .. v20}, Lorg/json/JSONArray;-><init>()V

    move-object/from16 v3, v19

    .line 125
    .local v3, "jsonArray":Lorg/json/JSONArray;
    move-object/from16 v19, v1

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/puravidaapps/TaifunPM/TaifunPM;->packageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v19

    move-object/from16 v4, v19

    .line 128
    .local v4, "defaultActivityIcon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v19, v2

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v5, v19

    .line 131
    .local v5, "length":I
    new-instance v19, Ljava/io/File;

    move-object/from16 v24, v19

    move-object/from16 v19, v24

    move-object/from16 v20, v24

    move-object/from16 v21, v1

    move-object/from16 v22, v1

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/puravidaapps/TaifunPM/TaifunPM;->defaultDirectory:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-direct/range {v21 .. v22}, Lcom/puravidaapps/TaifunPM/TaifunPM;->completeFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v6, v19

    .line 132
    .local v6, "dir":Ljava/io/File;
    move-object/from16 v19, v6

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v19

    if-nez v19, :cond_0

    .line 133
    const-string/jumbo v19, "TaifunPM"

    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v24, v20

    move-object/from16 v20, v24

    move-object/from16 v21, v24

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "create directory: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v21, v1

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/puravidaapps/TaifunPM/TaifunPM;->defaultDirectory:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v19

    .line 134
    move-object/from16 v19, v6

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->mkdirs()Z

    move-result v19

    .line 138
    :cond_0
    move-object/from16 v19, v2

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    move-object/from16 v7, v19

    :goto_0
    move-object/from16 v19, v7

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_4

    move-object/from16 v19, v7

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/pm/PackageInfo;

    move-object/from16 v8, v19

    .line 140
    .local v8, "p":Landroid/content/pm/PackageInfo;
    move-object/from16 v19, v2

    move-object/from16 v20, v8

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v19

    const/16 v20, 0x1

    add-int/lit8 v19, v19, 0x1

    move/from16 v9, v19

    .line 141
    .local v9, "index":I
    move-object/from16 v19, v8

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v20, v1

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/puravidaapps/TaifunPM/TaifunPM;->context:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v10, v19

    .line 142
    .local v10, "appname":Ljava/lang/String;
    const-string/jumbo v19, "TaifunPM"

    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v24, v20

    move-object/from16 v20, v24

    move-object/from16 v21, v24

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "index: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move/from16 v21, v9

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ", appname: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v21, v10

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v19

    .line 144
    move-object/from16 v19, v1

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/puravidaapps/TaifunPM/TaifunPM;->context:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v20, v8

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 145
    const-string/jumbo v19, "TaifunPM"

    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v24, v20

    move-object/from16 v20, v24

    move-object/from16 v21, v24

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "appname: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v21, v10

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " skipped, own app"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v19

    .line 146
    move-object/from16 v19, v1

    move/from16 v20, v9

    move/from16 v21, v5

    const-string/jumbo v22, ""

    invoke-direct/range {v19 .. v22}, Lcom/puravidaapps/TaifunPM/TaifunPM;->progress(IILjava/lang/String;)V

    .line 147
    goto/16 :goto_0

    .line 152
    :cond_1
    move-object/from16 v19, v1

    :try_start_0
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/puravidaapps/TaifunPM/TaifunPM;->packageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v19, v0

    move-object/from16 v20, v8

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v19

    move-object/from16 v11, v19

    .line 153
    .local v11, "intentOfStartActivity":Landroid/content/Intent;
    move-object/from16 v19, v11

    if-nez v19, :cond_2

    .line 154
    const-string/jumbo v19, "TaifunPM"

    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v24, v20

    move-object/from16 v20, v24

    move-object/from16 v21, v24

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "appname: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v21, v10

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " skipped, no application icon"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v19

    .line 155
    move-object/from16 v19, v1

    move/from16 v20, v9

    move/from16 v21, v5

    const-string/jumbo v22, ""

    invoke-direct/range {v19 .. v22}, Lcom/puravidaapps/TaifunPM/TaifunPM;->progress(IILjava/lang/String;)V

    .line 156
    goto/16 :goto_0

    .line 161
    :cond_2
    move-object/from16 v19, v1

    move-object/from16 v20, v1

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/puravidaapps/TaifunPM/TaifunPM;->packageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v20, v0

    move-object/from16 v21, v11

    invoke-virtual/range {v20 .. v21}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Lcom/puravidaapps/TaifunPM/TaifunPM;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v19

    move-object/from16 v12, v19

    .line 162
    .local v12, "bitmapFromAppIcon":Landroid/graphics/Bitmap;
    move-object/from16 v19, v1

    move-object/from16 v20, v4

    invoke-direct/range {v19 .. v20}, Lcom/puravidaapps/TaifunPM/TaifunPM;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v19

    move-object/from16 v13, v19

    .line 164
    .local v13, "bitmapDefault":Landroid/graphics/Bitmap;
    move-object/from16 v19, v12

    if-eqz v19, :cond_3

    move-object/from16 v19, v13

    move-object/from16 v20, v12

    invoke-virtual/range {v19 .. v20}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_3

    .line 165
    const-string/jumbo v19, "TaifunPM"

    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v24, v20

    move-object/from16 v20, v24

    move-object/from16 v21, v24

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "appname: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v21, v10

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v19

    .line 166
    new-instance v19, Lorg/json/JSONObject;

    move-object/from16 v24, v19

    move-object/from16 v19, v24

    move-object/from16 v20, v24

    invoke-direct/range {v20 .. v20}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v14, v19

    .line 167
    .local v14, "jsonObject":Lorg/json/JSONObject;
    move-object/from16 v19, v14

    const-string/jumbo v20, "package name"

    move-object/from16 v21, v8

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v19

    .line 168
    move-object/from16 v19, v14

    const-string/jumbo v20, "app name"

    move-object/from16 v21, v10

    invoke-virtual/range {v19 .. v21}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v19

    .line 169
    move-object/from16 v19, v14

    const-string/jumbo v20, "version name"

    move-object/from16 v21, v8

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v19

    .line 170
    move-object/from16 v19, v14

    const-string/jumbo v20, "version code"

    move-object/from16 v21, v8

    move-object/from16 v0, v21

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v19

    .line 173
    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v24, v19

    move-object/from16 v19, v24

    move-object/from16 v20, v24

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v8

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ".png"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v15, v19

    .line 174
    .local v15, "filename":Ljava/lang/String;
    move-object/from16 v19, v1

    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v24, v20

    move-object/from16 v20, v24

    move-object/from16 v21, v24

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v1

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/puravidaapps/TaifunPM/TaifunPM;->defaultDirectory:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v21, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v21, v15

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Lcom/puravidaapps/TaifunPM/TaifunPM;->completeFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v16, v19

    .line 175
    .local v16, "completeFileName":Ljava/lang/String;
    move-object/from16 v19, v14

    const-string/jumbo v20, "icon"

    move-object/from16 v21, v16

    invoke-virtual/range {v19 .. v21}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v19

    .line 177
    move-object/from16 v19, v3

    move-object/from16 v20, v14

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v19

    .line 179
    new-instance v19, Ljava/io/File;

    move-object/from16 v24, v19

    move-object/from16 v19, v24

    move-object/from16 v20, v24

    move-object/from16 v21, v16

    invoke-direct/range {v20 .. v21}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v17, v19

    .line 180
    .local v17, "file":Ljava/io/File;
    new-instance v19, Ljava/io/FileOutputStream;

    move-object/from16 v24, v19

    move-object/from16 v19, v24

    move-object/from16 v20, v24

    move-object/from16 v21, v17

    invoke-direct/range {v20 .. v21}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v18, v19

    .line 181
    .local v18, "outStream":Ljava/io/FileOutputStream;
    move-object/from16 v19, v12

    sget-object v20, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v21, 0x64

    move-object/from16 v22, v18

    invoke-virtual/range {v19 .. v22}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v19

    .line 182
    move-object/from16 v19, v18

    invoke-virtual/range {v19 .. v19}, Ljava/io/FileOutputStream;->flush()V

    .line 183
    move-object/from16 v19, v18

    invoke-virtual/range {v19 .. v19}, Ljava/io/FileOutputStream;->close()V

    .line 185
    move-object/from16 v19, v1

    move/from16 v20, v9

    move/from16 v21, v5

    move-object/from16 v22, v14

    invoke-virtual/range {v22 .. v22}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v19 .. v22}, Lcom/puravidaapps/TaifunPM/TaifunPM;->progress(IILjava/lang/String;)V

    .line 186
    .line 193
    .line 194
    .end local v11    # "intentOfStartActivity":Landroid/content/Intent;
    .end local v12    # "bitmapFromAppIcon":Landroid/graphics/Bitmap;
    .end local v13    # "bitmapDefault":Landroid/graphics/Bitmap;
    .end local v14    # "jsonObject":Lorg/json/JSONObject;
    .end local v15    # "filename":Ljava/lang/String;
    .end local v16    # "completeFileName":Ljava/lang/String;
    .end local v17    # "file":Ljava/io/File;
    .end local v18    # "outStream":Ljava/io/FileOutputStream;
    :goto_1
    goto/16 :goto_0

    .line 187
    .restart local v11    # "intentOfStartActivity":Landroid/content/Intent;
    .restart local v12    # "bitmapFromAppIcon":Landroid/graphics/Bitmap;
    .restart local v13    # "bitmapDefault":Landroid/graphics/Bitmap;
    :cond_3
    const-string/jumbo v19, "TaifunPM"

    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v24, v20

    move-object/from16 v20, v24

    move-object/from16 v21, v24

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "appname: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v21, v10

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " skipped, no bitmap"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v19

    .line 188
    move-object/from16 v19, v1

    move/from16 v20, v9

    move/from16 v21, v5

    const-string/jumbo v22, ""

    invoke-direct/range {v19 .. v22}, Lcom/puravidaapps/TaifunPM/TaifunPM;->progress(IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 190
    .end local v11    # "intentOfStartActivity":Landroid/content/Intent;
    .end local v12    # "bitmapFromAppIcon":Landroid/graphics/Bitmap;
    .end local v13    # "bitmapDefault":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v19

    move-object/from16 v11, v19

    .line 191
    .local v11, "e":Ljava/lang/Exception;
    const-string/jumbo v19, "TaifunPM"

    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v24, v20

    move-object/from16 v20, v24

    move-object/from16 v21, v24

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v11

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ", package name: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v21, v8

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v19

    .line 192
    move-object/from16 v19, v11

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 196
    .end local v8    # "p":Landroid/content/pm/PackageInfo;
    .end local v9    # "index":I
    .end local v10    # "appname":Ljava/lang/String;
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_4
    move-object/from16 v19, v3

    move-object/from16 v7, v19

    .line 197
    .local v7, "result":Lorg/json/JSONArray;
    move-object/from16 v19, v1

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/puravidaapps/TaifunPM/TaifunPM;->activity:Landroid/app/Activity;

    move-object/from16 v19, v0

    new-instance v20, Lcom/puravidaapps/TaifunPM/TaifunPM$2;

    move-object/from16 v24, v20

    move-object/from16 v20, v24

    move-object/from16 v21, v24

    move-object/from16 v22, v1

    move-object/from16 v23, v7

    invoke-direct/range {v21 .. v23}, Lcom/puravidaapps/TaifunPM/TaifunPM$2;-><init>(Lcom/puravidaapps/TaifunPM/TaifunPM;Ljava/lang/Object;)V

    invoke-virtual/range {v19 .. v20}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 203
    return-void
.end method

.method static synthetic access$000(Lcom/puravidaapps/TaifunPM/TaifunPM;)V
    .locals 2

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "x0":Lcom/puravidaapps/TaifunPM/TaifunPM;
    move-object v1, v0

    invoke-direct {v1}, Lcom/puravidaapps/TaifunPM/TaifunPM;->AsyncGet()V

    return-void
.end method

.method private completeFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 285
    move-object v0, p0

    .local v0, "this":Lcom/puravidaapps/TaifunPM/TaifunPM;
    move-object v1, p1

    .local v1, "fileName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    move-object v2, v4

    .line 286
    .local v2, "sd":Ljava/io/File;
    move-object v4, v1

    move-object v3, v4

    .line 288
    .local v3, "completeFileName":Ljava/lang/String;
    move-object v4, v1

    const-string/jumbo v5, "file:///"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 290
    move-object v4, v1

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 315
    :cond_0
    :goto_0
    const-string/jumbo v4, "TaifunPM"

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

    .line 316
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Lcom/puravidaapps/TaifunPM/TaifunPM;
    return-object v0

    .line 291
    .restart local v0    # "this":Lcom/puravidaapps/TaifunPM/TaifunPM;
    :cond_1
    move-object v4, v1

    const-string/jumbo v5, "//"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 293
    move-object v4, v1

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 295
    move-object v4, v0

    iget-boolean v4, v4, Lcom/puravidaapps/TaifunPM/TaifunPM;->isRepl:Z

    if-eqz v4, :cond_4

    .line 297
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1d

    if-lt v4, v5, :cond_2

    .line 298
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v0

    invoke-direct {v5}, Lcom/puravidaapps/TaifunPM/TaifunPM;->ApplicationSpecificDirectory()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/assets/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    goto :goto_0

    .line 299
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lcom/puravidaapps/TaifunPM/TaifunPM;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "makeroid"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 301
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "/storage/emulated/0/Kodular/assets/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    goto/16 :goto_0

    .line 303
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v0

    invoke-direct {v5}, Lcom/puravidaapps/TaifunPM/TaifunPM;->ApplicationSpecificDirectory()Ljava/lang/String;

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

    goto/16 :goto_0

    .line 306
    :cond_4
    move-object v4, v1

    move-object v3, v4

    goto/16 :goto_0

    .line 308
    :cond_5
    move-object v4, v1

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 309
    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 310
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

    .line 313
    :cond_6
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

.method private drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 10

    .prologue
    .line 207
    move-object v0, p0

    .local v0, "this":Lcom/puravidaapps/TaifunPM/TaifunPM;
    move-object v1, p1

    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    const/4 v4, 0x0

    move-object v2, v4

    .line 221
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    move-object v4, v1

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    if-lez v4, :cond_0

    move-object v4, v1

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    if-gtz v4, :cond_1

    .line 222
    :cond_0
    const/4 v4, 0x1

    const/4 v5, 0x1

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object v2, v4

    .line 227
    :goto_0
    new-instance v4, Landroid/graphics/Canvas;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v2

    invoke-direct {v5, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object v3, v4

    .line 228
    .local v3, "canvas":Landroid/graphics/Canvas;
    move-object v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, v3

    invoke-virtual {v7}, Landroid/graphics/Canvas;->getWidth()I

    move-result v7

    move-object v8, v3

    invoke-virtual {v8}, Landroid/graphics/Canvas;->getHeight()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 229
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 230
    move-object v4, v2

    move-object v0, v4

    .end local v0    # "this":Lcom/puravidaapps/TaifunPM/TaifunPM;
    return-object v0

    .line 224
    .end local v3    # "canvas":Landroid/graphics/Canvas;
    .restart local v0    # "this":Lcom/puravidaapps/TaifunPM/TaifunPM;
    :cond_1
    move-object v4, v1

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    move-object v5, v1

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object v2, v4

    goto :goto_0
.end method

.method private progress(IILjava/lang/String;)V
    .locals 12

    .prologue
    .line 252
    move-object v0, p0

    .local v0, "this":Lcom/puravidaapps/TaifunPM/TaifunPM;
    move v1, p1

    .local v1, "index":I
    move v2, p2

    .local v2, "total":I
    move-object v3, p3

    .local v3, "json":Ljava/lang/String;
    move-object v4, v0

    iget-object v4, v4, Lcom/puravidaapps/TaifunPM/TaifunPM;->activity:Landroid/app/Activity;

    new-instance v5, Lcom/puravidaapps/TaifunPM/TaifunPM$3;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v0

    move v8, v1

    move v9, v2

    move-object v10, v3

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/puravidaapps/TaifunPM/TaifunPM$3;-><init>(Lcom/puravidaapps/TaifunPM/TaifunPM;IILjava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 258
    return-void
.end method


# virtual methods
.method public DefaultDirectory()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Default directory to store icons of found packages (READ ONLY)"
    .end annotation

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Lcom/puravidaapps/TaifunPM/TaifunPM;
    move-object v1, v0

    iget-object v1, v1, Lcom/puravidaapps/TaifunPM/TaifunPM;->defaultDirectory:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/puravidaapps/TaifunPM/TaifunPM;
    return-object v0
.end method

.method public GetPackages()V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get Package information."
    .end annotation

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Lcom/puravidaapps/TaifunPM/TaifunPM;
    new-instance v1, Lcom/puravidaapps/TaifunPM/TaifunPM$1;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/puravidaapps/TaifunPM/TaifunPM$1;-><init>(Lcom/puravidaapps/TaifunPM/TaifunPM;)V

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 118
    return-void
.end method

.method public GotPackages(Ljava/lang/Object;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Got Package information."
    .end annotation

    .prologue
    .line 266
    move-object v0, p0

    .local v0, "this":Lcom/puravidaapps/TaifunPM/TaifunPM;
    move-object v1, p1

    .local v1, "result":Ljava/lang/Object;
    const-string/jumbo v2, "TaifunPM"

    const-string/jumbo v3, "GotPackages"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 268
    move-object v2, v0

    const-string/jumbo v3, "GotPackages"

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

    .line 269
    return-void
.end method

.method public LaunchApp(Ljava/lang/String;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Launch app."
    .end annotation

    .prologue
    .line 237
    move-object v0, p0

    .local v0, "this":Lcom/puravidaapps/TaifunPM/TaifunPM;
    move-object v1, p1

    .local v1, "packageName":Ljava/lang/String;
    move-object v4, v0

    iget-object v4, v4, Lcom/puravidaapps/TaifunPM/TaifunPM;->packageManager:Landroid/content/pm/PackageManager;

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    move-object v2, v4

    .line 238
    .local v2, "mIntent":Landroid/content/Intent;
    move-object v4, v2

    if-eqz v4, :cond_0

    .line 240
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/puravidaapps/TaifunPM/TaifunPM;->activity:Landroid/app/Activity;

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    .line 249
    :cond_0
    :goto_0
    return-void

    .line 241
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 242
    .local v3, "e":Landroid/content/ActivityNotFoundException;
    move-object v4, v0

    iget-boolean v4, v4, Lcom/puravidaapps/TaifunPM/TaifunPM;->suppressWarnings:Z

    if-nez v4, :cond_1

    .line 243
    move-object v4, v0

    iget-object v4, v4, Lcom/puravidaapps/TaifunPM/TaifunPM;->context:Landroid/content/Context;

    const-string/jumbo v5, "app to launch not found"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 245
    :cond_1
    const-string/jumbo v4, "TaifunPM"

    move-object v5, v3

    invoke-virtual {v5}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 246
    move-object v4, v3

    invoke-virtual {v4}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public Progress(IILjava/lang/String;)V
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Progress of getting packages."
    .end annotation

    .prologue
    .line 278
    move-object v0, p0

    .local v0, "this":Lcom/puravidaapps/TaifunPM/TaifunPM;
    move v1, p1

    .local v1, "index":I
    move v2, p2

    .local v2, "total":I
    move-object v3, p3

    .local v3, "json":Ljava/lang/String;
    move-object v4, v0

    const-string/jumbo v5, "Progress"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move v9, v1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    move v9, v2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x2

    move-object v9, v3

    aput-object v9, v7, v8

    invoke-static {v4, v5, v6}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v4

    .line 279
    return-void
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
    .line 95
    move-object v0, p0

    .local v0, "this":Lcom/puravidaapps/TaifunPM/TaifunPM;
    move v1, p1

    .local v1, "suppressWarnings":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/puravidaapps/TaifunPM/TaifunPM;->suppressWarnings:Z

    .line 96
    return-void
.end method

.method public SuppressWarnings()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "whether Warnings should be suppressed"
    .end annotation

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Lcom/puravidaapps/TaifunPM/TaifunPM;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/puravidaapps/TaifunPM/TaifunPM;->suppressWarnings:Z

    move v0, v1

    .end local v0    # "this":Lcom/puravidaapps/TaifunPM/TaifunPM;
    return v0
.end method
