.class Lxd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lom;


# instance fields
.field final synthetic a:Lxb;


# direct methods
.method constructor <init>(Lxb;)V
    .locals 0

    .prologue
    .line 390
    iput-object p1, p0, Lxd;->a:Lxb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lrd;)Lrd;
    .locals 4

    .prologue
    .line 394
    invoke-virtual {p2}, Lrd;->b()I

    move-result v0

    .line 395
    iget-object v1, p0, Lxd;->a:Lxb;

    invoke-static {v1, v0}, Lxb;->c(Lxb;I)I

    move-result v1

    .line 397
    if-eq v0, v1, :cond_0

    .line 398
    invoke-virtual {p2}, Lrd;->a()I

    move-result v0

    invoke-virtual {p2}, Lrd;->c()I

    move-result v2

    invoke-virtual {p2}, Lrd;->d()I

    move-result v3

    invoke-virtual {p2, v0, v1, v2, v3}, Lrd;->a(IIII)Lrd;

    move-result-object p2

    .line 406
    :cond_0
    invoke-static {p1, p2}, Lou;->a(Landroid/view/View;Lrd;)Lrd;

    move-result-object v0

    return-object v0
.end method
