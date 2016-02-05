.class final synthetic Lbzv;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private final a:Lbzh;

.field private final b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lbzh;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbzv;->a:Lbzh;

    iput-object p2, p0, Lbzv;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Lbzh;Ljava/lang/String;)Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .locals 1

    new-instance v0, Lbzv;

    invoke-direct {v0, p0, p1}, Lbzv;-><init>(Lbzh;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lbzv;->a:Lbzh;

    iget-object v1, p0, Lbzv;->b:Ljava/lang/String;

    invoke-static {v0, v1, p1, p2}, Lbzh;->a(Lbzh;Ljava/lang/String;Landroid/widget/CompoundButton;Z)V

    return-void
.end method
