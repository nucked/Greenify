.class Lbch;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbcc;

.field final synthetic b:Lbcg;


# direct methods
.method constructor <init>(Lbcg;Lbcc;)V
    .locals 0

    iput-object p1, p0, Lbch;->b:Lbcg;

    iput-object p2, p0, Lbch;->a:Lbcc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lbch;->a:Lbcc;

    invoke-virtual {v0}, Lbcc;->h()Lbcf;

    move-result-object v0

    iget-object v1, p0, Lbch;->a:Lbcc;

    invoke-virtual {v0, v1}, Lbcf;->a(Lbcc;)V

    iget-object v0, p0, Lbch;->b:Lbcg;

    invoke-static {v0}, Lbcg;->a(Lbcg;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbcm;

    iget-object v2, p0, Lbch;->a:Lbcc;

    invoke-interface {v0, v2}, Lbcm;->a(Lbcc;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lbch;->b:Lbcg;

    iget-object v1, p0, Lbch;->a:Lbcc;

    invoke-static {v0, v1}, Lbcg;->a(Lbcg;Lbcc;)V

    return-void
.end method
