.class final synthetic Lcdb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lccz;

.field private final b:Lbpk;

.field private final c:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lccz;Lbpk;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcdb;->a:Lccz;

    iput-object p2, p0, Lcdb;->b:Lbpk;

    iput-object p3, p0, Lcdb;->c:Ljava/lang/String;

    return-void
.end method

.method public static a(Lccz;Lbpk;Ljava/lang/String;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcdb;

    invoke-direct {v0, p0, p1, p2}, Lcdb;-><init>(Lccz;Lbpk;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcdb;->a:Lccz;

    iget-object v1, p0, Lcdb;->b:Lbpk;

    iget-object v2, p0, Lcdb;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lccz;->a(Lccz;Lbpk;Ljava/lang/String;)V

    return-void
.end method
