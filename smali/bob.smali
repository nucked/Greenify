.class Lbob;
.super Lbnw;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbnw",
        "<TK;TV2;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lboa;


# direct methods
.method constructor <init>(Lboa;)V
    .locals 0

    .prologue
    .line 1923
    iput-object p1, p0, Lbob;->a:Lboa;

    invoke-direct {p0}, Lbnw;-><init>()V

    return-void
.end method


# virtual methods
.method a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;TV2;>;"
        }
    .end annotation

    .prologue
    .line 1925
    iget-object v0, p0, Lbob;->a:Lboa;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV2;>;>;"
        }
    .end annotation

    .prologue
    .line 1929
    iget-object v0, p0, Lbob;->a:Lboa;

    iget-object v0, v0, Lboa;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lbob;->a:Lboa;

    iget-object v1, v1, Lboa;->b:Lbnx;

    invoke-static {v1}, Lbnp;->a(Lbnx;)Lbkl;

    move-result-object v1

    invoke-static {v0, v1}, Lbnc;->a(Ljava/util/Iterator;Lbkl;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
