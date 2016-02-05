.class final synthetic Lbzj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final a:Lbzh;

.field private final b:Landroid/app/Activity;

.field private final c:Ljava/lang/String;

.field private final d:Landroid/content/pm/ApplicationInfo;

.field private final e:Ljava/lang/CharSequence;


# direct methods
.method private constructor <init>(Lbzh;Landroid/app/Activity;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbzj;->a:Lbzh;

    iput-object p2, p0, Lbzj;->b:Landroid/app/Activity;

    iput-object p3, p0, Lbzj;->c:Ljava/lang/String;

    iput-object p4, p0, Lbzj;->d:Landroid/content/pm/ApplicationInfo;

    iput-object p5, p0, Lbzj;->e:Ljava/lang/CharSequence;

    return-void
.end method

.method public static a(Lbzh;Landroid/app/Activity;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/CharSequence;)Landroid/content/DialogInterface$OnClickListener;
    .locals 6

    new-instance v0, Lbzj;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lbzj;-><init>(Lbzh;Landroid/app/Activity;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/CharSequence;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lbzj;->a:Lbzh;

    iget-object v1, p0, Lbzj;->b:Landroid/app/Activity;

    iget-object v2, p0, Lbzj;->c:Ljava/lang/String;

    iget-object v3, p0, Lbzj;->d:Landroid/content/pm/ApplicationInfo;

    iget-object v4, p0, Lbzj;->e:Ljava/lang/CharSequence;

    move-object v5, p1

    move v6, p2

    invoke-static/range {v0 .. v6}, Lbzh;->a(Lbzh;Landroid/app/Activity;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/CharSequence;Landroid/content/DialogInterface;I)V

    return-void
.end method
