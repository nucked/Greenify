.class Lxy;
.super Lrb;
.source "SourceFile"


# instance fields
.field final synthetic a:Lxw;


# direct methods
.method constructor <init>(Lxw;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lxy;->a:Lxw;

    invoke-direct {p0}, Lrb;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lxy;->a:Lxw;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lxw;->a(Lxw;Lze;)Lze;

    .line 156
    iget-object v0, p0, Lxy;->a:Lxw;

    invoke-static {v0}, Lxw;->c(Lxw;)Landroid/support/v7/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContainer;->requestLayout()V

    .line 157
    return-void
.end method
