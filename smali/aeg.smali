.class Laeg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Laee;


# direct methods
.method private constructor <init>(Laee;)V
    .locals 0

    .prologue
    .line 1518
    iput-object p1, p0, Laeg;->a:Laee;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Laee;Laea;)V
    .locals 0

    .prologue
    .line 1518
    invoke-direct {p0, p1}, Laeg;-><init>(Laee;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1521
    iget-object v0, p0, Laeg;->a:Laee;

    invoke-static {v0}, Laee;->b(Laee;)V

    .line 1522
    return-void
.end method
