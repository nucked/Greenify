.class Lc;
.super Lk;
.source "SourceFile"


# instance fields
.field final synthetic a:La;

.field final synthetic b:Lb;


# direct methods
.method constructor <init>(Lb;La;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lc;->b:Lb;

    iput-object p2, p0, Lc;->a:La;

    invoke-direct {p0}, Lk;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lc;->a:La;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc;->a:La;

    invoke-virtual {v0, p1, p2}, La;->a(ILandroid/os/Bundle;)V

    .line 93
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lc;->a:La;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc;->a:La;

    invoke-virtual {v0, p1, p2}, La;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 98
    :cond_0
    return-void
.end method
