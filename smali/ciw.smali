.class public abstract Lciw;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lciv;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.oasisfeng.nevo.decorator.INevoDecorator"

    invoke-virtual {p0, p0, v0}, Lciw;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lciv;
    .locals 2

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    .line 27
    :cond_0
    const-string v0, "com.oasisfeng.nevo.decorator.INevoDecorator"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    if-eqz v0, :cond_1

    instance-of v1, v0, Lciv;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lciv;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Lcix;

    invoke-direct {v0, p0}, Lcix;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 120
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 43
    :sswitch_0
    const-string v0, "com.oasisfeng.nevo.decorator.INevoDecorator"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v3

    .line 44
    goto :goto_0

    .line 48
    :sswitch_1
    const-string v0, "com.oasisfeng.nevo.decorator.INevoDecorator"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcjc;->a(Landroid/os/IBinder;)Lcjb;

    move-result-object v2

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 58
    :goto_1
    invoke-virtual {p0, v2, v0}, Lciw;->a(Lcjb;Landroid/os/Bundle;)I

    move-result v0

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v3

    .line 61
    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 56
    goto :goto_1

    .line 65
    :sswitch_2
    const-string v0, "com.oasisfeng.nevo.decorator.INevoDecorator"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    sget-object v0, Lcom/oasisfeng/nevo/StatusBarNotificationEvo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oasisfeng/nevo/StatusBarNotificationEvo;

    move-object v2, v0

    .line 74
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 75
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 80
    :goto_3
    invoke-virtual {p0, v2, v0}, Lciw;->a(Lcom/oasisfeng/nevo/StatusBarNotificationEvo;Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v3

    .line 82
    goto :goto_0

    :cond_1
    move-object v2, v1

    .line 71
    goto :goto_2

    :cond_2
    move-object v0, v1

    .line 78
    goto :goto_3

    .line 86
    :sswitch_3
    const-string v0, "com.oasisfeng.nevo.decorator.INevoDecorator"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    .line 91
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 96
    :goto_4
    invoke-virtual {p0, v2, v0}, Lciw;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    move v0, v3

    .line 97
    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 94
    goto :goto_4

    .line 101
    :sswitch_4
    const-string v0, "com.oasisfeng.nevo.decorator.INevoDecorator"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    .line 104
    sget-object v0, Lcom/oasisfeng/nevo/StatusBarNotificationEvo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oasisfeng/nevo/StatusBarNotificationEvo;

    move-object v2, v0

    .line 110
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    .line 111
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 116
    :goto_6
    invoke-virtual {p0, v2, v0}, Lciw;->b(Lcom/oasisfeng/nevo/StatusBarNotificationEvo;Landroid/os/Bundle;)V

    move v0, v3

    .line 117
    goto/16 :goto_0

    :cond_4
    move-object v2, v1

    .line 107
    goto :goto_5

    :cond_5
    move-object v0, v1

    .line 114
    goto :goto_6

    .line 39
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
