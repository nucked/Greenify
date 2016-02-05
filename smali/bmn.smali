.class public abstract Lbmn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p0, p0, Lbmn;->a:Ljava/lang/Iterable;

    .line 81
    return-void
.end method

.method constructor <init>(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-static {p1}, Lbkt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    iput-object v0, p0, Lbmn;->a:Ljava/lang/Iterable;

    .line 85
    return-void
.end method

.method public static a(Ljava/lang/Iterable;)Lbmn;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TE;>;)",
            "Lbmn",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 92
    instance-of v0, p0, Lbmn;

    if-eqz v0, :cond_0

    check-cast p0, Lbmn;

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lbmo;

    invoke-direct {v0, p0, p0}, Lbmo;-><init>(Ljava/lang/Iterable;Ljava/lang/Iterable;)V

    move-object p0, v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lbkl;)Lbmn;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lbkl",
            "<-TE;TT;>;)",
            "Lbmn",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 248
    iget-object v0, p0, Lbmn;->a:Ljava/lang/Iterable;

    invoke-static {v0, p1}, Lbmx;->a(Ljava/lang/Iterable;Lbkl;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lbmn;->a(Ljava/lang/Iterable;)Lbmn;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lbku;)Lbmn;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbku",
            "<-TE;>;)",
            "Lbmn",
            "<TE;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .prologue
    .line 199
    iget-object v0, p0, Lbmn;->a:Ljava/lang/Iterable;

    invoke-static {v0, p1}, Lbmx;->b(Ljava/lang/Iterable;Lbku;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lbmn;->a(Ljava/lang/Iterable;)Lbmn;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/util/Collection",
            "<-TE;>;>(TC;)TC;"
        }
    .end annotation

    .prologue
    .line 486
    invoke-static {p1}, Lbkt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    iget-object v0, p0, Lbmn;->a:Ljava/lang/Iterable;

    instance-of v0, v0, Ljava/util/Collection;

    if-eqz v0, :cond_1

    .line 488
    iget-object v0, p0, Lbmn;->a:Ljava/lang/Iterable;

    invoke-static {v0}, Lbml;->a(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 494
    :cond_0
    return-object p1

    .line 490
    :cond_1
    iget-object v0, p0, Lbmn;->a:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 491
    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final a(Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TE;>;)[TE;"
        }
    .end annotation

    .prologue
    .line 474
    iget-object v0, p0, Lbmn;->a:Ljava/lang/Iterable;

    invoke-static {v0, p1}, Lbmx;->a(Ljava/lang/Iterable;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lbku;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbku",
            "<-TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 217
    iget-object v0, p0, Lbmn;->a:Ljava/lang/Iterable;

    invoke-static {v0, p1}, Lbmx;->c(Ljava/lang/Iterable;Lbku;)Z

    move-result v0

    return v0
.end method

.method public final c(Lbku;)Lbkr;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbku",
            "<-TE;>;)",
            "Lbkr",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 236
    iget-object v0, p0, Lbmn;->a:Ljava/lang/Iterable;

    invoke-static {v0, p1}, Lbmx;->d(Ljava/lang/Iterable;Lbku;)Lbkr;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lbmn;->a:Ljava/lang/Iterable;

    invoke-static {v0}, Lbmx;->a(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
