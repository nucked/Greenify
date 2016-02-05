.class public final synthetic Lcfc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final a:Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;


# direct methods
.method private constructor <init>(Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcfc;->a:Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;

    return-void
.end method

.method public static a(Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    new-instance v0, Lcfc;

    invoke-direct {v0, p0}, Lcfc;-><init>(Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcfc;->a:Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;

    invoke-static {v0, p1, p2}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->a(Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;Landroid/content/DialogInterface;I)V

    return-void
.end method
