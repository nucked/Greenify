.class final synthetic Lcae;
.super Ljava/lang/Object;

# interfaces
.implements Lbxh;


# instance fields
.field private final a:Lbzh;


# direct methods
.method private constructor <init>(Lbzh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcae;->a:Lbzh;

    return-void
.end method

.method public static a(Lbzh;)Lbxh;
    .locals 1

    new-instance v0, Lcae;

    invoke-direct {v0, p0}, Lcae;-><init>(Lbzh;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcae;->a:Lbzh;

    check-cast p1, Landroid/app/Activity;

    invoke-static {v0, p1}, Lbzh;->a(Lbzh;Landroid/app/Activity;)V

    return-void
.end method
