.class Lnl/frankkie/ouyalauncher/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnl/frankkie/ouyalauncher/MainActivity;->makeAppMenu(Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnl/frankkie/ouyalauncher/MainActivity;

.field final synthetic val$info:Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;


# direct methods
.method constructor <init>(Lnl/frankkie/ouyalauncher/MainActivity;Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lnl/frankkie/ouyalauncher/MainActivity$3;->this$0:Lnl/frankkie/ouyalauncher/MainActivity;

    iput-object p2, p0, Lnl/frankkie/ouyalauncher/MainActivity$3;->val$info:Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 261
    packed-switch p2, :pswitch_data_0

    .line 287
    :goto_0
    return-void

    .line 263
    :pswitch_0
    iget-object v0, p0, Lnl/frankkie/ouyalauncher/MainActivity$3;->this$0:Lnl/frankkie/ouyalauncher/MainActivity;

    invoke-virtual {v0}, Lnl/frankkie/ouyalauncher/MainActivity;->showFilters()V

    goto :goto_0

    .line 267
    :pswitch_1
    iget-object v0, p0, Lnl/frankkie/ouyalauncher/MainActivity$3;->this$0:Lnl/frankkie/ouyalauncher/MainActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnl/frankkie/ouyalauncher/MainActivity;->showAppInfo(Z)V

    goto :goto_0

    .line 271
    :pswitch_2
    iget-object v0, p0, Lnl/frankkie/ouyalauncher/MainActivity$3;->val$info:Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;

    invoke-virtual {v0}, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->isFavorite()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lnl/frankkie/ouyalauncher/MainActivity$3;->this$0:Lnl/frankkie/ouyalauncher/MainActivity;

    invoke-virtual {v0}, Lnl/frankkie/ouyalauncher/MainActivity;->removeFromFavorites()V

    goto :goto_0

    .line 274
    :cond_0
    iget-object v0, p0, Lnl/frankkie/ouyalauncher/MainActivity$3;->this$0:Lnl/frankkie/ouyalauncher/MainActivity;

    invoke-virtual {v0}, Lnl/frankkie/ouyalauncher/MainActivity;->addToFavorites()V

    goto :goto_0

    .line 279
    :pswitch_3
    iget-object v0, p0, Lnl/frankkie/ouyalauncher/MainActivity$3;->val$info:Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;

    invoke-virtual {v0}, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->isInFolder()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 280
    iget-object v0, p0, Lnl/frankkie/ouyalauncher/MainActivity$3;->this$0:Lnl/frankkie/ouyalauncher/MainActivity;

    iget-object v1, p0, Lnl/frankkie/ouyalauncher/MainActivity$3;->val$info:Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;

    invoke-virtual {v0, v1}, Lnl/frankkie/ouyalauncher/MainActivity;->removeFromFolder(Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;)V

    goto :goto_0

    .line 282
    :cond_1
    iget-object v0, p0, Lnl/frankkie/ouyalauncher/MainActivity$3;->this$0:Lnl/frankkie/ouyalauncher/MainActivity;

    iget-object v1, p0, Lnl/frankkie/ouyalauncher/MainActivity$3;->val$info:Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;

    invoke-virtual {v0, v1}, Lnl/frankkie/ouyalauncher/MainActivity;->addToFolder(Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;)V

    goto :goto_0

    .line 261
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
