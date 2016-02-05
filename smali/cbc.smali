.class final synthetic Lcbc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static final a:Lcbc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcbc;

    invoke-direct {v0}, Lcbc;-><init>()V

    sput-object v0, Lcbc;->a:Lcbc;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    .locals 1

    sget-object v0, Lcbc;->a:Lcbc;

    return-object v0
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    invoke-static {p1, p2}, Lcbb;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method
