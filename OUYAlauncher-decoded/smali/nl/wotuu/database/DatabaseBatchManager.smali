.class public Lnl/wotuu/database/DatabaseBatchManager;
.super Ljava/lang/Object;
.source "DatabaseBatchManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnl/wotuu/database/DatabaseBatchManager$BatchProcessor;,
        Lnl/wotuu/database/DatabaseBatchManager$DeleteQuery;,
        Lnl/wotuu/database/DatabaseBatchManager$UpdateRawQuery;,
        Lnl/wotuu/database/DatabaseBatchManager$UpdateQuery;,
        Lnl/wotuu/database/DatabaseBatchManager$InsertRawQuery;,
        Lnl/wotuu/database/DatabaseBatchManager$InsertQuery;
    }
.end annotation


# static fields
.field private static PAUSE_MS:I


# instance fields
.field private batchProcessor:Lnl/wotuu/database/DatabaseBatchManager$BatchProcessor;

.field private deleteQueries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnl/wotuu/database/DatabaseBatchManager$DeleteQuery;",
            ">;"
        }
    .end annotation
.end field

.field private helper:Lnl/wotuu/database/DatabaseOpenHelper;

.field private insertQueries:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lnl/wotuu/database/DatabaseBatchManager$InsertQuery;",
            ">;>;"
        }
    .end annotation
.end field

.field private insertRawQueries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnl/wotuu/database/DatabaseBatchManager$InsertRawQuery;",
            ">;"
        }
    .end annotation
.end field

.field private updateQueries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnl/wotuu/database/DatabaseBatchManager$UpdateQuery;",
            ">;"
        }
    .end annotation
.end field

.field private updateRawQueries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnl/wotuu/database/DatabaseBatchManager$UpdateRawQuery;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/16 v0, 0x7530

    sput v0, Lnl/wotuu/database/DatabaseBatchManager;->PAUSE_MS:I

    return-void
.end method

.method public constructor <init>(Lnl/wotuu/database/DatabaseOpenHelper;)V
    .locals 4
    .param p1, "helper"    # Lnl/wotuu/database/DatabaseOpenHelper;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lnl/wotuu/database/DatabaseBatchManager;->helper:Lnl/wotuu/database/DatabaseOpenHelper;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnl/wotuu/database/DatabaseBatchManager;->insertQueries:Ljava/util/HashMap;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnl/wotuu/database/DatabaseBatchManager;->insertRawQueries:Ljava/util/List;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnl/wotuu/database/DatabaseBatchManager;->updateQueries:Ljava/util/List;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnl/wotuu/database/DatabaseBatchManager;->updateRawQueries:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnl/wotuu/database/DatabaseBatchManager;->deleteQueries:Ljava/util/List;

    .line 40
    new-instance v0, Lnl/wotuu/database/DatabaseBatchManager$BatchProcessor;

    invoke-direct {v0, p0}, Lnl/wotuu/database/DatabaseBatchManager$BatchProcessor;-><init>(Lnl/wotuu/database/DatabaseBatchManager;)V

    iput-object v0, p0, Lnl/wotuu/database/DatabaseBatchManager;->batchProcessor:Lnl/wotuu/database/DatabaseBatchManager$BatchProcessor;

    .line 42
    iget-object v1, p0, Lnl/wotuu/database/DatabaseBatchManager;->batchProcessor:Lnl/wotuu/database/DatabaseBatchManager$BatchProcessor;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Void;

    const/4 v3, 0x0

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lnl/wotuu/database/ThreadingUtils;->StartASyncTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 43
    return-void
.end method

.method static synthetic access$000(Lnl/wotuu/database/DatabaseBatchManager;)Lnl/wotuu/database/DatabaseOpenHelper;
    .locals 1
    .param p0, "x0"    # Lnl/wotuu/database/DatabaseBatchManager;

    .prologue
    .line 17
    iget-object v0, p0, Lnl/wotuu/database/DatabaseBatchManager;->helper:Lnl/wotuu/database/DatabaseOpenHelper;

    return-object v0
.end method

