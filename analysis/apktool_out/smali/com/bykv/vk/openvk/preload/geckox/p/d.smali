.class public final Lcom/bykv/vk/openvk/preload/geckox/p/d;
.super Ljava/lang/Object;


# static fields
.field private static d:Lcom/bykv/vk/openvk/preload/geckox/p/d;


# instance fields
.field public dq:Lcom/bykv/vk/openvk/preload/dq/iw;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bykv/vk/openvk/preload/geckox/p/d;

    invoke-direct {v0}, Lcom/bykv/vk/openvk/preload/geckox/p/d;-><init>()V

    sput-object v0, Lcom/bykv/vk/openvk/preload/geckox/p/d;->d:Lcom/bykv/vk/openvk/preload/geckox/p/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 21

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bykv/vk/openvk/preload/dq/mn;

    invoke-direct {v0}, Lcom/bykv/vk/openvk/preload/dq/mn;-><init>()V

    new-instance v1, Lcom/bykv/vk/openvk/preload/geckox/p/dq;

    invoke-direct {v1}, Lcom/bykv/vk/openvk/preload/geckox/p/dq;-><init>()V

    const-class v2, Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v1}, Lcom/bykv/vk/openvk/preload/dq/mn;->dq(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/bykv/vk/openvk/preload/dq/mn;

    new-instance v1, Lcom/bykv/vk/openvk/preload/geckox/p/dq;

    invoke-direct {v1}, Lcom/bykv/vk/openvk/preload/geckox/p/dq;-><init>()V

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v2, v1}, Lcom/bykv/vk/openvk/preload/dq/mn;->dq(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/bykv/vk/openvk/preload/dq/mn;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/bykv/vk/openvk/preload/dq/mn;->s:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, v0, Lcom/bykv/vk/openvk/preload/dq/mn;->iw:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v2, v0, Lcom/bykv/vk/openvk/preload/dq/mn;->s:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/bykv/vk/openvk/preload/dq/mn;->iw:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v2, v0, Lcom/bykv/vk/openvk/preload/dq/mn;->ia:Ljava/lang/String;

    iget v3, v0, Lcom/bykv/vk/openvk/preload/dq/mn;->kk:I

    iget v4, v0, Lcom/bykv/vk/openvk/preload/dq/mn;->o:I

    const-class v5, Ljava/sql/Date;

    const-class v6, Ljava/sql/Timestamp;

    const-class v7, Ljava/util/Date;

    if-eqz v2, :cond_0

    const-string v8, ""

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    new-instance v3, Lcom/bykv/vk/openvk/preload/dq/dq;

    invoke-direct {v3, v7, v2}, Lcom/bykv/vk/openvk/preload/dq/dq;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    new-instance v4, Lcom/bykv/vk/openvk/preload/dq/dq;

    invoke-direct {v4, v6, v2}, Lcom/bykv/vk/openvk/preload/dq/dq;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    new-instance v8, Lcom/bykv/vk/openvk/preload/dq/dq;

    invoke-direct {v8, v5, v2}, Lcom/bykv/vk/openvk/preload/dq/dq;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-eq v3, v2, :cond_1

    if-eq v4, v2, :cond_1

    new-instance v2, Lcom/bykv/vk/openvk/preload/dq/dq;

    invoke-direct {v2, v7, v3, v4}, Lcom/bykv/vk/openvk/preload/dq/dq;-><init>(Ljava/lang/Class;II)V

    new-instance v8, Lcom/bykv/vk/openvk/preload/dq/dq;

    invoke-direct {v8, v6, v3, v4}, Lcom/bykv/vk/openvk/preload/dq/dq;-><init>(Ljava/lang/Class;II)V

    new-instance v9, Lcom/bykv/vk/openvk/preload/dq/dq;

    invoke-direct {v9, v5, v3, v4}, Lcom/bykv/vk/openvk/preload/dq/dq;-><init>(Ljava/lang/Class;II)V

    move-object v3, v2

    move-object v4, v8

    move-object v8, v9

    :goto_0
    invoke-static {v7, v3}, Lcom/bykv/vk/openvk/preload/dq/d/dq/q;->dq(Ljava/lang/Class;Lcom/bykv/vk/openvk/preload/dq/r;)Lcom/bykv/vk/openvk/preload/dq/i;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v6, v4}, Lcom/bykv/vk/openvk/preload/dq/d/dq/q;->dq(Ljava/lang/Class;Lcom/bykv/vk/openvk/preload/dq/r;)Lcom/bykv/vk/openvk/preload/dq/i;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v5, v8}, Lcom/bykv/vk/openvk/preload/dq/d/dq/q;->dq(Ljava/lang/Class;Lcom/bykv/vk/openvk/preload/dq/r;)Lcom/bykv/vk/openvk/preload/dq/i;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance v3, Lcom/bykv/vk/openvk/preload/dq/iw;

    iget-object v4, v0, Lcom/bykv/vk/openvk/preload/dq/mn;->dq:Lcom/bykv/vk/openvk/preload/dq/d/p;

    iget-object v5, v0, Lcom/bykv/vk/openvk/preload/dq/mn;->ox:Lcom/bykv/vk/openvk/preload/dq/s;

    iget-object v6, v0, Lcom/bykv/vk/openvk/preload/dq/mn;->p:Ljava/util/Map;

    iget-boolean v7, v0, Lcom/bykv/vk/openvk/preload/dq/mn;->mn:Z

    iget-boolean v8, v0, Lcom/bykv/vk/openvk/preload/dq/mn;->no:Z

    iget-boolean v9, v0, Lcom/bykv/vk/openvk/preload/dq/mn;->jy:Z

    iget-boolean v10, v0, Lcom/bykv/vk/openvk/preload/dq/mn;->mp:Z

    iget-boolean v11, v0, Lcom/bykv/vk/openvk/preload/dq/mn;->q:Z

    iget-boolean v12, v0, Lcom/bykv/vk/openvk/preload/dq/mn;->f:Z

    iget-boolean v13, v0, Lcom/bykv/vk/openvk/preload/dq/mn;->ig:Z

    iget-object v14, v0, Lcom/bykv/vk/openvk/preload/dq/mn;->d:Lcom/bykv/vk/openvk/preload/dq/gh;

    iget-object v15, v0, Lcom/bykv/vk/openvk/preload/dq/mn;->ia:Ljava/lang/String;

    iget v2, v0, Lcom/bykv/vk/openvk/preload/dq/mn;->kk:I

    move-object/from16 v20, v1

    iget v1, v0, Lcom/bykv/vk/openvk/preload/dq/mn;->o:I

    move/from16 v17, v1

    iget-object v1, v0, Lcom/bykv/vk/openvk/preload/dq/mn;->s:Ljava/util/List;

    iget-object v0, v0, Lcom/bykv/vk/openvk/preload/dq/mn;->iw:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v18, v1

    move/from16 v16, v2

    invoke-direct/range {v3 .. v20}, Lcom/bykv/vk/openvk/preload/dq/iw;-><init>(Lcom/bykv/vk/openvk/preload/dq/d/p;Lcom/bykv/vk/openvk/preload/dq/s;Ljava/util/Map;ZZZZZZZLcom/bykv/vk/openvk/preload/dq/gh;Ljava/lang/String;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/bykv/vk/openvk/preload/geckox/p/d;->dq:Lcom/bykv/vk/openvk/preload/dq/iw;

    return-void
.end method

.method public static dq()Lcom/bykv/vk/openvk/preload/geckox/p/d;
    .locals 1

    sget-object v0, Lcom/bykv/vk/openvk/preload/geckox/p/d;->d:Lcom/bykv/vk/openvk/preload/geckox/p/d;

    return-object v0
.end method
