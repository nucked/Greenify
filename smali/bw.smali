.class public Lbw;
.super Lrb;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/support/design/widget/Snackbar;


# direct methods
.method public constructor <init>(Landroid/support/design/widget/Snackbar;)V
    .locals 0

    .prologue
    .line 514
    iput-object p1, p0, Lbw;->a:Landroid/support/design/widget/Snackbar;

    invoke-direct {p0}, Lrb;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 517
    iget-object v0, p0, Lbw;->a:Landroid/support/design/widget/Snackbar;

    invoke-static {v0}, Landroid/support/design/widget/Snackbar;->c(Landroid/support/design/widget/Snackbar;)Landroid/support/design/widget/Snackbar$SnackbarLayout;

    move-result-object v0

    const/16 v1, 0x46

    const/16 v2, 0xb4

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->a(II)V

    .line 519
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 523
    iget-object v0, p0, Lbw;->a:Landroid/support/design/widget/Snackbar;

    invoke-static {v0}, Landroid/support/design/widget/Snackbar;->d(Landroid/support/design/widget/Snackbar;)Lca;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Lbw;->a:Landroid/support/design/widget/Snackbar;

    invoke-static {v0}, Landroid/support/design/widget/Snackbar;->d(Landroid/support/design/widget/Snackbar;)Lca;

    move-result-object v0

    iget-object v1, p0, Lbw;->a:Landroid/support/design/widget/Snackbar;

    invoke-virtual {v0, v1}, Lca;->a(Landroid/support/design/widget/Snackbar;)V

    .line 526
    :cond_0
    invoke-static {}, Lce;->a()Lce;

    move-result-object v0

    iget-object v1, p0, Lbw;->a:Landroid/support/design/widget/Snackbar;

    invoke-static {v1}, Landroid/support/design/widget/Snackbar;->a(Landroid/support/design/widget/Snackbar;)Lcg;

    move-result-object v1

    invoke-virtual {v0, v1}, Lce;->b(Lcg;)V

    .line 527
    return-void
.end method
