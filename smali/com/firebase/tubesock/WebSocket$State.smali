.class final enum Lcom/firebase/tubesock/WebSocket$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/firebase/tubesock/WebSocket$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/firebase/tubesock/WebSocket$State;

.field public static final enum CONNECTED:Lcom/firebase/tubesock/WebSocket$State;

.field public static final enum CONNECTING:Lcom/firebase/tubesock/WebSocket$State;

.field public static final enum DISCONNECTED:Lcom/firebase/tubesock/WebSocket$State;

.field public static final enum DISCONNECTING:Lcom/firebase/tubesock/WebSocket$State;

.field public static final enum NONE:Lcom/firebase/tubesock/WebSocket$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    new-instance v0, Lcom/firebase/tubesock/WebSocket$State;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/firebase/tubesock/WebSocket$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/firebase/tubesock/WebSocket$State;->NONE:Lcom/firebase/tubesock/WebSocket$State;

    new-instance v0, Lcom/firebase/tubesock/WebSocket$State;

    const-string v1, "CONNECTING"

    invoke-direct {v0, v1, v3}, Lcom/firebase/tubesock/WebSocket$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/firebase/tubesock/WebSocket$State;->CONNECTING:Lcom/firebase/tubesock/WebSocket$State;

    new-instance v0, Lcom/firebase/tubesock/WebSocket$State;

    const-string v1, "CONNECTED"

    invoke-direct {v0, v1, v4}, Lcom/firebase/tubesock/WebSocket$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/firebase/tubesock/WebSocket$State;->CONNECTED:Lcom/firebase/tubesock/WebSocket$State;

    new-instance v0, Lcom/firebase/tubesock/WebSocket$State;

    const-string v1, "DISCONNECTING"

    invoke-direct {v0, v1, v5}, Lcom/firebase/tubesock/WebSocket$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/firebase/tubesock/WebSocket$State;->DISCONNECTING:Lcom/firebase/tubesock/WebSocket$State;

    new-instance v0, Lcom/firebase/tubesock/WebSocket$State;

    const-string v1, "DISCONNECTED"

    invoke-direct {v0, v1, v6}, Lcom/firebase/tubesock/WebSocket$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/firebase/tubesock/WebSocket$State;->DISCONNECTED:Lcom/firebase/tubesock/WebSocket$State;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/firebase/tubesock/WebSocket$State;

    sget-object v1, Lcom/firebase/tubesock/WebSocket$State;->NONE:Lcom/firebase/tubesock/WebSocket$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/firebase/tubesock/WebSocket$State;->CONNECTING:Lcom/firebase/tubesock/WebSocket$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/firebase/tubesock/WebSocket$State;->CONNECTED:Lcom/firebase/tubesock/WebSocket$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/firebase/tubesock/WebSocket$State;->DISCONNECTING:Lcom/firebase/tubesock/WebSocket$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/firebase/tubesock/WebSocket$State;->DISCONNECTED:Lcom/firebase/tubesock/WebSocket$State;

    aput-object v1, v0, v6

    sput-object v0, Lcom/firebase/tubesock/WebSocket$State;->$VALUES:[Lcom/firebase/tubesock/WebSocket$State;

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
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/firebase/tubesock/WebSocket$State;
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/firebase/tubesock/WebSocket$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/firebase/tubesock/WebSocket$State;

    return-object v0
.end method

.method public static values()[Lcom/firebase/tubesock/WebSocket$State;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/firebase/tubesock/WebSocket$State;->$VALUES:[Lcom/firebase/tubesock/WebSocket$State;

    invoke-virtual {v0}, [Lcom/firebase/tubesock/WebSocket$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/firebase/tubesock/WebSocket$State;

    return-object v0
.end method
