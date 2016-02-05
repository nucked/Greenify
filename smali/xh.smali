.class Lxh;
.super Lrb;
.source "SourceFile"


# instance fields
.field final synthetic a:Lxg;


# direct methods
.method constructor <init>(Lxg;)V
    .locals 0

    .prologue
    .line 728
    iput-object p1, p0, Lxh;->a:Lxg;

    invoke-direct {p0}, Lrb;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 738
    iget-object v0, p0, Lxh;->a:Lxg;

    iget-object v0, v0, Lxg;->a:Lxb;

    iget-object v0, v0, Lxb;->n:Landroid/support/v7/widget/ActionBarContextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContextView;->setVisibility(I)V

    .line 739
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 731
    iget-object v0, p0, Lxh;->a:Lxg;

    iget-object v0, v0, Lxg;->a:Lxb;

    iget-object v0, v0, Lxb;->n:Landroid/support/v7/widget/ActionBarContextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lou;->c(Landroid/view/View;F)V

    .line 732
    iget-object v0, p0, Lxh;->a:Lxg;

    iget-object v0, v0, Lxg;->a:Lxb;

    iget-object v0, v0, Lxb;->q:Lqj;

    invoke-virtual {v0, v2}, Lqj;->a(Lra;)Lqj;

    .line 733
    iget-object v0, p0, Lxh;->a:Lxg;

    iget-object v0, v0, Lxg;->a:Lxb;

    iput-object v2, v0, Lxb;->q:Lqj;

    .line 734
    return-void
.end method
