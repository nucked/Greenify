.class final synthetic Lchl;
.super Ljava/lang/Object;

# interfaces
.implements Lchq;


# static fields
.field private static final a:Lchl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lchl;

    invoke-direct {v0}, Lchl;-><init>()V

    sput-object v0, Lchl;->a:Lchl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lchq;
    .locals 1

    sget-object v0, Lchl;->a:Lchl;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    invoke-static {p1}, Lchk;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
