.class public final synthetic Lceq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;

.field private final b:Landroid/preference/Preference;


# direct methods
.method private constructor <init>(Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;Landroid/preference/Preference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lceq;->a:Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;

    iput-object p2, p0, Lceq;->b:Landroid/preference/Preference;

    return-void
.end method

.method public static a(Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;Landroid/preference/Preference;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lceq;

    invoke-direct {v0, p0, p1}, Lceq;-><init>(Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;Landroid/preference/Preference;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lceq;->a:Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;

    iget-object v1, p0, Lceq;->b:Landroid/preference/Preference;

    invoke-static {v0, v1}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->a(Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;Landroid/preference/Preference;)V

    return-void
.end method
