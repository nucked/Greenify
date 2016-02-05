.class Law;
.super Laa;
.source "SourceFile"


# instance fields
.field final synthetic a:Lbg;

.field final synthetic b:Lav;


# direct methods
.method constructor <init>(Lav;Lbg;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Law;->b:Lav;

    iput-object p2, p0, Law;->a:Lbg;

    invoke-direct {p0}, Laa;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Law;->b:Lav;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lav;->a(Lav;Z)Z

    .line 180
    iget-object v0, p0, Law;->b:Lav;

    iget-object v0, v0, Lav;->h:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Law;->a:Lbg;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Law;->a:Lbg;

    invoke-interface {v0}, Lbg;->b()V

    .line 184
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Law;->b:Lav;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lav;->a(Lav;Z)Z

    .line 175
    return-void
.end method
