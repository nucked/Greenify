.class public Lbx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Landroid/support/design/widget/Snackbar;


# direct methods
.method public constructor <init>(Landroid/support/design/widget/Snackbar;)V
    .locals 0

    .prologue
    .line 534
    iput-object p1, p0, Lbx;->a:Landroid/support/design/widget/Snackbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 537
    iget-object v0, p0, Lbx;->a:Landroid/support/design/widget/Snackbar;

    invoke-static {v0}, Landroid/support/design/widget/Snackbar;->d(Landroid/support/design/widget/Snackbar;)Lca;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Lbx;->a:Landroid/support/design/widget/Snackbar;

    invoke-static {v0}, Landroid/support/design/widget/Snackbar;->d(Landroid/support/design/widget/Snackbar;)Lca;

    move-result-object v0

    iget-object v1, p0, Lbx;->a:Landroid/support/design/widget/Snackbar;

    invoke-virtual {v0, v1}, Lca;->a(Landroid/support/design/widget/Snackbar;)V

    .line 540
    :cond_0
    invoke-static {}, Lce;->a()Lce;

    move-result-object v0

    iget-object v1, p0, Lbx;->a:Landroid/support/design/widget/Snackbar;

    invoke-static {v1}, Landroid/support/design/widget/Snackbar;->a(Landroid/support/design/widget/Snackbar;)Lcg;

    move-result-object v1

    invoke-virtual {v0, v1}, Lce;->b(Lcg;)V

    .line 541
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 547
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 544
    return-void
.end method
