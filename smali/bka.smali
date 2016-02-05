.class Lbka;
.super Lbem;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;


# instance fields
.field private final d:Lbdk;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lawt;->i:Lawt;

    invoke-virtual {v0}, Lawt;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbka;->a:Ljava/lang/String;

    sget-object v0, Lawu;->bJ:Lawu;

    invoke-virtual {v0}, Lawu;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbka;->b:Ljava/lang/String;

    sget-object v0, Lawu;->at:Lawu;

    invoke-virtual {v0}, Lawu;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbka;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lbdk;)V
    .locals 4

    sget-object v0, Lbka;->a:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v3, Lbka;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lbem;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    iput-object p1, p0, Lbka;->d:Lbdk;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;)Laxh;
    .locals 2
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

    iget-object v1, p0, Lbka;->d:Lbdk;

    sget-object v0, Lbka;->b:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxh;

    invoke-static {v0}, Lbip;->a(Laxh;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lbdk;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lbka;->c:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxh;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lbip;->f()Laxh;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lbip;->e(Ljava/lang/Object;)Laxh;

    move-result-object v0

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
