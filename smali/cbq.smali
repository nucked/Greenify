.class final synthetic Lcbq;
.super Ljava/lang/Object;

# interfaces
.implements Laqm;


# instance fields
.field private final a:Lcbp;


# direct methods
.method private constructor <init>(Lcbp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcbq;->a:Lcbp;

    return-void
.end method

.method public static a(Lcbp;)Laqm;
    .locals 1

    new-instance v0, Lcbq;

    invoke-direct {v0, p0}, Lcbq;-><init>(Lcbp;)V

    return-object v0
.end method


# virtual methods
.method public a(Laql;)V
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcbq;->a:Lcbp;

    check-cast p1, Lbdi;

    invoke-static {v0, p1}, Lcbp;->a(Lcbp;Lbdi;)V

    return-void
.end method
