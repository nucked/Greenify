.class final synthetic Lcjn;
.super Ljava/lang/Object;

# interfaces
.implements Lbxc;


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Landroid/support/design/widget/Snackbar;

.field private final c:Ljava/lang/CharSequence;

.field private final d:Landroid/net/Uri;


# direct methods
.method private constructor <init>(Landroid/view/View;Landroid/support/design/widget/Snackbar;Ljava/lang/CharSequence;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcjn;->a:Landroid/view/View;

    iput-object p2, p0, Lcjn;->b:Landroid/support/design/widget/Snackbar;

    iput-object p3, p0, Lcjn;->c:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcjn;->d:Landroid/net/Uri;

    return-void
.end method

.method public static a(Landroid/view/View;Landroid/support/design/widget/Snackbar;Ljava/lang/CharSequence;Landroid/net/Uri;)Lbxc;
    .locals 1

    new-instance v0, Lcjn;

    invoke-direct {v0, p0, p1, p2, p3}, Lcjn;-><init>(Landroid/view/View;Landroid/support/design/widget/Snackbar;Ljava/lang/CharSequence;Landroid/net/Uri;)V

    return-object v0
.end method


# virtual methods
.method public a(Li;)V
    .locals 4
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcjn;->a:Landroid/view/View;

    iget-object v1, p0, Lcjn;->b:Landroid/support/design/widget/Snackbar;

    iget-object v2, p0, Lcjn;->c:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcjn;->d:Landroid/net/Uri;

    invoke-static {v0, v1, v2, v3, p1}, Lcjm;->a(Landroid/view/View;Landroid/support/design/widget/Snackbar;Ljava/lang/CharSequence;Landroid/net/Uri;Li;)V

    return-void
.end method
