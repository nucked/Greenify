.class Lbnm;
.super Lbow;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbow",
        "<TF;TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbnl;


# direct methods
.method constructor <init>(Lbnl;Ljava/util/ListIterator;)V
    .locals 0

    .prologue
    .line 614
    iput-object p1, p0, Lbnm;->a:Lbnl;

    invoke-direct {p0, p2}, Lbow;-><init>(Ljava/util/ListIterator;)V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)TT;"
        }
    .end annotation

    .prologue
    .line 617
    iget-object v0, p0, Lbnm;->a:Lbnl;

    iget-object v0, v0, Lbnl;->b:Lbkl;

    invoke-interface {v0, p1}, Lbkl;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
