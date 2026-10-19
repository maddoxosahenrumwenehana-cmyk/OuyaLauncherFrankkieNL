.class public Ltv/ouya/console/internal/util/CurrentTime;
.super Ljava/lang/Object;
.source "CurrentTime.java"


# static fields
.field private static instance:Ltv/ouya/console/internal/util/CurrentTime;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    new-instance v0, Ltv/ouya/console/internal/util/CurrentTime;

    invoke-direct {v0}, Ltv/ouya/console/internal/util/CurrentTime;-><init>()V

    sput-object v0, Ltv/ouya/console/internal/util/CurrentTime;->instance:Ltv/ouya/console/internal/util/CurrentTime;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Ltv/ouya/console/internal/util/CurrentTime;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Ltv/ouya/console/internal/util/CurrentTime;->instance:Ltv/ouya/console/internal/util/CurrentTime;

    return-object v0
.end method

.method public static setInstance(Ltv/ouya/console/internal/util/CurrentTime;)V
    .locals 0
    .param p0, "instance"    # Ltv/ouya/console/internal/util/CurrentTime;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 17
    sput-object p0, Ltv/ouya/console/internal/util/CurrentTime;->instance:Ltv/ouya/console/internal/util/CurrentTime;

    .line 18
    return-void
.end method


# virtual methods
.method public currentTimeMillis()J
    .locals 2

    .prologue
    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
