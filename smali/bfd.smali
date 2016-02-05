.class final enum Lbfd;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lbfd;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lbfd;

.field public static final enum b:Lbfd;

.field public static final enum c:Lbfd;

.field private static final synthetic d:[Lbfd;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lbfd;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lbfd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbfd;->a:Lbfd;

    new-instance v0, Lbfd;

    const-string v1, "URL"

    invoke-direct {v0, v1, v3}, Lbfd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbfd;->b:Lbfd;

    new-instance v0, Lbfd;

    const-string v1, "BACKSLASH"

    invoke-direct {v0, v1, v4}, Lbfd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbfd;->c:Lbfd;

    const/4 v0, 0x3

    new-array v0, v0, [Lbfd;

    sget-object v1, Lbfd;->a:Lbfd;

    aput-object v1, v0, v2

    sget-object v1, Lbfd;->b:Lbfd;

    aput-object v1, v0, v3

    sget-object v1, Lbfd;->c:Lbfd;

    aput-object v1, v0, v4

    sput-object v0, Lbfd;->d:[Lbfd;

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

.method public static valueOf(Ljava/lang/String;)Lbfd;
    .locals 1

    const-class v0, Lbfd;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbfd;

    return-object v0
.end method

.method public static values()[Lbfd;
    .locals 1

    sget-object v0, Lbfd;->d:[Lbfd;

    invoke-virtual {v0}, [Lbfd;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbfd;

    return-object v0
.end method
