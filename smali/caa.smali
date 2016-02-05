.class final synthetic Lcaa;
.super Ljava/lang/Object;

# interfaces
.implements Lvj;


# instance fields
.field private final a:Lbzh;


# direct methods
.method private constructor <init>(Lbzh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcaa;->a:Lbzh;

    return-void
.end method

.method public static a(Lbzh;)Lvj;
    .locals 1

    new-instance v0, Lcaa;

    invoke-direct {v0, p0}, Lcaa;-><init>(Lbzh;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcaa;->a:Lbzh;

    invoke-static {v0}, Lbzh;->e(Lbzh;)V

    return-void
.end method
