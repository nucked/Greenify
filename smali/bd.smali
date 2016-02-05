.class Lbd;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lbg;

.field final synthetic b:Lbb;


# direct methods
.method constructor <init>(Lbb;Lbg;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lbd;->b:Lbb;

    iput-object p2, p0, Lbd;->a:Lbg;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lbd;->a:Lbg;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lbd;->a:Lbg;

    invoke-interface {v0}, Lbg;->a()V

    .line 114
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lbd;->b:Lbb;

    iget-object v0, v0, Lbb;->h:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 107
    return-void
.end method
