.class Lazc;
.super Lazf;


# instance fields
.field final synthetic a:Lazb;


# direct methods
.method constructor <init>(Lazb;Lapz;)V
    .locals 0

    iput-object p1, p0, Lazc;->a:Lazb;

    invoke-direct {p0, p2}, Lazf;-><init>(Lapz;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lapt;)V
    .locals 0

    check-cast p1, Lazg;

    invoke-virtual {p0, p1}, Lazc;->a(Lazg;)V

    return-void
.end method

.method protected a(Lazg;)V
    .locals 2

    invoke-virtual {p1}, Lazg;->q()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lazk;

    new-instance v1, Lazd;

    invoke-direct {v1, p0}, Lazd;-><init>(Laqt;)V

    invoke-interface {v0, v1}, Lazk;->a(Lazh;)V

    return-void
.end method
