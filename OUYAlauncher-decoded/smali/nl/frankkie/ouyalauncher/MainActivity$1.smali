.class Lnl/frankkie/ouyalauncher/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnl/frankkie/ouyalauncher/MainActivity;->showFilters()V
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
    .line 90
    iput-object p1, p0, Lnl/frankkie/ouyalauncher/MainActivity$1;->this$0:Lnl/frankkie/ouyalauncher/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 93
    iget-object v0, p0, Lnl/frankkie/ouyalauncher/MainActivity$1;->this$0:Lnl/frankkie/ouyalauncher/MainActivity;

    iput p2, v0, Lnl/frankkie/ouyalauncher/MainActivity;->appType:I

    .line 94
    iget-object v0, p0, Lnl/frankkie/ouyalauncher/MainActivity$1;->this$0:Lnl/frankkie/ouyalauncher/MainActivity;

    invoke-virtual {v0}, Lnl/frankkie/ouyalauncher/MainActivity;->filter()V

    .line 95
    iget-object v0, p0, Lnl/frankkie/ouyalauncher/MainActivity$1;->this$0:Lnl/frankkie/ouyalauncher/MainActivity;

    invoke-virtual {v0}, Lnl/frankkie/ouyalauncher/MainActivity;->fillTable()V

    .line 96
    iget-object v0, p0, Lnl/frankkie/ouyalauncher/MainActivity$1;->this$0:Lnl/frankkie/ouyalauncher/MainActivity;

    invoke-static {v0, p2}, Lnl/frankkie/ouyalauncher/Util;->logFilterChange(Landroid/content/Context;I)V

    .line 97
    return-void
.end method
