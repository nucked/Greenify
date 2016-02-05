.class final synthetic Lceg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcef;

.field private final b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcef;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lceg;->a:Lcef;

    iput-object p2, p0, Lceg;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Lcef;Ljava/lang/String;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lceg;

    invoke-direct {v0, p0, p1}, Lceg;-><init>(Lcef;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lceg;->a:Lcef;

    iget-object v1, p0, Lceg;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcef;->a(Lcef;Ljava/lang/String;)V

    return-void
.end method
