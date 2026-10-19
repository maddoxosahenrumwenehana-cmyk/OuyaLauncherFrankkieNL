.class public Leu/chainfire/libsuperuser/Shell$Interactive;
.super Ljava/lang/Object;
.source "Shell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/chainfire/libsuperuser/Shell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Interactive"
.end annotation


# instance fields
.field private STDERR:Leu/chainfire/libsuperuser/StreamGobbler;

.field private STDIN:Ljava/io/DataOutputStream;

.field private STDOUT:Leu/chainfire/libsuperuser/StreamGobbler;

.field private final autoHandler:Z

.field private volatile buffer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private callbackSync:Ljava/lang/Object;

.field private volatile callbacks:I

.field private volatile closed:Z

.field private volatile command:Leu/chainfire/libsuperuser/Shell$Command;

.field private final commands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Leu/chainfire/libsuperuser/Shell$Command;",
            ">;"
        }
    .end annotation
.end field

.field private final environment:Ljava/util/Map;
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

.field private final handler:Landroid/os/Handler;

.field private volatile idle:Z

.field private idleSync:Ljava/lang/Object;

.field private volatile lastExitCode:I

.field private volatile lastMarkerSTDERR:Ljava/lang/String;

.field private volatile lastMarkerSTDOUT:Ljava/lang/String;

.field private final onSTDERRLineListener:Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;

.field private final onSTDOUTLineListener:Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;

.field private process:Ljava/lang/Process;

.field private volatile running:Z

.field private final shell:Ljava/lang/String;

.field private final wantSTDERR:Z


