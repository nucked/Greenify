.class final Lbui;
.super Lbqz;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbqz",
        "<",
        "Ljava/util/Calendar;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 539
    invoke-direct {p0}, Lbqz;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbvb;)Ljava/util/Calendar;
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 549
    invoke-virtual {p1}, Lbvb;->f()Lbvd;

    move-result-object v0

    sget-object v1, Lbvd;->i:Lbvd;

    if-ne v0, v1, :cond_0

    .line 550
    invoke-virtual {p1}, Lbvb;->j()V

    .line 551
    const/4 v0, 0x0

    .line 578
    :goto_0
    return-object v0

    .line 553
    :cond_0
    invoke-virtual {p1}, Lbvb;->c()V

    move v5, v6

    move v4, v6

    move v3, v6

    move v2, v6

    move v1, v6

    .line 560
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lbvb;->f()Lbvd;

    move-result-object v0

    sget-object v7, Lbvd;->d:Lbvd;

    if-eq v0, v7, :cond_7

    .line 561
    invoke-virtual {p1}, Lbvb;->g()Ljava/lang/String;

    move-result-object v7

    .line 562
    invoke-virtual {p1}, Lbvb;->m()I

    move-result v0

    .line 563
    const-string v8, "year"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    move v1, v0

    .line 564
    goto :goto_1

    .line 565
    :cond_2
    const-string v8, "month"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    move v2, v0

    .line 566
    goto :goto_1

    .line 567
    :cond_3
    const-string v8, "dayOfMonth"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    move v3, v0

    .line 568
    goto :goto_1

    .line 569
    :cond_4
    const-string v8, "hourOfDay"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    move v4, v0

    .line 570
    goto :goto_1

    .line 571
    :cond_5
    const-string v8, "minute"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    move v5, v0

    .line 572
    goto :goto_1

    .line 573
    :cond_6
    const-string v8, "second"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v6, v0

    .line 574
    goto :goto_1

    .line 577
    :cond_7
    invoke-virtual {p1}, Lbvb;->d()V

    .line 578
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct/range {v0 .. v6}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    goto :goto_0
.end method

.method public bridge synthetic a(Lbve;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 539
    check-cast p2, Ljava/util/Calendar;

    invoke-virtual {p0, p1, p2}, Lbui;->a(Lbve;Ljava/util/Calendar;)V

    return-void
.end method

.method public a(Lbve;Ljava/util/Calendar;)V
    .locals 2

    .prologue
    .line 583
    if-nez p2, :cond_0

    .line 584
    invoke-virtual {p1}, Lbve;->f()Lbve;

    .line 601
    :goto_0
    return-void

    .line 587
    :cond_0
    invoke-virtual {p1}, Lbve;->d()Lbve;

    .line 588
    const-string v0, "year"

    invoke-virtual {p1, v0}, Lbve;->a(Ljava/lang/String;)Lbve;

    .line 589
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lbve;->a(J)Lbve;

    .line 590
    const-string v0, "month"

    invoke-virtual {p1, v0}, Lbve;->a(Ljava/lang/String;)Lbve;

    .line 591
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lbve;->a(J)Lbve;

    .line 592
    const-string v0, "dayOfMonth"

    invoke-virtual {p1, v0}, Lbve;->a(Ljava/lang/String;)Lbve;

    .line 593
    const/4 v0, 0x5

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lbve;->a(J)Lbve;

    .line 594
    const-string v0, "hourOfDay"

    invoke-virtual {p1, v0}, Lbve;->a(Ljava/lang/String;)Lbve;

    .line 595
    const/16 v0, 0xb

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lbve;->a(J)Lbve;

    .line 596
    const-string v0, "minute"

    invoke-virtual {p1, v0}, Lbve;->a(Ljava/lang/String;)Lbve;

    .line 597
    const/16 v0, 0xc

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lbve;->a(J)Lbve;

    .line 598
    const-string v0, "second"

    invoke-virtual {p1, v0}, Lbve;->a(Ljava/lang/String;)Lbve;

    .line 599
    const/16 v0, 0xd

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lbve;->a(J)Lbve;

    .line 600
    invoke-virtual {p1}, Lbve;->e()Lbve;

    goto :goto_0
.end method

.method public synthetic b(Lbvb;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 539
    invoke-virtual {p0, p1}, Lbui;->a(Lbvb;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method
