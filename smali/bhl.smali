.class Lbhl;
.super Ljava/lang/Object;

# interfaces
.implements Lbhn;


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Ljava/util/Map;

.field final synthetic d:Ljava/util/Map;

.field final synthetic e:Lbhi;


# direct methods
.method constructor <init>(Lbhi;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lbhl;->e:Lbhi;

    iput-object p2, p0, Lbhl;->a:Ljava/util/Map;

    iput-object p3, p0, Lbhl;->b:Ljava/util/Map;

    iput-object p4, p0, Lbhl;->c:Ljava/util/Map;

    iput-object p5, p0, Lbhl;->d:Ljava/util/Map;

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

    iget-object v0, p0, Lbhl;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lbhl;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {p2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p4}, Lbgx;->c()Lbgv;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lbgv;->a(Ljava/util/List;Ljava/util/List;)V

    :cond_0
    iget-object v0, p0, Lbhl;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lbhl;->d:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {p3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p4}, Lbgx;->d()Lbgv;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lbgv;->a(Ljava/util/List;Ljava/util/List;)V

    :cond_1
    return-void
.end method
