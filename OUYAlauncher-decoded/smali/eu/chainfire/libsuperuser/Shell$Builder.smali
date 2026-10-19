.class public Leu/chainfire/libsuperuser/Shell$Builder;
.super Ljava/lang/Object;
.source "Shell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/chainfire/libsuperuser/Shell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private autoHandler:Z

.field private commands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Leu/chainfire/libsuperuser/Shell$Command;",
            ">;"
        }
    .end annotation
.end field

.field private environment:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Landroid/os/Handler;

.field private onSTDERRLineListener:Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;

.field private onSTDOUTLineListener:Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;

.field private shell:Ljava/lang/String;

.field private wantSTDERR:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 352
    iput-object v1, p0, Leu/chainfire/libsuperuser/Shell$Builder;->handler:Landroid/os/Handler;

    .line 353
    const/4 v0, 0x1

    iput-boolean v0, p0, Leu/chainfire/libsuperuser/Shell$Builder;->autoHandler:Z

    .line 354
    const-string v0, "sh"

    iput-object v0, p0, Leu/chainfire/libsuperuser/Shell$Builder;->shell:Ljava/lang/String;

    .line 355
    const/4 v0, 0x0

    iput-boolean v0, p0, Leu/chainfire/libsuperuser/Shell$Builder;->wantSTDERR:Z

    .line 356
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Leu/chainfire/libsuperuser/Shell$Builder;->commands:Ljava/util/List;

    .line 357
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Leu/chainfire/libsuperuser/Shell$Builder;->environment:Ljava/util/Map;

    .line 358
    iput-object v1, p0, Leu/chainfire/libsuperuser/Shell$Builder;->onSTDOUTLineListener:Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;

    .line 359
    iput-object v1, p0, Leu/chainfire/libsuperuser/Shell$Builder;->onSTDERRLineListener:Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;

    return-void
.end method

.method static synthetic access$100(Leu/chainfire/libsuperuser/Shell$Builder;)Z
    .locals 1
    .param p0, "x0"    # Leu/chainfire/libsuperuser/Shell$Builder;

    .prologue
    .line 351
    iget-boolean v0, p0, Leu/chainfire/libsuperuser/Shell$Builder;->autoHandler:Z

    return v0
.end method

.method static synthetic access$200(Leu/chainfire/libsuperuser/Shell$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Leu/chainfire/libsuperuser/Shell$Builder;

    .prologue
    .line 351
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Builder;->shell:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Leu/chainfire/libsuperuser/Shell$Builder;)Z
    .locals 1
    .param p0, "x0"    # Leu/chainfire/libsuperuser/Shell$Builder;

    .prologue
    .line 351
    iget-boolean v0, p0, Leu/chainfire/libsuperuser/Shell$Builder;->wantSTDERR:Z

    return v0
.end method

