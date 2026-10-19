.class Lnl/frankkie/ouyalauncher/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnl/frankkie/ouyalauncher/MainActivity;->makeFolderMenu(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnl/frankkie/ouyalauncher/MainActivity;

.field final synthetic val$folderName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnl/frankkie/ouyalauncher/MainActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 301
    iput-object p1, p0, Lnl/frankkie/ouyalauncher/MainActivity$4;->this$0:Lnl/frankkie/ouyalauncher/MainActivity;

    iput-object p2, p0, Lnl/frankkie/ouyalauncher/MainActivity$4;->val$folderName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 304
    if-nez p2, :cond_0

    .line 306
    iget-object v0, p0, Lnl/frankkie/ouyalauncher/MainActivity$4;->this$0:Lnl/frankkie/ouyalauncher/MainActivity;

    iget-object v1, p0, Lnl/frankkie/ouyalauncher/MainActivity$4;->val$folderName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnl/frankkie/ouyalauncher/MainActivity;->removeFolder(Ljava/lang/String;)V

    .line 308
    :cond_0
    return-void
.end method
