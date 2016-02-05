.class public Lcn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/design/widget/SwipeDismissBehavior;

.field private final b:Landroid/view/View;

.field private final c:Z


# direct methods
.method constructor <init>(Landroid/support/design/widget/SwipeDismissBehavior;Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 352
    iput-object p1, p0, Lcn;->a:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    iput-object p2, p0, Lcn;->b:Landroid/view/View;

    .line 354
    iput-boolean p3, p0, Lcn;->c:Z

    .line 355
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 359
    iget-object v0, p0, Lcn;->a:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-static {v0}, Landroid/support/design/widget/SwipeDismissBehavior;->b(Landroid/support/design/widget/SwipeDismissBehavior;)Lvt;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn;->a:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-static {v0}, Landroid/support/design/widget/SwipeDismissBehavior;->b(Landroid/support/design/widget/SwipeDismissBehavior;)Lvt;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lvt;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 360
    iget-object v0, p0, Lcn;->b:Landroid/view/View;

    invoke-static {v0, p0}, Lou;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 362
    :cond_1
    iget-boolean v0, p0, Lcn;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn;->a:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-static {v0}, Landroid/support/design/widget/SwipeDismissBehavior;->a(Landroid/support/design/widget/SwipeDismissBehavior;)Lcm;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcn;->a:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-static {v0}, Landroid/support/design/widget/SwipeDismissBehavior;->a(Landroid/support/design/widget/SwipeDismissBehavior;)Lcm;

    move-result-object v0

    iget-object v1, p0, Lcn;->b:Landroid/view/View;

    invoke-interface {v0, v1}, Lcm;->a(Landroid/view/View;)V

    goto :goto_0
.end method
