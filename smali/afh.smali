.class public Lafh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laff;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 9534
    iput-object p1, p0, Lafh;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/support/v7/widget/RecyclerView;Laet;)V
    .locals 0

    .prologue
    .line 9534
    invoke-direct {p0, p1}, Lafh;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    return-void
.end method


# virtual methods
.method public a(Lafy;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 9538
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lafy;->a(Z)V

    .line 9539
    iget-object v0, p1, Lafy;->g:Lafy;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lafy;->h:Lafy;

    if-nez v0, :cond_0

    .line 9540
    iput-object v1, p1, Lafy;->g:Lafy;

    .line 9544
    :cond_0
    iput-object v1, p1, Lafy;->h:Lafy;

    .line 9545
    invoke-static {p1}, Lafy;->e(Lafy;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 9546
    iget-object v0, p0, Lafh;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p1, Lafy;->a:Landroid/view/View;

    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lafy;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9547
    iget-object v0, p0, Lafh;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p1, Lafy;->a:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 9550
    :cond_1
    return-void
.end method
