.class Lnl/frankkie/ouyalauncher/StartActivity$8;
.super Ljava/lang/Object;
.source "StartActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnl/frankkie/ouyalauncher/StartActivity;->showMenuDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnl/frankkie/ouyalauncher/StartActivity;


# direct methods
.method constructor <init>(Lnl/frankkie/ouyalauncher/StartActivity;)V
    .locals 0

    .prologue
    .line 315
    iput-object p1, p0, Lnl/frankkie/ouyalauncher/StartActivity$8;->this$0:Lnl/frankkie/ouyalauncher/StartActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 318
    packed-switch p2, :pswitch_data_0

    .line 352
    :goto_0
    return-void

    .line 320
    :pswitch_0
    iget-object v0, p0, Lnl/frankkie/ouyalauncher/StartActivity$8;->this$0:Lnl/frankkie/ouyalauncher/StartActivity;

    invoke-static {v0}, Lnl/frankkie/ouyalauncher/StartActivity;->access$100(Lnl/frankkie/ouyalauncher/StartActivity;)V

    goto :goto_0

    .line 324
    :pswitch_1
    iget-object v0, p0, Lnl/frankkie/ouyalauncher/StartActivity$8;->this$0:Lnl/frankkie/ouyalauncher/StartActivity;

    invoke-static {v0}, Lnl/frankkie/ouyalauncher/StartActivity;->access$300(Lnl/frankkie/ouyalauncher/StartActivity;)V

    goto :goto_0

    .line 328
    :pswitch_2
    iget-object v0, p0, Lnl/frankkie/ouyalauncher/StartActivity$8;->this$0:Lnl/frankkie/ouyalauncher/StartActivity;

    invoke-static {v0}, Lnl/frankkie/ouyalauncher/StartActivity;->access$400(Lnl/frankkie/ouyalauncher/StartActivity;)V

    goto :goto_0

    .line 333
    :pswitch_3
    iget-object v0, p0, Lnl/frankkie/ouyalauncher/StartActivity$8;->this$0:Lnl/frankkie/ouyalauncher/StartActivity;

    invoke-virtual {v0}, Lnl/frankkie/ouyalauncher/StartActivity;->addWidget()V

    goto :goto_0

    .line 340
    :pswitch_4
    iget-object v0, p0, Lnl/frankkie/ouyalauncher/StartActivity$8;->this$0:Lnl/frankkie/ouyalauncher/StartActivity;

    invoke-virtual {v0}, Lnl/frankkie/ouyalauncher/StartActivity;->removeAllWidgets()V

    goto :goto_0

    .line 344
    :pswitch_5
    iget-object v0, p0, Lnl/frankkie/ouyalauncher/StartActivity$8;->this$0:Lnl/frankkie/ouyalauncher/StartActivity;

    invoke-static {v0}, Lnl/frankkie/ouyalauncher/StartActivity;->access$500(Lnl/frankkie/ouyalauncher/StartActivity;)V

    goto :goto_0

    .line 348
    :pswitch_6
    iget-object v0, p0, Lnl/frankkie/ouyalauncher/StartActivity$8;->this$0:Lnl/frankkie/ouyalauncher/StartActivity;

    invoke-static {v0}, Lnl/frankkie/ouyalauncher/StartActivity;->access$600(Lnl/frankkie/ouyalauncher/StartActivity;)V

    goto :goto_0

    .line 318
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
