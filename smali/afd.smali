.class public abstract Lafd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Laff;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lafe;",
            ">;"
        }
    .end annotation
.end field

.field private c:J

.field private d:J

.field private e:J

.field private f:J


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0xfa

    const-wide/16 v2, 0x78

    .line 9575
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9631
    const/4 v0, 0x0

    iput-object v0, p0, Lafd;->a:Laff;

    .line 9632
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lafd;->b:Ljava/util/ArrayList;

    .line 9635
    iput-wide v2, p0, Lafd;->c:J

    .line 9636
    iput-wide v2, p0, Lafd;->d:J

    .line 9637
    iput-wide v4, p0, Lafd;->e:J

    .line 9638
    iput-wide v4, p0, Lafd;->f:J

    .line 10180
    return-void
.end method

.method public static d(Lafy;)I
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 9936
    invoke-static {p0}, Lafy;->f(Lafy;)I

    move-result v0

    and-int/lit8 v0, v0, 0xe

    .line 9937
    invoke-virtual {p0}, Lafy;->n()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9938
    const/4 v0, 0x4

    .line 9947
    :cond_0
    :goto_0
    return v0

    .line 9940
    :cond_1
    and-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_0

    .line 9941
    invoke-virtual {p0}, Lafy;->f()I

    move-result v1

    .line 9942
    invoke-virtual {p0}, Lafy;->e()I

    move-result v2

    .line 9943
    if-eq v1, v3, :cond_0

    if-eq v2, v3, :cond_0

    if-eq v1, v2, :cond_0

    .line 9944
    or-int/lit16 v0, v0, 0x800

    goto :goto_0
.end method


# virtual methods
.method public a(Lafv;Lafy;)Lafg;
    .locals 1

    .prologue
    .line 9789
    invoke-virtual {p0}, Lafd;->i()Lafg;

    move-result-object v0

    invoke-virtual {v0, p2}, Lafg;->a(Lafy;)Lafg;

    move-result-object v0

    return-object v0
.end method

.method public a(Lafv;Lafy;ILjava/util/List;)Lafg;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lafv;",
            "Lafy;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lafg;"
        }
    .end annotation

    .prologue
    .line 9760
    invoke-virtual {p0}, Lafd;->i()Lafg;

    move-result-object v0

    invoke-virtual {v0, p2}, Lafg;->a(Lafy;)Lafg;

    move-result-object v0

    return-object v0
.end method

.method public abstract a()V
.end method

.method public a(Laff;)V
    .locals 0

    .prologue
    .line 9721
    iput-object p1, p0, Lafd;->a:Laff;

    .line 9722
    return-void
.end method

.method public abstract a(Lafy;Lafg;Lafg;)Z
.end method

.method public abstract a(Lafy;Lafy;Lafg;Lafg;)Z
.end method

.method public abstract b()Z
.end method

.method public abstract b(Lafy;Lafg;Lafg;)Z
.end method

.method public abstract c()V
.end method

.method public abstract c(Lafy;)V
.end method

.method public abstract c(Lafy;Lafg;Lafg;)Z
.end method

.method public d()J
    .locals 2

    .prologue
    .line 9646
    iget-wide v0, p0, Lafd;->e:J

    return-wide v0
.end method

.method public e()J
    .locals 2

    .prologue
    .line 9664
    iget-wide v0, p0, Lafd;->c:J

    return-wide v0
.end method

.method public final e(Lafy;)V
    .locals 1

    .prologue
    .line 10020
    invoke-virtual {p0, p1}, Lafd;->f(Lafy;)V

    .line 10021
    iget-object v0, p0, Lafd;->a:Laff;

    if-eqz v0, :cond_0

    .line 10022
    iget-object v0, p0, Lafd;->a:Laff;

    invoke-interface {v0, p1}, Laff;->a(Lafy;)V

    .line 10024
    :cond_0
    return-void
.end method

.method public f()J
    .locals 2

    .prologue
    .line 9682
    iget-wide v0, p0, Lafd;->d:J

    return-wide v0
.end method

.method public f(Lafy;)V
    .locals 0

    .prologue
    .line 10035
    return-void
.end method

.method public g()J
    .locals 2

    .prologue
    .line 9700
    iget-wide v0, p0, Lafd;->f:J

    return-wide v0
.end method

.method public g(Lafy;)Z
    .locals 1

    .prologue
    .line 10120
    const/4 v0, 0x1

    return v0
.end method

.method public final h()V
    .locals 3

    .prologue
    .line 10128
    iget-object v0, p0, Lafd;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 10129
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 10130
    iget-object v0, p0, Lafd;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lafe;

    invoke-interface {v0}, Lafe;->a()V

    .line 10129
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 10132
    :cond_0
    iget-object v0, p0, Lafd;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 10133
    return-void
.end method

.method public i()Lafg;
    .locals 1

    .prologue
    .line 10145
    new-instance v0, Lafg;

    invoke-direct {v0}, Lafg;-><init>()V

    return-object v0
.end method
