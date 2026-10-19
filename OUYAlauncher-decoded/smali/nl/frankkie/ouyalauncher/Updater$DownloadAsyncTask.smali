.class public Lnl/frankkie/ouyalauncher/Updater$DownloadAsyncTask;
.super Landroid/os/AsyncTask;
.source "Updater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnl/frankkie/ouyalauncher/Updater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DownloadAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field dialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lnl/frankkie/ouyalauncher/Updater;


# direct methods
.method public constructor <init>(Lnl/frankkie/ouyalauncher/Updater;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lnl/frankkie/ouyalauncher/Updater$DownloadAsyncTask;->this$0:Lnl/frankkie/ouyalauncher/Updater;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 17
    .param p1, "urls"    # [Ljava/lang/String;

    .prologue
    .line 192
    :try_start_0
    new-instance v10, Ljava/net/URL;

    const/4 v11, 0x0

    aget-object v11, p1, v11

    invoke-direct {v10, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 193
    .local v10, "url":Ljava/net/URL;
    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 194
    .local v1, "connection":Ljava/net/URLConnection;
    invoke-virtual {v1}, Ljava/net/URLConnection;->connect()V

    .line 196
    invoke-virtual {v1}, Ljava/net/URLConnection;->getContentLength()I

    move-result v5

    .line 199
    .local v5, "fileLength":I
    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-virtual {v10}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v6, v11}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 200
    .local v6, "input":Ljava/io/InputStream;
    new-instance v7, Ljava/io/FileOutputStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "FrankkieOuyaLauncher.apk"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 202
    .local v7, "output":Ljava/io/OutputStream;
    const/16 v11, 0x400

    new-array v3, v11, [B

    .line 203
    .local v3, "data":[B
    const-wide/16 v8, 0x0

    .line 205
    .local v8, "total":J
    :goto_0
    invoke-virtual {v6, v3}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "count":I
    const/4 v11, -0x1

    if-eq v2, v11, :cond_0

    .line 206
    int-to-long v11, v2

    add-long/2addr v8, v11

    .line 208
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Integer;

    const/4 v12, 0x0

    const-wide/16 v13, 0x64

    mul-long/2addr v13, v8

    int-to-long v15, v5

    div-long/2addr v13, v15

    long-to-int v13, v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lnl/frankkie/ouyalauncher/Updater$DownloadAsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 209
    const/4 v11, 0x0

    invoke-virtual {v7, v3, v11, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 216
    .end local v1    # "connection":Ljava/net/URLConnection;
    .end local v2    # "count":I
    .end local v3    # "data":[B
    .end local v5    # "fileLength":I
    .end local v6    # "input":Ljava/io/InputStream;
    .end local v7    # "output":Ljava/io/OutputStream;
    .end local v8    # "total":J
    .end local v10    # "url":Ljava/net/URL;
    :catch_0
    move-exception v4

    .line 217
    .local v4, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v11, v0, Lnl/frankkie/ouyalauncher/Updater$DownloadAsyncTask;->this$0:Lnl/frankkie/ouyalauncher/Updater;

    const-string v12, "Download failed.. (internet is not working)"

    invoke-virtual {v11, v12}, Lnl/frankkie/ouyalauncher/Updater;->toast(Ljava/lang/String;)V

    .line 219
    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v11

    .line 212
    .restart local v1    # "connection":Ljava/net/URLConnection;
    .restart local v2    # "count":I
    .restart local v3    # "data":[B
    .restart local v5    # "fileLength":I
    .restart local v6    # "input":Ljava/io/InputStream;
    .restart local v7    # "output":Ljava/io/OutputStream;
    .restart local v8    # "total":J
    .restart local v10    # "url":Ljava/net/URL;
    :cond_0
    :try_start_1
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 213
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 214
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 215
    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v11

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 171
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lnl/frankkie/ouyalauncher/Updater$DownloadAsyncTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "success"    # Ljava/lang/Boolean;

    .prologue
    .line 230
    :try_start_0
    iget-object v2, p0, Lnl/frankkie/ouyalauncher/Updater$DownloadAsyncTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 234
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 236
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 237
    .local v1, "i":Landroid/content/Intent;
    const-string v2, "android.intent.action.INSTALL_PACKAGE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "FrankkieOuyaLauncher.apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 239
    iget-object v2, p0, Lnl/frankkie/ouyalauncher/Updater$DownloadAsyncTask;->this$0:Lnl/frankkie/ouyalauncher/Updater;

    iget-object v2, v2, Lnl/frankkie/ouyalauncher/Updater;->context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 244
    .end local v1    # "i":Landroid/content/Intent;
    :cond_0
    :goto_1
    return-void

    .line 240
    :catch_0
    move-exception v0

    .line 241
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lnl/frankkie/ouyalauncher/Updater$DownloadAsyncTask;->this$0:Lnl/frankkie/ouyalauncher/Updater;

    const-string v3, "Cannot update application.. Please use a filemanager (like Total Commander) and select \'FrankkieOuyaLauncher.apk\'."

    invoke-virtual {v2, v3}, Lnl/frankkie/ouyalauncher/Updater;->toast(Ljava/lang/String;)V

    goto :goto_1

    .line 231
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 171
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lnl/frankkie/ouyalauncher/Updater$DownloadAsyncTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 176
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lnl/frankkie/ouyalauncher/Updater$DownloadAsyncTask;->this$0:Lnl/frankkie/ouyalauncher/Updater;

    iget-object v1, v1, Lnl/frankkie/ouyalauncher/Updater;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnl/frankkie/ouyalauncher/Updater$DownloadAsyncTask;->dialog:Landroid/app/ProgressDialog;

    .line 177
    iget-object v0, p0, Lnl/frankkie/ouyalauncher/Updater$DownloadAsyncTask;->dialog:Landroid/app/ProgressDialog;

    const-string v1, "Downloading Update"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v0, p0, Lnl/frankkie/ouyalauncher/Updater$DownloadAsyncTask;->dialog:Landroid/app/ProgressDialog;

    const-string v1, "Please Wait..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v0, p0, Lnl/frankkie/ouyalauncher/Updater$DownloadAsyncTask;->dialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 180
    iget-object v0, p0, Lnl/frankkie/ouyalauncher/Updater$DownloadAsyncTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 181
    iget-object v0, p0, Lnl/frankkie/ouyalauncher/Updater$DownloadAsyncTask;->dialog:Landroid/app/ProgressDialog;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 182
    iget-object v0, p0, Lnl/frankkie/ouyalauncher/Updater$DownloadAsyncTask;->dialog:Landroid/app/ProgressDialog;

    const-string v1, "Progress: %1d - %2d"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lnl/frankkie/ouyalauncher/Updater$DownloadAsyncTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 184
    iget-object v0, p0, Lnl/frankkie/ouyalauncher/Updater$DownloadAsyncTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 185
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 2
    .param p1, "values"    # [Ljava/lang/Integer;

    .prologue
    .line 224
    iget-object v0, p0, Lnl/frankkie/ouyalauncher/Updater$DownloadAsyncTask;->dialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 225
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 171
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lnl/frankkie/ouyalauncher/Updater$DownloadAsyncTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
