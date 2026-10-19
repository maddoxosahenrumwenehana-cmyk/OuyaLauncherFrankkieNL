.class public Lnl/frankkie/ouyalauncher/BackgroundMusicService;
.super Landroid/app/Service;
.source "BackgroundMusicService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;


# static fields
.field public static final CMD_CHECK:Ljava/lang/String; = "check"

.field public static final CMD_RESTART:Ljava/lang/String; = "restart"

.field public static final CMD_START:Ljava/lang/String; = "start"

.field public static final CMD_STOP:Ljava/lang/String; = "stop"


# instance fields
.field context:Landroid/content/Context;

.field mediaPlayer:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static isAppInForeground(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 118
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    const-string v0, "BAXY"

    const-string v2, "Baxy is in the foreground :-)"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 123
    :goto_0
    return v0

    .line 122
    :cond_0
    const-string v0, "BAXY"

    const-string v1, "Baxy is NOT in the foreground :-( "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 123
    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 30
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 112
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 113
    iput-object p0, p0, Lnl/frankkie/ouyalauncher/BackgroundMusicService;->context:Landroid/content/Context;

    .line 114
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;
    .param p2, "i"    # I
    .param p3, "i2"    # I

    .prologue
    .line 140
    const-string v0, "BAXY"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaPlayer error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const/4 v0, 0x1

    return v0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;

    .prologue
    .line 129
    iget-object v0, p0, Lnl/frankkie/ouyalauncher/BackgroundMusicService;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    iget-object v0, p0, Lnl/frankkie/ouyalauncher/BackgroundMusicService;->context:Landroid/content/Context;

    invoke-static {v0}, Lnl/frankkie/ouyalauncher/BackgroundMusicService;->isAppInForeground(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 134
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 36
    iput-object p0, p0, Lnl/frankkie/ouyalauncher/BackgroundMusicService;->context:Landroid/content/Context;

    .line 37
    const-string v4, "cmd"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "command":Ljava/lang/String;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 39
    .local v3, "prefs":Landroid/content/SharedPreferences;
    const-string v4, "musicFile"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 40
    .local v2, "filePath":Ljava/lang/String;
    const-string v4, "start"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 41
    iget-object v4, p0, Lnl/frankkie/ouyalauncher/BackgroundMusicService;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v4, :cond_0

    .line 42
    new-instance v4, Landroid/media/MediaPlayer;

    invoke-direct {v4}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v4, p0, Lnl/frankkie/ouyalauncher/BackgroundMusicService;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 44
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v6, :cond_1

    .line 46
    :try_start_0
    iget-object v4, p0, Lnl/frankkie/ouyalauncher/BackgroundMusicService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 47
    iget-object v4, p0, Lnl/frankkie/ouyalauncher/BackgroundMusicService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 48
    iget-object v4, p0, Lnl/frankkie/ouyalauncher/BackgroundMusicService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 49
    iget-object v4, p0, Lnl/frankkie/ouyalauncher/BackgroundMusicService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :cond_1
    :goto_0
    return v6

    .line 50
    :catch_0
    move-exception v1

    .line 51
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 54
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    const-string v4, "stop"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 55
    iget-object v4, p0, Lnl/frankkie/ouyalauncher/BackgroundMusicService;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v4, :cond_1

    .line 56
    iget-object v4, p0, Lnl/frankkie/ouyalauncher/BackgroundMusicService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->stop()V

    .line 57
    iget-object v4, p0, Lnl/frankkie/ouyalauncher/BackgroundMusicService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->release()V

    .line 58
    iput-object v7, p0, Lnl/frankkie/ouyalauncher/BackgroundMusicService;->mediaPlayer:Landroid/media/MediaPlayer;

    goto :goto_0

    .line 60
    :cond_3
    const-string v4, "restart"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 61
    iget-object v4, p0, Lnl/frankkie/ouyalauncher/BackgroundMusicService;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v4, :cond_4

    .line 62
    iget-object v4, p0, Lnl/frankkie/ouyalauncher/BackgroundMusicService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->stop()V

    .line 63
    iget-object v4, p0, Lnl/frankkie/ouyalauncher/BackgroundMusicService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->release()V

    .line 64
    iput-object v7, p0, Lnl/frankkie/ouyalauncher/BackgroundMusicService;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 67
    :cond_4
    iget-object v4, p0, Lnl/frankkie/ouyalauncher/BackgroundMusicService;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v4, :cond_5

    .line 68
    new-instance v4, Landroid/media/MediaPlayer;

    invoke-direct {v4}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v4, p0, Lnl/frankkie/ouyalauncher/BackgroundMusicService;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 70
    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v6, :cond_1

    .line 72
    :try_start_1
    iget-object v4, p0, Lnl/frankkie/ouyalauncher/BackgroundMusicService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 73
    iget-object v4, p0, Lnl/frankkie/ouyalauncher/BackgroundMusicService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 74
    iget-object v4, p0, Lnl/frankkie/ouyalauncher/BackgroundMusicService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 75
    iget-object v4, p0, Lnl/frankkie/ouyalauncher/BackgroundMusicService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 76
    :catch_1
    move-exception v1

    .line 77
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 80
    .end local v1    # "e":Ljava/io/IOException;
    :cond_6
    const-string v4, "check"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 83
    invoke-static {p0}, Lnl/frankkie/ouyalauncher/BackgroundMusicService;->isAppInForeground(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 84
    iget-object v4, p0, Lnl/frankkie/ouyalauncher/BackgroundMusicService;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v4, :cond_1

    .line 85
    iget-object v4, p0, Lnl/frankkie/ouyalauncher/BackgroundMusicService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->stop()V

    .line 86
    iget-object v4, p0, Lnl/frankkie/ouyalauncher/BackgroundMusicService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->release()V

    .line 87
    iput-object v7, p0, Lnl/frankkie/ouyalauncher/BackgroundMusicService;->mediaPlayer:Landroid/media/MediaPlayer;

    goto :goto_0

    .line 90
    :cond_7
    iget-object v4, p0, Lnl/frankkie/ouyalauncher/BackgroundMusicService;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v4, :cond_8

    .line 91
    new-instance v4, Landroid/media/MediaPlayer;

    invoke-direct {v4}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v4, p0, Lnl/frankkie/ouyalauncher/BackgroundMusicService;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 93
    :cond_8
    iget-object v4, p0, Lnl/frankkie/ouyalauncher/BackgroundMusicService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v4

    if-nez v4, :cond_1

    .line 94
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v6, :cond_1

    .line 96
    :try_start_2
    iget-object v4, p0, Lnl/frankkie/ouyalauncher/BackgroundMusicService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 97
    iget-object v4, p0, Lnl/frankkie/ouyalauncher/BackgroundMusicService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 98
    iget-object v4, p0, Lnl/frankkie/ouyalauncher/BackgroundMusicService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 99
    iget-object v4, p0, Lnl/frankkie/ouyalauncher/BackgroundMusicService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 100
    :catch_2
    move-exception v1

    .line 101
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0
.end method
