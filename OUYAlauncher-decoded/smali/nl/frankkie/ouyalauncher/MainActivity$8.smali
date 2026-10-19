.class Lnl/frankkie/ouyalauncher/MainActivity$8;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnl/frankkie/ouyalauncher/MainActivity;->fillTable(Lnl/frankkie/ouyalauncher/IGridItem;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnl/frankkie/ouyalauncher/MainActivity;

.field final synthetic val$info:Lnl/frankkie/ouyalauncher/IGridItem;


# direct methods
.method constructor <init>(Lnl/frankkie/ouyalauncher/MainActivity;Lnl/frankkie/ouyalauncher/IGridItem;)V
    .locals 0

    .prologue
    .line 669
    iput-object p1, p0, Lnl/frankkie/ouyalauncher/MainActivity$8;->this$0:Lnl/frankkie/ouyalauncher/MainActivity;

    iput-object p2, p0, Lnl/frankkie/ouyalauncher/MainActivity$8;->val$info:Lnl/frankkie/ouyalauncher/IGridItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 672
    iget-object v2, p0, Lnl/frankkie/ouyalauncher/MainActivity$8;->val$info:Lnl/frankkie/ouyalauncher/IGridItem;

    check-cast v2, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;

    iget-object v1, v2, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->intent:Landroid/content/Intent;

    .line 675
    .local v1, "i":Landroid/content/Intent;
    :try_start_0
    iget-object v3, p0, Lnl/frankkie/ouyalauncher/MainActivity$8;->this$0:Lnl/frankkie/ouyalauncher/MainActivity;

    iget-object v2, p0, Lnl/frankkie/ouyalauncher/MainActivity$8;->val$info:Lnl/frankkie/ouyalauncher/IGridItem;

    check-cast v2, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;

    invoke-static {v3, v2}, Lnl/frankkie/ouyalauncher/Util;->logAppLaunch(Landroid/content/Context;Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;)V

    .line 676
    iget-object v2, p0, Lnl/frankkie/ouyalauncher/MainActivity$8;->this$0:Lnl/frankkie/ouyalauncher/MainActivity;

    invoke-virtual {v2, v1}, Lnl/frankkie/ouyalauncher/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 680
    :goto_0
    return-void

    .line 677
    :catch_0
    move-exception v0

    .line 678
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
