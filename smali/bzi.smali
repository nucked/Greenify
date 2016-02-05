.class final synthetic Lbzi;
.super Ljava/lang/Object;

# interfaces
.implements Lchh;


# instance fields
.field private final a:Lbzh;


# direct methods
.method private constructor <init>(Lbzh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbzi;->a:Lbzh;

    return-void
.end method

.method public static a(Lbzh;)Lchh;
    .locals 1

    new-instance v0, Lbzi;

    invoke-direct {v0, p0}, Lbzi;-><init>(Lbzh;)V

    return-object v0
.end method


# virtual methods
.method public a(Lchd;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lbzi;->a:Lbzh;

    invoke-static {v0, p1, p2}, Lbzh;->a(Lbzh;Lchd;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
