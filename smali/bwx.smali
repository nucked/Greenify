.class Lbwx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lbww;


# direct methods
.method constructor <init>(Lbww;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lbwx;->b:Lbww;

    iput-object p2, p0, Lbwx;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lbwx;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 30
    return-void
.end method
