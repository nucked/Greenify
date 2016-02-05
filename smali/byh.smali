.class Lbyh;
.super Lbyi;
.source "SourceFile"


# instance fields
.field final synthetic a:Lbxt;


# direct methods
.method constructor <init>(Lbxt;ZZ)V
    .locals 0

    .prologue
    .line 522
    iput-object p1, p0, Lbyh;->a:Lbxt;

    invoke-direct {p0, p1, p2, p3}, Lbyi;-><init>(Lbxt;ZZ)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/util/Map;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lbyj;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 523
    const/4 v3, 0x0

    .line 524
    :try_start_0
    iget-object v2, p0, Lbyh;->a:Lbxt;

    const-string v4, "alarm"

    invoke-static {v2, v4}, Lbxt;->a(Lbxt;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 525
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 526
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 527
    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    const-wide/16 v10, 0xe10

    div-long/2addr v8, v10

    const-wide/16 v10, 0x4

    div-long/2addr v8, v10

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    .line 528
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v6, v4

    move-object v4, v5

    move-object v5, v2

    .line 529
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 530
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 531
    if-nez v6, :cond_0

    .line 532
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v7, "Alarm Stats"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v3, 0x1

    move v6, v3

    move-object v3, v2

    goto :goto_0

    .line 537
    :cond_0
    iget-object v3, p0, Lbyh;->a:Lbxt;

    iget-object v3, v3, Lbxt;->i:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    .line 538
    const/4 v3, 0x0

    .line 539
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 540
    const/4 v4, 0x1

    invoke-virtual {v11, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    .line 541
    iget-object v4, p0, Lbyh;->a:Lbxt;

    invoke-static {v4}, Lbxt;->f(Lbxt;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v7

    move-object v3, v2

    goto :goto_0

    .line 542
    :cond_1
    const/4 v4, 0x2

    invoke-virtual {v11, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 543
    if-eqz v4, :cond_2

    .line 544
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move v4, v3

    move-object v3, v2

    .line 555
    :goto_1
    int-to-long v12, v4

    cmp-long v2, v12, v8

    if-gez v2, :cond_3

    .line 556
    const/4 v2, 0x0

    move-object v4, v2

    .line 557
    goto :goto_0

    .line 545
    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 546
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 548
    iget-object v3, p0, Lbyh;->a:Lbxt;

    iget-object v3, v3, Lbxt;->aj:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 549
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 550
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 551
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    move v4, v3

    move-object v3, v2

    goto :goto_1

    .line 560
    :cond_3
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "@"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 561
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbyj;

    .line 562
    if-nez v2, :cond_9

    .line 563
    new-instance v2, Lbyj;

    sget-object v11, Lbyk;->b:Lbyk;

    invoke-direct {v2, v11}, Lbyj;-><init>(Lbyk;)V

    .line 564
    iput v4, v2, Lbyj;->g:I

    .line 565
    move-object/from16 v0, p1

    invoke-interface {v0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v5, v2

    move-object v4, v7

    goto/16 :goto_0

    .line 568
    :cond_4
    if-eqz v4, :cond_8

    if-nez v5, :cond_5

    move-object v3, v2

    .line 569
    goto/16 :goto_0

    .line 572
    :cond_5
    :try_start_3
    iget-object v3, p0, Lbyh;->a:Lbxt;

    iget-object v3, v3, Lbxt;->ak:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 573
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-nez v7, :cond_6

    const-string v3, "Analyzer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unrecognized dump line: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v2

    goto/16 :goto_0

    .line 574
    :cond_6
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 575
    iget v7, v5, Lbyj;->f:I

    add-int/2addr v3, v7

    iput v3, v5, Lbyj;->f:I

    .line 576
    iget-object v3, p0, Lbyh;->a:Lbxt;

    const v7, 0x7f08003f

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget v13, v5, Lbyj;->f:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    iget v13, v5, Lbyj;->g:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v3, v7, v11}, Lbxt;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lbyj;->a(Ljava/lang/String;)Lbyj;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object v3, v2

    .line 577
    goto/16 :goto_0

    .line 578
    :catch_0
    move-exception v2

    .line 579
    :goto_2
    const-string v4, "Analyzer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Internal error when analyzing alarm service statistics: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 581
    :cond_7
    return-void

    .line 578
    :catch_1
    move-exception v3

    move-object v14, v3

    move-object v3, v2

    move-object v2, v14

    goto :goto_2

    :cond_8
    move-object v3, v2

    goto/16 :goto_0

    :cond_9
    move-object v5, v2

    move-object v4, v7

    goto/16 :goto_0

    :cond_a
    move-object v4, v7

    move-object v3, v2

    goto/16 :goto_0

    :cond_b
    move v4, v3

    move-object v3, v2

    goto/16 :goto_1
.end method
