.class Lbsf;
.super Lbsi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbsc",
        "<TK;TV;>.bsi<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbse;


# direct methods
.method constructor <init>(Lbse;)V
    .locals 2

    .prologue
    .line 563
    iput-object p1, p0, Lbsf;->a:Lbse;

    iget-object v0, p1, Lbse;->a:Lbsc;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lbsi;-><init>(Lbsc;Lbsd;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 565
    invoke-virtual {p0}, Lbsf;->b()Lbsj;

    move-result-object v0

    return-object v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 563
    invoke-virtual {p0}, Lbsf;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
