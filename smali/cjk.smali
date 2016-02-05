.class final synthetic Lcjk;
.super Ljava/lang/Object;

# interfaces
.implements Lcjp;


# instance fields
.field private final a:Ljava/lang/CharSequence;

.field private final b:Landroid/net/Uri;


# direct methods
.method private constructor <init>(Ljava/lang/CharSequence;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcjk;->a:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcjk;->b:Landroid/net/Uri;

    return-void
.end method

.method public static a(Ljava/lang/CharSequence;Landroid/net/Uri;)Lcjp;
    .locals 1

    new-instance v0, Lcjk;

    invoke-direct {v0, p0, p1}, Lcjk;-><init>(Ljava/lang/CharSequence;Landroid/net/Uri;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/support/design/widget/Snackbar;)V
    .locals 2
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcjk;->a:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcjk;->b:Landroid/net/Uri;

    invoke-static {v0, v1, p1}, Lcjh;->a(Ljava/lang/CharSequence;Landroid/net/Uri;Landroid/support/design/widget/Snackbar;)V

    return-void
.end method
