.class final synthetic Lcjl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Landroid/net/Uri;


# direct methods
.method private constructor <init>(Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcjl;->a:Landroid/net/Uri;

    return-void
.end method

.method public static a(Landroid/net/Uri;)Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lcjl;

    invoke-direct {v0, p0}, Lcjl;-><init>(Landroid/net/Uri;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcjl;->a:Landroid/net/Uri;

    invoke-static {v0, p1}, Lcjh;->a(Landroid/net/Uri;Landroid/view/View;)V

    return-void
.end method
