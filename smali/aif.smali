.class Laif;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Laie;


# direct methods
.method constructor <init>(Laie;)V
    .locals 0

    iput-object p1, p0, Laif;->a:Laie;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Laif;->a:Laie;

    iget-object v0, v0, Laie;->d:Lcom/google/android/gms/analytics/AnalyticsService;

    iget-object v1, p0, Laif;->a:Laie;

    iget v1, v1, Laie;->a:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/AnalyticsService;->stopSelfResult(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Laif;->a:Laie;

    iget-object v0, v0, Laie;->b:Lakh;

    invoke-virtual {v0}, Lakh;->e()Lalh;

    move-result-object v0

    invoke-virtual {v0}, Lalh;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Laif;->a:Laie;

    iget-object v0, v0, Laie;->c:Lajk;

    const-string v1, "Device AnalyticsService processed last dispatch request"

    invoke-virtual {v0, v1}, Lajk;->b(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Laif;->a:Laie;

    iget-object v0, v0, Laie;->c:Lajk;

    const-string v1, "Local AnalyticsService processed last dispatch request"

    invoke-virtual {v0, v1}, Lajk;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
