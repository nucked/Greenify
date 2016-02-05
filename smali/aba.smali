.class Laba;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Laaw;

.field private b:Labd;


# direct methods
.method public constructor <init>(Laaw;Labd;)V
    .locals 0

    .prologue
    .line 774
    iput-object p1, p0, Laba;->a:Laaw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 775
    iput-object p2, p0, Laba;->b:Labd;

    .line 776
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 779
    iget-object v0, p0, Laba;->a:Laaw;

    invoke-static {v0}, Laaw;->g(Laaw;)Lzp;

    move-result-object v0

    invoke-virtual {v0}, Lzp;->f()V

    .line 780
    iget-object v0, p0, Laba;->a:Laaw;

    invoke-static {v0}, Laaw;->h(Laaw;)Laag;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 781
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Laba;->b:Labd;

    invoke-virtual {v0}, Labd;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 782
    iget-object v0, p0, Laba;->a:Laaw;

    iget-object v1, p0, Laba;->b:Labd;

    invoke-static {v0, v1}, Laaw;->a(Laaw;Labd;)Labd;

    .line 784
    :cond_0
    iget-object v0, p0, Laba;->a:Laaw;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Laaw;->a(Laaw;Laba;)Laba;

    .line 785
    return-void
.end method
