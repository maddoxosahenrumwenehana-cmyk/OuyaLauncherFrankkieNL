.class Lnl/frankkie/ouyalauncher/RunningAppsActivity$1;
.super Ljava/lang/Object;
.source "RunningAppsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnl/frankkie/ouyalauncher/RunningAppsActivity;->getView(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnl/frankkie/ouyalauncher/RunningAppsActivity;

.field final synthetic val$info:Landroid/app/ActivityManager$RunningTaskInfo;


# direct methods
.method constructor <init>(Lnl/frankkie/ouyalauncher/RunningAppsActivity;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lnl/frankkie/ouyalauncher/RunningAppsActivity$1;->this$0:Lnl/frankkie/ouyalauncher/RunningAppsActivity;

    iput-object p2, p0, Lnl/frankkie/ouyalauncher/RunningAppsActivity$1;->val$info:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 111
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 112
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Lnl/frankkie/ouyalauncher/RunningAppsActivity$1;->val$info:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 116
    :try_start_0
    iget-object v1, p0, Lnl/frankkie/ouyalauncher/RunningAppsActivity$1;->this$0:Lnl/frankkie/ouyalauncher/RunningAppsActivity;

    invoke-virtual {v1, v0}, Lnl/frankkie/ouyalauncher/RunningAppsActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :goto_0
    return-void

    .line 117
    :catch_0
    move-exception v1

    goto :goto_0
.end method
