.class final Lbna;
.super Lbmn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbmn",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Iterable;

.field final synthetic b:Lbku;


# direct methods
.method constructor <init>(Ljava/lang/Iterable;Lbku;)V
    .locals 0

    .prologue
    .line 586
    iput-object p1, p0, Lbna;->a:Ljava/lang/Iterable;

    iput-object p2, p0, Lbna;->b:Lbku;

    invoke-direct {p0}, Lbmn;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 589
    iget-object v0, p0, Lbna;->a:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lbna;->b:Lbku;

    invoke-static {v0, v1}, Lbnc;->b(Ljava/util/Iterator;Lbku;)Lboy;

    move-result-object v0

    return-object v0
.end method
