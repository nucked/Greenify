.class final Lbuk;
.super Lbqz;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbqz",
        "<",
        "Lbqk;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 644
    invoke-direct {p0}, Lbqz;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbvb;)Lbqk;
    .locals 3

    .prologue
    .line 646
    sget-object v0, Lbus;->a:[I

    invoke-virtual {p1}, Lbvb;->f()Lbvd;

    move-result-object v1

    invoke-virtual {v1}, Lbvd;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 678
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 648
    :pswitch_0
    new-instance v0, Lbqp;

    invoke-virtual {p1}, Lbvb;->h()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lbqp;-><init>(Ljava/lang/String;)V

    .line 672
    :goto_0
    return-object v0

    .line 650
    :pswitch_1
    invoke-virtual {p1}, Lbvb;->h()Ljava/lang/String;

    move-result-object v1

    .line 651
    new-instance v0, Lbqp;

    new-instance v2, Lbsb;

    invoke-direct {v2, v1}, Lbsb;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lbqp;-><init>(Ljava/lang/Number;)V

    goto :goto_0

    .line 653
    :pswitch_2
    new-instance v0, Lbqp;

    invoke-virtual {p1}, Lbvb;->i()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lbqp;-><init>(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 655
    :pswitch_3
    invoke-virtual {p1}, Lbvb;->j()V

    .line 656
    sget-object v0, Lbqm;->a:Lbqm;

    goto :goto_0

    .line 658
    :pswitch_4
    new-instance v0, Lbqh;

    invoke-direct {v0}, Lbqh;-><init>()V

    .line 659
    invoke-virtual {p1}, Lbvb;->a()V

    .line 660
    :goto_1
    invoke-virtual {p1}, Lbvb;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 661
    invoke-virtual {p0, p1}, Lbuk;->a(Lbvb;)Lbqk;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbqh;->a(Lbqk;)V

    goto :goto_1

    .line 663
    :cond_0
    invoke-virtual {p1}, Lbvb;->b()V

    goto :goto_0

    .line 666
    :pswitch_5
    new-instance v0, Lbqn;

    invoke-direct {v0}, Lbqn;-><init>()V

    .line 667
    invoke-virtual {p1}, Lbvb;->c()V

    .line 668
    :goto_2
    invoke-virtual {p1}, Lbvb;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 669
    invoke-virtual {p1}, Lbvb;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lbuk;->a(Lbvb;)Lbqk;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbqn;->a(Ljava/lang/String;Lbqk;)V

    goto :goto_2

    .line 671
    :cond_1
    invoke-virtual {p1}, Lbvb;->d()V

    goto :goto_0

    .line 646
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public a(Lbve;Lbqk;)V
    .locals 3

    .prologue
    .line 683
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lbqk;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 684
    :cond_0
    invoke-virtual {p1}, Lbve;->f()Lbve;

    .line 713
    :goto_0
    return-void

    .line 685
    :cond_1
    invoke-virtual {p2}, Lbqk;->i()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 686
    invoke-virtual {p2}, Lbqk;->m()Lbqp;

    move-result-object v0

    .line 687
    invoke-virtual {v0}, Lbqp;->p()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 688
    invoke-virtual {v0}, Lbqp;->a()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {p1, v0}, Lbve;->a(Ljava/lang/Number;)Lbve;

    goto :goto_0

    .line 689
    :cond_2
    invoke-virtual {v0}, Lbqp;->o()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 690
    invoke-virtual {v0}, Lbqp;->f()Z

    move-result v0

    invoke-virtual {p1, v0}, Lbve;->a(Z)Lbve;

    goto :goto_0

    .line 692
    :cond_3
    invoke-virtual {v0}, Lbqp;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lbve;->b(Ljava/lang/String;)Lbve;

    goto :goto_0

    .line 695
    :cond_4
    invoke-virtual {p2}, Lbqk;->g()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 696
    invoke-virtual {p1}, Lbve;->b()Lbve;

    .line 697
    invoke-virtual {p2}, Lbqk;->l()Lbqh;

    move-result-object v0

    invoke-virtual {v0}, Lbqh;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbqk;

    .line 698
    invoke-virtual {p0, p1, v0}, Lbuk;->a(Lbve;Lbqk;)V

    goto :goto_1

    .line 700
    :cond_5
    invoke-virtual {p1}, Lbve;->c()Lbve;

    goto :goto_0

    .line 702
    :cond_6
    invoke-virtual {p2}, Lbqk;->h()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 703
    invoke-virtual {p1}, Lbve;->d()Lbve;

    .line 704
    invoke-virtual {p2}, Lbqk;->k()Lbqn;

    move-result-object v0

    invoke-virtual {v0}, Lbqn;->o()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 705
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lbve;->a(Ljava/lang/String;)Lbve;

    .line 706
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbqk;

    invoke-virtual {p0, p1, v0}, Lbuk;->a(Lbve;Lbqk;)V

    goto :goto_2

    .line 708
    :cond_7
    invoke-virtual {p1}, Lbve;->e()Lbve;

    goto/16 :goto_0

    .line 711
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t write "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic a(Lbve;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 644
    check-cast p2, Lbqk;

    invoke-virtual {p0, p1, p2}, Lbuk;->a(Lbve;Lbqk;)V

    return-void
.end method

.method public synthetic b(Lbvb;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 644
    invoke-virtual {p0, p1}, Lbuk;->a(Lbvb;)Lbqk;

    move-result-object v0

    return-object v0
.end method
