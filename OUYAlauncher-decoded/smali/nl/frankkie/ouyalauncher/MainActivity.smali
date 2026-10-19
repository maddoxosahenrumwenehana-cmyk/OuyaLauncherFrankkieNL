.class public Lnl/frankkie/ouyalauncher/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnl/frankkie/ouyalauncher/MainActivity$LoadApplicationsTask;
    }
.end annotation


# static fields
.field public static final APP_ALL:I = 0x0

.field public static final APP_ANDROID_APPS_ONLY:I = 0x4

.field private static final APP_DETAILS_CLASS_NAME:Ljava/lang/String; = "com.android.settings.InstalledAppDetails"

.field private static final APP_DETAILS_PACKAGE_NAME:Ljava/lang/String; = "com.android.settings"

.field public static final APP_FAVORITES_ONLY:I = 0x5

.field public static final APP_OUYA_APPS_ONLY:I = 0x2

.field public static final APP_OUYA_GAMES_ONLY:I = 0x1

.field public static final APP_OUYA_ONLY:I = 0x3

.field private static final APP_PKG_NAME_21:Ljava/lang/String; = "com.android.settings.ApplicationPkgName"

.field private static final APP_PKG_NAME_22:Ljava/lang/String; = "pkg"

.field private static final SCHEME:Ljava/lang/String; = "package"

.field private static filteredGridItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnl/frankkie/ouyalauncher/IGridItem;",
            ">;"
        }
    .end annotation
.end field

.field private static gridItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnl/frankkie/ouyalauncher/IGridItem;",
            ">;"
        }
    .end annotation
.end field

.field private static mApplications:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnl/frankkie/ouyalauncher/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static mFilteredApplications:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnl/frankkie/ouyalauncher/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static numberOfItemsPerRow:I


# instance fields
.field appType:I

.field public currentFolder:Ljava/lang/String;

.field handler:Landroid/os/Handler;

.field private mOldBounds:Landroid/graphics/Rect;

.field selectedItem:Landroid/view/View;

.field table:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x5

    sput v0, Lnl/frankkie/ouyalauncher/MainActivity;->numberOfItemsPerRow:I

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lnl/frankkie/ouyalauncher/MainActivity;->gridItems:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lnl/frankkie/ouyalauncher/MainActivity;->filteredGridItems:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lnl/frankkie/ouyalauncher/MainActivity;->mApplications:Ljava/util/ArrayList;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lnl/frankkie/ouyalauncher/MainActivity;->mFilteredApplications:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lnl/frankkie/ouyalauncher/MainActivity;->appType:I

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lnl/frankkie/ouyalauncher/MainActivity;->currentFolder:Ljava/lang/String;

    .line 69
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lnl/frankkie/ouyalauncher/MainActivity;->handler:Landroid/os/Handler;

    .line 657
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lnl/frankkie/ouyalauncher/MainActivity;->mOldBounds:Landroid/graphics/Rect;

    .line 899
    return-void
.end method

