.class Lnl/frankkie/ouyalauncher/LogoActivity$1;
.super Ljava/lang/Object;
.source "LogoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnl/frankkie/ouyalauncher/LogoActivity;->fillTable(Lnl/frankkie/ouyalauncher/LogoActivity$MyLogo;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnl/frankkie/ouyalauncher/LogoActivity;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnl/frankkie/ouyalauncher/LogoActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lnl/frankkie/ouyalauncher/LogoActivity$1;->this$0:Lnl/frankkie/ouyalauncher/LogoActivity;

    iput-object p2, p0, Lnl/frankkie/ouyalauncher/LogoActivity$1;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 86
    iget-object v0, p0, Lnl/frankkie/ouyalauncher/LogoActivity$1;->this$0:Lnl/frankkie/ouyalauncher/LogoActivity;

    iget-object v1, p0, Lnl/frankkie/ouyalauncher/LogoActivity$1;->val$path:Ljava/lang/String;

    invoke-static {v0, v1}, Lnl/frankkie/ouyalauncher/LogoActivity;->access$000(Lnl/frankkie/ouyalauncher/LogoActivity;Ljava/lang/String;)V

    .line 87
    return-void
.end method
