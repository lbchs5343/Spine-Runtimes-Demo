.class public abstract Lg/duu;
.super Ljava/lang/Object;


# instance fields
.field public final f:Lg/aiu;

.field public final g:Ljava/util/ArrayList;

.field public final h:Landroid/content/Context;

.field public final i:Ljava/util/ArrayList;

.field public final j:Ljava/lang/String;

.field public final k:Ljava/util/Map;

.field public final l:Lg/dlv;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lg/dlv;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/duu;->h:Landroid/content/Context;

    iput-object p3, p0, Lg/duu;->j:Ljava/lang/String;

    iput-object p4, p0, Lg/duu;->k:Ljava/util/Map;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lg/duu;->i:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lg/duu;->g:Ljava/util/ArrayList;

    invoke-static {p3}, Lg/aiu;->b(Ljava/lang/String;)Lg/aiu;

    move-result-object p1

    iput-object p1, p0, Lg/duu;->f:Lg/aiu;

    iput-object p2, p0, Lg/duu;->l:Lg/dlv;

    return-void
.end method


# virtual methods
.method public b()Ljava/util/ArrayList;
    .locals 3

    iget-object v0, p0, Lg/duu;->f:Lg/aiu;

    invoke-virtual {v0}, Lg/aiu;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lg/duu;->m()V

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/animation/Keyframe;

    iget-object v2, p0, Lg/duu;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/animation/Keyframe;

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    invoke-virtual {p0}, Lg/duu;->e()Landroid/animation/TypeEvaluator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    iget-object v1, p0, Lg/duu;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public abstract c()V
.end method

.method public abstract d(FLjava/lang/String;)V
.end method

.method public abstract e()Landroid/animation/TypeEvaluator;
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/duu;->f:Lg/aiu;

    invoke-virtual {v0}, Lg/aiu;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final m()V
    .locals 5

    iget-object v0, p0, Lg/duu;->k:Ljava/util/Map;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-gtz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    if-nez v1, :cond_2

    invoke-virtual {p0}, Lg/duu;->c()V

    :cond_2
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    div-float/2addr v4, v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v4, v2}, Lg/duu;->d(FLjava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-gtz v1, :cond_5

    goto :goto_2

    :cond_5
    instance-of v1, v0, Ljava/util/TreeMap;

    if-eqz v1, :cond_6

    move-object v1, v0

    check-cast v1, Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_6

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v3, v0}, Lg/duu;->d(FLjava/lang/String;)V

    :cond_6
    :goto_2
    return-void
.end method
