.class final Lbnj;
.super Lbov;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbov",
        "<TF;TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbkl;


# direct methods
.method constructor <init>(Ljava/util/Iterator;Lbkl;)V
    .locals 0

    .prologue
    .line 796
    iput-object p2, p0, Lbnj;->a:Lbkl;

    invoke-direct {p0, p1}, Lbov;-><init>(Ljava/util/Iterator;)V

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
    .line 799
    iget-object v0, p0, Lbnj;->a:Lbkl;

    invoke-interface {v0, p1}, Lbkl;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
