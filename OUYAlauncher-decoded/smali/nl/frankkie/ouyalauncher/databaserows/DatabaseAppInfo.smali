.class public Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;
.super Lnl/wotuu/database/DatabaseRow;
.source "DatabaseAppInfo.java"

# interfaces
.implements Lnl/frankkie/ouyalauncher/IGridItem;


# annotations
.annotation build Lproguard/annotation/KeepPublicClassMemberNames;
.end annotation


# instance fields
.field public animationPath:Ljava/lang/String;
    .annotation runtime Lnl/wotuu/database/annotations/DatabaseExclude;
    .end annotation
.end field

.field public componentName:Ljava/lang/String;

.field public folder:Ljava/lang/String;

.field public icon:Landroid/graphics/drawable/Drawable;
    .annotation runtime Lnl/wotuu/database/annotations/DatabaseExclude;
    .end annotation
.end field

.field public intent:Landroid/content/Intent;
    .annotation runtime Lnl/wotuu/database/annotations/DatabaseExclude;
    .end annotation
.end field

.field public isFavorite:I

.field public isOUYA:I

.field public isOUYAGame:I

.field public lastOpened:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public timesOpened:I

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 41
    invoke-static {}, Lnl/wotuu/database/DatabaseOpenHelper;->GetInstance()Lnl/wotuu/database/DatabaseOpenHelper;

    move-result-object v0

    const-class v1, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;

    invoke-virtual {v0, v1}, Lnl/wotuu/database/DatabaseOpenHelper;->GetTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnl/wotuu/database/DatabaseRow;-><init>(Ljava/lang/String;)V

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->title:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->packageName:Ljava/lang/String;

    .line 23
    iput v2, p0, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->isFavorite:I

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->folder:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->lastOpened:Ljava/lang/String;

    .line 26
    iput v2, p0, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->timesOpened:I

    .line 27
    iput v2, p0, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->isOUYA:I

    .line 28
    iput v2, p0, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->isOUYAGame:I

    .line 42
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    const/4 v2, 0x0

    .line 45
    invoke-static {}, Lnl/wotuu/database/DatabaseOpenHelper;->GetInstance()Lnl/wotuu/database/DatabaseOpenHelper;

    move-result-object v0

    const-class v1, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;

    invoke-virtual {v0, v1}, Lnl/wotuu/database/DatabaseOpenHelper;->GetTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lnl/wotuu/database/DatabaseRow;-><init>(Ljava/lang/String;I)V

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->title:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->packageName:Ljava/lang/String;

    .line 23
    iput v2, p0, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->isFavorite:I

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->folder:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->lastOpened:Ljava/lang/String;

    .line 26
    iput v2, p0, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->timesOpened:I

    .line 27
    iput v2, p0, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->isOUYA:I

    .line 28
    iput v2, p0, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->isOUYAGame:I

    .line 46
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 17
    check-cast p1, Lnl/frankkie/ouyalauncher/IGridItem;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->compareTo(Lnl/frankkie/ouyalauncher/IGridItem;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lnl/frankkie/ouyalauncher/IGridItem;)I
    .locals 2
    .param p1, "iGridItem"    # Lnl/frankkie/ouyalauncher/IGridItem;
    .annotation runtime Lflexjson/JSON;
        include = false
    .end annotation

    .prologue
    .line 179
    invoke-interface {p1}, Lnl/frankkie/ouyalauncher/IGridItem;->isFolder()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    const/4 v0, 0x1

    .line 182
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lnl/frankkie/ouyalauncher/IGridItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 92
    if-ne p0, p1, :cond_1

    .line 100
    :cond_0
    :goto_0
    return v1

    .line 95
    :cond_1
    instance-of v3, p1, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;

    if-nez v3, :cond_2

    move v1, v2

    .line 96
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 99
    check-cast v0, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;

    .line 100
    .local v0, "that":Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;
    iget-object v3, p0, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->title:Ljava/lang/String;

    iget-object v4, v0, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getFolderName()Ljava/lang/String;
    .locals 1
    .annotation runtime Lflexjson/JSON;
        include = false
    .end annotation

    .prologue
    .line 149
    iget-object v0, p0, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->folder:Ljava/lang/String;

    return-object v0
.end method

.method public getGridHeight()I
    .locals 1
    .annotation runtime Lflexjson/JSON;
        include = false
    .end annotation

    .prologue
    .line 161
    const/4 v0, 0x1

    return v0
.end method

.method public getGridPosX()I
    .locals 1
    .annotation runtime Lflexjson/JSON;
        include = false
    .end annotation

    .prologue
    .line 167
    const/4 v0, 0x0

    return v0
.end method

.method public getGridPosY()I
    .locals 1
    .annotation runtime Lflexjson/JSON;
        include = false
    .end annotation

    .prologue
    .line 173
    const/4 v0, 0x0

    return v0
.end method

.method public getGridWidth()I
    .locals 1
    .annotation runtime Lflexjson/JSON;
        include = false
    .end annotation

    .prologue
    .line 155
    const/4 v0, 0x1

    return v0
.end method

.method public getImage()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation runtime Lflexjson/JSON;
        include = false
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isFavorite()Z
    .locals 2
    .annotation runtime Lflexjson/JSON;
        include = false
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 131
    iget v1, p0, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->isFavorite:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFolder()Z
    .locals 1
    .annotation runtime Lflexjson/JSON;
        include = false
    .end annotation

    .prologue
    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public isInFolder()Z
    .locals 2
    .annotation runtime Lflexjson/JSON;
        include = false
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 143
    iget-object v1, p0, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->folder:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->folder:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOUYA()Z
    .locals 2
    .annotation runtime Lflexjson/JSON;
        include = false
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 119
    iget v1, p0, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->isOUYA:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOUYAGame()Z
    .locals 2
    .annotation runtime Lflexjson/JSON;
        include = false
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 125
    iget v1, p0, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->isOUYAGame:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setActivity(Landroid/content/ComponentName;I)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "launchFlags"    # I

    .prologue
    .line 84
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->intent:Landroid/content/Intent;

    .line 85
    iget-object v0, p0, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->intent:Landroid/content/Intent;

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    iget-object v0, p0, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 87
    iget-object v0, p0, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 88
    return-void
.end method

.method public setFavorite(Z)V
    .locals 1
    .param p1, "favo"    # Z

    .prologue
    .line 49
    if-eqz p1, :cond_0

    .line 50
    const/4 v0, 0x1

    iput v0, p0, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->isFavorite:I

    .line 54
    :goto_0
    return-void

    .line 52
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->isFavorite:I

    goto :goto_0
.end method

.method public setFolderName(Ljava/lang/String;)V
    .locals 0
    .param p1, "folder"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->folder:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setOUYA(Z)V
    .locals 1
    .param p1, "ouya"    # Z

    .prologue
    .line 57
    if-eqz p1, :cond_0

    .line 58
    const/4 v0, 0x1

    iput v0, p0, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->isOUYA:I

    .line 62
    :goto_0
    return-void

    .line 60
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->isOUYA:I

    goto :goto_0
.end method

.method public setOUYAGame(Z)V
    .locals 1
    .param p1, "ouyaGame"    # Z

    .prologue
    .line 65
    if-eqz p1, :cond_0

    .line 66
    const/4 v0, 0x1

    iput v0, p0, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->isOUYAGame:I

    .line 70
    :goto_0
    return-void

    .line 68
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->isOUYAGame:I

    goto :goto_0
.end method
