.class Lbhm;
.super Ljava/lang/Object;

# interfaces
.implements Lbhn;


# instance fields
.field final synthetic a:Lbhi;


# direct methods
.method constructor <init>(Lbhi;)V
    .locals 0

    iput-object p1, p0, Lbhm;->a:Lbhi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbbg;Ljava/util/Set;Ljava/util/Set;Lbgx;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbbg;",
            "Ljava/util/Set",
            "<",
            "Lbbc;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lbbc;",
            ">;",
            "Lbgx;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lbbg;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p1}, Lbbg;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p4}, Lbgx;->e()Lbgv;

    move-result-object v0

    invoke-virtual {p1}, Lbbg;->d()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lbbg;->i()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lbgv;->a(Ljava/util/List;Ljava/util/List;)V

    invoke-interface {p4}, Lbgx;->f()Lbgv;

    move-result-object v0

    invoke-virtual {p1}, Lbbg;->e()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lbbg;->j()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lbgv;->a(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
