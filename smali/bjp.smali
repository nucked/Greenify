.class Lbjp;
.super Ljava/lang/Object;

# interfaces
.implements Lbfm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbfm",
        "<",
        "Lbay;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbjl;


# direct methods
.method private constructor <init>(Lbjl;)V
    .locals 0

    iput-object p1, p0, Lbjp;->a:Lbjl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lbjl;Lbjm;)V
    .locals 0

    invoke-direct {p0, p1}, Lbjp;-><init>(Lbjl;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Lbay;)V
    .locals 5

    iget-object v0, p1, Lbay;->c:Laxf;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lbay;->c:Laxf;

    :goto_0
    iget-object v1, p0, Lbjp;->a:Lbjl;

    iget-wide v2, p1, Lbay;->a:J

    const/4 v4, 0x1

    invoke-static {v1, v0, v2, v3, v4}, Lbjl;->a(Lbjl;Laxf;JZ)V

    return-void

    :cond_0
    iget-object v1, p1, Lbay;->b:Laxb;

    new-instance v0, Laxf;

    invoke-direct {v0}, Laxf;-><init>()V

    iput-object v1, v0, Laxf;->b:Laxb;

    const/4 v2, 0x0

    iput-object v2, v0, Laxf;->a:[Laxe;

    iget-object v1, v1, Laxb;->l:Ljava/lang/String;

    iput-object v1, v0, Laxf;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public a(Lbfn;)V
    .locals 4

    iget-object v0, p0, Lbjp;->a:Lbjl;

    invoke-static {v0}, Lbjl;->d(Lbjl;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbjp;->a:Lbjl;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lbjl;->a(Lbjl;J)V

    :cond_0
    return-void
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lbay;

    invoke-virtual {p0, p1}, Lbjp;->a(Lbay;)V

    return-void
.end method
