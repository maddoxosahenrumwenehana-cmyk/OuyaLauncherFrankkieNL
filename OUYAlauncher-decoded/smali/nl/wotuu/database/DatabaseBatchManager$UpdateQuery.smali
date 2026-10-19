.class public Lnl/wotuu/database/DatabaseBatchManager$UpdateQuery;
.super Ljava/lang/Object;
.source "DatabaseBatchManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnl/wotuu/database/DatabaseBatchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UpdateQuery"
.end annotation


# instance fields
.field public contentValues:Landroid/content/ContentValues;

.field public tableName:Ljava/lang/String;

.field final synthetic this$0:Lnl/wotuu/database/DatabaseBatchManager;

.field public whereClause:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lnl/wotuu/database/DatabaseBatchManager;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 0
    .param p2, "tableName"    # Ljava/lang/String;
    .param p3, "contentValues"    # Landroid/content/ContentValues;
    .param p4, "whereClause"    # Ljava/lang/String;

    .prologue
    .line 132
    iput-object p1, p0, Lnl/wotuu/database/DatabaseBatchManager$UpdateQuery;->this$0:Lnl/wotuu/database/DatabaseBatchManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object p2, p0, Lnl/wotuu/database/DatabaseBatchManager$UpdateQuery;->tableName:Ljava/lang/String;

    .line 134
    iput-object p3, p0, Lnl/wotuu/database/DatabaseBatchManager$UpdateQuery;->contentValues:Landroid/content/ContentValues;

    .line 135
    iput-object p4, p0, Lnl/wotuu/database/DatabaseBatchManager$UpdateQuery;->whereClause:Ljava/lang/String;

    .line 136
    return-void
.end method
