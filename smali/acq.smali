.class Lacq;
.super Laee;
.source "SourceFile"


# instance fields
.field final synthetic a:Lacs;

.field final synthetic b:Lacp;


# direct methods
.method constructor <init>(Lacp;Landroid/view/View;Lacs;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lacq;->b:Lacp;

    iput-object p3, p0, Lacq;->a:Lacs;

    invoke-direct {p0, p2}, Laee;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a()Ladz;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lacq;->a:Lacs;

    return-object v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lacq;->b:Lacp;

    invoke-static {v0}, Lacp;->a(Lacp;)Lacs;

    move-result-object v0

    invoke-virtual {v0}, Lacs;->k()Z

    move-result v0

    if-nez v0, :cond_0

    .line 260
    iget-object v0, p0, Lacq;->b:Lacp;

    invoke-static {v0}, Lacp;->a(Lacp;)Lacs;

    move-result-object v0

    invoke-virtual {v0}, Lacs;->c()V

    .line 262
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
