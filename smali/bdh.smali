.class Lbdh;
.super Ljava/lang/Object;

# interfaces
.implements Lbjy;


# instance fields
.field final synthetic a:Lbdc;


# direct methods
.method private constructor <init>(Lbdc;)V
    .locals 0

    iput-object p1, p0, Lbdh;->a:Lbdc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lbdc;Lbdd;)V
    .locals 0

    invoke-direct {p0, p1}, Lbdh;-><init>(Lbdc;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lbdh;->a:Lbdc;

    invoke-virtual {v0, p1}, Lbdc;->d(Ljava/lang/String;)Lbdf;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lbdf;->a(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    invoke-static {}, Lbip;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
