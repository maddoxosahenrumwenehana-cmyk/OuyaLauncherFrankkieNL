.class public Ltv/ouya/console/util/SerialNumber;
.super Ljava/lang/Object;
.source "SerialNumber.java"


# static fields
.field public static final SERIAL:Ljava/lang/String; = "serial"

.field public static final SERIAL_PREFS:Ljava/lang/String; = "serial_prefs"

.field private static instance:Ltv/ouya/console/util/SerialNumber;


# instance fields
.field private context:Landroid/content/Context;

.field private currentTime:Ltv/ouya/console/internal/util/CurrentTime;

.field private serialNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Ltv/ouya/console/util/SerialNumber;->context:Landroid/content/Context;

    .line 37
    invoke-static {}, Ltv/ouya/console/internal/util/CurrentTime;->getInstance()Ltv/ouya/console/internal/util/CurrentTime;

    move-result-object v0

    iput-object v0, p0, Ltv/ouya/console/util/SerialNumber;->currentTime:Ltv/ouya/console/internal/util/CurrentTime;

    .line 38
    return-void
.end method

.method private firstTime()V
    .locals 5

    .prologue
    .line 41
    sget-object v2, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    const-string v3, "emulator"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    const-string v3, "unknown"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 42
    sget-object v2, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    iput-object v2, p0, Ltv/ouya/console/util/SerialNumber;->serialNumber:Ljava/lang/String;

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    const/4 v1, 0x0

    .line 48
    .local v1, "packageContext":Landroid/content/Context;
    :try_start_0
    iget-object v2, p0, Ltv/ouya/console/util/SerialNumber;->context:Landroid/content/Context;

    const-string v3, "tv.ouya"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    .line 50
    if-nez v1, :cond_2

    .line 51
    iget-object v1, p0, Ltv/ouya/console/util/SerialNumber;->context:Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :cond_2
    :goto_1
    const-string v2, "serial_prefs"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "serial"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltv/ouya/console/util/SerialNumber;->serialNumber:Ljava/lang/String;

    .line 58
    iget-object v2, p0, Ltv/ouya/console/util/SerialNumber;->serialNumber:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 59
    invoke-direct {p0, v1}, Ltv/ouya/console/util/SerialNumber;->generateSerialNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltv/ouya/console/util/SerialNumber;->serialNumber:Ljava/lang/String;

    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method private generateSerialNumber(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/util/Random;

    iget-object v5, p0, Ltv/ouya/console/util/SerialNumber;->currentTime:Ltv/ouya/console/internal/util/CurrentTime;

    invoke-virtual {v5}, Ltv/ouya/console/internal/util/CurrentTime;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v4}, Ljava/util/Random;->nextLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 73
    .local v2, "serial":Ljava/lang/String;
    const-string v3, "serial_prefs"

    const/4 v4, 0x3

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 74
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 76
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "serial"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 77
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 79
    return-object v2
.end method

.method public static getInstance(Landroid/content/Context;)Ltv/ouya/console/util/SerialNumber;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    sget-object v0, Ltv/ouya/console/util/SerialNumber;->instance:Ltv/ouya/console/util/SerialNumber;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Ltv/ouya/console/util/SerialNumber;

    invoke-direct {v0, p0}, Ltv/ouya/console/util/SerialNumber;-><init>(Landroid/content/Context;)V

    sput-object v0, Ltv/ouya/console/util/SerialNumber;->instance:Ltv/ouya/console/util/SerialNumber;

    .line 26
    :cond_0
    sget-object v0, Ltv/ouya/console/util/SerialNumber;->instance:Ltv/ouya/console/util/SerialNumber;

    return-object v0
.end method

.method public static setInstance(Ltv/ouya/console/util/SerialNumber;)V
    .locals 0
    .param p0, "instance"    # Ltv/ouya/console/util/SerialNumber;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 31
    sput-object p0, Ltv/ouya/console/util/SerialNumber;->instance:Ltv/ouya/console/util/SerialNumber;

    .line 32
    return-void
.end method


# virtual methods
.method public getSerialNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Ltv/ouya/console/util/SerialNumber;->serialNumber:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 65
    invoke-direct {p0}, Ltv/ouya/console/util/SerialNumber;->firstTime()V

    .line 67
    :cond_0
    iget-object v0, p0, Ltv/ouya/console/util/SerialNumber;->serialNumber:Ljava/lang/String;

    return-object v0
.end method
