.class public Laqq;
.super Lasf;


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lcom/google/android/gms/common/api/internal/SupportLifecycleFragmentImpl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/SupportLifecycleFragmentImpl;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Laqq;->b:Lcom/google/android/gms/common/api/internal/SupportLifecycleFragmentImpl;

    iput-object p2, p0, Laqq;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Lasf;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    iget-object v0, p0, Laqq;->b:Lcom/google/android/gms/common/api/internal/SupportLifecycleFragmentImpl;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/SupportLifecycleFragmentImpl;->M()V

    iget-object v0, p0, Laqq;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
