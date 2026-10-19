.class Lnl/wotuu/database/DatabaseOpenHelper$TableNameMap;
.super Ljava/lang/Object;
.source "DatabaseOpenHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnl/wotuu/database/DatabaseOpenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TableNameMap"
.end annotation


# instance fields
.field public TableClass:Ljava/lang/Class;

.field public TableName:Ljava/lang/String;

.field final synthetic this$0:Lnl/wotuu/database/DatabaseOpenHelper;


# direct methods
.method private constructor <init>(Lnl/wotuu/database/DatabaseOpenHelper;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .param p2, "tableName"    # Ljava/lang/String;
    .param p3, "tableClass"    # Ljava/lang/Class;

    .prologue
    .line 280
    iput-object p1, p0, Lnl/wotuu/database/DatabaseOpenHelper$TableNameMap;->this$0:Lnl/wotuu/database/DatabaseOpenHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    iput-object p2, p0, Lnl/wotuu/database/DatabaseOpenHelper$TableNameMap;->TableName:Ljava/lang/String;

    .line 282
    iput-object p3, p0, Lnl/wotuu/database/DatabaseOpenHelper$TableNameMap;->TableClass:Ljava/lang/Class;

    .line 283
    return-void
.end method

.method synthetic constructor <init>(Lnl/wotuu/database/DatabaseOpenHelper;Ljava/lang/String;Ljava/lang/Class;Lnl/wotuu/database/DatabaseOpenHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lnl/wotuu/database/DatabaseOpenHelper;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/Class;
    .param p4, "x3"    # Lnl/wotuu/database/DatabaseOpenHelper$1;

    .prologue
    .line 276
    invoke-direct {p0, p1, p2, p3}, Lnl/wotuu/database/DatabaseOpenHelper$TableNameMap;-><init>(Lnl/wotuu/database/DatabaseOpenHelper;Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method
