.class public final Lban;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lapu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lapu",
            "<",
            "Lbcz;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lapu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lapu",
            "<",
            "Lbcz;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Laps;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laps",
            "<",
            "Lbcz;",
            "Lbat;",
            ">;"
        }
    .end annotation
.end field

.field static final d:Laps;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laps",
            "<",
            "Lbcz;",
            "Lbaq;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Lcom/google/android/gms/common/api/Scope;

.field public static final f:Lcom/google/android/gms/common/api/Scope;

.field public static final g:Lapm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lapm",
            "<",
            "Lbat;",
            ">;"
        }
    .end annotation
.end field

.field public static final h:Lapm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lapm",
            "<",
            "Lbaq;",
            ">;"
        }
    .end annotation
.end field

.field public static final i:Lbar;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lapu;

    invoke-direct {v0}, Lapu;-><init>()V

    sput-object v0, Lban;->a:Lapu;

    new-instance v0, Lapu;

    invoke-direct {v0}, Lapu;-><init>()V

    sput-object v0, Lban;->b:Lapu;

    new-instance v0, Lbao;

    invoke-direct {v0}, Lbao;-><init>()V

    sput-object v0, Lban;->c:Laps;

    new-instance v0, Lbap;

    invoke-direct {v0}, Lbap;-><init>()V

    sput-object v0, Lban;->d:Laps;

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string v1, "profile"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v0, Lban;->e:Lcom/google/android/gms/common/api/Scope;

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string v1, "email"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v0, Lban;->f:Lcom/google/android/gms/common/api/Scope;

    new-instance v0, Lapm;

    const-string v1, "SignIn.API"

    sget-object v2, Lban;->c:Laps;

    sget-object v3, Lban;->a:Lapu;

    invoke-direct {v0, v1, v2, v3}, Lapm;-><init>(Ljava/lang/String;Laps;Lapu;)V

    sput-object v0, Lban;->g:Lapm;

    new-instance v0, Lapm;

    const-string v1, "SignIn.INTERNAL_API"

    sget-object v2, Lban;->d:Laps;

    sget-object v3, Lban;->b:Lapu;

    invoke-direct {v0, v1, v2, v3}, Lapm;-><init>(Ljava/lang/String;Laps;Lapu;)V

    sput-object v0, Lban;->h:Lapm;

    new-instance v0, Lbcy;

    invoke-direct {v0}, Lbcy;-><init>()V

    sput-object v0, Lban;->i:Lbar;

    return-void
.end method
