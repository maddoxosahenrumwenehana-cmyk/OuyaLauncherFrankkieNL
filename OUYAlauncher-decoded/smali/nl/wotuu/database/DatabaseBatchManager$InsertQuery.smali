.class public Lnl/wotuu/database/DatabaseBatchManager$InsertQuery;
.super Ljava/lang/Object;
.source "DatabaseBatchManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnl/wotuu/database/DatabaseBatchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InsertQuery"
.end annotation


# instance fields
.field public contentValues:Landroid/content/ContentValues;

.field public databaseRow:Lnl/wotuu/database/DatabaseRow;

.field public tableName:Ljava/lang/String;

.field final synthetic this$0:Lnl/wotuu/database/DatabaseBatchManager;


# direct methods
.method public constructor <init>(Lnl/wotuu/database/DatabaseBatchManager;Ljava/lang/String;Landroid/content/ContentValues;Lnl/wotuu/database/DatabaseRow;)V
    .locals 0
    .param p2, "tableName"    # Ljava/lang/String;
    .param p3, "contentValues"    # Landroid/content/ContentValues;
    .param p4, "databaseRow"    # Lnl/wotuu/database/DatabaseRow;

    .prologue
    .line 112
    iput-object p1, p0, Lnl/wotuu/database/DatabaseBatchManager$InsertQuery;->this$0:Lnl/wotuu/database/DatabaseBatchManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p2, p0, Lnl/wotuu/database/DatabaseBatchManager$InsertQuery;->tableName:Ljava/lang/String;

    .line 114
    iput-object p3, p0, Lnl/wotuu/database/DatabaseBatchManager$InsertQuery;->contentValues:Landroid/content/ContentValues;

    .line 115
    iput-object p4, p0, Lnl/wotuu/database/DatabaseBatchManager$InsertQuery;->databaseRow:Lnl/wotuu/database/DatabaseRow;

    .line 116
    return-void
.end method
