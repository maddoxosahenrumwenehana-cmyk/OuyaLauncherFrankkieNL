.class public Lnl/frankkie/ouyalauncher/BackgroundMusicActivity$MyMusic;
.super Ljava/lang/Object;
.source "BackgroundMusicActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnl/frankkie/ouyalauncher/BackgroundMusicActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyMusic"
.end annotation


# instance fields
.field isSelected:Z

.field name:Ljava/lang/String;

.field path:Ljava/lang/String;

.field final synthetic this$0:Lnl/frankkie/ouyalauncher/BackgroundMusicActivity;


# direct methods
.method public constructor <init>(Lnl/frankkie/ouyalauncher/BackgroundMusicActivity;)V
    .locals 1

    .prologue
    .line 106
    iput-object p1, p0, Lnl/frankkie/ouyalauncher/BackgroundMusicActivity$MyMusic;->this$0:Lnl/frankkie/ouyalauncher/BackgroundMusicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnl/frankkie/ouyalauncher/BackgroundMusicActivity$MyMusic;->isSelected:Z

    return-void
.end method
