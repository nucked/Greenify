.class public final enum Lcom/firebase/client/snapshot/Node$HashVersion;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/firebase/client/snapshot/Node$HashVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/firebase/client/snapshot/Node$HashVersion;

.field public static final enum V1:Lcom/firebase/client/snapshot/Node$HashVersion;

.field public static final enum V2:Lcom/firebase/client/snapshot/Node$HashVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 17
    new-instance v0, Lcom/firebase/client/snapshot/Node$HashVersion;

    const-string v1, "V1"

    invoke-direct {v0, v1, v2}, Lcom/firebase/client/snapshot/Node$HashVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/firebase/client/snapshot/Node$HashVersion;->V1:Lcom/firebase/client/snapshot/Node$HashVersion;

    .line 19
    new-instance v0, Lcom/firebase/client/snapshot/Node$HashVersion;

    const-string v1, "V2"

    invoke-direct {v0, v1, v3}, Lcom/firebase/client/snapshot/Node$HashVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/firebase/client/snapshot/Node$HashVersion;->V2:Lcom/firebase/client/snapshot/Node$HashVersion;

    .line 15
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/firebase/client/snapshot/Node$HashVersion;

    sget-object v1, Lcom/firebase/client/snapshot/Node$HashVersion;->V1:Lcom/firebase/client/snapshot/Node$HashVersion;

    aput-object v1, v0, v2

    sget-object v1, Lcom/firebase/client/snapshot/Node$HashVersion;->V2:Lcom/firebase/client/snapshot/Node$HashVersion;

    aput-object v1, v0, v3

    sput-object v0, Lcom/firebase/client/snapshot/Node$HashVersion;->$VALUES:[Lcom/firebase/client/snapshot/Node$HashVersion;

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
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/firebase/client/snapshot/Node$HashVersion;
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/firebase/client/snapshot/Node$HashVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/snapshot/Node$HashVersion;

    return-object v0
.end method

.method public static values()[Lcom/firebase/client/snapshot/Node$HashVersion;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/firebase/client/snapshot/Node$HashVersion;->$VALUES:[Lcom/firebase/client/snapshot/Node$HashVersion;

    invoke-virtual {v0}, [Lcom/firebase/client/snapshot/Node$HashVersion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/firebase/client/snapshot/Node$HashVersion;

    return-object v0
.end method
