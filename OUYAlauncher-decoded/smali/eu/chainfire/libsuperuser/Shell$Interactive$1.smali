.class Leu/chainfire/libsuperuser/Shell$Interactive$1;
.super Ljava/lang/Object;
.source "Shell.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/chainfire/libsuperuser/Shell$Interactive;->processMarker()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

.field final synthetic val$fBuffer:Ljava/util/List;

.field final synthetic val$fCommand:Leu/chainfire/libsuperuser/Shell$Command;

.field final synthetic val$fExitCode:I


# direct methods
.method constructor <init>(Leu/chainfire/libsuperuser/Shell$Interactive;Leu/chainfire/libsuperuser/Shell$Command;ILjava/util/List;)V
    .locals 0

    .prologue
    .line 759
    iput-object p1, p0, Leu/chainfire/libsuperuser/Shell$Interactive$1;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    iput-object p2, p0, Leu/chainfire/libsuperuser/Shell$Interactive$1;->val$fCommand:Leu/chainfire/libsuperuser/Shell$Command;

    iput p3, p0, Leu/chainfire/libsuperuser/Shell$Interactive$1;->val$fExitCode:I

    iput-object p4, p0, Leu/chainfire/libsuperuser/Shell$Interactive$1;->val$fBuffer:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 763
    :try_start_0
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive$1;->val$fCommand:Leu/chainfire/libsuperuser/Shell$Command;

    invoke-static {v0}, Leu/chainfire/libsuperuser/Shell$Command;->access$1000(Leu/chainfire/libsuperuser/Shell$Command;)Leu/chainfire/libsuperuser/Shell$OnCommandResultListener;

    move-result-object v0

    iget-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive$1;->val$fCommand:Leu/chainfire/libsuperuser/Shell$Command;

    invoke-static {v1}, Leu/chainfire/libsuperuser/Shell$Command;->access$1200(Leu/chainfire/libsuperuser/Shell$Command;)I

    move-result v1

    iget v2, p0, Leu/chainfire/libsuperuser/Shell$Interactive$1;->val$fExitCode:I

    iget-object v3, p0, Leu/chainfire/libsuperuser/Shell$Interactive$1;->val$fBuffer:Ljava/util/List;

    invoke-interface {v0, v1, v2, v3}, Leu/chainfire/libsuperuser/Shell$OnCommandResultListener;->onCommandResult(IILjava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 765
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive$1;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    invoke-static {v0}, Leu/chainfire/libsuperuser/Shell$Interactive;->access$1300(Leu/chainfire/libsuperuser/Shell$Interactive;)V

    .line 767
    return-void

    .line 765
    :catchall_0
    move-exception v0

    iget-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive$1;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    invoke-static {v1}, Leu/chainfire/libsuperuser/Shell$Interactive;->access$1300(Leu/chainfire/libsuperuser/Shell$Interactive;)V

    throw v0
.end method
