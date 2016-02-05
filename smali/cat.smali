.class public final synthetic Lcat;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/oasisfeng/greenify/HibernationRestrictedService;


# direct methods
.method private constructor <init>(Lcom/oasisfeng/greenify/HibernationRestrictedService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcat;->a:Lcom/oasisfeng/greenify/HibernationRestrictedService;

    return-void
.end method

.method public static a(Lcom/oasisfeng/greenify/HibernationRestrictedService;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcat;

    invoke-direct {v0, p0}, Lcat;-><init>(Lcom/oasisfeng/greenify/HibernationRestrictedService;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcat;->a:Lcom/oasisfeng/greenify/HibernationRestrictedService;

    invoke-static {v0}, Lcom/oasisfeng/greenify/HibernationRestrictedService;->f(Lcom/oasisfeng/greenify/HibernationRestrictedService;)V

    return-void
.end method
