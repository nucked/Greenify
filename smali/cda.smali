.class final synthetic Lcda;
.super Ljava/lang/Object;

# interfaces
.implements Laqm;


# instance fields
.field private final a:Lccz;


# direct methods
.method private constructor <init>(Lccz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcda;->a:Lccz;

    return-void
.end method

.method public static a(Lccz;)Laqm;
    .locals 1

    new-instance v0, Lcda;

    invoke-direct {v0, p0}, Lcda;-><init>(Lccz;)V

    return-object v0
.end method


# virtual methods
.method public a(Laql;)V
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcda;->a:Lccz;

    check-cast p1, Lanl;

    invoke-static {v0, p1}, Lccz;->a(Lccz;Lanl;)Z

    return-void
.end method
