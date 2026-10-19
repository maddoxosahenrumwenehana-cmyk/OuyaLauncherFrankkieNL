.class public Lnl/frankkie/ouyalauncher/BackgroundMusicActivity$DownloadAsyncTask;
.super Landroid/os/AsyncTask;
.source "BackgroundMusicActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnl/frankkie/ouyalauncher/BackgroundMusicActivity;
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

.field final synthetic this$0:Lnl/frankkie/ouyalauncher/BackgroundMusicActivity;


# direct methods
.method public constructor <init>(Lnl/frankkie/ouyalauncher/BackgroundMusicActivity;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lnl/frankkie/ouyalauncher/BackgroundMusicActivity$DownloadAsyncTask;->this$0:Lnl/frankkie/ouyalauncher/BackgroundMusicActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 17
    .param p1, "urls"    # [Ljava/lang/String;

    .prologue
    .line 133
    :try_start_0
    new-instance v10, Ljava/net/URL;

    const/4 v11, 0x0

    aget-object v11, p1, v11

    invoke-direct {v10, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 134
    .local v10, "url":Ljava/net/URL;
    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 135
    .local v1, "connection":Ljava/net/URLConnection;
    invoke-virtual {v1}, Ljava/net/URLConnection;->connect()V

    .line 137
    invoke-virtual {v1}, Ljava/net/URLConnection;->getContentLength()I

    move-result v5

    .line 140
    .local v5, "fileLength":I
    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-virtual {v10}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v6, v11}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 141
    .local v6, "input":Ljava/io/InputStream;
    new-instance v7, Ljava/io/FileOutputStream;

    const-string v11, "/sdcard/FrankkieOuyaLauncher/music/music_default.mp3"

    invoke-direct {v7, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 143
    .local v7, "output":Ljava/io/OutputStream;
    const/16 v11, 0x400

    new-array v3, v11, [B

    .line 144
    .local v3, "data":[B
    const-wide/16 v8, 0x0

    .line 146
    .local v8, "total":J
    :goto_0
    invoke-virtual {v6, v3}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "count":I
    const/4 v11, -0x1

    if-eq v2, v11, :cond_0

    .line 147
    int-to-long v11, v2

    add-long/2addr v8, v11

    .line 149
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

    invoke-virtual {v0, v11}, Lnl/frankkie/ouyalauncher/BackgroundMusicActivity$DownloadAsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 150
    const/4 v11, 0x0

    invoke-virtual {v7, v3, v11, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 157
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

    .line 158
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 159
    move-object/from16 v0, p0

    iget-object v11, v0, Lnl/frankkie/ouyalauncher/BackgroundMusicActivity$DownloadAsyncTask;->this$0:Lnl/frankkie/ouyalauncher/BackgroundMusicActivity;

    const-string v12, "Download failed.. (internet is not working)"

    invoke-virtual {v11, v12}, Lnl/frankkie/ouyalauncher/BackgroundMusicActivity;->toast(Ljava/lang/String;)V

    .line 161
    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v11

    .line 153
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

    .line 154
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 155
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 156
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
    .line 112
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lnl/frankkie/ouyalauncher/BackgroundMusicActivity$DownloadAsyncTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "success"    # Ljava/lang/Boolean;

    .prologue
    .line 172
    :try_start_0
    iget-object v0, p0, Lnl/frankkie/ouyalauncher/BackgroundMusicActivity$DownloadAsyncTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :goto_0
    iget-object v0, p0, Lnl/frankkie/ouyalauncher/BackgroundMusicActivity$DownloadAsyncTask;->this$0:Lnl/frankkie/ouyalauncher/BackgroundMusicActivity;

    invoke-virtual {v0}, Lnl/frankkie/ouyalauncher/BackgroundMusicActivity;->initMusic()V

    .line 177
    return-void

    .line 173
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 112
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lnl/frankkie/ouyalauncher/BackgroundMusicActivity$DownloadAsyncTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 117
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lnl/frankkie/ouyalauncher/BackgroundMusicActivity$DownloadAsyncTask;->this$0:Lnl/frankkie/ouyalauncher/BackgroundMusicActivity;

    iget-object v1, v1, Lnl/frankkie/ouyalauncher/BackgroundMusicActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnl/frankkie/ouyalauncher/BackgroundMusicActivity$DownloadAsyncTask;->dialog:Landroid/app/ProgressDialog;

    .line 118
    iget-object v0, p0, Lnl/frankkie/ouyalauncher/BackgroundMusicActivity$DownloadAsyncTask;->dialog:Landroid/app/ProgressDialog;

    const-string v1, "Downloading Default Music"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v0, p0, Lnl/frankkie/ouyalauncher/BackgroundMusicActivity$DownloadAsyncTask;->dialog:Landroid/app/ProgressDialog;

    const-string v1, "Please Wait..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v0, p0, Lnl/frankkie/ouyalauncher/BackgroundMusicActivity$DownloadAsyncTask;->dialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 121
    iget-object v0, p0, Lnl/frankkie/ouyalauncher/BackgroundMusicActivity$DownloadAsyncTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 122
    iget-object v0, p0, Lnl/frankkie/ouyalauncher/BackgroundMusicActivity$DownloadAsyncTask;->dialog:Landroid/app/ProgressDialog;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 123
    iget-object v0, p0, Lnl/frankkie/ouyalauncher/BackgroundMusicActivity$DownloadAsyncTask;->dialog:Landroid/app/ProgressDialog;

    const-string v1, "Progress: %1d - %2d"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lnl/frankkie/ouyalauncher/BackgroundMusicActivity$DownloadAsyncTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 125
    iget-object v0, p0, Lnl/frankkie/ouyalauncher/BackgroundMusicActivity$DownloadAsyncTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 126
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 2
    .param p1, "values"    # [Ljava/lang/Integer;

    .prologue
    .line 166
    iget-object v0, p0, Lnl/frankkie/ouyalauncher/BackgroundMusicActivity$DownloadAsyncTask;->dialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 167
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 112
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lnl/frankkie/ouyalauncher/BackgroundMusicActivity$DownloadAsyncTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
