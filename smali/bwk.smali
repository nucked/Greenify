.class public final Lbwk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator",
        "<",
        "Lcom/oasisfeng/android/os/ParcelableReference;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/oasisfeng/android/os/ParcelableReference;
    .locals 2

    .prologue
    .line 49
    new-instance v0, Lcom/oasisfeng/android/os/ParcelableReference;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/oasisfeng/android/os/ParcelableReference;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/oasisfeng/android/os/ParcelableReference;
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/oasisfeng/android/os/ParcelableReference;

    invoke-direct {v0, p1, p2}, Lcom/oasisfeng/android/os/ParcelableReference;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public a(I)[Lcom/oasisfeng/android/os/ParcelableReference;
    .locals 1

    .prologue
    .line 51
    new-array v0, p1, [Lcom/oasisfeng/android/os/ParcelableReference;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lbwk;->a(Landroid/os/Parcel;)Lcom/oasisfeng/android/os/ParcelableReference;

    move-result-object v0

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0, p1, p2}, Lbwk;->a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/oasisfeng/android/os/ParcelableReference;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lbwk;->a(I)[Lcom/oasisfeng/android/os/ParcelableReference;

    move-result-object v0

    return-object v0
.end method
