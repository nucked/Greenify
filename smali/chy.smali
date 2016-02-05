.class final synthetic Lchy;
.super Ljava/lang/Object;

# interfaces
.implements Lbkl;


# static fields
.field private static final a:Lchy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lchy;

    invoke-direct {v0}, Lchy;-><init>()V

    sput-object v0, Lchy;->a:Lchy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lbkl;
    .locals 1

    sget-object v0, Lchy;->a:Lchy;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    check-cast p1, Landroid/content/pm/ResolveInfo;

    invoke-static {p1}, Lchx;->a(Landroid/content/pm/ResolveInfo;)Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method
