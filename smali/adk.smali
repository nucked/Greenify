.class Ladk;
.super Ladq;
.source "SourceFile"


# instance fields
.field final synthetic a:Lafy;

.field final synthetic b:Lqj;

.field final synthetic c:Ladf;


# direct methods
.method constructor <init>(Ladf;Lafy;Lqj;)V
    .locals 1

    .prologue
    .line 227
    iput-object p1, p0, Ladk;->c:Ladf;

    iput-object p2, p0, Ladk;->a:Lafy;

    iput-object p3, p0, Ladk;->b:Lqj;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ladq;-><init>(Ladg;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Ladk;->c:Ladf;

    iget-object v1, p0, Ladk;->a:Lafy;

    invoke-virtual {v0, v1}, Ladf;->m(Lafy;)V

    .line 231
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Ladk;->b:Lqj;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lqj;->a(Lra;)Lqj;

    .line 240
    iget-object v0, p0, Ladk;->c:Ladf;

    iget-object v1, p0, Ladk;->a:Lafy;

    invoke-virtual {v0, v1}, Ladf;->j(Lafy;)V

    .line 241
    iget-object v0, p0, Ladk;->c:Ladf;

    invoke-static {v0}, Ladf;->f(Ladf;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Ladk;->a:Lafy;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 242
    iget-object v0, p0, Ladk;->c:Ladf;

    invoke-static {v0}, Ladf;->e(Ladf;)V

    .line 243
    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 234
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Lou;->c(Landroid/view/View;F)V

    .line 235
    return-void
.end method
