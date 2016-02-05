.class final synthetic Lcjo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Landroid/net/Uri;

.field private final b:Li;

.field private final c:Landroid/os/Bundle;


# direct methods
.method private constructor <init>(Landroid/net/Uri;Li;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcjo;->a:Landroid/net/Uri;

    iput-object p2, p0, Lcjo;->b:Li;

    iput-object p3, p0, Lcjo;->c:Landroid/os/Bundle;

    return-void
.end method

.method public static a(Landroid/net/Uri;Li;Landroid/os/Bundle;)Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lcjo;

    invoke-direct {v0, p0, p1, p2}, Lcjo;-><init>(Landroid/net/Uri;Li;Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcjo;->a:Landroid/net/Uri;

    iget-object v1, p0, Lcjo;->b:Li;

    iget-object v2, p0, Lcjo;->c:Landroid/os/Bundle;

    invoke-static {v0, v1, v2, p1}, Lcjm;->a(Landroid/net/Uri;Li;Landroid/os/Bundle;Landroid/view/View;)V

    return-void
.end method
