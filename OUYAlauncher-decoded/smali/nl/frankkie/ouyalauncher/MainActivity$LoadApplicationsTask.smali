.class public Lnl/frankkie/ouyalauncher/MainActivity$LoadApplicationsTask;
.super Landroid/os/AsyncTask;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnl/frankkie/ouyalauncher/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LoadApplicationsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnl/frankkie/ouyalauncher/MainActivity;


# direct methods
.method public constructor <init>(Lnl/frankkie/ouyalauncher/MainActivity;)V
    .locals 0

    .prologue
    .line 899
    iput-object p1, p0, Lnl/frankkie/ouyalauncher/MainActivity$LoadApplicationsTask;->this$0:Lnl/frankkie/ouyalauncher/MainActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 899
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lnl/frankkie/ouyalauncher/MainActivity$LoadApplicationsTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    .line 902
    iget-object v0, p0, Lnl/frankkie/ouyalauncher/MainActivity$LoadApplicationsTask;->this$0:Lnl/frankkie/ouyalauncher/MainActivity;

    invoke-static {v0}, Lnl/frankkie/ouyalauncher/MainActivity;->access$000(Lnl/frankkie/ouyalauncher/MainActivity;)V

    .line 903
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 899
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lnl/frankkie/ouyalauncher/MainActivity$LoadApplicationsTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 908
    iget-object v0, p0, Lnl/frankkie/ouyalauncher/MainActivity$LoadApplicationsTask;->this$0:Lnl/frankkie/ouyalauncher/MainActivity;

    invoke-virtual {v0}, Lnl/frankkie/ouyalauncher/MainActivity;->filter()V

    .line 909
    iget-object v0, p0, Lnl/frankkie/ouyalauncher/MainActivity$LoadApplicationsTask;->this$0:Lnl/frankkie/ouyalauncher/MainActivity;

    invoke-virtual {v0}, Lnl/frankkie/ouyalauncher/MainActivity;->fillTable()V

    .line 910
    return-void
.end method
