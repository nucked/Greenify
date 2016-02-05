.class Labd;
.super Laac;
.source "SourceFile"


# instance fields
.field final synthetic c:Laaw;


# direct methods
.method public constructor <init>(Laaw;Landroid/content/Context;Lzp;Landroid/view/View;Z)V
    .locals 6

    .prologue
    .line 696
    iput-object p1, p0, Labd;->c:Laaw;

    .line 697
    sget v5, Lyc;->actionOverflowMenuStyle:I

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v5}, Laac;-><init>(Landroid/content/Context;Lzp;Landroid/view/View;ZI)V

    .line 698
    const v0, 0x800005

    invoke-virtual {p0, v0}, Labd;->a(I)V

    .line 699
    iget-object v0, p1, Laaw;->g:Labe;

    invoke-virtual {p0, v0}, Labd;->a(Laaf;)V

    .line 700
    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 704
    invoke-super {p0}, Laac;->onDismiss()V

    .line 705
    iget-object v0, p0, Labd;->c:Laaw;

    invoke-static {v0}, Laaw;->c(Laaw;)Lzp;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 706
    iget-object v0, p0, Labd;->c:Laaw;

    invoke-static {v0}, Laaw;->d(Laaw;)Lzp;

    move-result-object v0

    invoke-virtual {v0}, Lzp;->close()V

    .line 708
    :cond_0
    iget-object v0, p0, Labd;->c:Laaw;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Laaw;->a(Laaw;Labd;)Labd;

    .line 709
    return-void
.end method
