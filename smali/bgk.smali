.class Lbgk;
.super Lbem;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Laxh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lawt;->x:Lawt;

    invoke-virtual {v0}, Lawt;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbgk;->a:Ljava/lang/String;

    const-string v0, "Android"

    invoke-static {v0}, Lbip;->e(Ljava/lang/Object;)Laxh;

    move-result-object v0

    sput-object v0, Lbgk;->b:Laxh;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    sget-object v0, Lbgk;->a:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lbem;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

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

    sget-object v0, Lbgk;->b:Laxh;

    return-object v0
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
