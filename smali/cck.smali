.class final synthetic Lcck;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcck;->a:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcck;

    invoke-direct {v0, p0}, Lcck;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcck;->a:Landroid/content/Context;

    invoke-static {v0}, Lcci;->e(Landroid/content/Context;)V

    return-void
.end method