.method static synthetic access$100(Lnl/wotuu/database/DatabaseBatchManager;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lnl/wotuu/database/DatabaseBatchManager;

    .prologue
    .line 17
    iget-object v0, p0, Lnl/wotuu/database/DatabaseBatchManager;->insertQueries:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lnl/wotuu/database/DatabaseBatchManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lnl/wotuu/database/DatabaseBatchManager;

    .prologue
    .line 17
    iget-object v0, p0, Lnl/wotuu/database/DatabaseBatchManager;->insertRawQueries:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lnl/wotuu/database/DatabaseBatchManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lnl/wotuu/database/DatabaseBatchManager;

    .prologue
    .line 17
    iget-object v0, p0, Lnl/wotuu/database/DatabaseBatchManager;->updateQueries:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lnl/wotuu/database/DatabaseBatchManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lnl/wotuu/database/DatabaseBatchManager;

    .prologue
    .line 17
    iget-object v0, p0, Lnl/wotuu/database/DatabaseBatchManager;->updateRawQueries:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lnl/wotuu/database/DatabaseBatchManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lnl/wotuu/database/DatabaseBatchManager;

    .prologue
    .line 17
    iget-object v0, p0, Lnl/wotuu/database/DatabaseBatchManager;->deleteQueries:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600()I
    .locals 1

    .prologue
    .line 17
    sget v0, Lnl/wotuu/database/DatabaseBatchManager;->PAUSE_MS:I

    return v0
.end method


# virtual methods
.method public QueueDelete(Ljava/lang/String;)V
    .locals 2
    .param p1, "rawQuery"    # Ljava/lang/String;

    .prologue
    .line 100
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "delete"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Passed raw query was not a delete query!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_0
    iget-object v0, p0, Lnl/wotuu/database/DatabaseBatchManager;->deleteQueries:Ljava/util/List;

    new-instance v1, Lnl/wotuu/database/DatabaseBatchManager$DeleteQuery;

    invoke-direct {v1, p0, p1}, Lnl/wotuu/database/DatabaseBatchManager$DeleteQuery;-><init>(Lnl/wotuu/database/DatabaseBatchManager;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    return-void
.end method

.method public QueueInsert(Ljava/lang/String;)V
    .locals 2
    .param p1, "rawQuery"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "insert"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Passed raw query was not an insert query!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_0
    iget-object v0, p0, Lnl/wotuu/database/DatabaseBatchManager;->insertRawQueries:Ljava/util/List;

    new-instance v1, Lnl/wotuu/database/DatabaseBatchManager$InsertRawQuery;

    invoke-direct {v1, p0, p1}, Lnl/wotuu/database/DatabaseBatchManager$InsertRawQuery;-><init>(Lnl/wotuu/database/DatabaseBatchManager;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    return-void
.end method

.method public QueueInsert(Ljava/lang/String;Landroid/content/ContentValues;Lnl/wotuu/database/DatabaseRow;)V
    .locals 2
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "contentValues"    # Landroid/content/ContentValues;
    .param p3, "databaseRow"    # Lnl/wotuu/database/DatabaseRow;

    .prologue
    .line 53
    iget-object v0, p0, Lnl/wotuu/database/DatabaseBatchManager;->insertQueries:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lnl/wotuu/database/DatabaseBatchManager;->insertQueries:Ljava/util/HashMap;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    :cond_0
    iget-object v0, p0, Lnl/wotuu/database/DatabaseBatchManager;->insertQueries:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v1, Lnl/wotuu/database/DatabaseBatchManager$InsertQuery;

    invoke-direct {v1, p0, p1, p2, p3}, Lnl/wotuu/database/DatabaseBatchManager$InsertQuery;-><init>(Lnl/wotuu/database/DatabaseBatchManager;Ljava/lang/String;Landroid/content/ContentValues;Lnl/wotuu/database/DatabaseRow;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    return-void
.end method

.method public QueueUpdate(Ljava/lang/String;)V
    .locals 2
    .param p1, "rawQuery"    # Ljava/lang/String;

    .prologue
    .line 88
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "update"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Passed raw query was not an update query!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_0
    iget-object v0, p0, Lnl/wotuu/database/DatabaseBatchManager;->updateRawQueries:Ljava/util/List;

    new-instance v1, Lnl/wotuu/database/DatabaseBatchManager$UpdateRawQuery;

    invoke-direct {v1, p0, p1}, Lnl/wotuu/database/DatabaseBatchManager$UpdateRawQuery;-><init>(Lnl/wotuu/database/DatabaseBatchManager;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    return-void
.end method

.method public QueueUpdate(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 2
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "contentValues"    # Landroid/content/ContentValues;
    .param p3, "whereClause"    # Ljava/lang/String;

    .prologue
    .line 79
    iget-object v0, p0, Lnl/wotuu/database/DatabaseBatchManager;->updateQueries:Ljava/util/List;

    new-instance v1, Lnl/wotuu/database/DatabaseBatchManager$UpdateQuery;

    invoke-direct {v1, p0, p1, p2, p3}, Lnl/wotuu/database/DatabaseBatchManager$UpdateQuery;-><init>(Lnl/wotuu/database/DatabaseBatchManager;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    return-void
.end method
