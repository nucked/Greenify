.class Ltb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lsy;


# direct methods
.method private constructor <init>(Lsy;)V
    .locals 0

    .prologue
    .line 684
    iput-object p1, p0, Ltb;->a:Lsy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lsy;Lsz;)V
    .locals 0

    .prologue
    .line 684
    invoke-direct {p0, p1}, Ltb;-><init>(Lsy;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 687
    iget-object v0, p0, Ltb;->a:Lsy;

    invoke-static {v0}, Lsy;->a(Lsy;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 715
    :goto_0
    return-void

    .line 691
    :cond_0
    iget-object v0, p0, Ltb;->a:Lsy;

    invoke-static {v0}, Lsy;->b(Lsy;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 692
    iget-object v0, p0, Ltb;->a:Lsy;

    invoke-static {v0, v2}, Lsy;->a(Lsy;Z)Z

    .line 693
    iget-object v0, p0, Ltb;->a:Lsy;

    invoke-static {v0}, Lsy;->c(Lsy;)Lta;

    move-result-object v0

    invoke-virtual {v0}, Lta;->a()V

    .line 696
    :cond_1
    iget-object v0, p0, Ltb;->a:Lsy;

    invoke-static {v0}, Lsy;->c(Lsy;)Lta;

    move-result-object v0

    .line 697
    invoke-virtual {v0}, Lta;->c()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Ltb;->a:Lsy;

    invoke-static {v1}, Lsy;->d(Lsy;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 698
    :cond_2
    iget-object v0, p0, Ltb;->a:Lsy;

    invoke-static {v0, v2}, Lsy;->b(Lsy;Z)Z

    goto :goto_0

    .line 702
    :cond_3
    iget-object v1, p0, Ltb;->a:Lsy;

    invoke-static {v1}, Lsy;->e(Lsy;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 703
    iget-object v1, p0, Ltb;->a:Lsy;

    invoke-static {v1, v2}, Lsy;->c(Lsy;Z)Z

    .line 704
    iget-object v1, p0, Ltb;->a:Lsy;

    invoke-static {v1}, Lsy;->f(Lsy;)V

    .line 707
    :cond_4
    invoke-virtual {v0}, Lta;->d()V

    .line 709
    invoke-virtual {v0}, Lta;->g()I

    move-result v1

    .line 710
    invoke-virtual {v0}, Lta;->h()I

    move-result v0

    .line 711
    iget-object v2, p0, Ltb;->a:Lsy;

    invoke-virtual {v2, v1, v0}, Lsy;->a(II)V

    .line 714
    iget-object v0, p0, Ltb;->a:Lsy;

    invoke-static {v0}, Lsy;->g(Lsy;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p0}, Lou;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0
.end method
