.class final synthetic Lcjj;
.super Ljava/lang/Object;

# interfaces
.implements Lcjp;


# instance fields
.field private final a:I

.field private final b:Landroid/net/Uri;


# direct methods
.method private constructor <init>(ILandroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcjj;->a:I

    iput-object p2, p0, Lcjj;->b:Landroid/net/Uri;

    return-void
.end method

.method public static a(ILandroid/net/Uri;)Lcjp;
    .locals 1

    new-instance v0, Lcjj;

    invoke-direct {v0, p0, p1}, Lcjj;-><init>(ILandroid/net/Uri;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/support/design/widget/Snackbar;)V
    .locals 2
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget v0, p0, Lcjj;->a:I

    iget-object v1, p0, Lcjj;->b:Landroid/net/Uri;

    invoke-static {v0, v1, p1}, Lcjh;->a(ILandroid/net/Uri;Landroid/support/design/widget/Snackbar;)V

    return-void
.end method
