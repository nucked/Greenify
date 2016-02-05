.class public abstract Lcim;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcil;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.oasisfeng.nevo.INotification"

    invoke-virtual {p0, p0, v0}, Lcim;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcil;
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
    const-string v0, "com.oasisfeng.nevo.INotification"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcil;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcil;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcin;

    invoke-direct {v0, p0}, Lcin;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 339
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 42
    :sswitch_0
    const-string v0, "com.oasisfeng.nevo.INotification"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v0, "com.oasisfeng.nevo.INotification"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcim;->a()Landroid/app/Notification;

    move-result-object v0

    .line 49
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    invoke-virtual {v0, p3, v1}, Landroid/app/Notification;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 61
    :sswitch_2
    const-string v2, "com.oasisfeng.nevo.INotification"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcim;->b()Lbwg;

    move-result-object v2

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    if-eqz v2, :cond_1

    invoke-interface {v2}, Lbwg;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_0

    .line 69
    :sswitch_3
    const-string v0, "com.oasisfeng.nevo.INotification"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lcim;->c()Landroid/widget/RemoteViews;

    move-result-object v0

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    if-eqz v0, :cond_2

    .line 73
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    invoke-virtual {v0, p3, v1}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 77
    :cond_2
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 83
    :sswitch_4
    const-string v2, "com.oasisfeng.nevo.INotification"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    .line 86
    sget-object v0, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    .line 91
    :cond_3
    invoke-virtual {p0, v0}, Lcim;->a(Landroid/widget/RemoteViews;)V

    goto :goto_0

    .line 96
    :sswitch_5
    const-string v0, "com.oasisfeng.nevo.INotification"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lcim;->d()Z

    move-result v0

    .line 98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1

    .line 104
    :sswitch_6
    const-string v0, "com.oasisfeng.nevo.INotification"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lcim;->e()Landroid/widget/RemoteViews;

    move-result-object v0

    .line 106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    if-eqz v0, :cond_5

    .line 108
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    invoke-virtual {v0, p3, v1}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 112
    :cond_5
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 118
    :sswitch_7
    const-string v2, "com.oasisfeng.nevo.INotification"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6

    .line 121
    sget-object v0, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    .line 126
    :cond_6
    invoke-virtual {p0, v0}, Lcim;->b(Landroid/widget/RemoteViews;)V

    goto/16 :goto_0

    .line 131
    :sswitch_8
    const-string v0, "com.oasisfeng.nevo.INotification"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Lcim;->f()Z

    move-result v0

    .line 133
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    if-eqz v0, :cond_7

    move v2, v1

    :cond_7
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 139
    :sswitch_9
    const-string v0, "com.oasisfeng.nevo.INotification"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Lcim;->g()Landroid/widget/RemoteViews;

    move-result-object v0

    .line 141
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    if-eqz v0, :cond_8

    .line 143
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    invoke-virtual {v0, p3, v1}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 147
    :cond_8
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 153
    :sswitch_a
    const-string v2, "com.oasisfeng.nevo.INotification"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_9

    .line 156
    sget-object v0, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    .line 161
    :cond_9
    invoke-virtual {p0, v0}, Lcim;->c(Landroid/widget/RemoteViews;)V

    goto/16 :goto_0

    .line 166
    :sswitch_b
    const-string v0, "com.oasisfeng.nevo.INotification"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0}, Lcim;->h()I

    move-result v0

    .line 168
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 174
    :sswitch_c
    const-string v0, "com.oasisfeng.nevo.INotification"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 177
    invoke-virtual {p0, v0}, Lcim;->a(I)V

    goto/16 :goto_0

    .line 182
    :sswitch_d
    const-string v0, "com.oasisfeng.nevo.INotification"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 185
    invoke-virtual {p0, v0}, Lcim;->b(I)V

    goto/16 :goto_0

    .line 190
    :sswitch_e
    const-string v0, "com.oasisfeng.nevo.INotification"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0}, Lcim;->i()J

    move-result-wide v2

    .line 192
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 198
    :sswitch_f
    const-string v0, "com.oasisfeng.nevo.INotification"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 201
    invoke-virtual {p0, v2, v3}, Lcim;->a(J)V

    goto/16 :goto_0

    .line 206
    :sswitch_10
    const-string v0, "com.oasisfeng.nevo.INotification"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0}, Lcim;->j()I

    move-result v0

    .line 208
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 214
    :sswitch_11
    const-string v0, "com.oasisfeng.nevo.INotification"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 217
    invoke-virtual {p0, v0}, Lcim;->c(I)V

    goto/16 :goto_0

    .line 222
    :sswitch_12
    const-string v0, "com.oasisfeng.nevo.INotification"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p0}, Lcim;->k()I

    move-result v0

    .line 224
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 230
    :sswitch_13
    const-string v0, "com.oasisfeng.nevo.INotification"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 233
    invoke-virtual {p0, v0}, Lcim;->d(I)V

    goto/16 :goto_0

    .line 238
    :sswitch_14
    const-string v0, "com.oasisfeng.nevo.INotification"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p0}, Lcim;->l()Ljava/lang/String;

    move-result-object v0

    .line 240
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 246
    :sswitch_15
    const-string v0, "com.oasisfeng.nevo.INotification"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 249
    invoke-virtual {p0, v0}, Lcim;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 254
    :sswitch_16
    const-string v0, "com.oasisfeng.nevo.INotification"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p0}, Lcim;->m()I

    move-result v0

    .line 256
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 257
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 262
    :sswitch_17
    const-string v0, "com.oasisfeng.nevo.INotification"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 265
    invoke-virtual {p0, v0}, Lcim;->e(I)V

    goto/16 :goto_0

    .line 270
    :sswitch_18
    const-string v0, "com.oasisfeng.nevo.INotification"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 271
    invoke-virtual {p0}, Lcim;->n()[J

    move-result-object v0

    .line 272
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    goto/16 :goto_0

    .line 278
    :sswitch_19
    const-string v0, "com.oasisfeng.nevo.INotification"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 280
    invoke-virtual {p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    .line 281
    invoke-virtual {p0, v0}, Lcim;->a([J)V

    goto/16 :goto_0

    .line 286
    :sswitch_1a
    const-string v0, "com.oasisfeng.nevo.INotification"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p0}, Lcim;->o()Landroid/graphics/drawable/Icon;

    move-result-object v0

    .line 288
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 289
    if-eqz v0, :cond_a

    .line 290
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 291
    invoke-virtual {v0, p3, v1}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 294
    :cond_a
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 300
    :sswitch_1b
    const-string v2, "com.oasisfeng.nevo.INotification"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 302
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_b

    .line 303
    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    .line 308
    :cond_b
    invoke-virtual {p0, v0}, Lcim;->a(Landroid/graphics/drawable/Icon;)V

    goto/16 :goto_0

    .line 313
    :sswitch_1c
    const-string v0, "com.oasisfeng.nevo.INotification"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 314
    invoke-virtual {p0}, Lcim;->p()Landroid/graphics/drawable/Icon;

    move-result-object v0

    .line 315
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    if-eqz v0, :cond_c

    .line 317
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 318
    invoke-virtual {v0, p3, v1}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 321
    :cond_c
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 327
    :sswitch_1d
    const-string v2, "com.oasisfeng.nevo.INotification"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 329
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_d

    .line 330
    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    .line 335
    :cond_d
    invoke-virtual {p0, v0}, Lcim;->b(Landroid/graphics/drawable/Icon;)V

    goto/16 :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
