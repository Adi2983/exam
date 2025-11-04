.class public Lcom/google/appinventor/components/runtime/Form;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/ComponentContainer;
.implements Lcom/google/appinventor/components/runtime/HandlesEventDispatching;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->LAYOUT_GENERAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Top-level component containing all other components in the program"
    showOnPalette = false
    version = 0x2c
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesAssets;
    fileNames = "Roboto-Thin.ttf, Roboto-Regular.ttf, fontawesome-webfont.ttf, fa-regular-400.ttf, fa-solid-900.ttf, fa-brands-400.ttf, MaterialIcons-Regular.ttf"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    value = {
        "jose4j.jar",
        "slf4j-api.jar",
        "appcenter-analytics.jar",
        "appcenter-analytics.aar",
        "appcenter-crashes.jar",
        "appcenter-crashes.aar",
        "appcenter.jar",
        "appcenter.aar"
    }
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.INTERNET",
        "android.permission.ACCESS_WIFI_STATE",
        "android.permission.ACCESS_NETWORK_STATE"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/Form$a;,
        Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final APPINVENTOR_URL_SCHEME:Ljava/lang/String; = "appinventor"

.field private static final ARGUMENT_NAME:Ljava/lang/String; = "APP_INVENTOR_START"

.field public static final ASSETS_PREFIX:Ljava/lang/String; = "file:///android_asset/"

.field private static final DEFAULT_ACCENT_COLOR:I

.field private static final DEFAULT_PRIMARY_COLOR:I

.field private static final DEFAULT_PRIMARY_COLOR_DARK:I

.field private static final LOG_TAG:Ljava/lang/String; = "Form"

.field public static final MAX_PERMISSION_NONCE:I = 0xffff

.field private static final RESULT_NAME:Ljava/lang/String; = "APP_INVENTOR_RESULT"

.field private static final SWITCH_FORM_REQUEST_CODE:I = 0x1

.field private static _initialized:Z

.field protected static activeForm:Lcom/google/appinventor/components/runtime/Form;

.field private static applicationIsBeingClosed:Z

.field private static minimumToastWait:J

.field private static nextRequestCode:I

.field private static sCompatibilityMode:Z

.field private static screenInitialized:Z

.field private static showListsAsJson:Z


# instance fields
.field private aboutScreen:Ljava/lang/String;

.field private aboutScreenTitle:Ljava/lang/String;

.field private aboutThisAppBackgroundColor:I

.field private aboutThisAppLightTheme:Z

.field private accentColor:I

.field private actionBarDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

.field private final activityResultMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/appinventor/components/runtime/ActivityResultListener;",
            ">;"
        }
    .end annotation
.end field

.field private final activityResultMultiMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/appinventor/components/runtime/ActivityResultListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private alignmentSetter:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

.field private analyticsUtil:Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil;

.field protected final androidUIHandler:Landroid/os/Handler;

.field private appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

.field private appId:Ljava/lang/String;

.field private backgroundColor:I

.field private backgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private backgroundImagePath:Ljava/lang/String;

.field private closeAnimType:Lcom/google/appinventor/components/common/ScreenAnimation;

.field private compatScalingFactor:F

.field public coordinatorLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field private customActionBarIcon:Landroid/view/Menu;

.field private customMenu:Landroid/view/Menu;

.field private defaultFileScope:Lcom/google/appinventor/components/common/FileScope;

.field private deviceDensity:F

.field private dimChanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord;",
            ">;"
        }
    .end annotation
.end field

.field private drawerArrowIconColor:I

.field private drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

.field private fontTypeface:I

.field private formHeight:I

.field protected formName:Ljava/lang/String;

.field private formWidth:I

.field private frameLayout:Landroid/widget/FrameLayout;

.field private fullScreenVideoUtil:Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;

.field public highQuality:Z

.field private horizontalAlignment:Lcom/google/appinventor/components/common/HorizontalAlignment;

.field private isCompanion:Z

.field private isDrawerOpenBackup:Z

.field private keepScreenOn:Z

.field private keyboardReallyShown:Z

.field private keyboardShown:Z

.field private lastToastTime:J

.field private layoutBackup:Ljava/lang/Object;

.field private lockedMenu:Z

.field private lp:Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

.field private navigationBarLight:Z

.field private navigationIconColor:I

.field private nextFormName:Ljava/lang/String;

.field private final onClearListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/appinventor/components/runtime/OnClearListener;",
            ">;"
        }
    .end annotation
.end field

.field private onCreateBundle:Landroid/os/Bundle;

.field private final onCreateListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/appinventor/components/runtime/OnCreateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onCreateOptionsMenuListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/appinventor/components/runtime/OnCreateOptionsMenuListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onDestroyListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/appinventor/components/runtime/OnDestroyListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onInitializeListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/appinventor/components/runtime/util/OnInitializeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onNewIntentListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/appinventor/components/runtime/OnNewIntentListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onOptionsItemSelectedListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/appinventor/components/runtime/OnOptionsItemSelectedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onOrientationChangeListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/appinventor/components/runtime/OnOrientationChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onPauseListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/appinventor/components/runtime/OnPauseListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onResumeListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/appinventor/components/runtime/OnResumeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onStopListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/appinventor/components/runtime/OnStopListener;",
            ">;"
        }
    .end annotation
.end field

.field private openAnimType:Lcom/google/appinventor/components/common/ScreenAnimation;

.field private optionsMenuIconColor:I

.field private final permissionHandlers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/appinventor/components/runtime/PermissionResultHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final permissionRandom:Ljava/util/Random;

.field private final permissions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private primaryColor:I

.field private primaryColorDark:I

.field private progress:Landroid/app/ProgressDialog;

.field protected receiveSharedValue:Ljava/lang/String;

.field private receiveSharedValueType:I

.field private scaleLayout:Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

.field private scrollable:Z

.field private showNavBar:Z

.field private showOptionsMenu:Z

.field public showStatusBar:Z

.field public showTitle:Z

.field private splashEnabled:Z

.field protected startupValue:Ljava/lang/String;

.field private stateBackButton:Z

.field private statusbarColor:I

.field private statusbarLight:Z

.field private titleBarColor:I

.field private titleBarTextColor:I

.field private toolbar:Landroidx/appcompat/widget/Toolbar;

.field private toolbarIconColor:I

.field private toolbarSubTitle:Ljava/lang/String;

.field private toolbarTitle:Ljava/lang/String;

.field private verticalAlignment:Lcom/google/appinventor/components/common/VerticalAlignment;

.field private viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

.field private yandexTranslateTagline:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 143
    const-class v0, Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/appinventor/components/runtime/Form;->$assertionsDisabled:Z

    .line 181
    const-string/jumbo v0, "&HFF3F51B5"

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/PaintUtil;->hexStringToInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/appinventor/components/runtime/Form;->DEFAULT_PRIMARY_COLOR:I

    .line 182
    const-string/jumbo v0, "&HFF303F9F"

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/PaintUtil;->hexStringToInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/appinventor/components/runtime/Form;->DEFAULT_PRIMARY_COLOR_DARK:I

    .line 183
    const-string/jumbo v0, "&HFFFF4081"

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/PaintUtil;->hexStringToInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/appinventor/components/runtime/Form;->DEFAULT_ACCENT_COLOR:I

    .line 204
    const/4 v0, 0x2

    sput v0, Lcom/google/appinventor/components/runtime/Form;->nextRequestCode:I

    .line 234
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/appinventor/components/runtime/Form;->showListsAsJson:Z

    .line 269
    const-wide v0, 0x2540be400L

    sput-wide v0, Lcom/google/appinventor/components/runtime/Form;->minimumToastWait:J

    .line 282
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/appinventor/components/runtime/Form;->_initialized:Z

    return-void

    .line 143
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    .line 165
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 199
    move-object v1, v0

    new-instance v2, Landroid/os/Handler;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/Form;->androidUIHandler:Landroid/os/Handler;

    .line 212
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/appinventor/components/runtime/Form;->showTitle:Z

    .line 214
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/google/appinventor/components/runtime/Form;->drawerArrowIconColor:I

    .line 216
    move-object v1, v0

    const-string/jumbo v2, ""

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/Form;->backgroundImagePath:Ljava/lang/String;

    .line 227
    move-object v1, v0

    sget-object v2, Lcom/google/appinventor/components/common/ScreenAnimation;->Default:Lcom/google/appinventor/components/common/ScreenAnimation;

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/Form;->openAnimType:Lcom/google/appinventor/components/common/ScreenAnimation;

    .line 228
    move-object v1, v0

    sget-object v2, Lcom/google/appinventor/components/common/ScreenAnimation;->Default:Lcom/google/appinventor/components/common/ScreenAnimation;

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/Form;->closeAnimType:Lcom/google/appinventor/components/common/ScreenAnimation;

    .line 235
    move-object v1, v0

    const-string/jumbo v2, ""

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/Form;->appId:Ljava/lang/String;

    .line 238
    move-object v1, v0

    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/Form;->activityResultMap:Ljava/util/HashMap;

    .line 239
    move-object v1, v0

    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/Form;->activityResultMultiMap:Ljava/util/Map;

    .line 240
    move-object v1, v0

    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v2

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/Form;->onStopListeners:Ljava/util/Set;

    .line 241
    move-object v1, v0

    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v2

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/Form;->onClearListeners:Ljava/util/Set;

    .line 242
    move-object v1, v0

    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v2

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/Form;->onNewIntentListeners:Ljava/util/Set;

    .line 243
    move-object v1, v0

    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v2

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/Form;->onResumeListeners:Ljava/util/Set;

    .line 244
    move-object v1, v0

    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v2

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/Form;->onPauseListeners:Ljava/util/Set;

    .line 245
    move-object v1, v0

    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v2

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/Form;->onDestroyListeners:Ljava/util/Set;

    .line 246
    move-object v1, v0

    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v2

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/Form;->onCreateListeners:Ljava/util/Set;

    .line 249
    move-object v1, v0

    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v2

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/Form;->onInitializeListeners:Ljava/util/Set;

    .line 252
    move-object v1, v0

    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v2

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/Form;->onCreateOptionsMenuListeners:Ljava/util/Set;

    .line 253
    move-object v1, v0

    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v2

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/Form;->onOptionsItemSelectedListeners:Ljava/util/Set;

    .line 256
    move-object v1, v0

    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v2

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/Form;->onOrientationChangeListeners:Ljava/util/Set;

    .line 259
    move-object v1, v0

    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/Form;->permissionHandlers:Ljava/util/HashMap;

    .line 260
    move-object v1, v0

    new-instance v2, Ljava/util/Random;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/Form;->permissionRandom:Ljava/util/Random;

    .line 264
    move-object v1, v0

    const-string/jumbo v2, ""

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/Form;->receiveSharedValue:Ljava/lang/String;

    .line 266
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/google/appinventor/components/runtime/Form;->receiveSharedValueType:I

    .line 270
    move-object v1, v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sget-wide v4, Lcom/google/appinventor/components/runtime/Form;->minimumToastWait:J

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcom/google/appinventor/components/runtime/Form;->lastToastTime:J

    .line 278
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/Form;->onCreateBundle:Landroid/os/Bundle;

    .line 280
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/google/appinventor/components/runtime/Form;->keyboardReallyShown:Z

    .line 285
    move-object v1, v0

    new-instance v2, Ljava/util/HashSet;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/Form;->permissions:Ljava/util/Set;

    .line 287
    move-object v1, v0

    sget-object v2, Lcom/google/appinventor/components/common/FileScope;->App:Lcom/google/appinventor/components/common/FileScope;

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/Form;->defaultFileScope:Lcom/google/appinventor/components/common/FileScope;

    .line 292
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/appinventor/components/runtime/Form;->highQuality:Z

    .line 293
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/appinventor/components/runtime/Form;->splashEnabled:Z

    .line 294
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/google/appinventor/components/runtime/Form;->keepScreenOn:Z

    .line 304
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/Form;->layoutBackup:Ljava/lang/Object;

    .line 305
    move-object v1, v0

    const v2, -0xbbbbbc

    iput v2, v1, Lcom/google/appinventor/components/runtime/Form;->aboutThisAppBackgroundColor:I

    .line 307
    move-object v1, v0

    sget v2, Lcom/google/appinventor/components/runtime/Form;->DEFAULT_PRIMARY_COLOR:I

    iput v2, v1, Lcom/google/appinventor/components/runtime/Form;->primaryColor:I

    .line 308
    move-object v1, v0

    sget v2, Lcom/google/appinventor/components/runtime/Form;->DEFAULT_PRIMARY_COLOR_DARK:I

    iput v2, v1, Lcom/google/appinventor/components/runtime/Form;->primaryColorDark:I

    .line 309
    move-object v1, v0

    sget v2, Lcom/google/appinventor/components/runtime/Form;->DEFAULT_ACCENT_COLOR:I

    iput v2, v1, Lcom/google/appinventor/components/runtime/Form;->accentColor:I

    .line 311
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/google/appinventor/components/runtime/Form;->fontTypeface:I

    .line 312
    move-object v1, v0

    const-string/jumbo v2, ""

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/Form;->toolbarSubTitle:Ljava/lang/String;

    .line 334
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/Form;->dimChanges:Ljava/util/ArrayList;

    .line 2565
    move-object v1, v0

    const-string/jumbo v2, ""

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/Form;->yandexTranslateTagline:Ljava/lang/String;

    return-void
.end method

.method private OnCompanionRefresh()V
    .locals 5

    .prologue
    .line 3526
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->IsSideMenuAdded()Z

    move-result v2

    move-object v3, v0

    iget-boolean v3, v3, Lcom/google/appinventor/components/runtime/Form;->isCompanion:Z

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/KodularCompanionUtil;->drawerLayoutFix(Landroidx/drawerlayout/widget/DrawerLayout;ZZ)V

    .line 3527
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->toolbar:Landroidx/appcompat/widget/Toolbar;

    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/Form;->isCompanion:Z

    move-object v3, v0

    iget v3, v3, Lcom/google/appinventor/components/runtime/Form;->titleBarColor:I

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/KodularCompanionUtil;->toolbarColor(Landroidx/appcompat/widget/Toolbar;ZI)V

    .line 3528
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/Form;->isCompanion:Z

    move-object v3, v0

    iget v3, v3, Lcom/google/appinventor/components/runtime/Form;->primaryColorDark:I

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/KodularCompanionUtil;->statusBarColor(Landroid/app/Activity;ZI)V

    .line 3530
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->layoutBackup:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 3531
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->layoutBackup:Ljava/lang/Object;

    instance-of v1, v1, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;

    if-eqz v1, :cond_0

    .line 3532
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->layoutBackup:Ljava/lang/Object;

    check-cast v2, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->SideMenuLayout(Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;)V

    .line 3535
    :cond_0
    return-void
.end method

.method private UpdateTitlebarItemColor(I)V
    .locals 5

    .prologue
    .line 3470
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/Form;->toolbarIconColor:I

    .line 3472
    move v2, v1

    if-nez v2, :cond_3

    move-object v2, v0

    const-string/jumbo v3, "colorToolbar"

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/KodularResourcesUtil;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    :goto_0
    move v1, v2

    .line 3473
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->toolbar:Landroidx/appcompat/widget/Toolbar;

    if-eqz v2, :cond_2

    .line 3474
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v2}, Landroidx/appcompat/widget/Toolbar;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3475
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v2}, Landroidx/appcompat/widget/Toolbar;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move v3, v1

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 3477
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v2}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3478
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v2}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move v3, v1

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 3480
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->actionBarDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    if-eqz v2, :cond_2

    .line 3481
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->actionBarDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    invoke-virtual {v2}, Landroidx/appcompat/app/ActionBarDrawerToggle;->getDrawerArrowDrawable()Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->setColor(I)V

    .line 3485
    :cond_2
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/Form;->optionsMenuIconColor:I

    .line 3486
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/Form;->navigationIconColor:I

    .line 3487
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/Form;->drawerArrowIconColor:I

    .line 3488
    return-void

    .line 3472
    :cond_3
    move v2, v1

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/Form;)Landroid/widget/FrameLayout;
    .locals 2

    .prologue
    .line 165
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$1000()Z
    .locals 1

    .prologue
    .line 165
    sget-boolean v0, Lcom/google/appinventor/components/runtime/Form;->sCompatibilityMode:Z

    return v0
.end method

.method static synthetic access$1102(Z)Z
    .locals 4

    .prologue
    .line 165
    move v0, p0

    move v1, v0

    move v3, v1

    move v1, v3

    move v2, v3

    sput-boolean v2, Lcom/google/appinventor/components/runtime/Form;->screenInitialized:Z

    move v0, v1

    return v0
.end method

.method static synthetic access$1200(Lcom/google/appinventor/components/runtime/Form;)I
    .locals 2

    .prologue
    .line 165
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/Form;->receiveSharedValueType:I

    move v0, v1

    return v0
.end method

.method static synthetic access$1300(Lcom/google/appinventor/components/runtime/Form;)Ljava/util/Set;
    .locals 2

    .prologue
    .line 165
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->onInitializeListeners:Ljava/util/Set;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/appinventor/components/runtime/Form;)Landroidx/drawerlayout/widget/DrawerLayout;
    .locals 2

    .prologue
    .line 165
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$1500(Lcom/google/appinventor/components/runtime/Form;)Landroidx/appcompat/app/ActionBarDrawerToggle;
    .locals 2

    .prologue
    .line 165
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->actionBarDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$1600(Lcom/google/appinventor/components/runtime/Form;)V
    .locals 2

    .prologue
    .line 165
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/Form;->showAboutApplicationNotification()V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/appinventor/components/runtime/Form;)Ljava/util/Random;
    .locals 2

    .prologue
    .line 165
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->permissionRandom:Ljava/util/Random;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$1800(Lcom/google/appinventor/components/runtime/Form;)Ljava/util/HashMap;
    .locals 2

    .prologue
    .line 165
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->permissionHandlers:Ljava/util/HashMap;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/appinventor/components/runtime/Form;)V
    .locals 2

    .prologue
    .line 165
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/Form;->recomputeLayout()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/appinventor/components/runtime/Form;)Z
    .locals 2

    .prologue
    .line 165
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/Form;->isDrawerOpenBackup:Z

    move v0, v1

    return v0
.end method

.method static synthetic access$302(Lcom/google/appinventor/components/runtime/Form;Z)Z
    .locals 7

    .prologue
    .line 165
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/Form;->isDrawerOpenBackup:Z

    move v0, v2

    return v0
.end method

.method static synthetic access$400(Lcom/google/appinventor/components/runtime/Form;)Z
    .locals 2

    .prologue
    .line 165
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/Form;->lockedMenu:Z

    move v0, v1

    return v0
.end method

.method static synthetic access$500(Lcom/google/appinventor/components/runtime/Form;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 165
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->toolbarTitle:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/appinventor/components/runtime/Form;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 165
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->toolbarSubTitle:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/appinventor/components/runtime/Form;)Landroidx/appcompat/widget/Toolbar;
    .locals 2

    .prologue
    .line 165
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->toolbar:Landroidx/appcompat/widget/Toolbar;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/appinventor/components/runtime/Form;)Z
    .locals 2

    .prologue
    .line 165
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/Form;->isCompanion:Z

    move v0, v1

    return v0
.end method

.method static synthetic access$802(Lcom/google/appinventor/components/runtime/Form;Z)Z
    .locals 7

    .prologue
    .line 165
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/Form;->isCompanion:Z

    move v0, v2

    return v0
.end method

.method static synthetic access$900(Lcom/google/appinventor/components/runtime/Form;)I
    .locals 2

    .prologue
    .line 165
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/Form;->titleBarColor:I

    move v0, v1

    return v0
.end method

.method private closeApplication()V
    .locals 3

    .prologue
    .line 2419
    move-object v0, p0

    const/4 v1, 0x1

    sput-boolean v1, Lcom/google/appinventor/components/runtime/Form;->applicationIsBeingClosed:Z

    .line 2421
    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->finish()V

    .line 2423
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    const-string/jumbo v2, "Screen1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2429
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 2431
    :cond_0
    return-void
.end method

