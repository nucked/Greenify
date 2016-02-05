.class Lbkz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbku;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lbku",
        "<TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field final a:Lbku;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbku",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lbku;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbku",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    invoke-static {p1}, Lbkt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbku;

    iput-object v0, p0, Lbkz;->a:Lbku;

    .line 325
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 328
    iget-object v0, p0, Lbkz;->a:Lbku;

    invoke-interface {v0, p1}, Lbku;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 334
    instance-of v0, p1, Lbkz;

    if-eqz v0, :cond_0

    .line 335
    check-cast p1, Lbkz;

    .line 336
    iget-object v0, p0, Lbkz;->a:Lbku;

    iget-object v1, p1, Lbkz;->a:Lbku;

    invoke-interface {v0, v1}, Lbku;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 338
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lbkz;->a:Lbku;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 341
    iget-object v0, p0, Lbkz;->a:Lbku;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x10

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Predicates.not("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
