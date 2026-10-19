.class public interface abstract Lnl/frankkie/ouyalauncher/IGridItem;
.super Ljava/lang/Object;
.source "IGridItem.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lnl/frankkie/ouyalauncher/IGridItem;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getFolderName()Ljava/lang/String;
.end method

.method public abstract getGridHeight()I
.end method

.method public abstract getGridPosX()I
.end method

.method public abstract getGridPosY()I
.end method

.method public abstract getGridWidth()I
.end method

.method public abstract getImage()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract isFavorite()Z
.end method

.method public abstract isFolder()Z
.end method

.method public abstract isInFolder()Z
.end method

.method public abstract isOUYA()Z
.end method

.method public abstract isOUYAGame()Z
.end method

.method public abstract setFolderName(Ljava/lang/String;)V
.end method
