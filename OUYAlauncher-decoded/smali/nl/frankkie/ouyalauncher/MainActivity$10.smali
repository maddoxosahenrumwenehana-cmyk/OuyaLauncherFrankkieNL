.class Lnl/frankkie/ouyalauncher/MainActivity$10;
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
    .line 695
    iput-object p1, p0, Lnl/frankkie/ouyalauncher/MainActivity$10;->this$0:Lnl/frankkie/ouyalauncher/MainActivity;

    iput-object p2, p0, Lnl/frankkie/ouyalauncher/MainActivity$10;->val$info:Lnl/frankkie/ouyalauncher/IGridItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 698
    iget-object v0, p0, Lnl/frankkie/ouyalauncher/MainActivity$10;->this$0:Lnl/frankkie/ouyalauncher/MainActivity;

    iget-object v1, p0, Lnl/frankkie/ouyalauncher/MainActivity$10;->val$info:Lnl/frankkie/ouyalauncher/IGridItem;

    invoke-interface {v1}, Lnl/frankkie/ouyalauncher/IGridItem;->getFolderName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnl/frankkie/ouyalauncher/MainActivity;->currentFolder:Ljava/lang/String;

    .line 699
    iget-object v0, p0, Lnl/frankkie/ouyalauncher/MainActivity$10;->this$0:Lnl/frankkie/ouyalauncher/MainActivity;

    invoke-virtual {v0}, Lnl/frankkie/ouyalauncher/MainActivity;->filter()V

    .line 700
    iget-object v0, p0, Lnl/frankkie/ouyalauncher/MainActivity$10;->this$0:Lnl/frankkie/ouyalauncher/MainActivity;

    invoke-virtual {v0}, Lnl/frankkie/ouyalauncher/MainActivity;->fillTable()V

    .line 701
    return-void
.end method
