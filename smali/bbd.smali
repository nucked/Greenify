.class public Lbbd;
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

.field private b:Laxh;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbbd;->a:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lbbb;)V
    .locals 0

    invoke-direct {p0}, Lbbd;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lbbc;
    .locals 4

    new-instance v0, Lbbc;

    iget-object v1, p0, Lbbd;->a:Ljava/util/Map;

    iget-object v2, p0, Lbbd;->b:Laxh;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lbbc;-><init>(Ljava/util/Map;Laxh;Lbbb;)V

    return-object v0
.end method

.method public a(Laxh;)Lbbd;
    .locals 0

    iput-object p1, p0, Lbbd;->b:Laxh;

    return-object p0
.end method

.method public a(Ljava/lang/String;Laxh;)Lbbd;
    .locals 1

    iget-object v0, p0, Lbbd;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
