.class Laej;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic a:Ladz;


# direct methods
.method private constructor <init>(Ladz;)V
    .locals 0

    .prologue
    .line 1816
    iput-object p1, p0, Laej;->a:Ladz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ladz;Laea;)V
    .locals 0

    .prologue
    .line 1816
    invoke-direct {p0, p1}, Laej;-><init>(Ladz;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .prologue
    .line 1820
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2

    .prologue
    .line 1823
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Laej;->a:Ladz;

    invoke-virtual {v0}, Ladz;->l()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Laej;->a:Ladz;

    invoke-static {v0}, Ladz;->b(Ladz;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1825
    iget-object v0, p0, Laej;->a:Ladz;

    invoke-static {v0}, Ladz;->d(Ladz;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Laej;->a:Ladz;

    invoke-static {v1}, Ladz;->c(Ladz;)Lael;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1826
    iget-object v0, p0, Laej;->a:Ladz;

    invoke-static {v0}, Ladz;->c(Ladz;)Lael;

    move-result-object v0

    invoke-virtual {v0}, Lael;->run()V

    .line 1828
    :cond_0
    return-void
.end method
