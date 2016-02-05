.class Labe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laaf;


# instance fields
.field final synthetic a:Laaw;


# direct methods
.method private constructor <init>(Laaw;)V
    .locals 0

    .prologue
    .line 748
    iput-object p1, p0, Labe;->a:Laaw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Laaw;Laax;)V
    .locals 0

    .prologue
    .line 748
    invoke-direct {p0, p1}, Labe;-><init>(Laaw;)V

    return-void
.end method


# virtual methods
.method public a(Lzp;Z)V
    .locals 2

    .prologue
    .line 761
    instance-of v0, p1, Laak;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 762
    check-cast v0, Laak;

    invoke-virtual {v0}, Laak;->p()Lzp;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lzp;->a(Z)V

    .line 764
    :cond_0
    iget-object v0, p0, Labe;->a:Laaw;

    invoke-virtual {v0}, Laaw;->a()Laaf;

    move-result-object v0

    .line 765
    if-eqz v0, :cond_1

    .line 766
    invoke-interface {v0, p1, p2}, Laaf;->a(Lzp;Z)V

    .line 768
    :cond_1
    return-void
.end method

.method public a(Lzp;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 752
    if-nez p1, :cond_0

    .line 756
    :goto_0
    return v1

    .line 754
    :cond_0
    iget-object v2, p0, Labe;->a:Laaw;

    move-object v0, p1

    check-cast v0, Laak;

    invoke-virtual {v0}, Laak;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iput v0, v2, Laaw;->h:I

    .line 755
    iget-object v0, p0, Labe;->a:Laaw;

    invoke-virtual {v0}, Laaw;->a()Laaf;

    move-result-object v0

    .line 756
    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Laaf;->a(Lzp;)Z

    move-result v0

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method
