.class public final synthetic Lceu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method private constructor <init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lceu;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method

.method public static a(Ljava/lang/Thread$UncaughtExceptionHandler;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lceu;

    invoke-direct {v0, p0}, Lceu;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lceu;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->a(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method
