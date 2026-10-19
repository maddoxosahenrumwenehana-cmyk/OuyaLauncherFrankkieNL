.class final Lnl/wotuu/database/ThreadingUtils$1;
.super Ljava/lang/Object;
.source "ThreadingUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnl/wotuu/database/ThreadingUtils;->ShowToastOnUiThread(Landroid/app/Activity;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$length:I

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lnl/wotuu/database/ThreadingUtils$1;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lnl/wotuu/database/ThreadingUtils$1;->val$message:Ljava/lang/String;

    iput p3, p0, Lnl/wotuu/database/ThreadingUtils$1;->val$length:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 24
    iget-object v0, p0, Lnl/wotuu/database/ThreadingUtils$1;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lnl/wotuu/database/ThreadingUtils$1;->val$message:Ljava/lang/String;

    iget v2, p0, Lnl/wotuu/database/ThreadingUtils$1;->val$length:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 25
    return-void
.end method
