.class final synthetic Lbzr;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final a:Lbzr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lbzr;

    invoke-direct {v0}, Lbzr;-><init>()V

    sput-object v0, Lbzr;->a:Lbzr;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Landroid/view/View$OnClickListener;
    .locals 1

    sget-object v0, Lbzr;->a:Lbzr;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    invoke-static {p1}, Lbzh;->a(Landroid/view/View;)V

    return-void
.end method
