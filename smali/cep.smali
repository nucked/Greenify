.class public final synthetic Lcep;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;

.field private final b:Landroid/content/Intent;


# direct methods
.method private constructor <init>(Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcep;->a:Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;

    iput-object p2, p0, Lcep;->b:Landroid/content/Intent;

    return-void
.end method

.method public static a(Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;Landroid/content/Intent;)Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lcep;

    invoke-direct {v0, p0, p1}, Lcep;-><init>(Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;Landroid/content/Intent;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcep;->a:Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;

    iget-object v1, p0, Lcep;->b:Landroid/content/Intent;

    invoke-static {v0, v1, p1}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->a(Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;Landroid/content/Intent;Landroid/view/View;)V

    return-void
.end method
