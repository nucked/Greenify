.class final Lbns;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbkl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbkl",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV1;>;",
        "Ljava/util/Map$Entry",
        "<TK;TV2;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbnx;


# direct methods
.method constructor <init>(Lbnx;)V
    .locals 0

    .prologue
    .line 1868
    iput-object p1, p0, Lbns;->a:Lbnx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1868
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lbns;->a(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV1;>;)",
            "Ljava/util/Map$Entry",
            "<TK;TV2;>;"
        }
    .end annotation

    .prologue
    .line 1871
    iget-object v0, p0, Lbns;->a:Lbnx;

    invoke-static {v0, p1}, Lbnp;->a(Lbnx;Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
