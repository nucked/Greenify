.class Ladn;
.super Ladq;
.source "SourceFile"


# instance fields
.field final synthetic a:Lado;

.field final synthetic b:Lqj;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Ladf;


# direct methods
.method constructor <init>(Ladf;Lado;Lqj;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 371
    iput-object p1, p0, Ladn;->d:Ladf;

    iput-object p2, p0, Ladn;->a:Lado;

    iput-object p3, p0, Ladn;->b:Lqj;

    iput-object p4, p0, Ladn;->c:Landroid/view/View;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ladq;-><init>(Ladg;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 374
    iget-object v0, p0, Ladn;->d:Ladf;

    iget-object v1, p0, Ladn;->a:Lado;

    iget-object v1, v1, Lado;->b:Lafy;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ladf;->b(Lafy;Z)V

    .line 375
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 378
    iget-object v0, p0, Ladn;->b:Lqj;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lqj;->a(Lra;)Lqj;

    .line 379
    iget-object v0, p0, Ladn;->c:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lou;->c(Landroid/view/View;F)V

    .line 380
    iget-object v0, p0, Ladn;->c:Landroid/view/View;

    invoke-static {v0, v2}, Lou;->a(Landroid/view/View;F)V

    .line 381
    iget-object v0, p0, Ladn;->c:Landroid/view/View;

    invoke-static {v0, v2}, Lou;->b(Landroid/view/View;F)V

    .line 382
    iget-object v0, p0, Ladn;->d:Ladf;

    iget-object v1, p0, Ladn;->a:Lado;

    iget-object v1, v1, Lado;->b:Lafy;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ladf;->a(Lafy;Z)V

    .line 383
    iget-object v0, p0, Ladn;->d:Ladf;

    invoke-static {v0}, Ladf;->h(Ladf;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Ladn;->a:Lado;

    iget-object v1, v1, Lado;->b:Lafy;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 384
    iget-object v0, p0, Ladn;->d:Ladf;

    invoke-static {v0}, Ladf;->e(Ladf;)V

    .line 385
    return-void
.end method
