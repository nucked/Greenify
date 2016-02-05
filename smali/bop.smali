.class final Lbop;
.super Lbok;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lbok",
        "<TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field final a:Lbok;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbok",
            "<-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lbok;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbok",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0}, Lbok;-><init>()V

    .line 34
    invoke-static {p1}, Lbkt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbok;

    iput-object v0, p0, Lbop;->a:Lbok;

    .line 35
    return-void
.end method


# virtual methods
.method public a()Lbok;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:TT;>()",
            "Lbok",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lbop;->a:Lbok;

    return-object v0
.end method

.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lbop;->a:Lbok;

    invoke-virtual {v0, p2, p1}, Lbok;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 85
    if-ne p1, p0, :cond_0

    .line 86
    const/4 v0, 0x1

    .line 92
    :goto_0
    return v0

    .line 88
    :cond_0
    instance-of v0, p1, Lbop;

    if-eqz v0, :cond_1

    .line 89
    check-cast p1, Lbop;

    .line 90
    iget-object v0, p0, Lbop;->a:Lbok;

    iget-object v1, p1, Lbop;->a:Lbok;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 92
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lbop;->a:Lbok;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 96
    iget-object v0, p0, Lbop;->a:Lbok;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xa

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".reverse()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
