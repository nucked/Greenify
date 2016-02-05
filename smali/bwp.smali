.class final synthetic Lbwp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field private final a:Landroid/preference/PreferenceGroup;


# direct methods
.method private constructor <init>(Landroid/preference/PreferenceGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbwp;->a:Landroid/preference/PreferenceGroup;

    return-void
.end method

.method public static a(Landroid/preference/PreferenceGroup;)Ljava/lang/Iterable;
    .locals 1

    new-instance v0, Lbwp;

    invoke-direct {v0, p0}, Lbwp;-><init>(Landroid/preference/PreferenceGroup;)V

    return-object v0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lbwp;->a:Landroid/preference/PreferenceGroup;

    invoke-static {v0}, Lbwo;->c(Landroid/preference/PreferenceGroup;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
