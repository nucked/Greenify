.class final Lbnr;
.super Lbmg;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbmg",
        "<TK;TV2;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map$Entry;

.field final synthetic b:Lbnx;


# direct methods
.method constructor <init>(Ljava/util/Map$Entry;Lbnx;)V
    .locals 0

    .prologue
    .line 1849
    iput-object p1, p0, Lbnr;->a:Ljava/util/Map$Entry;

    iput-object p2, p0, Lbnr;->b:Lbnx;

    invoke-direct {p0}, Lbmg;-><init>()V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 1852
    iget-object v0, p0, Lbnr;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV2;"
        }
    .end annotation

    .prologue
    .line 1857
    iget-object v0, p0, Lbnr;->b:Lbnx;

    iget-object v1, p0, Lbnr;->a:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lbnr;->a:Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lbnx;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
