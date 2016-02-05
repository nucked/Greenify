.class final synthetic Lchb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field private static final a:Lchb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lchb;

    invoke-direct {v0}, Lchb;-><init>()V

    sput-object v0, Lchb;->a:Lchb;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/util/Comparator;
    .locals 1

    sget-object v0, Lchb;->a:Lchb;

    return-object v0
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    check-cast p1, Lchd;

    check-cast p2, Lchd;

    invoke-static {p1, p2}, Lcha;->a(Lchd;Lchd;)I

    move-result v0

    return v0
.end method
