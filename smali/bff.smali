.class Lbff;
.super Lbem;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lbdy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lawt;->a:Lawt;

    invoke-virtual {v0}, Lawt;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbff;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Lbdy;->a(Landroid/content/Context;)Lbdy;

    move-result-object v0

    invoke-direct {p0, v0}, Lbff;-><init>(Lbdy;)V

    return-void
.end method

.method constructor <init>(Lbdy;)V
    .locals 2

    sget-object v0, Lbff;->a:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lbem;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    iput-object p1, p0, Lbff;->b:Lbdy;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;)Laxh;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Laxh;",
            ">;)",
            "Laxh;"
        }
    .end annotation

    iget-object v0, p0, Lbff;->b:Lbdy;

    invoke-virtual {v0}, Lbdy;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lbip;->f()Laxh;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lbip;->e(Ljava/lang/Object;)Laxh;

    move-result-object v0

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
