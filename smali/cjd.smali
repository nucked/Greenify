.class Lcjd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcjb;


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p1, p0, Lcjd;->a:Landroid/os/IBinder;

    .line 128
    return-void
.end method


# virtual methods
.method public a(Lciv;)Lcom/oasisfeng/android/content/pm/ParceledListSlice;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 139
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 140
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 143
    :try_start_0
    const-string v1, "com.oasisfeng.nevo.engine.INevoController"

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 144
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lciv;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 145
    iget-object v1, p0, Lcjd;->a:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v1, v4, v2, v3, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 146
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 147
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    sget-object v0, Lcom/oasisfeng/android/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-interface {v0, v3}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oasisfeng/android/content/pm/ParceledListSlice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    :cond_0
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 156
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 158
    return-object v0

    :cond_1
    move-object v1, v0

    .line 144
    goto :goto_0

    .line 155
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 156
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public a(Lciv;Ljava/lang/String;I)Lcom/oasisfeng/android/content/pm/ParceledListSlice;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 162
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 163
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 166
    :try_start_0
    const-string v1, "com.oasisfeng.nevo.engine.INevoController"

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 167
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lciv;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 168
    invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    iget-object v1, p0, Lcjd;->a:Landroid/os/IBinder;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-interface {v1, v4, v2, v3, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 171
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 172
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    sget-object v0, Lcom/oasisfeng/android/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-interface {v0, v3}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oasisfeng/android/content/pm/ParceledListSlice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    :cond_0
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 181
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 183
    return-object v0

    :cond_1
    move-object v1, v0

    .line 167
    goto :goto_0

    .line 180
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 181
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public a(Lciv;Ljava/util/List;)Lcom/oasisfeng/android/content/pm/ParceledListSlice;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lciv;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/oasisfeng/android/content/pm/ParceledListSlice;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 187
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 188
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 191
    :try_start_0
    const-string v1, "com.oasisfeng.nevo.engine.INevoController"

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 192
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lciv;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 193
    invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 194
    iget-object v1, p0, Lcjd;->a:Landroid/os/IBinder;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-interface {v1, v4, v2, v3, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 195
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 196
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    sget-object v0, Lcom/oasisfeng/android/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-interface {v0, v3}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oasisfeng/android/content/pm/ParceledListSlice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    :cond_0
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 205
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 207
    return-object v0

    :cond_1
    move-object v1, v0

    .line 192
    goto :goto_0

    .line 204
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 205
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public a(Lciv;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 211
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 213
    :try_start_0
    const-string v2, "com.oasisfeng.nevo.engine.INevoController"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 214
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lciv;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 215
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcjd;->a:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 221
    return-void

    .line 219
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcjd;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public b(Lciv;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 224
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 226
    :try_start_0
    const-string v2, "com.oasisfeng.nevo.engine.INevoController"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 227
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lciv;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 228
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcjd;->a:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 234
    return-void

    .line 232
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
