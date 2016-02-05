.class final synthetic Lcac;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lbzh;

.field private final b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lbzh;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcac;->a:Lbzh;

    iput-object p2, p0, Lcac;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Lbzh;Ljava/lang/String;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcac;

    invoke-direct {v0, p0, p1}, Lcac;-><init>(Lbzh;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcac;->a:Lbzh;

    iget-object v1, p0, Lcac;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lbzh;->a(Lbzh;Ljava/lang/String;)V

    return-void
.end method
