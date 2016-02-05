.class final synthetic Lcct;
.super Ljava/lang/Object;

# interfaces
.implements Lbkl;


# static fields
.field private static final a:Lcct;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcct;

    invoke-direct {v0}, Lcct;-><init>()V

    sput-object v0, Lcct;->a:Lcct;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lbkl;
    .locals 1

    sget-object v0, Lcct;->a:Lcct;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lccq;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
