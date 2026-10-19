.class Lnl/frankkie/ouyalauncher/BackgroundActivity$1;
.super Ljava/lang/Object;
.source "BackgroundActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnl/frankkie/ouyalauncher/BackgroundActivity;->fillTable(Lnl/frankkie/ouyalauncher/BackgroundActivity$MyBackground;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnl/frankkie/ouyalauncher/BackgroundActivity;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnl/frankkie/ouyalauncher/BackgroundActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lnl/frankkie/ouyalauncher/BackgroundActivity$1;->this$0:Lnl/frankkie/ouyalauncher/BackgroundActivity;

    iput-object p2, p0, Lnl/frankkie/ouyalauncher/BackgroundActivity$1;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 80
    iget-object v0, p0, Lnl/frankkie/ouyalauncher/BackgroundActivity$1;->this$0:Lnl/frankkie/ouyalauncher/BackgroundActivity;

    iget-object v1, p0, Lnl/frankkie/ouyalauncher/BackgroundActivity$1;->val$path:Ljava/lang/String;

    invoke-static {v0, v1}, Lnl/frankkie/ouyalauncher/BackgroundActivity;->access$000(Lnl/frankkie/ouyalauncher/BackgroundActivity;Ljava/lang/String;)V

    .line 81
    return-void
.end method