.method static synthetic access$000(Lnl/frankkie/ouyalauncher/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lnl/frankkie/ouyalauncher/MainActivity;

    .prologue
    .line 48
    invoke-direct {p0}, Lnl/frankkie/ouyalauncher/MainActivity;->loadApplications()V

    return-void
.end method

.method private loadApplications()V
    .locals 10

    .prologue
    .line 506
    invoke-virtual {p0}, Lnl/frankkie/ouyalauncher/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 507
    .local v6, "manager":Landroid/content/pm/PackageManager;
    new-instance v5, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    const/4 v9, 0x0

    invoke-direct {v5, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 508
    .local v5, "mainIntent":Landroid/content/Intent;
    const-string v8, "android.intent.category.LAUNCHER"

    invoke-virtual {v5, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 510
    const/4 v8, 0x0

    invoke-virtual {v6, v5, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 513
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_2

    .line 514
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 516
    .local v1, "count":I
    sget-object v8, Lnl/frankkie/ouyalauncher/MainActivity;->gridItems:Ljava/util/ArrayList;

    if-nez v8, :cond_0

    .line 517
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v8, Lnl/frankkie/ouyalauncher/MainActivity;->gridItems:Ljava/util/ArrayList;

    .line 519
    :cond_0
    sget-object v8, Lnl/frankkie/ouyalauncher/MainActivity;->gridItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 520
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Runtime;->gc()V

    .line 523
    new-instance v3, Lnl/frankkie/ouyalauncher/ExitFolderGridItem;

    invoke-direct {v3}, Lnl/frankkie/ouyalauncher/ExitFolderGridItem;-><init>()V

    .line 524
    .local v3, "exitFolderGridItem":Lnl/frankkie/ouyalauncher/ExitFolderGridItem;
    invoke-virtual {p0}, Lnl/frankkie/ouyalauncher/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f02001e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, v3, Lnl/frankkie/ouyalauncher/ExitFolderGridItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 525
    sget-object v8, Lnl/frankkie/ouyalauncher/MainActivity;->gridItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 527
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_2

    .line 528
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 529
    .local v7, "rinfo":Landroid/content/pm/ResolveInfo;
    invoke-virtual {p0, v7}, Lnl/frankkie/ouyalauncher/MainActivity;->getDatabaseAppInfo(Landroid/content/pm/ResolveInfo;)Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;

    move-result-object v2

    .line 530
    .local v2, "databaseAppInfo":Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;
    sget-object v8, Lnl/frankkie/ouyalauncher/MainActivity;->gridItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 532
    invoke-virtual {v2}, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->isInFolder()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 533
    invoke-virtual {v2}, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->getFolderName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lnl/frankkie/ouyalauncher/MainActivity;->folderExistsInGridItemsList(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 534
    sget-object v8, Lnl/frankkie/ouyalauncher/MainActivity;->gridItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->getFolderName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lnl/frankkie/ouyalauncher/MainActivity;->getDatabaseFolder(Ljava/lang/String;)Lnl/frankkie/ouyalauncher/databaserows/DatabaseFolder;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 527
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 539
    .end local v1    # "count":I
    .end local v2    # "databaseAppInfo":Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;
    .end local v3    # "exitFolderGridItem":Lnl/frankkie/ouyalauncher/ExitFolderGridItem;
    .end local v4    # "i":I
    .end local v7    # "rinfo":Landroid/content/pm/ResolveInfo;
    :cond_2
    return-void
.end method

.method public static showInstalledAppDetails(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 170
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 171
    .local v2, "intent":Landroid/content/Intent;
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 172
    .local v0, "apiLevel":I
    const/16 v4, 0x9

    if-lt v0, v4, :cond_0

    .line 173
    const-string v4, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    const-string v4, "package"

    const/4 v5, 0x0

    invoke-static {v4, p1, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 175
    .local v3, "uri":Landroid/net/Uri;
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 184
    .end local v3    # "uri":Landroid/net/Uri;
    :goto_0
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 185
    return-void

    .line 177
    :cond_0
    const/16 v4, 0x8

    if-ne v0, v4, :cond_1

    const-string v1, "pkg"

    .line 179
    .local v1, "appPkgName":Ljava/lang/String;
    :goto_1
    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    const-string v4, "com.android.settings"

    const-string v5, "com.android.settings.InstalledAppDetails"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    invoke-virtual {v2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 177
    .end local v1    # "appPkgName":Ljava/lang/String;
    :cond_1
    const-string v1, "com.android.settings.ApplicationPkgName"

    goto :goto_1
.end method


# virtual methods
.method public addToFavorites()V
    .locals 4

    .prologue
    .line 415
    iget-object v2, p0, Lnl/frankkie/ouyalauncher/MainActivity;->selectedItem:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 416
    invoke-virtual {p0}, Lnl/frankkie/ouyalauncher/MainActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lnl/frankkie/ouyalauncher/MainActivity;->selectedItem:Landroid/view/View;

    .line 417
    iget-object v2, p0, Lnl/frankkie/ouyalauncher/MainActivity;->selectedItem:Landroid/view/View;

    if-nez v2, :cond_0

    .line 435
    :goto_0
    return-void

    .line 420
    :cond_0
    iget-object v2, p0, Lnl/frankkie/ouyalauncher/MainActivity;->selectedItem:Landroid/view/View;

    const v3, 0x7f09000d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 421
    .local v1, "pak":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lnl/frankkie/ouyalauncher/MainActivity;->getDatabaseAppInfo(Ljava/lang/String;)Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;

    move-result-object v0

    .line 422
    .local v0, "info":Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;
    if-eqz v0, :cond_1

    .line 423
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->setFavorite(Z)V

    .line 426
    :cond_1
    invoke-virtual {v0}, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->OnUpdate()V

    .line 429
    invoke-static {p0, v0}, Lnl/frankkie/ouyalauncher/Util;->logAddFavorite(Landroid/content/Context;Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;)V

    .line 430
    const-string v2, "Added to Favorites"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 433
    .end local v0    # "info":Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;
    .end local v1    # "pak":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lnl/frankkie/ouyalauncher/MainActivity;->filter()V

    .line 434
    invoke-virtual {p0}, Lnl/frankkie/ouyalauncher/MainActivity;->fillTable()V

    goto :goto_0
.end method

.method public addToFolder(Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;)V
    .locals 9
    .param p1, "info"    # Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;

    .prologue
    .line 346
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 347
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v6, "Add to Folder"

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 348
    invoke-static {p0}, Lnl/wotuu/database/DatabaseOpenHelper;->CreateInstance(Landroid/content/Context;)Lnl/wotuu/database/DatabaseOpenHelper;

    move-result-object v4

    .line 349
    .local v4, "helper":Lnl/wotuu/database/DatabaseOpenHelper;
    iget-object v6, v4, Lnl/wotuu/database/DatabaseOpenHelper;->WriteableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "SELECT id,title FROM folder"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 351
    .local v1, "cursor":Landroid/database/Cursor;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 352
    .local v2, "folderNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v6, "New Folder ..."

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 354
    const/4 v6, 0x1

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 355
    .local v5, "title":Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 357
    .end local v5    # "title":Ljava/lang/String;
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 358
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 359
    .local v3, "folders":[Ljava/lang/String;
    new-instance v6, Lnl/frankkie/ouyalauncher/MainActivity$5;

    invoke-direct {v6, p0, p1, v3}, Lnl/frankkie/ouyalauncher/MainActivity$5;-><init>(Lnl/frankkie/ouyalauncher/MainActivity;Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;[Ljava/lang/String;)V

    invoke-virtual {v0, v3, v6}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 369
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 370
    return-void
.end method

.method public addToFolder(Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;Ljava/lang/String;)V
    .locals 2
    .param p1, "info"    # Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;
    .param p2, "folderName"    # Ljava/lang/String;

    .prologue
    .line 395
    invoke-virtual {p1, p2}, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->setFolderName(Ljava/lang/String;)V

    .line 396
    invoke-virtual {p1}, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->OnUpdate()V

    .line 397
    const-string v0, "Added to Folder"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 399
    invoke-virtual {p0, p2}, Lnl/frankkie/ouyalauncher/MainActivity;->folderExistsInGridItemsList(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 400
    sget-object v0, Lnl/frankkie/ouyalauncher/MainActivity;->gridItems:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Lnl/frankkie/ouyalauncher/MainActivity;->getDatabaseFolder(Ljava/lang/String;)Lnl/frankkie/ouyalauncher/databaserows/DatabaseFolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    :cond_0
    invoke-virtual {p0}, Lnl/frankkie/ouyalauncher/MainActivity;->filter()V

    .line 403
    invoke-virtual {p0}, Lnl/frankkie/ouyalauncher/MainActivity;->fillTable()V

    .line 404
    return-void
.end method

.method public checkIsOUYAAppByIcon(Lnl/frankkie/ouyalauncher/AppInfo;)Z
    .locals 8
    .param p1, "info"    # Lnl/frankkie/ouyalauncher/AppInfo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 613
    const-string v2, ""

    .line 615
    .local v2, "packageName":Ljava/lang/String;
    :try_start_0
    iget-object v5, p1, Lnl/frankkie/ouyalauncher/AppInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 616
    invoke-virtual {p0}, Lnl/frankkie/ouyalauncher/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 617
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p0}, Lnl/frankkie/ouyalauncher/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v3

    .line 618
    .local v3, "resources":Landroid/content/res/Resources;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":drawable/ouya_icon"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    const-string v7, ""

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 619
    .local v1, "identifier3":I
    if-eqz v1, :cond_0

    .line 620
    const/4 v4, 0x1

    .line 628
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "identifier3":I
    .end local v3    # "resources":Landroid/content/res/Resources;
    :cond_0
    :goto_0
    return v4

    .line 625
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public checkIsOUYAAppByIntent(Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;)V
    .locals 11
    .param p1, "info"    # Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 556
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v3, v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 557
    .local v3, "mainIntent":Landroid/content/Intent;
    const-string v6, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 558
    const-string v6, "tv.ouya.intent.category.GAME"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 559
    invoke-virtual {p0}, Lnl/frankkie/ouyalauncher/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v3, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 560
    .local v1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 561
    .local v5, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v7, p1, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 562
    invoke-virtual {p1, v9}, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->setOUYA(Z)V

    .line 563
    invoke-virtual {p1, v9}, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->setOUYAGame(Z)V

    goto :goto_0

    .line 567
    .end local v5    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_1
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v4, v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 568
    .local v4, "mainIntent2":Landroid/content/Intent;
    const-string v6, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 569
    const-string v6, "tv.ouya.intent.category.APP"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 570
    invoke-virtual {p0}, Lnl/frankkie/ouyalauncher/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v4, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 571
    .local v2, "infos2":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 572
    .restart local v5    # "ri":Landroid/content/pm/ResolveInfo;
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v7, p1, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 573
    invoke-virtual {p1, v9}, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->setOUYA(Z)V

    .line 574
    invoke-virtual {p1, v8}, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->setOUYAGame(Z)V

    goto :goto_1

    .line 577
    .end local v5    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_3
    return-void
.end method

.method public checkIsOUYAAppByIntent(Lnl/frankkie/ouyalauncher/AppInfo;)Z
    .locals 11
    .param p1, "info"    # Lnl/frankkie/ouyalauncher/AppInfo;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 580
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v3, v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 581
    .local v3, "mainIntent":Landroid/content/Intent;
    const-string v6, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 582
    const-string v6, "tv.ouya.intent.category.GAME"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 583
    invoke-virtual {p0}, Lnl/frankkie/ouyalauncher/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v3, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 584
    .local v1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 585
    .local v5, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v7, p1, Lnl/frankkie/ouyalauncher/AppInfo;->packagename:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 586
    iput-boolean v9, p1, Lnl/frankkie/ouyalauncher/AppInfo;->isOUYA:Z

    .line 587
    iput-boolean v9, p1, Lnl/frankkie/ouyalauncher/AppInfo;->isOUYAGame:Z

    goto :goto_0

    .line 591
    .end local v5    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_1
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v4, v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 592
    .local v4, "mainIntent2":Landroid/content/Intent;
    const-string v6, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 593
    const-string v6, "tv.ouya.intent.category.APP"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 594
    invoke-virtual {p0}, Lnl/frankkie/ouyalauncher/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v4, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 595
    .local v2, "infos2":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 596
    .restart local v5    # "ri":Landroid/content/pm/ResolveInfo;
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v7, p1, Lnl/frankkie/ouyalauncher/AppInfo;->packagename:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 597
    iput-boolean v9, p1, Lnl/frankkie/ouyalauncher/AppInfo;->isOUYA:Z

    .line 598
    iput-boolean v8, p1, Lnl/frankkie/ouyalauncher/AppInfo;->isOUYAGame:Z

    goto :goto_1

    .line 601
    .end local v5    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_3
    iget-boolean v6, p1, Lnl/frankkie/ouyalauncher/AppInfo;->isOUYA:Z

    return v6
.end method

.method public fillTable(Lnl/frankkie/ouyalauncher/IGridItem;)Landroid/view/View;
    .locals 14
    .param p1, "info"    # Lnl/frankkie/ouyalauncher/IGridItem;

    .prologue
    const/4 v7, 0x0

    .line 661
    invoke-virtual {p0}, Lnl/frankkie/ouyalauncher/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 662
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f030004

    iget-object v6, p0, Lnl/frankkie/ouyalauncher/MainActivity;->table:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 664
    .local v2, "layout":Landroid/view/ViewGroup;
    const v5, 0x7f09000c

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 665
    .local v3, "tv":Landroid/widget/TextView;
    invoke-interface {p1}, Lnl/frankkie/ouyalauncher/IGridItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 666
    const v5, 0x7f09000d

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 667
    .local v4, "tv_packagename":Landroid/widget/TextView;
    invoke-interface {p1}, Lnl/frankkie/ouyalauncher/IGridItem;->isFolder()Z

    move-result v5

    if-nez v5, :cond_1

    move-object v5, p1

    .line 668
    check-cast v5, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;

    iget-object v5, v5, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 669
    new-instance v5, Lnl/frankkie/ouyalauncher/MainActivity$8;

    invoke-direct {v5, p0, p1}, Lnl/frankkie/ouyalauncher/MainActivity$8;-><init>(Lnl/frankkie/ouyalauncher/MainActivity;Lnl/frankkie/ouyalauncher/IGridItem;)V

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 705
    :goto_0
    const v5, 0x7f09000b

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 706
    .local v0, "img":Landroid/widget/ImageView;
    invoke-interface {p1}, Lnl/frankkie/ouyalauncher/IGridItem;->getImage()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

       # BETA APP ANIMATION
    invoke-interface {p1}, Lnl/frankkie/ouyalauncher/IGridItem;->isOUYA()Z
    move-result v8
    if-eqz v8, :cond_animation_end

    invoke-interface {p1}, Lnl/frankkie/ouyalauncher/IGridItem;->isFolder()Z
    move-result v8
    if-nez v8, :cond_animation_end

    instance-of v8, p1, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;
    if-eqz v8, :cond_animation_end

    move-object v8, p1
    check-cast v8, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;

    iget-object v9, v8, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->animationPath:Ljava/lang/String;
    if-eqz v9, :cond_animation_end

    invoke-virtual {v9}, Ljava/lang/String;->length()I
    move-result v10

    if-lez v10, :cond_animation_end

    const v9, 0x7f09000a
    invoke-virtual {v2, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
    move-result-object v11
    check-cast v11, Landroid/view/ViewGroup;

    const/16 v9, 0x8
    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v12, Landroid/webkit/WebView;
    invoke-direct {v12, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/16 v9, 0xf0
    const/16 v10, 0x87

    new-instance v13, Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v13, v9, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v12, v13}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v9, 0x0
    invoke-virtual {v12, v9}, Landroid/webkit/WebView;->setEnabled(Z)V
    invoke-virtual {v12, v9}, Landroid/webkit/WebView;->setFocusable(Z)V

    const/16 v9, 0x64
    invoke-virtual {v12, v9}, Landroid/webkit/WebView;->setInitialScale(I)V

    iget-object v9, v8, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->animationPath:Ljava/lang/String;
    invoke-virtual {v12, v9}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

:cond_animation_end

    .line 734
    invoke-interface {p1}, Lnl/frankkie/ouyalauncher/IGridItem;->isFavorite()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 735
    const v5, 0x7f09000e

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 737
    :cond_0
    return-object v2

    .line 683
    .end local v0    # "img":Landroid/widget/ImageView;
    :cond_1
    instance-of v5, p1, Lnl/frankkie/ouyalauncher/ExitFolderGridItem;

    if-eqz v5, :cond_2

    .line 684
    const-string v5, "folder"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 685
    new-instance v5, Lnl/frankkie/ouyalauncher/MainActivity$9;

    invoke-direct {v5, p0}, Lnl/frankkie/ouyalauncher/MainActivity$9;-><init>(Lnl/frankkie/ouyalauncher/MainActivity;)V

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 694
    :cond_2
    const-string v5, "folder"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 695
    new-instance v5, Lnl/frankkie/ouyalauncher/MainActivity$10;

    invoke-direct {v5, p0, p1}, Lnl/frankkie/ouyalauncher/MainActivity$10;-><init>(Lnl/frankkie/ouyalauncher/MainActivity;Lnl/frankkie/ouyalauncher/IGridItem;)V

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public fillTable()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 633
    iget-object v6, p0, Lnl/frankkie/ouyalauncher/MainActivity;->table:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 634
    const/4 v3, 0x0

    .line 635
    .local v3, "row":Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lnl/frankkie/ouyalauncher/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 636
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v6, Lnl/frankkie/ouyalauncher/MainActivity;->filteredGridItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_4

    .line 637
    sget v6, Lnl/frankkie/ouyalauncher/MainActivity;->numberOfItemsPerRow:I

    rem-int v6, v0, v6

    if-nez v6, :cond_1

    .line 638
    if-eqz v3, :cond_0

    .line 639
    iget-object v6, p0, Lnl/frankkie/ouyalauncher/MainActivity;->table:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 641
    :cond_0
    const v6, 0x7f03000c

    iget-object v7, p0, Lnl/frankkie/ouyalauncher/MainActivity;->table:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .end local v3    # "row":Landroid/view/ViewGroup;
    check-cast v3, Landroid/view/ViewGroup;

    .line 643
    .restart local v3    # "row":Landroid/view/ViewGroup;
    :cond_1
    sget-object v6, Lnl/frankkie/ouyalauncher/MainActivity;->filteredGridItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnl/frankkie/ouyalauncher/IGridItem;

    invoke-virtual {p0, v6}, Lnl/frankkie/ouyalauncher/MainActivity;->fillTable(Lnl/frankkie/ouyalauncher/IGridItem;)Landroid/view/View;

    move-result-object v4

    .line 644
    .local v4, "v":Landroid/view/View;
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 645
    sget-object v6, Lnl/frankkie/ouyalauncher/MainActivity;->filteredGridItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v0, v6, :cond_3

    .line 648
    sget v6, Lnl/frankkie/ouyalauncher/MainActivity;->numberOfItemsPerRow:I

    rem-int v2, v0, v6

    .local v2, "j":I
    :goto_1
    sget v6, Lnl/frankkie/ouyalauncher/MainActivity;->numberOfItemsPerRow:I

    add-int/lit8 v6, v6, -0x1

    if-ge v2, v6, :cond_2

    .line 649
    const v6, 0x7f030005

    iget-object v7, p0, Lnl/frankkie/ouyalauncher/MainActivity;->table:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 650
    .local v5, "w":Landroid/view/View;
    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 648
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 652
    .end local v5    # "w":Landroid/view/View;
    :cond_2
    iget-object v6, p0, Lnl/frankkie/ouyalauncher/MainActivity;->table:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 636
    .end local v2    # "j":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 655
    .end local v4    # "v":Landroid/view/View;
    :cond_4
    return-void
.end method

.method public filter()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 103
    sget-object v2, Lnl/frankkie/ouyalauncher/MainActivity;->filteredGridItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 106
    sget-object v2, Lnl/frankkie/ouyalauncher/MainActivity;->gridItems:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 108
    iget-object v2, p0, Lnl/frankkie/ouyalauncher/MainActivity;->currentFolder:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lnl/frankkie/ouyalauncher/MainActivity;->currentFolder:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_2

    .line 109
    sget-object v2, Lnl/frankkie/ouyalauncher/MainActivity;->gridItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnl/frankkie/ouyalauncher/IGridItem;

    .line 110
    .local v1, "info":Lnl/frankkie/ouyalauncher/IGridItem;
    instance-of v2, v1, Lnl/frankkie/ouyalauncher/ExitFolderGridItem;

    if-eqz v2, :cond_1

    .line 111
    sget-object v2, Lnl/frankkie/ouyalauncher/MainActivity;->filteredGridItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 114
    :cond_1
    invoke-interface {v1}, Lnl/frankkie/ouyalauncher/IGridItem;->isInFolder()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 116
    invoke-interface {v1}, Lnl/frankkie/ouyalauncher/IGridItem;->getFolderName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lnl/frankkie/ouyalauncher/MainActivity;->currentFolder:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    sget-object v2, Lnl/frankkie/ouyalauncher/MainActivity;->filteredGridItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 123
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "info":Lnl/frankkie/ouyalauncher/IGridItem;
    :cond_2
    sget-object v2, Lnl/frankkie/ouyalauncher/MainActivity;->gridItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnl/frankkie/ouyalauncher/IGridItem;

    .line 124
    .restart local v1    # "info":Lnl/frankkie/ouyalauncher/IGridItem;
    instance-of v2, v1, Lnl/frankkie/ouyalauncher/ExitFolderGridItem;

    if-nez v2, :cond_3

    .line 127
    iget v2, p0, Lnl/frankkie/ouyalauncher/MainActivity;->appType:I

    if-nez v2, :cond_4

    .line 128
    sget-object v2, Lnl/frankkie/ouyalauncher/MainActivity;->filteredGridItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 131
    :cond_4
    invoke-interface {v1}, Lnl/frankkie/ouyalauncher/IGridItem;->isFolder()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 132
    sget-object v2, Lnl/frankkie/ouyalauncher/MainActivity;->filteredGridItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 135
    :cond_5
    invoke-interface {v1}, Lnl/frankkie/ouyalauncher/IGridItem;->isInFolder()Z

    move-result v2

    if-nez v2, :cond_3

    .line 139
    iget v2, p0, Lnl/frankkie/ouyalauncher/MainActivity;->appType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_6

    .line 140
    invoke-interface {v1}, Lnl/frankkie/ouyalauncher/IGridItem;->isOUYA()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 141
    sget-object v2, Lnl/frankkie/ouyalauncher/MainActivity;->filteredGridItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 143
    :cond_6
    iget v2, p0, Lnl/frankkie/ouyalauncher/MainActivity;->appType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_7

    .line 144
    invoke-interface {v1}, Lnl/frankkie/ouyalauncher/IGridItem;->isOUYA()Z

    move-result v2

    if-nez v2, :cond_3

    .line 145
    sget-object v2, Lnl/frankkie/ouyalauncher/MainActivity;->filteredGridItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 147
    :cond_7
    iget v2, p0, Lnl/frankkie/ouyalauncher/MainActivity;->appType:I

    if-ne v2, v4, :cond_8

    .line 148
    invoke-interface {v1}, Lnl/frankkie/ouyalauncher/IGridItem;->isOUYA()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Lnl/frankkie/ouyalauncher/IGridItem;->isOUYAGame()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 149
    sget-object v2, Lnl/frankkie/ouyalauncher/MainActivity;->filteredGridItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 151
    :cond_8
    iget v2, p0, Lnl/frankkie/ouyalauncher/MainActivity;->appType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_9

    .line 152
    invoke-interface {v1}, Lnl/frankkie/ouyalauncher/IGridItem;->isOUYA()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Lnl/frankkie/ouyalauncher/IGridItem;->isOUYAGame()Z

    move-result v2

    if-nez v2, :cond_3

    .line 153
    sget-object v2, Lnl/frankkie/ouyalauncher/MainActivity;->filteredGridItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 155
    :cond_9
    iget v2, p0, Lnl/frankkie/ouyalauncher/MainActivity;->appType:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_3

    .line 156
    invoke-interface {v1}, Lnl/frankkie/ouyalauncher/IGridItem;->isFavorite()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 157
    sget-object v2, Lnl/frankkie/ouyalauncher/MainActivity;->filteredGridItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 161
    .end local v1    # "info":Lnl/frankkie/ouyalauncher/IGridItem;
    :cond_a
    return-void
.end method

.method public folderExistsInGridItemsList(Ljava/lang/String;)Z
    .locals 4
    .param p1, "folderName"    # Ljava/lang/String;

    .prologue
    .line 543
    sget-object v3, Lnl/frankkie/ouyalauncher/MainActivity;->gridItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnl/frankkie/ouyalauncher/IGridItem;

    .line 544
    .local v2, "item":Lnl/frankkie/ouyalauncher/IGridItem;
    invoke-interface {v2}, Lnl/frankkie/ouyalauncher/IGridItem;->isFolder()Z

    move-result v3

    if-eqz v3, :cond_0

    instance-of v3, v2, Lnl/frankkie/ouyalauncher/databaserows/DatabaseFolder;

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 545
    check-cast v0, Lnl/frankkie/ouyalauncher/databaserows/DatabaseFolder;

    .line 546
    .local v0, "folder":Lnl/frankkie/ouyalauncher/databaserows/DatabaseFolder;
    invoke-virtual {v0}, Lnl/frankkie/ouyalauncher/databaserows/DatabaseFolder;->getFolderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 548
    const/4 v3, 0x1

    .line 552
    .end local v0    # "folder":Lnl/frankkie/ouyalauncher/databaserows/DatabaseFolder;
    .end local v2    # "item":Lnl/frankkie/ouyalauncher/IGridItem;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getAppAnimation(Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;)V
    .locals 12
    .param p1, "info"    # Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;

    .prologue
    .line 850
    iget-object v9, p1, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 852
    .local v6, "packageName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lnl/frankkie/ouyalauncher/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v6, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 853
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p0}, Lnl/frankkie/ouyalauncher/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v8

    .line 854
    .local v8, "resources":Landroid/content/res/Resources;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":raw/icon_animation"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    const-string v11, ""

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 855
    .local v3, "identifier":I
    if-eqz v3, :cond_1

    .line 856
    invoke-virtual {v8, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    .line 858
    .local v4, "in":Ljava/io/InputStream;
    new-instance v5, Ljava/io/FileOutputStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/sdcard/FrankkieOuyaLauncher/animations/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".gif"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 859
    .local v5, "out":Ljava/io/FileOutputStream;
    const/16 v9, 0x400

    new-array v1, v9, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 860
    .local v1, "buff":[B
    const/4 v7, 0x0

    .line 862
    .local v7, "read":I
    :goto_0
    :try_start_1
    invoke-virtual {v4, v1}, Ljava/io/InputStream;->read([B)I

    move-result v7

    if-lez v7, :cond_0

    .line 863
    const/4 v9, 0x0

    invoke-virtual {v5, v1, v9, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 866
    :catchall_0
    move-exception v9

    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 867
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    throw v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 872
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "buff":[B
    .end local v3    # "identifier":I
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v5    # "out":Ljava/io/FileOutputStream;
    .end local v7    # "read":I
    .end local v8    # "resources":Landroid/content/res/Resources;
    :catch_0
    move-exception v2

    .line 873
    .local v2, "e":Ljava/lang/Exception;
    const-string v9, ""

    iput-object v9, p1, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->animationPath:Ljava/lang/String;

    .line 874
    const-string v9, "FrankkieOuyaLauncher"

    const-string v10, "ERROR"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 876
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 866
    .restart local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v1    # "buff":[B
    .restart local v3    # "identifier":I
    .restart local v4    # "in":Ljava/io/InputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v7    # "read":I
    .restart local v8    # "resources":Landroid/content/res/Resources;
    :cond_0
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 867
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 869
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/sdcard/FrankkieOuyaLauncher/animations/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".gif"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p1, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->animationPath:Ljava/lang/String;

    .line 871
    .end local v1    # "buff":[B
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v5    # "out":Ljava/io/FileOutputStream;
    .end local v7    # "read":I
    :cond_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Runtime;->gc()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method

.method public getDatabaseAppInfo(Landroid/content/pm/ResolveInfo;)Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;
    .locals 8
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 933
    const/4 v1, 0x0

    .line 934
    .local v1, "appInfo":Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;
    invoke-static {p0}, Lnl/wotuu/database/DatabaseOpenHelper;->CreateInstance(Landroid/content/Context;)Lnl/wotuu/database/DatabaseOpenHelper;

    move-result-object v3

    .line 935
    .local v3, "helper":Lnl/wotuu/database/DatabaseOpenHelper;
    iget-object v5, v3, Lnl/wotuu/database/DatabaseOpenHelper;->WriteableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SELECT id FROM appinfo WHERE packageName = \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 937
    .local v2, "cursor":Landroid/database/Cursor;
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_0

    .line 938
    new-instance v1, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;

    .end local v1    # "appInfo":Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;
    invoke-direct {v1}, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;-><init>()V

    .line 940
    .restart local v1    # "appInfo":Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;
    iget-object v5, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v5, v1, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->packageName:Ljava/lang/String;

    .line 941
    invoke-virtual {p0}, Lnl/frankkie/ouyalauncher/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->title:Ljava/lang/String;

    .line 947
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 949
    invoke-virtual {p0, v1}, Lnl/frankkie/ouyalauncher/MainActivity;->checkIsOUYAAppByIntent(Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;)V

    .line 951
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v1, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->packageName:Ljava/lang/String;

    iget-object v7, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v6, 0x10200000

    invoke-virtual {v1, v5, v6}, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->setActivity(Landroid/content/ComponentName;I)V

    .line 957
    invoke-virtual {v1}, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->isOUYA()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 958
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/sdcard/FrankkieOuyaLauncher/thumbnails/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".png"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 959
    .local v4, "thumbFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 960
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v5, v1, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 964
    :goto_1
    new-instance v0, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/sdcard/FrankkieOuyaLauncher/animations/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".gif"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 965
    .local v0, "animationFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 966
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->animationPath:Ljava/lang/String;

    .line 974
    .end local v0    # "animationFile":Ljava/io/File;
    .end local v4    # "thumbFile":Ljava/io/File;
    :goto_2
    invoke-virtual {v1}, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->InDatabase()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_4

    .line 975
    invoke-virtual {v1}, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->OnInsert()V

    .line 980
    :goto_3
    return-object v1

    .line 943
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 944
    new-instance v1, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;

    .end local v1    # "appInfo":Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;
    const/4 v5, 0x0

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-direct {v1, v5}, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;-><init>(I)V

    .line 945
    .restart local v1    # "appInfo":Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;
    invoke-virtual {v1}, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->OnLoad()V

    goto/16 :goto_0

    .line 962
    .restart local v4    # "thumbFile":Ljava/io/File;
    :cond_1
    invoke-virtual {p0, v1}, Lnl/frankkie/ouyalauncher/MainActivity;->getIconImageOUYA(Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;)V

    goto :goto_1

    .line 968
    .restart local v0    # "animationFile":Ljava/io/File;
    :cond_2
    invoke-virtual {p0, v1}, Lnl/frankkie/ouyalauncher/MainActivity;->getAppAnimation(Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;)V

    goto :goto_2

    .line 971
    .end local v0    # "animationFile":Ljava/io/File;
    .end local v4    # "thumbFile":Ljava/io/File;
    :cond_3
    invoke-virtual {p0}, Lnl/frankkie/ouyalauncher/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, v1, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 972
    invoke-virtual {p0, v1}, Lnl/frankkie/ouyalauncher/MainActivity;->getIconImageAndroidApps(Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;)V

    goto :goto_2

    .line 977
    :cond_4
    invoke-virtual {v1}, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->OnUpdate()V

    goto :goto_3
.end method

.method public getDatabaseAppInfo(Ljava/lang/String;)Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 984
    sget-object v2, Lnl/frankkie/ouyalauncher/MainActivity;->gridItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnl/frankkie/ouyalauncher/IGridItem;

    .line 985
    .local v1, "item":Lnl/frankkie/ouyalauncher/IGridItem;
    invoke-interface {v1}, Lnl/frankkie/ouyalauncher/IGridItem;->isFolder()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v1

    .line 988
    check-cast v2, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;

    iget-object v2, v2, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 989
    check-cast v1, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;

    .line 992
    .end local v1    # "item":Lnl/frankkie/ouyalauncher/IGridItem;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDatabaseFolder(Ljava/lang/String;)Lnl/frankkie/ouyalauncher/databaserows/DatabaseFolder;
    .locals 6
    .param p1, "folderName"    # Ljava/lang/String;

    .prologue
    .line 996
    invoke-static {p0}, Lnl/wotuu/database/DatabaseOpenHelper;->CreateInstance(Landroid/content/Context;)Lnl/wotuu/database/DatabaseOpenHelper;

    move-result-object v2

    .line 997
    .local v2, "helper":Lnl/wotuu/database/DatabaseOpenHelper;
    iget-object v3, v2, Lnl/wotuu/database/DatabaseOpenHelper;->WriteableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT id FROM folder WHERE title = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 999
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 1000
    .local v1, "folder":Lnl/frankkie/ouyalauncher/databaserows/DatabaseFolder;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 1002
    new-instance v1, Lnl/frankkie/ouyalauncher/databaserows/DatabaseFolder;

    .end local v1    # "folder":Lnl/frankkie/ouyalauncher/databaserows/DatabaseFolder;
    invoke-direct {v1}, Lnl/frankkie/ouyalauncher/databaserows/DatabaseFolder;-><init>()V

    .line 1003
    .restart local v1    # "folder":Lnl/frankkie/ouyalauncher/databaserows/DatabaseFolder;
    invoke-virtual {v1, p1}, Lnl/frankkie/ouyalauncher/databaserows/DatabaseFolder;->setFolderName(Ljava/lang/String;)V

    .line 1004
    invoke-virtual {v1}, Lnl/frankkie/ouyalauncher/databaserows/DatabaseFolder;->OnInsert()V

    .line 1011
    :goto_0
    invoke-virtual {p0}, Lnl/frankkie/ouyalauncher/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02001e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lnl/frankkie/ouyalauncher/databaserows/DatabaseFolder;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1012
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1013
    return-object v1

    .line 1007
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1008
    new-instance v1, Lnl/frankkie/ouyalauncher/databaserows/DatabaseFolder;

    .end local v1    # "folder":Lnl/frankkie/ouyalauncher/databaserows/DatabaseFolder;
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-direct {v1, v3}, Lnl/frankkie/ouyalauncher/databaserows/DatabaseFolder;-><init>(I)V

    .line 1009
    .restart local v1    # "folder":Lnl/frankkie/ouyalauncher/databaserows/DatabaseFolder;
    invoke-virtual {v1}, Lnl/frankkie/ouyalauncher/databaserows/DatabaseFolder;->OnLoad()V

    goto :goto_0
.end method

.method public getIconImageAndroidApps(Lnl/frankkie/ouyalauncher/AppInfo;)V
    .locals 13
    .param p1, "info"    # Lnl/frankkie/ouyalauncher/AppInfo;

    .prologue
    const/4 v12, 0x0

    .line 741
    iget-object v3, p1, Lnl/frankkie/ouyalauncher/AppInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 743
    .local v3, "icon":Landroid/graphics/drawable/Drawable;
    const/16 v9, 0xb4

    .line 744
    .local v9, "width":I
    const/16 v2, 0xb4

    .line 746
    .local v2, "height":I
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 747
    .local v5, "iconWidth":I
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 749
    .local v4, "iconHeight":I
    instance-of v10, v3, Landroid/graphics/drawable/PaintDrawable;

    if-eqz v10, :cond_0

    move-object v6, v3

    .line 750
    check-cast v6, Landroid/graphics/drawable/PaintDrawable;

    .line 751
    .local v6, "painter":Landroid/graphics/drawable/PaintDrawable;
    invoke-virtual {v6, v9}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 752
    invoke-virtual {v6, v2}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .line 755
    .end local v6    # "painter":Landroid/graphics/drawable/PaintDrawable;
    :cond_0
    if-lez v9, :cond_3

    if-lez v2, :cond_3

    if-lt v9, v5, :cond_1

    if-ge v2, v4, :cond_3

    .line 756
    :cond_1
    int-to-float v10, v5

    int-to-float v11, v4

    div-float v7, v10, v11

    .line 758
    .local v7, "ratio":F
    if-le v5, v4, :cond_4

    .line 759
    int-to-float v10, v9

    div-float/2addr v10, v7

    float-to-int v2, v10

    .line 764
    :cond_2
    :goto_0
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_5

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 767
    .local v0, "c":Landroid/graphics/Bitmap$Config;
    :goto_1
    invoke-static {v9, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 768
    .local v8, "thumb":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 769
    .local v1, "canvas":Landroid/graphics/Canvas;
    new-instance v10, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v11, 0x4

    invoke-direct {v10, v11, v12}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v1, v10}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 775
    iget-object v10, p0, Lnl/frankkie/ouyalauncher/MainActivity;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 776
    invoke-virtual {v3, v12, v12, v9, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 777
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 778
    iget-object v10, p0, Lnl/frankkie/ouyalauncher/MainActivity;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v10}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 779
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    invoke-direct {v3, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v3, p1, Lnl/frankkie/ouyalauncher/AppInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 780
    .restart local v3    # "icon":Landroid/graphics/drawable/Drawable;
    const/4 v10, 0x1

    iput-boolean v10, p1, Lnl/frankkie/ouyalauncher/AppInfo;->filtered:Z

    .line 782
    .end local v0    # "c":Landroid/graphics/Bitmap$Config;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v7    # "ratio":F
    .end local v8    # "thumb":Landroid/graphics/Bitmap;
    :cond_3
    return-void

    .line 760
    .restart local v7    # "ratio":F
    :cond_4
    if-le v4, v5, :cond_2

    .line 761
    int-to-float v10, v2

    mul-float/2addr v10, v7

    float-to-int v9, v10

    goto :goto_0

    .line 764
    :cond_5
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_1
.end method

.method public getIconImageAndroidApps(Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;)V
    .locals 13
    .param p1, "info"    # Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;

    .prologue
    const/4 v12, 0x0

    .line 785
    iget-object v3, p1, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 787
    .local v3, "icon":Landroid/graphics/drawable/Drawable;
    const/16 v9, 0xb4

    .line 788
    .local v9, "width":I
    const/16 v2, 0xb4

    .line 790
    .local v2, "height":I
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 791
    .local v5, "iconWidth":I
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 793
    .local v4, "iconHeight":I
    instance-of v10, v3, Landroid/graphics/drawable/PaintDrawable;

    if-eqz v10, :cond_0

    move-object v6, v3

    .line 794
    check-cast v6, Landroid/graphics/drawable/PaintDrawable;

    .line 795
    .local v6, "painter":Landroid/graphics/drawable/PaintDrawable;
    invoke-virtual {v6, v9}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 796
    invoke-virtual {v6, v2}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .line 799
    .end local v6    # "painter":Landroid/graphics/drawable/PaintDrawable;
    :cond_0
    if-lez v9, :cond_3

    if-lez v2, :cond_3

    if-lt v9, v5, :cond_1

    if-ge v2, v4, :cond_3

    .line 800
    :cond_1
    int-to-float v10, v5

    int-to-float v11, v4

    div-float v7, v10, v11

    .line 802
    .local v7, "ratio":F
    if-le v5, v4, :cond_4

    .line 803
    int-to-float v10, v9

    div-float/2addr v10, v7

    float-to-int v2, v10

    .line 808
    :cond_2
    :goto_0
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_5

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 811
    .local v0, "c":Landroid/graphics/Bitmap$Config;
    :goto_1
    invoke-static {v9, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 812
    .local v8, "thumb":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 813
    .local v1, "canvas":Landroid/graphics/Canvas;
    new-instance v10, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v11, 0x4

    invoke-direct {v10, v11, v12}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v1, v10}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 819
    iget-object v10, p0, Lnl/frankkie/ouyalauncher/MainActivity;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 820
    invoke-virtual {v3, v12, v12, v9, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 821
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 822
    iget-object v10, p0, Lnl/frankkie/ouyalauncher/MainActivity;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v10}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 823
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    invoke-direct {v3, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v3, p1, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 826
    .end local v0    # "c":Landroid/graphics/Bitmap$Config;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v7    # "ratio":F
    .end local v8    # "thumb":Landroid/graphics/Bitmap;
    .restart local v3    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_3
    return-void

    .line 804
    .restart local v7    # "ratio":F
    :cond_4
    if-le v4, v5, :cond_2

    .line 805
    int-to-float v10, v2

    mul-float/2addr v10, v7

    float-to-int v9, v10

    goto :goto_0

    .line 808
    :cond_5
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_1
.end method

.method public getIconImageOUYA(Lnl/frankkie/ouyalauncher/AppInfo;)V
    .locals 12
    .param p1, "info"    # Lnl/frankkie/ouyalauncher/AppInfo;

    .prologue
    .line 829
    iget-object v8, p1, Lnl/frankkie/ouyalauncher/AppInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 831
    .local v6, "packageName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lnl/frankkie/ouyalauncher/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v6, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 832
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p0}, Lnl/frankkie/ouyalauncher/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v7

    .line 833
    .local v7, "resources":Landroid/content/res/Resources;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":drawable/ouya_icon"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    const-string v10, ""

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 834
    .local v4, "identifier3":I
    invoke-virtual {p0}, Lnl/frankkie/ouyalauncher/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p1, Lnl/frankkie/ouyalauncher/AppInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 835
    const/4 v8, 0x1

    iput-boolean v8, p1, Lnl/frankkie/ouyalauncher/AppInfo;->filtered:Z

    .line 837
    iget-object v8, p1, Lnl/frankkie/ouyalauncher/AppInfo;->icon:Landroid/graphics/drawable/Drawable;

    check-cast v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 839
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lnl/frankkie/ouyalauncher/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const/16 v9, 0x1e0

    const/16 v10, 0x10e

    const/4 v11, 0x1

    invoke-static {v1, v9, v10, v11}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-direct {v2, v8, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 841
    .local v2, "d":Landroid/graphics/drawable/BitmapDrawable;
    new-instance v5, Ljava/io/FileOutputStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/sdcard/FrankkieOuyaLauncher/thumbnails/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".png"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 842
    .local v5, "out":Ljava/io/FileOutputStream;
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v10, 0x5a

    invoke-virtual {v8, v9, v10, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 843
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Runtime;->gc()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 847
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "d":Landroid/graphics/drawable/BitmapDrawable;
    .end local v4    # "identifier3":I
    .end local v5    # "out":Ljava/io/FileOutputStream;
    .end local v7    # "resources":Landroid/content/res/Resources;
    :goto_0
    return-void

    .line 844
    :catch_0
    move-exception v3

    .line 845
    .local v3, "e":Ljava/lang/Exception;
    const-string v8, "FrankkieOuyaLauncher"

    const-string v9, "ERROR"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getIconImageOUYA(Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;)V
    .locals 12
    .param p1, "info"    # Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;

    .prologue
    .line 879
    iget-object v8, p1, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 881
    .local v6, "packageName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lnl/frankkie/ouyalauncher/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v6, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 882
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p0}, Lnl/frankkie/ouyalauncher/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v7

    .line 883
    .local v7, "resources":Landroid/content/res/Resources;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":drawable/ouya_icon"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    const-string v10, ""

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 884
    .local v4, "identifier3":I
    invoke-virtual {p0}, Lnl/frankkie/ouyalauncher/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p1, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 887
    iget-object v8, p1, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    check-cast v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 889
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lnl/frankkie/ouyalauncher/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const/16 v9, 0x1e0

    const/16 v10, 0x10e

    const/4 v11, 0x1

    invoke-static {v1, v9, v10, v11}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-direct {v2, v8, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 891
    .local v2, "d":Landroid/graphics/drawable/BitmapDrawable;
    new-instance v5, Ljava/io/FileOutputStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/sdcard/FrankkieOuyaLauncher/thumbnails/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".png"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 892
    .local v5, "out":Ljava/io/FileOutputStream;
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v10, 0x5a

    invoke-virtual {v8, v9, v10, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 893
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Runtime;->gc()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 897
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "d":Landroid/graphics/drawable/BitmapDrawable;
    .end local v4    # "identifier3":I
    .end local v5    # "out":Ljava/io/FileOutputStream;
    .end local v7    # "resources":Landroid/content/res/Resources;
    :goto_0
    return-void

    .line 894
    :catch_0
    move-exception v3

    .line 895
    .local v3, "e":Ljava/lang/Exception;
    const-string v8, "FrankkieOuyaLauncher"

    const-string v9, "ERROR"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected initUI()V
    .locals 2

    .prologue
    const/16 v1, 0x400

    .line 495
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnl/frankkie/ouyalauncher/MainActivity;->requestWindowFeature(I)Z

    .line 496
    invoke-virtual {p0}, Lnl/frankkie/ouyalauncher/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 498
    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Lnl/frankkie/ouyalauncher/MainActivity;->setContentView(I)V

    .line 500
    invoke-static {p0}, Lnl/frankkie/ouyalauncher/Util;->setLogo(Landroid/app/Activity;)V

    .line 501
    const v0, 0x7f090004

    invoke-virtual {p0, v0}, Lnl/frankkie/ouyalauncher/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lnl/frankkie/ouyalauncher/MainActivity;->table:Landroid/widget/LinearLayout;

    .line 502
    return-void
.end method

.method public makeAppMenu(Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;)V
    .locals 5
    .param p1, "info"    # Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;

    .prologue
    .line 252
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 253
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v2, "Menu"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 254
    const/4 v2, 0x4

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Filters"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "App Info"

    aput-object v3, v1, v2

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->isFavorite()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Remove from"

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " Favorites"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v3, 0x3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->isInFolder()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Remove from"

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " Folder"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 258
    .local v1, "items":[Ljava/lang/String;
    new-instance v2, Lnl/frankkie/ouyalauncher/MainActivity$3;

    invoke-direct {v2, p0, p1}, Lnl/frankkie/ouyalauncher/MainActivity$3;-><init>(Lnl/frankkie/ouyalauncher/MainActivity;Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 289
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 290
    return-void

    .line 254
    .end local v1    # "items":[Ljava/lang/String;
    :cond_0
    const-string v2, "Add to"

    goto :goto_0

    :cond_1
    const-string v2, "Add to"

    goto :goto_1
.end method

.method public makeFolderMenu(Ljava/lang/String;)V
    .locals 4
    .param p1, "folderName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 293
    iget-object v2, p0, Lnl/frankkie/ouyalauncher/MainActivity;->currentFolder:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnl/frankkie/ouyalauncher/MainActivity;->currentFolder:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_0

    .line 311
    :goto_0
    return-void

    .line 296
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 297
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v2, "Menu"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 298
    new-array v1, v3, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Remove this Folder"

    aput-object v3, v1, v2

    .line 301
    .local v1, "items":[Ljava/lang/String;
    new-instance v2, Lnl/frankkie/ouyalauncher/MainActivity$4;

    invoke-direct {v2, p0, p1}, Lnl/frankkie/ouyalauncher/MainActivity$4;-><init>(Lnl/frankkie/ouyalauncher/MainActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 310
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public makeNewFolder(Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;)V
    .locals 4
    .param p1, "info"    # Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;

    .prologue
    .line 373
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 374
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v2, "Enter Folder Name"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 375
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 376
    .local v1, "editText":Landroid/widget/EditText;
    const-string v2, "folder name here"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 377
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 378
    const-string v2, "Ok"

    new-instance v3, Lnl/frankkie/ouyalauncher/MainActivity$6;

    invoke-direct {v3, p0, v1, p1}, Lnl/frankkie/ouyalauncher/MainActivity$6;-><init>(Lnl/frankkie/ouyalauncher/MainActivity;Landroid/widget/EditText;Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 385
    const-string v2, "Cancel"

    new-instance v3, Lnl/frankkie/ouyalauncher/MainActivity$7;

    invoke-direct {v3, p0}, Lnl/frankkie/ouyalauncher/MainActivity$7;-><init>(Lnl/frankkie/ouyalauncher/MainActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 391
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 392
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 189
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 190
    invoke-static {p0}, Ltv/ouya/console/api/OuyaController;->init(Landroid/content/Context;)V

    .line 191
    invoke-virtual {p0}, Lnl/frankkie/ouyalauncher/MainActivity;->initUI()V

    .line 192
    invoke-virtual {p0}, Lnl/frankkie/ouyalauncher/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lnl/frankkie/ouyalauncher/MainActivity;->appType:I

    .line 193
    iget-object v0, p0, Lnl/frankkie/ouyalauncher/MainActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lnl/frankkie/ouyalauncher/MainActivity$2;

    invoke-direct {v1, p0}, Lnl/frankkie/ouyalauncher/MainActivity$2;-><init>(Lnl/frankkie/ouyalauncher/MainActivity;)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 200
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 491
    invoke-super {p0, p1}, Landroid/app/Activity;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 11
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v10, 0x52

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 206
    const/4 v8, 0x5

    new-array v4, v8, [I

    fill-array-data v4, :array_0

    .line 213
    .local v4, "ignoreList":[I
    move-object v0, v4

    .local v0, "arr$":[I
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_1

    aget v2, v0, v3

    .line 214
    .local v2, "i":I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v8

    if-ne v8, v2, :cond_0

    .line 215
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v7

    .line 238
    .end local v2    # "i":I
    :goto_1
    return v7

    .line 213
    .restart local v2    # "i":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 219
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v8

    const/16 v9, 0x63

    if-ne v8, v9, :cond_2

    .line 220
    invoke-virtual {p0, v6}, Lnl/frankkie/ouyalauncher/MainActivity;->showAppInfo(Z)V

    goto :goto_1

    .line 223
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v8

    const/16 v9, 0x64

    if-ne v8, v9, :cond_3

    .line 224
    invoke-virtual {p0}, Lnl/frankkie/ouyalauncher/MainActivity;->showFilters()V

    goto :goto_1

    .line 227
    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v8

    const/16 v9, 0x61

    if-ne v8, v9, :cond_4

    .line 228
    invoke-virtual {p0}, Lnl/frankkie/ouyalauncher/MainActivity;->pressedA()V

    goto :goto_1

    .line 232
    :cond_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v8

    if-eq v8, v10, :cond_5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v8

    if-ne v8, v10, :cond_6

    .line 233
    :cond_5
    invoke-virtual {p0}, Lnl/frankkie/ouyalauncher/MainActivity;->pressedMenu()V

    goto :goto_1

    .line 237
    :cond_6
    invoke-static {p1, p2}, Ltv/ouya/console/api/OuyaController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 238
    .local v1, "handled":Z
    if-nez v1, :cond_7

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v8

    if-eqz v8, :cond_8

    :cond_7
    move v6, v7

    :cond_8
    move v7, v6

    goto :goto_1

    .line 206
    :array_0
    .array-data 4
        0x14
        0x13
        0x15
        0x16
        0x60
    .end array-data
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 9
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v6, 0x1

    .line 462
    const/4 v7, 0x6

    new-array v4, v7, [I

    fill-array-data v4, :array_0

    .line 469
    .local v4, "ignoreList":[I
    move-object v0, v4

    .local v0, "arr$":[I
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_2

    aget v2, v0, v3

    .line 470
    .local v2, "i":I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    if-ne v7, v2, :cond_1

    .line 471
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v6

    .line 483
    .end local v2    # "i":I
    :cond_0
    :goto_1
    return v6

    .line 469
    .restart local v2    # "i":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 475
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    const/16 v8, 0x63

    if-eq v7, v8, :cond_0

    .line 478
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    const/16 v8, 0x64

    if-eq v7, v8, :cond_0

    .line 482
    invoke-static {p1, p2}, Ltv/ouya/console/api/OuyaController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 483
    .local v1, "handled":Z
    if-nez v1, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v7

    if-nez v7, :cond_0

    const/4 v6, 0x0

    goto :goto_1

    .line 462
    :array_0
    .array-data 4
        0x14
        0x13
        0x15
        0x16
        0x60
        0x61
    .end array-data
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 915
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 916
    invoke-static {p0}, Lnl/frankkie/ouyalauncher/Util;->onStart(Landroid/content/Context;)V

    .line 918
    const-string v0, "MDHSMF65TV4JCSW3QN63"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 919
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 923
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 924
    invoke-static {p0}, Lnl/frankkie/ouyalauncher/Util;->onStop(Landroid/content/Context;)V

    .line 926
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 927
    return-void
.end method

.method public pressedA()V
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lnl/frankkie/ouyalauncher/MainActivity;->currentFolder:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 243
    const-string v0, ""

    iput-object v0, p0, Lnl/frankkie/ouyalauncher/MainActivity;->currentFolder:Ljava/lang/String;

    .line 244
    invoke-virtual {p0}, Lnl/frankkie/ouyalauncher/MainActivity;->filter()V

    .line 245
    invoke-virtual {p0}, Lnl/frankkie/ouyalauncher/MainActivity;->fillTable()V

    .line 249
    :goto_0
    return-void

    .line 247
    :cond_0
    invoke-virtual {p0}, Lnl/frankkie/ouyalauncher/MainActivity;->finish()V

    goto :goto_0
.end method

.method public pressedMenu()V
    .locals 5

    .prologue
    .line 333
    invoke-virtual {p0}, Lnl/frankkie/ouyalauncher/MainActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lnl/frankkie/ouyalauncher/MainActivity;->selectedItem:Landroid/view/View;

    .line 334
    iget-object v3, p0, Lnl/frankkie/ouyalauncher/MainActivity;->selectedItem:Landroid/view/View;

    const v4, 0x7f09000d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 335
    .local v1, "pak":Ljava/lang/String;
    iget-object v3, p0, Lnl/frankkie/ouyalauncher/MainActivity;->selectedItem:Landroid/view/View;

    const v4, 0x7f09000c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 336
    .local v2, "title":Ljava/lang/String;
    const-string v3, "folder"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 337
    invoke-virtual {p0, v2}, Lnl/frankkie/ouyalauncher/MainActivity;->makeFolderMenu(Ljava/lang/String;)V

    .line 342
    :goto_0
    return-void

    .line 339
    :cond_0
    invoke-virtual {p0, v1}, Lnl/frankkie/ouyalauncher/MainActivity;->getDatabaseAppInfo(Ljava/lang/String;)Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;

    move-result-object v0

    .line 340
    .local v0, "info":Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;
    invoke-virtual {p0, v0}, Lnl/frankkie/ouyalauncher/MainActivity;->makeAppMenu(Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;)V

    goto :goto_0
.end method

.method public removeFolder(Ljava/lang/String;)V
    .locals 5
    .param p1, "folderName"    # Ljava/lang/String;

    .prologue
    .line 314
    const-string v4, ""

    iput-object v4, p0, Lnl/frankkie/ouyalauncher/MainActivity;->currentFolder:Ljava/lang/String;

    .line 315
    const/4 v3, 0x0

    .line 316
    .local v3, "toDelete":Lnl/frankkie/ouyalauncher/IGridItem;
    sget-object v4, Lnl/frankkie/ouyalauncher/MainActivity;->gridItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnl/frankkie/ouyalauncher/IGridItem;

    .line 318
    .local v2, "item":Lnl/frankkie/ouyalauncher/IGridItem;
    invoke-interface {v2}, Lnl/frankkie/ouyalauncher/IGridItem;->isInFolder()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Lnl/frankkie/ouyalauncher/IGridItem;->getFolderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 319
    const-string v4, ""

    invoke-interface {v2, v4}, Lnl/frankkie/ouyalauncher/IGridItem;->setFolderName(Ljava/lang/String;)V

    .line 321
    :cond_1
    invoke-interface {v2}, Lnl/frankkie/ouyalauncher/IGridItem;->isFolder()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Lnl/frankkie/ouyalauncher/IGridItem;->getFolderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 322
    move-object v3, v2

    goto :goto_0

    .line 325
    .end local v2    # "item":Lnl/frankkie/ouyalauncher/IGridItem;
    :cond_2
    sget-object v4, Lnl/frankkie/ouyalauncher/MainActivity;->gridItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 326
    invoke-virtual {p0, p1}, Lnl/frankkie/ouyalauncher/MainActivity;->getDatabaseFolder(Ljava/lang/String;)Lnl/frankkie/ouyalauncher/databaserows/DatabaseFolder;

    move-result-object v0

    .line 327
    .local v0, "folder":Lnl/frankkie/ouyalauncher/databaserows/DatabaseFolder;
    invoke-virtual {v0}, Lnl/frankkie/ouyalauncher/databaserows/DatabaseFolder;->OnDelete()V

    .line 328
    invoke-virtual {p0}, Lnl/frankkie/ouyalauncher/MainActivity;->filter()V

    .line 329
    invoke-virtual {p0}, Lnl/frankkie/ouyalauncher/MainActivity;->fillTable()V

    .line 330
    return-void
.end method

.method public removeFromFavorites()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 438
    iget-object v2, p0, Lnl/frankkie/ouyalauncher/MainActivity;->selectedItem:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 439
    invoke-virtual {p0}, Lnl/frankkie/ouyalauncher/MainActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lnl/frankkie/ouyalauncher/MainActivity;->selectedItem:Landroid/view/View;

    .line 440
    iget-object v2, p0, Lnl/frankkie/ouyalauncher/MainActivity;->selectedItem:Landroid/view/View;

    if-nez v2, :cond_0

    .line 457
    :goto_0
    return-void

    .line 443
    :cond_0
    iget-object v2, p0, Lnl/frankkie/ouyalauncher/MainActivity;->selectedItem:Landroid/view/View;

    const v3, 0x7f09000d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 444
    .local v1, "pak":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lnl/frankkie/ouyalauncher/MainActivity;->getDatabaseAppInfo(Ljava/lang/String;)Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;

    move-result-object v0

    .line 445
    .local v0, "info":Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;
    if-eqz v0, :cond_1

    .line 446
    invoke-virtual {v0, v4}, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->setFavorite(Z)V

    .line 449
    :cond_1
    invoke-virtual {v0}, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->OnUpdate()V

    .line 451
    invoke-static {p0, v0}, Lnl/frankkie/ouyalauncher/Util;->logRemoveFavorite(Landroid/content/Context;Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;)V

    .line 452
    const-string v2, "Removed from Favorites"

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 455
    .end local v0    # "info":Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;
    .end local v1    # "pak":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lnl/frankkie/ouyalauncher/MainActivity;->filter()V

    .line 456
    invoke-virtual {p0}, Lnl/frankkie/ouyalauncher/MainActivity;->fillTable()V

    goto :goto_0
.end method

.method public removeFromFolder(Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;)V
    .locals 2
    .param p1, "info"    # Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;

    .prologue
    .line 407
    const-string v0, ""

    invoke-virtual {p1, v0}, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->setFolderName(Ljava/lang/String;)V

    .line 408
    invoke-virtual {p1}, Lnl/frankkie/ouyalauncher/databaserows/DatabaseAppInfo;->OnUpdate()V

    .line 409
    const-string v0, "Removed from Folder"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 410
    invoke-virtual {p0}, Lnl/frankkie/ouyalauncher/MainActivity;->filter()V

    .line 411
    invoke-virtual {p0}, Lnl/frankkie/ouyalauncher/MainActivity;->fillTable()V

    .line 412
    return-void
.end method

.method public showAppInfo(Z)V
    .locals 4
    .param p1, "viaMenu"    # Z

    .prologue
    .line 74
    if-nez p1, :cond_0

    .line 75
    invoke-virtual {p0}, Lnl/frankkie/ouyalauncher/MainActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lnl/frankkie/ouyalauncher/MainActivity;->selectedItem:Landroid/view/View;

    .line 76
    iget-object v2, p0, Lnl/frankkie/ouyalauncher/MainActivity;->selectedItem:Landroid/view/View;

    if-nez v2, :cond_0

    .line 84
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v2, p0, Lnl/frankkie/ouyalauncher/MainActivity;->selectedItem:Landroid/view/View;

    check-cast v2, Landroid/view/ViewGroup;

    const v3, 0x7f09000d

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 81
    .local v1, "tv_packagename":Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "packagename":Ljava/lang/String;
    invoke-static {p0, v0}, Lnl/frankkie/ouyalauncher/MainActivity;->showInstalledAppDetails(Landroid/content/Context;Ljava/lang/String;)V

    .line 83
    invoke-static {p0, v0}, Lnl/frankkie/ouyalauncher/Util;->logAppInfo(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showFilters()V
    .locals 4

    .prologue
    .line 87
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 88
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v2, "Filters"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 89
    const/4 v2, 0x6

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "All Apps"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "OUYA Games"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "OUYA Apps"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "OUYA Apps and Games"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "Android Apps and Games"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "Favorites"

    aput-object v3, v1, v2

    .line 90
    .local v1, "items":[Ljava/lang/String;
    new-instance v2, Lnl/frankkie/ouyalauncher/MainActivity$1;

    invoke-direct {v2, p0}, Lnl/frankkie/ouyalauncher/MainActivity$1;-><init>(Lnl/frankkie/ouyalauncher/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 99
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 100
    return-void
.end method
