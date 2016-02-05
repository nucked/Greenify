.class final enum Lbgo;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lbgo;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lbgo;

.field public static final enum b:Lbgo;

.field public static final enum c:Lbgo;

.field private static final synthetic d:[Lbgo;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lbgo;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lbgo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbgo;->a:Lbgo;

    new-instance v0, Lbgo;

    const-string v1, "CONTAINER"

    invoke-direct {v0, v1, v3}, Lbgo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbgo;->b:Lbgo;

    new-instance v0, Lbgo;

    const-string v1, "CONTAINER_DEBUG"

    invoke-direct {v0, v1, v4}, Lbgo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbgo;->c:Lbgo;

    const/4 v0, 0x3

    new-array v0, v0, [Lbgo;

    sget-object v1, Lbgo;->a:Lbgo;

    aput-object v1, v0, v2

    sget-object v1, Lbgo;->b:Lbgo;

    aput-object v1, v0, v3

    sget-object v1, Lbgo;->c:Lbgo;

    aput-object v1, v0, v4

    sput-object v0, Lbgo;->d:[Lbgo;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbgo;
    .locals 1

    const-class v0, Lbgo;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbgo;

    return-object v0
.end method

.method public static values()[Lbgo;
    .locals 1

    sget-object v0, Lbgo;->d:[Lbgo;

    invoke-virtual {v0}, [Lbgo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbgo;

    return-object v0
.end method
