.class public final Lam;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# instance fields
.field final synthetic a:Landroid/support/design/widget/CoordinatorLayout;


# direct methods
.method public constructor <init>(Landroid/support/design/widget/CoordinatorLayout;)V
    .locals 0

    .prologue
    .line 2530
    iput-object p1, p0, Lam;->a:Landroid/support/design/widget/CoordinatorLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 2533
    iget-object v0, p0, Lam;->a:Landroid/support/design/widget/CoordinatorLayout;

    invoke-static {v0}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/support/design/widget/CoordinatorLayout;)Landroid/view/ViewGroup$OnHierarchyChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2534
    iget-object v0, p0, Lam;->a:Landroid/support/design/widget/CoordinatorLayout;

    invoke-static {v0}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/support/design/widget/CoordinatorLayout;)Landroid/view/ViewGroup$OnHierarchyChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    .line 2536
    :cond_0
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 2540
    iget-object v0, p0, Lam;->a:Landroid/support/design/widget/CoordinatorLayout;

    invoke-virtual {v0, p2}, Landroid/support/design/widget/CoordinatorLayout;->b(Landroid/view/View;)V

    .line 2542
    iget-object v0, p0, Lam;->a:Landroid/support/design/widget/CoordinatorLayout;

    invoke-static {v0}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/support/design/widget/CoordinatorLayout;)Landroid/view/ViewGroup$OnHierarchyChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2543
    iget-object v0, p0, Lam;->a:Landroid/support/design/widget/CoordinatorLayout;

    invoke-static {v0}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/support/design/widget/CoordinatorLayout;)Landroid/view/ViewGroup$OnHierarchyChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    .line 2545
    :cond_0
    return-void
.end method
