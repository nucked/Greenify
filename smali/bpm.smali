.class final enum Lbpm;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lbpm;",
        ">;",
        "Ljava/util/concurrent/Executor;"
    }
.end annotation


# static fields
.field public static final enum a:Lbpm;

.field private static final synthetic b:[Lbpm;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 455
    new-instance v0, Lbpm;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lbpm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbpm;->a:Lbpm;

    .line 454
    const/4 v0, 0x1

    new-array v0, v0, [Lbpm;

    sget-object v1, Lbpm;->a:Lbpm;

    aput-object v1, v0, v2

    sput-object v0, Lbpm;->b:[Lbpm;

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
    .line 454
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbpm;
    .locals 1

    .prologue
    .line 454
    const-class v0, Lbpm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbpm;

    return-object v0
.end method

.method public static values()[Lbpm;
    .locals 1

    .prologue
    .line 454
    sget-object v0, Lbpm;->b:[Lbpm;

    invoke-virtual {v0}, [Lbpm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbpm;

    return-object v0
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 457
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 458
    return-void
.end method
