.class public final Lavl;
.super Ljava/lang/Object;


# static fields
.field public static a:Layq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Layq",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static b:Layq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Layq",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "gms:common:stats:wakeLocks:level"

    sget v1, Lavm;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Layq;->a(Ljava/lang/String;Ljava/lang/Integer;)Layq;

    move-result-object v0

    sput-object v0, Lavl;->a:Layq;

    const-string v0, "gms:common:stats:wakelocks:time_out_duration"

    const-wide/32 v2, 0x927c0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Layq;->a(Ljava/lang/String;Ljava/lang/Long;)Layq;

    move-result-object v0

    sput-object v0, Lavl;->b:Layq;

    return-void
.end method
