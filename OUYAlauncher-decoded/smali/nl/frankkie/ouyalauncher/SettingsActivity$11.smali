.class Lnl/frankkie/ouyalauncher/SettingsActivity$11;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lnl/frankkie/ouyalauncher/SettingsActivity;


# direct methods
.method constructor <init>(Lnl/frankkie/ouyalauncher/SettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lnl/frankkie/ouyalauncher/SettingsActivity$11;->this$0:Lnl/frankkie/ouyalauncher/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lnl/frankkie/ouyalauncher/SettingsActivity$11;->this$0:Lnl/frankkie/ouyalauncher/SettingsActivity;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lnl/frankkie/ouyalauncher/WebserverActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lnl/frankkie/ouyalauncher/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method