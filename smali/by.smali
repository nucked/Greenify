.class public Lby;
.super Lrb;
.source "SourceFile"


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/support/design/widget/Snackbar;


# direct methods
.method public constructor <init>(Landroid/support/design/widget/Snackbar;I)V
    .locals 0

    .prologue
    .line 559
    iput-object p1, p0, Lby;->b:Landroid/support/design/widget/Snackbar;

    iput p2, p0, Lby;->a:I

    invoke-direct {p0}, Lrb;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 562
    iget-object v0, p0, Lby;->b:Landroid/support/design/widget/Snackbar;

    invoke-static {v0}, Landroid/support/design/widget/Snackbar;->c(Landroid/support/design/widget/Snackbar;)Landroid/support/design/widget/Snackbar$SnackbarLayout;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0xb4

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->b(II)V

    .line 563
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 567
    iget-object v0, p0, Lby;->b:Landroid/support/design/widget/Snackbar;

    iget v1, p0, Lby;->a:I

    invoke-static {v0, v1}, Landroid/support/design/widget/Snackbar;->b(Landroid/support/design/widget/Snackbar;I)V

    .line 568
    return-void
.end method
