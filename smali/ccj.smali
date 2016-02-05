.class final synthetic Lccj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcci;


# direct methods
.method private constructor <init>(Lcci;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lccj;->a:Lcci;

    return-void
.end method

.method public static a(Lcci;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lccj;

    invoke-direct {v0, p0}, Lccj;-><init>(Lcci;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lccj;->a:Lcci;

    invoke-static {v0}, Lcci;->a(Lcci;)Z

    return-void
.end method
