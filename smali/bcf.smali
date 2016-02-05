.class public abstract Lbcf;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lbcf;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final a:Lbcc;

.field private final b:Lbcg;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbcd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lbcg;Lazo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lave;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lbcf;->b:Lbcg;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbcf;->c:Ljava/util/List;

    new-instance v0, Lbcc;

    invoke-direct {v0, p0, p2}, Lbcc;-><init>(Lbcf;Lazo;)V

    invoke-virtual {v0}, Lbcc;->k()V

    iput-object v0, p0, Lbcf;->a:Lbcc;

    return-void
.end method


# virtual methods
.method protected a(Lbcc;)V
    .locals 0

    return-void
.end method

.method protected b(Lbcc;)V
    .locals 2

    iget-object v0, p0, Lbcf;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbcd;

    invoke-interface {v0, p0, p1}, Lbcd;->a(Lbcf;Lbcc;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public l()Lbcc;
    .locals 1

    iget-object v0, p0, Lbcf;->a:Lbcc;

    invoke-virtual {v0}, Lbcc;->a()Lbcc;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbcf;->b(Lbcc;)V

    return-object v0
.end method

.method public m()Lbcc;
    .locals 1

    iget-object v0, p0, Lbcf;->a:Lbcc;

    return-object v0
.end method

.method public n()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lbcn;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lbcf;->a:Lbcc;

    invoke-virtual {v0}, Lbcc;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected o()Lbcg;
    .locals 1

    iget-object v0, p0, Lbcf;->b:Lbcg;

    return-object v0
.end method
