.class Lbc;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lbg;

.field final synthetic b:Lbb;


# direct methods
.method constructor <init>(Lbb;Lbg;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lbc;->b:Lbb;

    iput-object p2, p0, Lbc;->a:Lbg;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lbc;->b:Lbb;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lbb;->a(Lbb;Z)Z

    .line 76
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lbc;->b:Lbb;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lbb;->a(Lbb;Z)Z

    .line 81
    iget-object v0, p0, Lbc;->b:Lbb;

    iget-object v0, v0, Lbb;->h:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lbc;->a:Lbg;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lbc;->a:Lbg;

    invoke-interface {v0}, Lbg;->b()V

    .line 85
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lbc;->b:Lbb;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lbb;->a(Lbb;Z)Z

    .line 70
    iget-object v0, p0, Lbc;->b:Lbb;

    iget-object v0, v0, Lbb;->h:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 71
    return-void
.end method
