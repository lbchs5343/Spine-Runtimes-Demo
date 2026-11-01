.class public Lg/dhm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/cma;


# instance fields
.field public final a:Lg/ctt;

.field public final b:[Lg/bgf;

.field public final c:[Lg/bgf;

.field public final d:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Lg/mh;Ljava/lang/Class;Ljava/lang/reflect/Type;)V
    .locals 23

    move-object/from16 v5, p2

    invoke-virtual {v5}, Ljava/lang/Class;->getModifiers()I

    move-result v10

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    and-int/lit16 v1, v10, 0x400

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    :try_start_0
    invoke-virtual {v5, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    move-object v3, v2

    :goto_0
    if-nez v3, :cond_1

    invoke-virtual {v5}, Ljava/lang/Class;->isMemberClass()Z

    move-result v4

    if-eqz v4, :cond_1

    and-int/lit8 v4, v10, 0x8

    if-nez v4, :cond_1

    invoke-virtual {v5}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v4

    array-length v6, v4

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_1

    aget-object v8, v4, v7

    invoke-virtual {v8}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    array-length v14, v9

    if-ne v14, v13, :cond_0

    aget-object v9, v9, v12

    invoke-virtual {v5}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move-object v14, v8

    goto :goto_2

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    move-object v14, v3

    goto :goto_2

    :cond_2
    move-object v14, v2

    :goto_2
    invoke-virtual {v5}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v15

    invoke-virtual {v5}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    const-class v4, Lg/ecz;

    if-nez v14, :cond_14

    invoke-virtual {v5}, Ljava/lang/Class;->isInterface()Z

    move-result v6

    if-nez v6, :cond_14

    if-nez v1, :cond_14

    invoke-virtual {v5}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v1

    array-length v6, v1

    const/4 v7, 0x0

    :goto_3
    const-class v8, Lg/gfu;

    if-ge v7, v6, :cond_4

    aget-object v9, v1, v7

    invoke-virtual {v9, v8}, Ljava/lang/reflect/Constructor;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v13

    check-cast v13, Lg/gfu;

    if-eqz v13, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_4
    move-object v9, v2

    :goto_4
    const-string v1, "illegal json creator"

    if-eqz v9, :cond_a

    invoke-static {v5, v9, v10}, Lg/dtu;->x(Ljava/lang/Class;Ljava/lang/reflect/Member;I)V

    invoke-virtual {v9}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v9}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v7

    const/4 v8, 0x0

    :goto_5
    array-length v13, v6

    if-ge v8, v13, :cond_9

    invoke-virtual {v9}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v13

    aget-object v13, v13, v8

    array-length v14, v13

    const/4 v15, 0x0

    :goto_6
    if-ge v15, v14, :cond_6

    aget-object v2, v13, v15

    instance-of v12, v2, Lg/btq;

    if-eqz v12, :cond_5

    check-cast v2, Lg/btq;

    goto :goto_7

    :cond_5
    add-int/lit8 v15, v15, 0x1

    const/4 v2, 0x0

    const/4 v12, 0x0

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_7
    if-eqz v2, :cond_8

    aget-object v18, v6, v8

    aget-object v19, v7, v8

    invoke-interface {v2}, Lg/btq;->name()Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12, v3}, Lg/dtu;->u(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v12

    if-eqz v12, :cond_7

    invoke-static {v5, v12, v10}, Lg/dtu;->x(Ljava/lang/Class;Ljava/lang/reflect/Member;I)V

    :cond_7
    invoke-interface {v2}, Lg/btq;->ordinal()I

    move-result v21

    invoke-interface {v2}, Lg/btq;->serialzeFeatures()[Lg/gar;

    move-result-object v13

    invoke-static {v13}, Lg/gar;->b([Lg/gar;)I

    new-instance v16, Lg/bnu;

    invoke-interface {v2}, Lg/btq;->name()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v20, v12

    invoke-direct/range {v16 .. v21}, Lg/bnu;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;I)V

    move-object/from16 v2, v16

    invoke-static {v11, v2}, Lg/ctt;->j(Ljava/util/ArrayList;Lg/bnu;)V

    add-int/lit8 v8, v8, 0x1

    const/4 v2, 0x0

    const/4 v12, 0x0

    goto :goto_5

    :cond_8
    new-instance v2, Lg/bfj;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_9
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v6, v1, [Lg/bnu;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-array v7, v1, [Lg/bnu;

    const/4 v2, 0x0

    invoke-static {v6, v2, v7, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v7}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    invoke-virtual {v5, v4}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lg/ecz;

    new-instance v1, Lg/ctt;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v2, p2

    move-object v4, v9

    invoke-direct/range {v1 .. v8}, Lg/ctt;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;[Lg/bnu;[Lg/bnu;Lg/ecz;)V

    :goto_8
    move-object v5, v2

    goto/16 :goto_24

    :cond_a
    array-length v2, v15

    const/4 v6, 0x0

    :goto_9
    if-ge v6, v2, :cond_d

    aget-object v7, v15, v6

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v9

    invoke-static {v9}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-nez v9, :cond_b

    goto :goto_a

    :cond_b
    invoke-virtual {v7, v8}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v9

    check-cast v9, Lg/gfu;

    if-eqz v9, :cond_c

    goto :goto_b

    :cond_c
    :goto_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_d
    const/4 v7, 0x0

    :goto_b
    if-eqz v7, :cond_13

    invoke-static {v5, v7, v10}, Lg/dtu;->x(Ljava/lang/Class;Ljava/lang/reflect/Member;I)V

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v6

    const/4 v8, 0x0

    :goto_c
    array-length v9, v2

    if-ge v8, v9, :cond_11

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v9

    aget-object v9, v9, v8

    array-length v10, v9

    const/4 v12, 0x0

    :goto_d
    if-ge v12, v10, :cond_f

    aget-object v13, v9, v12

    instance-of v14, v13, Lg/btq;

    if-eqz v14, :cond_e

    check-cast v13, Lg/btq;

    goto :goto_e

    :cond_e
    add-int/lit8 v12, v12, 0x1

    goto :goto_d

    :cond_f
    const/4 v13, 0x0

    :goto_e
    if-eqz v13, :cond_10

    aget-object v18, v2, v8

    aget-object v19, v6, v8

    invoke-interface {v13}, Lg/btq;->name()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9, v3}, Lg/dtu;->u(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v20

    invoke-interface {v13}, Lg/btq;->ordinal()I

    move-result v21

    invoke-interface {v13}, Lg/btq;->serialzeFeatures()[Lg/gar;

    move-result-object v9

    invoke-static {v9}, Lg/gar;->b([Lg/gar;)I

    new-instance v16, Lg/bnu;

    invoke-interface {v13}, Lg/btq;->name()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v21}, Lg/bnu;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;I)V

    move-object/from16 v9, v16

    invoke-static {v11, v9}, Lg/ctt;->j(Ljava/util/ArrayList;Lg/bnu;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_c

    :cond_10
    new-instance v2, Lg/bfj;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_11
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v6, v1, [Lg/bnu;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-array v2, v1, [Lg/bnu;

    const/4 v3, 0x0

    invoke-static {v6, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    invoke-static {v6, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    move-object v2, v6

    :cond_12
    invoke-virtual {v5, v4}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lg/ecz;

    new-instance v1, Lg/ctt;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v22, v7

    move-object v7, v2

    move-object v2, v5

    move-object/from16 v5, v22

    invoke-direct/range {v1 .. v8}, Lg/ctt;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;[Lg/bnu;[Lg/bnu;Lg/ecz;)V

    goto/16 :goto_8

    :cond_13
    new-instance v1, Lg/bfj;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "default constructor not found. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_14
    if-eqz v14, :cond_15

    invoke-static {v5, v14, v10}, Lg/dtu;->x(Ljava/lang/Class;Ljava/lang/reflect/Member;I)V

    :cond_15
    array-length v12, v15

    const/4 v1, 0x0

    :goto_f
    const-class v2, Ljava/lang/Object;

    const-class v6, Lg/btq;

    const/4 v8, 0x4

    if-ge v1, v12, :cond_26

    move-object v9, v3

    aget-object v3, v15, v1

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v13

    if-lt v13, v8, :cond_16

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v13

    invoke-static {v13}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v13

    if-eqz v13, :cond_17

    :cond_16
    :goto_10
    move/from16 v18, v1

    move-object v13, v9

    move/from16 v19, v12

    move-object v12, v4

    goto/16 :goto_15

    :cond_17
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v13

    sget-object v8, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v13, v8, :cond_18

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v8

    if-ne v13, v8, :cond_16

    :cond_18
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    array-length v8, v8

    const/4 v13, 0x1

    if-ne v8, v13, :cond_16

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v8

    if-ne v8, v2, :cond_19

    goto :goto_10

    :cond_19
    invoke-virtual {v3, v6}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lg/btq;

    if-nez v2, :cond_1a

    invoke-static {v5, v3}, Lg/dtu;->v(Ljava/lang/Class;Ljava/lang/reflect/Method;)Lg/btq;

    move-result-object v2

    :cond_1a
    move-object v8, v2

    if-eqz v8, :cond_1d

    invoke-interface {v8}, Lg/btq;->deserialize()Z

    move-result v2

    if-nez v2, :cond_1b

    goto :goto_10

    :cond_1b
    move-object v2, v7

    invoke-interface {v8}, Lg/btq;->ordinal()I

    move-result v7

    invoke-interface {v8}, Lg/btq;->serialzeFeatures()[Lg/gar;

    move-result-object v13

    invoke-static {v13}, Lg/gar;->b([Lg/gar;)I

    invoke-interface {v8}, Lg/btq;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-eqz v13, :cond_1c

    invoke-interface {v8}, Lg/btq;->name()Ljava/lang/String;

    move-result-object v2

    move v6, v1

    new-instance v1, Lg/bnu;

    move-object v13, v4

    const/4 v4, 0x0

    move-object/from16 v17, v9

    const/4 v9, 0x0

    move/from16 v18, v6

    move/from16 v19, v12

    move-object v12, v13

    move-object/from16 v13, v17

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v9}, Lg/bnu;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;ILg/btq;Lg/btq;)V

    invoke-static {v11, v1}, Lg/ctt;->j(Ljava/util/ArrayList;Lg/bnu;)V

    invoke-static {v5, v3, v10}, Lg/dtu;->x(Ljava/lang/Class;Ljava/lang/reflect/Member;I)V

    goto/16 :goto_15

    :cond_1c
    :goto_11
    move/from16 v18, v1

    move-object v13, v9

    move/from16 v19, v12

    move-object v12, v4

    goto :goto_12

    :cond_1d
    move-object v2, v7

    const/4 v7, 0x0

    goto :goto_11

    :goto_12
    const-string v1, "set"

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1e

    goto/16 :goto_15

    :cond_1e
    const/4 v1, 0x3

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v9

    if-eqz v9, :cond_1f

    sget-boolean v4, Lg/dtu;->a:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_13
    move-object v2, v1

    goto :goto_14

    :cond_1f
    const/4 v1, 0x4

    const/16 v9, 0x5f

    if-ne v4, v9, :cond_20

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_13

    :cond_20
    const/16 v9, 0x66

    if-ne v4, v9, :cond_21

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_13

    :cond_21
    const/4 v4, 0x3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v4, 0x5

    if-lt v9, v4, :cond_25

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v1

    if-eqz v1, :cond_25

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lg/dtu;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_13

    :goto_14
    invoke-static {v5, v2, v13}, Lg/dtu;->u(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v1

    if-nez v1, :cond_22

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    const/4 v9, 0x0

    aget-object v4, v4, v9

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v4, v9, :cond_22

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "is"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1, v13}, Lg/dtu;->u(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v1

    :cond_22
    move-object v4, v1

    if-eqz v4, :cond_24

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lg/btq;

    if-eqz v9, :cond_24

    invoke-interface {v9}, Lg/btq;->ordinal()I

    move-result v7

    invoke-interface {v9}, Lg/btq;->serialzeFeatures()[Lg/gar;

    move-result-object v1

    invoke-static {v1}, Lg/gar;->b([Lg/gar;)I

    invoke-interface {v9}, Lg/btq;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v9}, Lg/btq;->name()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Lg/bnu;

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v9}, Lg/bnu;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;ILg/btq;Lg/btq;)V

    invoke-static {v11, v1}, Lg/ctt;->j(Ljava/util/ArrayList;Lg/bnu;)V

    move-object/from16 v5, p2

    goto :goto_15

    :cond_23
    if-nez v8, :cond_24

    move-object v8, v9

    :cond_24
    new-instance v1, Lg/bnu;

    const/4 v4, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v9}, Lg/bnu;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;ILg/btq;Lg/btq;)V

    invoke-static {v11, v1}, Lg/ctt;->j(Ljava/util/ArrayList;Lg/bnu;)V

    invoke-static {v5, v3, v10}, Lg/dtu;->x(Ljava/lang/Class;Ljava/lang/reflect/Member;I)V

    :cond_25
    :goto_15
    add-int/lit8 v1, v18, 0x1

    move-object v4, v12

    move-object v3, v13

    move/from16 v12, v19

    const/4 v13, 0x1

    goto/16 :goto_f

    :cond_26
    move-object v13, v3

    move-object v12, v4

    const/4 v1, 0x4

    const/4 v4, 0x3

    new-instance v3, Ljava/util/ArrayList;

    array-length v7, v13

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(I)V

    array-length v7, v13

    const/4 v8, 0x0

    :goto_16
    const-class v15, Ljava/util/Collection;

    const-class v9, Ljava/util/Map;

    if-ge v8, v7, :cond_2b

    aget-object v1, v13, v8

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v18

    and-int/lit8 v19, v18, 0x8

    if-eqz v19, :cond_28

    :cond_27
    const/16 v16, 0x1

    goto :goto_17

    :cond_28
    and-int/lit8 v18, v18, 0x10

    if-eqz v18, :cond_29

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-nez v9, :cond_29

    invoke-virtual {v15, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_27

    :cond_29
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    const/16 v16, 0x1

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2a

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2a
    :goto_17
    add-int/lit8 v8, v8, 0x1

    const/4 v1, 0x4

    const/4 v4, 0x3

    goto :goto_16

    :cond_2b
    const/16 v16, 0x1

    invoke-virtual {v5}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    :goto_18
    if-eqz v1, :cond_31

    if-eq v1, v2, :cond_31

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    array-length v7, v4

    const/4 v8, 0x0

    :goto_19
    if-ge v8, v7, :cond_30

    aget-object v13, v4, v8

    invoke-virtual {v13}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v18

    and-int/lit8 v19, v18, 0x8

    if-eqz v19, :cond_2c

    move-object/from16 v19, v1

    goto :goto_1b

    :cond_2c
    and-int/lit8 v19, v18, 0x10

    if-eqz v19, :cond_2d

    move-object/from16 v19, v1

    invoke-virtual {v13}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v20

    if-nez v20, :cond_2e

    invoke-virtual {v15, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2f

    goto :goto_1a

    :cond_2d
    move-object/from16 v19, v1

    :cond_2e
    :goto_1a
    and-int/lit8 v1, v18, 0x1

    if-eqz v1, :cond_2f

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2f
    :goto_1b
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, v19

    goto :goto_19

    :cond_30
    move-object/from16 v19, v1

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_18

    :cond_31
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1c
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/reflect/Field;

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v7, 0x0

    :goto_1d
    if-ge v3, v2, :cond_33

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg/bnu;

    iget-object v8, v8, Lg/bnu;->i:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_32

    const/4 v7, 0x1

    :cond_32
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    :cond_33
    if-eqz v7, :cond_34

    goto :goto_1c

    :cond_34
    invoke-virtual {v4, v6}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lg/btq;

    if-eqz v2, :cond_36

    invoke-interface {v2}, Lg/btq;->ordinal()I

    move-result v3

    invoke-interface {v2}, Lg/btq;->serialzeFeatures()[Lg/gar;

    move-result-object v7

    invoke-static {v7}, Lg/gar;->b([Lg/gar;)I

    invoke-interface {v2}, Lg/btq;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_35

    invoke-interface {v2}, Lg/btq;->name()Ljava/lang/String;

    move-result-object v1

    :cond_35
    move v7, v3

    goto :goto_1e

    :cond_36
    const/4 v7, 0x0

    :goto_1e
    invoke-static {v5, v4, v10}, Lg/dtu;->x(Ljava/lang/Class;Ljava/lang/reflect/Member;I)V

    move-object v3, v9

    move-object v9, v2

    move-object v2, v1

    new-instance v1, Lg/bnu;

    move-object v8, v3

    const/4 v3, 0x0

    move-object/from16 v18, v8

    const/4 v8, 0x0

    move-object/from16 v19, v13

    move-object/from16 p1, v14

    move-object/from16 v13, v18

    const/4 v0, 0x4

    move-object v14, v6

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v9}, Lg/bnu;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;ILg/btq;Lg/btq;)V

    invoke-static {v11, v1}, Lg/ctt;->j(Ljava/util/ArrayList;Lg/bnu;)V

    move-object/from16 v5, p2

    move-object v9, v13

    move-object v6, v14

    move-object/from16 v13, v19

    move-object/from16 v14, p1

    goto :goto_1c

    :cond_37
    move-object v13, v9

    move-object/from16 p1, v14

    const/4 v0, 0x4

    move-object v14, v6

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1f
    if-ge v3, v2, :cond_3d

    move v4, v3

    aget-object v3, v1, v4

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v6, v0, :cond_38

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v6

    if-eqz v6, :cond_39

    :cond_38
    :goto_20
    move-object/from16 v5, p2

    move-object/from16 v16, v1

    move/from16 v17, v2

    move/from16 v18, v4

    const/16 v19, 0x3

    goto/16 :goto_23

    :cond_39
    const-string v6, "get"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_38

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v6

    if-eqz v6, :cond_38

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    array-length v6, v6

    if-eqz v6, :cond_3a

    goto :goto_20

    :cond_3a
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_3b

    invoke-virtual {v13, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_38

    :cond_3b
    invoke-virtual {v3, v14}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Lg/btq;

    if-eqz v8, :cond_3c

    invoke-interface {v8}, Lg/btq;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3c

    const/4 v7, 0x3

    :goto_21
    move-object v5, v1

    goto :goto_22

    :cond_3c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x3

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_21

    :goto_22
    new-instance v1, Lg/bnu;

    const/16 v17, 0x3

    const/4 v7, 0x0

    const/4 v9, 0x0

    move/from16 v16, v4

    const/4 v4, 0x0

    move/from16 v17, v2

    move-object v2, v6

    move/from16 v18, v16

    const/16 v19, 0x3

    move-object/from16 v6, p3

    move-object/from16 v16, v5

    move-object/from16 v5, p2

    invoke-direct/range {v1 .. v9}, Lg/bnu;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;ILg/btq;Lg/btq;)V

    invoke-static {v11, v1}, Lg/ctt;->j(Ljava/util/ArrayList;Lg/bnu;)V

    invoke-static {v5, v3, v10}, Lg/dtu;->x(Ljava/lang/Class;Ljava/lang/reflect/Member;I)V

    :goto_23
    add-int/lit8 v3, v18, 0x1

    move-object/from16 v1, v16

    move/from16 v2, v17

    goto/16 :goto_1f

    :cond_3d
    move-object/from16 v5, p2

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v6, v0, [Lg/bnu;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-array v7, v0, [Lg/bnu;

    const/4 v9, 0x0

    invoke-static {v6, v9, v7, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v7}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    invoke-virtual {v5, v12}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lg/ecz;

    new-instance v1, Lg/ctt;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v3, p1

    move-object/from16 v2, p2

    invoke-direct/range {v1 .. v8}, Lg/ctt;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;[Lg/bnu;[Lg/bnu;Lg/ecz;)V

    goto/16 :goto_8

    :goto_24
    iget-object v0, v1, Lg/ctt;->a:Ljava/lang/Object;

    check-cast v0, [Lg/bnu;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v2, p0

    iput-object v5, v2, Lg/dhm;->d:Ljava/lang/Class;

    iput-object v1, v2, Lg/dhm;->a:Lg/ctt;

    iget-object v1, v1, Lg/ctt;->i:Ljava/lang/Object;

    check-cast v1, [Lg/bnu;

    array-length v3, v0

    new-array v3, v3, [Lg/bgf;

    iput-object v3, v2, Lg/dhm;->c:[Lg/bgf;

    array-length v3, v0

    const/4 v4, 0x0

    :goto_25
    if-ge v4, v3, :cond_40

    aget-object v5, v0, v4

    iget-object v6, v5, Lg/bnu;->b:Ljava/lang/Class;

    const-class v7, Ljava/util/List;

    if-eq v6, v7, :cond_3e

    const-class v7, Ljava/util/ArrayList;

    if-eq v6, v7, :cond_3e

    invoke-virtual {v6}, Ljava/lang/Class;->isArray()Z

    move-result v7

    if-eqz v7, :cond_3f

    invoke-virtual {v6}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->isPrimitive()Z

    move-result v6

    if-nez v6, :cond_3f

    :cond_3e
    const/4 v9, 0x0

    goto :goto_26

    :cond_3f
    new-instance v6, Lg/fpj;

    const/4 v9, 0x0

    invoke-direct {v6, v9, v5}, Lg/bgf;-><init>(ILjava/lang/Object;)V

    goto :goto_27

    :goto_26
    new-instance v6, Lg/aax;

    invoke-direct {v6, v5}, Lg/aax;-><init>(Lg/bnu;)V

    :goto_27
    iget-object v5, v2, Lg/dhm;->c:[Lg/bgf;

    aput-object v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    :cond_40
    const/4 v9, 0x0

    array-length v0, v1

    new-array v0, v0, [Lg/bgf;

    iput-object v0, v2, Lg/dhm;->b:[Lg/bgf;

    array-length v0, v1

    const/4 v12, 0x0

    :goto_28
    if-ge v12, v0, :cond_41

    aget-object v3, v1, v12

    iget-object v3, v3, Lg/bnu;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lg/dhm;->f(Ljava/lang/String;)Lg/bgf;

    move-result-object v3

    iget-object v4, v2, Lg/dhm;->b:[Lg/bgf;

    aput-object v3, v4, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_28

    :cond_41
    return-void
.end method


# virtual methods
.method public final e(Lg/ccw;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p1

    iget-object v1, v0, Lg/ccw;->h:Lg/fzg;

    invoke-virtual/range {p0 .. p2}, Lg/dhm;->j(Lg/ccw;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v3, p0

    iget-object v4, v3, Lg/dhm;->c:[Lg/bgf;

    array-length v5, v4

    const/4 v7, 0x0

    :goto_0
    const/16 v9, 0x2c

    if-ge v7, v5, :cond_36

    add-int/lit8 v12, v5, -0x1

    if-ne v7, v12, :cond_0

    const/16 v12, 0x5d

    goto :goto_1

    :cond_0
    const/16 v12, 0x2c

    :goto_1
    aget-object v14, v4, v7

    iget-object v15, v14, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v15, Lg/bnu;

    iget-object v6, v15, Lg/bnu;->b:Ljava/lang/Class;

    iget-object v10, v15, Lg/bnu;->d:Ljava/lang/reflect/Field;

    const/16 v16, 0x1

    iget-boolean v11, v15, Lg/bnu;->g:Z

    :try_start_0
    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v6, v13, :cond_6

    invoke-virtual {v1}, Lg/fzg;->aq()J

    move-result-wide v12

    iget-object v6, v1, Lg/fzg;->k:Ljava/lang/String;

    iget v8, v1, Lg/fzg;->j:I

    long-to-int v13, v12

    if-eqz v11, :cond_1

    invoke-virtual {v10, v2, v13}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    goto :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_1d

    :cond_1
    new-instance v10, Ljava/lang/Integer;

    invoke-direct {v10, v13}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v14, v2, v10}, Lg/bgf;->ag(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2
    iget-char v10, v1, Lg/fzg;->l:C

    if-ne v10, v9, :cond_3

    iget v9, v1, Lg/fzg;->n:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v1, Lg/fzg;->n:I

    if-lt v9, v8, :cond_2

    const/16 v10, 0x1a

    goto :goto_3

    :cond_2
    invoke-virtual {v6, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    :goto_3
    iput-char v10, v1, Lg/fzg;->l:C

    const/16 v6, 0x10

    iput v6, v1, Lg/fzg;->o:I

    goto :goto_5

    :cond_3
    const/16 v9, 0x5d

    if-ne v10, v9, :cond_5

    iget v9, v1, Lg/fzg;->n:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v1, Lg/fzg;->n:I

    if-lt v9, v8, :cond_4

    const/16 v10, 0x1a

    goto :goto_4

    :cond_4
    invoke-virtual {v6, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    :goto_4
    iput-char v10, v1, Lg/fzg;->l:C

    const/16 v6, 0xf

    iput v6, v1, Lg/fzg;->o:I

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Lg/fzg;->az()V

    :goto_5
    move-object/from16 v8, p3

    goto/16 :goto_1c

    :cond_6
    const-class v8, Ljava/lang/String;

    const/16 v17, 0x4

    const/16 v13, 0x22

    if-ne v6, v8, :cond_f

    iget-char v6, v1, Lg/fzg;->l:C
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    iget v8, v1, Lg/fzg;->j:I

    iget-object v12, v1, Lg/fzg;->k:Ljava/lang/String;

    if-ne v6, v13, :cond_7

    :try_start_1
    invoke-virtual {v1}, Lg/fzg;->ae()Ljava/lang/String;

    move-result-object v13

    goto :goto_7

    :cond_7
    const/16 v13, 0x6e

    if-ne v6, v13, :cond_e

    const-string v6, "null"

    iget v13, v1, Lg/fzg;->n:I

    invoke-virtual {v12, v6, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_e

    iget v6, v1, Lg/fzg;->n:I

    add-int/lit8 v6, v6, 0x4

    iput v6, v1, Lg/fzg;->n:I

    if-lt v6, v8, :cond_8

    const/16 v6, 0x1a

    goto :goto_6

    :cond_8
    invoke-virtual {v12, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    :goto_6
    iput-char v6, v1, Lg/fzg;->l:C

    const/4 v13, 0x0

    :goto_7
    if-eqz v11, :cond_9

    invoke-virtual {v10, v2, v13}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_8

    :cond_9
    invoke-virtual {v14, v2, v13}, Lg/bgf;->ag(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_8
    iget-char v6, v1, Lg/fzg;->l:C

    if-ne v6, v9, :cond_b

    iget v6, v1, Lg/fzg;->n:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v1, Lg/fzg;->n:I

    if-lt v6, v8, :cond_a

    const/16 v10, 0x1a

    goto :goto_9

    :cond_a
    invoke-virtual {v12, v6}, Ljava/lang/String;->charAt(I)C

    move-result v10

    :goto_9
    iput-char v10, v1, Lg/fzg;->l:C

    const/16 v6, 0x10

    iput v6, v1, Lg/fzg;->o:I

    goto :goto_5

    :cond_b
    const/16 v9, 0x5d

    if-ne v6, v9, :cond_d

    iget v6, v1, Lg/fzg;->n:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v1, Lg/fzg;->n:I

    if-lt v6, v8, :cond_c

    const/16 v10, 0x1a

    goto :goto_a

    :cond_c
    invoke-virtual {v12, v6}, Ljava/lang/String;->charAt(I)C

    move-result v10

    :goto_a
    iput-char v10, v1, Lg/fzg;->l:C

    const/16 v6, 0xf

    iput v6, v1, Lg/fzg;->o:I

    goto :goto_5

    :cond_d
    invoke-virtual {v1}, Lg/fzg;->az()V

    goto :goto_5

    :cond_e
    new-instance v0, Lg/bfj;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not match string. feild : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p3

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    move-object/from16 v8, p3

    sget-object v13, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v6, v13, :cond_15

    invoke-virtual {v1}, Lg/fzg;->aq()J

    move-result-wide v12

    iget-object v6, v1, Lg/fzg;->k:Ljava/lang/String;

    iget v9, v1, Lg/fzg;->j:I

    if-eqz v11, :cond_10

    invoke-virtual {v10, v2, v12, v13}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V

    goto :goto_b

    :cond_10
    new-instance v10, Ljava/lang/Long;

    invoke-direct {v10, v12, v13}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v14, v2, v10}, Lg/bgf;->ag(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_b
    iget-char v10, v1, Lg/fzg;->l:C

    const/16 v11, 0x2c

    if-ne v10, v11, :cond_12

    iget v10, v1, Lg/fzg;->n:I

    add-int/lit8 v10, v10, 0x1

    iput v10, v1, Lg/fzg;->n:I

    if-lt v10, v9, :cond_11

    const/16 v10, 0x1a

    goto :goto_c

    :cond_11
    invoke-virtual {v6, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    :goto_c
    iput-char v10, v1, Lg/fzg;->l:C

    const/16 v6, 0x10

    iput v6, v1, Lg/fzg;->o:I

    goto/16 :goto_1c

    :cond_12
    const/16 v11, 0x5d

    if-ne v10, v11, :cond_14

    iget v10, v1, Lg/fzg;->n:I

    add-int/lit8 v10, v10, 0x1

    iput v10, v1, Lg/fzg;->n:I

    if-lt v10, v9, :cond_13

    const/16 v10, 0x1a

    goto :goto_d

    :cond_13
    invoke-virtual {v6, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    :goto_d
    iput-char v10, v1, Lg/fzg;->l:C

    const/16 v6, 0xf

    iput v6, v1, Lg/fzg;->o:I

    goto/16 :goto_1c

    :cond_14
    invoke-virtual {v1}, Lg/fzg;->az()V

    goto/16 :goto_1c

    :cond_15
    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v6, v9, :cond_1f

    iget-object v6, v1, Lg/fzg;->k:Ljava/lang/String;

    iget-object v9, v1, Lg/fzg;->k:Ljava/lang/String;

    iget v12, v1, Lg/fzg;->j:I

    const-string v13, "false"

    iget v3, v1, Lg/fzg;->n:I

    invoke-virtual {v6, v13, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_16

    const/4 v13, 0x5

    const/4 v3, 0x0

    goto :goto_f

    :cond_16
    const-string v3, "true"

    iget v13, v1, Lg/fzg;->n:I

    invoke-virtual {v6, v3, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_17

    const/4 v3, 0x1

    const/4 v13, 0x4

    goto :goto_f

    :cond_17
    iget-char v3, v1, Lg/fzg;->l:C

    const/16 v6, 0x31

    if-ne v3, v6, :cond_18

    const/4 v3, 0x1

    :goto_e
    const/4 v13, 0x1

    goto :goto_f

    :cond_18
    const/16 v6, 0x30

    if-ne v3, v6, :cond_19

    const/4 v3, 0x0

    goto :goto_e

    :goto_f
    iget v6, v1, Lg/fzg;->n:I

    add-int/2addr v6, v13

    iput v6, v1, Lg/fzg;->n:I

    invoke-virtual {v1, v6}, Lg/fzg;->bk(I)C

    move-result v6

    iput-char v6, v1, Lg/fzg;->l:C

    goto :goto_10

    :cond_19
    const/4 v3, -0x1

    iput v3, v1, Lg/fzg;->r:I

    const/4 v3, 0x0

    :goto_10
    if-eqz v11, :cond_1a

    invoke-virtual {v10, v2, v3}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    goto :goto_11

    :cond_1a
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Lg/bgf;->ag(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_11
    iget-char v3, v1, Lg/fzg;->l:C

    const/16 v11, 0x2c

    if-ne v3, v11, :cond_1c

    iget v3, v1, Lg/fzg;->n:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v1, Lg/fzg;->n:I

    if-lt v3, v12, :cond_1b

    const/16 v10, 0x1a

    goto :goto_12

    :cond_1b
    invoke-virtual {v9, v3}, Ljava/lang/String;->charAt(I)C

    move-result v10

    :goto_12
    iput-char v10, v1, Lg/fzg;->l:C

    const/16 v6, 0x10

    iput v6, v1, Lg/fzg;->o:I

    goto/16 :goto_1c

    :cond_1c
    const/16 v11, 0x5d

    if-ne v3, v11, :cond_1e

    iget v3, v1, Lg/fzg;->n:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v1, Lg/fzg;->n:I

    if-lt v3, v12, :cond_1d

    const/16 v10, 0x1a

    goto :goto_13

    :cond_1d
    invoke-virtual {v9, v3}, Ljava/lang/String;->charAt(I)C

    move-result v10

    :goto_13
    iput-char v10, v1, Lg/fzg;->l:C

    const/16 v6, 0xf

    iput v6, v1, Lg/fzg;->o:I

    goto/16 :goto_1c

    :cond_1e
    invoke-virtual {v1}, Lg/fzg;->az()V

    goto/16 :goto_1c

    :cond_1f
    invoke-virtual {v6}, Ljava/lang/Class;->isEnum()Z

    move-result v3

    if-eqz v3, :cond_28

    iget-char v3, v1, Lg/fzg;->l:C
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    iget-object v9, v1, Lg/fzg;->k:Ljava/lang/String;

    iget v10, v1, Lg/fzg;->j:I

    const/16 v11, 0x22

    if-ne v3, v11, :cond_21

    :try_start_2
    iget-object v3, v0, Lg/ccw;->i:Lg/gqc;

    invoke-virtual {v1, v3}, Lg/fzg;->bl(Lg/gqc;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_20

    const/4 v13, 0x0

    goto :goto_14

    :cond_20
    invoke-static {v6, v3}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v13

    goto :goto_14

    :cond_21
    const/16 v6, 0x30

    if-lt v3, v6, :cond_27

    const/16 v6, 0x39

    if-gt v3, v6, :cond_27

    invoke-virtual {v1}, Lg/fzg;->aq()J

    move-result-wide v11

    long-to-int v3, v11

    move-object v6, v14

    check-cast v6, Lg/fpj;

    iget-object v11, v0, Lg/ccw;->k:Lg/mh;

    iget-object v12, v6, Lg/fpj;->a:Lg/cma;

    if-nez v12, :cond_22

    iget-object v12, v6, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v12, Lg/bnu;

    iget-object v13, v12, Lg/bnu;->b:Ljava/lang/Class;

    iget-object v12, v12, Lg/bnu;->a:Ljava/lang/reflect/Type;

    invoke-virtual {v11, v12, v13}, Lg/mh;->e(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lg/cma;

    move-result-object v11

    iput-object v11, v6, Lg/fpj;->a:Lg/cma;

    :cond_22
    iget-object v6, v6, Lg/fpj;->a:Lg/cma;

    check-cast v6, Lg/hev;

    iget-object v6, v6, Lg/hev;->b:[Ljava/lang/Enum;

    aget-object v13, v6, v3

    :goto_14
    invoke-virtual {v14, v2, v13}, Lg/bgf;->ag(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-char v3, v1, Lg/fzg;->l:C

    const/16 v11, 0x2c

    if-ne v3, v11, :cond_24

    iget v3, v1, Lg/fzg;->n:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v1, Lg/fzg;->n:I

    if-lt v3, v10, :cond_23

    const/16 v10, 0x1a

    goto :goto_15

    :cond_23
    invoke-virtual {v9, v3}, Ljava/lang/String;->charAt(I)C

    move-result v10

    :goto_15
    iput-char v10, v1, Lg/fzg;->l:C

    const/16 v6, 0x10

    iput v6, v1, Lg/fzg;->o:I

    goto/16 :goto_1c

    :cond_24
    const/16 v11, 0x5d

    if-ne v3, v11, :cond_26

    iget v3, v1, Lg/fzg;->n:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v1, Lg/fzg;->n:I

    if-lt v3, v10, :cond_25

    const/16 v10, 0x1a

    goto :goto_16

    :cond_25
    invoke-virtual {v9, v3}, Ljava/lang/String;->charAt(I)C

    move-result v10

    :goto_16
    iput-char v10, v1, Lg/fzg;->l:C

    const/16 v6, 0xf

    iput v6, v1, Lg/fzg;->o:I

    goto/16 :goto_1c

    :cond_26
    invoke-virtual {v1}, Lg/fzg;->az()V

    goto/16 :goto_1c

    :cond_27
    new-instance v0, Lg/bfj;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal enum."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lg/fzg;->ac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    const-class v3, Ljava/util/Date;

    if-ne v6, v3, :cond_2d

    iget-char v3, v1, Lg/fzg;->l:C
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_0

    iget-object v6, v1, Lg/fzg;->k:Ljava/lang/String;

    iget v9, v1, Lg/fzg;->j:I

    const/16 v10, 0x31

    if-ne v3, v10, :cond_2d

    :try_start_3
    invoke-virtual {v1}, Lg/fzg;->aq()J

    move-result-wide v10

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v14, v2, v3}, Lg/bgf;->ag(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-char v3, v1, Lg/fzg;->l:C

    const/16 v11, 0x2c

    if-ne v3, v11, :cond_2a

    iget v3, v1, Lg/fzg;->n:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v1, Lg/fzg;->n:I

    if-lt v3, v9, :cond_29

    const/16 v10, 0x1a

    goto :goto_17

    :cond_29
    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v10

    :goto_17
    iput-char v10, v1, Lg/fzg;->l:C

    const/16 v6, 0x10

    iput v6, v1, Lg/fzg;->o:I

    goto/16 :goto_1c

    :cond_2a
    const/16 v11, 0x5d

    if-ne v3, v11, :cond_2c

    iget v3, v1, Lg/fzg;->n:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v1, Lg/fzg;->n:I

    if-lt v3, v9, :cond_2b

    const/16 v10, 0x1a

    goto :goto_18

    :cond_2b
    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v10

    :goto_18
    iput-char v10, v1, Lg/fzg;->l:C

    const/16 v6, 0xf

    iput v6, v1, Lg/fzg;->o:I

    goto/16 :goto_1c

    :cond_2c
    invoke-virtual {v1}, Lg/fzg;->az()V

    goto :goto_1c

    :cond_2d
    iget-char v3, v1, Lg/fzg;->l:C
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_0

    iget-object v6, v1, Lg/fzg;->k:Ljava/lang/String;

    iget v9, v1, Lg/fzg;->j:I

    const/16 v10, 0x5b

    if-ne v3, v10, :cond_2f

    :try_start_4
    iget v3, v1, Lg/fzg;->n:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v1, Lg/fzg;->n:I

    if-lt v3, v9, :cond_2e

    const/16 v10, 0x1a

    goto :goto_19

    :cond_2e
    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v10

    :goto_19
    iput-char v10, v1, Lg/fzg;->l:C

    const/16 v3, 0xe

    iput v3, v1, Lg/fzg;->o:I

    goto :goto_1b

    :cond_2f
    const/16 v10, 0x7b

    if-ne v3, v10, :cond_31

    iget v3, v1, Lg/fzg;->n:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v1, Lg/fzg;->n:I

    if-lt v3, v9, :cond_30

    const/16 v10, 0x1a

    goto :goto_1a

    :cond_30
    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v10

    :goto_1a
    iput-char v10, v1, Lg/fzg;->l:C

    const/16 v3, 0xc

    iput v3, v1, Lg/fzg;->o:I

    goto :goto_1b

    :cond_31
    invoke-virtual {v1}, Lg/fzg;->az()V

    :goto_1b
    iget-object v3, v15, Lg/bnu;->a:Ljava/lang/reflect/Type;

    const/4 v6, 0x0

    invoke-virtual {v14, v2, v3, v6, v0}, Lg/bgf;->_t(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;Lg/ccw;)V
    :try_end_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_0

    const-string v3, "syntax error"

    const/16 v11, 0x5d

    if-ne v12, v11, :cond_33

    :try_start_5
    iget v6, v1, Lg/fzg;->o:I

    const/16 v9, 0xf

    if-ne v6, v9, :cond_32

    goto :goto_1c

    :cond_32
    new-instance v0, Lg/bfj;

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_33
    const/16 v11, 0x2c

    if-ne v12, v11, :cond_35

    iget v6, v1, Lg/fzg;->o:I

    const/16 v9, 0x10

    if-ne v6, v9, :cond_34

    goto :goto_1c

    :cond_34
    new-instance v0, Lg/bfj;

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_0

    :cond_35
    :goto_1c
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v3, p0

    goto/16 :goto_0

    :goto_1d
    new-instance v1, Lg/bfj;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "set "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v15, Lg/bnu;->i:Ljava/lang/String;

    const-string v4, "error"

    invoke-static {v2, v3, v4}, Lg/awf;->ad(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_36
    const/16 v16, 0x1

    iget-char v0, v1, Lg/fzg;->l:C

    const/16 v11, 0x2c

    if-ne v0, v11, :cond_38

    iget v0, v1, Lg/fzg;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lg/fzg;->n:I

    iget v3, v1, Lg/fzg;->j:I

    if-lt v0, v3, :cond_37

    const/16 v10, 0x1a

    goto :goto_1e

    :cond_37
    iget-object v3, v1, Lg/fzg;->k:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v10

    :goto_1e
    iput-char v10, v1, Lg/fzg;->l:C

    const/16 v6, 0x10

    iput v6, v1, Lg/fzg;->o:I

    return-object v2

    :cond_38
    invoke-virtual {v1}, Lg/fzg;->az()V

    return-object v2
.end method

.method public final f(Ljava/lang/String;)Lg/bgf;
    .locals 5

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lg/dhm;->a:Lg/ctt;

    iget-boolean v0, v0, Lg/ctt;->d:Z

    const/4 v1, 0x0

    iget-object v2, p0, Lg/dhm;->c:[Lg/bgf;

    if-eqz v0, :cond_2

    :goto_0
    array-length v0, v2

    if-ge v1, v0, :cond_5

    aget-object v0, v2, v1

    iget-object v0, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/bnu;

    iget-object v0, v0, Lg/bnu;->i:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    aget-object p1, v2, v1

    return-object p1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-gt v1, v0, :cond_5

    add-int v3, v1, v0

    ushr-int/lit8 v3, v3, 0x1

    aget-object v4, v2, v3

    iget-object v4, v4, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v4, Lg/bnu;

    iget-object v4, v4, Lg/bnu;->i:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_3

    add-int/lit8 v3, v3, 0x1

    move v1, v3

    goto :goto_1

    :cond_3
    if-lez v4, :cond_4

    add-int/lit8 v3, v3, -0x1

    move v0, v3

    goto :goto_1

    :cond_4
    aget-object p1, v2, v3

    return-object p1

    :cond_5
    :goto_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public g(Lg/ccw;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 45

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v5, p2

    move-object/from16 v0, p3

    iget-object v7, v1, Lg/dhm;->c:[Lg/bgf;

    const-string v3, "syntax error, expect {, actual "

    const-class v4, Lg/ex;

    const/4 v8, 0x0

    if-eq v5, v4, :cond_0

    const-class v4, Lg/cof;

    if-ne v5, v4, :cond_1

    :cond_0
    move-object v6, v8

    goto/16 :goto_47

    :cond_1
    iget-object v9, v2, Lg/ccw;->h:Lg/fzg;

    iget-object v10, v2, Lg/ccw;->i:Lg/gqc;

    iget-object v11, v2, Lg/ccw;->k:Lg/mh;

    iget v4, v9, Lg/fzg;->o:I

    iget v12, v9, Lg/fzg;->w:I

    const/16 v6, 0x8

    const/16 v13, 0x10

    if-ne v4, v6, :cond_2

    invoke-virtual {v9, v13}, Lg/fzg;->bg(I)V

    return-object v8

    :cond_2
    iget-boolean v14, v9, Lg/fzg;->v:Z

    iget-object v15, v2, Lg/ccw;->l:Lg/fpd;

    const/16 v6, 0xd

    if-ne v4, v6, :cond_3

    :try_start_0
    invoke-virtual {v9, v13}, Lg/fzg;->bg(I)V

    invoke-virtual/range {p0 .. p2}, Lg/dhm;->j(Lg/ccw;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2, v15}, Lg/ccw;->v(Lg/fpd;)V

    return-object v0

    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_0
    move-object v5, v15

    goto/16 :goto_46

    :cond_3
    move-object/from16 v16, v8

    const/16 v8, 0xe

    iget-object v6, v1, Lg/dhm;->a:Lg/ctt;

    if-ne v4, v8, :cond_5

    :try_start_1
    iget-boolean v8, v6, Lg/ctt;->g:Z

    if-nez v8, :cond_4

    sget-object v8, Lg/cbj;->SupportArrayToBean:Lg/cbj;

    iget v8, v8, Lg/cbj;->mask:I

    and-int/2addr v8, v12

    if-eqz v8, :cond_5

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v5, v15

    move-object/from16 v1, v16

    move-object v8, v1

    goto/16 :goto_46

    :cond_4
    :goto_1
    invoke-virtual/range {p0 .. p3}, Lg/dhm;->e(Lg/ccw;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {v2, v15}, Lg/ccw;->v(Lg/fpd;)V

    return-object v0

    :cond_5
    const/16 v8, 0xc

    move/from16 v18, v12

    const/4 v12, 0x4

    if-eq v4, v8, :cond_9

    if-eq v4, v13, :cond_9

    :try_start_2
    invoke-virtual {v9}, Lg/fzg;->ad()Z

    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v5, :cond_6

    invoke-virtual {v2, v15}, Lg/ccw;->v(Lg/fpd;)V

    return-object v16

    :cond_6
    if-ne v4, v12, :cond_7

    :try_start_3
    invoke-virtual {v9}, Lg/fzg;->bj()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {v9}, Lg/fzg;->az()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-virtual {v2, v15}, Lg/ccw;->v(Lg/fpd;)V

    return-object v16

    :cond_7
    :try_start_4
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lg/fzg;->ac()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_8

    const-string v3, ", fieldName "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    :cond_8
    new-instance v0, Lg/bfj;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_9
    :try_start_5
    iget v3, v2, Lg/ccw;->c:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1b

    const/4 v4, 0x2

    const/4 v8, 0x0

    if-ne v3, v4, :cond_a

    :try_start_6
    iput v8, v2, Lg/ccw;->c:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_a
    :try_start_7
    array-length v3, v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1b

    move-object/from16 v4, v16

    move-object v8, v4

    move-object/from16 v19, v8

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v3, :cond_b

    :try_start_8
    aget-object v13, v7, v12

    move/from16 v20, v3

    iget-object v3, v13, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v3, Lg/bnu;

    move-object/from16 v21, v6

    iget-object v6, v3, Lg/bnu;->b:Ljava/lang/Class;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :goto_3
    move-object/from16 v22, v7

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v1, v4

    goto/16 :goto_0

    :cond_b
    move/from16 v20, v3

    move-object/from16 v21, v6

    move-object/from16 v3, v16

    move-object v6, v3

    move-object v13, v6

    goto :goto_3

    :goto_4
    const-class v7, Ljava/lang/Double;

    move/from16 v23, v12

    sget-object v12, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move/from16 v24, v14

    const-class v14, Ljava/lang/Float;

    move-object/from16 v25, v13

    sget-object v13, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v26, v4

    const-class v4, Ljava/lang/Long;

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v27, v8

    const-class v8, Ljava/lang/Integer;

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-wide/16 v28, 0x0

    const/16 v30, 0x0

    const-wide/16 v31, 0x0

    if-eqz v25, :cond_25

    :try_start_9
    iget-object v2, v3, Lg/bnu;->c:[C
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    move-object/from16 v33, v15

    if-eq v6, v0, :cond_22

    if-ne v6, v8, :cond_c

    goto/16 :goto_14

    :cond_c
    if-eq v6, v5, :cond_20

    if-ne v6, v4, :cond_d

    goto/16 :goto_13

    :cond_d
    :try_start_a
    const-class v15, Ljava/lang/String;

    if-ne v6, v15, :cond_11

    invoke-virtual {v9, v2}, Lg/fzg;->ab([C)Ljava/lang/String;

    move-result-object v2

    iget v15, v9, Lg/fzg;->r:I

    if-lez v15, :cond_e

    :goto_5
    move-object/from16 v36, v2

    move-wide/from16 v29, v28

    const/16 v28, 0x1

    const/16 v34, 0x0

    const/16 v35, 0x1

    :goto_6
    move-wide/from16 v43, v31

    move-object/from16 v32, v3

    move-wide/from16 v2, v43

    const/16 v31, 0x0

    goto/16 :goto_15

    :cond_e
    move-object/from16 v34, v2

    const/4 v2, -0x2

    if-ne v15, v2, :cond_10

    :cond_f
    :goto_7
    move-object/from16 v3, p1

    move-object/from16 v12, p2

    move-object/from16 v2, p3

    move-object/from16 v37, v10

    :goto_8
    move-object/from16 v7, v27

    move-object/from16 v10, v33

    const/16 v1, 0xd

    goto/16 :goto_25

    :cond_10
    move-wide/from16 v35, v31

    move-object/from16 v32, v3

    move-wide/from16 v2, v35

    move-wide/from16 v29, v28

    move-object/from16 v36, v34

    :goto_9
    const/16 v28, 0x0

    :goto_a
    const/16 v31, 0x0

    :goto_b
    const/16 v34, 0x0

    const/16 v35, 0x0

    goto/16 :goto_15

    :catchall_3
    move-exception v0

    :goto_c
    move-object/from16 v2, p1

    move-object/from16 v1, v26

    move-object/from16 v8, v27

    move-object/from16 v5, v33

    goto/16 :goto_46

    :cond_11
    sget-object v15, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v6, v15, :cond_1e

    const-class v15, Ljava/lang/Boolean;

    if-ne v6, v15, :cond_12

    goto/16 :goto_12

    :cond_12
    if-eq v6, v13, :cond_1b

    if-ne v6, v14, :cond_13

    goto/16 :goto_11

    :cond_13
    if-eq v6, v12, :cond_18

    if-ne v6, v7, :cond_14

    goto :goto_e

    :cond_14
    iget-boolean v15, v3, Lg/bnu;->f:Z

    if-eqz v15, :cond_17

    invoke-virtual {v11, v6}, Lg/mh;->d(Ljava/lang/reflect/Type;)Lg/cma;

    move-result-object v15

    instance-of v15, v15, Lg/hev;

    if-eqz v15, :cond_17

    invoke-virtual {v9, v2, v10}, Lg/fzg;->bh([CLg/gqc;)Ljava/lang/String;

    move-result-object v2

    iget v15, v9, Lg/fzg;->r:I

    if-lez v15, :cond_15

    invoke-static {v6, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v2

    const/4 v15, 0x1

    const/16 v34, 0x1

    goto :goto_d

    :cond_15
    const/4 v2, -0x2

    if-ne v15, v2, :cond_16

    goto :goto_7

    :cond_16
    move-object/from16 v2, v16

    const/4 v15, 0x0

    const/16 v34, 0x0

    :goto_d
    move-object/from16 v36, v2

    move-wide/from16 v29, v28

    move/from16 v35, v34

    const/16 v34, 0x0

    move/from16 v28, v15

    goto/16 :goto_6

    :cond_17
    invoke-virtual {v9, v2}, Lg/fzg;->al([C)Z

    move-result v2

    if-eqz v2, :cond_f

    move-wide/from16 v34, v31

    move-object/from16 v32, v3

    move-wide/from16 v2, v34

    move-object/from16 v36, v16

    move-wide/from16 v29, v28

    const/16 v28, 0x1

    goto :goto_a

    :cond_18
    :goto_e
    invoke-virtual {v9, v2}, Lg/fzg;->au([C)D

    move-result-wide v31

    iget v2, v9, Lg/fzg;->r:I

    if-lez v2, :cond_19

    :goto_f
    move-wide/from16 v34, v31

    move-object/from16 v32, v3

    move-wide/from16 v2, v34

    move-object/from16 v36, v16

    move-wide/from16 v29, v28

    const/16 v28, 0x1

    const/16 v31, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x1

    goto/16 :goto_15

    :cond_19
    const/4 v15, -0x2

    if-ne v2, v15, :cond_1a

    goto/16 :goto_7

    :cond_1a
    :goto_10
    move-wide/from16 v34, v31

    move-object/from16 v32, v3

    move-wide/from16 v2, v34

    move-object/from16 v36, v16

    move-wide/from16 v29, v28

    goto/16 :goto_9

    :cond_1b
    :goto_11
    invoke-virtual {v9, v2}, Lg/fzg;->av([C)F

    move-result v30

    iget v2, v9, Lg/fzg;->r:I

    if-lez v2, :cond_1c

    move-wide/from16 v34, v31

    move-object/from16 v32, v3

    move-wide/from16 v2, v34

    move-object/from16 v36, v16

    move/from16 v34, v30

    const/16 v31, 0x0

    const/16 v35, 0x1

    move-wide/from16 v29, v28

    const/16 v28, 0x1

    goto/16 :goto_15

    :cond_1c
    const/4 v15, -0x2

    if-ne v2, v15, :cond_1d

    goto/16 :goto_7

    :cond_1d
    move-wide/from16 v34, v31

    move-object/from16 v32, v3

    move-wide/from16 v2, v34

    move-object/from16 v36, v16

    move/from16 v34, v30

    const/16 v31, 0x0

    const/16 v35, 0x0

    move-wide/from16 v29, v28

    const/16 v28, 0x0

    goto/16 :goto_15

    :cond_1e
    :goto_12
    invoke-virtual {v9, v2}, Lg/fzg;->ap([C)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget v15, v9, Lg/fzg;->r:I

    if-lez v15, :cond_1f

    goto/16 :goto_5

    :cond_1f
    move-object/from16 v34, v2

    const/4 v2, -0x2

    if-ne v15, v2, :cond_10

    goto/16 :goto_7

    :cond_20
    :goto_13
    invoke-virtual {v9, v2}, Lg/fzg;->ah([C)J

    move-result-wide v28

    iget v2, v9, Lg/fzg;->r:I

    if-lez v2, :cond_21

    goto :goto_f

    :cond_21
    const/4 v15, -0x2

    if-ne v2, v15, :cond_1a

    goto/16 :goto_7

    :cond_22
    :goto_14
    invoke-virtual {v9, v2}, Lg/fzg;->bn([C)I

    move-result v2

    iget v15, v9, Lg/fzg;->r:I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    if-lez v15, :cond_23

    move-object/from16 v36, v16

    move-wide/from16 v29, v28

    const/16 v28, 0x1

    const/16 v34, 0x0

    const/16 v35, 0x1

    move-wide/from16 v43, v31

    move/from16 v31, v2

    move-object/from16 v32, v3

    move-wide/from16 v2, v43

    goto :goto_15

    :cond_23
    move/from16 v34, v2

    const/4 v2, -0x2

    if-ne v15, v2, :cond_24

    goto/16 :goto_7

    :cond_24
    move-wide/from16 v35, v31

    move-object/from16 v32, v3

    move-wide/from16 v2, v35

    move-object/from16 v36, v16

    move-wide/from16 v29, v28

    move/from16 v31, v34

    const/16 v28, 0x0

    goto/16 :goto_b

    :catchall_4
    move-exception v0

    move-object/from16 v33, v15

    goto/16 :goto_c

    :cond_25
    move-object/from16 v33, v15

    goto/16 :goto_10

    :goto_15
    iget-object v15, v1, Lg/dhm;->b:[Lg/bgf;

    if-nez v28, :cond_3a

    :try_start_b
    invoke-virtual {v9, v10}, Lg/fzg;->bl(Lg/gqc;)Ljava/lang/String;

    move-result-object v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_11

    if-nez v1, :cond_27

    move-object/from16 v37, v10

    :try_start_c
    iget v10, v9, Lg/fzg;->o:I

    move-wide/from16 v38, v2

    const/16 v2, 0xd

    if-ne v10, v2, :cond_26

    const/16 v2, 0x10

    invoke-virtual {v9, v2}, Lg/fzg;->bg(I)V

    move-object/from16 v3, p1

    move-object/from16 v12, p2

    move-object/from16 v2, p3

    move-object/from16 v7, v27

    move-object/from16 v10, v33

    goto/16 :goto_23

    :cond_26
    const/16 v2, 0x10

    if-ne v10, v2, :cond_28

    sget-object v2, Lg/cbj;->AllowArbitraryCommas:Lg/cbj;

    iget v2, v2, Lg/cbj;->mask:I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    and-int v2, v18, v2

    if-eqz v2, :cond_28

    move-object/from16 v3, p1

    move-object/from16 v12, p2

    move-object/from16 v2, p3

    goto/16 :goto_8

    :cond_27
    move-wide/from16 v38, v2

    move-object/from16 v37, v10

    :cond_28
    :try_start_d
    const-string v2, "$ref"
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_11

    if-ne v2, v1, :cond_32

    :try_start_e
    invoke-virtual {v9}, Lg/fzg;->bp()V

    iget v0, v9, Lg/fzg;->o:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_31

    invoke-virtual {v9}, Lg/fzg;->bj()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_c

    if-eqz v1, :cond_29

    move-object/from16 v10, v33

    :try_start_f
    iget-object v0, v10, Lg/fpd;->f:Ljava/lang/Object;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    move-object/from16 v3, p1

    move-object v8, v0

    :goto_16
    const/16 v2, 0xd

    goto/16 :goto_1d

    :catchall_5
    move-exception v0

    move-object/from16 v2, p1

    :goto_17
    move-object v5, v10

    move-object/from16 v1, v26

    move-object/from16 v8, v27

    goto/16 :goto_46

    :cond_29
    move-object/from16 v10, v33

    :try_start_10
    const-string v1, ".."

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_b

    if-eqz v1, :cond_2b

    :try_start_11
    iget-object v1, v10, Lg/fpd;->c:Ljava/lang/Object;

    check-cast v1, Lg/fpd;

    iget-object v2, v1, Lg/fpd;->f:Ljava/lang/Object;

    if-eqz v2, :cond_2a

    move-object/from16 v3, p1

    :goto_18
    move-object v4, v2

    goto :goto_1a

    :cond_2a
    new-instance v2, Lg/ggl;

    invoke-direct {v2, v1, v0}, Lg/ggl;-><init>(Lg/fpd;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    move-object/from16 v3, p1

    :try_start_12
    invoke-virtual {v3, v2}, Lg/ccw;->z(Lg/ggl;)V

    const/4 v0, 0x1

    iput v0, v3, Lg/ccw;->c:I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    :goto_19
    move-object/from16 v4, v26

    :goto_1a
    move-object v8, v4

    goto :goto_16

    :catchall_6
    move-exception v0

    :goto_1b
    move-object v2, v3

    goto :goto_17

    :catchall_7
    move-exception v0

    move-object/from16 v3, p1

    goto :goto_1b

    :cond_2b
    move-object/from16 v3, p1

    :try_start_13
    const-string v1, "$"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_a

    if-eqz v1, :cond_2e

    move-object v1, v10

    :goto_1c
    :try_start_14
    iget-object v2, v1, Lg/fpd;->c:Ljava/lang/Object;

    check-cast v2, Lg/fpd;

    if-eqz v2, :cond_2c

    move-object v1, v2

    goto :goto_1c

    :cond_2c
    iget-object v2, v1, Lg/fpd;->f:Ljava/lang/Object;

    if-eqz v2, :cond_2d

    goto :goto_18

    :cond_2d
    new-instance v2, Lg/ggl;

    invoke-direct {v2, v1, v0}, Lg/ggl;-><init>(Lg/fpd;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lg/ccw;->z(Lg/ggl;)V

    const/4 v0, 0x1

    iput v0, v3, Lg/ccw;->c:I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    goto :goto_19

    :cond_2e
    :try_start_15
    new-instance v1, Lg/ggl;

    invoke-direct {v1, v10, v0}, Lg/ggl;-><init>(Lg/fpd;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lg/ccw;->z(Lg/ggl;)V

    const/4 v2, 0x1

    iput v2, v3, Lg/ccw;->c:I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_a

    move-object/from16 v8, v26

    goto :goto_16

    :goto_1d
    :try_start_16
    invoke-virtual {v9, v2}, Lg/fzg;->bg(I)V

    iget v0, v9, Lg/fzg;->o:I

    if-ne v0, v2, :cond_30

    const/16 v2, 0x10

    invoke-virtual {v9, v2}, Lg/fzg;->bg(I)V

    move-object/from16 v0, p3

    invoke-virtual {v3, v10, v8, v0}, Lg/ccw;->y(Lg/fpd;Ljava/lang/Object;Ljava/lang/Object;)Lg/fpd;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_8

    if-eqz v27, :cond_2f

    move-object/from16 v1, v27

    iput-object v8, v1, Lg/fpd;->f:Ljava/lang/Object;

    :cond_2f
    invoke-virtual {v3, v10}, Lg/ccw;->v(Lg/fpd;)V

    return-object v8

    :catchall_8
    move-exception v0

    move-object/from16 v1, v27

    :goto_1e
    move-object v2, v8

    move-object v8, v1

    move-object v1, v2

    move-object v2, v3

    :goto_1f
    move-object v5, v10

    goto/16 :goto_46

    :cond_30
    move-object/from16 v1, v27

    :try_start_17
    new-instance v0, Lg/bfj;

    const-string v2, "illegal ref"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_9

    :catchall_9
    move-exception v0

    goto :goto_1e

    :catchall_a
    move-exception v0

    :goto_20
    move-object/from16 v1, v27

    :goto_21
    move-object v8, v1

    move-object v2, v3

    :goto_22
    move-object v5, v10

    move-object/from16 v1, v26

    goto/16 :goto_46

    :catchall_b
    move-exception v0

    move-object/from16 v3, p1

    goto :goto_20

    :catchall_c
    move-exception v0

    move-object/from16 v3, p1

    move-object/from16 v1, v27

    move-object/from16 v10, v33

    goto :goto_21

    :cond_31
    move-object/from16 v3, p1

    move-object/from16 v1, v27

    move-object/from16 v10, v33

    :try_start_18
    new-instance v2, Lg/bfj;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "illegal ref, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lg/gs;->h(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_d

    :catchall_d
    move-exception v0

    goto :goto_21

    :cond_32
    move-object/from16 v2, v27

    move-object/from16 v27, v7

    move-object v7, v2

    move-object/from16 v3, p1

    move-object/from16 v2, p3

    move-object/from16 v10, v33

    move-object/from16 v33, v12

    :try_start_19
    const-string v12, "@type"
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_e

    if-ne v12, v1, :cond_39

    :try_start_1a
    invoke-virtual {v9}, Lg/fzg;->bp()V

    iget v0, v9, Lg/fzg;->o:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_38

    invoke-virtual {v9}, Lg/fzg;->bj()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v9, v1}, Lg/fzg;->bg(I)V

    move-object/from16 v12, p2

    instance-of v1, v12, Ljava/lang/Class;
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_f

    if-eqz v1, :cond_34

    :try_start_1b
    move-object v1, v12

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    iget v0, v9, Lg/fzg;->o:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_33

    invoke-virtual {v9}, Lg/fzg;->az()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_e

    :goto_23
    move-object v8, v2

    move-object v2, v3

    move-object/from16 v33, v10

    move-object/from16 v0, v19

    move-object/from16 v9, v21

    move-object/from16 v4, v26

    goto/16 :goto_3d

    :catchall_e
    move-exception v0

    :goto_24
    move-object v2, v3

    move-object v8, v7

    goto/16 :goto_22

    :cond_33
    :goto_25
    move-object v8, v2

    move-object v2, v3

    move-object/from16 v41, v7

    move-object v0, v9

    move-object v5, v10

    move-object/from16 v42, v11

    move-object/from16 v9, v21

    move-object/from16 v4, v26

    const/16 v3, 0x10

    const/4 v7, 0x4

    const/16 v10, 0xd

    goto/16 :goto_45

    :cond_34
    :try_start_1c
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lg/dtu;->m(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v12}, Lg/dtu;->p(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_f

    if-eqz v1, :cond_36

    if-eqz v0, :cond_35

    :try_start_1d
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_35

    goto :goto_26

    :cond_35
    new-instance v0, Lg/bfj;

    const-string v1, "type not match"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_e

    :cond_36
    :goto_26
    :try_start_1e
    invoke-virtual {v11, v0}, Lg/mh;->d(Ljava/lang/reflect/Type;)Lg/cma;

    move-result-object v1

    invoke-interface {v1, v3, v0, v2}, Lg/cma;->g(Lg/ccw;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_f

    if-eqz v7, :cond_37

    move-object/from16 v1, v26

    iput-object v1, v7, Lg/fpd;->f:Ljava/lang/Object;

    :cond_37
    invoke-virtual {v3, v10}, Lg/ccw;->v(Lg/fpd;)V

    return-object v0

    :catchall_f
    move-exception v0

    move-object/from16 v1, v26

    :goto_27
    move-object v2, v3

    move-object v8, v7

    goto/16 :goto_1f

    :cond_38
    move-object/from16 v1, v26

    :try_start_1f
    new-instance v0, Lg/bfj;

    const-string v2, "syntax error"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_10

    :catchall_10
    move-exception v0

    goto :goto_27

    :cond_39
    move-object/from16 v12, p2

    const/16 v17, 0xd

    goto :goto_28

    :catchall_11
    move-exception v0

    move-object/from16 v3, p1

    move-object/from16 v7, v27

    move-object/from16 v10, v33

    goto :goto_24

    :cond_3a
    move-object/from16 v17, v27

    move-object/from16 v27, v7

    move-object/from16 v7, v17

    move-wide/from16 v38, v2

    move-object/from16 v37, v10

    move-object/from16 v10, v33

    move-object/from16 v3, p1

    move-object/from16 v2, p3

    move-object/from16 v33, v12

    move-object/from16 v1, v16

    const/16 v17, 0xd

    move-object/from16 v12, p2

    :goto_28
    if-nez v26, :cond_3d

    if-nez v19, :cond_3d

    move-object/from16 v40, v1

    :try_start_20
    invoke-virtual/range {p0 .. p2}, Lg/dhm;->j(Lg/ccw;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_13

    if-nez v1, :cond_3b

    move-object/from16 v41, v7

    :try_start_21
    new-instance v7, Ljava/util/HashMap;

    move-object/from16 v42, v11

    array-length v11, v15

    invoke-direct {v7, v11}, Ljava/util/HashMap;-><init>(I)V

    move-object/from16 v19, v7

    goto :goto_2a

    :catchall_12
    move-exception v0

    move-object v2, v3

    move-object v5, v10

    :goto_29
    move-object/from16 v8, v41

    goto/16 :goto_46

    :cond_3b
    move-object/from16 v41, v7

    move-object/from16 v42, v11

    :goto_2a
    if-nez v24, :cond_3c

    invoke-virtual {v3, v10, v1, v2}, Lg/ccw;->y(Lg/fpd;Ljava/lang/Object;Ljava/lang/Object;)Lg/fpd;

    move-result-object v7

    move-object/from16 v41, v7

    :cond_3c
    move-object/from16 v7, v19

    goto :goto_2b

    :catchall_13
    move-exception v0

    move-object/from16 v41, v7

    move-object v2, v3

    move-object v5, v10

    move-object/from16 v1, v26

    goto :goto_29

    :cond_3d
    move-object/from16 v40, v1

    move-object/from16 v41, v7

    move-object/from16 v42, v11

    move-object/from16 v7, v19

    move-object/from16 v1, v26

    :goto_2b
    if-eqz v28, :cond_56

    if-nez v35, :cond_3e

    move-object/from16 v11, v25

    invoke-virtual {v11, v1, v12, v7, v3}, Lg/bgf;->_t(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;Lg/ccw;)V

    move-object v4, v1

    move-object v8, v2

    move-object v2, v3

    move-object/from16 v25, v7

    move-object v0, v9

    move-object/from16 v33, v10

    move-object/from16 v9, v21

    const/4 v7, 0x4

    :goto_2c
    const/16 v10, 0xd

    const/4 v11, 0x1

    goto/16 :goto_3b

    :cond_3e
    move-object/from16 v11, v25

    if-nez v1, :cond_47

    if-eq v6, v0, :cond_46

    if-ne v6, v8, :cond_3f

    goto :goto_31

    :cond_3f
    if-eq v6, v5, :cond_45

    if-ne v6, v4, :cond_40

    goto :goto_30

    :cond_40
    if-eq v6, v13, :cond_44

    if-ne v6, v14, :cond_41

    goto :goto_2f

    :cond_41
    move-object/from16 v0, v33

    if-eq v6, v0, :cond_43

    move-object/from16 v0, v27

    if-ne v6, v0, :cond_42

    goto :goto_2d

    :cond_42
    move-object/from16 v4, v32

    move-object/from16 v0, v36

    goto :goto_32

    :cond_43
    :goto_2d
    new-instance v0, Ljava/lang/Double;

    move-wide/from16 v4, v38

    invoke-direct {v0, v4, v5}, Ljava/lang/Double;-><init>(D)V

    :goto_2e
    move-object/from16 v4, v32

    goto :goto_32

    :cond_44
    :goto_2f
    new-instance v0, Ljava/lang/Float;

    move/from16 v4, v34

    invoke-direct {v0, v4}, Ljava/lang/Float;-><init>(F)V

    goto :goto_2e

    :cond_45
    :goto_30
    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_2e

    :cond_46
    :goto_31
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2e

    :goto_32
    iget-object v4, v4, Lg/bnu;->i:Ljava/lang/String;

    invoke-interface {v7, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_12

    move-object/from16 v25, v7

    move-object v0, v9

    move-object/from16 v33, v10

    goto/16 :goto_3a

    :cond_47
    move-object/from16 v25, v7

    move-object/from16 v19, v9

    move-object/from16 v7, v27

    move-object/from16 v2, v32

    move-object/from16 v12, v33

    move/from16 v3, v34

    move-object/from16 v33, v10

    move-wide/from16 v9, v38

    if-nez v36, :cond_54

    if-eq v6, v0, :cond_52

    if-ne v6, v8, :cond_48

    goto/16 :goto_37

    :cond_48
    if-eq v6, v5, :cond_50

    if-ne v6, v4, :cond_49

    goto :goto_36

    :cond_49
    if-eq v6, v13, :cond_4e

    if-ne v6, v14, :cond_4a

    goto :goto_35

    :cond_4a
    if-eq v6, v12, :cond_4c

    if-ne v6, v7, :cond_4b

    goto :goto_34

    :cond_4b
    move-object/from16 v0, v36

    :try_start_22
    invoke-virtual {v11, v1, v0}, Lg/bgf;->ag(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_38

    :catchall_14
    move-exception v0

    move-object/from16 v2, p1

    :goto_33
    move-object/from16 v5, v33

    goto/16 :goto_29

    :catch_0
    move-exception v0

    goto/16 :goto_39

    :cond_4c
    :goto_34
    iget-boolean v0, v2, Lg/bnu;->g:Z

    if-eqz v0, :cond_4d

    if-ne v6, v12, :cond_4d

    iget-object v0, v11, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/bnu;

    iget-object v0, v0, Lg/bnu;->d:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v1, v9, v10}, Ljava/lang/reflect/Field;->setDouble(Ljava/lang/Object;D)V

    goto :goto_38

    :cond_4d
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, v9, v10}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v11, v1, v0}, Lg/bgf;->ag(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_38

    :cond_4e
    :goto_35
    iget-boolean v0, v2, Lg/bnu;->g:Z

    if-eqz v0, :cond_4f

    if-ne v6, v13, :cond_4f

    iget-object v0, v11, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/bnu;

    iget-object v0, v0, Lg/bnu;->d:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Field;->setFloat(Ljava/lang/Object;F)V

    goto :goto_38

    :cond_4f
    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, v3}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v11, v1, v0}, Lg/bgf;->ag(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_38

    :cond_50
    :goto_36
    iget-boolean v0, v2, Lg/bnu;->g:Z

    if-eqz v0, :cond_51

    if-ne v6, v5, :cond_51

    iget-object v0, v11, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/bnu;

    iget-object v0, v0, Lg/bnu;->d:Ljava/lang/reflect/Field;

    move-wide/from16 v3, v29

    invoke-virtual {v0, v1, v3, v4}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V

    goto :goto_38

    :cond_51
    move-wide/from16 v3, v29

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v11, v1, v0}, Lg/bgf;->ag(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_38

    :cond_52
    :goto_37
    iget-boolean v3, v2, Lg/bnu;->g:Z

    if-eqz v3, :cond_53

    if-ne v6, v0, :cond_53

    iget-object v0, v11, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/bnu;

    iget-object v0, v0, Lg/bnu;->d:Ljava/lang/reflect/Field;

    move/from16 v3, v31

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    goto :goto_38

    :cond_53
    move/from16 v3, v31

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v11, v1, v0}, Lg/bgf;->ag(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_22
    .catch Ljava/lang/IllegalAccessException; {:try_start_22 .. :try_end_22} :catch_0
    .catchall {:try_start_22 .. :try_end_22} :catchall_14

    :goto_38
    move-object/from16 v0, v19

    goto :goto_3a

    :goto_39
    :try_start_23
    new-instance v3, Lg/bfj;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set property error, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lg/bnu;->i:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_54
    move-object/from16 v0, v36

    invoke-virtual {v11, v1, v0}, Lg/bgf;->ag(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_38

    :goto_3a
    iget v2, v0, Lg/fzg;->r:I
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_14

    const/4 v7, 0x4

    if-ne v2, v7, :cond_55

    move-object/from16 v2, p1

    move-object/from16 v8, p3

    move-object v4, v1

    move-object/from16 v9, v21

    goto :goto_3c

    :cond_55
    move-object/from16 v2, p1

    move-object/from16 v8, p3

    move-object v4, v1

    move-object/from16 v9, v21

    goto/16 :goto_2c

    :cond_56
    move-object v4, v1

    move-object v8, v2

    move-object v2, v3

    move-object v6, v7

    move-object v0, v9

    move-object/from16 v33, v10

    move-object v5, v12

    move-object/from16 v9, v21

    move-object/from16 v3, v40

    const/4 v7, 0x4

    const/16 v10, 0xd

    const/4 v11, 0x1

    move-object/from16 v1, p0

    :try_start_24
    invoke-virtual/range {v1 .. v6}, Lg/dhm;->h(Lg/ccw;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/HashMap;)Z

    move-result v3
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_19

    move-object/from16 v25, v6

    if-nez v3, :cond_58

    :try_start_25
    iget v1, v0, Lg/fzg;->o:I

    if-ne v1, v10, :cond_57

    invoke-virtual {v0}, Lg/fzg;->az()V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_15

    goto :goto_3c

    :catchall_15
    move-exception v0

    move-object v1, v4

    goto/16 :goto_33

    :cond_57
    move-object/from16 v5, v33

    const/16 v3, 0x10

    goto/16 :goto_44

    :cond_58
    :try_start_26
    iget v1, v0, Lg/fzg;->o:I

    const/16 v3, 0x11

    if-eq v1, v3, :cond_64

    :goto_3b
    iget v1, v0, Lg/fzg;->o:I

    const/16 v3, 0x10

    if-ne v1, v3, :cond_59

    move-object/from16 v5, v33

    goto/16 :goto_44

    :cond_59
    if-ne v1, v10, :cond_62

    invoke-virtual {v0, v3}, Lg/fzg;->bg(I)V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_19

    :goto_3c
    move-object/from16 v0, v25

    move-object/from16 v7, v41

    :goto_3d
    if-nez v4, :cond_5f

    if-nez v0, :cond_5c

    :try_start_27
    invoke-virtual/range {p0 .. p2}, Lg/dhm;->j(Lg/ccw;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_17

    if-nez v7, :cond_5a

    move-object/from16 v5, v33

    :try_start_28
    invoke-virtual {v2, v5, v1, v8}, Lg/ccw;->y(Lg/fpd;Ljava/lang/Object;Ljava/lang/Object;)Lg/fpd;

    move-result-object v7
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_16

    goto :goto_3f

    :catchall_16
    move-exception v0

    :goto_3e
    move-object v8, v7

    goto/16 :goto_46

    :cond_5a
    move-object/from16 v5, v33

    :goto_3f
    if-eqz v7, :cond_5b

    iput-object v1, v7, Lg/fpd;->f:Ljava/lang/Object;

    :cond_5b
    invoke-virtual {v2, v5}, Lg/ccw;->v(Lg/fpd;)V

    return-object v1

    :catchall_17
    move-exception v0

    move-object/from16 v5, v33

    :goto_40
    move-object v1, v4

    goto :goto_3e

    :cond_5c
    move-object/from16 v5, v33

    :try_start_29
    array-length v1, v15

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v8, 0x0

    :goto_41
    if-ge v8, v1, :cond_5d

    aget-object v6, v15, v8

    iget-object v6, v6, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v6, Lg/bnu;

    iget-object v6, v6, Lg/bnu;->i:Ljava/lang/String;

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v3, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_41

    :catchall_18
    move-exception v0

    goto :goto_40

    :cond_5d
    iget-object v0, v9, Lg/ctt;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/reflect/Constructor;
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_18

    iget-object v1, v9, Lg/ctt;->e:Ljava/lang/Object;

    check-cast v1, Ljava/lang/reflect/Method;

    if-eqz v0, :cond_5e

    :try_start_2a
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_1
    .catchall {:try_start_2a .. :try_end_2a} :catchall_18

    goto :goto_42

    :catch_1
    move-exception v0

    :try_start_2b
    new-instance v1, Lg/bfj;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "create instance error, "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v9, Lg/ctt;->c:Ljava/lang/Object;

    check-cast v6, Ljava/lang/reflect/Constructor;

    invoke-virtual {v6}, Ljava/lang/reflect/Constructor;->toGenericString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_18

    :cond_5e
    if-eqz v1, :cond_60

    move-object/from16 v6, v16

    :try_start_2c
    invoke-virtual {v1, v6, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_2
    .catchall {:try_start_2c .. :try_end_2c} :catchall_18

    goto :goto_42

    :catch_2
    move-exception v0

    :try_start_2d
    new-instance v3, Lg/bfj;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "create factory method error, "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_18

    :cond_5f
    move-object/from16 v5, v33

    :cond_60
    :goto_42
    if-eqz v7, :cond_61

    iput-object v4, v7, Lg/fpd;->f:Ljava/lang/Object;

    :cond_61
    invoke-virtual {v2, v5}, Lg/ccw;->v(Lg/fpd;)V

    return-object v4

    :catchall_19
    move-exception v0

    move-object/from16 v5, v33

    :goto_43
    move-object v1, v4

    goto/16 :goto_29

    :cond_62
    move-object/from16 v5, v33

    const/16 v6, 0x12

    if-eq v1, v6, :cond_63

    if-eq v1, v11, :cond_63

    :goto_44
    move-object/from16 v19, v25

    :goto_45
    add-int/lit8 v12, v23, 0x1

    move-object/from16 v1, p0

    move-object v15, v5

    move-object v6, v9

    move/from16 v3, v20

    move-object/from16 v7, v22

    move/from16 v14, v24

    move-object/from16 v10, v37

    move-object/from16 v11, v42

    const/16 v13, 0x10

    const/16 v16, 0x0

    move-object/from16 v5, p2

    move-object v9, v0

    move-object v0, v8

    move-object/from16 v8, v41

    goto/16 :goto_2

    :cond_63
    :try_start_2e
    new-instance v1, Lg/bfj;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "syntax error, unexpect token "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lg/fzg;->o:I

    invoke-static {v0}, Lg/gs;->h(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_1a
    move-exception v0

    goto :goto_43

    :cond_64
    move-object/from16 v5, v33

    new-instance v0, Lg/bfj;

    const-string v1, "syntax error, unexpect token \':\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_1a

    :catchall_1b
    move-exception v0

    move-object v5, v15

    const/4 v1, 0x0

    const/4 v8, 0x0

    :goto_46
    if-eqz v8, :cond_65

    iput-object v1, v8, Lg/fpd;->f:Ljava/lang/Object;

    :cond_65
    invoke-virtual {v2, v5}, Lg/ccw;->v(Lg/fpd;)V

    throw v0

    :goto_47
    invoke-virtual {v2, v6}, Lg/ccw;->x(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final h(Lg/ccw;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/HashMap;)Z
    .locals 11

    iget-object v0, p1, Lg/ccw;->h:Lg/fzg;

    invoke-virtual {p0, p2}, Lg/dhm;->f(Ljava/lang/String;)Lg/bgf;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    const-string v3, "is"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    iget-object v4, p0, Lg/dhm;->c:[Lg/bgf;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_3

    aget-object v7, v4, v6

    iget-object v8, v7, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v8, Lg/bnu;

    iget-object v9, v8, Lg/bnu;->b:Ljava/lang/Class;

    iget-object v8, v8, Lg/bnu;->i:Ljava/lang/String;

    invoke-virtual {v8, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v3, :cond_2

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v9, v10, :cond_1

    const-class v10, Ljava/lang/Boolean;

    if-ne v9, v10, :cond_2

    :cond_1
    const/4 v9, 0x2

    invoke-virtual {p2, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    :goto_1
    move-object v1, v7

    goto :goto_2

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    if-nez v1, :cond_9

    iget v1, v0, Lg/fzg;->w:I

    sget-object v3, Lg/cbj;->IgnoreNotMatch:Lg/cbj;

    iget v3, v3, Lg/cbj;->mask:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lg/fzg;->bp()V

    iget-object p2, p1, Lg/ccw;->f:Ljava/util/ArrayList;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {p2}, Lg/tn;->c(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    move-result-object p1

    throw p1

    :cond_5
    :goto_3
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lg/ccw;->x(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Lg/ccw;->e:Ljava/util/ArrayList;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_6

    goto :goto_4

    :cond_6
    invoke-static {p1}, Lg/tn;->c(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    move-result-object p1

    throw p1

    :cond_7
    :goto_4
    return v2

    :cond_8
    new-instance p1, Lg/bfj;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setter not found, class "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lg/dhm;->d:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", property "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    invoke-virtual {v0}, Lg/fzg;->bp()V

    move-object/from16 v2, p5

    invoke-virtual {v1, p3, p4, v2, p1}, Lg/bgf;->_t(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;Lg/ccw;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final i(Ljava/util/Map;Lg/mh;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lg/dhm;->a:Lg/ctt;

    iget-object v1, v0, Lg/ctt;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/reflect/Constructor;

    iget-object v2, v0, Lg/ctt;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/reflect/Constructor;

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v1, :cond_3

    iget-object v0, p0, Lg/dhm;->d:Ljava/lang/Class;

    invoke-virtual {p0, v4, v0}, Lg/dhm;->j(Lg/ccw;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lg/dhm;->f(Ljava/lang/String;)Lg/bgf;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v2, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v2, Lg/bnu;

    iget-object v4, v2, Lg/bnu;->k:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-static {v1, v2, p2}, Lg/dtu;->s(Ljava/lang/Object;Ljava/lang/reflect/Type;Lg/mh;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v3

    invoke-virtual {v4, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v4, v2, Lg/bnu;->d:Ljava/lang/reflect/Field;

    iget-object v2, v2, Lg/bnu;->a:Ljava/lang/reflect/Type;

    invoke-static {v1, v2, p2}, Lg/dtu;->s(Ljava/lang/Object;Ljava/lang/reflect/Type;Lg/mh;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    iget-object p2, v0, Lg/ctt;->i:Ljava/lang/Object;

    check-cast p2, [Lg/bnu;

    array-length v0, p2

    new-array v1, v0, [Ljava/lang/Object;

    :goto_1
    if-ge v3, v0, :cond_4

    aget-object v5, p2, v3

    iget-object v5, v5, Lg/bnu;->i:Ljava/lang/String;

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    if-eqz v2, :cond_5

    :try_start_0
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lg/bfj;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "create instance error, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->toGenericString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_5
    return-object v4
.end method

.method public final j(Lg/ccw;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p2, Ljava/lang/Class;

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lg/dhm;->d:Ljava/lang/Class;

    if-eqz v0, :cond_1

    invoke-virtual {v3}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p2, Ljava/lang/Class;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iget-object p1, p1, Lg/ccw;->h:Lg/fzg;

    iget p1, p1, Lg/fzg;->w:I

    sget-object v3, Lg/cbj;->OrderedField:Lg/cbj;

    iget v3, v3, Lg/cbj;->mask:I

    and-int/2addr p1, v3

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    new-instance v3, Lg/cof;

    invoke-direct {v3, p1}, Lg/cof;-><init>(Z)V

    new-array p1, v2, [Ljava/lang/Class;

    aput-object p2, p1, v1

    invoke-static {v0, p1, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object p2, p0, Lg/dhm;->a:Lg/ctt;

    iget-object v0, p2, Lg/ctt;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/reflect/Constructor;

    const/4 v4, 0x0

    if-nez v0, :cond_2

    return-object v4

    :cond_2
    :try_start_0
    iget v5, p2, Lg/ctt;->h:I

    if-nez v5, :cond_3

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_4

    :cond_3
    iget-object v4, p1, Lg/ccw;->l:Lg/fpd;

    iget-object v4, v4, Lg/fpd;->f:Ljava/lang/Object;

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v4, v5, v1

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    if-eqz p1, :cond_6

    iget-object p1, p1, Lg/ccw;->h:Lg/fzg;

    iget p1, p1, Lg/fzg;->w:I

    sget-object v4, Lg/cbj;->InitStringFieldAsEmpty:Lg/cbj;

    iget v4, v4, Lg/cbj;->mask:I

    and-int/2addr p1, v4

    if-eqz p1, :cond_6

    iget-object p1, p2, Lg/ctt;->i:Ljava/lang/Object;

    check-cast p1, [Lg/bnu;

    array-length p2, p1

    const/4 v4, 0x0

    :goto_2
    if-ge v4, p2, :cond_6

    aget-object v5, p1, v4

    iget-object v6, v5, Lg/bnu;->b:Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    if-ne v6, v7, :cond_5

    const-string v6, ""

    iget-object v7, v5, Lg/bnu;->k:Ljava/lang/reflect/Method;

    if-eqz v7, :cond_4

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v6, v5, v1

    invoke-virtual {v7, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    iget-object v5, v5, Lg/bnu;->d:Ljava/lang/reflect/Field;

    invoke-virtual {v5, v0, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    return-object v0

    :goto_4
    new-instance p2, Lg/bfj;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "create instance error, class "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
