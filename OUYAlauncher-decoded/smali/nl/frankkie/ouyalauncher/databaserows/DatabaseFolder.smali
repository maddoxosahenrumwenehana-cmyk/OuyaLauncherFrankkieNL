.class public Lnl/frankkie/ouyalauncher/databaserows/DatabaseFolder;
.super Lnl/wotuu/database/DatabaseRow;
.source "DatabaseFolder.java"

# interfaces
.implements Lnl/frankkie/ouyalauncher/IGridItem;


# instance fields
.field public icon:Landroid/graphics/drawable/Drawable;
    .annotation runtime Lnl/wotuu/database/annotations/DatabaseExclude;
    .end annotation
.end field

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 20
    invoke-static {}, Lnl/wotuu/database/DatabaseOpenHelper;->GetInstance()Lnl/wotuu/database/DatabaseOpenHelper;

    move-result-object v0

    const-class v1, Lnl/frankkie/ouyalauncher/databaserows/DatabaseFolder;

    invoke-virtual {v0, v1}, Lnl/wotuu/database/DatabaseOpenHelper;->GetTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnl/wotuu/database/DatabaseRow;-><init>(Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 24
    invoke-static {}, Lnl/wotuu/database/DatabaseOpenHelper;->GetInstance()Lnl/wotuu/database/DatabaseOpenHelper;

    move-result-object v0

    const-class v1, Lnl/frankkie/ouyalauncher/databaserows/DatabaseFolder;

    invoke-virtual {v0, v1}, Lnl/wotuu/database/DatabaseOpenHelper;->GetTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lnl/wotuu/database/DatabaseRow;-><init>(Ljava/lang/String;I)V

    .line 25
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 13
    check-cast p1, Lnl/frankkie/ouyalauncher/IGridItem;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lnl/frankkie/ouyalauncher/databaserows/DatabaseFolder;->compareTo(Lnl/frankkie/ouyalauncher/IGridItem;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lnl/frankkie/ouyalauncher/IGridItem;)I
    .locals 2
    .param p1, "iGridItem"    # Lnl/frankkie/ouyalauncher/IGridItem;

    .prologue
    .line 98
    invoke-interface {p1}, Lnl/frankkie/ouyalauncher/IGridItem;->isFolder()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p0}, Lnl/frankkie/ouyalauncher/databaserows/DatabaseFolder;->getFolderName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lnl/frankkie/ouyalauncher/IGridItem;->getFolderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 101
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getFolderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lnl/frankkie/ouyalauncher/databaserows/DatabaseFolder;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getGridHeight()I
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x1

    return v0
.end method

.method public getGridPosX()I
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public getGridPosY()I
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public getGridWidth()I
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x1

    return v0
.end method

.method public getImage()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lnl/frankkie/ouyalauncher/databaserows/DatabaseFolder;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lnl/frankkie/ouyalauncher/databaserows/DatabaseFolder;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isFavorite()Z
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public isFolder()Z
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x1

    return v0
.end method

.method public isInFolder()Z
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public isOUYA()Z
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x1

    return v0
.end method

.method public isOUYAGame()Z
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x1

    return v0
.end method

.method public setFolderName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lnl/frankkie/ouyalauncher/databaserows/DatabaseFolder;->title:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 28
    iput-object p1, p0, Lnl/frankkie/ouyalauncher/databaserows/DatabaseFolder;->icon:Landroid/graphics/drawable/Drawable;

    .line 29
    return-void
.end method
