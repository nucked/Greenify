.class public final Lciq;
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
        "Lcom/oasisfeng/nevo/StatusBarNotificationCompat;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/oasisfeng/nevo/StatusBarNotificationCompat;
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lcom/oasisfeng/nevo/StatusBarNotificationCompat;

    invoke-direct {v0, p1}, Lcom/oasisfeng/nevo/StatusBarNotificationCompat;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/oasisfeng/nevo/StatusBarNotificationCompat;
    .locals 1

    .prologue
    .line 65
    new-array v0, p1, [Lcom/oasisfeng/nevo/StatusBarNotificationCompat;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lciq;->a(Landroid/os/Parcel;)Lcom/oasisfeng/nevo/StatusBarNotificationCompat;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lciq;->a(I)[Lcom/oasisfeng/nevo/StatusBarNotificationCompat;

    move-result-object v0

    return-object v0
.end method
