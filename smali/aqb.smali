.class Laqb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lapz;

.field final synthetic b:Laqa;


# direct methods
.method constructor <init>(Laqa;Lapz;)V
    .locals 0

    iput-object p1, p0, Laqb;->b:Laqa;

    iput-object p2, p0, Laqb;->a:Lapz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Laqb;->b:Laqa;

    invoke-static {v0}, Laqa;->a(Laqa;)Lel;

    move-result-object v0

    invoke-virtual {v0}, Lel;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Laqb;->b:Laqa;

    invoke-static {v0}, Laqa;->a(Laqa;)Lel;

    move-result-object v0

    invoke-virtual {v0}, Lel;->f()Les;

    move-result-object v0

    invoke-virtual {v0}, Les;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Laqb;->b:Laqa;

    iget-object v1, p0, Laqb;->b:Laqa;

    invoke-static {v1}, Laqa;->a(Laqa;)Lel;

    move-result-object v1

    invoke-static {v1}, Laso;->b(Lel;)Laso;

    move-result-object v1

    iget-object v2, p0, Laqb;->a:Lapz;

    invoke-static {v0, v1, v2}, Laqa;->a(Laqa;Laso;Lapz;)V

    goto :goto_0
.end method
