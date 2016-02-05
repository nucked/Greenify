.class final Lbsv;
.super Lbqz;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lbqz",
        "<",
        "Ljava/util/Collection",
        "<TE;>;>;"
    }
.end annotation


# instance fields
.field private final a:Lbqz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbqz",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final b:Lbsk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbsk",
            "<+",
            "Ljava/util/Collection",
            "<TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lbpy;Ljava/lang/reflect/Type;Lbqz;Lbsk;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbpy;",
            "Ljava/lang/reflect/Type;",
            "Lbqz",
            "<TE;>;",
            "Lbsk",
            "<+",
            "Ljava/util/Collection",
            "<TE;>;>;)V"
        }
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0}, Lbqz;-><init>()V

    .line 67
    new-instance v0, Lbtq;

    invoke-direct {v0, p1, p3, p2}, Lbtq;-><init>(Lbpy;Lbqz;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lbsv;->a:Lbqz;

    .line 69
    iput-object p4, p0, Lbsv;->b:Lbsk;

    .line 70
    return-void
.end method


# virtual methods
.method public a(Lbvb;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbvb;",
            ")",
            "Ljava/util/Collection",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 73
    invoke-virtual {p1}, Lbvb;->f()Lbvd;

    move-result-object v0

    sget-object v1, Lbvd;->i:Lbvd;

    if-ne v0, v1, :cond_0

    .line 74
    invoke-virtual {p1}, Lbvb;->j()V

    .line 75
    const/4 v0, 0x0

    .line 85
    :goto_0
    return-object v0

    .line 78
    :cond_0
    iget-object v0, p0, Lbsv;->b:Lbsk;

    invoke-interface {v0}, Lbsk;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 79
    invoke-virtual {p1}, Lbvb;->a()V

    .line 80
    :goto_1
    invoke-virtual {p1}, Lbvb;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 81
    iget-object v1, p0, Lbsv;->a:Lbqz;

    invoke-virtual {v1, p1}, Lbqz;->b(Lbvb;)Ljava/lang/Object;

    move-result-object v1

    .line 82
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 84
    :cond_1
    invoke-virtual {p1}, Lbvb;->b()V

    goto :goto_0
.end method

.method public bridge synthetic a(Lbve;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 60
    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2}, Lbsv;->a(Lbve;Ljava/util/Collection;)V

    return-void
.end method

.method public a(Lbve;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbve;",
            "Ljava/util/Collection",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 89
    if-nez p2, :cond_0

    .line 90
    invoke-virtual {p1}, Lbve;->f()Lbve;

    .line 99
    :goto_0
    return-void

    .line 94
    :cond_0
    invoke-virtual {p1}, Lbve;->b()Lbve;

    .line 95
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 96
    iget-object v2, p0, Lbsv;->a:Lbqz;

    invoke-virtual {v2, p1, v1}, Lbqz;->a(Lbve;Ljava/lang/Object;)V

    goto :goto_1

    .line 98
    :cond_1
    invoke-virtual {p1}, Lbve;->c()Lbve;

    goto :goto_0
.end method

.method public synthetic b(Lbvb;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lbsv;->a(Lbvb;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
