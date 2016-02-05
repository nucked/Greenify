.class public final synthetic Lcfb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;


# direct methods
.method private constructor <init>(Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcfb;->a:Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;

    return-void
.end method

.method public static a(Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcfb;

    invoke-direct {v0, p0}, Lcfb;-><init>(Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcfb;->a:Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;

    invoke-static {v0}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->f(Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;)V

    return-void
.end method
