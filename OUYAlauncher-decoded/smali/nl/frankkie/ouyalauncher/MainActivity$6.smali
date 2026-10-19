.class Lnl/frankkie/ouyalauncher/MainActivity$6;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnl/frankkie/ouyalauncher/MainActivity;->makeNewFolder(Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnl/frankkie/ouyalauncher/MainActivity;

.field final synthetic val$editText:Landroid/widget/EditText;

.field final synthetic val$info:Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;


# direct methods
.method constructor <init>(Lnl/frankkie/ouyalauncher/MainActivity;Landroid/widget/EditText;Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;)V
    .locals 0

    .prologue
    .line 378
    iput-object p1, p0, Lnl/frankkie/ouyalauncher/MainActivity$6;->this$0:Lnl/frankkie/ouyalauncher/MainActivity;

    iput-object p2, p0, Lnl/frankkie/ouyalauncher/MainActivity$6;->val$editText:Landroid/widget/EditText;

    iput-object p3, p0, Lnl/frankkie/ouyalauncher/MainActivity$6;->val$info:Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 381
    iget-object v1, p0, Lnl/frankkie/ouyalauncher/MainActivity$6;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 382
    .local v0, "folderName":Ljava/lang/String;
    iget-object v1, p0, Lnl/frankkie/ouyalauncher/MainActivity$6;->this$0:Lnl/frankkie/ouyalauncher/MainActivity;

    iget-object v2, p0, Lnl/frankkie/ouyalauncher/MainActivity$6;->val$info:Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;

    invoke-virtual {v1, v2, v0}, Lnl/frankkie/ouyalauncher/MainActivity;->addToFolder(Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;Ljava/lang/String;)V

    .line 383
    return-void
.end method
