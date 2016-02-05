.class public final Layy;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lapu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lapu",
            "<",
            "Lazg;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lapm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lapm",
            "<",
            "Lapp;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Laza;

.field private static final d:Laps;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laps",
            "<",
            "Lazg;",
            "Lapp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lapu;

    invoke-direct {v0}, Lapu;-><init>()V

    sput-object v0, Layy;->a:Lapu;

    new-instance v0, Layz;

    invoke-direct {v0}, Layz;-><init>()V

    sput-object v0, Layy;->d:Laps;

    new-instance v0, Lapm;

    const-string v1, "Common.API"

    sget-object v2, Layy;->d:Laps;

    sget-object v3, Layy;->a:Lapu;

    invoke-direct {v0, v1, v2, v3}, Lapm;-><init>(Ljava/lang/String;Laps;Lapu;)V

    sput-object v0, Layy;->b:Lapm;

    new-instance v0, Lazb;

    invoke-direct {v0}, Lazb;-><init>()V

    sput-object v0, Layy;->c:Laza;

    return-void
.end method
