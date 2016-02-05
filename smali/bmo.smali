.class final Lbmo;
.super Lbmn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbmn",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Iterable;


# direct methods
.method constructor <init>(Ljava/lang/Iterable;Ljava/lang/Iterable;)V
    .locals 0

    .prologue
    .line 93
    iput-object p2, p0, Lbmo;->a:Ljava/lang/Iterable;

    invoke-direct {p0, p1}, Lbmn;-><init>(Ljava/lang/Iterable;)V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lbmo;->a:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
