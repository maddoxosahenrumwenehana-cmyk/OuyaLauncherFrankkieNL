.class public Lnl/wotuu/database/Stopwatch;
.super Ljava/lang/Object;
.source "Stopwatch.java"


# instance fields
.field private final start:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lnl/wotuu/database/Stopwatch;->start:J

    .line 12
    return-void
.end method


# virtual methods
.method public elapsedTime()D
    .locals 6

    .prologue
    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 17
    .local v0, "now":J
    iget-wide v2, p0, Lnl/wotuu/database/Stopwatch;->start:J

    sub-long v2, v0, v2

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    return-wide v2
.end method
