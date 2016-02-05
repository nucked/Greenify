.class Lo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm;


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p1, p0, Lo;->a:Landroid/os/IBinder;

    .line 127
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5

    .prologue
    .line 207
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 208
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 211
    :try_start_0
    const-string v0, "android.support.customtabs.ICustomTabsService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 212
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 213
    if-eqz p2, :cond_0

    .line 214
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    const/4 v0, 0x0

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 220
    :goto_0
    iget-object v0, p0, Lo;->a:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 221
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 222
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    :goto_1
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 231
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 233
    return-object v0

    .line 218
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 230
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 231
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0

    .line 226
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(J)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 138
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 139
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 142
    :try_start_0
    const-string v3, "android.support.customtabs.ICustomTabsService"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v1, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 144
    iget-object v3, p0, Lo;->a:Landroid/os/IBinder;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 145
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 146
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 149
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 150
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 152
    return v0

    .line 149
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 150
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public a(Lj;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 156
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 157
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 160
    :try_start_0
    const-string v1, "android.support.customtabs.ICustomTabsService"

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 161
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lj;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 162
    iget-object v1, p0, Lo;->a:Landroid/os/IBinder;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-interface {v1, v4, v2, v3, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 163
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 164
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 167
    :cond_0
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 168
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 170
    return v0

    .line 161
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 167
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 168
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public a(Lj;Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj;",
            "Landroid/net/Uri;",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 174
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 175
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 178
    :try_start_0
    const-string v2, "android.support.customtabs.ICustomTabsService"

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 179
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lj;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 180
    if-eqz p2, :cond_1

    .line 181
    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    const/4 v2, 0x0

    invoke-virtual {p2, v3, v2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 187
    :goto_1
    if-eqz p3, :cond_2

    .line 188
    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 189
    const/4 v2, 0x0

    invoke-virtual {p3, v3, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 194
    :goto_2
    invoke-virtual {v3, p4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 195
    iget-object v2, p0, Lo;->a:Landroid/os/IBinder;

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-interface {v2, v5, v3, v4, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 196
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V

    .line 197
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_3

    .line 200
    :goto_3
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 201
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 203
    return v0

    .line 179
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 185
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 200
    :catchall_0
    move-exception v0

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 201
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    throw v0

    .line 192
    :cond_2
    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :cond_3
    move v0, v1

    .line 197
    goto :goto_3
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lo;->a:Landroid/os/IBinder;

    return-object v0
.end method
