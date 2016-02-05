.class final synthetic Lbzx;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final a:Landroid/app/Activity;


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbzx;->a:Landroid/app/Activity;

    return-void
.end method

.method public static a(Landroid/app/Activity;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    new-instance v0, Lbzx;

    invoke-direct {v0, p0}, Lbzx;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lbzx;->a:Landroid/app/Activity;

    invoke-static {v0, p1, p2}, Lbzh;->a(Landroid/app/Activity;Landroid/content/DialogInterface;I)V

    return-void
.end method
