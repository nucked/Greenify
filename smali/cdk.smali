.class public final synthetic Lcdk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/oasisfeng/greenify/engine/WakeupMonitor;


# direct methods
.method private constructor <init>(Lcom/oasisfeng/greenify/engine/WakeupMonitor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcdk;->a:Lcom/oasisfeng/greenify/engine/WakeupMonitor;

    return-void
.end method

.method public static a(Lcom/oasisfeng/greenify/engine/WakeupMonitor;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcdk;

    invoke-direct {v0, p0}, Lcdk;-><init>(Lcom/oasisfeng/greenify/engine/WakeupMonitor;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcdk;->a:Lcom/oasisfeng/greenify/engine/WakeupMonitor;

    invoke-static {v0}, Lcom/oasisfeng/greenify/engine/WakeupMonitor;->e(Lcom/oasisfeng/greenify/engine/WakeupMonitor;)V

    return-void
.end method
