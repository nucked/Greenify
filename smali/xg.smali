.class Lxg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lxb;


# direct methods
.method constructor <init>(Lxb;)V
    .locals 0

    .prologue
    .line 720
    iput-object p1, p0, Lxg;->a:Lxb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 722
    iget-object v0, p0, Lxg;->a:Lxb;

    iget-object v0, v0, Lxb;->o:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lxg;->a:Lxb;

    iget-object v1, v1, Lxb;->n:Landroid/support/v7/widget/ActionBarContextView;

    const/16 v2, 0x37

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 725
    iget-object v0, p0, Lxg;->a:Lxb;

    invoke-static {v0}, Lxb;->c(Lxb;)V

    .line 726
    iget-object v0, p0, Lxg;->a:Lxb;

    iget-object v0, v0, Lxb;->n:Landroid/support/v7/widget/ActionBarContextView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lou;->c(Landroid/view/View;F)V

    .line 727
    iget-object v0, p0, Lxg;->a:Lxb;

    iget-object v1, p0, Lxg;->a:Lxb;

    iget-object v1, v1, Lxb;->n:Landroid/support/v7/widget/ActionBarContextView;

    invoke-static {v1}, Lou;->p(Landroid/view/View;)Lqj;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lqj;->a(F)Lqj;

    move-result-object v1

    iput-object v1, v0, Lxb;->q:Lqj;

    .line 728
    iget-object v0, p0, Lxg;->a:Lxb;

    iget-object v0, v0, Lxb;->q:Lqj;

    new-instance v1, Lxh;

    invoke-direct {v1, p0}, Lxh;-><init>(Lxg;)V

    invoke-virtual {v0, v1}, Lqj;->a(Lra;)Lqj;

    .line 741
    return-void
.end method
