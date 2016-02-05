.class Lcdy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# direct methods
.method static a(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 507
    :try_start_0
    invoke-static {p0}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v0

    iget v0, v0, Landroid/system/StructStat;->st_gid:I
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 510
    :goto_0
    return v0

    .line 508
    :catch_0
    move-exception v0

    .line 510
    const/4 v0, -0x1

    goto :goto_0
.end method
