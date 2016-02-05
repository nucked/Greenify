.class final synthetic Lbze;
.super Ljava/lang/Object;

# interfaces
.implements Lbku;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/content/ComponentName;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbze;->a:Landroid/content/Context;

    iput-object p2, p0, Lbze;->b:Landroid/content/ComponentName;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/ComponentName;)Lbku;
    .locals 1

    new-instance v0, Lbze;

    invoke-direct {v0, p0, p1}, Lbze;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Z
    .locals 2
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lbze;->a:Landroid/content/Context;

    iget-object v1, p0, Lbze;->b:Landroid/content/ComponentName;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lbzb;->a(Landroid/content/Context;Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
