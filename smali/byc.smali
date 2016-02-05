.class Lbyc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field final synthetic a:Lbxt;


# direct methods
.method constructor <init>(Lbxt;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lbyc;->a:Lbxt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 217
    iget-object v0, p0, Lbyc;->a:Lbxt;

    invoke-virtual {v0}, Lbxt;->o()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 222
    :goto_0
    return v5

    .line 218
    :cond_0
    iget-object v0, p0, Lbyc;->a:Lbxt;

    invoke-virtual {v0}, Lbxt;->M()Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 219
    iget-object v0, p0, Lbyc;->a:Lbxt;

    invoke-static {v0}, Lbxt;->d(Lbxt;)Landroid/support/design/widget/FloatingActionButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->getX()F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lbyc;->a:Lbxt;

    invoke-static {v1}, Lbxt;->d(Lbxt;)Landroid/support/design/widget/FloatingActionButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/design/widget/FloatingActionButton;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 220
    mul-int v2, v0, v0

    mul-int/2addr v1, v1

    add-int/2addr v1, v2

    int-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v1, v2

    .line 221
    iget-object v2, p0, Lbyc;->a:Lbxt;

    invoke-virtual {v2}, Lbxt;->M()Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v0, v3, v4, v1}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0
.end method
