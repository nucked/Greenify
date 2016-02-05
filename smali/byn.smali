.class public final synthetic Lbyn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/oasisfeng/greenify/CleanerService;


# direct methods
.method private constructor <init>(Lcom/oasisfeng/greenify/CleanerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbyn;->a:Lcom/oasisfeng/greenify/CleanerService;

    return-void
.end method

.method public static a(Lcom/oasisfeng/greenify/CleanerService;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lbyn;

    invoke-direct {v0, p0}, Lbyn;-><init>(Lcom/oasisfeng/greenify/CleanerService;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lbyn;->a:Lcom/oasisfeng/greenify/CleanerService;

    invoke-static {v0}, Lcom/oasisfeng/greenify/CleanerService;->d(Lcom/oasisfeng/greenify/CleanerService;)V

    return-void
.end method
