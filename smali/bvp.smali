.class public Lbvp;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/StringBuilder;J)Ljava/lang/String;
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    const-wide/16 v0, 0x0

    const-wide/16 v4, 0xe10

    const-wide/16 v8, 0x3c

    .line 11
    const-wide/32 v2, 0x57e40

    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    invoke-static {p0, p1, p2}, Landroid/text/format/DateUtils;->formatElapsedTime(Ljava/lang/StringBuilder;J)Ljava/lang/String;

    move-result-object v0

    .line 22
    :goto_0
    return-object v0

    .line 14
    :cond_0
    cmp-long v2, p1, v4

    if-ltz v2, :cond_2

    .line 15
    div-long v2, p1, v4

    .line 16
    rem-long p1, v2, v4

    move-wide v4, v2

    move-wide v2, p1

    .line 18
    :goto_1
    cmp-long v6, v2, v8

    if-ltz v6, :cond_1

    .line 19
    div-long v0, v2, v8

    .line 20
    rem-long v2, v0, v8

    .line 22
    :cond_1
    const-string v6, "%1$d:%2$02d:%3$02d"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v7, v8

    const/4 v4, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v7, v4

    const/4 v0, 0x2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v7, v0

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-wide v4, v0

    move-wide v2, p1

    goto :goto_1
.end method
