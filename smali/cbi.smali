.class public final enum Lcbi;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcbi;",
        ">;"
    }
.end annotation

.annotation build Lproguard/annotation/KeepClassMemberNames;
.end annotation


# static fields
.field public static final enum a:Lcbi;

.field public static final enum b:Lcbi;

.field public static final enum c:Lcbi;

.field public static final enum d:Lcbi;

.field public static final enum e:Lcbi;

.field public static final enum f:Lcbi;

.field public static final enum g:Lcbi;

.field public static final enum h:Lcbi;

.field public static final enum i:Lcbi;

.field public static final enum j:Lcbi;

.field public static final enum k:Lcbi;

.field public static final enum l:Lcbi;

.field public static final enum m:Lcbi;

.field public static final enum n:Lcbi;

.field public static final enum o:Lcbi;

.field public static final enum p:Lcbi;

.field public static final enum q:Lcbi;

.field public static final enum r:Lcbi;

.field public static final enum s:Lcbi;

.field private static final synthetic t:[Lcbi;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 9
    new-instance v0, Lcbi;

    const-string v1, "MenuAction"

    invoke-direct {v0, v1, v3}, Lcbi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcbi;->a:Lcbi;

    .line 10
    new-instance v0, Lcbi;

    const-string v1, "GreenifyAction"

    invoke-direct {v0, v1, v4}, Lcbi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcbi;->b:Lcbi;

    .line 11
    new-instance v0, Lcbi;

    const-string v1, "GreenifyState"

    invoke-direct {v0, v1, v5}, Lcbi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcbi;->c:Lcbi;

    .line 12
    new-instance v0, Lcbi;

    const-string v1, "StateIgnoring"

    invoke-direct {v0, v1, v6}, Lcbi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcbi;->d:Lcbi;

    .line 13
    new-instance v0, Lcbi;

    const-string v1, "Ingreenifiable"

    invoke-direct {v0, v1, v7}, Lcbi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcbi;->e:Lcbi;

    .line 14
    new-instance v0, Lcbi;

    const-string v1, "HibernationFailure"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcbi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcbi;->f:Lcbi;

    .line 15
    new-instance v0, Lcbi;

    const-string v1, "WakeupBlocker"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcbi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcbi;->g:Lcbi;

    .line 16
    new-instance v0, Lcbi;

    const-string v1, "DonationVersion"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcbi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcbi;->h:Lcbi;

    .line 17
    new-instance v0, Lcbi;

    const-string v1, "ExperimentalFeature"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcbi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcbi;->i:Lcbi;

    .line 18
    new-instance v0, Lcbi;

    const-string v1, "ForceStopButton"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcbi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcbi;->j:Lcbi;

    .line 19
    new-instance v0, Lcbi;

    const-string v1, "TimerCoalescing"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcbi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcbi;->k:Lcbi;

    .line 20
    new-instance v0, Lcbi;

    const-string v1, "CleanerSurvival"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcbi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcbi;->l:Lcbi;

    .line 21
    new-instance v0, Lcbi;

    const-string v1, "Network"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcbi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcbi;->m:Lcbi;

    .line 22
    new-instance v0, Lcbi;

    const-string v1, "Doze"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcbi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcbi;->n:Lcbi;

    .line 23
    new-instance v0, Lcbi;

    const-string v1, "Temp"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcbi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcbi;->o:Lcbi;

    .line 24
    new-instance v0, Lcbi;

    const-string v1, "Assert"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcbi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcbi;->p:Lcbi;

    .line 25
    new-instance v0, Lcbi;

    const-string v1, "Compatibility"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcbi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcbi;->q:Lcbi;

    .line 26
    new-instance v0, Lcbi;

    const-string v1, "Health"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcbi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcbi;->r:Lcbi;

    .line 27
    new-instance v0, Lcbi;

    const-string v1, "Hack"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcbi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcbi;->s:Lcbi;

    .line 6
    const/16 v0, 0x13

    new-array v0, v0, [Lcbi;

    sget-object v1, Lcbi;->a:Lcbi;

    aput-object v1, v0, v3

    sget-object v1, Lcbi;->b:Lcbi;

    aput-object v1, v0, v4

    sget-object v1, Lcbi;->c:Lcbi;

    aput-object v1, v0, v5

    sget-object v1, Lcbi;->d:Lcbi;

    aput-object v1, v0, v6

    sget-object v1, Lcbi;->e:Lcbi;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcbi;->f:Lcbi;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcbi;->g:Lcbi;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcbi;->h:Lcbi;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcbi;->i:Lcbi;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcbi;->j:Lcbi;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcbi;->k:Lcbi;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcbi;->l:Lcbi;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcbi;->m:Lcbi;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcbi;->n:Lcbi;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcbi;->o:Lcbi;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcbi;->p:Lcbi;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcbi;->q:Lcbi;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcbi;->r:Lcbi;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcbi;->s:Lcbi;

    aput-object v2, v0, v1

    sput-object v0, Lcbi;->t:[Lcbi;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcbi;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcbi;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcbi;

    return-object v0
.end method

.method public static values()[Lcbi;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcbi;->t:[Lcbi;

    invoke-virtual {v0}, [Lcbi;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcbi;

    return-object v0
.end method
