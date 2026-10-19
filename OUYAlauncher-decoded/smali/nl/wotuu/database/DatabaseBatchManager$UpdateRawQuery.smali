.class public Lnl/wotuu/database/DatabaseBatchManager$UpdateRawQuery;
.super Ljava/lang/Object;
.source "DatabaseBatchManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnl/wotuu/database/DatabaseBatchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UpdateRawQuery"
.end annotation


# instance fields
.field public rawQuery:Ljava/lang/String;

.field final synthetic this$0:Lnl/wotuu/database/DatabaseBatchManager;


# direct methods
.method public constructor <init>(Lnl/wotuu/database/DatabaseBatchManager;Ljava/lang/String;)V
    .locals 0
    .param p2, "rawQuery"    # Ljava/lang/String;

    .prologue
    .line 142
    iput-object p1, p0, Lnl/wotuu/database/DatabaseBatchManager$UpdateRawQuery;->this$0:Lnl/wotuu/database/DatabaseBatchManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-object p2, p0, Lnl/wotuu/database/DatabaseBatchManager$UpdateRawQuery;->rawQuery:Ljava/lang/String;

    .line 144
    return-void
.end method
