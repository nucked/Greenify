.class Lbdz;
.super Ljava/lang/Object;

# interfaces
.implements Lbeb;


# instance fields
.field final synthetic a:Lbdy;


# direct methods
.method constructor <init>(Lbdy;)V
    .locals 0

    iput-object p1, p0, Lbdz;->a:Lbdy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Laic;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lbdz;->a:Lbdy;

    invoke-static {v1}, Lbdy;->a(Lbdy;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Laib;->b(Landroid/content/Context;)Laic;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lapi; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Laph; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "IllegalStateException getting Advertising Id Info"

    invoke-static {v2, v1}, Lbfo;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "GooglePlayServicesRepairableException getting Advertising Id Info"

    invoke-static {v2, v1}, Lbfo;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception v1

    const-string v2, "IOException getting Ad Id Info"

    invoke-static {v2, v1}, Lbfo;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_3
    move-exception v1

    const-string v2, "GooglePlayServicesNotAvailableException getting Advertising Id Info"

    invoke-static {v2, v1}, Lbfo;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_4
    move-exception v1

    const-string v2, "Unknown exception. Could not get the Advertising Id Info."

    invoke-static {v2, v1}, Lbfo;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
