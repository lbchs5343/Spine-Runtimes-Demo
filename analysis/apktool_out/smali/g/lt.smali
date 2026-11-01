.class public abstract Lg/lt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg/dba;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lg/lt;

    invoke-static {v0}, Lg/dsr;->k(Ljava/lang/Class;)Lg/dba;

    move-result-object v0

    sput-object v0, Lg/lt;->a:Lg/dba;

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/List;)V
    .locals 12

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/fpa;

    iget-object v2, v1, Lg/fpa;->a:Lg/any;

    iget-object v3, v1, Lg/fpa;->c:Ljava/util/LinkedHashMap;

    sget-object v4, Lg/any;->SYSTEM:Lg/any;

    if-ne v2, v4, :cond_1

    iget-object v2, v1, Lg/fpa;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, -0x1

    sparse-switch v4, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v4, "Ldalvik/annotation/Signature;"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v7, 0x4

    goto :goto_1

    :sswitch_1
    const-string v4, "Ldalvik/annotation/MethodParameters;"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v7, 0x3

    goto :goto_1

    :sswitch_2
    const-string v4, "Ldalvik/annotation/Throws;"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v7, 0x2

    goto :goto_1

    :sswitch_3
    const-string v4, "Ldalvik/annotation/AnnotationDefault;"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_5
    const/4 v7, 0x1

    goto :goto_1

    :sswitch_4
    const-string v4, "Ldalvik/annotation/InnerClass;"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_1

    :cond_6
    const/4 v7, 0x0

    :goto_1
    const-string v2, "value"

    const-string v4, "Failed to parse annotation: {}"

    const-string v8, "accessFlags"

    sget-object v9, Lg/lt;->a:Lg/dba;

    packed-switch v7, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance v1, Lg/dfc;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/ghr;

    iget-object v2, v2, Lg/ghr;->f:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v6, :cond_7

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/ghr;

    iget-object v2, v2, Lg/ghr;->f:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    goto :goto_3

    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/ghr;

    iget-object v4, v4, Lg/ghr;->f:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_8
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-direct {v1, v2}, Lg/dfc;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_1
    :try_start_0
    const-string v2, "names"

    invoke-static {v1, v2}, Lg/dyd;->bs(Lg/fpa;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v8}, Lg/dyd;->bs(Lg/fpa;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ne v6, v7, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v6}, Ljava/util/ArrayList;-><init>(I)V

    :goto_4
    if-ge v5, v6, :cond_9

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg/ghr;

    iget-object v8, v8, Lg/ghr;->f:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lg/ghr;

    iget-object v10, v10, Lg/ghr;->f:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    new-instance v11, Lg/bjc;

    invoke-direct {v11, v10, v8}, Lg/bjc;-><init>(ILjava/lang/String;)V

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :catch_0
    move-exception v2

    goto :goto_5

    :cond_9
    new-instance v2, Lg/esp;

    invoke-direct {v2, v7}, Lg/esp;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :goto_5
    invoke-interface {v9, v1, v4, v2}, Lg/dba;->t(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_2
    :try_start_1
    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/ghr;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lg/ghr;->f:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lj$/util/Collection$b;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lg/fov;

    const/16 v3, 0x12

    invoke-direct {v2, v3}, Lg/fov;-><init>(I)V

    invoke-interface {v1, v2}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    new-instance v2, Lg/cym;

    invoke-direct {v2, v1}, Lg/cym;-><init>(Ljava/util/List;)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v1

    const-string v2, "Failed to convert dalvik throws annotation"

    invoke-interface {v9, v2, v1}, Lg/dba;->c(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/ghr;

    if-eqz v1, :cond_1

    iget-object v2, v1, Lg/ghr;->b:Lg/dnd;

    sget-object v3, Lg/dnd;->ENCODED_ANNOTATION:Lg/dnd;

    if-ne v2, v3, :cond_1

    iget-object v1, v1, Lg/ghr;->f:Ljava/lang/Object;

    check-cast v1, Lg/fpa;

    new-instance v2, Lg/feu;

    iget-object v1, v1, Lg/fpa;->c:Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Lg/feu;-><init>(Ljava/util/LinkedHashMap;)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_4
    :try_start_2
    const-string v2, "name"

    sget-object v6, Lg/dnd;->ENCODED_STRING:Lg/dnd;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    const/4 v10, 0x0

    if-eqz v7, :cond_a

    goto :goto_6

    :cond_a
    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/ghr;

    if-eqz v2, :cond_c

    iget-object v7, v2, Lg/ghr;->b:Lg/dnd;

    if-eq v7, v6, :cond_b

    goto :goto_6

    :cond_b
    iget-object v2, v2, Lg/ghr;->f:Ljava/lang/Object;

    goto :goto_7

    :cond_c
    :goto_6
    move-object v2, v10

    :goto_7
    check-cast v2, Ljava/lang/String;

    sget-object v6, Lg/dnd;->ENCODED_INT:Lg/dnd;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_d

    goto :goto_8

    :cond_d
    invoke-virtual {v3, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/ghr;

    if-eqz v3, :cond_f

    iget-object v7, v3, Lg/ghr;->b:Lg/dnd;

    if-eq v7, v6, :cond_e

    goto :goto_8

    :cond_e
    iget-object v5, v3, Lg/ghr;->f:Ljava/lang/Object;

    :cond_f
    :goto_8
    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v2, :cond_10

    if-eqz v3, :cond_1

    :cond_10
    new-instance v5, Lg/dmk;

    invoke-direct {v5, v3, p0, v10, v2}, Lg/dmk;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lg/gmk;

    invoke-static {p0, v5}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {v2, v3}, Lg/gmk;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v2

    invoke-interface {v9, v1, v4, v2}, Lg/dba;->t(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_11
    invoke-static {p2}, Lg/ks;->b(Ljava/util/List;)Lg/ks;

    move-result-object p0

    invoke-static {p0, p1}, Lg/acr;->bj(Ljava/lang/Object;Ljava/util/ArrayList;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x71f1656d -> :sswitch_4
        -0x41d6d9b1 -> :sswitch_3
        -0x33317c98 -> :sswitch_2
        0x4fcf134a -> :sswitch_1
        0x63354869 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
