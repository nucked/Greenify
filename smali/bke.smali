.class Lbke;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lbkb;


# direct methods
.method constructor <init>(Lbkb;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lbke;->b:Lbkb;

    iput-object p2, p0, Lbke;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lbke;->b:Lbkb;

    iget-object v1, p0, Lbke;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lbkb;->a(Lbkb;Ljava/lang/String;)V

    return-void
.end method
