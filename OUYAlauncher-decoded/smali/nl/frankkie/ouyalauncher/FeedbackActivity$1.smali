.class Lnl/frankkie/ouyalauncher/FeedbackActivity$1;
.super Ljava/lang/Object;
.source "FeedbackActivity.java"

.implements Landroid/view/View$OnClickListener;

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnl/frankkie/ouyalauncher/FeedbackActivity;->initUI()V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.field final synthetic this$0:Lnl/frankkie/ouyalauncher/FeedbackActivity;

.method constructor <init>(Lnl/frankkie/ouyalauncher/FeedbackActivity;)V
    .locals 0
    iput-object p1, p0, Lnl/frankkie/ouyalauncher/FeedbackActivity$1;->this$0:Lnl/frankkie/ouyalauncher/FeedbackActivity;
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    iget-object v0, p0, Lnl/frankkie/ouyalauncher/FeedbackActivity$1;->this$0:Lnl/frankkie/ouyalauncher/FeedbackActivity;
    iget-object v0, v0, Lnl/frankkie/ouyalauncher/FeedbackActivity;->editText:Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
    move-result-object v0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    move-result-object v1

    new-instance v2, Landroid/content/Intent;
    const-string v3, "android.intent.action.SENDTO"
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    const-string v3, "mailto:maddoxosahenrumwenehana@gmail.com"
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    move-result-object v3
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    const-string v3, "android.intent.extra.SUBJECT"
    const-string v4, "MadOS Launcher Feedback"
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    const-string v3, "android.intent.extra.TEXT"
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    const-string v3, "Send feedback"
    invoke-static {v2, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;
    move-result-object v2
    iget-object v0, p0, Lnl/frankkie/ouyalauncher/FeedbackActivity$1;->this$0:Lnl/frankkie/ouyalauncher/FeedbackActivity;
    :try_start_email
    invoke-virtual {v0, v2}, Lnl/frankkie/ouyalauncher/FeedbackActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_email
    .catch Ljava/lang/Exception; {:try_start_email .. :try_end_email} :no_email_app
    invoke-static {v0}, Lnl/frankkie/ouyalauncher/Util;->logSendFeedback(Landroid/content/Context;)V
    return-void
    :no_email_app
    move-exception v3
    const-string v4, "No email app available. Send to maddoxosahenrumwenehana@gmail.com"
    invoke-virtual {v0, v4}, Lnl/frankkie/ouyalauncher/FeedbackActivity;->toast(Ljava/lang/String;)V
    return-void
.end method
