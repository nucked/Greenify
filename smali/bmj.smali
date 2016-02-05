.class final Lbmj;
.super Lbok;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lbok",
        "<TF;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field final a:Lbkl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbkl",
            "<TF;+TT;>;"
        }
    .end annotation
.end field

.field final b:Lbok;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbok",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lbkl;Lbok;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbkl",
            "<TF;+TT;>;",
            "Lbok",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, Lbok;-><init>()V

    .line 41
    invoke-static {p1}, Lbkt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbkl;

    iput-object v0, p0, Lbmj;->a:Lbkl;

    .line 42
    invoke-static {p2}, Lbkt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbok;

    iput-object v0, p0, Lbmj;->b:Lbok;

    .line 43
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;TF;)I"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lbmj;->b:Lbok;

    iget-object v1, p0, Lbmj;->a:Lbkl;

    invoke-interface {v1, p1}, Lbkl;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lbmj;->a:Lbkl;

    invoke-interface {v2, p2}, Lbkl;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbok;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 50
    if-ne p1, p0, :cond_1

    .line 58
    :cond_0
    :goto_0
    return v0

    .line 53
    :cond_1
    instance-of v2, p1, Lbmj;

    if-eqz v2, :cond_3

    .line 54
    check-cast p1, Lbmj;

    .line 55
    iget-object v2, p0, Lbmj;->a:Lbkl;

    iget-object v3, p1, Lbmj;->a:Lbkl;

    invoke-interface {v2, v3}, Lbkl;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lbmj;->b:Lbok;

    iget-object v3, p1, Lbmj;->b:Lbok;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 58
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 62
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lbmj;->a:Lbkl;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lbmj;->b:Lbok;

    aput-object v2, v0, v1

    invoke-static {v0}, Lbkq;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 66
    iget-object v0, p0, Lbmj;->b:Lbok;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbmj;->a:Lbkl;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xd

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".onResultOf("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
