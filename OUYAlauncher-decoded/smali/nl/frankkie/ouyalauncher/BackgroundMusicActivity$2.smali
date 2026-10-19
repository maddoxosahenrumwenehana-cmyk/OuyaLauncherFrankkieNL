.class Lnl/frankkie/ouyalauncher/BackgroundMusicActivity$2;
.super Ljava/lang/Object;
.source "BackgroundMusicActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnl/frankkie/ouyalauncher/BackgroundMusicActivity;->fillTable(Lnl/frankkie/ouyalauncher/BackgroundMusicActivity$MyMusic;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnl/frankkie/ouyalauncher/BackgroundMusicActivity;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnl/frankkie/ouyalauncher/BackgroundMusicActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lnl/frankkie/ouyalauncher/BackgroundMusicActivity$2;->this$0:Lnl/frankkie/ouyalauncher/BackgroundMusicActivity;

    iput-object p2, p0, Lnl/frankkie/ouyalauncher/BackgroundMusicActivity$2;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 254
    iget-object v0, p0, Lnl/frankkie/ouyalauncher/BackgroundMusicActivity$2;->this$0:Lnl/frankkie/ouyalauncher/BackgroundMusicActivity;

    iget-object v1, p0, Lnl/frankkie/ouyalauncher/BackgroundMusicActivity$2;->val$path:Ljava/lang/String;

    invoke-static {v0, v1}, Lnl/frankkie/ouyalauncher/BackgroundMusicActivity;->access$100(Lnl/frankkie/ouyalauncher/BackgroundMusicActivity;Ljava/lang/String;)V

    .line 255
    return-void
.end method
