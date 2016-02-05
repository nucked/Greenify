.class Laeh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ladz;


# direct methods
.method private constructor <init>(Ladz;)V
    .locals 0

    .prologue
    .line 1782
    iput-object p1, p0, Laeh;->a:Ladz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ladz;Laea;)V
    .locals 0

    .prologue
    .line 1782
    invoke-direct {p0, p1}, Laeh;-><init>(Ladz;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1784
    iget-object v0, p0, Laeh;->a:Ladz;

    invoke-virtual {v0}, Ladz;->j()V

    .line 1785
    return-void
.end method
