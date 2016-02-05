.class Lbj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbi;

.field private final b:Landroid/support/design/widget/CoordinatorLayout;

.field private final c:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lbi;Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;)V"
        }
    .end annotation

    .prologue
    .line 282
    iput-object p1, p0, Lbj;->a:Lbi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    iput-object p2, p0, Lbj;->b:Landroid/support/design/widget/CoordinatorLayout;

    .line 284
    iput-object p3, p0, Lbj;->c:Landroid/view/View;

    .line 285
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 289
    iget-object v0, p0, Lbj;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbj;->a:Lbi;

    invoke-static {v0}, Lbi;->a(Lbi;)Luu;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbj;->a:Lbi;

    invoke-static {v0}, Lbi;->a(Lbi;)Luu;

    move-result-object v0

    invoke-virtual {v0}, Luu;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lbj;->a:Lbi;

    iget-object v1, p0, Lbj;->b:Landroid/support/design/widget/CoordinatorLayout;

    iget-object v2, p0, Lbj;->c:Landroid/view/View;

    iget-object v3, p0, Lbj;->a:Lbi;

    invoke-static {v3}, Lbi;->a(Lbi;)Luu;

    move-result-object v3

    invoke-virtual {v3}, Luu;->c()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lbi;->b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)I

    .line 293
    iget-object v0, p0, Lbj;->c:Landroid/view/View;

    invoke-static {v0, p0}, Lou;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 295
    :cond_0
    return-void
.end method
