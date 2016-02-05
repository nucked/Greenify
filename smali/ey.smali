.class Ley;
.super Lez;
.source "SourceFile"


# instance fields
.field final synthetic a:Lei;

.field final synthetic b:Leu;


# direct methods
.method constructor <init>(Leu;Landroid/view/View;Landroid/view/animation/Animation;Lei;)V
    .locals 0

    .prologue
    .line 1154
    iput-object p1, p0, Ley;->b:Leu;

    iput-object p4, p0, Ley;->a:Lei;

    invoke-direct {p0, p2, p3}, Lez;-><init>(Landroid/view/View;Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1157
    invoke-super {p0, p1}, Lez;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 1158
    iget-object v0, p0, Ley;->a:Lei;

    iget-object v0, v0, Lei;->l:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1159
    iget-object v0, p0, Ley;->a:Lei;

    const/4 v1, 0x0

    iput-object v1, v0, Lei;->l:Landroid/view/View;

    .line 1160
    iget-object v0, p0, Ley;->b:Leu;

    iget-object v1, p0, Ley;->a:Lei;

    iget-object v2, p0, Ley;->a:Lei;

    iget v2, v2, Lei;->m:I

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Leu;->a(Lei;IIIZ)V

    .line 1163
    :cond_0
    return-void
.end method
