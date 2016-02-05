.class final synthetic Lcbu;
.super Ljava/lang/Object;

# interfaces
.implements Lbku;


# instance fields
.field private final a:Ljava/util/Collection;


# direct methods
.method private constructor <init>(Ljava/util/Collection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcbu;->a:Ljava/util/Collection;

    return-void
.end method

.method public static a(Ljava/util/Collection;)Lbku;
    .locals 1

    new-instance v0, Lcbu;

    invoke-direct {v0, p0}, Lcbu;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Z
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcbu;->a:Ljava/util/Collection;

    check-cast p1, Landroid/app/ActivityManager$RunningServiceInfo;

    invoke-static {v0, p1}, Lcbs;->a(Ljava/util/Collection;Landroid/app/ActivityManager$RunningServiceInfo;)Z

    move-result v0

    return v0
.end method
