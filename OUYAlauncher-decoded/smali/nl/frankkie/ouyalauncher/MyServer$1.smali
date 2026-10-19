.class final Lnl/frankkie/ouyalauncher/MyServer$1;
.super Ljava/util/HashMap;
.source "MyServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnl/frankkie/ouyalauncher/MyServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Class",
        "<+",
        "Lnl/frankkie/ouyalauncher/web/WebPage;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 32
    const-string v0, "/index"

    const-class v1, Lnl/frankkie/ouyalauncher/web/Index;

    invoke-virtual {p0, v0, v1}, Lnl/frankkie/ouyalauncher/MyServer$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const-string v0, "/"

    const-class v1, Lnl/frankkie/ouyalauncher/web/Index;

    invoke-virtual {p0, v0, v1}, Lnl/frankkie/ouyalauncher/MyServer$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-string v0, "/upload"

    const-class v1, Lnl/frankkie/ouyalauncher/web/Upload;

    invoke-virtual {p0, v0, v1}, Lnl/frankkie/ouyalauncher/MyServer$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-string v0, "/error404"

    const-class v1, Lnl/frankkie/ouyalauncher/web/Error404;

    invoke-virtual {p0, v0, v1}, Lnl/frankkie/ouyalauncher/MyServer$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-string v0, "/installApk"

    const-class v1, Lnl/frankkie/ouyalauncher/web/InstallAPK;

    invoke-virtual {p0, v0, v1}, Lnl/frankkie/ouyalauncher/MyServer$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-string v0, "/getApps"

    const-class v1, Lnl/frankkie/ouyalauncher/web/GetApps;

    invoke-virtual {p0, v0, v1}, Lnl/frankkie/ouyalauncher/MyServer$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string v0, "/appImage"

    const-class v1, Lnl/frankkie/ouyalauncher/web/AppImage;

    invoke-virtual {p0, v0, v1}, Lnl/frankkie/ouyalauncher/MyServer$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string v0, "/apps"

    const-class v1, Lnl/frankkie/ouyalauncher/web/Apps;

    invoke-virtual {p0, v0, v1}, Lnl/frankkie/ouyalauncher/MyServer$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string v0, "/startApp"

    const-class v1, Lnl/frankkie/ouyalauncher/web/StartApp;

    invoke-virtual {p0, v0, v1}, Lnl/frankkie/ouyalauncher/MyServer$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-string v0, "/uninstallApp"

    const-class v1, Lnl/frankkie/ouyalauncher/web/UninstallApp;

    invoke-virtual {p0, v0, v1}, Lnl/frankkie/ouyalauncher/MyServer$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    return-void
.end method
