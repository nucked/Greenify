.class public Laat;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/ActionBarOverlayLayout;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/ActionBarOverlayLayout;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Laat;->a:Landroid/support/v7/widget/ActionBarOverlayLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 115
    iget-object v0, p0, Laat;->a:Landroid/support/v7/widget/ActionBarOverlayLayout;

    invoke-static {v0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->a(Landroid/support/v7/widget/ActionBarOverlayLayout;)V

    .line 116
    iget-object v0, p0, Laat;->a:Landroid/support/v7/widget/ActionBarOverlayLayout;

    iget-object v1, p0, Laat;->a:Landroid/support/v7/widget/ActionBarOverlayLayout;

    invoke-static {v1}, Landroid/support/v7/widget/ActionBarOverlayLayout;->c(Landroid/support/v7/widget/ActionBarOverlayLayout;)Landroid/support/v7/widget/ActionBarContainer;

    move-result-object v1

    invoke-static {v1}, Lou;->p(Landroid/view/View;)Lqj;

    move-result-object v1

    iget-object v2, p0, Laat;->a:Landroid/support/v7/widget/ActionBarOverlayLayout;

    invoke-static {v2}, Landroid/support/v7/widget/ActionBarOverlayLayout;->c(Landroid/support/v7/widget/ActionBarOverlayLayout;)Landroid/support/v7/widget/ActionBarContainer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/ActionBarContainer;->getHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lqj;->c(F)Lqj;

    move-result-object v1

    iget-object v2, p0, Laat;->a:Landroid/support/v7/widget/ActionBarOverlayLayout;

    invoke-static {v2}, Landroid/support/v7/widget/ActionBarOverlayLayout;->b(Landroid/support/v7/widget/ActionBarOverlayLayout;)Lra;

    move-result-object v2

    invoke-virtual {v1, v2}, Lqj;->a(Lra;)Lqj;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v7/widget/ActionBarOverlayLayout;->a(Landroid/support/v7/widget/ActionBarOverlayLayout;Lqj;)Lqj;

    .line 119
    return-void
.end method
