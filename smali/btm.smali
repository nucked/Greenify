.class public final Lbtm;
.super Lbqz;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbqz",
        "<",
        "Ljava/sql/Date;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lbra;


# instance fields
.field private final b:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lbtn;

    invoke-direct {v0}, Lbtn;-><init>()V

    sput-object v0, Lbtm;->a:Lbra;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Lbqz;-><init>()V

    .line 47
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMM d, yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lbtm;->b:Ljava/text/DateFormat;

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lbvb;)Ljava/sql/Date;
    .locals 4

    .prologue
    .line 51
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lbvb;->f()Lbvd;

    move-result-object v0

    sget-object v1, Lbvd;->i:Lbvd;

    if-ne v0, v1, :cond_0

    .line 52
    invoke-virtual {p1}, Lbvb;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    const/4 v0, 0x0

    .line 57
    :goto_0
    monitor-exit p0

    return-object v0

    .line 56
    :cond_0
    :try_start_1
    iget-object v0, p0, Lbtm;->b:Ljava/text/DateFormat;

    invoke-virtual {p1}, Lbvb;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 57
    new-instance v0, Ljava/sql/Date;

    invoke-direct {v0, v2, v3}, Ljava/sql/Date;-><init>(J)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 58
    :catch_0
    move-exception v0

    .line 59
    :try_start_2
    new-instance v1, Lbqs;

    invoke-direct {v1, v0}, Lbqs;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic a(Lbve;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 38
    check-cast p2, Ljava/sql/Date;

    invoke-virtual {p0, p1, p2}, Lbtm;->a(Lbve;Ljava/sql/Date;)V

    return-void
.end method

.method public declared-synchronized a(Lbve;Ljava/sql/Date;)V
    .locals 1

    .prologue
    .line 65
    monitor-enter p0

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p1, v0}, Lbve;->b(Ljava/lang/String;)Lbve;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    monitor-exit p0

    return-void

    .line 65
    :cond_0
    :try_start_1
    iget-object v0, p0, Lbtm;->b:Ljava/text/DateFormat;

    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public synthetic b(Lbvb;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lbtm;->a(Lbvb;)Ljava/sql/Date;

    move-result-object v0

    return-object v0
.end method
