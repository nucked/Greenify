.class public final Lbvz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/oasisfeng/android/content/IntentFilters$FluentIntentFilter;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/oasisfeng/android/content/IntentFilters$FluentIntentFilter;
    .locals 2

    .prologue
    .line 31
    new-instance v1, Lcom/oasisfeng/android/content/IntentFilters$FluentIntentFilter;

    sget-object v0, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/IntentFilter;

    invoke-direct {v1, v0}, Lcom/oasisfeng/android/content/IntentFilters$FluentIntentFilter;-><init>(Landroid/content/IntentFilter;)V

    return-object v1
.end method

.method public a(I)[Lcom/oasisfeng/android/content/IntentFilters$FluentIntentFilter;
    .locals 1

    .prologue
    .line 33
    new-array v0, p1, [Lcom/oasisfeng/android/content/IntentFilters$FluentIntentFilter;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lbvz;->a(Landroid/os/Parcel;)Lcom/oasisfeng/android/content/IntentFilters$FluentIntentFilter;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lbvz;->a(I)[Lcom/oasisfeng/android/content/IntentFilters$FluentIntentFilter;

    move-result-object v0

    return-object v0
.end method
