.class final synthetic Lcai;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcah;

.field private final b:Landroid/widget/ListView;


# direct methods
.method private constructor <init>(Lcah;Landroid/widget/ListView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcai;->a:Lcah;

    iput-object p2, p0, Lcai;->b:Landroid/widget/ListView;

    return-void
.end method

.method public static a(Lcah;Landroid/widget/ListView;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcai;

    invoke-direct {v0, p0, p1}, Lcai;-><init>(Lcah;Landroid/widget/ListView;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcai;->a:Lcah;

    iget-object v1, p0, Lcai;->b:Landroid/widget/ListView;

    invoke-static {v0, v1}, Lcah;->a(Lcah;Landroid/widget/ListView;)V

    return-void
.end method
