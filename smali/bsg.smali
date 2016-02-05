.class final Lbsg;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbsc;


# direct methods
.method constructor <init>(Lbsc;)V
    .locals 0

    .prologue
    .line 592
    iput-object p1, p0, Lbsg;->a:Lbsc;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Lbsg;->a:Lbsc;

    invoke-virtual {v0}, Lbsc;->clear()V

    .line 615
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Lbsg;->a:Lbsc;

    invoke-virtual {v0, p1}, Lbsc;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 598
    new-instance v0, Lbsh;

    invoke-direct {v0, p0}, Lbsh;-><init>(Lbsg;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 610
    iget-object v0, p0, Lbsg;->a:Lbsc;

    invoke-virtual {v0, p1}, Lbsc;->b(Ljava/lang/Object;)Lbsj;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Lbsg;->a:Lbsc;

    iget v0, v0, Lbsc;->c:I

    return v0
.end method
