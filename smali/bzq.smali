.class final synthetic Lbzq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Lbzh;


# direct methods
.method private constructor <init>(Lbzh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbzq;->a:Lbzh;

    return-void
.end method

.method public static a(Lbzh;)Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lbzq;

    invoke-direct {v0, p0}, Lbzq;-><init>(Lbzh;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lbzq;->a:Lbzh;

    invoke-static {v0, p1}, Lbzh;->e(Lbzh;Landroid/view/View;)V

    return-void
.end method
