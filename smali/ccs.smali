.class final synthetic Lccs;
.super Ljava/lang/Object;

# interfaces
.implements Lbku;


# static fields
.field private static final a:Lccs;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lccs;

    invoke-direct {v0}, Lccs;-><init>()V

    sput-object v0, Lccs;->a:Lccs;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lbku;
    .locals 1

    sget-object v0, Lccs;->a:Lccs;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Z
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lccq;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
