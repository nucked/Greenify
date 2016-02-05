.class public abstract Lcjc;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcjb;


# direct methods
.method public static a(Landroid/os/IBinder;)Lcjb;
    .locals 2

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v0, "com.oasisfeng.nevo.engine.INevoController"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcjb;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcjb;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcjd;

    invoke-direct {v0, p0}, Lcjd;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 120
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 42
    :sswitch_0
    const-string v1, "com.oasisfeng.nevo.engine.INevoController"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v1, "com.oasisfeng.nevo.engine.INevoController"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lciw;->a(Landroid/os/IBinder;)Lciv;

    move-result-object v1

    .line 50
    invoke-virtual {p0, v1}, Lcjc;->a(Lciv;)Lcom/oasisfeng/android/content/pm/ParceledListSlice;

    move-result-object v1

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    if-eqz v1, :cond_0

    .line 53
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    invoke-virtual {v1, p3, v0}, Lcom/oasisfeng/android/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 63
    :sswitch_2
    const-string v1, "com.oasisfeng.nevo.engine.INevoController"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lciw;->a(Landroid/os/IBinder;)Lciv;

    move-result-object v1

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 70
    invoke-virtual {p0, v1, v2, v3}, Lcjc;->a(Lciv;Ljava/lang/String;I)Lcom/oasisfeng/android/content/pm/ParceledListSlice;

    move-result-object v1

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    if-eqz v1, :cond_1

    .line 73
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    invoke-virtual {v1, p3, v0}, Lcom/oasisfeng/android/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 77
    :cond_1
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 83
    :sswitch_3
    const-string v1, "com.oasisfeng.nevo.engine.INevoController"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lciw;->a(Landroid/os/IBinder;)Lciv;

    move-result-object v1

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 88
    invoke-virtual {p0, v1, v2}, Lcjc;->a(Lciv;Ljava/util/List;)Lcom/oasisfeng/android/content/pm/ParceledListSlice;

    move-result-object v1

    .line 89
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    if-eqz v1, :cond_2

    .line 91
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    invoke-virtual {v1, p3, v0}, Lcom/oasisfeng/android/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 95
    :cond_2
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 101
    :sswitch_4
    const-string v1, "com.oasisfeng.nevo.engine.INevoController"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lciw;->a(Landroid/os/IBinder;)Lciv;

    move-result-object v1

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 106
    invoke-virtual {p0, v1, v2}, Lcjc;->a(Lciv;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 111
    :sswitch_5
    const-string v1, "com.oasisfeng.nevo.engine.INevoController"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lciw;->a(Landroid/os/IBinder;)Lciv;

    move-result-object v1

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 116
    invoke-virtual {p0, v1, v2}, Lcjc;->b(Lciv;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
