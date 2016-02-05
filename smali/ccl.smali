.class final synthetic Lccl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final a:Lccl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lccl;

    invoke-direct {v0}, Lccl;-><init>()V

    sput-object v0, Lccl;->a:Lccl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/Runnable;
    .locals 1

    sget-object v0, Lccl;->a:Lccl;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 0
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    invoke-static {}, Lcci;->c()V

    return-void
.end method
