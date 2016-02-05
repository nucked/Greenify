.class Lcin;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcil;


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .prologue
    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 346
    iput-object p1, p0, Lcin;->a:Landroid/os/IBinder;

    .line 347
    return-void
.end method


# virtual methods
.method public a()Landroid/app/Notification;
    .locals 5

    .prologue
    .line 358
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 359
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 362
    :try_start_0
    const-string v0, "com.oasisfeng.nevo.INotification"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 363
    iget-object v0, p0, Lcin;->a:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 364
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 365
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    sget-object v0, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Notification;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 374
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 376
    return-object v0

    .line 369
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 373
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 374
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public a(I)V
    .locals 5

    .prologue
    .line 568
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 570
    :try_start_0
    const-string v0, "com.oasisfeng.nevo.INotification"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 571
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 572
    iget-object v0, p0, Lcin;->a:Landroid/os/IBinder;

    const/16 v2, 0xc

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 575
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 577
    return-void

    .line 575
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public a(J)V
    .locals 5

    .prologue
    .line 609
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 611
    :try_start_0
    const-string v0, "com.oasisfeng.nevo.INotification"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 612
    invoke-virtual {v1, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 613
    iget-object v0, p0, Lcin;->a:Landroid/os/IBinder;

    const/16 v2, 0xf

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 616
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 618
    return-void

    .line 616
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public a(Landroid/graphics/drawable/Icon;)V
    .locals 5

    .prologue
    .line 790
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 792
    :try_start_0
    const-string v0, "com.oasisfeng.nevo.INotification"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 793
    if-eqz p1, :cond_0

    .line 794
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 795
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    .line 800
    :goto_0
    iget-object v0, p0, Lcin;->a:Landroid/os/IBinder;

    const/16 v2, 0x1b

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 803
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 805
    return-void

    .line 798
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 803
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public a(Landroid/widget/RemoteViews;)V
    .locals 5

    .prologue
    .line 419
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 421
    :try_start_0
    const-string v0, "com.oasisfeng.nevo.INotification"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 422
    if-eqz p1, :cond_0

    .line 423
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 424
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    .line 429
    :goto_0
    iget-object v0, p0, Lcin;->a:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 432
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 434
    return-void

    .line 427
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 432
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 696
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 698
    :try_start_0
    const-string v0, "com.oasisfeng.nevo.INotification"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 699
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 700
    iget-object v0, p0, Lcin;->a:Landroid/os/IBinder;

    const/16 v2, 0x15

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 703
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 705
    return-void

    .line 703
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public a([J)V
    .locals 5

    .prologue
    .line 754
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 756
    :try_start_0
    const-string v0, "com.oasisfeng.nevo.INotification"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 757
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 758
    iget-object v0, p0, Lcin;->a:Landroid/os/IBinder;

    const/16 v2, 0x19

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 761
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 763
    return-void

    .line 761
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcin;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public b()Lbwg;
    .locals 5

    .prologue
    .line 380
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 381
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 384
    :try_start_0
    const-string v0, "com.oasisfeng.nevo.INotification"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Lcin;->a:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 386
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 387
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lbwh;->a(Landroid/os/IBinder;)Lbwg;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 390
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 391
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 393
    return-object v0

    .line 390
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 391
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public b(I)V
    .locals 5

    .prologue
    .line 580
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 582
    :try_start_0
    const-string v0, "com.oasisfeng.nevo.INotification"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 583
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 584
    iget-object v0, p0, Lcin;->a:Landroid/os/IBinder;

    const/16 v2, 0xd

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 587
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 589
    return-void

    .line 587
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public b(Landroid/graphics/drawable/Icon;)V
    .locals 5

    .prologue
    .line 832
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 834
    :try_start_0
    const-string v0, "com.oasisfeng.nevo.INotification"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 835
    if-eqz p1, :cond_0

    .line 836
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 837
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    .line 842
    :goto_0
    iget-object v0, p0, Lcin;->a:Landroid/os/IBinder;

    const/16 v2, 0x1d

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 845
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 847
    return-void

    .line 840
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 845
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public b(Landroid/widget/RemoteViews;)V
    .locals 5

    .prologue
    .line 476
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 478
    :try_start_0
    const-string v0, "com.oasisfeng.nevo.INotification"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 479
    if-eqz p1, :cond_0

    .line 480
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 481
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    .line 486
    :goto_0
    iget-object v0, p0, Lcin;->a:Landroid/os/IBinder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 489
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 491
    return-void

    .line 484
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 489
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public c()Landroid/widget/RemoteViews;
    .locals 5

    .prologue
    .line 397
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 398
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 401
    :try_start_0
    const-string v0, "com.oasisfeng.nevo.INotification"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 402
    iget-object v0, p0, Lcin;->a:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 403
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 404
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    sget-object v0, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 412
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 413
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 415
    return-object v0

    .line 408
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 412
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 413
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public c(I)V
    .locals 5

    .prologue
    .line 638
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 640
    :try_start_0
    const-string v0, "com.oasisfeng.nevo.INotification"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 641
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 642
    iget-object v0, p0, Lcin;->a:Landroid/os/IBinder;

    const/16 v2, 0x11

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 645
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 647
    return-void

    .line 645
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public c(Landroid/widget/RemoteViews;)V
    .locals 5

    .prologue
    .line 533
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 535
    :try_start_0
    const-string v0, "com.oasisfeng.nevo.INotification"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 536
    if-eqz p1, :cond_0

    .line 537
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 538
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    .line 543
    :goto_0
    iget-object v0, p0, Lcin;->a:Landroid/os/IBinder;

    const/16 v2, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 546
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 548
    return-void

    .line 541
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 546
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public d(I)V
    .locals 5

    .prologue
    .line 667
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 669
    :try_start_0
    const-string v0, "com.oasisfeng.nevo.INotification"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 670
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 671
    iget-object v0, p0, Lcin;->a:Landroid/os/IBinder;

    const/16 v2, 0x13

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 674
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 676
    return-void

    .line 674
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public d()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 437
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 438
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 441
    :try_start_0
    const-string v3, "com.oasisfeng.nevo.INotification"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 442
    iget-object v3, p0, Lcin;->a:Landroid/os/IBinder;

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 443
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 444
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 447
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 448
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 450
    return v0

    .line 447
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 448
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public e()Landroid/widget/RemoteViews;
    .locals 5

    .prologue
    .line 454
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 455
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 458
    :try_start_0
    const-string v0, "com.oasisfeng.nevo.INotification"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 459
    iget-object v0, p0, Lcin;->a:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 460
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 461
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    sget-object v0, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 469
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 470
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 472
    return-object v0

    .line 465
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 469
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 470
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public e(I)V
    .locals 5

    .prologue
    .line 725
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 727
    :try_start_0
    const-string v0, "com.oasisfeng.nevo.INotification"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 728
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 729
    iget-object v0, p0, Lcin;->a:Landroid/os/IBinder;

    const/16 v2, 0x17

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 732
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 734
    return-void

    .line 732
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public f()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 494
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 495
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 498
    :try_start_0
    const-string v3, "com.oasisfeng.nevo.INotification"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 499
    iget-object v3, p0, Lcin;->a:Landroid/os/IBinder;

    const/16 v4, 0x8

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 500
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 501
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 504
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 505
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 507
    return v0

    .line 504
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 505
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public g()Landroid/widget/RemoteViews;
    .locals 5

    .prologue
    .line 511
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 512
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 515
    :try_start_0
    const-string v0, "com.oasisfeng.nevo.INotification"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 516
    iget-object v0, p0, Lcin;->a:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 517
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 518
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 519
    sget-object v0, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 526
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 527
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 529
    return-object v0

    .line 522
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 526
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 527
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public h()I
    .locals 5

    .prologue
    .line 551
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 552
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 555
    :try_start_0
    const-string v0, "com.oasisfeng.nevo.INotification"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 556
    iget-object v0, p0, Lcin;->a:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 557
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 558
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 561
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 562
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 564
    return v0

    .line 561
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 562
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public i()J
    .locals 6

    .prologue
    .line 592
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 593
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 596
    :try_start_0
    const-string v0, "com.oasisfeng.nevo.INotification"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 597
    iget-object v0, p0, Lcin;->a:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 598
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 599
    invoke-virtual {v2}, Landroid/os/Parcel;->readLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    .line 602
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 603
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 605
    return-wide v4

    .line 602
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 603
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public j()I
    .locals 5

    .prologue
    .line 621
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 622
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 625
    :try_start_0
    const-string v0, "com.oasisfeng.nevo.INotification"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 626
    iget-object v0, p0, Lcin;->a:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 627
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 628
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 631
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 632
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 634
    return v0

    .line 631
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 632
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public k()I
    .locals 5

    .prologue
    .line 650
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 651
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 654
    :try_start_0
    const-string v0, "com.oasisfeng.nevo.INotification"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 655
    iget-object v0, p0, Lcin;->a:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 656
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 657
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 660
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 661
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 663
    return v0

    .line 660
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 661
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public l()Ljava/lang/String;
    .locals 5

    .prologue
    .line 679
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 680
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 683
    :try_start_0
    const-string v0, "com.oasisfeng.nevo.INotification"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 684
    iget-object v0, p0, Lcin;->a:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 685
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 686
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 689
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 690
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 692
    return-object v0

    .line 689
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 690
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public m()I
    .locals 5

    .prologue
    .line 708
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 709
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 712
    :try_start_0
    const-string v0, "com.oasisfeng.nevo.INotification"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 713
    iget-object v0, p0, Lcin;->a:Landroid/os/IBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 714
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 715
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 718
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 719
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 721
    return v0

    .line 718
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 719
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public n()[J
    .locals 5

    .prologue
    .line 737
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 738
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 741
    :try_start_0
    const-string v0, "com.oasisfeng.nevo.INotification"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 742
    iget-object v0, p0, Lcin;->a:Landroid/os/IBinder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 743
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 744
    invoke-virtual {v2}, Landroid/os/Parcel;->createLongArray()[J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 747
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 748
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 750
    return-object v0

    .line 747
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 748
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public o()Landroid/graphics/drawable/Icon;
    .locals 5

    .prologue
    .line 767
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 768
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 771
    :try_start_0
    const-string v0, "com.oasisfeng.nevo.INotification"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 772
    iget-object v0, p0, Lcin;->a:Landroid/os/IBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 773
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 774
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 775
    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 782
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 783
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 785
    return-object v0

    .line 778
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 782
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 783
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public p()Landroid/graphics/drawable/Icon;
    .locals 5

    .prologue
    .line 809
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 810
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 813
    :try_start_0
    const-string v0, "com.oasisfeng.nevo.INotification"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 814
    iget-object v0, p0, Lcin;->a:Landroid/os/IBinder;

    const/16 v3, 0x1c

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 815
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 816
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 817
    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 824
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 825
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 827
    return-object v0

    .line 820
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 824
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 825
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
