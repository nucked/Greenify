.class Larj;
.super Larn;


# instance fields
.field final synthetic a:Lare;

.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lapt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lare;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lapt;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Larj;->a:Lare;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Larn;-><init>(Lare;Larf;)V

    iput-object p2, p0, Larj;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Larj;->a:Lare;

    invoke-static {v0}, Lare;->d(Lare;)Lasb;

    move-result-object v0

    iget-object v0, v0, Lasb;->g:Larp;

    iget-object v1, p0, Larj;->a:Lare;

    invoke-static {v1}, Lare;->g(Lare;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Larp;->d:Ljava/util/Set;

    iget-object v0, p0, Larj;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lapt;

    iget-object v2, p0, Larj;->a:Lare;

    invoke-static {v2}, Lare;->h(Lare;)Lauo;

    move-result-object v2

    iget-object v3, p0, Larj;->a:Lare;

    invoke-static {v3}, Lare;->d(Lare;)Lasb;

    move-result-object v3

    iget-object v3, v3, Lasb;->g:Larp;

    iget-object v3, v3, Larp;->d:Ljava/util/Set;

    invoke-interface {v0, v2, v3}, Lapt;->a(Lauo;Ljava/util/Set;)V

    goto :goto_0

    :cond_0
    return-void
.end method
