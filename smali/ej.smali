.class Lej;
.super Lep;
.source "SourceFile"


# instance fields
.field final synthetic a:Lei;


# direct methods
.method constructor <init>(Lei;)V
    .locals 0

    .prologue
    .line 1917
    iput-object p1, p0, Lej;->a:Lei;

    invoke-direct {p0}, Lep;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 2

    .prologue
    .line 1921
    iget-object v0, p0, Lej;->a:Lei;

    iget-object v0, v0, Lei;->S:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1922
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment does not have a view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1924
    :cond_0
    iget-object v0, p0, Lej;->a:Lei;

    iget-object v0, v0, Lei;->S:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 1929
    iget-object v0, p0, Lej;->a:Lei;

    iget-object v0, v0, Lei;->S:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
