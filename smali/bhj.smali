.class Lbhj;
.super Ljava/lang/Object;

# interfaces
.implements Lbjg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbjg",
        "<",
        "Lbbc;",
        "Lbgf",
        "<",
        "Laxh;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbhi;


# direct methods
.method constructor <init>(Lbhi;)V
    .locals 0

    iput-object p1, p0, Lbhj;->a:Lbhi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbbc;Lbgf;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbbc;",
            "Lbgf",
            "<",
            "Laxh;",
            ">;)I"
        }
    .end annotation

    invoke-virtual {p2}, Lbgf;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxh;

    invoke-virtual {v0}, Laxh;->f()I

    move-result v0

    return v0
.end method

.method public synthetic a(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lbbc;

    check-cast p2, Lbgf;

    invoke-virtual {p0, p1, p2}, Lbhj;->a(Lbbc;Lbgf;)I

    move-result v0

    return v0
.end method
