.class final synthetic Lbzt;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field private final a:Landroid/widget/ListView;


# direct methods
.method private constructor <init>(Landroid/widget/ListView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbzt;->a:Landroid/widget/ListView;

    return-void
.end method

.method public static a(Landroid/widget/ListView;)Landroid/widget/AdapterView$OnItemLongClickListener;
    .locals 1

    new-instance v0, Lbzt;

    invoke-direct {v0, p0}, Lbzt;-><init>(Landroid/widget/ListView;)V

    return-object v0
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 6
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lbzt;->a:Landroid/widget/ListView;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lbzh;->a(Landroid/widget/ListView;Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v0

    return v0
.end method
