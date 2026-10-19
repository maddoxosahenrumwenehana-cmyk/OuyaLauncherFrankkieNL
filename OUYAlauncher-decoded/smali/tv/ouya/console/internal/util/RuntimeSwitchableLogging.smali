.class public final Ltv/ouya/console/internal/util/RuntimeSwitchableLogging;
.super Ljava/lang/Object;
.source "RuntimeSwitchableLogging.java"


# static fields
.field private static final CHECK_INTERVAL:J = 0x1388L

.field private static final MAGIC_FILE:Ljava/io/File;

.field private static sLastCheckTime:J

.field private static sLoggingCache:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 17
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "dont_skip_the_muffin"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Ltv/ouya/console/internal/util/RuntimeSwitchableLogging;->MAGIC_FILE:Ljava/io/File;

    .line 30
    const-wide/high16 v0, -0x8000000000000000L

    sput-wide v0, Ltv/ouya/console/internal/util/RuntimeSwitchableLogging;->sLastCheckTime:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-static {}, Ltv/ouya/console/internal/util/RuntimeSwitchableLogging;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "*Dynamic*-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 68
    invoke-static {}, Ltv/ouya/console/internal/util/RuntimeSwitchableLogging;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "*Dynamic*-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    :cond_0
    return-void
.end method

.method private static isLoggingEnabled()Z
    .locals 6

    .prologue
    .line 79
    const-class v1, Ltv/ouya/console/internal/util/RuntimeSwitchableLogging;

    monitor-enter v1

    .line 80
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Ltv/ouya/console/internal/util/RuntimeSwitchableLogging;->sLastCheckTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1388

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 81
    sget-object v0, Ltv/ouya/console/internal/util/RuntimeSwitchableLogging;->MAGIC_FILE:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    sput-boolean v0, Ltv/ouya/console/internal/util/RuntimeSwitchableLogging;->sLoggingCache:Z

    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Ltv/ouya/console/internal/util/RuntimeSwitchableLogging;->sLastCheckTime:J

    .line 84
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    sget-boolean v0, Ltv/ouya/console/internal/util/RuntimeSwitchableLogging;->sLoggingCache:Z

    return v0

    .line 84
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
