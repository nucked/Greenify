.class final Lcjm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field final synthetic a:Landroid/net/Uri;

.field final synthetic b:Landroid/support/design/widget/Snackbar;

.field final synthetic c:Ljava/lang/CharSequence;

.field private d:Landroid/content/ServiceConnection;


# direct methods
.method constructor <init>(Landroid/net/Uri;Landroid/support/design/widget/Snackbar;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcjm;->a:Landroid/net/Uri;

    iput-object p2, p0, Lcjm;->b:Landroid/support/design/widget/Snackbar;

    iput-object p3, p0, Lcjm;->c:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/net/Uri;Li;Landroid/os/Bundle;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcjm;->b(Landroid/net/Uri;Li;Landroid/os/Bundle;Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Landroid/view/View;Landroid/support/design/widget/Snackbar;Ljava/lang/CharSequence;Landroid/net/Uri;Li;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcjm;->b(Landroid/view/View;Landroid/support/design/widget/Snackbar;Ljava/lang/CharSequence;Landroid/net/Uri;Li;)V

    return-void
.end method

.method private static synthetic b(Landroid/net/Uri;Li;Landroid/os/Bundle;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0, p1, p2}, Lbxa;->a(Landroid/content/Context;Landroid/net/Uri;Li;Landroid/os/Bundle;)Z

    return-void
.end method

.method private static synthetic b(Landroid/view/View;Landroid/support/design/widget/Snackbar;Ljava/lang/CharSequence;Landroid/net/Uri;Li;)V
    .locals 3

    .prologue
    .line 57
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f05000e

    const v2, 0x7f05000f

    invoke-static {v0, v1, v2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 58
    invoke-static {p3, p4, v0}, Lcjo;->a(Landroid/net/Uri;Li;Landroid/os/Bundle;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/support/design/widget/Snackbar;->a(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    .line 59
    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 56
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcjm;->a:Landroid/net/Uri;

    iget-object v2, p0, Lcjm;->b:Landroid/support/design/widget/Snackbar;

    iget-object v3, p0, Lcjm;->c:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcjm;->a:Landroid/net/Uri;

    invoke-static {p1, v2, v3, v4}, Lcjn;->a(Landroid/view/View;Landroid/support/design/widget/Snackbar;Ljava/lang/CharSequence;Landroid/net/Uri;)Lbxc;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lbxa;->a(Landroid/content/Context;Landroid/net/Uri;Lbxc;)Landroid/content/ServiceConnection;

    move-result-object v0

    iput-object v0, p0, Lcjm;->d:Landroid/content/ServiceConnection;

    .line 60
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcjm;->d:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcjm;->d:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 64
    :cond_0
    return-void
.end method
