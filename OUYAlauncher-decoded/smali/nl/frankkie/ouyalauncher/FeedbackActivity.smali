.class public Lnl/frankkie/ouyalauncher/FeedbackActivity;
.super Landroid/app/Activity;
.source "FeedbackActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnl/frankkie/ouyalauncher/FeedbackActivity$SendFeedbackTask;
    }
.end annotation


# instance fields
.field editText:Landroid/widget/EditText;

.field handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 129
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lnl/frankkie/ouyalauncher/FeedbackActivity;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public initUI()V
    .locals 3

    .prologue
    const/16 v2, 0x400

    .line 48
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lnl/frankkie/ouyalauncher/FeedbackActivity;->requestWindowFeature(I)Z

    .line 49
    invoke-virtual {p0}, Lnl/frankkie/ouyalauncher/FeedbackActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 51
    const v1, 0x7f030003

    invoke-virtual {p0, v1}, Lnl/frankkie/ouyalauncher/FeedbackActivity;->setContentView(I)V

    .line 53
    invoke-static {p0}, Lnl/frankkie/ouyalauncher/Util;->setLogo(Landroid/app/Activity;)V

    .line 54
    invoke-static {p0}, Lnl/frankkie/ouyalauncher/Util;->setClock(Landroid/app/Activity;)V

    .line 55
    const v1, 0x7f090008

    invoke-virtual {p0, v1}, Lnl/frankkie/ouyalauncher/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lnl/frankkie/ouyalauncher/FeedbackActivity;->editText:Landroid/widget/EditText;

    .line 56
    const v1, 0x7f090009

    invoke-virtual {p0, v1}, Lnl/frankkie/ouyalauncher/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 57
    .local v0, "send":Landroid/widget/Button;
    new-instance v1, Lnl/frankkie/ouyalauncher/FeedbackActivity$1;

    invoke-direct {v1, p0}, Lnl/frankkie/ouyalauncher/FeedbackActivity$1;-><init>(Lnl/frankkie/ouyalauncher/FeedbackActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lnl/frankkie/ouyalauncher/FeedbackActivity;->initUI()V

    .line 45
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 142
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 143
    invoke-static {p0}, Lnl/frankkie/ouyalauncher/Util;->onStart(Landroid/content/Context;)V

    .line 145
    const-string v0, "MDHSMF65TV4JCSW3QN63"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 150
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 151
    invoke-static {p0}, Lnl/frankkie/ouyalauncher/Util;->onStop(Landroid/content/Context;)V

    .line 153
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 154
    return-void
.end method

.method public toast(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 132
    iget-object v0, p0, Lnl/frankkie/ouyalauncher/FeedbackActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lnl/frankkie/ouyalauncher/FeedbackActivity$2;

    invoke-direct {v1, p0, p1}, Lnl/frankkie/ouyalauncher/FeedbackActivity$2;-><init>(Lnl/frankkie/ouyalauncher/FeedbackActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 138
    return-void
.end method
