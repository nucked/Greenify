.class public Lcom/oasisfeng/android/content/IntentFilters$FluentIntentFilter;
.super Landroid/content/IntentFilter;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/oasisfeng/android/content/IntentFilters$FluentIntentFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lbvz;

    invoke-direct {v0}, Lbvz;-><init>()V

    sput-object v0, Lcom/oasisfeng/android/content/IntentFilters$FluentIntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/IntentFilter;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/String;)Lcom/oasisfeng/android/content/IntentFilters$FluentIntentFilter;
    .locals 3

    .prologue
    .line 22
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    invoke-super {p0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 23
    :cond_0
    return-object p0
.end method
