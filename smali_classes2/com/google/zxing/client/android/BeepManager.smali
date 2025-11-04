.class final Lcom/google/zxing/client/android/BeepManager;
.super Ljava/lang/Object;
.source "BeepManager.java"


# static fields
.field private static final BEEP_VOLUME:F = 0.1f

.field private static final TAG:Ljava/lang/String;

.field private static final VIBRATE_DURATION:J = 0xc8L


# instance fields
.field private final activity:Landroid/app/Activity;

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private playBeep:Z

.field private vibrate:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/google/zxing/client/android/BeepManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/BeepManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/BeepManager;
    move-object v1, p1

    .local v1, "activity":Landroid/app/Activity;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 42
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/zxing/client/android/BeepManager;->activity:Landroid/app/Activity;

    .line 43
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/google/zxing/client/android/BeepManager;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 44
    return-void
.end method

.method private static buildMediaPlayer(Landroid/content/Context;)Landroid/media/MediaPlayer;
    .locals 2

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "activity":Landroid/content/Context;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "activity":Landroid/content/Context;
    return-object v0
.end method

.method private static shouldBeep(Landroid/content/SharedPreferences;Landroid/content/Context;)Z
    .locals 5

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "prefs":Landroid/content/SharedPreferences;
    move-object v1, p1

    .local v1, "activity":Landroid/content/Context;
    move-object v3, v1

    const-string/jumbo v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    move-object v2, v3

    .line 64
    const/4 v3, 0x0

    move v0, v3

    .end local v0    # "prefs":Landroid/content/SharedPreferences;
    return v0
.end method


# virtual methods
.method playBeepSoundAndVibrate()V
    .locals 6

    .prologue
    .line 47
    move-object v1, p0

    .local v1, "this":Lcom/google/zxing/client/android/BeepManager;
    move-object v3, v1

    iget-boolean v3, v3, Lcom/google/zxing/client/android/BeepManager;->playBeep:Z

    if-eqz v3, :cond_0

    move-object v3, v1

    iget-object v3, v3, Lcom/google/zxing/client/android/BeepManager;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_0

    .line 48
    move-object v3, v1

    iget-object v3, v3, Lcom/google/zxing/client/android/BeepManager;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->start()V

    .line 50
    :cond_0
    move-object v3, v1

    iget-boolean v3, v3, Lcom/google/zxing/client/android/BeepManager;->vibrate:Z

    if-eqz v3, :cond_1

    .line 51
    move-object v3, v1

    iget-object v3, v3, Lcom/google/zxing/client/android/BeepManager;->activity:Landroid/app/Activity;

    const-string/jumbo v4, "vibrator"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    move-object v2, v3

    .line 52
    .local v2, "vibrator":Landroid/os/Vibrator;
    move-object v3, v2

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/os/Vibrator;->vibrate(J)V

    .line 54
    .end local v2    # "vibrator":Landroid/os/Vibrator;
    :cond_1
    return-void
.end method
