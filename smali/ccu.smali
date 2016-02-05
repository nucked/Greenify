.class final synthetic Lccu;
.super Ljava/lang/Object;

# interfaces
.implements Lbku;


# instance fields
.field private final a:Landroid/app/usage/UsageStatsManager;


# direct methods
.method private constructor <init>(Landroid/app/usage/UsageStatsManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lccu;->a:Landroid/app/usage/UsageStatsManager;

    return-void
.end method

.method public static a(Landroid/app/usage/UsageStatsManager;)Lbku;
    .locals 1

    new-instance v0, Lccu;

    invoke-direct {v0, p0}, Lccu;-><init>(Landroid/app/usage/UsageStatsManager;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Z
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lccu;->a:Landroid/app/usage/UsageStatsManager;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/app/usage/UsageStatsManager;->isAppInactive(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