.method private static decodeJSONStringForForm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 12

    .prologue
    .line 747
    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v3, "Form"

    const-string/jumbo v4, "decodeJSONStringForForm -- decoding JSON representation:"

    move-object v5, v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 748
    const-string/jumbo v3, ""

    move-object v2, v3

    .line 750
    move-object v3, v0

    const/4 v4, 0x1

    :try_start_0
    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getObjectFromJson(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 751
    const-string/jumbo v3, "Form"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    const-string/jumbo v6, "decodeJSONStringForForm -- got decoded JSON:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 757
    .line 758
    :goto_0
    move-object v3, v2

    move-object v0, v3

    return-object v0

    .line 753
    :catch_0
    move-exception v3

    sget-object v3, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    move-object v5, v1

    const/16 v6, 0x387

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move-object v10, v0

    aput-object v10, v8, v9

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private defaultPropertyValues()V
    .locals 4

    .prologue
    .line 516
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->Scrollable(Z)V

    .line 517
    move-object v1, v0

    const-string/jumbo v2, "Responsive"

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->Sizing(Ljava/lang/String;)V

    .line 518
    move-object v1, v0

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->AboutScreen(Ljava/lang/String;)V

    .line 519
    move-object v1, v0

    const-string/jumbo v2, "About this application"

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->AboutScreenTitle(Ljava/lang/String;)V

    .line 520
    move-object v1, v0

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    iget v2, v2, Lcom/google/appinventor/components/runtime/Form;->aboutThisAppBackgroundColor:I

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->AboutScreenBackgroundColor(I)V

    .line 521
    move-object v1, v0

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/Form;->aboutThisAppLightTheme:Z

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->AboutScreenLightTheme(Z)V

    .line 522
    move-object v1, v0

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->BackgroundImage(Ljava/lang/String;)V

    .line 523
    move-object v1, v0

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->BackgroundColor(I)V

    .line 524
    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->AlignHorizontal(I)V

    .line 525
    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->AlignVertical(I)V

    .line 526
    move-object v1, v0

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->Title(Ljava/lang/String;)V

    .line 527
    move-object v1, v0

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->TitleBarSubTitle(Ljava/lang/String;)V

    .line 528
    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->ShowStatusBar(Z)V

    .line 529
    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->ShowNavBar(Z)V

    .line 530
    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->TitleVisible(Z)V

    .line 531
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->ShowListsAsJson(Z)V

    .line 532
    move-object v1, v0

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->NavigationBarColor(I)V

    .line 533
    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->ShowOptionsMenu(Z)V

    .line 534
    move-object v1, v0

    const-string/jumbo v2, "unspecified"

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->ScreenOrientation(Ljava/lang/String;)V

    .line 535
    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->SplashEnabled(Z)V

    .line 536
    move-object v1, v0

    sget v2, Lcom/google/appinventor/components/runtime/Form;->DEFAULT_ACCENT_COLOR:I

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->AccentColor(I)V

    .line 537
    move-object v1, v0

    sget v2, Lcom/google/appinventor/components/runtime/Form;->DEFAULT_PRIMARY_COLOR:I

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->PrimaryColor(I)V

    .line 538
    move-object v1, v0

    sget v2, Lcom/google/appinventor/components/runtime/Form;->DEFAULT_PRIMARY_COLOR_DARK:I

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->PrimaryColorDark(I)V

    .line 539
    move-object v1, v0

    const-string/jumbo v2, "AppTheme"

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->Theme(Ljava/lang/String;)V

    .line 540
    move-object v1, v0

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->TitleBarTypefaceImport(Ljava/lang/String;)V

    .line 541
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->HighQuality(Z)V

    .line 542
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->KeepScreenOn(Z)V

    .line 543
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->RTLSupport(Z)V

    .line 544
    move-object v1, v0

    sget-object v2, Lcom/google/appinventor/components/common/ScreenAnimation;->Default:Lcom/google/appinventor/components/common/ScreenAnimation;

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->OpenScreenAnimationAbstract(Lcom/google/appinventor/components/common/ScreenAnimation;)V

    .line 545
    move-object v1, v0

    sget-object v2, Lcom/google/appinventor/components/common/ScreenAnimation;->Default:Lcom/google/appinventor/components/common/ScreenAnimation;

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->CloseScreenAnimationAbstract(Lcom/google/appinventor/components/common/ScreenAnimation;)V

    .line 546
    move-object v1, v0

    sget-object v2, Lcom/google/appinventor/components/common/FileScope;->App:Lcom/google/appinventor/components/common/FileScope;

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->DefaultFileScope(Lcom/google/appinventor/components/common/FileScope;)V

    .line 547
    return-void
.end method

.method public static finishActivity()V
    .locals 4

    .prologue
    .line 2357
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    if-eqz v0, :cond_0

    .line 2358
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->closeForm(Landroid/content/Intent;)V

    return-void

    .line 2360
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const-string/jumbo v2, "activeForm is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static finishActivityWithResult(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 2366
    move-object v0, p0

    sget-object v2, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    if-eqz v2, :cond_1

    .line 2367
    sget-object v2, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    instance-of v2, v2, Lcom/google/appinventor/components/runtime/ReplForm;

    if-eqz v2, :cond_0

    .line 2368
    sget-object v2, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    check-cast v2, Lcom/google/appinventor/components/runtime/ReplForm;

    move-object v3, v0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/ReplForm;->setResult(Ljava/lang/Object;)V

    .line 2369
    sget-object v2, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->closeForm(Landroid/content/Intent;)V

    .line 2375
    :goto_0
    return-void

    .line 2371
    :cond_0
    move-object v2, v0

    const-string/jumbo v3, "close screen with value"

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->jsonEncodeForForm(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 2372
    new-instance v2, Landroid/content/Intent;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    .line 2373
    move-object v1, v3

    const-string/jumbo v3, "APP_INVENTOR_RESULT"

    move-object v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 2374
    sget-object v2, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->closeForm(Landroid/content/Intent;)V

    .line 2375
    goto :goto_0

    .line 2377
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "activeForm is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static finishActivityWithTextResult(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 2383
    move-object v0, p0

    sget-object v2, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    if-eqz v2, :cond_0

    .line 2384
    new-instance v2, Landroid/content/Intent;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    .line 2385
    move-object v1, v3

    const-string/jumbo v3, "APP_INVENTOR_RESULT"

    move-object v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 2386
    sget-object v2, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->closeForm(Landroid/content/Intent;)V

    .line 2387
    return-void

    .line 2388
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "activeForm is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static finishApplication()V
    .locals 4

    .prologue
    .line 2402
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    if-eqz v0, :cond_0

    .line 2403
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->closeApplicationFromBlocks()V

    return-void

    .line 2405
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const-string/jumbo v2, "activeForm is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static generateNewRequestCode()I
    .locals 4

    .prologue
    .line 832
    sget v0, Lcom/google/appinventor/components/runtime/Form;->nextRequestCode:I

    move v3, v0

    move v0, v3

    move v1, v3

    const/4 v2, 0x1

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/google/appinventor/components/runtime/Form;->nextRequestCode:I

    return v0
.end method

.method public static getActiveForm()Lcom/google/appinventor/components/runtime/Form;
    .locals 1

    .prologue
    .line 2317
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    return-object v0
.end method

.method public static getApplicationName(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 2172
    move-object v0, p0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    .line 2173
    move-object v1, v4

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->labelRes:I

    move v5, v3

    move v3, v5

    move v4, v5

    .line 2174
    move v2, v4

    if-nez v3, :cond_0

    move-object v3, v1

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method public static getCompatibilityMode()Z
    .locals 1

    .prologue
    .line 2752
    sget-boolean v0, Lcom/google/appinventor/components/runtime/Form;->sCompatibilityMode:Z

    return v0
.end method

.method public static getStartText()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2327
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    if-eqz v0, :cond_0

    .line 2328
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Form;->startupValue:Ljava/lang/String;

    return-object v0

    .line 2330
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const-string/jumbo v2, "activeForm is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getStartValue()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 2344
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    if-eqz v0, :cond_0

    .line 2345
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Form;->startupValue:Ljava/lang/String;

    const-string/jumbo v1, "get start value"

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->decodeJSONStringForForm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 2347
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const-string/jumbo v2, "activeForm is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static jsonEncodeForForm(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    .prologue
    .line 2206
    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v3, ""

    move-object v2, v3

    .line 2207
    const-string/jumbo v3, "Form"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    const-string/jumbo v6, "jsonEncodeForForm -- creating JSON representation:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 2210
    move-object v3, v0

    :try_start_0
    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getJsonRepresentation(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 2211
    const-string/jumbo v3, "Form"

    const-string/jumbo v4, "jsonEncodeForForm -- got JSON representation:"

    move-object v5, v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 2217
    .line 2218
    :goto_0
    move-object v3, v2

    move-object v0, v3

    return-object v0

    .line 2213
    :catch_0
    move-exception v3

    sget-object v3, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    move-object v5, v1

    const/16 v6, 0x388

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move-object v10, v0

    .line 2216
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 2213
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private menuIconWithText(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 9

    .prologue
    .line 2524
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x4b

    const/16 v7, 0x4b

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2525
    new-instance v3, Landroid/text/SpannableString;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const-string/jumbo v5, "       "

    move-object v6, v2

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move-object v2, v3

    .line 2526
    new-instance v3, Landroid/text/style/ImageSpan;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    move-object v1, v3

    .line 2527
    move-object v3, v2

    move-object v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v7, 0x21

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 2528
    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method

.method private populatePermissions()V
    .locals 5

    .prologue
    .line 498
    move-object v0, p0

    move-object v2, v0

    :try_start_0
    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Form;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1000

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    move-object v1, v2

    .line 499
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->permissions:Ljava/util/Set;

    move-object v3, v1

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 502
    .line 503
    :goto_0
    return-void

    .line 500
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 501
    const-string/jumbo v2, "Form"

    const-string/jumbo v3, "Exception while attempting to learn permissions."

    move-object v4, v1

    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v2

    .line 503
    goto :goto_0
.end method

.method private recomputeLayout()V
    .locals 11

    .prologue
    .line 1216
    move-object v0, p0

    const-string/jumbo v4, "Form"

    const-string/jumbo v5, "recomputeLayout called"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1218
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    if-eqz v4, :cond_0

    .line 1219
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1233
    :cond_0
    move-object v4, v0

    new-instance v5, Landroidx/drawerlayout/widget/DrawerLayout;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    invoke-direct {v6, v7}, Landroidx/drawerlayout/widget/DrawerLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/Form;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 1234
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(I)V

    .line 1235
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroidx/drawerlayout/widget/DrawerLayout;->addDrawerListener(Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;)V

    .line 1236
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    new-instance v5, Lcom/google/appinventor/components/runtime/Form$17;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/google/appinventor/components/runtime/Form$17;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    invoke-virtual {v4, v5}, Landroidx/drawerlayout/widget/DrawerLayout;->addDrawerListener(Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;)V

    .line 1262
    move-object v4, v0

    new-instance v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    invoke-direct {v6, v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/Form;->coordinatorLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 1263
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->coordinatorLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    new-instance v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct {v6, v7, v8}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1266
    new-instance v4, Landroid/widget/LinearLayout;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    .line 1267
    move-object v1, v5

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1268
    move-object v4, v1

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1270
    move-object v4, v0

    new-instance v5, Lcom/google/android/material/appbar/AppBarLayout;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/google/android/material/appbar/AppBarLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/Form;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    .line 1271
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    new-instance v5, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-direct {v6, v7, v8}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Lcom/google/android/material/appbar/AppBarLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1273
    move-object v4, v0

    new-instance v5, Landroidx/appcompat/widget/Toolbar;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    invoke-direct {v6, v7}, Landroidx/appcompat/widget/Toolbar;-><init>(Landroid/content/Context;)V

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/Form;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 1274
    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Form;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [I

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const/4 v7, 0x0

    const v8, 0x10102eb

    aput v8, v6, v7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v4

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    .line 1275
    move-object v2, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    float-to-int v4, v4

    move v3, v4

    .line 1276
    move-object v4, v2

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 1277
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->toolbar:Landroidx/appcompat/widget/Toolbar;

    new-instance v5, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const/4 v7, -0x1

    move v8, v3

    invoke-direct {v6, v7, v8}, Landroidx/appcompat/widget/Toolbar$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroidx/appcompat/widget/Toolbar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1278
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->toolbar:Landroidx/appcompat/widget/Toolbar;

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    invoke-virtual {v7}, Lcom/google/appinventor/components/runtime/Form;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "colorPrimary"

    invoke-static {v7, v8}, Lcom/google/appinventor/components/runtime/util/KodularResourcesUtil;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-direct {v6, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v5}, Landroidx/appcompat/widget/Toolbar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1280
    move-object v4, v0

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    iget v5, v5, Lcom/google/appinventor/components/runtime/Form;->toolbarIconColor:I

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/Form;->UpdateTitlebarItemColor(I)V

    .line 1282
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Form;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v4, v5}, Lcom/google/android/material/appbar/AppBarLayout;->addView(Landroid/view/View;)V

    .line 1284
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Form;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1286
    move-object v4, v0

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Form;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/Form;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 1288
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->toolbar:Landroidx/appcompat/widget/Toolbar;

    new-instance v5, Lcom/google/appinventor/components/runtime/Form$18;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/google/appinventor/components/runtime/Form$18;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    invoke-virtual {v4, v5}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1304
    move-object v4, v0

    iget-boolean v4, v4, Lcom/google/appinventor/components/runtime/Form;->scrollable:Z

    if-eqz v4, :cond_3

    .line 1305
    move-object v4, v0

    new-instance v5, Landroid/widget/ScrollView;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    invoke-direct {v6, v7}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    .line 1306
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x18

    if-lt v4, v5, :cond_1

    .line 1309
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    check-cast v4, Landroid/widget/ScrollView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 1315
    :cond_1
    :goto_0
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Form;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/LinearLayout;->getLayoutManager()Landroid/view/ViewGroup;

    move-result-object v5

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-direct {v7, v8, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1318
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct {v6, v7, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1320
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1322
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->coordinatorLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->addView(Landroid/view/View;)V

    .line 1324
    move-object v4, v0

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/Form;->setBackground(Landroid/view/View;)V

    .line 1326
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Form;->coordinatorLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-direct {v7, v8, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v6}, Landroidx/drawerlayout/widget/DrawerLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1330
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->layoutBackup:Ljava/lang/Object;

    if-eqz v4, :cond_2

    .line 1331
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->layoutBackup:Ljava/lang/Object;

    instance-of v4, v4, Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    if-eqz v4, :cond_4

    .line 1332
    move-object v4, v0

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Form;->layoutBackup:Ljava/lang/Object;

    check-cast v5, Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/Form;->SideMenu(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 1338
    :cond_2
    :goto_1
    const-string/jumbo v4, "Form"

    const-string/jumbo v5, "About to create a new ScaledFrameLayout"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1339
    move-object v4, v0

    new-instance v5, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/Form;->scaleLayout:Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

    .line 1340
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->scaleLayout:Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Form;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-direct {v7, v8, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1343
    move-object v4, v0

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Form;->scaleLayout:Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/Form;->setContentView(Landroid/view/View;)V

    .line 1344
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v4, v5}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1345
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->scaleLayout:Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->requestLayout()V

    .line 1346
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->androidUIHandler:Landroid/os/Handler;

    new-instance v5, Lcom/google/appinventor/components/runtime/Form$19;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/google/appinventor/components/runtime/Form$19;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v4

    .line 1363
    return-void

    .line 1312
    :cond_3
    move-object v4, v0

    new-instance v5, Landroid/widget/FrameLayout;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    invoke-direct {v6, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    goto/16 :goto_0

    .line 1333
    :cond_4
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->layoutBackup:Ljava/lang/Object;

    instance-of v4, v4, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;

    if-eqz v4, :cond_2

    .line 1334
    move-object v4, v0

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Form;->layoutBackup:Ljava/lang/Object;

    check-cast v5, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/Form;->SideMenuLayout(Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;)V

    goto :goto_1
.end method

.method private setBackground(Landroid/view/View;)V
    .locals 7

    .prologue
    .line 2738
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Form;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    move-object v2, v3

    .line 2739
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Form;->backgroundImagePath:Ljava/lang/String;

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move-object v3, v2

    if-eqz v3, :cond_2

    .line 2740
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Form;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2741
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Form;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v2, v3

    .line 2743
    :cond_0
    move-object v3, v2

    move-object v4, v0

    iget v4, v4, Lcom/google/appinventor/components/runtime/Form;->backgroundColor:I

    if-eqz v4, :cond_1

    move-object v4, v0

    iget v4, v4, Lcom/google/appinventor/components/runtime/Form;->backgroundColor:I

    :goto_0
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 2747
    :goto_1
    move-object v3, v1

    move-object v4, v2

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundImage(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 2748
    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 2749
    return-void

    .line 2743
    :cond_1
    const/4 v4, -0x1

    goto :goto_0

    .line 2745
    :cond_2
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    iget v5, v5, Lcom/google/appinventor/components/runtime/Form;->backgroundColor:I

    if-eqz v5, :cond_3

    move-object v5, v0

    iget v5, v5, Lcom/google/appinventor/components/runtime/Form;->backgroundColor:I

    :goto_2
    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    move-object v2, v3

    goto :goto_1

    :cond_3
    const/4 v5, -0x1

    goto :goto_2
.end method

.method private showAboutApplicationNotification()V
    .locals 9

    .prologue
    .line 2572
    move-object v0, p0

    const-string/jumbo v2, "<p><small><em>Created with Kodular<br><a href=\"https://www.kodular.io\">kodular.io</a></em></small></p>"

    move-object v1, v2

    .line 2577
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Form;->aboutScreen:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Form;->yandexTranslateTagline:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2578
    const-string/jumbo v3, "\\n"

    const-string/jumbo v4, "<br>"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 2580
    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->aboutScreenTitle:Ljava/lang/String;

    move-object v5, v0

    const v6, 0x104000a

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/Form;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v6, v0

    iget v6, v6, Lcom/google/appinventor/components/runtime/Form;->aboutThisAppBackgroundColor:I

    move-object v7, v0

    iget-boolean v7, v7, Lcom/google/appinventor/components/runtime/Form;->aboutThisAppLightTheme:Z

    invoke-static/range {v2 .. v7}, Lcom/google/appinventor/components/runtime/Notifier;->aboutThisApp(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2583
    .line 2584
    :goto_0
    return-void

    .line 2581
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 2582
    const-string/jumbo v2, "Form"

    move-object v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 2584
    goto :goto_0
.end method

.method public static switchForm(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 2080
    move-object v0, p0

    sget-object v1, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    if-eqz v1, :cond_0

    .line 2081
    sget-object v1, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->startNewForm(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 2083
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string/jumbo v3, "activeForm is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static switchFormWithStartValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 2096
    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v2, "Form"

    const-string/jumbo v3, "Open another screen with start value:"

    move-object v4, v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 2097
    sget-object v2, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    if-eqz v2, :cond_0

    .line 2098
    sget-object v2, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->startNewForm(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 2100
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "activeForm is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private titleBarFontHelper(Ljava/lang/String;IZ)V
    .locals 12

    .prologue
    .line 3441
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v6, v0

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setContext(Landroid/content/Context;)V

    .line 3442
    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/Form;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v7}, Landroidx/appcompat/widget/Toolbar;->getChildCount()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 3443
    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/Form;->toolbar:Landroidx/appcompat/widget/Toolbar;

    move v7, v4

    invoke-virtual {v6, v7}, Landroidx/appcompat/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    .line 3444
    move-object v5, v7

    instance-of v6, v6, Landroid/widget/TextView;

    if-eqz v6, :cond_1

    .line 3445
    move-object v6, v5

    check-cast v6, Landroid/widget/TextView;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    .line 3446
    move-object v5, v7

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/Form;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v7}, Landroidx/appcompat/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    move-object v6, v5

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/Form;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v7}, Landroidx/appcompat/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3447
    :cond_0
    move v6, v3

    if-eqz v6, :cond_2

    .line 3448
    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/Form;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v6

    move-object v7, v5

    move-object v8, v1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v6, v7, v8, v9, v10}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setCustomFontTypeface(Lcom/google/appinventor/components/runtime/Form;Landroid/widget/TextView;Ljava/lang/String;ZZ)V

    .line 3442
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3450
    :cond_2
    move-object v6, v5

    move v7, v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    goto :goto_1

    .line 3455
    :cond_3
    return-void
.end method

.method private titleBarTextColorHelper(I)V
    .locals 7

    .prologue
    .line 3458
    move-object v0, p0

    move v1, p1

    const/4 v4, 0x0

    move v2, v4

    :goto_0
    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Form;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v5}, Landroidx/appcompat/widget/Toolbar;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 3459
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->toolbar:Landroidx/appcompat/widget/Toolbar;

    move v5, v2

    invoke-virtual {v4, v5}, Landroidx/appcompat/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    .line 3460
    move-object v3, v5

    instance-of v4, v4, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 3461
    move-object v4, v3

    check-cast v4, Landroid/widget/TextView;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    .line 3462
    move-object v3, v5

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Form;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v5}, Landroidx/appcompat/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3463
    move-object v4, v3

    move v5, v1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3458
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3467
    :cond_1
    return-void
.end method


# virtual methods
.method public $add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 4

    .prologue
    .line 2251
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/LinearLayout;->add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 2252
    return-void
.end method

.method public $context()Landroid/app/Activity;
    .locals 2

    .prologue
    .line 2241
    move-object v0, p0

    move-object v1, v0

    move-object v0, v1

    return-object v0
.end method

.method protected $define()V
    .locals 4

    .prologue
    .line 976
    move-object v0, p0

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method

.method public $form()Lcom/google/appinventor/components/runtime/Form;
    .locals 2

    .prologue
    .line 2246
    move-object v0, p0

    move-object v1, v0

    move-object v0, v1

    return-object v0
.end method

.method public AboutScreen()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Information about the screen.  It appears when \"About this Application\" is selected from the system menu. Use it to inform people about your app.  In multiple screen apps, each screen has its own AboutScreen info."
    .end annotation

    .prologue
    .line 1500
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->aboutScreen:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public AboutScreen(Ljava/lang/String;)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "textArea"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 1513
    move-object v0, p0

    move-object v1, p1

    :goto_0
    move-object v2, v1

    const-string/jumbo v3, "<!--"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1514
    move-object v2, v1

    const-string/jumbo v3, "<!--"

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    goto :goto_0

    .line 1516
    :cond_0
    :goto_1
    move-object v2, v1

    const-string/jumbo v3, "<!-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1517
    move-object v2, v1

    const-string/jumbo v3, "<!-"

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    goto :goto_1

    .line 1519
    :cond_1
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Form;->aboutScreen:Ljava/lang/String;

    .line 1520
    return-void
.end method

.method public AboutScreenBackgroundColor()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 3364
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/Form;->aboutThisAppBackgroundColor:I

    move v0, v1

    return v0
.end method

.method public AboutScreenBackgroundColor(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF444444"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 3371
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/Form;->aboutThisAppBackgroundColor:I

    .line 3372
    return-void
.end method

.method public AboutScreenLightTheme(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 3382
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/Form;->aboutThisAppLightTheme:Z

    .line 3383
    return-void
.end method

.method public AboutScreenLightTheme()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 3376
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/Form;->aboutThisAppLightTheme:Z

    move v0, v1

    return v0
.end method

.method public AboutScreenTitle(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "About this application"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Define the title of the about application option."
    .end annotation

    .prologue
    .line 2464
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2465
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Form;->aboutScreenTitle:Ljava/lang/String;

    .line 2469
    :goto_0
    return-void

    .line 2467
    :cond_0
    move-object v2, v0

    const-string/jumbo v3, "About this application"

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Form;->aboutScreenTitle:Ljava/lang/String;

    .line 2469
    goto :goto_0
.end method

.method public AccentColor()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 3274
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/Form;->accentColor:I

    move v0, v1

    return v0
.end method

.method public AccentColor(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFF4081"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "This is the accent color used for highlights and other user interface accents."
        userVisible = false
    .end annotation

    .prologue
    .line 3269
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/Form;->accentColor:I

    .line 3270
    return-void
.end method

.method public AddDrawerSync()V
    .locals 8

    .prologue
    .line 3119
    move-object v0, p0

    move-object v1, v0

    new-instance v2, Lcom/google/appinventor/components/runtime/Form$9;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/Form;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-direct {v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form$9;-><init>(Lcom/google/appinventor/components/runtime/Form;Landroid/app/Activity;Landroidx/drawerlayout/widget/DrawerLayout;)V

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/Form;->actionBarDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    .line 3129
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->actionBarDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    invoke-virtual {v1}, Landroidx/appcompat/app/ActionBarDrawerToggle;->syncState()V

    .line 3130
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->actionBarDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/ActionBarDrawerToggle;->setDrawerIndicatorEnabled(Z)V

    .line 3131
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz v1, :cond_0

    .line 3132
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->actionBarDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    invoke-virtual {v1, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->addDrawerListener(Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;)V

    .line 3134
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3135
    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 3136
    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 3138
    :cond_1
    move-object v1, v0

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    iget v2, v2, Lcom/google/appinventor/components/runtime/Form;->toolbarIconColor:I

    invoke-direct {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->UpdateTitlebarItemColor(I)V

    .line 3139
    return-void
.end method

.method public AddMenuItem(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Add a new item to the menu. Use the \'make a list\' block."
    .end annotation

    .prologue
    .line 2484
    move-object v0, p0

    move-object v1, p1

    move-object v5, v1

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/util/YailList;->toStringArray()[Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 2485
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Form;->customMenu:Landroid/view/Menu;

    if-eqz v5, :cond_0

    .line 2486
    move-object v5, v1

    array-length v5, v5

    move v2, v5

    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_0

    move-object v5, v1

    move v6, v3

    aget-object v5, v5, v6

    move-object v4, v5

    .line 2487
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Form;->customMenu:Landroid/view/Menu;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v9, v4

    invoke-interface {v5, v6, v7, v8, v9}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v5

    .line 2488
    new-instance v6, Lcom/google/appinventor/components/runtime/Form$3;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    invoke-direct {v7, v8}, Lcom/google/appinventor/components/runtime/Form$3;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v5

    .line 2486
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2496
    :cond_0
    return-void
.end method

.method public AddMenuItemWithIcon(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Add a new item with a icon on the left side to the menu. This function does not use the make a list block. If you want more items with icon then use this block again."
    .end annotation

    .prologue
    .line 2502
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const/4 v4, 0x0

    move-object v3, v4

    .line 2503
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->customMenu:Landroid/view/Menu;

    if-eqz v4, :cond_1

    .line 2505
    move-object v4, v0

    move-object v5, v2

    :try_start_0
    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move-object v3, v4

    .line 2508
    .line 2510
    :goto_0
    move-object v4, v3

    if-nez v4, :cond_0

    .line 2511
    .line 2521
    :goto_1
    return-void

    .line 2506
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 2507
    const-string/jumbo v4, "Form"

    const-string/jumbo v5, "AddMenuItemWithIcon: "

    move-object v6, v2

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    .line 2513
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->customMenu:Landroid/view/Menu;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v8, v0

    move-object v9, v3

    move-object v10, v1

    invoke-direct {v8, v9, v10}, Lcom/google/appinventor/components/runtime/Form;->menuIconWithText(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v4, v5, v6, v7, v8}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v4

    .line 2514
    new-instance v5, Lcom/google/appinventor/components/runtime/Form$4;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/google/appinventor/components/runtime/Form$4;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v4

    .line 2521
    :cond_1
    goto :goto_1
.end method

.method public AddTitleBarIcon(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Add a new action icon to the TitleBar. You will see a toast message on a long click with your choosen name. Add this block to the \"MenuInitialize\" event."
    .end annotation

    .prologue
    .line 2861
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const/4 v5, 0x0

    move-object v3, v5

    .line 2863
    move-object v5, v0

    move-object v6, v1

    :try_start_0
    invoke-static {v5, v6}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    move-object v3, v5

    .line 2866
    .line 2868
    :goto_0
    move-object v5, v3

    if-nez v5, :cond_0

    .line 2869
    .line 2887
    :goto_1
    return-void

    .line 2864
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 2865
    const-string/jumbo v5, "Form"

    const-string/jumbo v6, "AddTitleBarIcon: "

    move-object v7, v4

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto :goto_0

    .line 2872
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Form;->customActionBarIcon:Landroid/view/Menu;

    if-eqz v5, :cond_1

    .line 2873
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Form;->customActionBarIcon:Landroid/view/Menu;

    .line 2874
    invoke-interface {v5}, Landroid/view/Menu;->size()I

    move-result v5

    .line 2875
    const/4 v6, 0x3

    if-ge v5, v6, :cond_1

    .line 2876
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Form;->customActionBarIcon:Landroid/view/Menu;

    const/4 v6, 0x0

    const v7, 0x16f4f51

    const/4 v8, 0x0

    move-object v9, v2

    invoke-interface {v5, v6, v7, v8, v9}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v5

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    .line 2877
    move-object v4, v6

    const/4 v6, 0x2

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 2878
    move-object v5, v4

    move-object v6, v3

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v5

    .line 2879
    move-object v5, v4

    new-instance v6, Lcom/google/appinventor/components/runtime/Form$5;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    invoke-direct {v7, v8, v9, v10}, Lcom/google/appinventor/components/runtime/Form$5;-><init>(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v5

    .line 2887
    :cond_1
    goto :goto_1
.end method

.method public AlignHorizontal()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/Options;
        value = Lcom/google/appinventor/components/common/HorizontalAlignment;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "A number that encodes how contents of the screen are aligned  horizontally. The choices are: 1 = left aligned, 3 = horizontally centered,  2 = right aligned."
    .end annotation

    .prologue
    .line 1678
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->horizontalAlignment:Lcom/google/appinventor/components/common/HorizontalAlignment;

    invoke-virtual {v1}, Lcom/google/appinventor/components/common/HorizontalAlignment;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public AlignHorizontal(I)V
    .locals 12
    .param p1    # I
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/HorizontalAlignment;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "horizontal_alignment"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 1695
    move-object v0, p0

    move v1, p1

    move v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lcom/google/appinventor/components/common/HorizontalAlignment;->fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/HorizontalAlignment;

    move-result-object v3

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    .line 1696
    move-object v2, v4

    if-nez v3, :cond_0

    .line 1697
    move-object v3, v0

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    const-string/jumbo v5, "HorizontalAlignment"

    const/16 v6, 0x579

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move v10, v1

    .line 1698
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    .line 1697
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1699
    .line 1702
    :goto_0
    return-void

    .line 1701
    :cond_0
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Form;->AlignHorizontalAbstract(Lcom/google/appinventor/components/common/HorizontalAlignment;)V

    .line 1702
    goto :goto_0
.end method

.method public AlignHorizontalAbstract()Lcom/google/appinventor/components/common/HorizontalAlignment;
    .locals 2

    .prologue
    .line 1710
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->horizontalAlignment:Lcom/google/appinventor/components/common/HorizontalAlignment;

    move-object v0, v1

    return-object v0
.end method

.method public AlignHorizontalAbstract(Lcom/google/appinventor/components/common/HorizontalAlignment;)V
    .locals 4

    .prologue
    .line 1719
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->alignmentSetter:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->setHorizontalAlignment(Lcom/google/appinventor/components/common/HorizontalAlignment;)V

    .line 1720
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Form;->horizontalAlignment:Lcom/google/appinventor/components/common/HorizontalAlignment;

    .line 1721
    return-void
.end method

.method public AlignVertical()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/Options;
        value = Lcom/google/appinventor/components/common/VerticalAlignment;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "A number that encodes how the contents of the arrangement are aligned vertically. The choices are: 1 = aligned at the top, 2 = vertically centered, 3 = aligned at the bottom. Vertical alignment has no effect if the screen is scrollable."
    .end annotation

    .prologue
    .line 1734
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->AlignVerticalAbstract()Lcom/google/appinventor/components/common/VerticalAlignment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/appinventor/components/common/VerticalAlignment;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public AlignVertical(I)V
    .locals 12
    .param p1    # I
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/VerticalAlignment;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "vertical_alignment"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 1753
    move-object v0, p0

    move v1, p1

    move v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lcom/google/appinventor/components/common/VerticalAlignment;->fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/VerticalAlignment;

    move-result-object v3

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    .line 1754
    move-object v2, v4

    if-nez v3, :cond_0

    .line 1755
    move-object v3, v0

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    const-string/jumbo v5, "VerticalAlignment"

    const/16 v6, 0x57a

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move v10, v1

    .line 1756
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    .line 1755
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1757
    .line 1760
    :goto_0
    return-void

    .line 1759
    :cond_0
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Form;->AlignVerticalAbstract(Lcom/google/appinventor/components/common/VerticalAlignment;)V

    .line 1760
    goto :goto_0
.end method

.method public AlignVerticalAbstract()Lcom/google/appinventor/components/common/VerticalAlignment;
    .locals 2

    .prologue
    .line 1768
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->verticalAlignment:Lcom/google/appinventor/components/common/VerticalAlignment;

    move-object v0, v1

    return-object v0
.end method

.method public AlignVerticalAbstract(Lcom/google/appinventor/components/common/VerticalAlignment;)V
    .locals 4

    .prologue
    .line 1777
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->alignmentSetter:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->setVerticalAlignment(Lcom/google/appinventor/components/common/VerticalAlignment;)V

    .line 1778
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Form;->verticalAlignment:Lcom/google/appinventor/components/common/VerticalAlignment;

    .line 1779
    return-void
.end method

.method public AppId(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 1487
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Form;->appId:Ljava/lang/String;

    .line 1488
    return-void
.end method

.method public AppName(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "This is the display name of the installed application in the phone.If the AppName is blank, it will be set to the name of the project when the project is built."
        userVisible = false
    .end annotation

    .prologue
    .line 2037
    return-void
.end method

.method public ArePermissionsGranted()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns true if ALL needed app permissions were granted, else false."
    .end annotation

    .prologue
    .line 3312
    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/PermissionUtil;->arePermissionsGranted(Landroid/content/Context;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public AskForPermission(Ljava/lang/String;)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/Permission;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 3599
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3600
    const-string/jumbo v2, "android.permission."

    move-object v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 3602
    :cond_0
    move-object v2, v0

    move-object v3, v1

    new-instance v4, Lcom/google/appinventor/components/runtime/Form$10;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/google/appinventor/components/runtime/Form$10;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    invoke-virtual {v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)V

    .line 3612
    return-void
.end method

.method public AskForPermissionAbstract(Lcom/google/appinventor/components/common/Permission;)V
    .locals 4

    .prologue
    .line 3621
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lcom/google/appinventor/components/common/Permission;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->AskForPermission(Ljava/lang/String;)V

    .line 3622
    return-void
.end method

.method public BackPressed()Z
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Device back button pressed."
    .end annotation

    .prologue
    .line 701
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "BackPressed"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public BackgroundColor()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 1372
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/Form;->backgroundColor:I

    move v0, v1

    return v0
.end method

.method public BackgroundColor(I)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 1384
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/Form;->backgroundColor:I

    .line 1386
    move-object v2, v0

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->setBackground(Landroid/view/View;)V

    .line 1387
    return-void
.end method

.method public BackgroundImage()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The screen background image."
    .end annotation

    .prologue
    .line 1398
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->backgroundImagePath:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public BackgroundImage(Ljava/lang/String;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Asset;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "image_asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The screen background image."
    .end annotation

    .prologue
    .line 1413
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    if-nez v3, :cond_0

    const-string/jumbo v3, ""

    :goto_0
    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Form;->backgroundImagePath:Ljava/lang/String;

    .line 1416
    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->backgroundImagePath:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Form;->backgroundDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1420
    .line 1421
    :goto_1
    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->setBackground(Landroid/view/View;)V

    .line 1422
    return-void

    .line 1413
    :cond_0
    move-object v3, v1

    goto :goto_0

    .line 1418
    :catch_0
    move-exception v2

    const-string/jumbo v2, "Form"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "Unable to load "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->backgroundImagePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1419
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Form;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method public CanWriteSystemSettings()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns true if the app can write system settings, else it returns false. It will return true automatic for devices with android version below 6 (API 23)."
    .end annotation

    .prologue
    .line 3331
    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/PermissionUtil;->writeSystemSettings(Landroid/content/Context;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public CloseScreenAnimation()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/Options;
        value = Lcom/google/appinventor/components/common/ScreenAnimation;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The animation for closing current screen and returning  to the previous screen. Valid options are default, fade, zoom, slidehorizontal, slidevertical, and none"
    .end annotation

    .prologue
    .line 1847
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->closeAnimType:Lcom/google/appinventor/components/common/ScreenAnimation;

    if-eqz v1, :cond_0

    .line 1848
    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->CloseScreenAnimationAbstract()Lcom/google/appinventor/components/common/ScreenAnimation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/appinventor/components/common/ScreenAnimation;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 1850
    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public CloseScreenAnimation(Ljava/lang/String;)V
    .locals 12
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/ScreenAnimation;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "default"
        editorType = "screen_animation"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 1864
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    invoke-static {v3}, Lcom/google/appinventor/components/common/ScreenAnimation;->fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/ScreenAnimation;

    move-result-object v3

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    .line 1865
    move-object v2, v4

    if-nez v3, :cond_0

    .line 1866
    move-object v3, v0

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    const-string/jumbo v5, "Screen"

    const/16 v6, 0x389

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move-object v10, v1

    aput-object v10, v8, v9

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1868
    .line 1871
    :goto_0
    return-void

    .line 1870
    :cond_0
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Form;->CloseScreenAnimationAbstract(Lcom/google/appinventor/components/common/ScreenAnimation;)V

    .line 1871
    goto :goto_0
.end method

.method public CloseScreenAnimationAbstract()Lcom/google/appinventor/components/common/ScreenAnimation;
    .locals 2

    .prologue
    .line 1880
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->closeAnimType:Lcom/google/appinventor/components/common/ScreenAnimation;

    move-object v0, v1

    return-object v0
.end method

.method public CloseScreenAnimationAbstract(Lcom/google/appinventor/components/common/ScreenAnimation;)V
    .locals 4

    .prologue
    .line 1891
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Form;->closeAnimType:Lcom/google/appinventor/components/common/ScreenAnimation;

    .line 1892
    return-void
.end method

.method public DefaultFileScope()Lcom/google/appinventor/components/common/FileScope;
    .locals 2

    .prologue
    .line 1438
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->defaultFileScope:Lcom/google/appinventor/components/common/FileScope;

    move-object v0, v1

    return-object v0
.end method

.method public DefaultFileScope(Lcom/google/appinventor/components/common/FileScope;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "App"
        editorType = "file_scope"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .prologue
    .line 1434
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Form;->defaultFileScope:Lcom/google/appinventor/components/common/FileScope;

    .line 1435
    return-void
.end method

.method public DrawerArrowIconColor()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Get the drawer arrow icon color."
    .end annotation

    .prologue
    .line 3905
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/Form;->drawerArrowIconColor:I

    move v0, v1

    return v0
.end method

.method public DrawerArrowIconColor(I)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the drawer arrow icon color."
    .end annotation

    .prologue
    .line 3893
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Form;->actionBarDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    if-eqz v3, :cond_0

    .line 3895
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Form;->actionBarDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    invoke-virtual {v3}, Landroidx/appcompat/app/ActionBarDrawerToggle;->getDrawerArrowDrawable()Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->setColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3898
    .line 3900
    :cond_0
    :goto_0
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/google/appinventor/components/runtime/Form;->drawerArrowIconColor:I

    .line 3901
    return-void

    .line 3896
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 3897
    const-string/jumbo v3, "Form"

    move-object v4, v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto :goto_0
.end method

.method public ErrorOccurred(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;ILjava/lang/String;)V
    .locals 13
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event raised when an error occurs. Only some errors will raise this condition.  For those errors, the system will show a notification by default.  You can use this event handler to prescribe an error behavior different than the default."
    .end annotation

    .prologue
    .line 1083
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    .line 1084
    const-string/jumbo v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 1085
    const-string/jumbo v6, "Form"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const-string/jumbo v9, "Form "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v8, v0

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " ErrorOccurred, errorNumber = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", componentType = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", functionName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", messages = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 1088
    move-object v6, v5

    move-object v7, v2

    move v8, v3

    move-object v9, v4

    move-object v10, v0

    invoke-static {v6, v7, v8, v9, v10}, Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil;->logError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/appinventor/components/runtime/Form;)V

    .line 1089
    move-object v6, v0

    const-string/jumbo v7, "ErrorOccurred"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v1

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x1

    move-object v11, v2

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x2

    move v11, v3

    .line 1090
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x3

    move-object v11, v4

    aput-object v11, v9, v10

    .line 1089
    invoke-static {v6, v7, v8}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    sget-boolean v6, Lcom/google/appinventor/components/runtime/Form;->screenInitialized:Z

    if-eqz v6, :cond_0

    .line 1098
    :try_start_0
    new-instance v6, Lcom/google/appinventor/components/runtime/Notifier;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v0

    invoke-direct {v7, v8}, Lcom/google/appinventor/components/runtime/Notifier;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const-string/jumbo v9, "Error "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/appinventor/components/runtime/Notifier;->ShowAlert(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1101
    .line 1103
    :goto_0
    return-void

    .line 1099
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 1100
    const-string/jumbo v6, "Form"

    move-object v7, v1

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 1103
    :cond_0
    goto :goto_0
.end method

.method public ErrorOccurredDialog(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15

    .prologue
    .line 1108
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object v8, v1

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    .line 1109
    const-string/jumbo v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 1110
    const-string/jumbo v8, "Form"

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const-string/jumbo v11, "Form "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v10, v0

    iget-object v10, v10, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " ErrorOccurred, errorNumber = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", componentType = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", functionName = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", messages = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 1113
    move-object v8, v0

    const-string/jumbo v9, "ErrorOccurred"

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x0

    move-object v13, v1

    aput-object v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x1

    move-object v13, v2

    aput-object v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x2

    move v13, v3

    .line 1114
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x3

    move-object v13, v4

    aput-object v13, v11, v12

    .line 1113
    invoke-static {v8, v9, v10}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    sget-boolean v8, Lcom/google/appinventor/components/runtime/Form;->screenInitialized:Z

    if-eqz v8, :cond_0

    .line 1122
    :try_start_0
    new-instance v8, Lcom/google/appinventor/components/runtime/Notifier;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v0

    invoke-direct {v9, v10}, Lcom/google/appinventor/components/runtime/Notifier;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const-string/jumbo v11, "Error "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v10, v5

    move-object v11, v6

    invoke-virtual {v8, v9, v10, v11}, Lcom/google/appinventor/components/runtime/Notifier;->ShowMessageDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1125
    .line 1127
    :goto_0
    return-void

    .line 1123
    :catch_0
    move-exception v8

    move-object v1, v8

    .line 1124
    const-string/jumbo v8, "Form"

    move-object v9, v1

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 1127
    :cond_0
    goto :goto_0
.end method

.method public GotReceivedShared(ILjava/lang/String;)V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect that a user shared content to your app throw the sharing dialog of any other app. Type stand for integer. 0 = nothing shared, 1 = audio, 2 = image, 3 = text or 4 = video"
    .end annotation

    .prologue
    .line 3850
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    const-string/jumbo v4, "GotReceivedShared"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move v8, v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x1

    move-object v8, v2

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v3

    .line 3851
    return-void
.end method

.method public Height()I
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Screen height (y-size)."
    .end annotation

    .prologue
    .line 2059
    move-object v0, p0

    const-string/jumbo v1, "Form"

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "Form.Height = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    iget v3, v3, Lcom/google/appinventor/components/runtime/Form;->formHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 2060
    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/Form;->formHeight:I

    move v0, v1

    return v0
.end method

.method public HideKeyboard()V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Hide the keyboard."
    .end annotation

    .prologue
    .line 2843
    move-object v0, p0

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Form;->getCurrentFocus()Landroid/view/View;

    move-result-object v3

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    .line 2844
    move-object v1, v4

    if-nez v3, :cond_0

    .line 2845
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    move-object v1, v3

    .line 2847
    :cond_0
    move-object v3, v0

    const-string/jumbo v4, "input_method"

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Form;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    move-object v2, v3

    .line 2848
    sget-boolean v3, Lcom/google/appinventor/components/runtime/Form;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    move-object v3, v2

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 2849
    :cond_1
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    move-result v3

    .line 2850
    return-void
.end method

.method public HighQuality(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 3493
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/Form;->highQuality:Z

    .line 3494
    return-void
.end method

.method public HighQuality()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If set to true, pictures will be loaded in high quality."
    .end annotation

    .prologue
    .line 3499
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/Form;->highQuality:Z

    move v0, v1

    return v0
.end method

.method public Icon(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "image_asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 1904
    return-void
.end method

.method public Initialize()V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Screen starting"
    .end annotation

    .prologue
    .line 1020
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->androidUIHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/appinventor/components/runtime/Form$12;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/Form$12;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v1

    .line 1063
    return-void
.end method

.method public IsCompanion()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "This block will return true, if you are running your project current in the companion application. Else it will return false."
    .end annotation

    .prologue
    .line 3506
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/Form;->isCompanion:Z

    move v0, v1

    return v0
.end method

.method public IsSideMenuAdded()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns true if a side menu is added to the screen."
    .end annotation

    .prologue
    .line 3169
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->actionBarDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public IsSideMenuOpen()Z
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns true if a side menu is current open. Else it will return false."
    .end annotation

    .prologue
    .line 3160
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz v1, :cond_0

    .line 3161
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const v2, 0x800003

    invoke-virtual {v1, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v1

    move v0, v1

    .line 3163
    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public KeepScreenOn(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Keep the device\'s screen turned on and bright."
    .end annotation

    .prologue
    .line 3512
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/Form;->keepScreenOn:Z

    .line 3513
    move v2, v1

    if-eqz v2, :cond_0

    .line 3514
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 3518
    :goto_0
    return-void

    .line 3516
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 3518
    goto :goto_0
.end method

.method public KeepScreenOn()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns true if keep screen on is set to enabled, else it returns false."
    .end annotation

    .prologue
    .line 3522
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/Form;->keepScreenOn:Z

    move v0, v1

    return v0
.end method

.method public KeyboardVisiblityChanged(Z)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event will be invoked if the keyboard was visible or invisible."
    .end annotation

    .prologue
    .line 684
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const-string/jumbo v3, "KeyboardVisiblityChanged"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move v7, v1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v2

    .line 685
    return-void
.end method

.method public LockSideMenu()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Use this block to lock the side menu. This means the user can not open the side menu until the side menu  unlock block is used."
    .end annotation

    .prologue
    .line 3029
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->actionBarDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3030
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/appinventor/components/runtime/Form;->lockedMenu:Z

    .line 3031
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(I)V

    .line 3032
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->actionBarDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/ActionBarDrawerToggle;->setDrawerIndicatorEnabled(Z)V

    .line 3033
    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 3035
    :cond_0
    return-void
.end method

.method public MenuInitialize()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect when the menu has loaded. Set here your blocks like TitleBarIcon or AddMenuItem."
    .end annotation

    .prologue
    .line 2457
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "MenuInitialize"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 2458
    return-void
.end method

.method public MenuItemSelected(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect when a menu item has been selected."
    .end annotation

    .prologue
    .line 2534
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "MenuItemSelected"

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

    .line 2535
    return-void
.end method

.method public MinSdk(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "21"
        editorType = "min_sdk"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 3308
    return-void
.end method

.method public MoveTaskToBack()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Move task to back. That means it will minimize your current app."
    .end annotation

    .prologue
    .line 2757
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->moveTaskToBack(Z)Z

    move-result v1

    .line 2758
    return-void
.end method

.method public NavigationBarColor()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 2794
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getNavigationBarColor()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public NavigationBarColor(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set navigation bar color. This will work starting from API Level 21 (Android Lollipop)"
    .end annotation

    .prologue
    .line 2789
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/KodularHelper;->setNavigationBarColor(Landroid/app/Activity;I)V

    .line 2790
    return-void
.end method

.method public NavigationBarLightIcons(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "This option tells the system to use dark navigation bar icons, useful for lighter colored navigation bars. Works only for devices with API >= 26."
    .end annotation

    .prologue
    .line 3209
    move-object v0, p0

    move v1, p1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-ge v2, v3, :cond_0

    .line 3210
    const-string/jumbo v2, "Form"

    const-string/jumbo v3, "Sorry, navigation bar light icons is not available for API Level < 26"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 3223
    :goto_0
    return-void

    .line 3212
    :cond_0
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/Form;->navigationBarLight:Z

    .line 3213
    move v2, v1

    if-eqz v2, :cond_1

    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->StatusbarLightIcons()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3214
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const v3, -0x7fffdff0

    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 3215
    :cond_1
    move v2, v1

    if-eqz v2, :cond_2

    .line 3216
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const v3, -0x7ffffff0

    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 3217
    :cond_2
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->StatusbarLightIcons()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3218
    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->StatusbarLightIcons(Z)V

    goto :goto_0

    .line 3220
    :cond_3
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 3223
    goto :goto_0
.end method

.method public NavigationBarLightIcons()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 3227
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/Form;->navigationBarLight:Z

    move v0, v1

    return v0
.end method

.method public NavigationIconColor()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Get the navigation icon color."
    .end annotation

    .prologue
    .line 3888
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/Form;->navigationIconColor:I

    move v0, v1

    return v0
.end method

.method public NavigationIconColor(I)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the navigation icon color."
    .end annotation

    .prologue
    .line 3874
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Form;->toolbar:Landroidx/appcompat/widget/Toolbar;

    if-eqz v3, :cond_0

    .line 3875
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Form;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v3}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3877
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Form;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v3}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move v4, v1

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3880
    .line 3883
    :cond_0
    :goto_0
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/google/appinventor/components/runtime/Form;->navigationIconColor:I

    .line 3884
    return-void

    .line 3878
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 3879
    const-string/jumbo v3, "Form"

    move-object v4, v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto :goto_0
.end method

.method public OnAppPause()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The system calls this method as the first indication that the user is leaving your activity (though it does not always mean the activity is being destroyed)."
    .end annotation

    .prologue
    .line 2942
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "OnAppPause"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 2943
    return-void
.end method

.method public OnAppResume()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "When the activity enters the Resumed state, it comes to the foreground, and then the system invokes this event."
    .end annotation

    .prologue
    .line 2936
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "OnAppResume"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 2937
    return-void
.end method

.method public OnAppStop()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "When your activity is no longer visible to the user, it has entered the Stopped state, and the system invokes this event."
    .end annotation

    .prologue
    .line 2948
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "OnAppStop"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 2949
    return-void
.end method

.method public OpenAppSettings()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Opens the settings screen of the app. Useful if \'Are Permissions Granted\' has returned false."
    .end annotation

    .prologue
    .line 3318
    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/PermissionUtil;->appSettings(Landroid/content/Context;)V

    .line 3319
    return-void
.end method

.method public OpenScreenAnimation()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/Options;
        value = Lcom/google/appinventor/components/common/ScreenAnimation;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The animation for switching to another screen. Valid options are default, fade, zoom, slidehorizontal, slidevertical, and none"
    .end annotation

    .prologue
    .line 1791
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->openAnimType:Lcom/google/appinventor/components/common/ScreenAnimation;

    if-eqz v1, :cond_0

    .line 1792
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->openAnimType:Lcom/google/appinventor/components/common/ScreenAnimation;

    invoke-virtual {v1}, Lcom/google/appinventor/components/common/ScreenAnimation;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 1794
    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public OpenScreenAnimation(Ljava/lang/String;)V
    .locals 12
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/ScreenAnimation;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "default"
        editorType = "screen_animation"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 1807
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    invoke-static {v3}, Lcom/google/appinventor/components/common/ScreenAnimation;->fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/ScreenAnimation;

    move-result-object v3

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    .line 1808
    move-object v2, v4

    if-nez v3, :cond_0

    .line 1809
    move-object v3, v0

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    const-string/jumbo v5, "Screen"

    const/16 v6, 0x389

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move-object v10, v1

    aput-object v10, v8, v9

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1811
    .line 1814
    :goto_0
    return-void

    .line 1813
    :cond_0
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Form;->OpenScreenAnimationAbstract(Lcom/google/appinventor/components/common/ScreenAnimation;)V

    .line 1814
    goto :goto_0
.end method

.method public OpenScreenAnimationAbstract()Lcom/google/appinventor/components/common/ScreenAnimation;
    .locals 2

    .prologue
    .line 1823
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->openAnimType:Lcom/google/appinventor/components/common/ScreenAnimation;

    move-object v0, v1

    return-object v0
.end method

.method public OpenScreenAnimationAbstract(Lcom/google/appinventor/components/common/ScreenAnimation;)V
    .locals 4

    .prologue
    .line 1833
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Form;->openAnimType:Lcom/google/appinventor/components/common/ScreenAnimation;

    .line 1834
    return-void
.end method

.method public OpenSystemWriteSettings()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Opens the app\'s system settings page. This works only for devices with android 6+."
    .end annotation

    .prologue
    .line 3324
    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/PermissionUtil;->appSystemSettings(Landroid/content/Context;)V

    .line 3325
    return-void
.end method

.method public OptionsMenuIconColor()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Get the options menu icon color."
    .end annotation

    .prologue
    .line 3869
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/Form;->optionsMenuIconColor:I

    move v0, v1

    return v0
.end method

.method public OptionsMenuIconColor(I)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the options menu icon color."
    .end annotation

    .prologue
    .line 3855
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Form;->toolbar:Landroidx/appcompat/widget/Toolbar;

    if-eqz v3, :cond_0

    .line 3856
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Form;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v3}, Landroidx/appcompat/widget/Toolbar;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3858
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Form;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v3}, Landroidx/appcompat/widget/Toolbar;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move v4, v1

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3861
    .line 3864
    :cond_0
    :goto_0
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/google/appinventor/components/runtime/Form;->optionsMenuIconColor:I

    .line 3865
    return-void

    .line 3859
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 3860
    const-string/jumbo v3, "Form"

    move-object v4, v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto :goto_0
.end method

.method public OtherScreenClosed(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event raised when another screen has closed and control has returned to this screen."
    .end annotation

    .prologue
    .line 2224
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const-string/jumbo v3, "Form"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string/jumbo v6, "Form "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " OtherScreenClosed, otherScreenName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v2

    .line 2225
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2224
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 2226
    move-object v3, v0

    const-string/jumbo v4, "OtherScreenClosed"

    const/4 v5, 0x2

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

    invoke-static {v3, v4, v5}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v3

    .line 2227
    return-void
.end method

.method public PackageName(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "app_package_name"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set a custom PackageName for the app. Min 8 chars, max 35 chars, min 3 words, max 5 words, no special chars, only ASCII a-z and dots for separators"
        userVisible = false
    .end annotation

    .prologue
    .line 1948
    return-void
.end method

.method public PermissionDenied(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/Permission;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 3569
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object v4, v3

    const-string/jumbo v5, "android.permission."

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3571
    move-object v4, v3

    const-string/jumbo v5, "android.permission."

    const-string/jumbo v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 3573
    :cond_0
    move-object v4, v0

    const-string/jumbo v5, "PermissionDenied"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/4 v8, 0x0

    move-object v9, v1

    aput-object v9, v7, v8

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/4 v8, 0x1

    move-object v9, v2

    aput-object v9, v7, v8

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/4 v8, 0x2

    move-object v9, v3

    aput-object v9, v7, v8

    invoke-static {v4, v5, v6}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 3574
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    const/16 v7, 0x38c

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v3

    aput-object v11, v9, v10

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 3576
    :cond_1
    return-void
.end method

.method public PermissionGranted(Ljava/lang/String;)V
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/Permission;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 3586
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    const-string/jumbo v3, "android.permission."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3588
    move-object v2, v1

    const-string/jumbo v3, "android.permission."

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 3590
    :cond_0
    move-object v2, v0

    const-string/jumbo v3, "PermissionGranted"

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

    .line 3591
    return-void
.end method

.method public PrimaryColor()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 3248
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/Form;->primaryColor:I

    move v0, v1

    return v0
.end method

.method public PrimaryColor(I)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF3F51B5"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "This is the primary color used for Material UI elements, such as the ActionBar."
        userVisible = false
    .end annotation

    .prologue
    .line 3235
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v4

    move-object v2, v4

    .line 3236
    move v4, v1

    if-nez v4, :cond_1

    sget v4, Lcom/google/appinventor/components/runtime/Form;->DEFAULT_PRIMARY_COLOR:I

    :goto_0
    move v3, v4

    .line 3237
    move-object v4, v0

    move v5, v3

    iput v5, v4, Lcom/google/appinventor/components/runtime/Form;->titleBarColor:I

    .line 3238
    move-object v4, v2

    if-eqz v4, :cond_0

    move v4, v3

    move-object v5, v0

    iget v5, v5, Lcom/google/appinventor/components/runtime/Form;->primaryColor:I

    if-eq v4, v5, :cond_0

    .line 3240
    move-object v4, v0

    move v5, v3

    iput v5, v4, Lcom/google/appinventor/components/runtime/Form;->primaryColor:I

    .line 3241
    move-object v4, v0

    move v5, v1

    iput v5, v4, Lcom/google/appinventor/components/runtime/Form;->titleBarColor:I

    .line 3242
    move-object v4, v2

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move v7, v1

    invoke-direct {v6, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v5}, Landroidx/appcompat/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3244
    :cond_0
    return-void

    .line 3236
    :cond_1
    move v4, v1

    goto :goto_0
.end method

.method public PrimaryColorDark()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 3261
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/Form;->primaryColorDark:I

    move v0, v1

    return v0
.end method

.method public PrimaryColorDark(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF303F9F"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "This is the primary color used for darker elements in Material UI."
        userVisible = false
    .end annotation

    .prologue
    .line 3256
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/Form;->primaryColorDark:I

    .line 3257
    return-void
.end method

.method public RTLSupport(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 3840
    return-void
.end method

.method public ReceiveSharedText(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "receive_types"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 3846
    return-void
.end method

.method public RemoveSideMenu()V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Remove a first created side menu. This block will be usefull if you need to update a side menu dynamically. You can use this block too to test a side menu in the companion. Add then this block above of the \'Side Menu\' block."
    .end annotation

    .prologue
    .line 3010
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->actionBarDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3012
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/drawerlayout/widget/DrawerLayout;->removeViewAt(I)V

    .line 3013
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->actionBarDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/ActionBarDrawerToggle;->setDrawerIndicatorEnabled(Z)V

    .line 3014
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 3015
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Form;->layoutBackup:Ljava/lang/Object;

    .line 3016
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Form;->actionBarDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    .line 3018
    move-object v2, v0

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    iget v3, v3, Lcom/google/appinventor/components/runtime/Form;->toolbarIconColor:I

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->UpdateTitlebarItemColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3021
    .line 3023
    :goto_0
    return-void

    .line 3019
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 3020
    const-string/jumbo v2, "Form"

    move-object v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 3023
    :cond_0
    goto :goto_0
.end method

.method public RemoveTitleBarIcons()V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Remove all added action icons from the TitleBar."
    .end annotation

    .prologue
    .line 2896
    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->customActionBarIcon:Landroid/view/Menu;

    if-eqz v4, :cond_0

    .line 2897
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->customActionBarIcon:Landroid/view/Menu;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    .line 2898
    move-object v1, v5

    invoke-interface {v4}, Landroid/view/Menu;->size()I

    move-result v4

    move v2, v4

    .line 2899
    const/4 v4, 0x0

    move v3, v4

    :goto_0
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_0

    .line 2900
    move-object v4, v1

    const v5, 0x16f4f51

    invoke-interface {v4, v5}, Landroid/view/Menu;->removeItem(I)V

    .line 2899
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2903
    :cond_0
    return-void
.end method

.method ReplayFormOrientation()V
    .locals 7

    .prologue
    .line 813
    move-object v0, p0

    const-string/jumbo v4, "Form"

    const-string/jumbo v5, "ReplayFormOrientation()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 814
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->dimChanges:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    move-object v1, v4

    .line 815
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->dimChanges:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 816
    const/4 v4, 0x0

    move v2, v4

    :goto_0
    move v4, v2

    move-object v5, v1

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 818
    move-object v4, v1

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    .line 819
    move-object v3, v5

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;

    sget-object v5, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;->HEIGHT:Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;

    if-ne v4, v5, :cond_0

    .line 820
    move-object v4, v3

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    move-object v5, v3

    iget v5, v5, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord;->ZXVyhZW2wwbAysjXrMReFP00vcRkftFV6dFiSCOUB0OBlMJVjuhF9XlRGX7w6PdR:I

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Height(I)V

    .line 816
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 822
    :cond_0
    move-object v4, v3

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    move-object v5, v3

    iget v5, v5, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord;->ZXVyhZW2wwbAysjXrMReFP00vcRkftFV6dFiSCOUB0OBlMJVjuhF9XlRGX7w6PdR:I

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Width(I)V

    goto :goto_1

    .line 825
    :cond_1
    return-void
.end method

.method public ResetMenu()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Reset the menu back to its default"
    .end annotation

    .prologue
    .line 2539
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->customMenu:Landroid/view/Menu;

    if-eqz v1, :cond_0

    .line 2540
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->customMenu:Landroid/view/Menu;

    invoke-interface {v1}, Landroid/view/Menu;->clear()V

    .line 2541
    move-object v1, v0

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->customMenu:Landroid/view/Menu;

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->addAboutInfoToMenu(Landroid/view/Menu;)V

    .line 2542
    move-object v1, v0

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->customMenu:Landroid/view/Menu;

    invoke-super {v1, v2}, Landroidx/appcompat/app/AppCompatActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    .line 2544
    :cond_0
    return-void
.end method

.method public ScreenOrientation()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/Options;
        value = Lcom/google/appinventor/components/common/ScreenOrientation;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The requested screen orientation, specified as a text value.  Commonly used values are landscape, portrait, sensor, user and unspecified.  See the Android developer documentation for ActivityInfo.Screen_Orientation for the complete list of possible settings."
    .end annotation

    .prologue
    .line 1601
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->ScreenOrientationAbstract()Lcom/google/appinventor/components/common/ScreenOrientation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/appinventor/components/common/ScreenOrientation;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public ScreenOrientation(Ljava/lang/String;)V
    .locals 12
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/ScreenOrientation;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "unspecified"
        editorType = "screen_orientation"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 1659
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    invoke-static {v3}, Lcom/google/appinventor/components/common/ScreenOrientation;->fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/ScreenOrientation;

    move-result-object v3

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    .line 1660
    move-object v2, v4

    if-nez v3, :cond_0

    .line 1661
    move-object v3, v0

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    const-string/jumbo v5, "ScreenOrientation"

    const/16 v6, 0x385

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move-object v10, v1

    aput-object v10, v8, v9

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1663
    .line 1666
    :goto_0
    return-void

    .line 1665
    :cond_0
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Form;->ScreenOrientationAbstract(Lcom/google/appinventor/components/common/ScreenOrientation;)V

    .line 1666
    goto :goto_0
.end method

.method public ScreenOrientationAbstract()Lcom/google/appinventor/components/common/ScreenOrientation;
    .locals 2

    .prologue
    .line 1609
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->getRequestedOrientation()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1635
    sget-object v1, Lcom/google/appinventor/components/common/ScreenOrientation;->Unspecified:Lcom/google/appinventor/components/common/ScreenOrientation;

    move-object v0, v1

    :goto_0
    return-object v0

    .line 1611
    :pswitch_0
    sget-object v1, Lcom/google/appinventor/components/common/ScreenOrientation;->Behind:Lcom/google/appinventor/components/common/ScreenOrientation;

    move-object v0, v1

    goto :goto_0

    .line 1613
    :pswitch_1
    sget-object v1, Lcom/google/appinventor/components/common/ScreenOrientation;->Landscape:Lcom/google/appinventor/components/common/ScreenOrientation;

    move-object v0, v1

    goto :goto_0

    .line 1615
    :pswitch_2
    sget-object v1, Lcom/google/appinventor/components/common/ScreenOrientation;->NoSensor:Lcom/google/appinventor/components/common/ScreenOrientation;

    move-object v0, v1

    goto :goto_0

    .line 1617
    :pswitch_3
    sget-object v1, Lcom/google/appinventor/components/common/ScreenOrientation;->Portrait:Lcom/google/appinventor/components/common/ScreenOrientation;

    move-object v0, v1

    goto :goto_0

    .line 1619
    :pswitch_4
    sget-object v1, Lcom/google/appinventor/components/common/ScreenOrientation;->Sensor:Lcom/google/appinventor/components/common/ScreenOrientation;

    move-object v0, v1

    goto :goto_0

    .line 1621
    :pswitch_5
    sget-object v1, Lcom/google/appinventor/components/common/ScreenOrientation;->Unspecified:Lcom/google/appinventor/components/common/ScreenOrientation;

    move-object v0, v1

    goto :goto_0

    .line 1623
    :pswitch_6
    sget-object v1, Lcom/google/appinventor/components/common/ScreenOrientation;->User:Lcom/google/appinventor/components/common/ScreenOrientation;

    move-object v0, v1

    goto :goto_0

    .line 1625
    :pswitch_7
    sget-object v1, Lcom/google/appinventor/components/common/ScreenOrientation;->FullSensor:Lcom/google/appinventor/components/common/ScreenOrientation;

    move-object v0, v1

    goto :goto_0

    .line 1627
    :pswitch_8
    sget-object v1, Lcom/google/appinventor/components/common/ScreenOrientation;->ReverseLandscape:Lcom/google/appinventor/components/common/ScreenOrientation;

    move-object v0, v1

    goto :goto_0

    .line 1629
    :pswitch_9
    sget-object v1, Lcom/google/appinventor/components/common/ScreenOrientation;->ReversePortrait:Lcom/google/appinventor/components/common/ScreenOrientation;

    move-object v0, v1

    goto :goto_0

    .line 1631
    :pswitch_a
    sget-object v1, Lcom/google/appinventor/components/common/ScreenOrientation;->SensorLandscape:Lcom/google/appinventor/components/common/ScreenOrientation;

    move-object v0, v1

    goto :goto_0

    .line 1633
    :pswitch_b
    sget-object v1, Lcom/google/appinventor/components/common/ScreenOrientation;->SensorPortrait:Lcom/google/appinventor/components/common/ScreenOrientation;

    move-object v0, v1

    goto :goto_0

    .line 1609
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_5
        :pswitch_1
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_a
        :pswitch_b
        :pswitch_8
        :pswitch_9
        :pswitch_7
    .end packed-switch
.end method

.method public ScreenOrientationAbstract(Lcom/google/appinventor/components/common/ScreenOrientation;)V
    .locals 4

    .prologue
    .line 1644
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-virtual {v2}, Lcom/google/appinventor/components/common/ScreenOrientation;->getOrientationConstant()I

    move-result v2

    move v1, v2

    .line 1645
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->setRequestedOrientation(I)V

    .line 1646
    return-void
.end method

.method public ScreenOrientationChanged()V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Screen orientation changed"
    .end annotation

    .prologue
    .line 1067
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->onOrientationChangeListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v2

    :goto_0
    move-object v2, v1

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/appinventor/components/runtime/OnOrientationChangeListener;

    .line 1068
    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/OnOrientationChangeListener;->onOrientationChange()V

    .line 1069
    goto :goto_0

    .line 1070
    :cond_0
    move-object v2, v0

    const-string/jumbo v3, "ScreenOrientationChanged"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v2

    .line 1071
    return-void
.end method

.method public Scrollable(Z)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 1197
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/Form;->scrollable:Z

    move v3, v1

    if-ne v2, v3, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_0

    .line 1198
    .line 1212
    :goto_0
    return-void

    .line 1201
    :cond_0
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/Form;->scrollable:Z

    .line 1202
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/Form;->recomputeLayout()V

    .line 1205
    move-object v2, v0

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    iget-boolean v3, v3, Lcom/google/appinventor/components/runtime/Form;->showTitle:Z

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->TitleVisible(Z)V

    .line 1209
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->onOrientationChangeListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v2

    :goto_1
    move-object v2, v1

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/appinventor/components/runtime/OnOrientationChangeListener;

    .line 1210
    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/OnOrientationChangeListener;->onOrientationChange()V

    .line 1211
    goto :goto_1

    .line 1212
    :cond_1
    goto :goto_0
.end method

.method public Scrollable()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "When checked, there will be a vertical scrollbar on the screen, and the height of the application can exceed the physical height of the device. When unchecked, the application height is constrained to the height of the device."
    .end annotation

    .prologue
    .line 1185
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/Form;->scrollable:Z

    move v0, v1

    return v0
.end method

.method public ShowAboutApplication()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Show the dialog which shows when pressing the \"About This Application\" button in the menu."
    .end annotation

    .prologue
    .line 2588
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/Form;->showAboutApplicationNotification()V

    .line 2589
    return-void
.end method

.method public ShowKeyboard()V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Show the keyboard"
    .end annotation

    .prologue
    .line 2836
    move-object v0, p0

    move-object v2, v0

    const-string/jumbo v3, "input_method"

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    move-object v1, v2

    .line 2837
    sget-boolean v2, Lcom/google/appinventor/components/runtime/Form;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    move-object v2, v1

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 2838
    :cond_0
    move-object v2, v1

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 2839
    return-void
.end method

.method public ShowListsAsJson(Z)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If false, lists will be converted to strings using Lisp notation, i.e., as symbols separated by spaces, e.g., (a 1 b2 (c d). If true, lists will appear as in Json or Python, e.g.  [\"a\", 1, \"b\", 2, [\"c\", \"d\"]].  This property appears only in Screen 1, and the value for Screen 1 determines the behavior for all screens. The property defaults to \"false\" meaning that the App Inventor programmer must explicitly set it to \"true\" if JSON/Python syntax is desired. At some point in the future we will alter the system so that new projects are created with this property set to \"true\" by default. Existing projects will not be impacted. The App Inventor programmer can also set it back to \"false\" in newer projects if desired. "
        userVisible = false
    .end annotation

    .prologue
    .line 2016
    move-object v0, p0

    move v1, p1

    move v2, v1

    sput-boolean v2, Lcom/google/appinventor/components/runtime/Form;->showListsAsJson:Z

    .line 2017
    return-void
.end method

.method public ShowListsAsJson()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .prologue
    .line 2022
    move-object v0, p0

    sget-boolean v1, Lcom/google/appinventor/components/runtime/Form;->showListsAsJson:Z

    move v0, v1

    return v0
.end method

.method public ShowNavBar(Z)V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
        propertyType = "experimental"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 2969
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/Form;->showNavBar:Z

    .line 2970
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    .line 2972
    move-object v2, v4

    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/Form;->VisibilityHelper(Z)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 2973
    move-object v3, v2

    new-instance v4, Lcom/google/appinventor/components/runtime/Form$6;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    move-object v7, v2

    move v8, v1

    invoke-direct {v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/Form$6;-><init>(Lcom/google/appinventor/components/runtime/Form;Landroid/view/View;Z)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 2987
    return-void
.end method

.method public ShowNavBar()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Show/Hide Navigation Bar"
    .end annotation

    .prologue
    .line 2992
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/Form;->showNavBar:Z

    move v0, v1

    return v0
.end method

.method public ShowOptionsMenu(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 2954
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/Form;->showOptionsMenu:Z

    .line 2955
    return-void
.end method

.method public ShowStatusBar(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 1572
    move-object v0, p0

    move v1, p1

    move v2, v1

    move-object v3, v0

    iget-boolean v3, v3, Lcom/google/appinventor/components/runtime/Form;->showStatusBar:Z

    if-eq v2, v3, :cond_0

    .line 1573
    move v2, v1

    if-eqz v2, :cond_1

    .line 1574
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x800

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 1575
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x400

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 1580
    :goto_0
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/Form;->showStatusBar:Z

    .line 1582
    :cond_0
    return-void

    .line 1577
    :cond_1
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x400

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 1578
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x800

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method public ShowStatusBar()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The status bar is the topmost bar on the screen. This property reports whether the status bar is visible."
    .end annotation

    .prologue
    .line 1561
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/Form;->showStatusBar:Z

    move v0, v1

    return v0
.end method

.method public ShowTitlebarBackButton(Z)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If true it will show in the TitleBar a back button only if no side menu was added. If a side menu was added it will remove the \u2018hamburger\u2019-menu icon but the side menu can still be opened."
    .end annotation

    .prologue
    .line 2920
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/Form;->stateBackButton:Z

    .line 2921
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2922
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 2924
    :cond_0
    move-object v2, v0

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    iget v3, v3, Lcom/google/appinventor/components/runtime/Form;->toolbarIconColor:I

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->UpdateTitlebarItemColor(I)V

    .line 2925
    return-void
.end method

.method public ShowTitlebarBackButton()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Return the state of titlebar back button."
    .end annotation

    .prologue
    .line 2930
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/Form;->stateBackButton:Z

    move v0, v1

    return v0
.end method

.method public SideMenu(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Create a Side Menu. Set to \"layout\" your layout that will be then your side menu. Use as example a vertical arrangement. Your choosen layout will be then removed from the screen and only visible in the side menu.\"Information\": This block works on companion only if you add a side menu on button click.Don\u2019t add it in companion on \"screen initialize event\". Else the companion will crash.Do NOT use this block with the Side Menu Layout component"
    .end annotation

    .prologue
    .line 3055
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    move-object v2, v3

    .line 3057
    move-object v3, v0

    move-object v4, v1

    :try_start_0
    iput-object v4, v3, Lcom/google/appinventor/components/runtime/Form;->layoutBackup:Ljava/lang/Object;

    .line 3058
    move-object v3, v2

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3063
    .line 3065
    move-object v3, v0

    new-instance v4, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    const/16 v7, 0x128

    invoke-static {v6, v7}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v6

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7}, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;-><init>(II)V

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/Form;->lp:Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    .line 3068
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Form;->lp:Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    const v4, 0x800003

    iput v4, v3, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 3069
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->lp:Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3071
    move-object v3, v2

    new-instance v4, Lcom/google/appinventor/components/runtime/Form$7;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/google/appinventor/components/runtime/Form$7;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3079
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Form;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz v3, :cond_0

    .line 3080
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Form;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroidx/drawerlayout/widget/DrawerLayout;->addView(Landroid/view/View;)V

    .line 3081
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Form;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(I)V

    .line 3082
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Form;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v3}, Landroidx/drawerlayout/widget/DrawerLayout;->invalidate()V

    .line 3083
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Form;->AddDrawerSync()V

    .line 3085
    :cond_0
    :goto_0
    return-void

    .line 3059
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 3060
    const-string/jumbo v3, "Form"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 3061
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/Form;->layoutBackup:Ljava/lang/Object;

    .line 3062
    goto :goto_0
.end method

.method public SideMenuClose()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "If you had set your side menu then you can use this block to close it as example with a button click."
    .end annotation

    .prologue
    .line 3152
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->actionBarDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz v1, :cond_0

    .line 3153
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const v2, 0x800003

    invoke-virtual {v1, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(I)V

    .line 3155
    :cond_0
    return-void
.end method

.method public SideMenuClosed()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event will be invoked if the side menu was closed."
    .end annotation

    .prologue
    .line 3179
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "SideMenuClosed"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 3180
    return-void
.end method

.method public SideMenuLayout(Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;)V
    .locals 9

    .prologue
    .line 3088
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->getView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    move-object v2, v3

    .line 3090
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/Form;->layoutBackup:Ljava/lang/Object;

    .line 3092
    move-object v3, v2

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3093
    move-object v3, v2

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3096
    :cond_0
    move-object v3, v0

    new-instance v4, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    const/16 v7, 0x128

    invoke-static {v6, v7}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v6

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7}, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;-><init>(II)V

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/Form;->lp:Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    .line 3099
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Form;->lp:Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    const v4, 0x800003

    iput v4, v3, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 3100
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->lp:Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3102
    move-object v3, v2

    new-instance v4, Lcom/google/appinventor/components/runtime/Form$8;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/google/appinventor/components/runtime/Form$8;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3110
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Form;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz v3, :cond_1

    .line 3111
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Form;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroidx/drawerlayout/widget/DrawerLayout;->addView(Landroid/view/View;)V

    .line 3112
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Form;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(I)V

    .line 3113
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Form;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v3}, Landroidx/drawerlayout/widget/DrawerLayout;->invalidate()V

    .line 3114
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Form;->AddDrawerSync()V

    .line 3116
    :cond_1
    return-void
.end method

.method public SideMenuOpen()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "If you had set your side menu then you can use this block to open it as example with a button click."
    .end annotation

    .prologue
    .line 3144
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->actionBarDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz v1, :cond_0

    .line 3145
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const v2, 0x800003

    invoke-virtual {v1, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->openDrawer(I)V

    .line 3147
    :cond_0
    return-void
.end method

.method public SideMenuOpened()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event will be invoked if the side menu was opened."
    .end annotation

    .prologue
    .line 3174
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "SideMenuOpened"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 3175
    return-void
.end method

.method public Sizing(Ljava/lang/String;)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "Responsive"
        editorType = "sizing"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If set to fixed,  screen layouts will be created for a single fixed-size screen and autoscaled. If set to responsive, screen layouts will use the actual resolution of the device.  See the documentation on responsive design in App Inventor for more information. This property appears on Screen1 only and controls the sizing for all screens in the app."
        userVisible = false
    .end annotation

    .prologue
    .line 1966
    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v2, "Form"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "Sizing("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1967
    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Form;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    move-object v4, v0

    iget v4, v4, Lcom/google/appinventor/components/runtime/Form;->deviceDensity:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Lcom/google/appinventor/components/runtime/Form;->formWidth:I

    .line 1968
    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Form;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    move-object v4, v0

    iget v4, v4, Lcom/google/appinventor/components/runtime/Form;->deviceDensity:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Lcom/google/appinventor/components/runtime/Form;->formHeight:I

    .line 1969
    move-object v2, v1

    const-string/jumbo v3, "Fixed"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1970
    const/4 v2, 0x1

    sput-boolean v2, Lcom/google/appinventor/components/runtime/Form;->sCompatibilityMode:Z

    .line 1971
    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Lcom/google/appinventor/components/runtime/Form;->formWidth:I

    int-to-float v3, v3

    move-object v4, v0

    iget v4, v4, Lcom/google/appinventor/components/runtime/Form;->compatScalingFactor:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Lcom/google/appinventor/components/runtime/Form;->formWidth:I

    .line 1972
    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Lcom/google/appinventor/components/runtime/Form;->formHeight:I

    int-to-float v3, v3

    move-object v4, v0

    iget v4, v4, Lcom/google/appinventor/components/runtime/Form;->compatScalingFactor:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Lcom/google/appinventor/components/runtime/Form;->formHeight:I

    .line 1976
    :goto_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->scaleLayout:Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

    sget-boolean v3, Lcom/google/appinventor/components/runtime/Form;->sCompatibilityMode:Z

    if-eqz v3, :cond_2

    move-object v3, v0

    iget v3, v3, Lcom/google/appinventor/components/runtime/Form;->compatScalingFactor:F

    :goto_1
    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->setScale(F)V

    .line 1977
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_0

    .line 1978
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->invalidate()V

    .line 1980
    :cond_0
    const-string/jumbo v2, "Form"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "formWidth = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    iget v4, v4, Lcom/google/appinventor/components/runtime/Form;->formWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " formHeight = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget v4, v4, Lcom/google/appinventor/components/runtime/Form;->formHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1981
    return-void

    .line 1974
    :cond_1
    const/4 v2, 0x0

    sput-boolean v2, Lcom/google/appinventor/components/runtime/Form;->sCompatibilityMode:Z

    goto :goto_0

    .line 1976
    :cond_2
    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_1
.end method

.method public SplashEnabled(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If set to true the user will see a splash screen while the app is loading the content."
        userVisible = false
    .end annotation

    .prologue
    .line 3288
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/Form;->splashEnabled:Z

    .line 3289
    return-void
.end method

.method public SplashEnabled()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 3293
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/Form;->splashEnabled:Z

    move v0, v1

    return v0
.end method

.method public SplashIcon(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "image_asset"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 3281
    return-void
.end method

.method public StatusBarColor()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 2781
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/Form;->statusbarColor:I

    move v0, v1

    return v0
.end method

.method public StatusBarColor(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set status bar color. This will work starting from API Level 21 (Android Lollipop"
    .end annotation

    .prologue
    .line 2775
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/Form;->statusbarColor:I

    .line 2776
    move-object v2, v0

    move v3, v1

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/KodularHelper;->setStatusBarColor(Landroid/app/Activity;I)V

    .line 2777
    return-void

    .line 2776
    :cond_0
    move v3, v1

    goto :goto_0
.end method

.method public StatusbarLightIcons(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "This option tells the system to use dark statusbar icons, useful for lighter colored status bars. Works only for devices with API >= 23."
    .end annotation

    .prologue
    .line 3185
    move-object v0, p0

    move v1, p1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-ge v2, v3, :cond_0

    .line 3186
    const-string/jumbo v2, "Form"

    const-string/jumbo v3, "Sorry, statusbar light icons is not available for API Level < 23"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 3199
    :goto_0
    return-void

    .line 3188
    :cond_0
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/Form;->statusbarLight:Z

    .line 3189
    move v2, v1

    if-eqz v2, :cond_1

    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->NavigationBarLightIcons()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3190
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const v3, -0x7fffdff0

    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 3191
    :cond_1
    move v2, v1

    if-eqz v2, :cond_2

    .line 3192
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x2000

    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 3193
    :cond_2
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->NavigationBarLightIcons()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3194
    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->NavigationBarLightIcons(Z)V

    goto :goto_0

    .line 3196
    :cond_3
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 3199
    goto :goto_0
.end method

.method public StatusbarLightIcons()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 3203
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/Form;->statusbarLight:Z

    move v0, v1

    return v0
.end method

.method public TaskDescription(Ljava/lang/String;I)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sets information describing the task with this activity for presentation inside the Recents System UI. You will see the settings if the device API is >= 21 and you minimize the app."
    .end annotation

    .prologue
    .line 2961
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-static {v3, v4, v5}, Lcom/google/appinventor/components/runtime/util/KodularHelper;->setAppBackgroundTaskInfo(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 2962
    return-void
.end method

.method public Theme(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "AppTheme"
        editorType = "theme"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the theme used by the application."
        userVisible = false
    .end annotation

    .prologue
    .line 3301
    return-void
.end method

.method public Title()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The caption for the form, which apears in the title bar"
    .end annotation

    .prologue
    .line 1449
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1450
    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1451
    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 1456
    :goto_0
    return-object v0

    .line 1453
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 1456
    :cond_1
    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public Title(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 1470
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->setTitle(Ljava/lang/CharSequence;)V

    .line 1471
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Form;->toolbarTitle:Ljava/lang/String;

    .line 1472
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1473
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1475
    :cond_0
    return-void
.end method

.method public TitleBarColor()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 2770
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/Form;->titleBarColor:I

    move v0, v1

    return v0
.end method

.method public TitleBarColor(I)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set title bar color"
    .end annotation

    .prologue
    .line 2762
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/Form;->titleBarColor:I

    .line 2763
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2764
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    iget v5, v5, Lcom/google/appinventor/components/runtime/Form;->titleBarColor:I

    if-eqz v5, :cond_1

    move-object v5, v0

    iget v5, v5, Lcom/google/appinventor/components/runtime/Form;->titleBarColor:I

    :goto_0
    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2766
    :cond_0
    return-void

    .line 2764
    :cond_1
    const/4 v5, -0x1

    goto :goto_0
.end method

.method public TitleBarFontTypeface()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .prologue
    .line 3425
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/Form;->fontTypeface:I

    move v0, v1

    return v0
.end method

.method public TitleBarFontTypeface(I)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "typeface"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 3415
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/Form;->fontTypeface:I

    .line 3416
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3417
    move-object v2, v0

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setContext(Landroid/content/Context;)V

    .line 3418
    move-object v2, v0

    const-string/jumbo v3, ""

    move v4, v1

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->titleBarFontHelper(Ljava/lang/String;IZ)V

    .line 3420
    :cond_0
    return-void
.end method

.method public TitleBarIconSelected(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The event returns the \'icon\' or \'name\' of the selected icon."
    .end annotation

    .prologue
    .line 2891
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    const-string/jumbo v4, "TitleBarIconSelected"

    const/4 v5, 0x2

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

    invoke-static {v3, v4, v5}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v3

    .line 2892
    return-void
.end method

.method public TitleBarSubTitle()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Get the TitleBar\'s subtitle."
    .end annotation

    .prologue
    .line 2828
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/app/ActionBar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2829
    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/app/ActionBar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 2831
    :goto_0
    return-object v0

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    if-eqz v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    move-object v0, v1

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "Screen1"

    move-object v0, v1

    goto :goto_0
.end method

.method public TitleBarSubTitle(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the TitleBar\'s subtitle."
    .end annotation

    .prologue
    .line 2820
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Form;->toolbarSubTitle:Ljava/lang/String;

    .line 2821
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2822
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v2

    move-object v3, v1

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 2824
    :cond_0
    return-void
.end method

.method public TitleBarTypefaceImport(Ljava/lang/String;)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "font_asset"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set a custom font."
    .end annotation

    .prologue
    .line 3433
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3434
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3435
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->titleBarFontHelper(Ljava/lang/String;IZ)V

    .line 3438
    :cond_0
    return-void
.end method

.method public TitleVisible(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 1542
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1543
    move v2, v1

    if-eqz v2, :cond_1

    .line 1544
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/material/appbar/AppBarLayout;->setVisibility(I)V

    .line 1548
    :goto_0
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/Form;->showTitle:Z

    .line 1550
    :cond_0
    return-void

    .line 1546
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/google/android/material/appbar/AppBarLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public TitleVisible()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The title bar is the top gray bar on the screen. This property reports whether the title bar is visible."
    .end annotation

    .prologue
    .line 1531
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/Form;->showTitle:Z

    move v0, v1

    return v0
.end method

.method public TitlebarBackButtonClicked()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect when a menu item has been selected."
    .end annotation

    .prologue
    .line 2562
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "TitlebarBackButtonClicked"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 2563
    return-void
.end method

.method public TitlebarTextColor()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Return the text color from the TitleBar."
    .end annotation

    .prologue
    .line 2914
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/Form;->titleBarTextColor:I

    move v0, v1

    return v0
.end method

.method public TitlebarTextColor(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set a custom color for the TitleBar text."
    .end annotation

    .prologue
    .line 2907
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/Form;->titleBarTextColor:I

    .line 2908
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->titleBarTextColorHelper(I)V

    .line 2909
    return-void
.end method

.method public TutorialURL(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "A URL to use to populate the Tutorial Sidebar while editing a project. Used as a teaching aid."
        userVisible = false
    .end annotation

    .prologue
    .line 2071
    return-void
.end method

.method public UnlockSideMenu()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Use this block to unlock the side menu. This means the user can now open again the side menu."
    .end annotation

    .prologue
    .line 3040
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->actionBarDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3041
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/google/appinventor/components/runtime/Form;->lockedMenu:Z

    .line 3042
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(I)V

    .line 3043
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->actionBarDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/ActionBarDrawerToggle;->setDrawerIndicatorEnabled(Z)V

    .line 3044
    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 3046
    :cond_0
    return-void
.end method

.method public VersionCode()I
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "This block will returns the version code"
    .end annotation

    .prologue
    .line 2810
    move-object v0, p0

    move-object v2, v0

    :try_start_0
    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Form;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 2813
    :goto_0
    return v0

    .line 2811
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 2812
    const-string/jumbo v2, "Form"

    move-object v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 2813
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public VersionCode(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "An integer value which must be incremented each time a new Android Application Package File (APK) is created for the Google Play Store."
        userVisible = false
    .end annotation

    .prologue
    .line 1918
    return-void
.end method

.method public VersionName()Ljava/lang/String;
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "This block will returns the version name"
    .end annotation

    .prologue
    .line 2800
    move-object v0, p0

    move-object v2, v0

    :try_start_0
    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Form;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 2803
    :goto_0
    return-object v0

    .line 2801
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 2802
    const-string/jumbo v2, "Form"

    move-object v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 2803
    const-string/jumbo v2, "0"

    move-object v0, v2

    goto :goto_0
.end method

.method public VersionName(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1.0"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "A string which can be changed to allow Google Play Store users to distinguish between different versions of the App."
        userVisible = false
    .end annotation

    .prologue
    .line 1932
    return-void
.end method

.method public VisibilityHelper(Z)I
    .locals 3

    .prologue
    .line 2997
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-eqz v2, :cond_0

    .line 2998
    const/4 v2, 0x0

    move v1, v2

    .line 3002
    :goto_0
    move v2, v1

    move v0, v2

    return v0

    .line 3000
    :cond_0
    const/16 v2, 0x1002

    move v1, v2

    goto :goto_0
.end method

.method public Width()I
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Screen width (x-size)."
    .end annotation

    .prologue
    .line 2047
    move-object v0, p0

    const-string/jumbo v1, "Form"

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "Form.Width = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    iget v3, v3, Lcom/google/appinventor/components/runtime/Form;->formWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 2048
    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/Form;->formWidth:I

    move v0, v1

    return v0
.end method

.method public addAboutInfoToMenu(Landroid/view/Menu;)V
    .locals 8

    .prologue
    .line 2472
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/Form;->aboutScreenTitle:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v5, v6}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    .line 2473
    new-instance v3, Lcom/google/appinventor/components/runtime/Form$2;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/Form$2;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v2

    .line 2479
    return-void
.end method

.method public addElevation()V
    .locals 4

    .prologue
    .line 3400
    move-object v0, p0

    move-object v2, v0

    :try_start_0
    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3401
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v2

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/ActionBar;->setElevation(F)V

    .line 3403
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v2, :cond_1

    .line 3404
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    sget-object v3, Landroid/view/ViewOutlineProvider;->BACKGROUND:Landroid/view/ViewOutlineProvider;

    invoke-virtual {v2, v3}, Lcom/google/android/material/appbar/AppBarLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3408
    .line 3409
    :cond_1
    :goto_0
    return-void

    .line 3406
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 3407
    const-string/jumbo v2, "Form"

    move-object v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 3409
    goto :goto_0
.end method

.method public askPermission(Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;)V
    .locals 11

    .prologue
    .line 3695
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;->getPermissions()Ljava/util/List;

    move-result-object v4

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    .line 3696
    move-object v2, v5

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v3, v4

    .line 3697
    :cond_0
    :goto_0
    move-object v4, v3

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3698
    move-object v4, v0

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/Form;->isDeniedPermission(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3699
    move-object v4, v3

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 3702
    :cond_1
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 3704
    move-object v4, v1

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;->onGranted()V

    .line 3734
    :goto_1
    return-void

    .line 3707
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->androidUIHandler:Landroid/os/Handler;

    new-instance v5, Lcom/google/appinventor/components/runtime/Form$13;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    move-object v8, v2

    move-object v9, v1

    invoke-direct {v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/Form$13;-><init>(Lcom/google/appinventor/components/runtime/Form;Ljava/util/List;Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v4

    .line 3734
    goto :goto_1
.end method

.method public askPermission(Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)V
    .locals 12

    .prologue
    .line 3670
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v3, v4

    .line 3671
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/Form;->isDeniedPermission(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3673
    move-object v4, v2

    move-object v5, v1

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Lcom/google/appinventor/components/runtime/PermissionResultHandler;->HandlePermissionResponse(Ljava/lang/String;Z)V

    .line 3674
    .line 3687
    :goto_0
    return-void

    .line 3676
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->androidUIHandler:Landroid/os/Handler;

    new-instance v5, Lcom/google/appinventor/components/runtime/Form$11;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/google/appinventor/components/runtime/Form$11;-><init>(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;Lcom/google/appinventor/components/runtime/Form;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v4

    .line 3687
    goto :goto_0
.end method

.method public assertPermission(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 3644
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->isDeniedPermission(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3645
    new-instance v2, Lcom/google/appinventor/components/runtime/errors/PermissionException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/errors/PermissionException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3647
    :cond_0
    return-void
.end method

.method public callInitialize(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 2684
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    :try_start_0
    invoke-direct {v3}, Lcom/google/appinventor/components/runtime/Form;->OnCompanionRefresh()V

    .line 2685
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v4, "Initialize"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    move-object v2, v3

    .line 2692
    .line 2694
    :try_start_1
    const-string/jumbo v3, "Form"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string/jumbo v6, "calling Initialize method for Object "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 2695
    move-object v3, v2

    move-object v4, v1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v3

    .line 2699
    :goto_0
    return-void

    .line 2686
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 2687
    const-string/jumbo v3, "Form"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string/jumbo v6, "Security exception "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 2688
    goto :goto_0

    .line 2691
    :catch_1
    move-exception v3

    goto :goto_0

    .line 2696
    :catch_2
    move-exception v3

    move-object v1, v3

    .line 2697
    const-string/jumbo v3, "Form"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string/jumbo v6, "invoke exception: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 2698
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v3

    throw v3
.end method

.method public canDispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;)Z
    .locals 6

    .prologue
    .line 982
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    sget-boolean v3, Lcom/google/appinventor/components/runtime/Form;->screenInitialized:Z

    if-nez v3, :cond_0

    move-object v3, v1

    move-object v4, v0

    if-ne v3, v4, :cond_2

    move-object v3, v2

    const-string/jumbo v4, "Initialize"

    .line 983
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    const/4 v3, 0x1

    :goto_0
    move v5, v3

    move v3, v5

    move v4, v5

    .line 985
    move v1, v4

    if-eqz v3, :cond_1

    .line 988
    move-object v3, v0

    sput-object v3, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    .line 991
    :cond_1
    move v3, v1

    move v0, v3

    return v0

    .line 983
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public clear()V
    .locals 4

    .prologue
    .line 2593
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/LinearLayout;->getLayoutManager()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2594
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_0

    .line 2595
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 2596
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    .line 2599
    :cond_0
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/Form;->defaultPropertyValues()V

    .line 2600
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->onStopListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 2601
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->onNewIntentListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 2602
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->onResumeListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 2603
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->onPauseListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 2604
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->onDestroyListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 2605
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->onInitializeListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 2606
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->onCreateOptionsMenuListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 2607
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->onOptionsItemSelectedListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 2608
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->onOrientationChangeListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 2609
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->onCreateListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 2610
    const/4 v2, 0x0

    sput-boolean v2, Lcom/google/appinventor/components/runtime/Form;->screenInitialized:Z

    .line 2612
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->onClearListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v2

    :goto_0
    move-object v2, v1

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/appinventor/components/runtime/OnClearListener;

    .line 2613
    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/OnClearListener;->onClear()V

    .line 2614
    goto :goto_0

    .line 2616
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->onClearListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 2617
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v3, "Form.clear() About to do moby GC!"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2618
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 2619
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->dimChanges:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2620
    return-void
.end method

.method protected closeApplicationFromBlocks()V
    .locals 2

    .prologue
    .line 2410
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/Form;->closeApplication()V

    .line 2411
    return-void
.end method

.method protected closeForm(Landroid/content/Intent;)V
    .locals 6

    .prologue
    .line 2393
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-eqz v2, :cond_0

    .line 2394
    move-object v2, v0

    const/4 v3, -0x1

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->setResult(ILandroid/content/Intent;)V

    .line 2396
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->finish()V

    .line 2397
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Form;->closeAnimType:Lcom/google/appinventor/components/common/ScreenAnimation;

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/AnimationUtil;->ApplyCloseScreenAnimation(Landroid/app/Activity;Lcom/google/appinventor/components/common/ScreenAnimation;)V

    .line 2398
    return-void
.end method

.method public compatScalingFactor()F
    .locals 2

    .prologue
    .line 2259
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/Form;->compatScalingFactor:F

    move v0, v1

    return v0
.end method

.method public deleteComponent(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 2623
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Lcom/google/appinventor/components/runtime/OnStopListener;

    if-eqz v2, :cond_0

    .line 2624
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->onStopListeners:Ljava/util/Set;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 2626
    :cond_0
    move-object v2, v1

    instance-of v2, v2, Lcom/google/appinventor/components/runtime/OnNewIntentListener;

    if-eqz v2, :cond_1

    .line 2627
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->onNewIntentListeners:Ljava/util/Set;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 2629
    :cond_1
    move-object v2, v1

    instance-of v2, v2, Lcom/google/appinventor/components/runtime/OnResumeListener;

    if-eqz v2, :cond_2

    .line 2630
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->onResumeListeners:Ljava/util/Set;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 2632
    :cond_2
    move-object v2, v1

    instance-of v2, v2, Lcom/google/appinventor/components/runtime/OnPauseListener;

    if-eqz v2, :cond_3

    .line 2633
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->onPauseListeners:Ljava/util/Set;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 2635
    :cond_3
    move-object v2, v1

    instance-of v2, v2, Lcom/google/appinventor/components/runtime/OnDestroyListener;

    if-eqz v2, :cond_4

    .line 2636
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->onDestroyListeners:Ljava/util/Set;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 2638
    :cond_4
    move-object v2, v1

    instance-of v2, v2, Lcom/google/appinventor/components/runtime/util/OnInitializeListener;

    if-eqz v2, :cond_5

    .line 2639
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->onInitializeListeners:Ljava/util/Set;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 2641
    :cond_5
    move-object v2, v1

    instance-of v2, v2, Lcom/google/appinventor/components/runtime/OnCreateOptionsMenuListener;

    if-eqz v2, :cond_6

    .line 2642
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->onCreateOptionsMenuListeners:Ljava/util/Set;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 2644
    :cond_6
    move-object v2, v1

    instance-of v2, v2, Lcom/google/appinventor/components/runtime/OnOptionsItemSelectedListener;

    if-eqz v2, :cond_7

    .line 2645
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->onOptionsItemSelectedListeners:Ljava/util/Set;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 2647
    :cond_7
    move-object v2, v1

    instance-of v2, v2, Lcom/google/appinventor/components/runtime/Deleteable;

    if-eqz v2, :cond_8

    .line 2648
    move-object v2, v1

    check-cast v2, Lcom/google/appinventor/components/runtime/Deleteable;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/Deleteable;->onDelete()V

    .line 2650
    :cond_8
    move-object v2, v1

    instance-of v2, v2, Lcom/google/appinventor/components/runtime/OnOrientationChangeListener;

    if-eqz v2, :cond_9

    .line 2651
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->onOrientationChangeListeners:Ljava/util/Set;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 2653
    :cond_9
    move-object v2, v1

    instance-of v2, v2, Lcom/google/appinventor/components/runtime/OnCreateListener;

    if-eqz v2, :cond_a

    .line 2654
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->onCreateListeners:Ljava/util/Set;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 2656
    :cond_a
    return-void
.end method

.method public deviceDensity()F
    .locals 2

    .prologue
    .line 2255
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/Form;->deviceDensity:F

    move v0, v1

    return v0
.end method

.method public varargs dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V
    .locals 14

    .prologue
    .line 1132
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, v0

    new-instance v6, Lcom/google/appinventor/components/runtime/Form$15;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-object v8, v0

    move v9, v3

    move-object v10, v4

    move-object v11, v1

    move-object v12, v2

    invoke-direct/range {v7 .. v12}, Lcom/google/appinventor/components/runtime/Form$15;-><init>(Lcom/google/appinventor/components/runtime/Form;I[Ljava/lang/Object;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1138
    return-void
.end method

.method public varargs dispatchErrorOccurredEventDialog(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V
    .locals 14

    .prologue
    .line 1147
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, v0

    new-instance v6, Lcom/google/appinventor/components/runtime/Form$16;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-object v8, v0

    move v9, v3

    move-object v10, v4

    move-object v11, v1

    move-object v12, v2

    invoke-direct/range {v7 .. v12}, Lcom/google/appinventor/components/runtime/Form$16;-><init>(Lcom/google/appinventor/components/runtime/Form;I[Ljava/lang/Object;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1159
    return-void
.end method

.method public dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Z
    .locals 8

    .prologue
    .line 1005
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    new-instance v5, Ljava/lang/UnsupportedOperationException;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v5
.end method

.method public dispatchGenericEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Z[Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 1011
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    new-instance v5, Ljava/lang/UnsupportedOperationException;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v5
.end method

.method public dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/errors/PermissionException;)V
    .locals 8

    .prologue
    .line 3746
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v3

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/errors/PermissionException;->printStackTrace()V

    .line 3747
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v7}, Lcom/google/appinventor/components/runtime/errors/PermissionException;->getPermissionNeeded()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;)V

    .line 3748
    return-void
.end method

.method public dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    .prologue
    .line 3760
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    new-instance v5, Lcom/google/appinventor/components/runtime/Form$14;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/google/appinventor/components/runtime/Form$14;-><init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3766
    return-void
.end method

.method public doesAppDeclarePermission(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 3777
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->permissions:Ljava/util/Set;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public dontGrabTouchEventsForComponent()V
    .locals 3

    .prologue
    .line 2665
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 2666
    return-void
.end method

.method public declared-synchronized fullScreenVideoAction(ILcom/google/appinventor/components/runtime/VideoPlayer;Ljava/lang/Object;)Landroid/os/Bundle;
    .locals 9

    .prologue
    .line 2734
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v8, p0

    monitor-enter v8

    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->fullScreenVideoUtil:Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;

    move v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->performAction(ILcom/google/appinventor/components/runtime/VideoPlayer;Ljava/lang/Object;)Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    move-object v0, v4

    monitor-exit v8

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2200
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->appId:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getAssetPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 3787
    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v2, "file:///android_asset/"

    move-object v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public getAssetPathForExtension(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 3344
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 3345
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "file:///android_asset/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public getCachePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 3791
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const-string/jumbo v4, "file://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/Form;->getCacheDir()Ljava/io/File;

    move-result-object v5

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public getDefaultPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 3795
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->defaultFileScope:Lcom/google/appinventor/components/common/FileScope;

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/FileUtil;->resolveFileName(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;
    .locals 2

    .prologue
    .line 2234
    move-object v0, p0

    move-object v1, v0

    move-object v0, v1

    return-object v0
.end method

.method public getInstalledFrom()Ljava/lang/String;
    .locals 6

    .prologue
    .line 2178
    move-object v0, p0

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Form;->$context()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Form;->$context()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    .line 2179
    move-object v1, v4

    if-nez v3, :cond_0

    .line 2180
    const-string/jumbo v3, "Developer"

    move-object v0, v3

    .line 2192
    :goto_0
    return-object v0

    .line 2183
    :cond_0
    const/4 v3, -0x1

    move v2, v3

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_1
    :goto_1
    move v3, v2

    packed-switch v3, :pswitch_data_0

    .line 2192
    const-string/jumbo v3, "Unknown"

    move-object v0, v3

    goto :goto_0

    .line 2183
    :sswitch_0
    move-object v3, v1

    const-string/jumbo v4, "com.android.vending"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    move v2, v3

    goto :goto_1

    :sswitch_1
    move-object v3, v1

    const-string/jumbo v4, "com.google.android.feedback"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    move v2, v3

    goto :goto_1

    :sswitch_2
    move-object v3, v1

    const-string/jumbo v4, "com.amazon.venezia"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    move v2, v3

    goto :goto_1

    :sswitch_3
    move-object v3, v1

    const-string/jumbo v4, "com.sec.android.app.samsungapps"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x3

    move v2, v3

    goto :goto_1

    .line 2186
    :pswitch_0
    const-string/jumbo v3, "Google Play"

    move-object v0, v3

    goto :goto_0

    .line 2188
    :pswitch_1
    const-string/jumbo v3, "Amazon Appstore"

    move-object v0, v3

    goto :goto_0

    .line 2190
    :pswitch_2
    const-string/jumbo v3, "Samsung App Store"

    move-object v0, v3

    goto :goto_0

    .line 2183
    :sswitch_data_0
    .sparse-switch
        -0x6ed94931 -> :sswitch_2
        -0x490565ea -> :sswitch_3
        -0x3e676dcf -> :sswitch_0
        0x21b10dcc -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getKodularPackageName()Ljava/lang/String;
    .locals 6

    .prologue
    .line 2153
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 2156
    move-object v2, v0

    :try_start_0
    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    .line 2157
    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const/high16 v4, 0x10000

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 2158
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 2161
    const-string/jumbo v3, ".Screen1"

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v0, v2

    .line 2163
    :goto_0
    return-object v0

    :catch_0
    move-exception v2

    move-object v2, v1

    move-object v0, v2

    goto :goto_0
.end method

.method public getOnCreateBundle()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 512
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->onCreateBundle:Landroid/os/Bundle;

    move-object v0, v1

    return-object v0
.end method

.method public getPrivatePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 3806
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const-string/jumbo v4, "file://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/Form;->getFilesDir()Ljava/io/File;

    move-result-object v5

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public isCustomPackage()Z
    .locals 3

    .prologue
    .line 2168
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->getPackageName()Ljava/lang/String;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->getKodularPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public isDeniedPermission(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 3633
    move-object v0, p0

    move-object v1, p1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    move-object v2, v0

    move-object v3, v1

    .line 3634
    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    .line 3633
    move v0, v2

    goto :goto_0
.end method

.method public isInstalledThruStore()Z
    .locals 3

    .prologue
    .line 2196
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->getInstalledFrom()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Unknown"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public isKeyboardVisible()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the status of the keyboard. If the keyboard is visible then the result is true."
    .end annotation

    .prologue
    .line 2855
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/Form;->keyboardReallyShown:Z

    move v0, v1

    return v0
.end method

.method public isRepl()Z
    .locals 2

    .prologue
    .line 3914
    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 12

    .prologue
    .line 711
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v7, v0

    move v8, v1

    move v9, v2

    move-object v10, v3

    invoke-super {v7, v8, v9, v10}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 712
    const-string/jumbo v7, "Form"

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    const-string/jumbo v10, "Form "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v9, v0

    iget-object v9, v9, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " got onActivityResult, requestCode = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", resultCode = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 714
    move v7, v1

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 720
    move-object v7, v3

    if-eqz v7, :cond_0

    move-object v7, v3

    const-string/jumbo v8, "APP_INVENTOR_RESULT"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 721
    move-object v7, v3

    const-string/jumbo v8, "APP_INVENTOR_RESULT"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    .line 725
    :goto_0
    move-object v7, v4

    const-string/jumbo v8, "other screen closed"

    invoke-static {v7, v8}, Lcom/google/appinventor/components/runtime/Form;->decodeJSONStringForForm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    move-object v4, v7

    .line 727
    move-object v7, v0

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/Form;->nextFormName:Ljava/lang/String;

    move-object v9, v4

    invoke-virtual {v7, v8, v9}, Lcom/google/appinventor/components/runtime/Form;->OtherScreenClosed(Ljava/lang/String;Ljava/lang/Object;)V

    .line 728
    .line 742
    :goto_1
    return-void

    .line 723
    :cond_0
    const-string/jumbo v7, ""

    move-object v4, v7

    goto :goto_0

    .line 730
    :cond_1
    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/Form;->activityResultMap:Ljava/util/HashMap;

    move v8, v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/appinventor/components/runtime/ActivityResultListener;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    .line 731
    move-object v4, v8

    if-eqz v7, :cond_2

    .line 732
    move-object v7, v4

    move v8, v1

    move v9, v2

    move-object v10, v3

    invoke-interface {v7, v8, v9, v10}, Lcom/google/appinventor/components/runtime/ActivityResultListener;->resultReturned(IILandroid/content/Intent;)V

    .line 735
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/Form;->activityResultMultiMap:Ljava/util/Map;

    move v8, v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    .line 736
    move-object v4, v8

    if-eqz v7, :cond_3

    .line 737
    move-object v7, v4

    const/4 v8, 0x0

    new-array v8, v8, [Lcom/google/appinventor/components/runtime/ActivityResultListener;

    invoke-interface {v7, v8}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/google/appinventor/components/runtime/ActivityResultListener;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v4, v8

    array-length v7, v7

    move v5, v7

    const/4 v7, 0x0

    move v6, v7

    :goto_2
    move v7, v6

    move v8, v5

    if-ge v7, v8, :cond_3

    move-object v7, v4

    move v8, v6

    aget-object v7, v7, v8

    .line 738
    move v8, v1

    move v9, v2

    move-object v10, v3

    invoke-interface {v7, v8, v9, v10}, Lcom/google/appinventor/components/runtime/ActivityResultListener;->resultReturned(IILandroid/content/Intent;)V

    .line 737
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 742
    :cond_3
    goto :goto_1
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    .line 689
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const v2, 0x800003

    invoke-virtual {v1, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 690
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const v2, 0x800003

    invoke-virtual {v1, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(I)V

    .line 697
    :goto_0
    return-void

    .line 692
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->BackPressed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 693
    move-object v1, v0

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->closeAnimType:Lcom/google/appinventor/components/common/ScreenAnimation;

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/util/AnimationUtil;->ApplyCloseScreenAnimation(Landroid/app/Activity;Lcom/google/appinventor/components/common/ScreenAnimation;)V

    .line 694
    move-object v1, v0

    invoke-super {v1}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    .line 697
    :cond_1
    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8

    .prologue
    .line 559
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 560
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->actionBarDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    if-eqz v2, :cond_0

    .line 561
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->actionBarDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/ActionBarDrawerToggle;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 564
    :cond_0
    const-string/jumbo v2, "Form"

    const-string/jumbo v3, "onConfigurationChanged() called"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 565
    move-object v2, v1

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    move v7, v2

    move v2, v7

    move v3, v7

    .line 566
    move v1, v3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    move v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 572
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->androidUIHandler:Landroid/os/Handler;

    new-instance v3, Lcom/google/appinventor/components/runtime/Form$1;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move v6, v1

    invoke-direct {v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form$1;-><init>(Lcom/google/appinventor/components/runtime/Form;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v2

    .line 618
    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    .prologue
    .line 356
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    invoke-super {v4, v5}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 358
    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 359
    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/appcompat/app/ActionBar;->show()V

    .line 361
    :cond_0
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/Form;->onCreateBundle:Landroid/os/Bundle;

    .line 362
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->onCreateListeners:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/appinventor/components/runtime/OnCreateListener;

    .line 363
    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/OnCreateListener;->onCreate()V

    .line 364
    goto :goto_0

    .line 367
    :cond_1
    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    .line 368
    move-object v2, v5

    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    move v3, v4

    .line 369
    move-object v4, v0

    move-object v5, v2

    move v6, v3

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    .line 370
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/Form;->onCreateBundle:Landroid/os/Bundle;

    .line 372
    move-object v4, v0

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    .line 374
    sput-object v5, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    instance-of v4, v4, Lcom/google/appinventor/components/runtime/ReplForm;

    if-eqz v4, :cond_2

    .line 376
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/google/appinventor/components/runtime/Form;->isCompanion:Z

    .line 379
    :cond_2
    move-object v4, v0

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/Form;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    iput v5, v4, Lcom/google/appinventor/components/runtime/Form;->deviceDensity:F

    .line 380
    move-object v4, v0

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/ScreenDensityUtil;->computeCompatibleScaling(Landroid/content/Context;)F

    move-result v5

    iput v5, v4, Lcom/google/appinventor/components/runtime/Form;->compatScalingFactor:F

    .line 381
    move-object v4, v0

    new-instance v5, Lcom/google/appinventor/components/runtime/LinearLayout;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/google/appinventor/components/runtime/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/Form;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    .line 382
    move-object v4, v0

    new-instance v5, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/Form;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    invoke-direct {v6, v7}, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;-><init>(Lcom/google/appinventor/components/runtime/LinearLayout;)V

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/Form;->alignmentSetter:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    .line 384
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/Form;->progress:Landroid/app/ProgressDialog;

    .line 385
    sget-boolean v4, Lcom/google/appinventor/components/runtime/Form;->_initialized:Z

    if-nez v4, :cond_4

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    const-string/jumbo v5, "Screen1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 386
    const-string/jumbo v4, "Form"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string/jumbo v7, "MULTI: _initialized = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v6, Lcom/google/appinventor/components/runtime/Form;->_initialized:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " formName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 387
    const/4 v4, 0x1

    sput-boolean v4, Lcom/google/appinventor/components/runtime/Form;->_initialized:Z

    .line 392
    sget-boolean v4, Lcom/google/appinventor/components/runtime/ReplApplication;->installed:Z

    if-eqz v4, :cond_3

    .line 393
    const-string/jumbo v4, "Form"

    const-string/jumbo v5, "MultiDex already installed."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 394
    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Form;->onCreateFinish()V

    .line 406
    :goto_1
    return-void

    .line 396
    :cond_3
    move-object v4, v0

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string/jumbo v6, "Please Wait..."

    const-string/jumbo v7, "Installation Finishing"

    invoke-static {v5, v6, v7}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v5

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/Form;->progress:Landroid/app/ProgressDialog;

    .line 397
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->show()V

    .line 398
    new-instance v4, Lcom/google/appinventor/components/runtime/Form$a;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/google/appinventor/components/runtime/Form$a;-><init>(B)V

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/google/appinventor/components/runtime/Form;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v0

    aput-object v8, v6, v7

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/Form$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v4

    goto :goto_1

    .line 401
    :cond_4
    const-string/jumbo v4, "Form"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string/jumbo v7, "NO MULTI: _initialized = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v6, Lcom/google/appinventor/components/runtime/Form;->_initialized:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " formName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 402
    const/4 v4, 0x1

    sput-boolean v4, Lcom/google/appinventor/components/runtime/Form;->_initialized:Z

    .line 403
    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Form;->onCreateFinish()V

    .line 406
    goto :goto_1
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 947
    move-object v0, p0

    move v1, p1

    move v2, v1

    packed-switch v2, :pswitch_data_0

    .line 951
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroidx/appcompat/app/AppCompatActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v2

    move-object v0, v2

    :goto_0
    return-object v0

    .line 949
    :pswitch_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->fullScreenVideoUtil:Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->createFullScreenVideoDialog()Landroid/app/Dialog;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 947
    nop

    :pswitch_data_0
    .packed-switch 0xbd
        :pswitch_0
    .end packed-switch
.end method

.method onCreateFinish()V
    .locals 10

    .prologue
    .line 425
    move-object v1, p0

    const-string/jumbo v4, "Form"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string/jumbo v7, "onCreateFinish called "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 426
    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->progress:Landroid/app/ProgressDialog;

    if-eqz v4, :cond_0

    .line 427
    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    .line 430
    :cond_0
    move-object v4, v1

    invoke-direct {v4}, Lcom/google/appinventor/components/runtime/Form;->populatePermissions()V

    .line 432
    move-object v4, v1

    invoke-direct {v4}, Lcom/google/appinventor/components/runtime/Form;->defaultPropertyValues()V

    .line 435
    const/4 v4, 0x0

    move-object v2, v4

    .line 437
    move-object v4, v1

    :try_start_0
    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Form;->getIntent()Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move-object v2, v4

    .line 440
    .line 441
    :goto_0
    move-object v4, v2

    if-eqz v4, :cond_1

    move-object v4, v2

    const-string/jumbo v5, "APP_INVENTOR_START"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 442
    move-object v4, v1

    move-object v5, v2

    const-string/jumbo v6, "APP_INVENTOR_START"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/Form;->startupValue:Ljava/lang/String;

    .line 445
    :cond_1
    move-object v4, v2

    if-eqz v4, :cond_2

    move-object v4, v2

    invoke-virtual {v4}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 446
    move-object v4, v2

    invoke-virtual {v4}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "audio/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 447
    move-object v4, v2

    const-string/jumbo v5, "android.intent.extra.STREAM"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    .line 448
    move-object v3, v5

    if-eqz v4, :cond_2

    .line 449
    move-object v4, v1

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v3

    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/Form;->receiveSharedValue:Ljava/lang/String;

    .line 450
    move-object v4, v1

    const/4 v5, 0x1

    iput v5, v4, Lcom/google/appinventor/components/runtime/Form;->receiveSharedValueType:I

    .line 452
    .line 473
    :cond_2
    :goto_1
    move-object v4, v1

    new-instance v5, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v1

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/Form;->androidUIHandler:Landroid/os/Handler;

    invoke-direct {v6, v7, v8}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;-><init>(Lcom/google/appinventor/components/runtime/Form;Landroid/os/Handler;)V

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/Form;->fullScreenVideoUtil:Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;

    .line 477
    move-object v4, v1

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 478
    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    move v2, v4

    .line 479
    move-object v4, v1

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object v4

    move v5, v2

    const/16 v6, 0x10

    or-int/lit8 v5, v5, 0x10

    invoke-virtual {v4, v5}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 483
    move-object v4, v1

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Form;->$define()V

    .line 490
    move-object v4, v1

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Form;->Initialize()V

    .line 491
    return-void

    .line 438
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 439
    const-string/jumbo v4, "Form"

    move-object v5, v3

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    .line 452
    :cond_3
    move-object v4, v2

    invoke-virtual {v4}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "image/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 453
    move-object v4, v2

    const-string/jumbo v5, "android.intent.extra.STREAM"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    .line 454
    move-object v3, v5

    if-eqz v4, :cond_4

    .line 455
    move-object v4, v1

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v3

    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/Form;->receiveSharedValue:Ljava/lang/String;

    .line 456
    move-object v4, v1

    const/4 v5, 0x2

    iput v5, v4, Lcom/google/appinventor/components/runtime/Form;->receiveSharedValueType:I

    .line 458
    :cond_4
    goto :goto_1

    :cond_5
    move-object v4, v2

    invoke-virtual {v4}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "text/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 459
    move-object v4, v2

    const-string/jumbo v5, "android.intent.extra.TEXT"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    .line 460
    move-object v3, v5

    if-eqz v4, :cond_6

    .line 461
    move-object v4, v1

    move-object v5, v3

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/Form;->receiveSharedValue:Ljava/lang/String;

    .line 462
    move-object v4, v1

    const/4 v5, 0x3

    iput v5, v4, Lcom/google/appinventor/components/runtime/Form;->receiveSharedValueType:I

    .line 464
    :cond_6
    goto/16 :goto_1

    :cond_7
    move-object v4, v2

    invoke-virtual {v4}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "video/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 465
    move-object v4, v2

    const-string/jumbo v5, "android.intent.extra.STREAM"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    .line 466
    move-object v3, v5

    if-eqz v4, :cond_2

    .line 467
    move-object v4, v1

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v3

    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/Form;->receiveSharedValue:Ljava/lang/String;

    .line 468
    move-object v4, v1

    const/4 v5, 0x4

    iput v5, v4, Lcom/google/appinventor/components/runtime/Form;->receiveSharedValueType:I

    goto/16 :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .prologue
    .line 2450
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/Form;->showOptionsMenu:Z

    move v0, v2

    return v0
.end method

.method protected onDestroy()V
    .locals 7

    .prologue
    .line 916
    move-object v0, p0

    const-string/jumbo v2, "Form"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "Form "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " got onDestroy"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 918
    move-object v2, v0

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/EventDispatcher;->removeDispatchDelegate(Lcom/google/appinventor/components/runtime/HandlesEventDispatching;)V

    .line 920
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->onDestroyListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v2

    :goto_0
    move-object v2, v1

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/appinventor/components/runtime/OnDestroyListener;

    .line 921
    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/OnDestroyListener;->onDestroy()V

    .line 922
    goto :goto_0

    .line 923
    :cond_0
    move-object v2, v0

    invoke-super {v2}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 924
    return-void
.end method

.method public onGlobalLayout()V
    .locals 11

    .prologue
    .line 643
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Form;->scaleLayout:Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    move v1, v3

    .line 644
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Form;->scaleLayout:Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->getHeight()I

    move-result v3

    move v2, v3

    .line 645
    move v3, v1

    move v4, v2

    sub-int/2addr v3, v4

    .line 649
    int-to-float v3, v3

    move v4, v1

    int-to-float v4, v4

    div-float/2addr v3, v4

    move v1, v3

    .line 650
    const-string/jumbo v3, "Form"

    const-string/jumbo v4, "onGlobalLayout(): diffPercent = "

    move v5, v1

    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 652
    move v3, v1

    float-to-double v3, v3

    const-wide/high16 v5, 0x3fd0000000000000L    # 0.25

    cmpg-double v3, v3, v5

    if-gez v3, :cond_1

    .line 653
    const-string/jumbo v3, "Form"

    const-string/jumbo v4, "keyboard hidden!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 654
    move-object v3, v0

    iget-boolean v3, v3, Lcom/google/appinventor/components/runtime/Form;->keyboardShown:Z

    if-eqz v3, :cond_0

    .line 655
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/Form;->keyboardShown:Z

    .line 656
    sget-boolean v3, Lcom/google/appinventor/components/runtime/Form;->sCompatibilityMode:Z

    if-eqz v3, :cond_0

    .line 657
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Form;->scaleLayout:Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

    move-object v4, v0

    iget v4, v4, Lcom/google/appinventor/components/runtime/Form;->compatScalingFactor:F

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->setScale(F)V

    .line 658
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Form;->scaleLayout:Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->invalidate()V

    .line 670
    :cond_0
    :goto_0
    new-instance v3, Landroid/graphics/Rect;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    move-object v1, v3

    .line 671
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 672
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    move v10, v3

    move v3, v10

    move v4, v10

    .line 676
    move v2, v4

    move-object v4, v1

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    move v1, v3

    .line 678
    move-object v3, v0

    move v4, v1

    int-to-double v4, v4

    move v6, v2

    int-to-double v6, v6

    const-wide v8, 0x3fc3333333333333L    # 0.15

    mul-double/2addr v6, v8

    cmpl-double v4, v4, v6

    if-lez v4, :cond_2

    const/4 v4, 0x1

    :goto_1
    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/Form;->keyboardReallyShown:Z

    .line 679
    move-object v3, v0

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    iget-boolean v4, v4, Lcom/google/appinventor/components/runtime/Form;->keyboardReallyShown:Z

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Form;->KeyboardVisiblityChanged(Z)V

    .line 680
    return-void

    .line 662
    :cond_1
    const-string/jumbo v3, "Form"

    const-string/jumbo v4, "keyboard shown!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 663
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/Form;->keyboardShown:Z

    .line 664
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Form;->scaleLayout:Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

    if-eqz v3, :cond_0

    .line 665
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Form;->scaleLayout:Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->setScale(F)V

    .line 666
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Form;->scaleLayout:Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->invalidate()V

    goto :goto_0

    .line 678
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 8

    .prologue
    .line 870
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroidx/appcompat/app/AppCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 871
    const-string/jumbo v3, "Form"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string/jumbo v6, "Form "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " got onNewIntent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 872
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Form;->onNewIntentListeners:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v3

    :goto_0
    move-object v3, v2

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/appinventor/components/runtime/OnNewIntentListener;

    .line 873
    move-object v4, v1

    invoke-interface {v3, v4}, Lcom/google/appinventor/components/runtime/OnNewIntentListener;->onNewIntent(Landroid/content/Intent;)V

    .line 874
    goto :goto_0

    .line 875
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .prologue
    .line 2548
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Form;->actionBarDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Form;->actionBarDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/appcompat/app/ActionBarDrawerToggle;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2549
    const/4 v3, 0x1

    move v0, v3

    .line 2557
    :goto_0
    return v0

    .line 2552
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Form;->onOptionsItemSelectedListeners:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v3

    :goto_1
    move-object v3, v2

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/appinventor/components/runtime/OnOptionsItemSelectedListener;

    .line 2553
    move-object v4, v1

    invoke-interface {v3, v4}, Lcom/google/appinventor/components/runtime/OnOptionsItemSelectedListener;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2554
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    .line 2556
    :cond_1
    goto :goto_1

    .line 2557
    :cond_2
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method protected onPause()V
    .locals 7

    .prologue
    .line 883
    move-object v0, p0

    move-object v2, v0

    invoke-super {v2}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 884
    const-string/jumbo v2, "Form"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "Form "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " got onPause"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 885
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->OnAppPause()V

    .line 886
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->onPauseListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v2

    :goto_0
    move-object v2, v1

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/appinventor/components/runtime/OnPauseListener;

    .line 887
    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/OnPauseListener;->onPause()V

    .line 888
    goto :goto_0

    .line 889
    :cond_0
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 551
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/appcompat/app/AppCompatActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 552
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->actionBarDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    if-eqz v2, :cond_0

    .line 553
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->actionBarDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    invoke-virtual {v2}, Landroidx/appcompat/app/ActionBarDrawerToggle;->syncState()V

    .line 555
    :cond_0
    return-void
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 6

    .prologue
    .line 956
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, v1

    packed-switch v3, :pswitch_data_0

    .line 961
    move-object v3, v0

    move v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Landroidx/appcompat/app/AppCompatActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 963
    :goto_0
    return-void

    .line 958
    :pswitch_0
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Form;->fullScreenVideoUtil:Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->prepareFullScreenVideoDialog(Landroid/app/Dialog;)V

    .line 959
    goto :goto_0

    .line 956
    :pswitch_data_0
    .packed-switch 0xbd
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5

    .prologue
    .line 2437
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/appcompat/app/AppCompatActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    .line 2438
    move-object v2, v1

    invoke-interface {v2}, Landroid/view/Menu;->clear()V

    .line 2439
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Form;->customMenu:Landroid/view/Menu;

    .line 2440
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Form;->customActionBarIcon:Landroid/view/Menu;

    .line 2443
    move-object v2, v0

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Form;->customMenu:Landroid/view/Menu;

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->addAboutInfoToMenu(Landroid/view/Menu;)V

    .line 2444
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->MenuInitialize()V

    .line 2445
    const/4 v2, 0x1

    move v0, v2

    return v0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 10
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 3539
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Form;->permissionHandlers:Ljava/util/HashMap;

    move v6, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/appinventor/components/runtime/PermissionResultHandler;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    .line 3540
    move-object v4, v6

    if-nez v5, :cond_0

    .line 3542
    const-string/jumbo v5, "Form"

    const-string/jumbo v6, "Received permission response which we cannot match."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 3543
    .line 3556
    :goto_0
    return-void

    .line 3545
    :cond_0
    move-object v5, v3

    array-length v5, v5

    if-lez v5, :cond_2

    .line 3546
    move-object v5, v3

    const/4 v6, 0x0

    aget v5, v5, v6

    if-nez v5, :cond_1

    .line 3547
    move-object v5, v4

    move-object v6, v2

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x1

    invoke-interface {v5, v6, v7}, Lcom/google/appinventor/components/runtime/PermissionResultHandler;->HandlePermissionResponse(Ljava/lang/String;Z)V

    .line 3555
    :goto_1
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Form;->permissionHandlers:Ljava/util/HashMap;

    move v6, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 3556
    goto :goto_0

    .line 3549
    :cond_1
    move-object v5, v4

    move-object v6, v2

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Lcom/google/appinventor/components/runtime/PermissionResultHandler;->HandlePermissionResponse(Ljava/lang/String;Z)V

    goto :goto_1

    .line 3552
    :cond_2
    const-string/jumbo v5, "Form"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string/jumbo v8, "onRequestPermissionsResult: grantResults.length = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v7, v3

    array-length v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " requestCode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto :goto_1
.end method

.method protected onResume()V
    .locals 7

    .prologue
    .line 837
    move-object v0, p0

    move-object v2, v0

    invoke-super {v2}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 838
    const-string/jumbo v2, "Form"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "Form "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " got onResume"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 839
    move-object v2, v0

    sput-object v2, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    .line 842
    sget-boolean v2, Lcom/google/appinventor/components/runtime/Form;->applicationIsBeingClosed:Z

    if-eqz v2, :cond_0

    .line 843
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/Form;->closeApplication()V

    .line 844
    .line 852
    :goto_0
    return-void

    .line 847
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->OnAppResume()V

    .line 849
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->onResumeListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v2

    :goto_1
    move-object v2, v1

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/appinventor/components/runtime/OnResumeListener;

    .line 850
    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/OnResumeListener;->onResume()V

    .line 851
    goto :goto_1

    .line 852
    :cond_1
    goto :goto_0
.end method

.method protected onStop()V
    .locals 7

    .prologue
    .line 897
    move-object v0, p0

    move-object v2, v0

    invoke-super {v2}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 898
    const-string/jumbo v2, "Form"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "Form "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " got onStop"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 899
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->OnAppStop()V

    .line 900
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->onStopListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v2

    :goto_0
    move-object v2, v1

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/appinventor/components/runtime/OnStopListener;

    .line 901
    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/OnStopListener;->onStop()V

    .line 902
    goto :goto_0

    .line 903
    :cond_0
    return-void
.end method

.method public openAsset(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3818
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Form;->getAssetPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->openAssetInternal(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public openAssetForExtension(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3359
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->getAssetPathForExtension(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Form;->openAssetInternal(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method openAssetInternal(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3824
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    const-string/jumbo v3, "file:///android_asset/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3825
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    .line 3826
    move-object v3, v1

    const/16 v4, 0x16

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    move-object v0, v2

    .line 3830
    :goto_0
    return-object v0

    .line 3827
    :cond_0
    move-object v2, v1

    const-string/jumbo v3, "file:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3828
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/FileUtil;->openFile(Lcom/google/appinventor/components/runtime/Form;Ljava/net/URI;)Ljava/io/FileInputStream;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 3830
    :cond_1
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/FileUtil;->openFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public registerForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;)I
    .locals 6

    .prologue
    .line 762
    move-object v0, p0

    move-object v1, p1

    invoke-static {}, Lcom/google/appinventor/components/runtime/Form;->generateNewRequestCode()I

    move-result v3

    move v2, v3

    .line 763
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Form;->activityResultMap:Ljava/util/HashMap;

    move v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 764
    move v3, v2

    move v0, v3

    return v0
.end method

.method public registerForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;I)V
    .locals 8

    .prologue
    .line 779
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->activityResultMultiMap:Ljava/util/Map;

    move v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    .line 780
    move-object v3, v5

    if-nez v4, :cond_0

    .line 781
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v4

    move-object v3, v4

    .line 782
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->activityResultMultiMap:Ljava/util/Map;

    move v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v6, v3

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 784
    :cond_0
    move-object v4, v3

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 785
    return-void
.end method

.method public registerForOnClear(Lcom/google/appinventor/components/runtime/OnClearListener;)V
    .locals 4

    .prologue
    .line 910
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->onClearListeners:Ljava/util/Set;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 911
    return-void
.end method

.method public registerForOnCreateListener(Lcom/google/appinventor/components/runtime/OnCreateListener;)V
    .locals 4

    .prologue
    .line 943
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->onCreateListeners:Ljava/util/Set;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 944
    return-void
.end method

.method public registerForOnCreateOptionsMenu(Lcom/google/appinventor/components/runtime/OnCreateOptionsMenuListener;)V
    .locals 4

    .prologue
    .line 931
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->onCreateOptionsMenuListeners:Ljava/util/Set;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 932
    return-void
.end method

.method public registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V
    .locals 4

    .prologue
    .line 927
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->onDestroyListeners:Ljava/util/Set;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 928
    return-void
.end method

.method public registerForOnInitialize(Lcom/google/appinventor/components/runtime/util/OnInitializeListener;)V
    .locals 4

    .prologue
    .line 865
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->onInitializeListeners:Ljava/util/Set;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 866
    return-void
.end method

.method public registerForOnNewIntent(Lcom/google/appinventor/components/runtime/OnNewIntentListener;)V
    .locals 4

    .prologue
    .line 878
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->onNewIntentListeners:Ljava/util/Set;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 879
    return-void
.end method

.method public registerForOnOptionsItemSelected(Lcom/google/appinventor/components/runtime/OnOptionsItemSelectedListener;)V
    .locals 4

    .prologue
    .line 935
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->onOptionsItemSelectedListeners:Ljava/util/Set;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 936
    return-void
.end method

.method public registerForOnOrientationChangeListener(Lcom/google/appinventor/components/runtime/OnOrientationChangeListener;)V
    .locals 4

    .prologue
    .line 939
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->onOrientationChangeListeners:Ljava/util/Set;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 940
    return-void
.end method

.method public registerForOnPause(Lcom/google/appinventor/components/runtime/OnPauseListener;)V
    .locals 4

    .prologue
    .line 892
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->onPauseListeners:Ljava/util/Set;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 893
    return-void
.end method

.method public registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V
    .locals 4

    .prologue
    .line 855
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->onResumeListeners:Ljava/util/Set;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 856
    return-void
.end method

.method public registerForOnStop(Lcom/google/appinventor/components/runtime/OnStopListener;)V
    .locals 4

    .prologue
    .line 906
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->onStopListeners:Ljava/util/Set;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 907
    return-void
.end method

.method public registerPercentLength(Lcom/google/appinventor/components/runtime/AndroidViewComponent;ILcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;)V
    .locals 11

    .prologue
    .line 828
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->dimChanges:Ljava/util/ArrayList;

    new-instance v5, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v1

    move v8, v2

    move-object v9, v3

    invoke-direct {v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord;-><init>(Lcom/google/appinventor/components/runtime/AndroidViewComponent;ILcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 829
    return-void
.end method

.method public removeElevation()V
    .locals 4

    .prologue
    .line 3387
    move-object v0, p0

    move-object v2, v0

    :try_start_0
    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3388
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/ActionBar;->setElevation(F)V

    .line 3390
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v2, :cond_1

    .line 3391
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/material/appbar/AppBarLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3395
    .line 3396
    :cond_1
    :goto_0
    return-void

    .line 3393
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 3394
    const-string/jumbo v2, "Form"

    move-object v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 3396
    goto :goto_0
.end method

.method public runtimeFormErrorOccurredEvent(Ljava/lang/String;ILjava/lang/String;)V
    .locals 13

    .prologue
    .line 1168
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object/from16 v3, p3

    const-string/jumbo v4, "FORM_RUNTIME_ERROR"

    const-string/jumbo v5, "functionName is "

    move-object v6, v1

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1169
    const-string/jumbo v4, "FORM_RUNTIME_ERROR"

    const-string/jumbo v5, "errorNumber is "

    move v6, v2

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1170
    const-string/jumbo v4, "FORM_RUNTIME_ERROR"

    const-string/jumbo v5, "message is "

    move-object v6, v3

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1171
    move-object v4, v0

    sget-object v5, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    move-object v6, v1

    move v7, v2

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v3

    aput-object v11, v9, v10

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1172
    return-void
.end method

.method public setChildHeight(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V
    .locals 11

    .prologue
    .line 2289
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, v1

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Form;->Height()I

    move-result v4

    .line 2290
    if-nez v4, :cond_0

    .line 2292
    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->androidUIHandler:Landroid/os/Handler;

    new-instance v5, Lcom/google/appinventor/components/runtime/Form$21;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v1

    move-object v8, v2

    move v9, v3

    invoke-direct {v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/Form$21;-><init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V

    const-wide/16 v6, 0x64

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v4

    .line 2300
    :cond_0
    move v4, v3

    const/16 v5, -0x3e8

    if-gt v4, v5, :cond_1

    .line 2301
    move-object v4, v1

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Form;->Height()I

    move-result v4

    move v5, v3

    const/16 v6, -0x3e8

    add-int/lit16 v5, v5, 0x3e8

    neg-int v5, v5

    mul-int/2addr v4, v5

    const/16 v5, 0x64

    div-int/lit8 v4, v4, 0x64

    move v3, v4

    .line 2304
    :cond_1
    move-object v4, v2

    move v5, v3

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->setLastHeight(I)V

    .line 2307
    move-object v4, v2

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v4

    move v5, v3

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setChildHeightForVerticalLayout(Landroid/view/View;I)V

    .line 2308
    return-void
.end method

.method public setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V
    .locals 11

    .prologue
    .line 2264
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Form;->Width()I

    move-result v4

    move v10, v4

    move v4, v10

    move v5, v10

    .line 2265
    move v3, v5

    if-nez v4, :cond_0

    .line 2267
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->androidUIHandler:Landroid/os/Handler;

    new-instance v5, Lcom/google/appinventor/components/runtime/Form$20;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    move-object v8, v1

    move v9, v2

    invoke-direct {v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/Form$20;-><init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V

    const-wide/16 v6, 0x64

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v4

    .line 2275
    :cond_0
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string/jumbo v7, "Form.setChildWidth(): width = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " parent Width = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " child = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2276
    move v4, v2

    const/16 v5, -0x3e8

    if-gt v4, v5, :cond_1

    .line 2277
    move v4, v3

    move v5, v2

    const/16 v6, -0x3e8

    add-int/lit16 v5, v5, 0x3e8

    neg-int v5, v5

    mul-int/2addr v4, v5

    const/16 v5, 0x64

    div-int/lit8 v4, v4, 0x64

    move v2, v4

    .line 2281
    :cond_1
    move-object v4, v1

    move v5, v2

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->setLastWidth(I)V

    .line 2284
    move-object v4, v1

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v4

    move v5, v2

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setChildWidthForVerticalLayout(Landroid/view/View;I)V

    .line 2285
    return-void
.end method

.method setYandexTranslateTagline()V
    .locals 3

    .prologue
    .line 2568
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "<p><small>Language translation powered by Yandex.Translate</small></p>"

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/Form;->yandexTranslateTagline:Ljava/lang/String;

    .line 2569
    return-void
.end method

.method protected startNewForm(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 15

    .prologue
    .line 2106
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string/jumbo v6, "Form"

    const-string/jumbo v7, "startNewForm:"

    move-object v8, v1

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 2107
    new-instance v6, Landroid/content/Intent;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    move-object v3, v6

    .line 2112
    const-string/jumbo v6, "Form"

    const-string/jumbo v7, "Trying to get package name..."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 2114
    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/Form;->getPackageName()Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 2115
    const-string/jumbo v6, "Form"

    const-string/jumbo v7, "Package Name is "

    move-object v8, v4

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 2117
    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/Form;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    .line 2118
    move-object v8, v4

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    const/high16 v8, 0x10000

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    .line 2119
    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 2122
    const-string/jumbo v7, "Screen1"

    move-object v8, v1

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 2124
    const-string/jumbo v6, "Form"

    const-string/jumbo v7, "Setting Intent Class to "

    move-object v8, v4

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 2126
    move-object v6, v3

    move-object v7, v0

    move-object v8, v4

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 2127
    move-object v6, v2

    if-nez v6, :cond_0

    const-string/jumbo v6, "open another screen"

    :goto_0
    move-object v5, v6

    .line 2130
    move-object v6, v2

    if-eqz v6, :cond_1

    .line 2131
    const-string/jumbo v6, "Form"

    const-string/jumbo v7, "StartNewForm about to JSON encode:"

    move-object v8, v2

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 2132
    move-object v6, v2

    move-object v7, v5

    invoke-static {v6, v7}, Lcom/google/appinventor/components/runtime/Form;->jsonEncodeForForm(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 2133
    const-string/jumbo v6, "Form"

    const-string/jumbo v7, "StartNewForm got JSON encoding:"

    move-object v8, v2

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 2137
    :goto_1
    move-object v6, v3

    const-string/jumbo v7, "APP_INVENTOR_START"

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 2140
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lcom/google/appinventor/components/runtime/Form;->nextFormName:Ljava/lang/String;

    .line 2141
    const-string/jumbo v6, "Form"

    const-string/jumbo v7, "about to start new form"

    move-object v8, v4

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 2143
    :try_start_0
    const-string/jumbo v6, "Form"

    const-string/jumbo v7, "startNewForm starting activity:"

    move-object v8, v3

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 2144
    move-object v6, v0

    move-object v7, v3

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lcom/google/appinventor/components/runtime/Form;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2145
    move-object v6, v0

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/Form;->openAnimType:Lcom/google/appinventor/components/common/ScreenAnimation;

    invoke-static {v6, v7}, Lcom/google/appinventor/components/runtime/util/AnimationUtil;->ApplyOpenScreenAnimation(Landroid/app/Activity;Lcom/google/appinventor/components/common/ScreenAnimation;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2149
    .line 2150
    :goto_2
    return-void

    .line 2127
    :cond_0
    const-string/jumbo v6, "open another screen with start value"

    goto :goto_0

    .line 2135
    :cond_1
    const-string/jumbo v6, ""

    move-object v2, v6

    goto :goto_1

    .line 2147
    :catch_0
    move-exception v6

    move-object v6, v0

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    move-object v8, v5

    const/16 v9, 0x386

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x0

    move-object v13, v4

    aput-object v13, v11, v12

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 2150
    goto :goto_2
.end method

.method protected toastAllowed()Z
    .locals 12

    .prologue
    .line 2672
    move-object v1, p0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    move-wide v10, v4

    move-wide v4, v10

    move-wide v6, v10

    .line 2673
    move-wide v2, v6

    move-object v6, v1

    iget-wide v6, v6, Lcom/google/appinventor/components/runtime/Form;->lastToastTime:J

    sget-wide v8, Lcom/google/appinventor/components/runtime/Form;->minimumToastWait:J

    add-long/2addr v6, v8

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 2674
    move-object v4, v1

    move-wide v5, v2

    iput-wide v5, v4, Lcom/google/appinventor/components/runtime/Form;->lastToastTime:J

    .line 2675
    const/4 v4, 0x1

    move v1, v4

    .line 2677
    :goto_0
    return v1

    :cond_0
    const/4 v4, 0x0

    move v1, v4

    goto :goto_0
.end method

.method public unregisterForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;)V
    .locals 8

    .prologue
    .line 788
    move-object v0, p0

    move-object v1, p1

    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    move-object v2, v5

    .line 789
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Form;->activityResultMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_0
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    move-object v4, v5

    .line 790
    move-object v5, v1

    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 791
    move-object v5, v2

    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 793
    :cond_0
    goto :goto_0

    .line 794
    :cond_1
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_1
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    move-object v4, v5

    .line 795
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Form;->activityResultMap:Ljava/util/HashMap;

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 796
    goto :goto_1

    .line 799
    :cond_2
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Form;->activityResultMultiMap:Ljava/util/Map;

    .line 800
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    .line 801
    :goto_2
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 802
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    .line 803
    move-object v4, v6

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    move-object v6, v1

    invoke-interface {v5, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v5

    .line 804
    move-object v5, v4

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    if-nez v5, :cond_3

    .line 805
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 807
    :cond_3
    goto :goto_2

    .line 808
    :cond_4
    return-void
.end method
