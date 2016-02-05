.class Lbxx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lbxt;


# direct methods
.method constructor <init>(Lbxt;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 650
    iput-object p1, p0, Lbxx;->b:Lbxt;

    iput-object p2, p0, Lbxx;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 651
    iget-object v0, p0, Lbxx;->a:Landroid/app/Activity;

    invoke-static {v0}, Lbvs;->a(Landroid/content/Context;)Lbvt;

    move-result-object v0

    const-string v1, "safe_dump"

    invoke-interface {v0, v1}, Lbvt;->b(Ljava/lang/String;)Z

    .line 652
    invoke-static {}, Lcbd;->a()Lcbd;

    move-result-object v0

    sget-object v1, Lcbi;->o:Lcbi;

    const-string v2, "DumpTimeout"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcbd;->a(Lcbi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcbd;

    .line 653
    return-void
.end method
