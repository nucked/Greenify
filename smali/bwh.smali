.class public abstract Lbwh;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lbwg;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.oasisfeng.android.os.IBundle"

    invoke-virtual {p0, p0, v0}, Lbwh;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lbwg;
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
    const-string v0, "com.oasisfeng.android.os.IBundle"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    instance-of v1, v0, Lbwg;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lbwg;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lbwi;

    invoke-direct {v0, p0}, Lbwi;-><init>(Landroid/os/IBinder;)V

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
    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 412
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 42
    :sswitch_0
    const-string v0, "com.oasisfeng.android.os.IBundle"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v0, "com.oasisfeng.android.os.IBundle"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lbwh;->a()V

    goto :goto_0

    .line 53
    :sswitch_2
    const-string v0, "com.oasisfeng.android.os.IBundle"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-virtual {p0, v0}, Lbwh;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :sswitch_3
    const-string v2, "com.oasisfeng.android.os.IBundle"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    .line 66
    :cond_0
    invoke-virtual {p0, v2, v0}, Lbwh;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 71
    :sswitch_4
    const-string v0, "com.oasisfeng.android.os.IBundle"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 76
    invoke-virtual {p0, v0, v2}, Lbwh;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 81
    :sswitch_5
    const-string v0, "com.oasisfeng.android.os.IBundle"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 86
    invoke-virtual {p0, v0, v2, v3}, Lbwh;->a(Ljava/lang/String;J)V

    goto :goto_0

    .line 91
    :sswitch_6
    const-string v0, "com.oasisfeng.android.os.IBundle"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    .line 96
    invoke-virtual {p0, v0, v2, v3}, Lbwh;->a(Ljava/lang/String;D)V

    goto :goto_0

    .line 101
    :sswitch_7
    const-string v0, "com.oasisfeng.android.os.IBundle"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v2

    .line 106
    invoke-virtual {p0, v0, v2}, Lbwh;->a(Ljava/lang/String;[Z)V

    goto :goto_0

    .line 111
    :sswitch_8
    const-string v0, "com.oasisfeng.android.os.IBundle"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 116
    invoke-virtual {p0, v0, v2}, Lbwh;->a(Ljava/lang/String;[I)V

    goto/16 :goto_0

    .line 121
    :sswitch_9
    const-string v0, "com.oasisfeng.android.os.IBundle"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v2

    .line 126
    invoke-virtual {p0, v0, v2}, Lbwh;->a(Ljava/lang/String;[J)V

    goto/16 :goto_0

    .line 131
    :sswitch_a
    const-string v0, "com.oasisfeng.android.os.IBundle"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->createDoubleArray()[D

    move-result-object v2

    .line 136
    invoke-virtual {p0, v0, v2}, Lbwh;->a(Ljava/lang/String;[D)V

    goto/16 :goto_0

    .line 141
    :sswitch_b
    const-string v0, "com.oasisfeng.android.os.IBundle"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    sget-object v0, Lcom/oasisfeng/android/os/ParcelableReference;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oasisfeng/android/os/ParcelableReference;

    .line 151
    :goto_1
    invoke-virtual {p0, v3, v0}, Lbwh;->a(Ljava/lang/String;Lcom/oasisfeng/android/os/ParcelableReference;)V

    goto/16 :goto_0

    :cond_1
    move-object v0, v2

    .line 149
    goto :goto_1

    .line 156
    :sswitch_c
    const-string v0, "com.oasisfeng.android.os.IBundle"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 161
    invoke-virtual {p0, v0, v2}, Lbwh;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 166
    :sswitch_d
    const-string v0, "com.oasisfeng.android.os.IBundle"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 171
    invoke-virtual {p0, v0, v2}, Lbwh;->a(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 176
    :sswitch_e
    const-string v0, "com.oasisfeng.android.os.IBundle"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 181
    invoke-virtual {p0, v0, v2}, Lbwh;->a(Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_0

    .line 186
    :sswitch_f
    const-string v0, "com.oasisfeng.android.os.IBundle"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 190
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 191
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 196
    :goto_2
    invoke-virtual {p0, v3, v0}, Lbwh;->a(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_2
    move-object v0, v2

    .line 194
    goto :goto_2

    .line 201
    :sswitch_10
    const-string v0, "com.oasisfeng.android.os.IBundle"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 205
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 206
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v2

    .line 207
    invoke-virtual {p0, v0, v2}, Lbwh;->b(Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_0

    .line 212
    :sswitch_11
    const-string v0, "com.oasisfeng.android.os.IBundle"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 216
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 217
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v2

    .line 218
    invoke-virtual {p0, v0, v2}, Lbwh;->c(Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_0

    .line 223
    :sswitch_12
    const-string v2, "com.oasisfeng.android.os.IBundle"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 227
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    move v2, v1

    .line 228
    :goto_3
    invoke-virtual {p0, v3, v2}, Lbwh;->b(Ljava/lang/String;Z)Z

    move-result v2

    .line 229
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    if-eqz v2, :cond_3

    move v0, v1

    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_4
    move v2, v0

    .line 227
    goto :goto_3

    .line 235
    :sswitch_13
    const-string v0, "com.oasisfeng.android.os.IBundle"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 239
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 240
    invoke-virtual {p0, v0, v2}, Lbwh;->b(Ljava/lang/String;I)I

    move-result v0

    .line 241
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 247
    :sswitch_14
    const-string v0, "com.oasisfeng.android.os.IBundle"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 251
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 252
    invoke-virtual {p0, v0, v2, v3}, Lbwh;->b(Ljava/lang/String;J)J

    move-result-wide v2

    .line 253
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 259
    :sswitch_15
    const-string v0, "com.oasisfeng.android.os.IBundle"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 263
    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    .line 264
    invoke-virtual {p0, v0, v2, v3}, Lbwh;->b(Ljava/lang/String;D)D

    move-result-wide v2

    .line 265
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeDouble(D)V

    goto/16 :goto_0

    .line 271
    :sswitch_16
    const-string v0, "com.oasisfeng.android.os.IBundle"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 274
    invoke-virtual {p0, v0}, Lbwh;->b(Ljava/lang/String;)[Z

    move-result-object v0

    .line 275
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    goto/16 :goto_0

    .line 281
    :sswitch_17
    const-string v0, "com.oasisfeng.android.os.IBundle"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 284
    invoke-virtual {p0, v0}, Lbwh;->c(Ljava/lang/String;)[I

    move-result-object v0

    .line 285
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 286
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    .line 291
    :sswitch_18
    const-string v0, "com.oasisfeng.android.os.IBundle"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 293
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 294
    invoke-virtual {p0, v0}, Lbwh;->d(Ljava/lang/String;)[J

    move-result-object v0

    .line 295
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    goto/16 :goto_0

    .line 301
    :sswitch_19
    const-string v0, "com.oasisfeng.android.os.IBundle"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 303
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 304
    invoke-virtual {p0, v0}, Lbwh;->e(Ljava/lang/String;)[D

    move-result-object v0

    .line 305
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 306
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeDoubleArray([D)V

    goto/16 :goto_0

    .line 311
    :sswitch_1a
    const-string v2, "com.oasisfeng.android.os.IBundle"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 313
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 314
    invoke-virtual {p0, v2}, Lbwh;->f(Ljava/lang/String;)Lcom/oasisfeng/android/os/ParcelableReference;

    move-result-object v2

    .line 315
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    if-eqz v2, :cond_5

    .line 317
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 318
    invoke-virtual {v2, p3, v1}, Lcom/oasisfeng/android/os/ParcelableReference;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 321
    :cond_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 327
    :sswitch_1b
    const-string v0, "com.oasisfeng.android.os.IBundle"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 329
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 330
    invoke-virtual {p0, v0}, Lbwh;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 331
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 332
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 337
    :sswitch_1c
    const-string v0, "com.oasisfeng.android.os.IBundle"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 340
    invoke-virtual {p0, v0}, Lbwh;->i(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 341
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 342
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 347
    :sswitch_1d
    const-string v0, "com.oasisfeng.android.os.IBundle"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 349
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 350
    invoke-virtual {p0, v0}, Lbwh;->j(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 351
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 352
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 357
    :sswitch_1e
    const-string v2, "com.oasisfeng.android.os.IBundle"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 359
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 360
    invoke-virtual {p0, v2}, Lbwh;->k(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 361
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 362
    if-eqz v2, :cond_6

    .line 363
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 364
    invoke-static {v2, p3, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 367
    :cond_6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 373
    :sswitch_1f
    const-string v0, "com.oasisfeng.android.os.IBundle"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 375
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 376
    invoke-virtual {p0, v0}, Lbwh;->l(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 377
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 378
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 383
    :sswitch_20
    const-string v0, "com.oasisfeng.android.os.IBundle"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 385
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 386
    invoke-virtual {p0, v0}, Lbwh;->m(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 387
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 388
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 393
    :sswitch_21
    const-string v2, "com.oasisfeng.android.os.IBundle"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 395
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 396
    invoke-virtual {p0, v2}, Lbwh;->n(Ljava/lang/String;)Z

    move-result v2

    .line 397
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 398
    if-eqz v2, :cond_7

    move v0, v1

    :cond_7
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 403
    :sswitch_22
    const-string v0, "com.oasisfeng.android.os.IBundle"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 405
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 406
    invoke-virtual {p0, v0}, Lbwh;->o(Ljava/lang/String;)Lbwg;

    move-result-object v0

    .line 407
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 408
    if-eqz v0, :cond_8

    invoke-interface {v0}, Lbwg;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :cond_8
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

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
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
