.class public final synthetic Lcfa;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final a:Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;


# direct methods
.method private constructor <init>(Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcfa;->a:Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;

    return-void
.end method

.method public static a(Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;)Landroid/preference/Preference$OnPreferenceChangeListener;
    .locals 1

    new-instance v0, Lcfa;

    invoke-direct {v0, p0}, Lcfa;-><init>(Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;)V

    return-object v0
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcfa;->a:Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;

    invoke-static {v0, p1, p2}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->d(Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;Landroid/preference/Preference;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
