.class final Lbnb;
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

.field final synthetic b:Lbkl;


# direct methods
.method constructor <init>(Ljava/lang/Iterable;Lbkl;)V
    .locals 0

    .prologue
    .line 710
    iput-object p1, p0, Lbnb;->a:Ljava/lang/Iterable;

    iput-object p2, p0, Lbnb;->b:Lbkl;

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
    .line 713
    iget-object v0, p0, Lbnb;->a:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lbnb;->b:Lbkl;

    invoke-static {v0, v1}, Lbnc;->a(Ljava/util/Iterator;Lbkl;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
