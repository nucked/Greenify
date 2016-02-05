.class public final synthetic Lcfe;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Landroid/app/Application;


# direct methods
.method private constructor <init>(Landroid/app/Application;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcfe;->a:Landroid/app/Application;

    return-void
.end method

.method public static a(Landroid/app/Application;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcfe;

    invoke-direct {v0, p0}, Lcfe;-><init>(Landroid/app/Application;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcfe;->a:Landroid/app/Application;

    invoke-static {v0}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->a(Landroid/app/Application;)V

    return-void
.end method
