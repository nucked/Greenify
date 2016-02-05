.class Ladm;
.super Ladq;
.source "SourceFile"


# instance fields
.field final synthetic a:Lado;

.field final synthetic b:Lqj;

.field final synthetic c:Ladf;


# direct methods
.method constructor <init>(Ladf;Lado;Lqj;)V
    .locals 1

    .prologue
    .line 349
    iput-object p1, p0, Ladm;->c:Ladf;

    iput-object p2, p0, Ladm;->a:Lado;

    iput-object p3, p0, Ladm;->b:Lqj;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ladq;-><init>(Ladg;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 352
    iget-object v0, p0, Ladm;->c:Ladf;

    iget-object v1, p0, Ladm;->a:Lado;

    iget-object v1, v1, Lado;->a:Lafy;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ladf;->b(Lafy;Z)V

    .line 353
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 357
    iget-object v0, p0, Ladm;->b:Lqj;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lqj;->a(Lra;)Lqj;

    .line 358
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Lou;->c(Landroid/view/View;F)V

    .line 359
    invoke-static {p1, v2}, Lou;->a(Landroid/view/View;F)V

    .line 360
    invoke-static {p1, v2}, Lou;->b(Landroid/view/View;F)V

    .line 361
    iget-object v0, p0, Ladm;->c:Ladf;

    iget-object v1, p0, Ladm;->a:Lado;

    iget-object v1, v1, Lado;->a:Lafy;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ladf;->a(Lafy;Z)V

    .line 362
    iget-object v0, p0, Ladm;->c:Ladf;

    invoke-static {v0}, Ladf;->h(Ladf;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Ladm;->a:Lado;

    iget-object v1, v1, Lado;->a:Lafy;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 363
    iget-object v0, p0, Ladm;->c:Ladf;

    invoke-static {v0}, Ladf;->e(Ladf;)V

    .line 364
    return-void
.end method
