.class public Laew;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lahk;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 411
    iput-object p1, p0, Laew;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lafy;)V
    .locals 3

    .prologue
    .line 441
    iget-object v0, p0, Laew;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/support/v7/widget/RecyclerView;)Lafj;

    move-result-object v0

    iget-object v1, p1, Lafy;->a:Landroid/view/View;

    iget-object v2, p0, Laew;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->a:Lafp;

    invoke-virtual {v0, v1, v2}, Lafj;->a(Landroid/view/View;Lafp;)V

    .line 442
    return-void
.end method

.method public a(Lafy;Lafg;Lafg;)V
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Laew;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->a:Lafp;

    invoke-virtual {v0, p1}, Lafp;->d(Lafy;)V

    .line 416
    iget-object v0, p0, Laew;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView;Lafy;Lafg;Lafg;)V

    .line 417
    return-void
.end method

.method public b(Lafy;Lafg;Lafg;)V
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Laew;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/support/v7/widget/RecyclerView;Lafy;Lafg;Lafg;)V

    .line 422
    return-void
.end method

.method public c(Lafy;Lafg;Lafg;)V
    .locals 1

    .prologue
    .line 427
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lafy;->a(Z)V

    .line 428
    iget-object v0, p0, Laew;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->d(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 432
    iget-object v0, p0, Laew;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->e:Lafd;

    invoke-virtual {v0, p1, p1, p2, p3}, Lafd;->a(Lafy;Lafy;Lafg;Lafg;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Laew;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->e(Landroid/support/v7/widget/RecyclerView;)V

    .line 438
    :cond_0
    :goto_0
    return-void

    .line 435
    :cond_1
    iget-object v0, p0, Laew;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->e:Lafd;

    invoke-virtual {v0, p1, p2, p3}, Lafd;->c(Lafy;Lafg;Lafg;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Laew;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->e(Landroid/support/v7/widget/RecyclerView;)V

    goto :goto_0
.end method
