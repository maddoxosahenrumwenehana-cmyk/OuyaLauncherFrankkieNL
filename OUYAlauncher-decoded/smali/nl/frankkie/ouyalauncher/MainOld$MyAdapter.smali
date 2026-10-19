.class public Lnl/frankkie/ouyalauncher/MainOld$MyAdapter;
.super Landroid/widget/BaseAdapter;
.source "MainOld.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnl/frankkie/ouyalauncher/MainOld;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyAdapter"
.end annotation


# instance fields
.field private mOldBounds:Landroid/graphics/Rect;

.field final synthetic this$0:Lnl/frankkie/ouyalauncher/MainOld;


# direct methods
.method public constructor <init>(Lnl/frankkie/ouyalauncher/MainOld;)V
    .locals 1

    .prologue
    .line 87
    iput-object p1, p0, Lnl/frankkie/ouyalauncher/MainOld$MyAdapter;->this$0:Lnl/frankkie/ouyalauncher/MainOld;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 106
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lnl/frankkie/ouyalauncher/MainOld$MyAdapter;->mOldBounds:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 92
    invoke-static {}, Lnl/frankkie/ouyalauncher/MainOld;->access$000()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 97
    invoke-static {}, Lnl/frankkie/ouyalauncher/MainOld;->access$000()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 102
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 21
    .param p1, "i"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 110
    move-object/from16 v12, p2

    check-cast v12, Landroid/widget/LinearLayout;

    .line 111
    .local v12, "layout":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnl/frankkie/ouyalauncher/MainOld$MyAdapter;->this$0:Lnl/frankkie/ouyalauncher/MainOld;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lnl/frankkie/ouyalauncher/MainOld;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v10

    .line 112
    .local v10, "inflater":Landroid/view/LayoutInflater;
    if-nez v12, :cond_0

    .line 113
    const v18, 0x7f030004

    move-object/from16 v0, p0

    iget-object v0, v0, Lnl/frankkie/ouyalauncher/MainOld$MyAdapter;->this$0:Lnl/frankkie/ouyalauncher/MainOld;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lnl/frankkie/ouyalauncher/MainOld;->gridView:Landroid/widget/GridView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v10, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    .end local v12    # "layout":Landroid/widget/LinearLayout;
    check-cast v12, Landroid/widget/LinearLayout;

    .line 115
    .restart local v12    # "layout":Landroid/widget/LinearLayout;
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lnl/frankkie/ouyalauncher/MainOld$MyAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lnl/frankkie/ouyalauncher/AppInfo;

    .line 119
    .local v11, "info":Lnl/frankkie/ouyalauncher/AppInfo;
    iget-object v6, v11, Lnl/frankkie/ouyalauncher/AppInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 121
    .local v6, "icon":Landroid/graphics/drawable/Drawable;
    iget-boolean v0, v11, Lnl/frankkie/ouyalauncher/AppInfo;->filtered:Z

    move/from16 v18, v0

    if-nez v18, :cond_4

    .line 123
    const/16 v17, 0xb4

    .line 124
    .local v17, "width":I
    const/16 v5, 0xb4

    .line 126
    .local v5, "height":I
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    .line 127
    .local v8, "iconWidth":I
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    .line 129
    .local v7, "iconHeight":I
    instance-of v0, v6, Landroid/graphics/drawable/PaintDrawable;

    move/from16 v18, v0

    if-eqz v18, :cond_1

    move-object v13, v6

    .line 130
    check-cast v13, Landroid/graphics/drawable/PaintDrawable;

    .line 131
    .local v13, "painter":Landroid/graphics/drawable/PaintDrawable;
    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 132
    invoke-virtual {v13, v5}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .line 135
    .end local v13    # "painter":Landroid/graphics/drawable/PaintDrawable;
    :cond_1
    if-lez v17, :cond_4

    if-lez v5, :cond_4

    move/from16 v0, v17

    if-lt v0, v8, :cond_2

    if-ge v5, v7, :cond_4

    .line 136
    :cond_2
    int-to-float v0, v8

    move/from16 v18, v0

    int-to-float v0, v7

    move/from16 v19, v0

    div-float v14, v18, v19

    .line 138
    .local v14, "ratio":F
    if-le v8, v7, :cond_5

    .line 139
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v18, v18, v14

    move/from16 v0, v18

    float-to-int v5, v0

    .line 144
    :cond_3
    :goto_0
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_6

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 147
    .local v3, "c":Landroid/graphics/Bitmap$Config;
    :goto_1
    move/from16 v0, v17

    invoke-static {v0, v5, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 148
    .local v15, "thumb":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v15}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 149
    .local v4, "canvas":Landroid/graphics/Canvas;
    new-instance v18, Landroid/graphics/PaintFlagsDrawFilter;

    const/16 v19, 0x4

    const/16 v20, 0x0

    invoke-direct/range {v18 .. v20}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lnl/frankkie/ouyalauncher/MainOld$MyAdapter;->mOldBounds:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 156
    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v6, v0, v1, v2, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 157
    invoke-virtual {v6, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lnl/frankkie/ouyalauncher/MainOld$MyAdapter;->mOldBounds:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 159
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    .end local v6    # "icon":Landroid/graphics/drawable/Drawable;
    invoke-direct {v6, v15}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v6, v11, Lnl/frankkie/ouyalauncher/AppInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 160
    .restart local v6    # "icon":Landroid/graphics/drawable/Drawable;
    const/16 v18, 0x1

    move/from16 v0, v18

    iput-boolean v0, v11, Lnl/frankkie/ouyalauncher/AppInfo;->filtered:Z

    .line 165
    .end local v3    # "c":Landroid/graphics/Bitmap$Config;
    .end local v4    # "canvas":Landroid/graphics/Canvas;
    .end local v5    # "height":I
    .end local v7    # "iconHeight":I
    .end local v8    # "iconWidth":I
    .end local v14    # "ratio":F
    .end local v15    # "thumb":Landroid/graphics/Bitmap;
    .end local v17    # "width":I
    :cond_4
    const v18, 0x7f09000c

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 166
    .local v16, "tv":Landroid/widget/TextView;
    iget-object v0, v11, Lnl/frankkie/ouyalauncher/AppInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    const v18, 0x7f09000b

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 168
    .local v9, "img":Landroid/widget/ImageView;
    iget-object v0, v11, Lnl/frankkie/ouyalauncher/AppInfo;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 170
    new-instance v18, Lnl/frankkie/ouyalauncher/MainOld$MyAdapter$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11}, Lnl/frankkie/ouyalauncher/MainOld$MyAdapter$1;-><init>(Lnl/frankkie/ouyalauncher/MainOld$MyAdapter;Lnl/frankkie/ouyalauncher/AppInfo;)V

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    return-object v12

    .line 140
    .end local v9    # "img":Landroid/widget/ImageView;
    .end local v16    # "tv":Landroid/widget/TextView;
    .restart local v5    # "height":I
    .restart local v7    # "iconHeight":I
    .restart local v8    # "iconWidth":I
    .restart local v14    # "ratio":F
    .restart local v17    # "width":I
    :cond_5
    if-le v7, v8, :cond_3

    .line 141
    int-to-float v0, v5

    move/from16 v18, v0

    mul-float v18, v18, v14

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v17, v0

    goto/16 :goto_0

    .line 144
    :cond_6
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto/16 :goto_1
.end method
