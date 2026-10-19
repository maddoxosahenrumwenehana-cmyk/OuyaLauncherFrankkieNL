.class Lnl/frankkie/ouyalauncher/WebserverActivity$1;
.super Ljava/lang/Object;
.source "WebserverActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnl/frankkie/ouyalauncher/WebserverActivity;->log(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnl/frankkie/ouyalauncher/WebserverActivity;

.field final synthetic val$s:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnl/frankkie/ouyalauncher/WebserverActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lnl/frankkie/ouyalauncher/WebserverActivity$1;->this$0:Lnl/frankkie/ouyalauncher/WebserverActivity;

    iput-object p2, p0, Lnl/frankkie/ouyalauncher/WebserverActivity$1;->val$s:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lnl/frankkie/ouyalauncher/WebserverActivity$1;->this$0:Lnl/frankkie/ouyalauncher/WebserverActivity;

    iget-object v1, p0, Lnl/frankkie/ouyalauncher/WebserverActivity$1;->val$s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnl/frankkie/ouyalauncher/WebserverActivity;->logHandler(Ljava/lang/String;)V

    .line 76
    return-void
.end method
