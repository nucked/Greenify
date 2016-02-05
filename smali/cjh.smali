.class public Lcjh;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Landroid/support/design/widget/Snackbar;)Landroid/support/design/widget/Snackbar;
    .locals 2

    .prologue
    .line 72
    invoke-static {p0}, Lcd;->a(Landroid/support/design/widget/Snackbar;)Landroid/widget/TextView;

    move-result-object v0

    .line 73
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 74
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 75
    return-object p0
.end method

.method public static varargs a(Landroid/view/View;I[Lcjp;)Landroid/support/design/widget/Snackbar;
    .locals 4

    .prologue
    .line 24
    const/16 v0, 0x2710

    invoke-static {p0, p1, v0}, Landroid/support/design/widget/Snackbar;->a(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object v1

    .line 25
    array-length v2, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p2, v0

    invoke-interface {v3, v1}, Lcjp;->a(Landroid/support/design/widget/Snackbar;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 26
    :cond_0
    invoke-static {v1}, Lcjh;->a(Landroid/support/design/widget/Snackbar;)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    return-object v0
.end method

.method public static varargs a(Landroid/view/View;Ljava/lang/CharSequence;[Lcjp;)Landroid/support/design/widget/Snackbar;
    .locals 4

    .prologue
    .line 30
    const/16 v0, 0x2710

    invoke-static {p0, p1, v0}, Landroid/support/design/widget/Snackbar;->a(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object v1

    .line 31
    array-length v2, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p2, v0

    invoke-interface {v3, v1}, Lcjp;->a(Landroid/support/design/widget/Snackbar;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 32
    :cond_0
    invoke-static {v1}, Lcjh;->a(Landroid/support/design/widget/Snackbar;)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    return-object v0
.end method

.method public static a(ILandroid/net/Uri;)Lcjp;
    .locals 1

    .prologue
    .line 44
    invoke-static {p0, p1}, Lcjj;->a(ILandroid/net/Uri;)Lcjp;

    move-result-object v0

    return-object v0
.end method

.method public static a(ILandroid/view/View$OnClickListener;)Lcjp;
    .locals 1

    .prologue
    .line 36
    invoke-static {p0, p1}, Lcji;->a(ILandroid/view/View$OnClickListener;)Lcjp;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/CharSequence;Landroid/net/Uri;)Lcjp;
    .locals 1

    .prologue
    .line 51
    invoke-static {p0, p1}, Lcjk;->a(Ljava/lang/CharSequence;Landroid/net/Uri;)Lcjp;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(ILandroid/net/Uri;Landroid/support/design/widget/Snackbar;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcjh;->b(ILandroid/net/Uri;Landroid/support/design/widget/Snackbar;)V

    return-void
.end method

.method static synthetic a(ILandroid/view/View$OnClickListener;Landroid/support/design/widget/Snackbar;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcjh;->b(ILandroid/view/View$OnClickListener;Landroid/support/design/widget/Snackbar;)V

    return-void
.end method

.method static synthetic a(Landroid/net/Uri;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcjh;->b(Landroid/net/Uri;Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/CharSequence;Landroid/net/Uri;Landroid/support/design/widget/Snackbar;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcjh;->b(Ljava/lang/CharSequence;Landroid/net/Uri;Landroid/support/design/widget/Snackbar;)V

    return-void
.end method

.method private static synthetic b(ILandroid/net/Uri;Landroid/support/design/widget/Snackbar;)V
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p2}, Landroid/support/design/widget/Snackbar;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 46
    invoke-static {v0, p1}, Lcjh;->a(Ljava/lang/CharSequence;Landroid/net/Uri;)Lcjp;

    move-result-object v0

    invoke-interface {v0, p2}, Lcjp;->a(Landroid/support/design/widget/Snackbar;)V

    .line 47
    return-void
.end method

.method private static synthetic b(ILandroid/view/View$OnClickListener;Landroid/support/design/widget/Snackbar;)V
    .locals 0

    .prologue
    .line 36
    invoke-virtual {p2, p0, p1}, Landroid/support/design/widget/Snackbar;->a(ILandroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    return-void
.end method

.method private static synthetic b(Landroid/net/Uri;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lbxa;->a(Landroid/content/Context;Landroid/net/Uri;)Z

    return-void
.end method

.method private static synthetic b(Ljava/lang/CharSequence;Landroid/net/Uri;Landroid/support/design/widget/Snackbar;)V
    .locals 2

    .prologue
    .line 52
    invoke-static {p1}, Lcjl;->a(Landroid/net/Uri;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {p2, p0, v0}, Landroid/support/design/widget/Snackbar;->a(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    .line 53
    invoke-virtual {p2}, Landroid/support/design/widget/Snackbar;->a()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcjm;

    invoke-direct {v1, p1, p2, p0}, Lcjm;-><init>(Landroid/net/Uri;Landroid/support/design/widget/Snackbar;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 68
    return-void
.end method
