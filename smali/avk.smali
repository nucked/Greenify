.class public final Lavk;
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
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static c:Layq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Layq",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static d:Layq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Layq",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static e:Layq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Layq",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static f:Layq;
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

    const-string v0, "gms:common:stats:connections:level"

    sget v1, Lavm;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Layq;->a(Ljava/lang/String;Ljava/lang/Integer;)Layq;

    move-result-object v0

    sput-object v0, Lavk;->a:Layq;

    const-string v0, "gms:common:stats:connections:ignored_calling_processes"

    const-string v1, ""

    invoke-static {v0, v1}, Layq;->a(Ljava/lang/String;Ljava/lang/String;)Layq;

    move-result-object v0

    sput-object v0, Lavk;->b:Layq;

    const-string v0, "gms:common:stats:connections:ignored_calling_services"

    const-string v1, ""

    invoke-static {v0, v1}, Layq;->a(Ljava/lang/String;Ljava/lang/String;)Layq;

    move-result-object v0

    sput-object v0, Lavk;->c:Layq;

    const-string v0, "gms:common:stats:connections:ignored_target_processes"

    const-string v1, ""

    invoke-static {v0, v1}, Layq;->a(Ljava/lang/String;Ljava/lang/String;)Layq;

    move-result-object v0

    sput-object v0, Lavk;->d:Layq;

    const-string v0, "gms:common:stats:connections:ignored_target_services"

    const-string v1, "com.google.android.gms.auth.GetToken"

    invoke-static {v0, v1}, Layq;->a(Ljava/lang/String;Ljava/lang/String;)Layq;

    move-result-object v0

    sput-object v0, Lavk;->e:Layq;

    const-string v0, "gms:common:stats:connections:time_out_duration"

    const-wide/32 v2, 0x927c0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Layq;->a(Ljava/lang/String;Ljava/lang/Long;)Layq;

    move-result-object v0

    sput-object v0, Lavk;->f:Layq;

    return-void
.end method
