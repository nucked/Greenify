.class public final synthetic Lccw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lccn;

.field private final b:Landroid/content/Context;

.field private final c:Landroid/content/BroadcastReceiver$PendingResult;


# direct methods
.method private constructor <init>(Lccn;Landroid/content/Context;Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lccw;->a:Lccn;

    iput-object p2, p0, Lccw;->b:Landroid/content/Context;

    iput-object p3, p0, Lccw;->c:Landroid/content/BroadcastReceiver$PendingResult;

    return-void
.end method

.method public static a(Lccn;Landroid/content/Context;Landroid/content/BroadcastReceiver$PendingResult;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lccw;

    invoke-direct {v0, p0, p1, p2}, Lccw;-><init>(Lccn;Landroid/content/Context;Landroid/content/BroadcastReceiver$PendingResult;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lccw;->a:Lccn;

    iget-object v1, p0, Lccw;->b:Landroid/content/Context;

    iget-object v2, p0, Lccw;->c:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-static {v0, v1, v2}, Lcom/oasisfeng/greenify/engine/PackageMonitor;->a(Lccn;Landroid/content/Context;Landroid/content/BroadcastReceiver$PendingResult;)V

    return-void
.end method
