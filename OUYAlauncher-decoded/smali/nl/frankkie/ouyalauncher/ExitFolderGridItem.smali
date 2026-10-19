.class public Lnl/frankkie/ouyalauncher/ExitFolderGridItem;
.super Ljava/lang/Object;
.source "ExitFolderGridItem.java"

# interfaces
.implements Lnl/frankkie/ouyalauncher/IGridItem;


# instance fields
.field public icon:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 8
    check-cast p1, Lnl/frankkie/ouyalauncher/IGridItem;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lnl/frankkie/ouyalauncher/ExitFolderGridItem;->compareTo(Lnl/frankkie/ouyalauncher/IGridItem;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lnl/frankkie/ouyalauncher/IGridItem;)I
    .locals 1
    .param p1, "iGridItem"    # Lnl/frankkie/ouyalauncher/IGridItem;

    .prologue
    .line 79
    const/4 v0, -0x1

    return v0
.end method

.method public getFolderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lnl/frankkie/ouyalauncher/ExitFolderGridItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGridHeight()I
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x1

    return v0
.end method

.method public getGridPosX()I
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public getGridPosY()I
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public getGridWidth()I
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method public getImage()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lnl/frankkie/ouyalauncher/ExitFolderGridItem;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    const-string v0, "Exit Folder"

    return-object v0
.end method

.method public isFavorite()Z
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public isFolder()Z
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x1

    return v0
.end method

.method public isInFolder()Z
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public isOUYA()Z
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public isOUYAGame()Z
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public setFolderName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 55
    return-void
.end method
