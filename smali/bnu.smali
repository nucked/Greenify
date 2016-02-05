.class final enum Lbnu;
.super Lbnt;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lbnt;-><init>(Ljava/lang/String;ILbnq;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 86
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lbnu;->a(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/Map$Entry;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<**>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 90
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
