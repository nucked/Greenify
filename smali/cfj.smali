.class public final synthetic Lcfj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Lcom/oasisfeng/greenify/pro/SetupGuideActivity;


# direct methods
.method private constructor <init>(Lcom/oasisfeng/greenify/pro/SetupGuideActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcfj;->a:Lcom/oasisfeng/greenify/pro/SetupGuideActivity;

    return-void
.end method

.method public static a(Lcom/oasisfeng/greenify/pro/SetupGuideActivity;)Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lcfj;

    invoke-direct {v0, p0}, Lcfj;-><init>(Lcom/oasisfeng/greenify/pro/SetupGuideActivity;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcfj;->a:Lcom/oasisfeng/greenify/pro/SetupGuideActivity;

    invoke-static {v0, p1}, Lcom/oasisfeng/greenify/pro/SetupGuideActivity;->b(Lcom/oasisfeng/greenify/pro/SetupGuideActivity;Landroid/view/View;)V

    return-void
.end method
