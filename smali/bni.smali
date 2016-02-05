.class final Lbni;
.super Lblo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lblo",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Iterator;

.field final synthetic b:Lbku;


# direct methods
.method constructor <init>(Ljava/util/Iterator;Lbku;)V
    .locals 0

    .prologue
    .line 648
    iput-object p1, p0, Lbni;->a:Ljava/util/Iterator;

    iput-object p2, p0, Lbni;->b:Lbku;

    invoke-direct {p0}, Lblo;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 650
    :cond_0
    iget-object v0, p0, Lbni;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 651
    iget-object v0, p0, Lbni;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 652
    iget-object v1, p0, Lbni;->b:Lbku;

    invoke-interface {v1, v0}, Lbku;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 656
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lbni;->b()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
