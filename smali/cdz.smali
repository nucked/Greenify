.class public Lcdz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final b:Lcea;

.field final c:Lcea;

.field final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcdr;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcdz;->a:Ljava/util/HashSet;

    .line 217
    new-instance v0, Lcea;

    invoke-direct {v0}, Lcea;-><init>()V

    iput-object v0, p0, Lcdz;->b:Lcea;

    .line 218
    new-instance v0, Lcea;

    invoke-direct {v0}, Lcea;-><init>()V

    iput-object v0, p0, Lcdz;->c:Lcea;

    .line 220
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcdz;->d:Ljava/util/Map;

    .line 67
    iput-object p1, p0, Lcdz;->e:Ljava/io/File;

    return-void
.end method

.method private a(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 129
    const-string v0, "or"

    invoke-interface {p1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 130
    const-string v0, "sender"

    invoke-interface {p1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    const-string v1, "type"

    const-string v2, "system"

    invoke-interface {v0, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    const-string v1, "sender"

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 131
    const-string v0, "not"

    invoke-interface {p1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    const-string v1, "sender"

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    const-string v1, "type"

    const-string v2, "userId"

    invoke-interface {v0, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    const-string v1, "sender"

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    const-string v1, "not"

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 132
    const-string v0, "or"

    invoke-interface {p1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 133
    return-void
.end method

.method private a(Lorg/xmlpull/v1/XmlSerializer;Lcea;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 196
    const-string v0, "intent-filter"

    invoke-interface {p1, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 197
    iget-object v0, p2, Lcea;->a:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 198
    const-string v2, "action"

    invoke-interface {p1, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v2

    const-string v3, "name"

    invoke-interface {v2, v5, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    const-string v2, "action"

    invoke-interface {v0, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 199
    :cond_0
    const-string v0, "intent-filter"

    invoke-interface {p1, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 200
    iget-object v0, p2, Lcea;->c:Lbof;

    invoke-interface {v0}, Lbof;->g()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 201
    const-string v2, "intent-filter"

    invoke-interface {p1, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 202
    const-string v2, "scheme"

    invoke-interface {p1, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v2

    const-string v3, "name"

    invoke-interface {v2, v5, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v2

    const-string v3, "scheme"

    invoke-interface {v2, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 203
    iget-object v2, p2, Lcea;->c:Lbof;

    invoke-interface {v2, v0}, Lbof;->b(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 204
    const-string v3, "action"

    invoke-interface {p1, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v3

    const-string v4, "name"

    invoke-interface {v3, v5, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    const-string v3, "action"

    invoke-interface {v0, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_2

    .line 205
    :cond_1
    const-string v0, "intent-filter"

    invoke-interface {p1, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1

    .line 207
    :cond_2
    iget-object v0, p2, Lcea;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/IntentFilter;

    .line 208
    const-string v2, "intent-filter"

    invoke-interface {p1, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 209
    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 210
    const-string v0, "intent-filter"

    invoke-interface {p1, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_3

    .line 212
    :cond_3
    return-void
.end method

.method private a(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lcom/oasisfeng/greenify/engine/blocker/BlockerIntentFilter;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 145
    if-nez p3, :cond_1

    .line 166
    :cond_0
    return-void

    .line 146
    :cond_1
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oasisfeng/greenify/engine/blocker/BlockerIntentFilter;

    .line 147
    invoke-interface {p1, v5, p2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v2

    const-string v3, "block"

    const-string v4, "true"

    invoke-interface {v2, v5, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 149
    iget-object v2, v0, Lcom/oasisfeng/greenify/engine/blocker/BlockerIntentFilter;->a:Landroid/content/ComponentName;

    if-eqz v2, :cond_2

    .line 150
    invoke-virtual {v0}, Lcom/oasisfeng/greenify/engine/blocker/BlockerIntentFilter;->countActions()I

    move-result v2

    if-eqz v2, :cond_4

    .line 151
    iget-object v2, v0, Lcom/oasisfeng/greenify/engine/blocker/BlockerIntentFilter;->a:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    .line 152
    const-string v3, "component"

    invoke-interface {p1, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v3

    const-string v4, "equals"

    invoke-interface {v3, v5, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v2

    const-string v3, "component"

    invoke-interface {v2, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 156
    :cond_2
    :goto_1
    invoke-virtual {v0}, Lcom/oasisfeng/greenify/engine/blocker/BlockerIntentFilter;->countActions()I

    move-result v2

    if-eqz v2, :cond_3

    .line 157
    const-string v2, "intent-filter"

    invoke-interface {p1, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 158
    invoke-virtual {v0, p1}, Lcom/oasisfeng/greenify/engine/blocker/BlockerIntentFilter;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 159
    const-string v2, "intent-filter"

    invoke-interface {p1, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 161
    :cond_3
    iget-boolean v0, v0, Lcom/oasisfeng/greenify/engine/blocker/BlockerIntentFilter;->b:Z

    if-eqz v0, :cond_5

    invoke-direct {p0, p1}, Lcdz;->b(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 164
    :goto_2
    invoke-interface {p1, v5, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 154
    :cond_4
    const-string v2, "component-filter"

    invoke-interface {p1, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v2

    const-string v3, "name"

    iget-object v4, v0, Lcom/oasisfeng/greenify/engine/blocker/BlockerIntentFilter;->a:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v5, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v2

    const-string v3, "component-filter"

    invoke-interface {v2, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1

    .line 162
    :cond_5
    invoke-direct {p0, p1}, Lcdz;->a(Lorg/xmlpull/v1/XmlSerializer;)V

    goto :goto_2
.end method

.method private b(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 169
    const-string v0, "not"

    invoke-interface {p1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 170
    const-string v0, "sender"

    invoke-interface {p1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    const-string v1, "type"

    const-string v2, "userId"

    invoke-interface {v0, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    const-string v1, "sender"

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 171
    const-string v0, "not"

    invoke-interface {p1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 172
    return-void
.end method


# virtual methods
.method declared-synchronized a()V
    .locals 7

    .prologue
    .line 70
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcdz;->e:Ljava/io/File;

    const/4 v1, 0x0

    new-array v1, v1, [Lbpb;

    invoke-static {v0, v1}, Lbpc;->a(Ljava/io/File;[Lbpb;)Lbpa;

    move-result-object v0

    invoke-virtual {v0}, Lbpa;->b()Ljava/io/OutputStream;

    move-result-object v1

    .line 71
    new-instance v2, Lahn;

    invoke-direct {v2}, Lahn;-><init>()V

    .line 72
    const-string v0, "utf-8"

    invoke-interface {v2, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 73
    const/4 v0, 0x0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 75
    const/4 v0, 0x0

    const-string v3, "rules"

    invoke-interface {v2, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 88
    iget-object v0, p0, Lcdz;->a:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcdz;->b:Lcea;

    invoke-virtual {v0}, Lcea;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 89
    const/4 v0, 0x0

    const-string v3, "service"

    invoke-interface {v2, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    const/4 v3, 0x0

    const-string v4, "log"

    const-string v5, "true"

    invoke-interface {v0, v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 90
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v0, v3, :cond_0

    .line 91
    iget-object v0, p0, Lcdz;->a:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 92
    const/4 v4, 0x0

    const-string v5, "component-filter"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "name"

    invoke-interface {v4, v5, v6, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    const/4 v4, 0x0

    const-string v5, "component-filter"

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 94
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcdz;->b:Lcea;

    invoke-direct {p0, v2, v0}, Lcdz;->a(Lorg/xmlpull/v1/XmlSerializer;Lcea;)V

    .line 95
    invoke-direct {p0, v2}, Lcdz;->a(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 96
    const/4 v0, 0x0

    const-string v3, "service"

    invoke-interface {v2, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 108
    :cond_1
    iget-object v0, p0, Lcdz;->c:Lcea;

    invoke-virtual {v0}, Lcea;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 109
    const/4 v0, 0x0

    const-string v3, "broadcast"

    invoke-interface {v2, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    const/4 v3, 0x0

    const-string v4, "log"

    const-string v5, "true"

    invoke-interface {v0, v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 110
    iget-object v0, p0, Lcdz;->c:Lcea;

    invoke-direct {p0, v2, v0}, Lcdz;->a(Lorg/xmlpull/v1/XmlSerializer;Lcea;)V

    .line 111
    invoke-direct {p0, v2}, Lcdz;->a(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 112
    const/4 v0, 0x0

    const-string v3, "broadcast"

    invoke-interface {v2, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 116
    :cond_2
    iget-object v0, p0, Lcdz;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 117
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcdr;

    .line 118
    const-string v4, "service"

    iget-object v5, v0, Lcdr;->c:Ljava/util/Set;

    invoke-direct {p0, v2, v4, v5}, Lcdz;->a(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/Collection;)V

    .line 119
    const-string v4, "broadcast"

    iget-object v0, v0, Lcdr;->b:Ljava/util/Set;

    invoke-direct {p0, v2, v4, v0}, Lcdz;->a(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/Collection;)V

    goto :goto_1

    .line 122
    :cond_3
    const/4 v0, 0x0

    const-string v3, "rules"

    invoke-interface {v2, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 123
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 125
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    monitor-exit p0

    return-void
.end method
