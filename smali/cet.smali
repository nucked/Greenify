.class public final synthetic Lcet;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private final a:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method private constructor <init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcet;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method

.method public static a(Ljava/lang/Thread$UncaughtExceptionHandler;)Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1

    new-instance v0, Lcet;

    invoke-direct {v0, p0}, Lcet;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-object v0
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcet;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0, p1, p2}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->a(Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method
