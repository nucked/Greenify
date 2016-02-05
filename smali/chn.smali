.class final synthetic Lchn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:[Landroid/os/ParcelFileDescriptor;

.field private final b:Lchq;

.field private final c:Ljava/lang/String;

.field private final d:[Ljava/lang/String;


# direct methods
.method private constructor <init>([Landroid/os/ParcelFileDescriptor;Lchq;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lchn;->a:[Landroid/os/ParcelFileDescriptor;

    iput-object p2, p0, Lchn;->b:Lchq;

    iput-object p3, p0, Lchn;->c:Ljava/lang/String;

    iput-object p4, p0, Lchn;->d:[Ljava/lang/String;

    return-void
.end method

.method public static a([Landroid/os/ParcelFileDescriptor;Lchq;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lchn;

    invoke-direct {v0, p0, p1, p2, p3}, Lchn;-><init>([Landroid/os/ParcelFileDescriptor;Lchq;Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lchn;->a:[Landroid/os/ParcelFileDescriptor;

    iget-object v1, p0, Lchn;->b:Lchq;

    iget-object v2, p0, Lchn;->c:Ljava/lang/String;

    iget-object v3, p0, Lchn;->d:[Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lchm;->a([Landroid/os/ParcelFileDescriptor;Lchq;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
