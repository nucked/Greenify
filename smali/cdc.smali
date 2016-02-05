.class final synthetic Lcdc;
.super Ljava/lang/Object;

# interfaces
.implements Lbli;


# instance fields
.field private final a:Lccz;

.field private final b:Landroid/content/Context;


# direct methods
.method private constructor <init>(Lccz;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcdc;->a:Lccz;

    iput-object p2, p0, Lcdc;->b:Landroid/content/Context;

    return-void
.end method

.method public static a(Lccz;Landroid/content/Context;)Lbli;
    .locals 1

    new-instance v0, Lcdc;

    invoke-direct {v0, p0, p1}, Lcdc;-><init>(Lccz;Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcdc;->a:Lccz;

    iget-object v1, p0, Lcdc;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lccz;->a(Lccz;Landroid/content/Context;)Lapz;

    move-result-object v0

    return-object v0
.end method
