.class Lnl/frankkie/ouyalauncher/MainActivity$5;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnl/frankkie/ouyalauncher/MainActivity;->addToFolder(Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnl/frankkie/ouyalauncher/MainActivity;

.field final synthetic val$folders:[Ljava/lang/String;

.field final synthetic val$info:Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;


# direct methods
.method constructor <init>(Lnl/frankkie/ouyalauncher/MainActivity;Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 359
    iput-object p1, p0, Lnl/frankkie/ouyalauncher/MainActivity$5;->this$0:Lnl/frankkie/ouyalauncher/MainActivity;

    iput-object p2, p0, Lnl/frankkie/ouyalauncher/MainActivity$5;->val$info:Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;

    iput-object p3, p0, Lnl/frankkie/ouyalauncher/MainActivity$5;->val$folders:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 362
    if-nez p2, :cond_0

    .line 363
    iget-object v0, p0, Lnl/frankkie/ouyalauncher/MainActivity$5;->this$0:Lnl/frankkie/ouyalauncher/MainActivity;

    iget-object v1, p0, Lnl/frankkie/ouyalauncher/MainActivity$5;->val$info:Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;

    invoke-virtual {v0, v1}, Lnl/frankkie/ouyalauncher/MainActivity;->makeNewFolder(Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;)V

    .line 367
    :goto_0
    return-void

    .line 365
    :cond_0
    iget-object v0, p0, Lnl/frankkie/ouyalauncher/MainActivity$5;->this$0:Lnl/frankkie/ouyalauncher/MainActivity;

    iget-object v1, p0, Lnl/frankkie/ouyalauncher/MainActivity$5;->val$info:Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;

    iget-object v2, p0, Lnl/frankkie/ouyalauncher/MainActivity$5;->val$folders:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-virtual {v0, v1, v2}, Lnl/frankkie/ouyalauncher/MainActivity;->addToFolder(Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;Ljava/lang/String;)V

    goto :goto_0
.end method
