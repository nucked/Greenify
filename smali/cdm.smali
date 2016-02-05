.class public final synthetic Lcdm;
.super Ljava/lang/Object;

# interfaces
.implements Lbku;


# instance fields
.field private final a:Lcom/oasisfeng/greenify/engine/WakeupMonitor;


# direct methods
.method private constructor <init>(Lcom/oasisfeng/greenify/engine/WakeupMonitor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcdm;->a:Lcom/oasisfeng/greenify/engine/WakeupMonitor;

    return-void
.end method

.method public static a(Lcom/oasisfeng/greenify/engine/WakeupMonitor;)Lbku;
    .locals 1

    new-instance v0, Lcdm;

    invoke-direct {v0, p0}, Lcdm;-><init>(Lcom/oasisfeng/greenify/engine/WakeupMonitor;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Z
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcdm;->a:Lcom/oasisfeng/greenify/engine/WakeupMonitor;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/oasisfeng/greenify/engine/WakeupMonitor;->d(Lcom/oasisfeng/greenify/engine/WakeupMonitor;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
