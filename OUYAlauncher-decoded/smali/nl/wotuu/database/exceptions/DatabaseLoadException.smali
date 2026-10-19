.class public Lnl/wotuu/database/exceptions/DatabaseLoadException;
.super Ljava/lang/RuntimeException;
.source "DatabaseLoadException.java"


# instance fields
.field public databaseRow:Lnl/wotuu/database/DatabaseRow;


# direct methods
.method public constructor <init>(Lnl/wotuu/database/DatabaseRow;)V
    .locals 0
    .param p1, "databaseRow"    # Lnl/wotuu/database/DatabaseRow;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 12
    iput-object p1, p0, Lnl/wotuu/database/exceptions/DatabaseLoadException;->databaseRow:Lnl/wotuu/database/DatabaseRow;

    .line 13
    return-void
.end method

.method public constructor <init>(Lnl/wotuu/database/DatabaseRow;Ljava/lang/String;)V
    .locals 0
    .param p1, "databaseRow"    # Lnl/wotuu/database/DatabaseRow;
    .param p2, "detailMessage"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 17
    iput-object p1, p0, Lnl/wotuu/database/exceptions/DatabaseLoadException;->databaseRow:Lnl/wotuu/database/DatabaseRow;

    .line 18
    return-void
.end method

.method public constructor <init>(Lnl/wotuu/database/DatabaseRow;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "databaseRow"    # Lnl/wotuu/database/DatabaseRow;
    .param p2, "detailMessage"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 21
    invoke-direct {p0, p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 22
    iput-object p1, p0, Lnl/wotuu/database/exceptions/DatabaseLoadException;->databaseRow:Lnl/wotuu/database/DatabaseRow;

    .line 23
    return-void
.end method

.method public constructor <init>(Lnl/wotuu/database/DatabaseRow;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "databaseRow"    # Lnl/wotuu/database/DatabaseRow;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 26
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 27
    iput-object p1, p0, Lnl/wotuu/database/exceptions/DatabaseLoadException;->databaseRow:Lnl/wotuu/database/DatabaseRow;

    .line 28
    return-void
.end method