# direct methods
.method private constructor <init>(Leu/chainfire/libsuperuser/Shell$Builder;)V
    .locals 3
    .param p1, "builder"    # Leu/chainfire/libsuperuser/Shell$Builder;

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 598
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 574
    iput-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->process:Ljava/lang/Process;

    .line 575
    iput-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDIN:Ljava/io/DataOutputStream;

    .line 576
    iput-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDOUT:Leu/chainfire/libsuperuser/StreamGobbler;

    .line 577
    iput-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDERR:Leu/chainfire/libsuperuser/StreamGobbler;

    .line 579
    iput-boolean v2, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->running:Z

    .line 580
    iput-boolean v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->idle:Z

    .line 581
    iput-boolean v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->closed:Z

    .line 582
    iput v2, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->callbacks:I

    .line 584
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->idleSync:Ljava/lang/Object;

    .line 585
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->callbackSync:Ljava/lang/Object;

    .line 587
    iput v2, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->lastExitCode:I

    .line 588
    iput-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->lastMarkerSTDOUT:Ljava/lang/String;

    .line 589
    iput-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->lastMarkerSTDERR:Ljava/lang/String;

    .line 590
    iput-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->command:Leu/chainfire/libsuperuser/Shell$Command;

    .line 591
    iput-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->buffer:Ljava/util/List;

    .line 599
    invoke-static {p1}, Leu/chainfire/libsuperuser/Shell$Builder;->access$100(Leu/chainfire/libsuperuser/Shell$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->autoHandler:Z

    .line 600
    invoke-static {p1}, Leu/chainfire/libsuperuser/Shell$Builder;->access$200(Leu/chainfire/libsuperuser/Shell$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->shell:Ljava/lang/String;

    .line 601
    invoke-static {p1}, Leu/chainfire/libsuperuser/Shell$Builder;->access$300(Leu/chainfire/libsuperuser/Shell$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->wantSTDERR:Z

    .line 602
    invoke-static {p1}, Leu/chainfire/libsuperuser/Shell$Builder;->access$400(Leu/chainfire/libsuperuser/Shell$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->commands:Ljava/util/List;

    .line 603
    invoke-static {p1}, Leu/chainfire/libsuperuser/Shell$Builder;->access$500(Leu/chainfire/libsuperuser/Shell$Builder;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->environment:Ljava/util/Map;

    .line 604
    invoke-static {p1}, Leu/chainfire/libsuperuser/Shell$Builder;->access$600(Leu/chainfire/libsuperuser/Shell$Builder;)Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->onSTDOUTLineListener:Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;

    .line 605
    invoke-static {p1}, Leu/chainfire/libsuperuser/Shell$Builder;->access$700(Leu/chainfire/libsuperuser/Shell$Builder;)Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->onSTDERRLineListener:Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;

    .line 610
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Leu/chainfire/libsuperuser/Shell$Builder;->access$800(Leu/chainfire/libsuperuser/Shell$Builder;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->autoHandler:Z

    if-eqz v0, :cond_0

    .line 611
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->handler:Landroid/os/Handler;

    .line 616
    :goto_0
    invoke-direct {p0}, Leu/chainfire/libsuperuser/Shell$Interactive;->open()Z

    .line 617
    return-void

    .line 613
    :cond_0
    invoke-static {p1}, Leu/chainfire/libsuperuser/Shell$Builder;->access$800(Leu/chainfire/libsuperuser/Shell$Builder;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->handler:Landroid/os/Handler;

    goto :goto_0
.end method

.method synthetic constructor <init>(Leu/chainfire/libsuperuser/Shell$Builder;Leu/chainfire/libsuperuser/Shell$1;)V
    .locals 0
    .param p1, "x0"    # Leu/chainfire/libsuperuser/Shell$Builder;
    .param p2, "x1"    # Leu/chainfire/libsuperuser/Shell$1;

    .prologue
    .line 564
    invoke-direct {p0, p1}, Leu/chainfire/libsuperuser/Shell$Interactive;-><init>(Leu/chainfire/libsuperuser/Shell$Builder;)V

    return-void
.end method

.method static synthetic access$1300(Leu/chainfire/libsuperuser/Shell$Interactive;)V
    .locals 0
    .param p0, "x0"    # Leu/chainfire/libsuperuser/Shell$Interactive;

    .prologue
    .line 564
    invoke-direct {p0}, Leu/chainfire/libsuperuser/Shell$Interactive;->endCallback()V

    return-void
.end method

.method static synthetic access$1400(Leu/chainfire/libsuperuser/Shell$Interactive;)Leu/chainfire/libsuperuser/Shell$Command;
    .locals 1
    .param p0, "x0"    # Leu/chainfire/libsuperuser/Shell$Interactive;

    .prologue
    .line 564
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->command:Leu/chainfire/libsuperuser/Shell$Command;

    return-object v0
.end method

.method static synthetic access$1502(Leu/chainfire/libsuperuser/Shell$Interactive;I)I
    .locals 0
    .param p0, "x0"    # Leu/chainfire/libsuperuser/Shell$Interactive;
    .param p1, "x1"    # I

    .prologue
    .line 564
    iput p1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->lastExitCode:I

    return p1
.end method

.method static synthetic access$1602(Leu/chainfire/libsuperuser/Shell$Interactive;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Leu/chainfire/libsuperuser/Shell$Interactive;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 564
    iput-object p1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->lastMarkerSTDOUT:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1700(Leu/chainfire/libsuperuser/Shell$Interactive;)V
    .locals 0
    .param p0, "x0"    # Leu/chainfire/libsuperuser/Shell$Interactive;

    .prologue
    .line 564
    invoke-direct {p0}, Leu/chainfire/libsuperuser/Shell$Interactive;->processMarker()V

    return-void
.end method

.method static synthetic access$1800(Leu/chainfire/libsuperuser/Shell$Interactive;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Leu/chainfire/libsuperuser/Shell$Interactive;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 564
    invoke-direct {p0, p1}, Leu/chainfire/libsuperuser/Shell$Interactive;->addBuffer(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Leu/chainfire/libsuperuser/Shell$Interactive;)Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;
    .locals 1
    .param p0, "x0"    # Leu/chainfire/libsuperuser/Shell$Interactive;

    .prologue
    .line 564
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->onSTDOUTLineListener:Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;

    return-object v0
.end method

.method static synthetic access$2000(Leu/chainfire/libsuperuser/Shell$Interactive;Ljava/lang/String;Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;)V
    .locals 0
    .param p0, "x0"    # Leu/chainfire/libsuperuser/Shell$Interactive;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;

    .prologue
    .line 564
    invoke-direct {p0, p1, p2}, Leu/chainfire/libsuperuser/Shell$Interactive;->processLine(Ljava/lang/String;Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;)V

    return-void
.end method

.method static synthetic access$2102(Leu/chainfire/libsuperuser/Shell$Interactive;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Leu/chainfire/libsuperuser/Shell$Interactive;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 564
    iput-object p1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->lastMarkerSTDERR:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2200(Leu/chainfire/libsuperuser/Shell$Interactive;)Z
    .locals 1
    .param p0, "x0"    # Leu/chainfire/libsuperuser/Shell$Interactive;

    .prologue
    .line 564
    iget-boolean v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->wantSTDERR:Z

    return v0
.end method

.method static synthetic access$2300(Leu/chainfire/libsuperuser/Shell$Interactive;)Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;
    .locals 1
    .param p0, "x0"    # Leu/chainfire/libsuperuser/Shell$Interactive;

    .prologue
    .line 564
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->onSTDERRLineListener:Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;

    return-object v0
.end method

.method private declared-synchronized addBuffer(Ljava/lang/String;)V
    .locals 1
    .param p1, "line"    # Ljava/lang/String;

    .prologue
    .line 817
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->buffer:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 818
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->buffer:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 820
    :cond_0
    monitor-exit p0

    return-void

    .line 817
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private endCallback()V
    .locals 2

    .prologue
    .line 835
    iget-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->callbackSync:Ljava/lang/Object;

    monitor-enter v1

    .line 836
    :try_start_0
    iget v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->callbacks:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->callbacks:I

    .line 837
    iget v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->callbacks:I

    if-nez v0, :cond_0

    .line 838
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->callbackSync:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 840
    :cond_0
    monitor-exit v1

    .line 841
    return-void

    .line 840
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private declared-synchronized open()Z
    .locals 12

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 850
    monitor-enter p0

    :try_start_0
    const-string v6, "[%s%%] START"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->shell:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v6, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Leu/chainfire/libsuperuser/Debug;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 854
    :try_start_1
    iget-object v6, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->environment:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 855
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    iget-object v9, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->shell:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v6

    iput-object v6, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->process:Ljava/lang/Process;

    .line 869
    :goto_0
    new-instance v6, Ljava/io/DataOutputStream;

    iget-object v9, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->process:Ljava/lang/Process;

    invoke-virtual {v9}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v6, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDIN:Ljava/io/DataOutputStream;

    .line 870
    new-instance v6, Leu/chainfire/libsuperuser/StreamGobbler;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->shell:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->process:Ljava/lang/Process;

    invoke-virtual {v10}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    new-instance v11, Leu/chainfire/libsuperuser/Shell$Interactive$3;

    invoke-direct {v11, p0}, Leu/chainfire/libsuperuser/Shell$Interactive$3;-><init>(Leu/chainfire/libsuperuser/Shell$Interactive;)V

    invoke-direct {v6, v9, v10, v11}, Leu/chainfire/libsuperuser/StreamGobbler;-><init>(Ljava/lang/String;Ljava/io/InputStream;Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;)V

    iput-object v6, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDOUT:Leu/chainfire/libsuperuser/StreamGobbler;

    .line 886
    new-instance v6, Leu/chainfire/libsuperuser/StreamGobbler;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->shell:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "*"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->process:Ljava/lang/Process;

    invoke-virtual {v10}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v10

    new-instance v11, Leu/chainfire/libsuperuser/Shell$Interactive$4;

    invoke-direct {v11, p0}, Leu/chainfire/libsuperuser/Shell$Interactive$4;-><init>(Leu/chainfire/libsuperuser/Shell$Interactive;)V

    invoke-direct {v6, v9, v10, v11}, Leu/chainfire/libsuperuser/StreamGobbler;-><init>(Ljava/lang/String;Ljava/io/InputStream;Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;)V

    iput-object v6, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDERR:Leu/chainfire/libsuperuser/StreamGobbler;

    .line 900
    iget-object v6, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDOUT:Leu/chainfire/libsuperuser/StreamGobbler;

    invoke-virtual {v6}, Leu/chainfire/libsuperuser/StreamGobbler;->start()V

    .line 901
    iget-object v6, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDERR:Leu/chainfire/libsuperuser/StreamGobbler;

    invoke-virtual {v6}, Leu/chainfire/libsuperuser/StreamGobbler;->start()V

    .line 903
    const/4 v6, 0x1

    iput-boolean v6, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->running:Z

    .line 904
    const/4 v6, 0x0

    iput-boolean v6, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->closed:Z

    .line 906
    invoke-direct {p0}, Leu/chainfire/libsuperuser/Shell$Interactive;->runNextCommand()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v6, v7

    .line 911
    :goto_1
    monitor-exit p0

    return v6

    .line 857
    :cond_0
    :try_start_2
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 858
    .local v5, "newEnvironment":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Ljava/lang/System;->getenv()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 859
    iget-object v6, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->environment:Ljava/util/Map;

    invoke-interface {v5, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 860
    const/4 v3, 0x0

    .line 861
    .local v3, "i":I
    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v6

    new-array v2, v6, [Ljava/lang/String;

    .line 862
    .local v2, "env":[Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 863
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v3

    .line 864
    add-int/lit8 v3, v3, 0x1

    .line 865
    goto :goto_2

    .line 866
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    iget-object v9, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->shell:Ljava/lang/String;

    invoke-virtual {v6, v9, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v6

    iput-object v6, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->process:Ljava/lang/Process;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 909
    .end local v2    # "env":[Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "newEnvironment":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    move v6, v8

    .line 911
    goto :goto_1

    .line 850
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method private declared-synchronized processLine(Ljava/lang/String;Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;)V
    .locals 4
    .param p1, "line"    # Ljava/lang/String;
    .param p2, "listener"    # Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;

    .prologue
    .line 789
    monitor-enter p0

    if-eqz p2, :cond_0

    .line 790
    :try_start_0
    iget-object v2, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->handler:Landroid/os/Handler;

    if-eqz v2, :cond_1

    .line 791
    move-object v0, p1

    .line 792
    .local v0, "fLine":Ljava/lang/String;
    move-object v1, p2

    .line 794
    .local v1, "fListener":Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;
    invoke-direct {p0}, Leu/chainfire/libsuperuser/Shell$Interactive;->startCallback()V

    .line 795
    iget-object v2, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->handler:Landroid/os/Handler;

    new-instance v3, Leu/chainfire/libsuperuser/Shell$Interactive$2;

    invoke-direct {v3, p0, v1, v0}, Leu/chainfire/libsuperuser/Shell$Interactive$2;-><init>(Leu/chainfire/libsuperuser/Shell$Interactive;Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 809
    .end local v0    # "fLine":Ljava/lang/String;
    .end local v1    # "fListener":Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 806
    :cond_1
    :try_start_1
    invoke-interface {p2, p1}, Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;->onLine(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 789
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized processMarker()V
    .locals 7

    .prologue
    .line 750
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->command:Leu/chainfire/libsuperuser/Shell$Command;

    invoke-static {v3}, Leu/chainfire/libsuperuser/Shell$Command;->access$1100(Leu/chainfire/libsuperuser/Shell$Command;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->lastMarkerSTDOUT:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->command:Leu/chainfire/libsuperuser/Shell$Command;

    invoke-static {v3}, Leu/chainfire/libsuperuser/Shell$Command;->access$1100(Leu/chainfire/libsuperuser/Shell$Command;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->lastMarkerSTDERR:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 751
    iget-object v3, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->command:Leu/chainfire/libsuperuser/Shell$Command;

    invoke-static {v3}, Leu/chainfire/libsuperuser/Shell$Command;->access$1000(Leu/chainfire/libsuperuser/Shell$Command;)Leu/chainfire/libsuperuser/Shell$OnCommandResultListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 752
    iget-object v3, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->buffer:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 753
    iget-object v3, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->handler:Landroid/os/Handler;

    if-eqz v3, :cond_2

    .line 754
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->buffer:Ljava/util/List;

    .line 755
    .local v0, "fBuffer":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget v2, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->lastExitCode:I

    .line 756
    .local v2, "fExitCode":I
    iget-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->command:Leu/chainfire/libsuperuser/Shell$Command;

    .line 758
    .local v1, "fCommand":Leu/chainfire/libsuperuser/Shell$Command;
    invoke-direct {p0}, Leu/chainfire/libsuperuser/Shell$Interactive;->startCallback()V

    .line 759
    iget-object v3, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->handler:Landroid/os/Handler;

    new-instance v4, Leu/chainfire/libsuperuser/Shell$Interactive$1;

    invoke-direct {v4, p0, v1, v2, v0}, Leu/chainfire/libsuperuser/Shell$Interactive$1;-><init>(Leu/chainfire/libsuperuser/Shell$Interactive;Leu/chainfire/libsuperuser/Shell$Command;ILjava/util/List;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 775
    .end local v0    # "fBuffer":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "fCommand":Leu/chainfire/libsuperuser/Shell$Command;
    .end local v2    # "fExitCode":I
    :cond_0
    :goto_0
    const/4 v3, 0x0

    iput-object v3, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->command:Leu/chainfire/libsuperuser/Shell$Command;

    .line 776
    const/4 v3, 0x0

    iput-object v3, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->buffer:Ljava/util/List;

    .line 777
    const/4 v3, 0x1

    iput-boolean v3, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->idle:Z

    .line 778
    invoke-direct {p0}, Leu/chainfire/libsuperuser/Shell$Interactive;->runNextCommand()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 780
    :cond_1
    monitor-exit p0

    return-void

    .line 770
    :cond_2
    :try_start_1
    iget-object v3, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->command:Leu/chainfire/libsuperuser/Shell$Command;

    invoke-static {v3}, Leu/chainfire/libsuperuser/Shell$Command;->access$1000(Leu/chainfire/libsuperuser/Shell$Command;)Leu/chainfire/libsuperuser/Shell$OnCommandResultListener;

    move-result-object v3

    iget-object v4, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->command:Leu/chainfire/libsuperuser/Shell$Command;

    invoke-static {v4}, Leu/chainfire/libsuperuser/Shell$Command;->access$1200(Leu/chainfire/libsuperuser/Shell$Command;)I

    move-result v4

    iget v5, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->lastExitCode:I

    iget-object v6, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->buffer:Ljava/util/List;

    invoke-interface {v3, v4, v5, v6}, Leu/chainfire/libsuperuser/Shell$OnCommandResultListener;->onCommandResult(IILjava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 750
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private runNextCommand()V
    .locals 1

    .prologue
    .line 692
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Leu/chainfire/libsuperuser/Shell$Interactive;->runNextCommand(Z)V

    .line 693
    return-void
.end method

.method private runNextCommand(Z)V
    .locals 10
    .param p1, "notifyIdle"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 703
    invoke-virtual {p0}, Leu/chainfire/libsuperuser/Shell$Interactive;->isRunning()Z

    move-result v4

    .line 704
    .local v4, "running":Z
    if-nez v4, :cond_0

    iput-boolean v6, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->idle:Z

    .line 706
    :cond_0
    if-eqz v4, :cond_3

    iget-boolean v6, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->idle:Z

    if-eqz v6, :cond_3

    iget-object v6, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->commands:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 707
    iget-object v6, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->commands:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leu/chainfire/libsuperuser/Shell$Command;

    .line 708
    .local v1, "command":Leu/chainfire/libsuperuser/Shell$Command;
    iget-object v6, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->commands:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 710
    iput-object v8, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->buffer:Ljava/util/List;

    .line 711
    iput v7, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->lastExitCode:I

    .line 712
    iput-object v8, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->lastMarkerSTDOUT:Ljava/lang/String;

    .line 713
    iput-object v8, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->lastMarkerSTDERR:Ljava/lang/String;

    .line 715
    invoke-static {v1}, Leu/chainfire/libsuperuser/Shell$Command;->access$900(Leu/chainfire/libsuperuser/Shell$Command;)[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    if-lez v6, :cond_5

    .line 717
    :try_start_0
    invoke-static {v1}, Leu/chainfire/libsuperuser/Shell$Command;->access$1000(Leu/chainfire/libsuperuser/Shell$Command;)Leu/chainfire/libsuperuser/Shell$OnCommandResultListener;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 720
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v6}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->buffer:Ljava/util/List;

    .line 723
    :cond_1
    const/4 v6, 0x0

    iput-boolean v6, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->idle:Z

    .line 724
    iput-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->command:Leu/chainfire/libsuperuser/Shell$Command;

    .line 725
    invoke-static {v1}, Leu/chainfire/libsuperuser/Shell$Command;->access$900(Leu/chainfire/libsuperuser/Shell$Command;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v5, v0, v2

    .line 726
    .local v5, "write":Ljava/lang/String;
    const-string v6, "[%s+] %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->shell:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v5, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Leu/chainfire/libsuperuser/Debug;->log(Ljava/lang/String;)V

    .line 727
    iget-object v6, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDIN:Ljava/io/DataOutputStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 725
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 729
    .end local v5    # "write":Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDIN:Ljava/io/DataOutputStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "echo "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Leu/chainfire/libsuperuser/Shell$Command;->access$1100(Leu/chainfire/libsuperuser/Shell$Command;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " $?\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 730
    iget-object v6, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDIN:Ljava/io/DataOutputStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "echo "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Leu/chainfire/libsuperuser/Shell$Command;->access$1100(Leu/chainfire/libsuperuser/Shell$Command;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " >&2\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 731
    iget-object v6, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDIN:Ljava/io/DataOutputStream;

    invoke-virtual {v6}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 739
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "command":Leu/chainfire/libsuperuser/Shell$Command;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_3
    :goto_1
    iget-boolean v6, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->idle:Z

    if-eqz v6, :cond_4

    if-eqz p1, :cond_4

    .line 740
    iget-object v7, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->idleSync:Ljava/lang/Object;

    monitor-enter v7

    .line 741
    :try_start_1
    iget-object v6, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->idleSync:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 742
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 744
    :cond_4
    return-void

    .line 735
    .restart local v1    # "command":Leu/chainfire/libsuperuser/Shell$Command;
    :cond_5
    invoke-direct {p0, v7}, Leu/chainfire/libsuperuser/Shell$Interactive;->runNextCommand(Z)V

    goto :goto_1

    .line 742
    .end local v1    # "command":Leu/chainfire/libsuperuser/Shell$Command;
    :catchall_0
    move-exception v6

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 732
    .restart local v1    # "command":Leu/chainfire/libsuperuser/Shell$Command;
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method private startCallback()V
    .locals 2

    .prologue
    .line 826
    iget-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->callbackSync:Ljava/lang/Object;

    monitor-enter v1

    .line 827
    :try_start_0
    iget v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->callbacks:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->callbacks:I

    .line 828
    monitor-exit v1

    .line 829
    return-void

    .line 828
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public addCommand(Ljava/lang/String;)V
    .locals 2
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 634
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Leu/chainfire/libsuperuser/Shell$Interactive;->addCommand(Ljava/lang/String;ILeu/chainfire/libsuperuser/Shell$OnCommandResultListener;)V

    return-void
.end method

.method public addCommand(Ljava/lang/String;ILeu/chainfire/libsuperuser/Shell$OnCommandResultListener;)V
    .locals 2
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "code"    # I
    .param p3, "onCommandResultListener"    # Leu/chainfire/libsuperuser/Shell$OnCommandResultListener;

    .prologue
    .line 645
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0, p2, p3}, Leu/chainfire/libsuperuser/Shell$Interactive;->addCommand([Ljava/lang/String;ILeu/chainfire/libsuperuser/Shell$OnCommandResultListener;)V

    return-void
.end method

.method public addCommand(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 652
    .local p1, "commands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Leu/chainfire/libsuperuser/Shell$Interactive;->addCommand(Ljava/util/List;ILeu/chainfire/libsuperuser/Shell$OnCommandResultListener;)V

    return-void
.end method

.method public addCommand(Ljava/util/List;ILeu/chainfire/libsuperuser/Shell$OnCommandResultListener;)V
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
            ")V"
        }
    .end annotation

    .prologue
    .line 663
    .local p1, "commands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v0, p2, p3}, Leu/chainfire/libsuperuser/Shell$Interactive;->addCommand([Ljava/lang/String;ILeu/chainfire/libsuperuser/Shell$OnCommandResultListener;)V

    return-void
.end method

.method public addCommand([Ljava/lang/String;)V
    .locals 2
    .param p1, "commands"    # [Ljava/lang/String;

    .prologue
    .line 670
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Leu/chainfire/libsuperuser/Shell$Interactive;->addCommand([Ljava/lang/String;ILeu/chainfire/libsuperuser/Shell$OnCommandResultListener;)V

    return-void
.end method

.method public declared-synchronized addCommand([Ljava/lang/String;ILeu/chainfire/libsuperuser/Shell$OnCommandResultListener;)V
    .locals 2
    .param p1, "commands"    # [Ljava/lang/String;
    .param p2, "code"    # I
    .param p3, "onCommandResultListener"    # Leu/chainfire/libsuperuser/Shell$OnCommandResultListener;

    .prologue
    .line 682
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->running:Z

    if-eqz v0, :cond_0

    .line 683
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->commands:Ljava/util/List;

    new-instance v1, Leu/chainfire/libsuperuser/Shell$Command;

    invoke-direct {v1, p1, p2, p3}, Leu/chainfire/libsuperuser/Shell$Command;-><init>([Ljava/lang/String;ILeu/chainfire/libsuperuser/Shell$OnCommandResultListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 684
    invoke-direct {p0}, Leu/chainfire/libsuperuser/Shell$Interactive;->runNextCommand()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 686
    :cond_0
    monitor-exit p0

    return-void

    .line 682
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public close()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 922
    invoke-virtual {p0}, Leu/chainfire/libsuperuser/Shell$Interactive;->isIdle()Z

    move-result v0

    .line 924
    .local v0, "_idle":Z
    monitor-enter p0

    .line 925
    :try_start_0
    iget-boolean v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->running:Z

    if-nez v1, :cond_0

    monitor-exit p0

    .line 964
    :goto_0
    return-void

    .line 926
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->running:Z

    .line 927
    const/4 v1, 0x1

    iput-boolean v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->closed:Z

    .line 928
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 932
    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 933
    const-string v1, "Application attempted to wait for a non-idle shell to close on the main thread"

    invoke-static {v1}, Leu/chainfire/libsuperuser/Debug;->log(Ljava/lang/String;)V

    .line 934
    new-instance v1, Leu/chainfire/libsuperuser/ShellOnMainThreadException;

    const-string v2, "Application attempted to wait for a non-idle shell to close on the main thread"

    invoke-direct {v1, v2}, Leu/chainfire/libsuperuser/ShellOnMainThreadException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 928
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 937
    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {p0}, Leu/chainfire/libsuperuser/Shell$Interactive;->waitForIdle()Z

    .line 940
    :cond_2
    :try_start_2
    iget-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDIN:Ljava/io/DataOutputStream;

    const-string v2, "exit\n"

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 941
    iget-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDIN:Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 944
    iget-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->process:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 951
    :try_start_3
    iget-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDIN:Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 954
    :goto_1
    :try_start_4
    iget-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDOUT:Leu/chainfire/libsuperuser/StreamGobbler;

    invoke-virtual {v1}, Leu/chainfire/libsuperuser/StreamGobbler;->join()V

    .line 955
    iget-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDERR:Leu/chainfire/libsuperuser/StreamGobbler;

    invoke-virtual {v1}, Leu/chainfire/libsuperuser/StreamGobbler;->join()V

    .line 956
    iget-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->process:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 963
    :goto_2
    const-string v1, "[%s%%] END"

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->shell:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Leu/chainfire/libsuperuser/Debug;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 959
    :catch_0
    move-exception v1

    goto :goto_2

    .line 957
    :catch_1
    move-exception v1

    goto :goto_2

    .line 952
    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 621
    iget-boolean v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->closed:Z

    if-nez v0, :cond_0

    .line 623
    const-string v0, "Application did not close() interactive shell"

    invoke-static {v0}, Leu/chainfire/libsuperuser/Debug;->log(Ljava/lang/String;)V

    .line 624
    new-instance v0, Leu/chainfire/libsuperuser/ShellNotClosedException;

    invoke-direct {v0}, Leu/chainfire/libsuperuser/ShellNotClosedException;-><init>()V

    throw v0

    .line 626
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 627
    return-void
.end method

.method public hasHandler()Z
    .locals 1

    .prologue
    .line 1066
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized isIdle()Z
    .locals 2

    .prologue
    .line 987
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Leu/chainfire/libsuperuser/Shell$Interactive;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 988
    const/4 v0, 0x1

    iput-boolean v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->idle:Z

    .line 989
    iget-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->idleSync:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 990
    :try_start_1
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->idleSync:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 991
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 993
    :cond_0
    :try_start_2
    iget-boolean v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->idle:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return v0

    .line 991
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 987
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 974
    :try_start_0
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->process:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->exitValue()I
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 975
    const/4 v0, 0x0

    .line 978
    :goto_0
    return v0

    .line 976
    :catch_0
    move-exception v0

    .line 978
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public waitForIdle()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1018
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 1019
    const-string v1, "Application attempted to wait for a shell to become idle on the main thread"

    invoke-static {v1}, Leu/chainfire/libsuperuser/Debug;->log(Ljava/lang/String;)V

    .line 1020
    new-instance v1, Leu/chainfire/libsuperuser/ShellOnMainThreadException;

    const-string v2, "Application attempted to wait for a shell to become idle on the main thread"

    invoke-direct {v1, v2}, Leu/chainfire/libsuperuser/ShellOnMainThreadException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1023
    :cond_0
    invoke-virtual {p0}, Leu/chainfire/libsuperuser/Shell$Interactive;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1024
    iget-object v2, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->idleSync:Ljava/lang/Object;

    monitor-enter v2

    .line 1025
    :goto_0
    :try_start_0
    iget-boolean v3, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->idle:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v3, :cond_1

    .line 1027
    :try_start_1
    iget-object v3, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->idleSync:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 1028
    :catch_0
    move-exception v0

    .line 1029
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    monitor-exit v2

    .line 1057
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_1
    return v1

    .line 1032
    :cond_1
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1034
    iget-object v2, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->handler:Landroid/os/Handler;

    if-eqz v2, :cond_3

    iget-object v2, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->handler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->handler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v2, v3, :cond_3

    .line 1045
    iget-object v2, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->callbackSync:Ljava/lang/Object;

    monitor-enter v2

    .line 1046
    :goto_2
    :try_start_3
    iget v3, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->callbacks:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-lez v3, :cond_2

    .line 1048
    :try_start_4
    iget-object v3, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->callbackSync:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 1049
    :catch_1
    move-exception v0

    .line 1050
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    :try_start_5
    monitor-exit v2

    goto :goto_1

    .line 1053
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v1

    .line 1032
    :catchall_1
    move-exception v1

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1

    .line 1053
    :cond_2
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1057
    :cond_3
    const/4 v1, 0x1

    goto :goto_1
.end method
