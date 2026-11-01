.class public final Lg/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/dsb;


# instance fields
.field public final a:Lg/ehe;

.field public final b:Lg/qd;

.field public final c:Ljava/util/ArrayList;

.field public final d:Lg/ja;

.field public final e:Lg/fvw;


# direct methods
.method public constructor <init>(Lg/ja;Lg/fvw;Lg/ehe;Lg/qd;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/s;->d:Lg/ja;

    iput-object p2, p0, Lg/s;->e:Lg/fvw;

    iput-object p3, p0, Lg/s;->a:Lg/ehe;

    iput-object p4, p0, Lg/s;->b:Lg/qd;

    iput-object p5, p0, Lg/s;->c:Ljava/util/ArrayList;

    return-void
.end method

.method public static f(Ljava/lang/Object;Ljava/lang/reflect/AccessibleObject;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/Member;

    invoke-interface {v0}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    sget-object v0, Lg/gkw;->b:Lg/gkw;

    invoke-virtual {v0, p0, p1}, Lg/gkw;->a(Ljava/lang/Object;Ljava/lang/reflect/AccessibleObject;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-void

    :cond_1
    const/4 p0, 0x1

    invoke-static {p1, p0}, Lg/cpe;->b(Ljava/lang/reflect/AccessibleObject;Z)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lg/gyr;

    const-string v0, " is not accessible and ReflectionAccessFilter does not permit making it accessible. Register a TypeAdapter for the declaring type, adjust the access filter or increase the visibility of the element and its declaring type."

    invoke-static {p0, v0}, Lg/awf;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static g(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;)V
    .locals 3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Class "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " declares multiple JSON fields named \'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'; conflict is caused by fields "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lg/cpe;->g(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " and "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lg/cpe;->g(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\nSee "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "duplicate-fields"

    const-string p1, "https://github.com/google/gson/blob/main/Troubleshooting.md#"

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final h(Lg/eem;Lg/ri;Ljava/lang/Class;ZZ)Lg/st;
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v7, p3

    invoke-virtual {v7}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lg/st;->a:Lg/st;

    return-object v1

    :cond_0
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    move-object/from16 v1, p2

    move/from16 v2, p4

    move-object v10, v7

    :goto_0
    iget-object v11, v1, Lg/ri;->b:Ljava/lang/reflect/Type;

    const-class v1, Ljava/lang/Object;

    if-eq v10, v1, :cond_19

    invoke-virtual {v10}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v12

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eq v10, v7, :cond_3

    array-length v1, v12

    if-lez v1, :cond_3

    iget-object v1, v0, Lg/s;->c:Ljava/util/ArrayList;

    invoke-static {v1}, Lg/bfc;->ak(Ljava/util/ArrayList;)Lg/gjr;

    move-result-object v1

    sget-object v2, Lg/gjr;->BLOCK_ALL:Lg/gjr;

    if-eq v1, v2, :cond_2

    sget-object v2, Lg/gjr;->BLOCK_INACCESSIBLE:Lg/gjr;

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    move/from16 v18, v1

    goto :goto_2

    :cond_2
    new-instance v1, Lg/gyr;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ReflectionAccessFilter does not permit using reflection for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " (supertype of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "). Register a TypeAdapter for this type or adjust the access filter."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    move/from16 v18, v2

    :goto_2
    array-length v15, v12

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v15, :cond_18

    aget-object v2, v12, v1

    invoke-virtual {v0, v2, v13}, Lg/s;->i(Ljava/lang/reflect/Field;Z)Z

    move-result v21

    invoke-virtual {v0, v2, v14}, Lg/s;->i(Ljava/lang/reflect/Field;Z)Z

    move-result v3

    if-nez v21, :cond_4

    if-nez v3, :cond_4

    move-object/from16 v3, p1

    move/from16 v24, v1

    move v1, v15

    const/16 p2, 0x1

    goto/16 :goto_c

    :cond_4
    const-class v4, Lg/dw;

    const/16 v22, 0x0

    if-eqz p5, :cond_9

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-eqz v5, :cond_5

    move-object/from16 v19, v22

    const/16 v23, 0x0

    goto :goto_5

    :cond_5
    sget-object v5, Lg/cpe;->a:Lg/eyt;

    invoke-virtual {v5, v10, v2}, Lg/eyt;->_bf(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;

    move-result-object v5

    if-nez v18, :cond_6

    invoke-static {v5}, Lg/cpe;->e(Ljava/lang/reflect/AccessibleObject;)V

    :cond_6
    invoke-virtual {v5, v4}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    if-eqz v6, :cond_8

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    if-eqz v6, :cond_7

    goto :goto_4

    :cond_7
    invoke-static {v5, v14}, Lg/cpe;->b(Ljava/lang/reflect/AccessibleObject;Z)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lg/gyr;

    const-string v3, "@SerializedName on "

    const-string v4, " is not supported"

    invoke-static {v3, v1, v4}, Lg/tn;->ad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_8
    :goto_4
    move/from16 v23, v3

    move-object/from16 v19, v5

    goto :goto_5

    :cond_9
    move/from16 v23, v3

    move-object/from16 v19, v22

    :goto_5
    if-nez v18, :cond_a

    if-nez v19, :cond_a

    invoke-static {v2}, Lg/cpe;->e(Ljava/lang/reflect/AccessibleObject;)V

    :cond_a
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v3

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-static {v11, v10, v3, v5}, Lg/acr;->bp(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/HashMap;)Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lg/dw;

    if-nez v4, :cond_b

    iget-object v4, v0, Lg/s;->e:Lg/fvw;

    invoke-virtual {v4, v2}, Lg/fvw;->a(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    :goto_6
    move-object v13, v4

    const/16 p2, 0x1

    goto :goto_7

    :cond_b
    invoke-interface {v4}, Lg/dw;->value()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4}, Lg/dw;->alternate()[Ljava/lang/String;

    move-result-object v4

    array-length v6, v4

    if-nez v6, :cond_c

    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    goto :goto_6

    :cond_c
    new-instance v6, Ljava/util/ArrayList;

    const/16 p2, 0x1

    array-length v13, v4

    add-int/lit8 v13, v13, 0x1

    invoke-direct {v6, v13}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v6, v4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-object v13, v6

    :goto_7
    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v16, v4

    check-cast v16, Ljava/lang/String;

    new-instance v4, Lg/ri;

    invoke-direct {v4, v3}, Lg/ri;-><init>(Ljava/lang/reflect/Type;)V

    iget-object v3, v4, Lg/ri;->a:Ljava/lang/Class;

    if-eqz v3, :cond_d

    invoke-virtual {v3}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    :cond_d
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v3

    :cond_e
    const-class v3, Lg/esz;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lg/esz;

    if-eqz v5, :cond_f

    move-object/from16 v17, v2

    iget-object v2, v0, Lg/s;->d:Lg/ja;

    const/4 v6, 0x0

    move v3, v1

    iget-object v1, v0, Lg/s;->b:Lg/qd;

    move/from16 v24, v3

    move-object/from16 v3, p1

    invoke-virtual/range {v1 .. v6}, Lg/qd;->d(Lg/ja;Lg/eem;Lg/ri;Lg/esz;Z)Lg/bke;

    move-result-object v1

    goto :goto_8

    :cond_f
    move-object/from16 v3, p1

    move/from16 v24, v1

    move-object/from16 v17, v2

    move-object/from16 v1, v22

    :goto_8
    if-eqz v1, :cond_10

    const/4 v2, 0x1

    goto :goto_9

    :cond_10
    const/4 v2, 0x0

    :goto_9
    if-nez v1, :cond_11

    invoke-virtual {v3, v4}, Lg/eem;->n(Lg/ri;)Lg/bke;

    move-result-object v1

    :cond_11
    if-eqz v21, :cond_13

    if-eqz v2, :cond_12

    goto :goto_a

    :cond_12
    new-instance v2, Lg/dpq;

    iget-object v4, v4, Lg/ri;->b:Ljava/lang/reflect/Type;

    invoke-direct {v2, v4, v3, v1}, Lg/dpq;-><init>(Ljava/lang/reflect/Type;Lg/eem;Lg/bke;)V

    move-object v1, v2

    :cond_13
    :goto_a
    move-object/from16 v20, v1

    move v1, v15

    new-instance v15, Lg/amt;

    invoke-direct/range {v15 .. v20}, Lg/amt;-><init>(Ljava/lang/String;Ljava/lang/reflect/Field;ZLjava/lang/reflect/Method;Lg/bke;)V

    move-object/from16 v4, v16

    move-object/from16 v2, v17

    if-eqz v23, :cond_15

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_15

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v8, v6, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lg/amt;

    if-nez v13, :cond_14

    goto :goto_b

    :cond_14
    iget-object v1, v13, Lg/amt;->d:Ljava/lang/reflect/Field;

    invoke-static {v7, v6, v1, v2}, Lg/s;->g(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;)V

    throw v22

    :cond_15
    if-eqz v21, :cond_17

    invoke-interface {v9, v4, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/amt;

    if-nez v5, :cond_16

    goto :goto_c

    :cond_16
    iget-object v1, v5, Lg/amt;->d:Ljava/lang/reflect/Field;

    invoke-static {v7, v4, v1, v2}, Lg/s;->g(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;)V

    throw v22

    :cond_17
    :goto_c
    add-int/lit8 v2, v24, 0x1

    move v15, v1

    move v1, v2

    const/4 v13, 0x1

    goto/16 :goto_3

    :cond_18
    move-object/from16 v3, p1

    invoke-virtual {v10}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {v11, v10, v1, v2}, Lg/acr;->bp(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/HashMap;)Ljava/lang/reflect/Type;

    move-result-object v1

    new-instance v2, Lg/ri;

    invoke-direct {v2, v1}, Lg/ri;-><init>(Ljava/lang/reflect/Type;)V

    iget-object v10, v2, Lg/ri;->a:Ljava/lang/Class;

    move-object v1, v2

    move/from16 v2, v18

    goto/16 :goto_0

    :cond_19
    new-instance v1, Lg/st;

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v1, v2}, Lg/st;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public final i(Ljava/lang/reflect/Field;Z)Z
    .locals 3

    iget-object v0, p0, Lg/s;->a:Lg/ehe;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x88

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    and-int/2addr v1, v2

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    :goto_0
    const/4 p1, 0x1

    goto :goto_3

    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lg/ehe;->f(Ljava/lang/Class;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    iget-object p1, v0, Lg/ehe;->d:Ljava/util/List;

    goto :goto_1

    :cond_3
    iget-object p1, v0, Lg/ehe;->b:Ljava/util/List;

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_5

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {p1}, Lg/tn;->c(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    move-result-object p1

    throw p1

    :cond_5
    :goto_2
    const/4 p1, 0x0

    :goto_3
    xor-int/2addr p1, v2

    return p1
.end method

.method public final j(Lg/eem;Lg/ri;)Lg/bke;
    .locals 7

    iget-object v3, p2, Lg/ri;->a:Ljava/lang/Class;

    const-class v0, Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    sget-object v0, Lg/cpe;->a:Lg/eyt;

    invoke-virtual {v3}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v3}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v3}, Ljava/lang/Class;->isLocalClass()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    new-instance p1, Lg/atb;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Lg/atb;-><init>(I)V

    return-object p1

    :cond_2
    iget-object v0, p0, Lg/s;->c:Ljava/util/ArrayList;

    invoke-static {v0}, Lg/bfc;->ak(Ljava/util/ArrayList;)Lg/gjr;

    move-result-object v0

    sget-object v1, Lg/gjr;->BLOCK_ALL:Lg/gjr;

    if-eq v0, v1, :cond_5

    sget-object v1, Lg/gjr;->BLOCK_INACCESSIBLE:Lg/gjr;

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_0
    sget-object v0, Lg/cpe;->a:Lg/eyt;

    invoke-virtual {v0, v3}, Lg/eyt;->j(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v6, Lg/cwt;

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lg/s;->h(Lg/eem;Lg/ri;Ljava/lang/Class;ZZ)Lg/st;

    move-result-object p1

    invoke-direct {v6, v3, p1, v4}, Lg/cwt;-><init>(Ljava/lang/Class;Lg/st;Z)V

    return-object v6

    :cond_4
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    iget-object p1, v0, Lg/s;->d:Lg/ja;

    invoke-virtual {p1, v2}, Lg/ja;->j(Lg/ri;)Lg/gtx;

    new-instance p1, Lg/ayk;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lg/s;->h(Lg/eem;Lg/ri;Ljava/lang/Class;ZZ)Lg/st;

    move-result-object p2

    invoke-direct {p1, p2}, Lg/dls;-><init>(Lg/st;)V

    return-object p1

    :cond_5
    new-instance p1, Lg/gyr;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "ReflectionAccessFilter does not permit using reflection for "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ". Register a TypeAdapter for this type or adjust the access filter."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
