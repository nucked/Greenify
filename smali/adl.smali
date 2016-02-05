.class Ladl;
.super Ladq;
.source "SourceFile"


# instance fields
.field final synthetic a:Lafy;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lqj;

.field final synthetic e:Ladf;


# direct methods
.method constructor <init>(Ladf;Lafy;IILqj;)V
    .locals 1

    .prologue
    .line 285
    iput-object p1, p0, Ladl;->e:Ladf;

    iput-object p2, p0, Ladl;->a:Lafy;

    iput p3, p0, Ladl;->b:I

    iput p4, p0, Ladl;->c:I

    iput-object p5, p0, Ladl;->d:Lqj;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ladq;-><init>(Ladg;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Ladl;->e:Ladf;

    iget-object v1, p0, Ladl;->a:Lafy;

    invoke-virtual {v0, v1}, Ladf;->l(Lafy;)V

    .line 289
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 301
    iget-object v0, p0, Ladl;->d:Lqj;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lqj;->a(Lra;)Lqj;

    .line 302
    iget-object v0, p0, Ladl;->e:Ladf;

    iget-object v1, p0, Ladl;->a:Lafy;

    invoke-virtual {v0, v1}, Ladf;->i(Lafy;)V

    .line 303
    iget-object v0, p0, Ladl;->e:Ladf;

    invoke-static {v0}, Ladf;->g(Ladf;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Ladl;->a:Lafy;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 304
    iget-object v0, p0, Ladl;->e:Ladf;

    invoke-static {v0}, Ladf;->e(Ladf;)V

    .line 305
    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 292
    iget v0, p0, Ladl;->b:I

    if-eqz v0, :cond_0

    .line 293
    invoke-static {p1, v1}, Lou;->a(Landroid/view/View;F)V

    .line 295
    :cond_0
    iget v0, p0, Ladl;->c:I

    if-eqz v0, :cond_1

    .line 296
    invoke-static {p1, v1}, Lou;->b(Landroid/view/View;F)V

    .line 298
    :cond_1
    return-void
.end method
