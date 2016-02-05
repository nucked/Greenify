.class Lev;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Leu;


# direct methods
.method constructor <init>(Leu;)V
    .locals 0

    .prologue
    .line 514
    iput-object p1, p0, Lev;->a:Leu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lev;->a:Leu;

    invoke-virtual {v0}, Leu;->h()Z

    .line 518
    return-void
.end method
