.class public Laih;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lajk;

.field final synthetic b:Landroid/os/Handler;

.field final synthetic c:I

.field final synthetic d:Lcom/google/android/gms/analytics/CampaignTrackingService;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/analytics/CampaignTrackingService;Lajk;Landroid/os/Handler;I)V
    .locals 0

    iput-object p1, p0, Laih;->d:Lcom/google/android/gms/analytics/CampaignTrackingService;

    iput-object p2, p0, Laih;->a:Lajk;

    iput-object p3, p0, Laih;->b:Landroid/os/Handler;

    iput p4, p0, Laih;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Laih;->d:Lcom/google/android/gms/analytics/CampaignTrackingService;

    iget-object v1, p0, Laih;->a:Lajk;

    iget-object v2, p0, Laih;->b:Landroid/os/Handler;

    iget v3, p0, Laih;->c:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/analytics/CampaignTrackingService;->a(Lajk;Landroid/os/Handler;I)V

    return-void
.end method
