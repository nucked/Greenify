.class public final Lciu;
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
        "Lcom/oasisfeng/nevo/StatusBarNotificationEvo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/oasisfeng/nevo/StatusBarNotificationEvo;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 168
    invoke-static {}, Lcom/oasisfeng/nevo/StatusBarNotificationEvo;->b()I

    move-result v2

    if-ne v1, v2, :cond_0

    new-instance v0, Lcom/oasisfeng/nevo/StatusBarNotificationEvo;

    invoke-direct {v0, p1, v3}, Lcom/oasisfeng/nevo/StatusBarNotificationEvo;-><init>(Landroid/os/Parcel;Lciu;)V

    .line 171
    :goto_0
    return-object v0

    .line 170
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 171
    new-instance v0, Lcom/oasisfeng/nevo/StatusBarNotificationEvo;

    invoke-direct {v0, p1, v3, v3}, Lcom/oasisfeng/nevo/StatusBarNotificationEvo;-><init>(Landroid/os/Parcel;Lcil;Lciu;)V

    goto :goto_0
.end method

.method public a(I)[Lcom/oasisfeng/nevo/StatusBarNotificationEvo;
    .locals 1

    .prologue
    .line 174
    new-array v0, p1, [Lcom/oasisfeng/nevo/StatusBarNotificationEvo;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 162
    invoke-virtual {p0, p1}, Lciu;->a(Landroid/os/Parcel;)Lcom/oasisfeng/nevo/StatusBarNotificationEvo;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 162
    invoke-virtual {p0, p1}, Lciu;->a(I)[Lcom/oasisfeng/nevo/StatusBarNotificationEvo;

    move-result-object v0

    return-object v0
.end method
