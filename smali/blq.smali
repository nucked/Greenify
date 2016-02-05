.class final enum Lblq;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lblq;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lblq;

.field public static final enum b:Lblq;

.field public static final enum c:Lblq;

.field public static final enum d:Lblq;

.field private static final synthetic e:[Lblq;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 72
    new-instance v0, Lblq;

    const-string v1, "READY"

    invoke-direct {v0, v1, v2}, Lblq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lblq;->a:Lblq;

    .line 75
    new-instance v0, Lblq;

    const-string v1, "NOT_READY"

    invoke-direct {v0, v1, v3}, Lblq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lblq;->b:Lblq;

    .line 78
    new-instance v0, Lblq;

    const-string v1, "DONE"

    invoke-direct {v0, v1, v4}, Lblq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lblq;->c:Lblq;

    .line 81
    new-instance v0, Lblq;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v5}, Lblq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lblq;->d:Lblq;

    .line 70
    const/4 v0, 0x4

    new-array v0, v0, [Lblq;

    sget-object v1, Lblq;->a:Lblq;

    aput-object v1, v0, v2

    sget-object v1, Lblq;->b:Lblq;

    aput-object v1, v0, v3

    sget-object v1, Lblq;->c:Lblq;

    aput-object v1, v0, v4

    sget-object v1, Lblq;->d:Lblq;

    aput-object v1, v0, v5

    sput-object v0, Lblq;->e:[Lblq;

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
    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lblq;
    .locals 1

    .prologue
    .line 70
    const-class v0, Lblq;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lblq;

    return-object v0
.end method

.method public static values()[Lblq;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lblq;->e:[Lblq;

    invoke-virtual {v0}, [Lblq;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lblq;

    return-object v0
.end method
