.class Lxz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrc;


# instance fields
.field final synthetic a:Lxw;


# direct methods
.method constructor <init>(Lxw;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lxz;->a:Lxw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lxz;->a:Lxw;

    invoke-static {v0}, Lxw;->c(Lxw;)Landroid/support/v7/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 165
    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 166
    return-void
.end method
