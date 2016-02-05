.class Lalk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lalj;


# direct methods
.method constructor <init>(Lalj;)V
    .locals 0

    iput-object p1, p0, Lalk;->a:Lalj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lalk;->a:Lalj;

    invoke-static {v0}, Lalj;->a(Lalj;)Lakh;

    move-result-object v0

    invoke-virtual {v0}, Lakh;->h()Lbcg;

    move-result-object v0

    invoke-virtual {v0, p0}, Lbcg;->a(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lalk;->a:Lalj;

    invoke-virtual {v0}, Lalj;->c()Z

    move-result v0

    iget-object v1, p0, Lalk;->a:Lalj;

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lalj;->a(Lalj;J)J

    if-eqz v0, :cond_0

    iget-object v0, p0, Lalk;->a:Lalj;

    invoke-static {v0}, Lalj;->b(Lalj;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lalk;->a:Lalj;

    invoke-virtual {v0}, Lalj;->a()V

    goto :goto_0
.end method
