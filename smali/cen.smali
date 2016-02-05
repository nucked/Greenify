.class public final synthetic Lcen;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final a:Lcen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcen;

    invoke-direct {v0}, Lcen;-><init>()V

    sput-object v0, Lcen;->a:Lcen;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Landroid/view/View$OnClickListener;
    .locals 1

    sget-object v0, Lcen;->a:Lcen;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    invoke-static {p1}, Lcom/oasisfeng/greenify/pro/ExperimentalFeatureSetting;->a(Landroid/view/View;)V

    return-void
.end method
