.class Lahp;
.super Lahy;
.source "SourceFile"

# interfaces
.implements Landroid/widget/Checkable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lahy;-><init>(Landroid/content/Context;)V

    .line 30
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lahp;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/Checkable;

    invoke-interface {v0}, Landroid/widget/Checkable;->isChecked()Z

    move-result v0

    return v0
.end method

.method public setChecked(Z)V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lahp;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/Checkable;

    invoke-interface {v0, p1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 40
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lahp;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lahp;->setChecked(Z)V

    .line 45
    return-void

    .line 44
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
