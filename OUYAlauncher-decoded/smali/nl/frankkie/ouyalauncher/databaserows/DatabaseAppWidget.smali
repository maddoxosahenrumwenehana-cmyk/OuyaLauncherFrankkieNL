.class public Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppWidget;
.super Lnl/wotuu/database/DatabaseRow;
.source "DatabaseAppWidget.java"


# instance fields
.field public appWidgetId:I

.field public height:I

.field public info:Landroid/appwidget/AppWidgetProviderInfo;
    .annotation runtime Lnl/wotuu/database/annotations/DatabaseExclude;
    .end annotation
.end field

.field public posX:I

.field public posY:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 23
    invoke-static {}, Lnl/wotuu/database/DatabaseOpenHelper;->GetInstance()Lnl/wotuu/database/DatabaseOpenHelper;

    move-result-object v0

    const-class v1, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppWidget;

    invoke-virtual {v0, v1}, Lnl/wotuu/database/DatabaseOpenHelper;->GetTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnl/wotuu/database/DatabaseRow;-><init>(Ljava/lang/String;)V

    .line 14
    iput v2, p0, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppWidget;->posX:I

    .line 15
    iput v2, p0, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppWidget;->posY:I

    .line 16
    iput v2, p0, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppWidget;->width:I

    .line 17
    iput v2, p0, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppWidget;->height:I

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppWidget;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 24
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    const/4 v2, 0x0

    .line 27
    invoke-static {}, Lnl/wotuu/database/DatabaseOpenHelper;->GetInstance()Lnl/wotuu/database/DatabaseOpenHelper;

    move-result-object v0

    const-class v1, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppWidget;

    invoke-virtual {v0, v1}, Lnl/wotuu/database/DatabaseOpenHelper;->GetTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lnl/wotuu/database/DatabaseRow;-><init>(Ljava/lang/String;I)V

    .line 14
    iput v2, p0, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppWidget;->posX:I

    .line 15
    iput v2, p0, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppWidget;->posY:I

    .line 16
    iput v2, p0, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppWidget;->width:I

    .line 17
    iput v2, p0, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppWidget;->height:I

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppWidget;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 28
    return-void
.end method
