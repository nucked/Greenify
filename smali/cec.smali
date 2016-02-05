.class final synthetic Lcec;
.super Ljava/lang/Object;

# interfaces
.implements Lckm;


# instance fields
.field private final a:Lceb;

.field private final b:Landroid/os/HandlerThread;


# direct methods
.method private constructor <init>(Lceb;Landroid/os/HandlerThread;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcec;->a:Lceb;

    iput-object p2, p0, Lcec;->b:Landroid/os/HandlerThread;

    return-void
.end method

.method public static a(Lceb;Landroid/os/HandlerThread;)Lckm;
    .locals 1

    new-instance v0, Lcec;

    invoke-direct {v0, p0, p1}, Lcec;-><init>(Lceb;Landroid/os/HandlerThread;)V

    return-object v0
.end method


# virtual methods
.method public a(IILjava/util/List;)V
    .locals 2
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcec;->a:Lceb;

    iget-object v1, p0, Lcec;->b:Landroid/os/HandlerThread;

    invoke-static {v0, v1, p1, p2, p3}, Lceb;->a(Lceb;Landroid/os/HandlerThread;IILjava/util/List;)V

    return-void
.end method
