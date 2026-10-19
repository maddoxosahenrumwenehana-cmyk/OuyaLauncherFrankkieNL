.class public Lnl/frankkie/ouyalauncher/Updater$UpdateCheckAsyncTask;
.super Landroid/os/AsyncTask;
.source "Updater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnl/frankkie/ouyalauncher/Updater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UpdateCheckAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnl/frankkie/ouyalauncher/Updater;


# direct methods
.method public constructor <init>(Lnl/frankkie/ouyalauncher/Updater;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lnl/frankkie/ouyalauncher/Updater$UpdateCheckAsyncTask;->this$0:Lnl/frankkie/ouyalauncher/Updater;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 72
    invoke-virtual {p0, p1}, Lnl/frankkie/ouyalauncher/Updater$UpdateCheckAsyncTask;->doInBackground([Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 13
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    const/4 v7, 0x0

    .line 76
    iget-object v8, p0, Lnl/frankkie/ouyalauncher/Updater$UpdateCheckAsyncTask;->this$0:Lnl/frankkie/ouyalauncher/Updater;

    iget-object v8, v8, Lnl/frankkie/ouyalauncher/Updater;->context:Landroid/content/Context;

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 77
    .local v4, "prefs":Landroid/content/SharedPreferences;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-string v10, "updater_stfu_till"

    const-wide/16 v11, 0x0

    invoke-interface {v4, v10, v11, v12}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-gtz v8, :cond_0

    move-object v3, v7

    .line 91
    :goto_0
    return-object v3

    .line 80
    :cond_0
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 81
    .local v0, "client":Lorg/apache/http/client/HttpClient;
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    const-string v8, "https://raw.github.com/frankkienl/OuyaLauncherFrankkieNL/master/version.json"

    invoke-direct {v5, v8}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 83
    .local v5, "request":Lorg/apache/http/client/methods/HttpGet;
    :try_start_0
    invoke-interface {v0, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 84
    .local v6, "response":Lorg/apache/http/HttpResponse;
    new-instance v3, Lorg/json/JSONObject;

    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 85
    .local v3, "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 86
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v1

    .line 87
    .local v1, "e":Ljava/io/IOException;
    iget-object v8, p0, Lnl/frankkie/ouyalauncher/Updater$UpdateCheckAsyncTask;->this$0:Lnl/frankkie/ouyalauncher/Updater;

    const-string v9, "Version check failed.. (internet is not working)"

    invoke-virtual {v8, v9}, Lnl/frankkie/ouyalauncher/Updater;->toast(Ljava/lang/String;)V

    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    move-object v3, v7

    .line 91
    goto :goto_0

    .line 88
    :catch_1
    move-exception v2

    .line 89
    .local v2, "je":Lorg/json/JSONException;
    iget-object v8, p0, Lnl/frankkie/ouyalauncher/Updater$UpdateCheckAsyncTask;->this$0:Lnl/frankkie/ouyalauncher/Updater;

    const-string v9, "Version check failed.. (json-parser is not working)"

    invoke-virtual {v8, v9}, Lnl/frankkie/ouyalauncher/Updater;->toast(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 72
    check-cast p1, Lorg/json/JSONObject;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lnl/frankkie/ouyalauncher/Updater$UpdateCheckAsyncTask;->onPostExecute(Lorg/json/JSONObject;)V

    return-void
.end method

.method protected onPostExecute(Lorg/json/JSONObject;)V
    .locals 14
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 96
    if-nez p1, :cond_1

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    :try_start_0
    const-string v11, "newestVersion"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 101
    .local v10, "version":I
    const-string v11, "changes"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 102
    .local v4, "changes":Ljava/lang/String;
    const-string v11, "betaVersion"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 103
    .local v2, "betaVersion":I
    const-string v11, "betaChanges"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "betaChanges":Ljava/lang/String;
    iget-object v11, p0, Lnl/frankkie/ouyalauncher/Updater$UpdateCheckAsyncTask;->this$0:Lnl/frankkie/ouyalauncher/Updater;

    iget-object v11, v11, Lnl/frankkie/ouyalauncher/Updater;->context:Landroid/content/Context;

    invoke-static {v11}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 106
    .local v9, "prefs":Landroid/content/SharedPreferences;
    const-string v11, "betaEnabled"

    const/4 v12, 0x0

    invoke-interface {v9, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 110
    .local v1, "betaEnabled":Z
    :try_start_1
    iget-object v11, p0, Lnl/frankkie/ouyalauncher/Updater$UpdateCheckAsyncTask;->this$0:Lnl/frankkie/ouyalauncher/Updater;

    iget-object v11, v11, Lnl/frankkie/ouyalauncher/Updater;->context:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    iget-object v12, p0, Lnl/frankkie/ouyalauncher/Updater$UpdateCheckAsyncTask;->this$0:Lnl/frankkie/ouyalauncher/Updater;

    iget-object v12, v12, Lnl/frankkie/ouyalauncher/Updater;->context:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v11

    iget v7, v11, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 111
    .local v7, "myVersion":I
    if-eqz v1, :cond_2

    .line 112
    if-ge v7, v2, :cond_0

    .line 113
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v11, p0, Lnl/frankkie/ouyalauncher/Updater$UpdateCheckAsyncTask;->this$0:Lnl/frankkie/ouyalauncher/Updater;

    iget-object v11, v11, Lnl/frankkie/ouyalauncher/Updater;->context:Landroid/content/Context;

    invoke-direct {v3, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 114
    .local v3, "builder":Landroid/app/AlertDialog$Builder;
    const-string v11, "New BETA Version Available !"

    invoke-virtual {v3, v11}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 115
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Changes:\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 116
    .local v5, "changesString":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "Download now?"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 117
    const v11, 0x1040013

    new-instance v12, Lnl/frankkie/ouyalauncher/Updater$UpdateCheckAsyncTask$1;

    invoke-direct {v12, p0}, Lnl/frankkie/ouyalauncher/Updater$UpdateCheckAsyncTask$1;-><init>(Lnl/frankkie/ouyalauncher/Updater$UpdateCheckAsyncTask;)V

    invoke-virtual {v3, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 123
    const v11, 0x1040009

    new-instance v12, Lnl/frankkie/ouyalauncher/Updater$UpdateCheckAsyncTask$2;

    invoke-direct {v12, p0, v9}, Lnl/frankkie/ouyalauncher/Updater$UpdateCheckAsyncTask$2;-><init>(Lnl/frankkie/ouyalauncher/Updater$UpdateCheckAsyncTask;Landroid/content/SharedPreferences;)V

    invoke-virtual {v3, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 131
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/AlertDialog;->show()V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 156
    .end local v3    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v5    # "changesString":Ljava/lang/String;
    .end local v7    # "myVersion":I
    :catch_0
    move-exception v8

    .line 157
    .local v8, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_2
    iget-object v11, p0, Lnl/frankkie/ouyalauncher/Updater$UpdateCheckAsyncTask;->this$0:Lnl/frankkie/ouyalauncher/Updater;

    const-string v12, "Version check failed.. (packagename not found)"

    invoke-virtual {v11, v12}, Lnl/frankkie/ouyalauncher/Updater;->toast(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 159
    .end local v0    # "betaChanges":Ljava/lang/String;
    .end local v1    # "betaEnabled":Z
    .end local v2    # "betaVersion":I
    .end local v4    # "changes":Ljava/lang/String;
    .end local v8    # "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v9    # "prefs":Landroid/content/SharedPreferences;
    .end local v10    # "version":I
    :catch_1
    move-exception v6

    .line 160
    .local v6, "e":Lorg/json/JSONException;
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    .line 161
    iget-object v11, p0, Lnl/frankkie/ouyalauncher/Updater$UpdateCheckAsyncTask;->this$0:Lnl/frankkie/ouyalauncher/Updater;

    const-string v12, "Version check failed.. (JSON Error)"

    invoke-virtual {v11, v12}, Lnl/frankkie/ouyalauncher/Updater;->toast(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 134
    .end local v6    # "e":Lorg/json/JSONException;
    .restart local v0    # "betaChanges":Ljava/lang/String;
    .restart local v1    # "betaEnabled":Z
    .restart local v2    # "betaVersion":I
    .restart local v4    # "changes":Ljava/lang/String;
    .restart local v7    # "myVersion":I
    .restart local v9    # "prefs":Landroid/content/SharedPreferences;
    .restart local v10    # "version":I
    :cond_2
    if-ge v7, v10, :cond_0

    .line 135
    :try_start_3
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v11, p0, Lnl/frankkie/ouyalauncher/Updater$UpdateCheckAsyncTask;->this$0:Lnl/frankkie/ouyalauncher/Updater;

    iget-object v11, v11, Lnl/frankkie/ouyalauncher/Updater;->context:Landroid/content/Context;

    invoke-direct {v3, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 136
    .restart local v3    # "builder":Landroid/app/AlertDialog$Builder;
    const-string v11, "New Version Available !"

    invoke-virtual {v3, v11}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 137
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Changes:\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 138
    .restart local v5    # "changesString":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "Download now?"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 139
    const v11, 0x1040013

    new-instance v12, Lnl/frankkie/ouyalauncher/Updater$UpdateCheckAsyncTask$3;

    invoke-direct {v12, p0}, Lnl/frankkie/ouyalauncher/Updater$UpdateCheckAsyncTask$3;-><init>(Lnl/frankkie/ouyalauncher/Updater$UpdateCheckAsyncTask;)V

    invoke-virtual {v3, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 145
    const v11, 0x1040009

    new-instance v12, Lnl/frankkie/ouyalauncher/Updater$UpdateCheckAsyncTask$4;

    invoke-direct {v12, p0, v9}, Lnl/frankkie/ouyalauncher/Updater$UpdateCheckAsyncTask$4;-><init>(Lnl/frankkie/ouyalauncher/Updater$UpdateCheckAsyncTask;Landroid/content/SharedPreferences;)V

    invoke-virtual {v3, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 153
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/AlertDialog;->show()V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0
.end method
