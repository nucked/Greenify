.class final synthetic Lbzy;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lbzh;


# direct methods
.method private constructor <init>(Lbzh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbzy;->a:Lbzh;

    return-void
.end method

.method public static a(Lbzh;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lbzy;

    invoke-direct {v0, p0}, Lbzy;-><init>(Lbzh;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lbzy;->a:Lbzh;

    invoke-static {v0}, Lbzh;->f(Lbzh;)V

    return-void
.end method
