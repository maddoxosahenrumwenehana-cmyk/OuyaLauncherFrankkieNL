.class Lnl/frankkie/ouyalauncher/MainOld$MyAdapter$1;
.super Ljava/lang/Object;
.source "MainOld.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnl/frankkie/ouyalauncher/MainOld$MyAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnl/frankkie/ouyalauncher/MainOld$MyAdapter;

.field final synthetic val$info:Lnl/frankkie/ouyalauncher/AppInfo;


# direct methods
.method constructor <init>(Lnl/frankkie/ouyalauncher/MainOld$MyAdapter;Lnl/frankkie/ouyalauncher/AppInfo;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lnl/frankkie/ouyalauncher/MainOld$MyAdapter$1;->this$1:Lnl/frankkie/ouyalauncher/MainOld$MyAdapter;

    iput-object p2, p0, Lnl/frankkie/ouyalauncher/MainOld$MyAdapter$1;->val$info:Lnl/frankkie/ouyalauncher/AppInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 173
    iget-object v1, p0, Lnl/frankkie/ouyalauncher/MainOld$MyAdapter$1;->val$info:Lnl/frankkie/ouyalauncher/AppInfo;

    iget-object v0, v1, Lnl/frankkie/ouyalauncher/AppInfo;->intent:Landroid/content/Intent;

    .line 175
    .local v0, "i":Landroid/content/Intent;
    :try_start_0
    iget-object v1, p0, Lnl/frankkie/ouyalauncher/MainOld$MyAdapter$1;->this$1:Lnl/frankkie/ouyalauncher/MainOld$MyAdapter;

    iget-object v1, v1, Lnl/frankkie/ouyalauncher/MainOld$MyAdapter;->this$0:Lnl/frankkie/ouyalauncher/MainOld;

    invoke-virtual {v1, v0}, Lnl/frankkie/ouyalauncher/MainOld;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :goto_0
    return-void

    .line 176
    :catch_0
    move-exception v1

    goto :goto_0
.end method
