.class final synthetic Lbzo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Landroid/app/Activity;


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbzo;->a:Landroid/app/Activity;

    return-void
.end method

.method public static a(Landroid/app/Activity;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lbzo;

    invoke-direct {v0, p0}, Lbzo;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lbzo;->a:Landroid/app/Activity;

    invoke-static {v0}, Lbzh;->b(Landroid/app/Activity;)V

    return-void
.end method
