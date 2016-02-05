.class final synthetic Lcab;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lbzh;

.field private final b:I


# direct methods
.method private constructor <init>(Lbzh;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcab;->a:Lbzh;

    iput p2, p0, Lcab;->b:I

    return-void
.end method

.method public static a(Lbzh;I)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcab;

    invoke-direct {v0, p0, p1}, Lcab;-><init>(Lbzh;I)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcab;->a:Lbzh;

    iget v1, p0, Lcab;->b:I

    invoke-static {v0, v1}, Lbzh;->b(Lbzh;I)V

    return-void
.end method
