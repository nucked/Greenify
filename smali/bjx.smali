.class Lbjx;
.super Lbem;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;


# instance fields
.field private final d:Lbjy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lawt;->s:Lawt;

    invoke-virtual {v0}, Lawt;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbjx;->a:Ljava/lang/String;

    sget-object v0, Lawu;->bc:Lawu;

    invoke-virtual {v0}, Lawu;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbjx;->b:Ljava/lang/String;

    sget-object v0, Lawu;->d:Lawu;

    invoke-virtual {v0}, Lawu;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbjx;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lbjy;)V
    .locals 4

    sget-object v0, Lbjx;->a:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v3, Lbjx;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lbem;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    iput-object p1, p0, Lbjx;->d:Lbjy;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;)Laxh;
    .locals 5
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

    sget-object v0, Lbjx;->b:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxh;

    invoke-static {v0}, Lbip;->a(Laxh;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sget-object v0, Lbjx;->c:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxh;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lbip;->e(Laxh;)Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Ljava/util/Map;

    if-nez v3, :cond_0

    const-string v0, "FunctionCallMacro: expected ADDITIONAL_PARAMS to be a map."

    invoke-static {v0}, Lbfo;->b(Ljava/lang/String;)V

    invoke-static {}, Lbip;->f()Laxh;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    :try_start_0
    iget-object v0, p0, Lbjx;->d:Lbjy;

    invoke-interface {v0, v1, v2}, Lbjy;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lbip;->e(Ljava/lang/Object;)Laxh;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Custom macro/tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " threw exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbfo;->b(Ljava/lang/String;)V

    invoke-static {}, Lbip;->f()Laxh;

    move-result-object v0

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
