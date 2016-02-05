.class public Lcd;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/support/design/widget/Snackbar;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Landroid/support/design/widget/Snackbar;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->getMessageView()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method
