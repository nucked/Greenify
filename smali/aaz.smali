.class Laaz;
.super Lzj;
.source "SourceFile"


# instance fields
.field final synthetic a:Laaw;


# direct methods
.method private constructor <init>(Laaw;)V
    .locals 0

    .prologue
    .line 788
    iput-object p1, p0, Laaz;->a:Laaw;

    invoke-direct {p0}, Lzj;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Laaw;Laax;)V
    .locals 0

    .prologue
    .line 788
    invoke-direct {p0, p1}, Laaz;-><init>(Laaw;)V

    return-void
.end method


# virtual methods
.method public a()Ladz;
    .locals 1

    .prologue
    .line 791
    iget-object v0, p0, Laaz;->a:Laaw;

    invoke-static {v0}, Laaw;->i(Laaw;)Laay;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Laaz;->a:Laaw;

    invoke-static {v0}, Laaw;->i(Laaw;)Laay;

    move-result-object v0

    invoke-virtual {v0}, Laay;->c()Ladz;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
