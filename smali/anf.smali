.class public Lanf;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/auth/api/proxy/ProxyRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/android/gms/auth/api/proxy/ProxyRequest;Landroid/os/Parcel;I)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {p1}, Lasz;->a(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/auth/api/proxy/ProxyRequest;->k:Ljava/lang/String;

    invoke-static {p1, v1, v2, v4}, Lasz;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0x3e8

    iget v2, p0, Lcom/google/android/gms/auth/api/proxy/ProxyRequest;->j:I

    invoke-static {p1, v1, v2}, Lasz;->a(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/auth/api/proxy/ProxyRequest;->l:I

    invoke-static {p1, v1, v2}, Lasz;->a(Landroid/os/Parcel;II)V

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/auth/api/proxy/ProxyRequest;->m:J

    invoke-static {p1, v1, v2, v3}, Lasz;->a(Landroid/os/Parcel;IJ)V

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/auth/api/proxy/ProxyRequest;->n:[B

    invoke-static {p1, v1, v2, v4}, Lasz;->a(Landroid/os/Parcel;I[BZ)V

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/auth/api/proxy/ProxyRequest;->o:Landroid/os/Bundle;

    invoke-static {p1, v1, v2, v4}, Lasz;->a(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    invoke-static {p1, v0}, Lasz;->a(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/google/android/gms/auth/api/proxy/ProxyRequest;
    .locals 10

    const/4 v3, 0x0

    const/4 v7, 0x0

    invoke-static {p1}, Lasx;->b(Landroid/os/Parcel;)I

    move-result v0

    const-wide/16 v4, 0x0

    move-object v6, v7

    move-object v2, v7

    move v1, v3

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v8

    if-ge v8, v0, :cond_0

    invoke-static {p1}, Lasx;->a(Landroid/os/Parcel;)I

    move-result v8

    invoke-static {v8}, Lasx;->a(I)I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    invoke-static {p1, v8}, Lasx;->b(Landroid/os/Parcel;I)V

    goto :goto_0

    :sswitch_0
    invoke-static {p1, v8}, Lasx;->h(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :sswitch_1
    invoke-static {p1, v8}, Lasx;->d(Landroid/os/Parcel;I)I

    move-result v1

    goto :goto_0

    :sswitch_2
    invoke-static {p1, v8}, Lasx;->d(Landroid/os/Parcel;I)I

    move-result v3

    goto :goto_0

    :sswitch_3
    invoke-static {p1, v8}, Lasx;->f(Landroid/os/Parcel;I)J

    move-result-wide v4

    goto :goto_0

    :sswitch_4
    invoke-static {p1, v8}, Lasx;->k(Landroid/os/Parcel;I)[B

    move-result-object v6

    goto :goto_0

    :sswitch_5
    invoke-static {p1, v8}, Lasx;->j(Landroid/os/Parcel;I)Landroid/os/Bundle;

    move-result-object v7

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v8

    if-eq v8, v0, :cond_1

    new-instance v1, Lasy;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Overread allowed size end="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lasy;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v1

    :cond_1
    new-instance v0, Lcom/google/android/gms/auth/api/proxy/ProxyRequest;

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/auth/api/proxy/ProxyRequest;-><init>(ILjava/lang/String;IJ[BLandroid/os/Bundle;)V

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x3e8 -> :sswitch_1
    .end sparse-switch
.end method

.method public a(I)[Lcom/google/android/gms/auth/api/proxy/ProxyRequest;
    .locals 1

    new-array v0, p1, [Lcom/google/android/gms/auth/api/proxy/ProxyRequest;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lanf;->a(Landroid/os/Parcel;)Lcom/google/android/gms/auth/api/proxy/ProxyRequest;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lanf;->a(I)[Lcom/google/android/gms/auth/api/proxy/ProxyRequest;

    move-result-object v0

    return-object v0
.end method
