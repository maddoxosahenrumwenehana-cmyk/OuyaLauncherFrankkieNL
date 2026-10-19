.class public Lnl/wotuu/database/exceptions/DatabaseUpgradeException;
.super Ljava/lang/RuntimeException;
.source "DatabaseUpgradeException.java"


# instance fields
.field public newVersion:I

.field public oldversion:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "oldversion"    # I
    .param p2, "newVersion"    # I

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 13
    iput p1, p0, Lnl/wotuu/database/exceptions/DatabaseUpgradeException;->oldversion:I

    .line 14
    iput p2, p0, Lnl/wotuu/database/exceptions/DatabaseUpgradeException;->newVersion:I

    .line 15
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 1
    .param p1, "oldversion"    # I
    .param p2, "newVersion"    # I
    .param p3, "detailMessage"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-static {p1, p2, p3}, Lnl/wotuu/database/exceptions/DatabaseUpgradeException;->FormatDetailMessage(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 19
    iput p1, p0, Lnl/wotuu/database/exceptions/DatabaseUpgradeException;->oldversion:I

    .line 20
    iput p2, p0, Lnl/wotuu/database/exceptions/DatabaseUpgradeException;->newVersion:I

    .line 21
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "oldversion"    # I
    .param p2, "newVersion"    # I
    .param p3, "detailMessage"    # Ljava/lang/String;
    .param p4, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 24
    invoke-static {p1, p2, p3}, Lnl/wotuu/database/exceptions/DatabaseUpgradeException;->FormatDetailMessage(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    iput p1, p0, Lnl/wotuu/database/exceptions/DatabaseUpgradeException;->oldversion:I

    .line 26
    iput p2, p0, Lnl/wotuu/database/exceptions/DatabaseUpgradeException;->newVersion:I

    .line 27
    return-void
.end method

.method public constructor <init>(IILjava/lang/Throwable;)V
    .locals 0
    .param p1, "oldversion"    # I
    .param p2, "newVersion"    # I
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 30
    invoke-direct {p0, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 31
    iput p1, p0, Lnl/wotuu/database/exceptions/DatabaseUpgradeException;->oldversion:I

    .line 32
    iput p2, p0, Lnl/wotuu/database/exceptions/DatabaseUpgradeException;->newVersion:I

    .line 33
    return-void
.end method

.method private static FormatDetailMessage(IILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "oldversion"    # I
    .param p1, "newVersion"    # I
    .param p2, "detailMessage"    # Ljava/lang/String;

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Upgrading from version "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
