.class final synthetic Lcbr;
.super Ljava/lang/Object;

# interfaces
.implements Lbdj;


# static fields
.field private static final a:Lcbr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcbr;

    invoke-direct {v0}, Lcbr;-><init>()V

    sput-object v0, Lcbr;->a:Lcbr;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lbdj;
    .locals 1

    sget-object v0, Lcbr;->a:Lcbr;

    return-object v0
.end method


# virtual methods
.method public a(Lbdi;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    invoke-static {p1, p2}, Lcbp;->a(Lbdi;Ljava/lang/String;)V

    return-void
.end method
