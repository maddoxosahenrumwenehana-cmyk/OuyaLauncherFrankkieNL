.class Lnl/frankkie/ouyalauncher/MainActivity$9;
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


# direct methods
.method constructor <init>(Lnl/frankkie/ouyalauncher/MainActivity;)V
    .locals 0

    .prologue
    .line 685
    iput-object p1, p0, Lnl/frankkie/ouyalauncher/MainActivity$9;->this$0:Lnl/frankkie/ouyalauncher/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 688
    iget-object v0, p0, Lnl/frankkie/ouyalauncher/MainActivity$9;->this$0:Lnl/frankkie/ouyalauncher/MainActivity;

    const-string v1, ""

    iput-object v1, v0, Lnl/frankkie/ouyalauncher/MainActivity;->currentFolder:Ljava/lang/String;

    .line 689
    iget-object v0, p0, Lnl/frankkie/ouyalauncher/MainActivity$9;->this$0:Lnl/frankkie/ouyalauncher/MainActivity;

    invoke-virtual {v0}, Lnl/frankkie/ouyalauncher/MainActivity;->filter()V

    .line 690
    iget-object v0, p0, Lnl/frankkie/ouyalauncher/MainActivity$9;->this$0:Lnl/frankkie/ouyalauncher/MainActivity;

    invoke-virtual {v0}, Lnl/frankkie/ouyalauncher/MainActivity;->fillTable()V

    .line 691
    return-void
.end method
