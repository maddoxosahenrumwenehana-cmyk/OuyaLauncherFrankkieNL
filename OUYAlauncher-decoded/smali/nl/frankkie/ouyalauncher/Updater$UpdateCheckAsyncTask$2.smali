.class Lnl/frankkie/ouyalauncher/Updater$UpdateCheckAsyncTask$2;
.super Ljava/lang/Object;
.source "Updater.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnl/frankkie/ouyalauncher/Updater$UpdateCheckAsyncTask;->onPostExecute(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnl/frankkie/ouyalauncher/Updater$UpdateCheckAsyncTask;

.field final synthetic val$prefs:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lnl/frankkie/ouyalauncher/Updater$UpdateCheckAsyncTask;Landroid/content/SharedPreferences;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lnl/frankkie/ouyalauncher/Updater$UpdateCheckAsyncTask$2;->this$1:Lnl/frankkie/ouyalauncher/Updater$UpdateCheckAsyncTask;

    iput-object p2, p0, Lnl/frankkie/ouyalauncher/Updater$UpdateCheckAsyncTask$2;->val$prefs:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 128
    iget-object v0, p0, Lnl/frankkie/ouyalauncher/Updater$UpdateCheckAsyncTask$2;->val$prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "updater_stfu_till"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x36ee80

    add-long/2addr v2, v4

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 129
    return-void
.end method
