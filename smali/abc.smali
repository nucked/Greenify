.class Labc;
.super Laee;
.source "SourceFile"


# instance fields
.field final synthetic a:Laaw;

.field final synthetic b:Labb;


# direct methods
.method constructor <init>(Labb;Landroid/view/View;Laaw;)V
    .locals 0

    .prologue
    .line 618
    iput-object p1, p0, Labc;->b:Labb;

    iput-object p3, p0, Labc;->a:Laaw;

    invoke-direct {p0, p2}, Laee;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a()Ladz;
    .locals 1

    .prologue
    .line 621
    iget-object v0, p0, Labc;->b:Labb;

    iget-object v0, v0, Labb;->a:Laaw;

    invoke-static {v0}, Laaw;->a(Laaw;)Labd;

    move-result-object v0

    if-nez v0, :cond_0

    .line 622
    const/4 v0, 0x0

    .line 625
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Labc;->b:Labb;

    iget-object v0, v0, Labb;->a:Laaw;

    invoke-static {v0}, Laaw;->a(Laaw;)Labd;

    move-result-object v0

    invoke-virtual {v0}, Labd;->c()Ladz;

    move-result-object v0

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 630
    iget-object v0, p0, Labc;->b:Labb;

    iget-object v0, v0, Labb;->a:Laaw;

    invoke-virtual {v0}, Laaw;->d()Z

    .line 631
    const/4 v0, 0x1

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 639
    iget-object v0, p0, Labc;->b:Labb;

    iget-object v0, v0, Labb;->a:Laaw;

    invoke-static {v0}, Laaw;->b(Laaw;)Laba;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 640
    const/4 v0, 0x0

    .line 644
    :goto_0
    return v0

    .line 643
    :cond_0
    iget-object v0, p0, Labc;->b:Labb;

    iget-object v0, v0, Labb;->a:Laaw;

    invoke-virtual {v0}, Laaw;->e()Z

    .line 644
    const/4 v0, 0x1

    goto :goto_0
.end method
