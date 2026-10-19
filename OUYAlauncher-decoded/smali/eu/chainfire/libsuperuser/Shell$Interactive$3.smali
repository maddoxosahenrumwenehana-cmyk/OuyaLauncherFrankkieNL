.class Leu/chainfire/libsuperuser/Shell$Interactive$3;
.super Ljava/lang/Object;
.source "Shell.java"

# interfaces
.implements Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/chainfire/libsuperuser/Shell$Interactive;->open()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Leu/chainfire/libsuperuser/Shell$Interactive;


# direct methods
.method constructor <init>(Leu/chainfire/libsuperuser/Shell$Interactive;)V
    .locals 0

    .prologue
    .line 870
    iput-object p1, p0, Leu/chainfire/libsuperuser/Shell$Interactive$3;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLine(Ljava/lang/String;)V
    .locals 3
    .param p1, "line"    # Ljava/lang/String;

    .prologue
    .line 873
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive$3;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    invoke-static {v0}, Leu/chainfire/libsuperuser/Shell$Interactive;->access$1400(Leu/chainfire/libsuperuser/Shell$Interactive;)Leu/chainfire/libsuperuser/Shell$Command;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/libsuperuser/Shell$Command;->access$1100(Leu/chainfire/libsuperuser/Shell$Command;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 875
    :try_start_0
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive$3;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    iget-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive$3;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    invoke-static {v1}, Leu/chainfire/libsuperuser/Shell$Interactive;->access$1400(Leu/chainfire/libsuperuser/Shell$Interactive;)Leu/chainfire/libsuperuser/Shell$Command;

    move-result-object v1

    invoke-static {v1}, Leu/chainfire/libsuperuser/Shell$Command;->access$1100(Leu/chainfire/libsuperuser/Shell$Command;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Leu/chainfire/libsuperuser/Shell$Interactive;->access$1502(Leu/chainfire/libsuperuser/Shell$Interactive;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 878
    :goto_0
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive$3;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    iget-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive$3;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    invoke-static {v1}, Leu/chainfire/libsuperuser/Shell$Interactive;->access$1400(Leu/chainfire/libsuperuser/Shell$Interactive;)Leu/chainfire/libsuperuser/Shell$Command;

    move-result-object v1

    invoke-static {v1}, Leu/chainfire/libsuperuser/Shell$Command;->access$1100(Leu/chainfire/libsuperuser/Shell$Command;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Leu/chainfire/libsuperuser/Shell$Interactive;->access$1602(Leu/chainfire/libsuperuser/Shell$Interactive;Ljava/lang/String;)Ljava/lang/String;

    .line 879
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive$3;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    invoke-static {v0}, Leu/chainfire/libsuperuser/Shell$Interactive;->access$1700(Leu/chainfire/libsuperuser/Shell$Interactive;)V

    .line 884
    :goto_1
    return-void

    .line 881
    :cond_0
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive$3;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    invoke-static {v0, p1}, Leu/chainfire/libsuperuser/Shell$Interactive;->access$1800(Leu/chainfire/libsuperuser/Shell$Interactive;Ljava/lang/String;)V

    .line 882
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive$3;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    iget-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive$3;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    invoke-static {v1}, Leu/chainfire/libsuperuser/Shell$Interactive;->access$1900(Leu/chainfire/libsuperuser/Shell$Interactive;)Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;

    move-result-object v1

    invoke-static {v0, p1, v1}, Leu/chainfire/libsuperuser/Shell$Interactive;->access$2000(Leu/chainfire/libsuperuser/Shell$Interactive;Ljava/lang/String;Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;)V

    goto :goto_1

    .line 876
    :catch_0
    move-exception v0

    goto :goto_0
.end method
