.class public Lvi;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/support/v4/widget/SwipeRefreshLayout;


# direct methods
.method public constructor <init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V
    .locals 0

    .prologue
    .line 1106
    iput-object p1, p0, Lvi;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2

    .prologue
    .line 1109
    iget-object v0, p0, Lvi;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-static {v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->j(Landroid/support/v4/widget/SwipeRefreshLayout;)F

    move-result v0

    iget-object v1, p0, Lvi;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-static {v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->j(Landroid/support/v4/widget/SwipeRefreshLayout;)F

    move-result v1

    neg-float v1, v1

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    .line 1110
    iget-object v1, p0, Lvi;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-static {v1, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(Landroid/support/v4/widget/SwipeRefreshLayout;F)V

    .line 1111
    iget-object v0, p0, Lvi;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-static {v0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->b(Landroid/support/v4/widget/SwipeRefreshLayout;F)V

    .line 1112
    return-void
.end method
