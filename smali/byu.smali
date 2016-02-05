.class public final synthetic Lbyu;
.super Ljava/lang/Object;

# interfaces
.implements Lchr;


# static fields
.field private static final a:Lbyu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lbyu;

    invoke-direct {v0}, Lbyu;-><init>()V

    sput-object v0, Lbyu;->a:Lbyu;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lchr;
    .locals 1

    sget-object v0, Lbyu;->a:Lbyu;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 0
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    invoke-static {p1}, Lcom/oasisfeng/greenify/DozeService;->b(Ljava/util/List;)V

    return-void
.end method
