.class public final synthetic Lcaq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# instance fields
.field private final a:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcaq;->a:Ljava/lang/Runnable;

    return-void
.end method

.method public static a(Ljava/lang/Runnable;)Landroid/os/MessageQueue$IdleHandler;
    .locals 1

    new-instance v0, Lcaq;

    invoke-direct {v0, p0}, Lcaq;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method


# virtual methods
.method public queueIdle()Z
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcaq;->a:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/oasisfeng/greenify/GreenifyApplication;->d(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method
