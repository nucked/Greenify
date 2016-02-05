.class public final Lbwb;
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
        "Lcom/oasisfeng/android/content/pm/ParceledListSlice;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/oasisfeng/android/content/pm/ParceledListSlice;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 201
    new-instance v0, Lcom/oasisfeng/android/content/pm/ParceledListSlice;

    invoke-direct {v0, p1, v1, v1}, Lcom/oasisfeng/android/content/pm/ParceledListSlice;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;Lbwa;)V

    return-object v0
.end method

.method public a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/oasisfeng/android/content/pm/ParceledListSlice;
    .locals 2

    .prologue
    .line 206
    new-instance v0, Lcom/oasisfeng/android/content/pm/ParceledListSlice;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/oasisfeng/android/content/pm/ParceledListSlice;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;Lbwa;)V

    return-object v0
.end method

.method public a(I)[Lcom/oasisfeng/android/content/pm/ParceledListSlice;
    .locals 1

    .prologue
    .line 210
    new-array v0, p1, [Lcom/oasisfeng/android/content/pm/ParceledListSlice;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 199
    invoke-virtual {p0, p1}, Lbwb;->a(Landroid/os/Parcel;)Lcom/oasisfeng/android/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 199
    invoke-virtual {p0, p1, p2}, Lbwb;->a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/oasisfeng/android/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 199
    invoke-virtual {p0, p1}, Lbwb;->a(I)[Lcom/oasisfeng/android/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0
.end method
