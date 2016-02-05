.class public Lbbc;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Laxh;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Laxh;


# direct methods
.method private constructor <init>(Ljava/util/Map;Laxh;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Laxh;",
            ">;",
            "Laxh;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbbc;->a:Ljava/util/Map;

    iput-object p2, p0, Lbbc;->b:Laxh;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map;Laxh;Lbbb;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lbbc;-><init>(Ljava/util/Map;Laxh;)V

    return-void
.end method

.method public static a()Lbbd;
    .locals 2

    new-instance v0, Lbbd;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbbd;-><init>(Lbbb;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Laxh;)V
    .locals 1

    iget-object v0, p0, Lbbc;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Laxh;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lbbc;->a:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public c()Laxh;
    .locals 1

    iget-object v0, p0, Lbbc;->b:Laxh;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Properties: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lbbc;->b()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pushAfterEvaluate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbbc;->b:Laxh;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
