.class public final enum Lbys;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lbys;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lbys;

.field public static final enum b:Lbys;

.field public static final enum c:Lbys;

.field public static final enum d:Lbys;

.field private static final synthetic e:[Lbys;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 84
    new-instance v0, Lbys;

    const-string v1, "Disabled"

    invoke-direct {v0, v1, v2}, Lbys;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbys;->a:Lbys;

    new-instance v0, Lbys;

    const-string v1, "Running"

    invoke-direct {v0, v1, v3}, Lbys;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbys;->b:Lbys;

    new-instance v0, Lbys;

    const-string v1, "Restarting"

    invoke-direct {v0, v1, v4}, Lbys;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbys;->c:Lbys;

    new-instance v0, Lbys;

    const-string v1, "Stopped"

    invoke-direct {v0, v1, v5}, Lbys;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbys;->d:Lbys;

    const/4 v0, 0x4

    new-array v0, v0, [Lbys;

    sget-object v1, Lbys;->a:Lbys;

    aput-object v1, v0, v2

    sget-object v1, Lbys;->b:Lbys;

    aput-object v1, v0, v3

    sget-object v1, Lbys;->c:Lbys;

    aput-object v1, v0, v4

    sget-object v1, Lbys;->d:Lbys;

    aput-object v1, v0, v5

    sput-object v0, Lbys;->e:[Lbys;

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
    .line 84
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbys;
    .locals 1

    .prologue
    .line 84
    const-class v0, Lbys;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbys;

    return-object v0
.end method

.method public static values()[Lbys;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lbys;->e:[Lbys;

    invoke-virtual {v0}, [Lbys;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbys;

    return-object v0
.end method