.method static synthetic access$400(Leu/chainfire/libsuperuser/Shell$Builder;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Leu/chainfire/libsuperuser/Shell$Builder;

    .prologue
    .line 351
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Builder;->commands:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Leu/chainfire/libsuperuser/Shell$Builder;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Leu/chainfire/libsuperuser/Shell$Builder;

    .prologue
    .line 351
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Builder;->environment:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$600(Leu/chainfire/libsuperuser/Shell$Builder;)Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;
    .locals 1
    .param p0, "x0"    # Leu/chainfire/libsuperuser/Shell$Builder;

    .prologue
    .line 351
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Builder;->onSTDOUTLineListener:Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;

    return-object v0
.end method

.method static synthetic access$700(Leu/chainfire/libsuperuser/Shell$Builder;)Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;
    .locals 1
    .param p0, "x0"    # Leu/chainfire/libsuperuser/Shell$Builder;

    .prologue
    .line 351
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Builder;->onSTDERRLineListener:Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;

    return-object v0
.end method

.method static synthetic access$800(Leu/chainfire/libsuperuser/Shell$Builder;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Leu/chainfire/libsuperuser/Shell$Builder;

    .prologue
    .line 351
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Builder;->handler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public addCommand(Ljava/lang/String;)Leu/chainfire/libsuperuser/Shell$Builder;
    .locals 2
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 435
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Leu/chainfire/libsuperuser/Shell$Builder;->addCommand(Ljava/lang/String;ILeu/chainfire/libsuperuser/Shell$OnCommandResultListener;)Leu/chainfire/libsuperuser/Shell$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addCommand(Ljava/lang/String;ILeu/chainfire/libsuperuser/Shell$OnCommandResultListener;)Leu/chainfire/libsuperuser/Shell$Builder;
    .locals 2
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "code"    # I
    .param p3, "onCommandResultListener"    # Leu/chainfire/libsuperuser/Shell$OnCommandResultListener;

    .prologue
    .line 447
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0, p2, p3}, Leu/chainfire/libsuperuser/Shell$Builder;->addCommand([Ljava/lang/String;ILeu/chainfire/libsuperuser/Shell$OnCommandResultListener;)Leu/chainfire/libsuperuser/Shell$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addCommand(Ljava/util/List;)Leu/chainfire/libsuperuser/Shell$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Leu/chainfire/libsuperuser/Shell$Builder;"
        }
    .end annotation

    .prologue
    .line 455
    .local p1, "commands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Leu/chainfire/libsuperuser/Shell$Builder;->addCommand(Ljava/util/List;ILeu/chainfire/libsuperuser/Shell$OnCommandResultListener;)Leu/chainfire/libsuperuser/Shell$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addCommand(Ljava/util/List;ILeu/chainfire/libsuperuser/Shell$OnCommandResultListener;)Leu/chainfire/libsuperuser/Shell$Builder;
    .locals 1
    .param p2, "code"    # I
    .param p3, "onCommandResultListener"    # Leu/chainfire/libsuperuser/Shell$OnCommandResultListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Leu/chainfire/libsuperuser/Shell$OnCommandResultListener;",
            ")",
            "Leu/chainfire/libsuperuser/Shell$Builder;"
        }
    .end annotation

    .prologue
    .line 467
    .local p1, "commands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v0, p2, p3}, Leu/chainfire/libsuperuser/Shell$Builder;->addCommand([Ljava/lang/String;ILeu/chainfire/libsuperuser/Shell$OnCommandResultListener;)Leu/chainfire/libsuperuser/Shell$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addCommand([Ljava/lang/String;)Leu/chainfire/libsuperuser/Shell$Builder;
    .locals 2
    .param p1, "commands"    # [Ljava/lang/String;

    .prologue
    .line 475
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Leu/chainfire/libsuperuser/Shell$Builder;->addCommand([Ljava/lang/String;ILeu/chainfire/libsuperuser/Shell$OnCommandResultListener;)Leu/chainfire/libsuperuser/Shell$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addCommand([Ljava/lang/String;ILeu/chainfire/libsuperuser/Shell$OnCommandResultListener;)Leu/chainfire/libsuperuser/Shell$Builder;
    .locals 2
    .param p1, "commands"    # [Ljava/lang/String;
    .param p2, "code"    # I
    .param p3, "onCommandResultListener"    # Leu/chainfire/libsuperuser/Shell$OnCommandResultListener;

    .prologue
    .line 487
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Builder;->commands:Ljava/util/List;

    new-instance v1, Leu/chainfire/libsuperuser/Shell$Command;

    invoke-direct {v1, p1, p2, p3}, Leu/chainfire/libsuperuser/Shell$Command;-><init>([Ljava/lang/String;ILeu/chainfire/libsuperuser/Shell$OnCommandResultListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addEnvironment(Ljava/lang/String;Ljava/lang/String;)Leu/chainfire/libsuperuser/Shell$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 419
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Builder;->environment:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public addEnvironment(Ljava/util/Map;)Leu/chainfire/libsuperuser/Shell$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Leu/chainfire/libsuperuser/Shell$Builder;"
        }
    .end annotation

    .prologue
    .line 427
    .local p1, "addEnvironment":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Builder;->environment:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public open()Leu/chainfire/libsuperuser/Shell$Interactive;
    .locals 2

    .prologue
    .line 512
    new-instance v0, Leu/chainfire/libsuperuser/Shell$Interactive;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Leu/chainfire/libsuperuser/Shell$Interactive;-><init>(Leu/chainfire/libsuperuser/Shell$Builder;Leu/chainfire/libsuperuser/Shell$1;)V

    return-object v0
.end method

.method public setAutoHandler(Z)Leu/chainfire/libsuperuser/Shell$Builder;
    .locals 0
    .param p1, "autoHandler"    # Z

    .prologue
    .line 379
    iput-boolean p1, p0, Leu/chainfire/libsuperuser/Shell$Builder;->autoHandler:Z

    return-object p0
.end method

.method public setHandler(Landroid/os/Handler;)Leu/chainfire/libsuperuser/Shell$Builder;
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 369
    iput-object p1, p0, Leu/chainfire/libsuperuser/Shell$Builder;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method public setOnSTDERRLineListener(Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;)Leu/chainfire/libsuperuser/Shell$Builder;
    .locals 0
    .param p1, "onLineListener"    # Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;

    .prologue
    .line 507
    iput-object p1, p0, Leu/chainfire/libsuperuser/Shell$Builder;->onSTDERRLineListener:Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;

    return-object p0
.end method

.method public setOnSTDOUTLineListener(Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;)Leu/chainfire/libsuperuser/Shell$Builder;
    .locals 0
    .param p1, "onLineListener"    # Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;

    .prologue
    .line 497
    iput-object p1, p0, Leu/chainfire/libsuperuser/Shell$Builder;->onSTDOUTLineListener:Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;

    return-object p0
.end method

.method public setShell(Ljava/lang/String;)Leu/chainfire/libsuperuser/Shell$Builder;
    .locals 0
    .param p1, "shell"    # Ljava/lang/String;

    .prologue
    .line 388
    iput-object p1, p0, Leu/chainfire/libsuperuser/Shell$Builder;->shell:Ljava/lang/String;

    return-object p0
.end method

.method public setWantSTDERR(Z)Leu/chainfire/libsuperuser/Shell$Builder;
    .locals 0
    .param p1, "wantSTDERR"    # Z

    .prologue
    .line 410
    iput-boolean p1, p0, Leu/chainfire/libsuperuser/Shell$Builder;->wantSTDERR:Z

    return-object p0
.end method

.method public useSH()Leu/chainfire/libsuperuser/Shell$Builder;
    .locals 1

    .prologue
    .line 395
    const-string v0, "sh"

    invoke-virtual {p0, v0}, Leu/chainfire/libsuperuser/Shell$Builder;->setShell(Ljava/lang/String;)Leu/chainfire/libsuperuser/Shell$Builder;

    move-result-object v0

    return-object v0
.end method

.method public useSU()Leu/chainfire/libsuperuser/Shell$Builder;
    .locals 1

    .prologue
    .line 402
    const-string v0, "su"

    invoke-virtual {p0, v0}, Leu/chainfire/libsuperuser/Shell$Builder;->setShell(Ljava/lang/String;)Leu/chainfire/libsuperuser/Shell$Builder;

    move-result-object v0

    return-object v0
.end method
