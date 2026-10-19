.class public Lnl/frankkie/ouyalauncher/FeedbackActivity$SendFeedbackTask;
.super Landroid/os/AsyncTask;
.source "FeedbackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnl/frankkie/ouyalauncher/FeedbackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SendFeedbackTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field dialog:Landroid/app/Dialog;

.field final synthetic this$0:Lnl/frankkie/ouyalauncher/FeedbackActivity;


# direct methods
.method public constructor <init>(Lnl/frankkie/ouyalauncher/FeedbackActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    iput-object p1, p0, Lnl/frankkie/ouyalauncher/FeedbackActivity$SendFeedbackTask;->this$0:Lnl/frankkie/ouyalauncher/FeedbackActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 73
    iput-object p2, p0, Lnl/frankkie/ouyalauncher/FeedbackActivity$SendFeedbackTask;->context:Landroid/content/Context;

    .line 74
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 13
    .param p1, "strings"    # [Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 83
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 84
    .local v1, "client":Lorg/apache/http/client/HttpClient;
    new-instance v9, Lorg/apache/http/client/methods/HttpPost;

    const-string v10, "http://frankkie.nl/baxy/feedbackmail.php"

    invoke-direct {v9, v10}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 85
    .local v9, "request":Lorg/apache/http/client/methods/HttpPost;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .local v8, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    aget-object v4, p1, v11

    .line 87
    .local v4, "message":Ljava/lang/String;
    const-string v0, ""

    .line 89
    .local v0, "add":Ljava/lang/String;
    :try_start_0
    iget-object v10, p0, Lnl/frankkie/ouyalauncher/FeedbackActivity$SendFeedbackTask;->this$0:Lnl/frankkie/ouyalauncher/FeedbackActivity;

    invoke-virtual {v10}, Lnl/frankkie/ouyalauncher/FeedbackActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    iget-object v11, p0, Lnl/frankkie/ouyalauncher/FeedbackActivity$SendFeedbackTask;->this$0:Lnl/frankkie/ouyalauncher/FeedbackActivity;

    invoke-virtual {v11}, Lnl/frankkie/ouyalauncher/FeedbackActivity;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v10

    iget v5, v10, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 90
    .local v5, "myVersion":I
    iget-object v10, p0, Lnl/frankkie/ouyalauncher/FeedbackActivity$SendFeedbackTask;->this$0:Lnl/frankkie/ouyalauncher/FeedbackActivity;

    invoke-virtual {v10}, Lnl/frankkie/ouyalauncher/FeedbackActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    iget-object v11, p0, Lnl/frankkie/ouyalauncher/FeedbackActivity$SendFeedbackTask;->this$0:Lnl/frankkie/ouyalauncher/FeedbackActivity;

    invoke-virtual {v11}, Lnl/frankkie/ouyalauncher/FeedbackActivity;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v10

    iget-object v6, v10, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 91
    .local v6, "myVersionName":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\nVersion: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 92
    iget-object v10, p0, Lnl/frankkie/ouyalauncher/FeedbackActivity$SendFeedbackTask;->this$0:Lnl/frankkie/ouyalauncher/FeedbackActivity;

    invoke-static {v10}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v10

    const-string v11, "tv.ouya.account.v1"

    invoke-virtual {v10, v11}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v10, v10, v11

    iget-object v3, v10, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 93
    .local v3, "email":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\nEmail: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 98
    .end local v3    # "email":Ljava/lang/String;
    .end local v5    # "myVersion":I
    .end local v6    # "myVersionName":Ljava/lang/String;
    :goto_0
    new-instance v10, Lorg/apache/http/message/BasicNameValuePair;

    const-string v11, "message"

    invoke-direct {v10, v11, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    :try_start_1
    new-instance v10, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v10, v8}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    invoke-virtual {v9, v10}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 106
    :try_start_2
    invoke-interface {v1, v9}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 111
    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_1
    return-object v10

    .line 95
    :catch_0
    move-exception v7

    .line 96
    .local v7, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v7}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 101
    .end local v7    # "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v2

    .line 102
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    iget-object v10, p0, Lnl/frankkie/ouyalauncher/FeedbackActivity$SendFeedbackTask;->this$0:Lnl/frankkie/ouyalauncher/FeedbackActivity;

    const-string v11, "Message cannot be send.. (try sending email instead)"

    invoke-virtual {v10, v11}, Lnl/frankkie/ouyalauncher/FeedbackActivity;->toast(Ljava/lang/String;)V

    .line 103
    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    .line 107
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_2
    move-exception v2

    .line 108
    .local v2, "e":Ljava/io/IOException;
    iget-object v10, p0, Lnl/frankkie/ouyalauncher/FeedbackActivity$SendFeedbackTask;->this$0:Lnl/frankkie/ouyalauncher/FeedbackActivity;

    const-string v11, "Feedback cannot be send.. (check internet)"

    invoke-virtual {v10, v11}, Lnl/frankkie/ouyalauncher/FeedbackActivity;->toast(Ljava/lang/String;)V

    .line 109
    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 68
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lnl/frankkie/ouyalauncher/FeedbackActivity$SendFeedbackTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "isOk"    # Ljava/lang/Boolean;

    .prologue
    .line 117
    :try_start_0
    iget-object v0, p0, Lnl/frankkie/ouyalauncher/FeedbackActivity$SendFeedbackTask;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lnl/frankkie/ouyalauncher/FeedbackActivity$SendFeedbackTask;->this$0:Lnl/frankkie/ouyalauncher/FeedbackActivity;

    const-string v1, "Feedback is send!"

    invoke-virtual {v0, v1}, Lnl/frankkie/ouyalauncher/FeedbackActivity;->toast(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lnl/frankkie/ouyalauncher/FeedbackActivity$SendFeedbackTask;->this$0:Lnl/frankkie/ouyalauncher/FeedbackActivity;

    invoke-virtual {v0}, Lnl/frankkie/ouyalauncher/FeedbackActivity;->finish()V

    .line 126
    :cond_0
    return-void

    .line 118
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 68
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lnl/frankkie/ouyalauncher/FeedbackActivity$SendFeedbackTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 78
    iget-object v0, p0, Lnl/frankkie/ouyalauncher/FeedbackActivity$SendFeedbackTask;->context:Landroid/content/Context;

    const-string v1, "Sending feedback"

    const-string v2, "Please Wait.."

    invoke-static {v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lnl/frankkie/ouyalauncher/FeedbackActivity$SendFeedbackTask;->dialog:Landroid/app/Dialog;

    .line 79
    return-void
.end method
