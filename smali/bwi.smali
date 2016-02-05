.class Lbwi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbwg;


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .prologue
    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 419
    iput-object p1, p0, Lbwi;->a:Landroid/os/IBinder;

    .line 420
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 431
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 433
    :try_start_0
    const-string v0, "com.oasisfeng.android.os.IBundle"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 434
    iget-object v0, p0, Lbwi;->a:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 437
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 439
    return-void

    .line 437
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 442
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 444
    :try_start_0
    const-string v0, "com.oasisfeng.android.os.IBundle"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 445
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 446
    iget-object v0, p0, Lbwi;->a:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 449
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 451
    return-void

    .line 449
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public a(Ljava/lang/String;D)V
    .locals 6

    .prologue
    .line 493
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 495
    :try_start_0
    const-string v0, "com.oasisfeng.android.os.IBundle"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 496
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 497
    invoke-virtual {v1, p2, p3}, Landroid/os/Parcel;->writeDouble(D)V

    .line 498
    iget-object v0, p0, Lbwi;->a:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 501
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 503
    return-void

    .line 501
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public a(Ljava/lang/String;I)V
    .locals 5

    .prologue
    .line 467
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 469
    :try_start_0
    const-string v0, "com.oasisfeng.android.os.IBundle"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 470
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 471
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 472
    iget-object v0, p0, Lbwi;->a:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 475
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 477
    return-void

    .line 475
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public a(Ljava/lang/String;J)V
    .locals 6

    .prologue
    .line 480
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 482
    :try_start_0
    const-string v0, "com.oasisfeng.android.os.IBundle"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 483
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 484
    invoke-virtual {v1, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 485
    iget-object v0, p0, Lbwi;->a:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 488
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 490
    return-void

    .line 488
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public a(Ljava/lang/String;Lcom/oasisfeng/android/os/ParcelableReference;)V
    .locals 5

    .prologue
    .line 558
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 560
    :try_start_0
    const-string v0, "com.oasisfeng.android.os.IBundle"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 561
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 562
    if-eqz p2, :cond_0

    .line 563
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 564
    const/4 v0, 0x0

    invoke-virtual {p2, v1, v0}, Lcom/oasisfeng/android/os/ParcelableReference;->writeToParcel(Landroid/os/Parcel;I)V

    .line 569
    :goto_0
    iget-object v0, p0, Lbwi;->a:Landroid/os/IBinder;

    const/16 v2, 0xb

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 572
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 574
    return-void

    .line 567
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 572
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 5

    .prologue
    .line 616
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 618
    :try_start_0
    const-string v0, "com.oasisfeng.android.os.IBundle"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 619
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 620
    if-eqz p2, :cond_0

    .line 621
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 622
    const/4 v0, 0x0

    invoke-static {p2, v1, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 627
    :goto_0
    iget-object v0, p0, Lbwi;->a:Landroid/os/IBinder;

    const/16 v2, 0xf

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 630
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 632
    return-void

    .line 625
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 630
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 577
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 579
    :try_start_0
    const-string v0, "com.oasisfeng.android.os.IBundle"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 580
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 581
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 582
    iget-object v0, p0, Lbwi;->a:Landroid/os/IBinder;

    const/16 v2, 0xc

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 585
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 587
    return-void

    .line 585
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 603
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 605
    :try_start_0
    const-string v0, "com.oasisfeng.android.os.IBundle"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 606
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 607
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 608
    iget-object v0, p0, Lbwi;->a:Landroid/os/IBinder;

    const/16 v2, 0xe

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 611
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 613
    return-void

    .line 611
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 454
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 456
    :try_start_0
    const-string v2, "com.oasisfeng.android.os.IBundle"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 457
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 458
    if-eqz p2, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 459
    iget-object v0, p0, Lbwi;->a:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 462
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 464
    return-void

    .line 458
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 462
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public a(Ljava/lang/String;[D)V
    .locals 5

    .prologue
    .line 545
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 547
    :try_start_0
    const-string v0, "com.oasisfeng.android.os.IBundle"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 548
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 549
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeDoubleArray([D)V

    .line 550
    iget-object v0, p0, Lbwi;->a:Landroid/os/IBinder;

    const/16 v2, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 553
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 555
    return-void

    .line 553
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public a(Ljava/lang/String;[I)V
    .locals 5

    .prologue
    .line 519
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 521
    :try_start_0
    const-string v0, "com.oasisfeng.android.os.IBundle"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 522
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 523
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 524
    iget-object v0, p0, Lbwi;->a:Landroid/os/IBinder;

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 527
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 529
    return-void

    .line 527
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public a(Ljava/lang/String;[J)V
    .locals 5

    .prologue
    .line 532
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 534
    :try_start_0
    const-string v0, "com.oasisfeng.android.os.IBundle"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 535
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 536
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 537
    iget-object v0, p0, Lbwi;->a:Landroid/os/IBinder;

    const/16 v2, 0x9

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 540
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 542
    return-void

    .line 540
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public a(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 590
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 592
    :try_start_0
    const-string v0, "com.oasisfeng.android.os.IBundle"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 593
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 594
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 595
    iget-object v0, p0, Lbwi;->a:Landroid/os/IBinder;

    const/16 v2, 0xd

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 598
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 600
    return-void

    .line 598
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public a(Ljava/lang/String;[Z)V
    .locals 5

    .prologue
    .line 506
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 508
    :try_start_0
    const-string v0, "com.oasisfeng.android.os.IBundle"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 509
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 510
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 511
    iget-object v0, p0, Lbwi;->a:Landroid/os/IBinder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 514
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 516
    return-void

    .line 514
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lbwi;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public b(Ljava/lang/String;D)D
    .locals 6

    .prologue
    .line 720
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 721
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 724
    :try_start_0
    const-string v0, "com.oasisfeng.android.os.IBundle"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 725
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 726
    invoke-virtual {v1, p2, p3}, Landroid/os/Parcel;->writeDouble(D)V

    .line 727
    iget-object v0, p0, Lbwi;->a:Landroid/os/IBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 728
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 729
    invoke-virtual {v2}, Landroid/os/Parcel;->readDouble()D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    .line 732
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 733
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 735
    return-wide v4

    .line 732
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 733
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public b(Ljava/lang/String;I)I
    .locals 5

    .prologue
    .line 682
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 683
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 686
    :try_start_0
    const-string v0, "com.oasisfeng.android.os.IBundle"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 687
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 688
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 689
    iget-object v0, p0, Lbwi;->a:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 690
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 691
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 694
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 695
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 697
    return v0

    .line 694
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 695
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public b(Ljava/lang/String;J)J
    .locals 6

    .prologue
    .line 701
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 702
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 705
    :try_start_0
    const-string v0, "com.oasisfeng.android.os.IBundle"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 706
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 707
    invoke-virtual {v1, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 708
    iget-object v0, p0, Lbwi;->a:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 709
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 710
    invoke-virtual {v2}, Landroid/os/Parcel;->readLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    .line 713
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 714
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 716
    return-wide v4

    .line 713
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 714
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public b(Ljava/lang/String;Ljava/util/List;)V
    .locals 5

    .prologue
    .line 636
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 638
    :try_start_0
    const-string v0, "com.oasisfeng.android.os.IBundle"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 639
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 640
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 641
    iget-object v0, p0, Lbwi;->a:Landroid/os/IBinder;

    const/16 v2, 0x10

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 644
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 646
    return-void

    .line 644
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public b(Ljava/lang/String;Z)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 663
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 664
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 667
    :try_start_0
    const-string v2, "com.oasisfeng.android.os.IBundle"

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 668
    invoke-virtual {v3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 669
    if-eqz p2, :cond_0

    move v2, v0

    :goto_0
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 670
    iget-object v2, p0, Lbwi;->a:Landroid/os/IBinder;

    const/16 v5, 0x12

    const/4 v6, 0x0

    invoke-interface {v2, v5, v3, v4, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 671
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V

    .line 672
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 675
    :goto_1
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 676
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 678
    return v0

    :cond_0
    move v2, v1

    .line 669
    goto :goto_0

    :cond_1
    move v0, v1

    .line 672
    goto :goto_1

    .line 675
    :catchall_0
    move-exception v0

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 676
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public b(Ljava/lang/String;)[Z
    .locals 5

    .prologue
    .line 739
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 740
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 743
    :try_start_0
    const-string v0, "com.oasisfeng.android.os.IBundle"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 744
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 745
    iget-object v0, p0, Lbwi;->a:Landroid/os/IBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 746
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 747
    invoke-virtual {v2}, Landroid/os/Parcel;->createBooleanArray()[Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 750
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 751
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 753
    return-object v0

    .line 750
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 751
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public c(Ljava/lang/String;Ljava/util/List;)V
    .locals 5

    .prologue
    .line 650
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 652
    :try_start_0
    const-string v0, "com.oasisfeng.android.os.IBundle"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 653
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 654
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 655
    iget-object v0, p0, Lbwi;->a:Landroid/os/IBinder;

    const/16 v2, 0x11

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 658
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 660
    return-void

    .line 658
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public c(Ljava/lang/String;)[I
    .locals 5

    .prologue
    .line 757
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 758
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 761
    :try_start_0
    const-string v0, "com.oasisfeng.android.os.IBundle"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 762
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 763
    iget-object v0, p0, Lbwi;->a:Landroid/os/IBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 764
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 765
    invoke-virtual {v2}, Landroid/os/Parcel;->createIntArray()[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 768
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 769
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 771
    return-object v0

    .line 768
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 769
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public d(Ljava/lang/String;)[J
    .locals 5

    .prologue
    .line 775
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 776
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 779
    :try_start_0
    const-string v0, "com.oasisfeng.android.os.IBundle"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 780
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 781
    iget-object v0, p0, Lbwi;->a:Landroid/os/IBinder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 782
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 783
    invoke-virtual {v2}, Landroid/os/Parcel;->createLongArray()[J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 786
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 787
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 789
    return-object v0

    .line 786
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 787
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public e(Ljava/lang/String;)[D
    .locals 5

    .prologue
    .line 793
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 794
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 797
    :try_start_0
    const-string v0, "com.oasisfeng.android.os.IBundle"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 798
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 799
    iget-object v0, p0, Lbwi;->a:Landroid/os/IBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 800
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 801
    invoke-virtual {v2}, Landroid/os/Parcel;->createDoubleArray()[D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 804
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 805
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 807
    return-object v0

    .line 804
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 805
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public f(Ljava/lang/String;)Lcom/oasisfeng/android/os/ParcelableReference;
    .locals 5

    .prologue
    .line 811
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 812
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 815
    :try_start_0
    const-string v0, "com.oasisfeng.android.os.IBundle"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 816
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 817
    iget-object v0, p0, Lbwi;->a:Landroid/os/IBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 818
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 819
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 820
    sget-object v0, Lcom/oasisfeng/android/os/ParcelableReference;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-interface {v0, v2}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oasisfeng/android/os/ParcelableReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 827
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 828
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 830
    return-object v0

    .line 823
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 827
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 828
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public h(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 834
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 835
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 838
    :try_start_0
    const-string v0, "com.oasisfeng.android.os.IBundle"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 839
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 840
    iget-object v0, p0, Lbwi;->a:Landroid/os/IBinder;

    const/16 v3, 0x1b

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 841
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 842
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 845
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 846
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 848
    return-object v0

    .line 845
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 846
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public i(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    .prologue
    .line 852
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 853
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 856
    :try_start_0
    const-string v0, "com.oasisfeng.android.os.IBundle"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 857
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 858
    iget-object v0, p0, Lbwi;->a:Landroid/os/IBinder;

    const/16 v3, 0x1c

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 859
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 860
    invoke-virtual {v2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 863
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 864
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 866
    return-object v0

    .line 863
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 864
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public j(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 870
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 871
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 874
    :try_start_0
    const-string v0, "com.oasisfeng.android.os.IBundle"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 875
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 876
    iget-object v0, p0, Lbwi;->a:Landroid/os/IBinder;

    const/16 v3, 0x1d

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 877
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 878
    invoke-virtual {v2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 881
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 882
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 884
    return-object v0

    .line 881
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 882
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public k(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 5

    .prologue
    .line 888
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 889
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 892
    :try_start_0
    const-string v0, "com.oasisfeng.android.os.IBundle"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 893
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 894
    iget-object v0, p0, Lbwi;->a:Landroid/os/IBinder;

    const/16 v3, 0x1e

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 895
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 896
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 897
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 904
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 905
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 907
    return-object v0

    .line 900
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 904
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 905
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public l(Ljava/lang/String;)Ljava/util/List;
    .locals 5

    .prologue
    .line 912
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 913
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 916
    :try_start_0
    const-string v0, "com.oasisfeng.android.os.IBundle"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 917
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 918
    iget-object v0, p0, Lbwi;->a:Landroid/os/IBinder;

    const/16 v3, 0x1f

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 919
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 920
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 921
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 924
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 925
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 927
    return-object v0

    .line 924
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 925
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public m(Ljava/lang/String;)Ljava/util/List;
    .locals 5

    .prologue
    .line 932
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 933
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 936
    :try_start_0
    const-string v0, "com.oasisfeng.android.os.IBundle"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 937
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 938
    iget-object v0, p0, Lbwi;->a:Landroid/os/IBinder;

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 939
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 940
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 941
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 944
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 945
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 947
    return-object v0

    .line 944
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 945
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public n(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 951
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 952
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 955
    :try_start_0
    const-string v3, "com.oasisfeng.android.os.IBundle"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 956
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 957
    iget-object v3, p0, Lbwi;->a:Landroid/os/IBinder;

    const/16 v4, 0x21

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 958
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 959
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 962
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 963
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 965
    return v0

    .line 962
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 963
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public o(Ljava/lang/String;)Lbwg;
    .locals 5

    .prologue
    .line 973
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 974
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 977
    :try_start_0
    const-string v0, "com.oasisfeng.android.os.IBundle"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 978
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 979
    iget-object v0, p0, Lbwi;->a:Landroid/os/IBinder;

    const/16 v3, 0x22

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 980
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 981
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lbwh;->a(Landroid/os/IBinder;)Lbwg;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 984
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 985
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 987
    return-object v0

    .line 984
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 985
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
