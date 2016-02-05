.class final synthetic Lbzk;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final a:Lbzh;

.field private final b:Ljava/lang/String;

.field private final c:Landroid/content/pm/ApplicationInfo;

.field private final d:Ljava/lang/CharSequence;


# direct methods
.method private constructor <init>(Lbzh;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbzk;->a:Lbzh;

    iput-object p2, p0, Lbzk;->b:Ljava/lang/String;

    iput-object p3, p0, Lbzk;->c:Landroid/content/pm/ApplicationInfo;

    iput-object p4, p0, Lbzk;->d:Ljava/lang/CharSequence;

    return-void
.end method

.method public static a(Lbzh;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/CharSequence;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    new-instance v0, Lbzk;

    invoke-direct {v0, p0, p1, p2, p3}, Lbzk;-><init>(Lbzh;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/CharSequence;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lbzk;->a:Lbzh;

    iget-object v1, p0, Lbzk;->b:Ljava/lang/String;

    iget-object v2, p0, Lbzk;->c:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Lbzk;->d:Ljava/lang/CharSequence;

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lbzh;->a(Lbzh;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/CharSequence;Landroid/content/DialogInterface;I)V

    return-void
.end method
