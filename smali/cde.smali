.class final synthetic Lcde;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lccz;


# direct methods
.method private constructor <init>(Lccz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcde;->a:Lccz;

    return-void
.end method

.method public static a(Lccz;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcde;

    invoke-direct {v0, p0}, Lcde;-><init>(Lccz;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcde;->a:Lccz;

    invoke-static {v0}, Lccz;->e(Lccz;)V

    return-void
.end method
