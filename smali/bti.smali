.class public final Lbti;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbra;


# instance fields
.field private final a:Lbrl;

.field private final b:Lbpx;

.field private final c:Lbry;


# direct methods
.method public constructor <init>(Lbrl;Lbpx;Lbry;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lbti;->a:Lbrl;

    .line 57
    iput-object p2, p0, Lbti;->b:Lbpx;

    .line 58
    iput-object p3, p0, Lbti;->c:Lbry;

    .line 59
    return-void
.end method

.method private a(Lbpy;Ljava/lang/reflect/Field;Lbva;)Lbqz;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbpy;",
            "Ljava/lang/reflect/Field;",
            "Lbva",
            "<*>;)",
            "Lbqz",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 131
    const-class v0, Lbrc;

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lbrc;

    .line 132
    if-eqz v0, :cond_0

    .line 133
    iget-object v1, p0, Lbti;->a:Lbrl;

    invoke-static {v1, p1, p3, v0}, Lbsy;->a(Lbrl;Lbpy;Lbva;Lbrc;)Lbqz;

    move-result-object v0

    .line 134
    if-eqz v0, :cond_0

    .line 136
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1, p3}, Lbpy;->a(Lbva;)Lbqz;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lbti;Lbpy;Ljava/lang/reflect/Field;Lbva;)Lbqz;
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Lbti;->a(Lbpy;Ljava/lang/reflect/Field;Lbva;)Lbqz;

    move-result-object v0

    return-object v0
.end method

.method private a(Lbpy;Ljava/lang/reflect/Field;Ljava/lang/String;Lbva;ZZ)Lbtl;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbpy;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/String;",
            "Lbva",
            "<*>;ZZ)",
            "Lbtl;"
        }
    .end annotation

    .prologue
    .line 103
    invoke-virtual {p4}, Lbva;->a()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lbsl;->a(Ljava/lang/reflect/Type;)Z

    move-result v8

    .line 105
    new-instance v0, Lbtj;

    move-object v1, p0

    move-object v2, p3

    move v3, p5

    move v4, p6

    move-object v5, p1

    move-object v6, p2

    move-object v7, p4

    invoke-direct/range {v0 .. v8}, Lbtj;-><init>(Lbti;Ljava/lang/String;ZZLbpy;Ljava/lang/reflect/Field;Lbva;Z)V

    return-object v0
.end method

.method static a(Lbpx;Ljava/lang/reflect/Field;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbpx;",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    const-class v0, Lbrd;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lbrd;

    .line 77
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 78
    if-nez v0, :cond_1

    .line 79
    invoke-interface {p0, p1}, Lbpx;->a(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    :cond_0
    return-object v1

    .line 81
    :cond_1
    invoke-interface {v0}, Lbrd;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    invoke-interface {v0}, Lbrd;->b()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 83
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private a(Ljava/lang/reflect/Field;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lbti;->b:Lbpx;

    invoke-static {v0, p1}, Lbti;->a(Lbpx;Ljava/lang/reflect/Field;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private a(Lbpy;Lbva;Ljava/lang/Class;)Ljava/util/Map;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbpy;",
            "Lbva",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lbtl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    .line 141
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v10

    .line 174
    :goto_0
    return-object v1

    .line 145
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lbva;->b()Ljava/lang/reflect/Type;

    move-result-object v12

    .line 146
    :goto_1
    const-class v1, Ljava/lang/Object;

    move-object/from16 v0, p3

    if-eq v0, v1, :cond_6

    .line 147
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v13

    .line 148
    array-length v14, v13

    const/4 v1, 0x0

    move v11, v1

    :goto_2
    if-ge v11, v14, :cond_5

    aget-object v3, v13, v11

    .line 149
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v1}, Lbti;->a(Ljava/lang/reflect/Field;Z)Z

    move-result v6

    .line 150
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v1}, Lbti;->a(Ljava/lang/reflect/Field;Z)Z

    move-result v7

    .line 151
    if-nez v6, :cond_2

    if-nez v7, :cond_2

    .line 148
    :cond_1
    add-int/lit8 v1, v11, 0x1

    move v11, v1

    goto :goto_2

    .line 154
    :cond_2
    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 155
    invoke-virtual/range {p2 .. p2}, Lbva;->b()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-static {v1, v0, v2}, Lbrh;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v15

    .line 156
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lbti;->a(Ljava/lang/reflect/Field;)Ljava/util/List;

    move-result-object v16

    .line 157
    const/4 v8, 0x0

    .line 158
    const/4 v1, 0x0

    move v9, v1

    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v1

    if-ge v9, v1, :cond_4

    .line 159
    move-object/from16 v0, v16

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 160
    if-eqz v9, :cond_3

    const/4 v6, 0x0

    .line 161
    :cond_3
    invoke-static {v15}, Lbva;->a(Ljava/lang/reflect/Type;)Lbva;

    move-result-object v5

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v7}, Lbti;->a(Lbpy;Ljava/lang/reflect/Field;Ljava/lang/String;Lbva;ZZ)Lbtl;

    move-result-object v1

    .line 163
    invoke-interface {v10, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbtl;

    .line 164
    if-nez v8, :cond_7

    .line 158
    :goto_4
    add-int/lit8 v2, v9, 0x1

    move v9, v2

    move-object v8, v1

    goto :goto_3

    .line 166
    :cond_4
    if-eqz v8, :cond_1

    .line 167
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " declares multiple JSON fields named "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v8, Lbtl;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 171
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lbva;->b()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-static {v1, v0, v2}, Lbrh;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1}, Lbva;->a(Ljava/lang/reflect/Type;)Lbva;

    move-result-object p2

    .line 172
    invoke-virtual/range {p2 .. p2}, Lbva;->a()Ljava/lang/Class;

    move-result-object p3

    goto/16 :goto_1

    :cond_6
    move-object v1, v10

    .line 174
    goto/16 :goto_0

    :cond_7
    move-object v1, v8

    goto :goto_4
.end method

.method static a(Ljava/lang/reflect/Field;ZLbry;)Z
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lbry;->a(Ljava/lang/Class;Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2, p0, p1}, Lbry;->a(Ljava/lang/reflect/Field;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lbpy;Lbva;)Lbqz;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lbpy;",
            "Lbva",
            "<TT;>;)",
            "Lbqz",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 90
    invoke-virtual {p2}, Lbva;->a()Ljava/lang/Class;

    move-result-object v2

    .line 92
    const-class v1, Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 97
    :goto_0
    return-object v0

    .line 96
    :cond_0
    iget-object v1, p0, Lbti;->a:Lbrl;

    invoke-virtual {v1, p2}, Lbrl;->a(Lbva;)Lbsk;

    move-result-object v3

    .line 97
    new-instance v1, Lbtk;

    invoke-direct {p0, p1, p2, v2}, Lbti;->a(Lbpy;Lbva;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v3, v2, v0}, Lbtk;-><init>(Lbsk;Ljava/util/Map;Lbtj;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public a(Ljava/lang/reflect/Field;Z)Z
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lbti;->c:Lbry;

    invoke-static {p1, p2, v0}, Lbti;->a(Ljava/lang/reflect/Field;ZLbry;)Z

    move-result v0

    return v0
.end method
