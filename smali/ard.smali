.class Lard;
.super Lasc;


# instance fields
.field final synthetic a:Larb;


# direct methods
.method constructor <init>(Larb;Lasa;)V
    .locals 0

    iput-object p1, p0, Lard;->a:Larb;

    invoke-direct {p0, p2}, Lasc;-><init>(Lasa;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lard;->a:Larb;

    invoke-static {v0}, Larb;->a(Larb;)Lasb;

    move-result-object v0

    iget-object v0, v0, Lasb;->h:Lash;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lash;->a(Landroid/os/Bundle;)V

    return-void
.end method
