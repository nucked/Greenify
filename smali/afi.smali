.class public abstract Lafi;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7881
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7901
    return-void
.end method

.method public a(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Lafv;)V
    .locals 0

    .prologue
    .line 7892
    invoke-virtual {p0, p1, p2}, Lafi;->a(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V

    .line 7893
    return-void
.end method

.method public a(Landroid/graphics/Rect;ILandroid/support/v7/widget/RecyclerView;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 7931
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 7932
    return-void
.end method

.method public a(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Lafv;)V
    .locals 1

    .prologue
    .line 7955
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lafk;

    invoke-virtual {v0}, Lafk;->c()I

    move-result v0

    invoke-virtual {p0, p1, v0, p3}, Lafi;->a(Landroid/graphics/Rect;ILandroid/support/v7/widget/RecyclerView;)V

    .line 7957
    return-void
.end method

.method public b(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7922
    return-void
.end method

.method public b(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Lafv;)V
    .locals 0

    .prologue
    .line 7913
    invoke-virtual {p0, p1, p2}, Lafi;->b(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V

    .line 7914
    return-void
.end method
