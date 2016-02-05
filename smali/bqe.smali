.class Lbqe;
.super Lbqz;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lbqz",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private a:Lbqz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbqz",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 882
    invoke-direct {p0}, Lbqz;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbqz;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbqz",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 886
    iget-object v0, p0, Lbqe;->a:Lbqz;

    if-eqz v0, :cond_0

    .line 887
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 889
    :cond_0
    iput-object p1, p0, Lbqe;->a:Lbqz;

    .line 890
    return-void
.end method

.method public a(Lbve;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbve;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 900
    iget-object v0, p0, Lbqe;->a:Lbqz;

    if-nez v0, :cond_0

    .line 901
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 903
    :cond_0
    iget-object v0, p0, Lbqe;->a:Lbqz;

    invoke-virtual {v0, p1, p2}, Lbqz;->a(Lbve;Ljava/lang/Object;)V

    .line 904
    return-void
.end method

.method public b(Lbvb;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbvb;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 893
    iget-object v0, p0, Lbqe;->a:Lbqz;

    if-nez v0, :cond_0

    .line 894
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 896
    :cond_0
    iget-object v0, p0, Lbqe;->a:Lbqz;

    invoke-virtual {v0, p1}, Lbqz;->b(Lbvb;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
