.class final synthetic Lcbt;
.super Ljava/lang/Object;

# interfaces
.implements Lbnx;


# static fields
.field private static final a:Lcbt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcbt;

    invoke-direct {v0}, Lcbt;-><init>()V

    sput-object v0, Lcbt;->a:Lcbt;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lbnx;
    .locals 1

    sget-object v0, Lcbt;->a:Lcbt;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-static {p1, p2}, Lcbw;->a(Ljava/lang/String;Landroid/app/ActivityManager$RunningAppProcessInfo;)Lcbw;

    move-result-object v0

    return-object v0
.end method
