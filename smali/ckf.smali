.class Lckf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lckm;


# instance fields
.field final synthetic a:Lckc;

.field final synthetic b:Lckm;

.field final synthetic c:Lcke;


# direct methods
.method constructor <init>(Lcke;Lckc;Lckm;)V
    .locals 0

    .prologue
    .line 1037
    iput-object p1, p0, Lckf;->c:Lcke;

    iput-object p2, p0, Lckf;->a:Lckc;

    iput-object p3, p0, Lckf;->b:Lckm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1039
    if-nez p2, :cond_0

    iget-object v0, p0, Lckf;->c:Lcke;

    invoke-static {v0}, Lcke;->a(Lcke;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lckn;->a(Ljava/lang/String;)Z

    move-result v0

    invoke-static {p3, v0}, Lcka;->a(Ljava/util/List;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1042
    const/4 p2, -0x4

    .line 1044
    :cond_0
    iget-object v0, p0, Lckf;->c:Lcke;

    iget-object v1, p0, Lckf;->a:Lckc;

    invoke-static {v1}, Lckc;->h(Lckc;)I

    move-result v1

    invoke-static {v0, v1}, Lcke;->a(Lcke;I)I

    .line 1045
    iget-object v0, p0, Lckf;->b:Lckm;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p2, p3}, Lckm;->a(IILjava/util/List;)V

    .line 1046
    return-void
.end method
