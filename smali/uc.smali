.class Luc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lue;

.field final synthetic b:Lua;


# direct methods
.method constructor <init>(Lua;Lue;)V
    .locals 0

    .prologue
    .line 419
    iput-object p1, p0, Luc;->b:Lua;

    iput-object p2, p0, Luc;->a:Lue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 429
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 433
    iget-object v0, p0, Luc;->a:Lue;

    invoke-virtual {v0}, Lue;->l()V

    .line 434
    iget-object v0, p0, Luc;->a:Lue;

    invoke-virtual {v0}, Lue;->b()V

    .line 435
    iget-object v0, p0, Luc;->a:Lue;

    iget-object v1, p0, Luc;->a:Lue;

    invoke-virtual {v1}, Lue;->i()F

    move-result v1

    invoke-virtual {v0, v1}, Lue;->b(F)V

    .line 436
    iget-object v0, p0, Luc;->b:Lua;

    iget-boolean v0, v0, Lua;->a:Z

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Luc;->b:Lua;

    iput-boolean v2, v0, Lua;->a:Z

    .line 440
    const-wide/16 v0, 0x534

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 441
    iget-object v0, p0, Luc;->a:Lue;

    invoke-virtual {v0, v2}, Lue;->a(Z)V

    .line 445
    :goto_0
    return-void

    .line 443
    :cond_0
    iget-object v0, p0, Luc;->b:Lua;

    iget-object v1, p0, Luc;->b:Lua;

    invoke-static {v1}, Lua;->a(Lua;)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    const/high16 v2, 0x40a00000    # 5.0f

    rem-float/2addr v1, v2

    invoke-static {v0, v1}, Lua;->a(Lua;F)F

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 423
    iget-object v0, p0, Luc;->b:Lua;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lua;->a(Lua;F)F

    .line 424
    return-void
.end method
