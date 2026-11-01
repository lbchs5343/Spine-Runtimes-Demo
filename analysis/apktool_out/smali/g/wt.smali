.class public final Lg/wt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/duf;


# static fields
.field public static final a:[C

.field public static final c:[C


# instance fields
.field public final d:Ljava/lang/String;

.field public final e:[Lg/ekz;

.field public final f:[Lg/ekz;

.field public g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lg/wt;->a:[C

    const/4 v0, 0x5

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lg/wt;->c:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x74s
        0x72s
        0x75s
        0x65s
    .end array-data

    :array_1
    .array-data 2
        0x66s
        0x61s
        0x6cs
        0x73s
        0x65s
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 8

    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput v1, p0, Lg/wt;->g:I

    const-class v2, Lg/ecz;

    invoke-virtual {p1, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lg/ecz;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lg/ecz;->serialzeFeatures()[Lg/gar;

    move-result-object v4

    invoke-static {v4}, Lg/gar;->b([Lg/gar;)I

    move-result v4

    iput v4, p0, Lg/wt;->g:I

    invoke-interface {v2}, Lg/ecz;->typeName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lg/wt;->d:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    iput-object v3, p0, Lg/wt;->d:Ljava/lang/String;

    :cond_0
    invoke-static {p1, v0, v2, v1}, Lg/dtu;->f(Ljava/lang/Class;ILg/ecz;Z)Ljava/util/ArrayList;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/bnu;

    new-instance v7, Lg/ekz;

    invoke-direct {v7, v6}, Lg/ekz;-><init>(Lg/bnu;)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Lg/ekz;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lg/ekz;

    iput-object v4, p0, Lg/wt;->e:[Lg/ekz;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lg/ecz;->orders()[Ljava/lang/String;

    move-result-object v3

    :cond_2
    if-eqz v3, :cond_4

    array-length v3, v3

    if-eqz v3, :cond_4

    const/4 v1, 0x1

    invoke-static {p1, v0, v2, v1}, Lg/dtu;->f(Ljava/lang/Class;ILg/ecz;Z)Ljava/util/ArrayList;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/bnu;

    new-instance v2, Lg/ekz;

    invoke-direct {v2, v1}, Lg/ekz;-><init>(Lg/bnu;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lg/ekz;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lg/ekz;

    iput-object p1, p0, Lg/wt;->f:[Lg/ekz;

    return-void

    :cond_4
    array-length p1, v4

    new-array p1, p1, [Lg/ekz;

    array-length v0, v4

    invoke-static {v4, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    invoke-static {p1, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iput-object v4, p0, Lg/wt;->f:[Lg/ekz;

    return-void

    :cond_5
    iput-object p1, p0, Lg/wt;->f:[Lg/ekz;

    return-void
.end method


# virtual methods
.method public final b(Lg/cnu;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 35

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    iget-object v5, v2, Lg/cnu;->j:Lg/cxa;

    if-nez v0, :cond_0

    invoke-virtual {v5}, Lg/cxa;->o()V

    return-void

    :cond_0
    iget-object v6, v2, Lg/cnu;->b:Lg/aca;

    if-eqz v6, :cond_1

    iget v6, v6, Lg/aca;->a:I

    sget-object v7, Lg/gar;->DisableCircularReferenceDetect:Lg/gar;

    iget v7, v7, Lg/gar;->mask:I

    and-int/2addr v6, v7

    if-nez v6, :cond_2

    :cond_1
    iget-object v6, v2, Lg/cnu;->k:Ljava/util/IdentityHashMap;

    if-eqz v6, :cond_2

    invoke-virtual {v6, v0}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual/range {p1 .. p2}, Lg/cnu;->o(Ljava/lang/Object;)V

    return-void

    :cond_2
    iget v6, v5, Lg/cxa;->k:I

    sget-object v7, Lg/gar;->SortField:Lg/gar;

    iget v7, v7, Lg/gar;->mask:I

    and-int/2addr v7, v6

    if-eqz v7, :cond_3

    iget-object v7, v1, Lg/wt;->f:[Lg/ekz;

    goto :goto_0

    :cond_3
    iget-object v7, v1, Lg/wt;->e:[Lg/ekz;

    :goto_0
    iget-object v8, v2, Lg/cnu;->b:Lg/aca;

    sget-object v9, Lg/gar;->DisableCircularReferenceDetect:Lg/gar;

    iget v9, v9, Lg/gar;->mask:I

    and-int/2addr v6, v9

    if-nez v6, :cond_5

    new-instance v6, Lg/aca;

    iget v9, v1, Lg/wt;->g:I

    invoke-direct {v6, v8, v0, v3, v9}, Lg/aca;-><init>(Lg/aca;Ljava/lang/Object;Ljava/lang/Object;I)V

    iput-object v6, v2, Lg/cnu;->b:Lg/aca;

    iget-object v6, v2, Lg/cnu;->k:Ljava/util/IdentityHashMap;

    if-nez v6, :cond_4

    new-instance v6, Ljava/util/IdentityHashMap;

    invoke-direct {v6}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v6, v2, Lg/cnu;->k:Ljava/util/IdentityHashMap;

    :cond_4
    iget-object v6, v2, Lg/cnu;->k:Ljava/util/IdentityHashMap;

    iget-object v9, v2, Lg/cnu;->b:Lg/aca;

    invoke-virtual {v6, v0, v9}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget v6, v1, Lg/wt;->g:I

    sget-object v9, Lg/gar;->BeanToArray:Lg/gar;

    iget v9, v9, Lg/gar;->mask:I

    and-int/2addr v6, v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-nez v6, :cond_7

    iget v6, v5, Lg/cxa;->k:I

    and-int/2addr v6, v9

    if-eqz v6, :cond_6

    goto :goto_1

    :cond_6
    const/4 v6, 0x0

    goto :goto_2

    :cond_7
    :goto_1
    const/4 v6, 0x1

    :goto_2
    if-eqz v6, :cond_8

    const/16 v9, 0x5b

    goto :goto_3

    :cond_8
    const/16 v9, 0x7b

    :goto_3
    if-eqz v6, :cond_9

    const/16 v12, 0x5d

    goto :goto_4

    :cond_9
    const/16 v12, 0x7d

    :goto_4
    :try_start_0
    iget v13, v5, Lg/cxa;->m:I

    add-int/2addr v13, v11

    iget-object v14, v5, Lg/cxa;->l:[C

    array-length v14, v14

    if-le v13, v14, :cond_a

    invoke-virtual {v5, v13}, Lg/cxa;->u(I)V

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v1, v8

    goto/16 :goto_2b

    :catch_0
    move-exception v0

    move-object v1, v8

    goto/16 :goto_29

    :cond_a
    :goto_5
    iget-object v14, v5, Lg/cxa;->l:[C

    iget v15, v5, Lg/cxa;->m:I

    aput-char v9, v14, v15

    iput v13, v5, Lg/cxa;->m:I

    array-length v9, v7

    if-lez v9, :cond_b

    iget v9, v5, Lg/cxa;->k:I

    sget-object v13, Lg/gar;->PrettyFormat:Lg/gar;

    iget v13, v13, Lg/gar;->mask:I

    and-int/2addr v9, v13

    if-eqz v9, :cond_b

    iget v9, v2, Lg/cnu;->i:I

    add-int/2addr v9, v11

    iput v9, v2, Lg/cnu;->i:I

    invoke-virtual {v2}, Lg/cnu;->p()V

    :cond_b
    iget v9, v1, Lg/wt;->g:I

    sget-object v13, Lg/gar;->WriteClassName:Lg/gar;

    iget v13, v13, Lg/gar;->mask:I

    and-int/2addr v9, v13

    const/16 v14, 0x2c

    if-nez v9, :cond_c

    iget v9, v5, Lg/cxa;->k:I

    and-int/2addr v13, v9

    if-eqz v13, :cond_e

    if-nez v4, :cond_c

    sget-object v13, Lg/gar;->NotWriteRootClassName:Lg/gar;

    iget v13, v13, Lg/gar;->mask:I

    and-int/2addr v9, v13

    if-eqz v9, :cond_c

    iget-object v9, v2, Lg/cnu;->b:Lg/aca;

    iget-object v9, v9, Lg/aca;->b:Lg/aca;

    if-eqz v9, :cond_e

    :cond_c
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    if-eq v9, v4, :cond_e

    iget-object v4, v2, Lg/cnu;->f:Lg/cbq;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "@type"

    invoke-virtual {v5, v4, v10}, Lg/cxa;->p(Ljava/lang/String;Z)V

    iget-object v4, v1, Lg/wt;->d:Ljava/lang/String;

    if-nez v4, :cond_d

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    :cond_d
    invoke-virtual {v2, v4}, Lg/cnu;->n(Ljava/lang/String;)V

    const/16 v4, 0x2c

    goto :goto_6

    :cond_e
    const/4 v4, 0x0

    :goto_6
    iget-object v9, v2, Lg/cnu;->l:Ljava/util/ArrayList;

    const/4 v13, 0x0

    if-eqz v9, :cond_10

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-nez v15, :cond_f

    goto :goto_7

    :cond_f
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lg/awf;->e(Ljava/lang/Object;)V

    throw v13

    :cond_10
    :goto_7
    if-ne v4, v14, :cond_11

    const/4 v4, 0x1

    goto :goto_8

    :cond_11
    const/4 v4, 0x0

    :goto_8
    iget v9, v5, Lg/cxa;->k:I

    sget-object v15, Lg/gar;->QuoteFieldNames:Lg/gar;

    iget v15, v15, Lg/gar;->mask:I

    and-int/2addr v15, v9

    if-eqz v15, :cond_12

    sget-object v15, Lg/gar;->UseSingleQuotes:Lg/gar;

    iget v15, v15, Lg/gar;->mask:I

    and-int/2addr v15, v9

    if-nez v15, :cond_12

    const/4 v15, 0x1

    :goto_9
    move-object/from16 p4, v13

    goto :goto_a

    :cond_12
    const/4 v15, 0x0

    goto :goto_9

    :goto_a
    sget-object v13, Lg/gar;->UseSingleQuotes:Lg/gar;

    iget v13, v13, Lg/gar;->mask:I

    and-int/2addr v13, v9

    if-eqz v13, :cond_13

    const/4 v13, 0x1

    :goto_b
    const/16 v16, 0x2c

    goto :goto_c

    :cond_13
    const/4 v13, 0x0

    goto :goto_b

    :goto_c
    sget-object v14, Lg/gar;->NotWriteDefaultValue:Lg/gar;

    iget v14, v14, Lg/gar;->mask:I

    and-int/2addr v9, v14

    if-eqz v9, :cond_14

    const/4 v9, 0x1

    goto :goto_d

    :cond_14
    const/4 v9, 0x0

    :goto_d
    iget-object v14, v2, Lg/cnu;->e:Ljava/util/ArrayList;

    const/16 v17, 0x1

    iget-object v11, v2, Lg/cnu;->m:Ljava/util/ArrayList;

    iget-object v10, v2, Lg/cnu;->g:Ljava/util/ArrayList;

    iget-object v1, v2, Lg/cnu;->a:Ljava/util/ArrayList;

    move-object/from16 v18, v1

    move/from16 v19, v4

    const/4 v1, 0x0

    :goto_e
    array-length v4, v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v1, v4, :cond_4c

    :try_start_1
    aget-object v4, v7, v1

    move/from16 v20, v1

    iget-object v1, v4, Lg/ekz;->d:Lg/bnu;

    move/from16 v21, v6

    iget-object v6, v1, Lg/bnu;->b:Ljava/lang/Class;

    move/from16 v22, v9

    iget-object v9, v1, Lg/bnu;->d:Ljava/lang/reflect/Field;

    move-object/from16 v23, v10

    iget v10, v5, Lg/cxa;->k:I

    move/from16 v24, v10

    sget-object v10, Lg/gar;->SkipTransientField:Lg/gar;

    iget v10, v10, Lg/gar;->mask:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    and-int v10, v24, v10

    if-eqz v10, :cond_15

    if-eqz v9, :cond_15

    :try_start_2
    iget-boolean v10, v1, Lg/bnu;->h:Z

    if-eqz v10, :cond_15

    move-object/from16 v25, v11

    move/from16 v26, v12

    move/from16 v32, v13

    goto/16 :goto_1d

    :cond_15
    if-eqz v18, :cond_17

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-nez v24, :cond_16

    goto :goto_f

    :cond_16
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lg/awf;->e(Ljava/lang/Object;)V

    throw p4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_17
    :goto_f
    :try_start_3
    iget-boolean v10, v1, Lg/bnu;->g:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move/from16 v24, v10

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v25, v11

    sget-object v11, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move/from16 v26, v12

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-wide/16 v27, 0x0

    if-eqz v24, :cond_1b

    if-ne v6, v12, :cond_18

    :try_start_4
    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v9

    move-wide/from16 v30, v27

    const/16 v24, 0x1

    const/16 v27, 0x0

    const/16 v29, 0x0

    move/from16 v28, v9

    :goto_10
    move-object/from16 v9, p4

    goto :goto_13

    :cond_18
    if-ne v6, v11, :cond_19

    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v27

    move-object/from16 v9, p4

    move-wide/from16 v30, v27

    const/16 v24, 0x1

    const/16 v27, 0x0

    :goto_11
    const/16 v28, 0x0

    const/16 v29, 0x0

    goto :goto_13

    :cond_19
    if-ne v6, v10, :cond_1a

    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v9

    move/from16 v29, v9

    move-wide/from16 v30, v27

    const/16 v24, 0x1

    const/16 v27, 0x0

    const/16 v28, 0x0

    goto :goto_10

    :cond_1a
    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_12
    move-wide/from16 v30, v27

    const/16 v24, 0x0

    const/16 v27, 0x1

    goto :goto_11

    :cond_1b
    :try_start_5
    invoke-virtual {v4, v0}, Lg/ekz;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_12

    :goto_13
    if-eqz v14, :cond_20

    if-eqz v24, :cond_1e

    if-ne v6, v12, :cond_1c

    :try_start_6
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    :goto_14
    const/16 v27, 0x1

    goto :goto_15

    :cond_1c
    if-ne v6, v11, :cond_1d

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    goto :goto_14

    :cond_1d
    if-ne v6, v10, :cond_1e

    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    goto :goto_14

    :cond_1e
    :goto_15
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-nez v33, :cond_1f

    goto :goto_16

    :cond_1f
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lg/awf;->e(Ljava/lang/Object;)V

    throw p4

    :cond_20
    :goto_16
    if-eqz v25, :cond_25

    if-eqz v24, :cond_23

    if-nez v27, :cond_23

    if-ne v6, v12, :cond_21

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    :goto_17
    const/16 v27, 0x1

    goto :goto_18

    :cond_21
    if-ne v6, v11, :cond_22

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    goto :goto_17

    :cond_22
    if-ne v6, v10, :cond_23

    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    goto :goto_17

    :cond_23
    :goto_18
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-nez v33, :cond_24

    goto :goto_19

    :cond_24
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lg/awf;->e(Ljava/lang/Object;)V

    throw p4

    :cond_25
    :goto_19
    if-eqz v23, :cond_29

    if-eqz v24, :cond_28

    if-nez v27, :cond_28

    if-ne v6, v12, :cond_26

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    :goto_1a
    const/16 v27, 0x1

    goto :goto_1b

    :cond_26
    if-ne v6, v11, :cond_27

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    goto :goto_1a

    :cond_27
    if-ne v6, v10, :cond_28

    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    goto :goto_1a

    :cond_28
    :goto_1b
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-nez v33, :cond_2a

    :cond_29
    move-object v0, v9

    goto :goto_1c

    :cond_2a
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lg/awf;->e(Ljava/lang/Object;)V

    throw p4

    :goto_1c
    if-eqz v27, :cond_2b

    if-nez v9, :cond_2b

    if-nez v21, :cond_2b

    move/from16 v32, v13

    iget-boolean v13, v4, Lg/ekz;->e:Z

    if-nez v13, :cond_2c

    iget v13, v5, Lg/cxa;->k:I

    move/from16 v33, v13

    sget-object v13, Lg/gar;->WriteMapNullValue:Lg/gar;

    iget v13, v13, Lg/gar;->mask:I

    and-int v13, v33, v13

    if-nez v13, :cond_2c

    goto :goto_1d

    :cond_2b
    move/from16 v32, v13

    :cond_2c
    if-eqz v27, :cond_2f

    if-eqz v9, :cond_2f

    if-eqz v22, :cond_2f

    sget-object v13, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq v6, v13, :cond_2d

    sget-object v13, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq v6, v13, :cond_2d

    if-eq v6, v12, :cond_2d

    if-eq v6, v11, :cond_2d

    sget-object v13, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v6, v13, :cond_2d

    sget-object v13, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v6, v13, :cond_2e

    :cond_2d
    instance-of v13, v9, Ljava/lang/Number;

    if-eqz v13, :cond_2e

    move-object v13, v9

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->byteValue()B

    move-result v13

    if-nez v13, :cond_2e

    goto :goto_1d

    :cond_2e
    if-ne v6, v10, :cond_2f

    instance-of v13, v9, Ljava/lang/Boolean;

    if-eqz v13, :cond_2f

    move-object v13, v9

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-nez v13, :cond_2f

    :goto_1d
    move-object/from16 v34, v8

    move/from16 v33, v15

    move/from16 v0, v19

    const/4 v8, 0x0

    move-object/from16 v19, v14

    goto/16 :goto_27

    :cond_2f
    if-eqz v19, :cond_31

    iget v13, v5, Lg/cxa;->m:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v19, v14

    iget-object v14, v5, Lg/cxa;->l:[C

    array-length v14, v14

    if-le v13, v14, :cond_30

    invoke-virtual {v5, v13}, Lg/cxa;->u(I)V

    :cond_30
    iget-object v14, v5, Lg/cxa;->l:[C

    move-object/from16 v33, v14

    iget v14, v5, Lg/cxa;->m:I

    aput-char v16, v33, v14

    iput v13, v5, Lg/cxa;->m:I

    iget v13, v5, Lg/cxa;->k:I

    sget-object v14, Lg/gar;->PrettyFormat:Lg/gar;

    iget v14, v14, Lg/gar;->mask:I

    and-int/2addr v13, v14

    if-eqz v13, :cond_32

    invoke-virtual {v2}, Lg/cnu;->p()V

    goto :goto_1e

    :cond_31
    move-object/from16 v19, v14

    :cond_32
    :goto_1e
    if-eq v0, v9, :cond_35

    if-nez v21, :cond_33

    invoke-virtual {v4, v2}, Lg/ekz;->g(Lg/cnu;)V

    :cond_33
    invoke-virtual {v2, v9}, Lg/cnu;->r(Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object/from16 v34, v8

    move/from16 v33, v15

    :cond_34
    :goto_1f
    const/4 v8, 0x0

    goto/16 :goto_26

    :cond_35
    if-nez v21, :cond_38

    if-eqz v15, :cond_37

    :try_start_7
    iget-object v0, v1, Lg/bnu;->c:[C

    array-length v13, v0

    iget v14, v5, Lg/cxa;->m:I

    add-int/2addr v14, v13

    move/from16 v33, v15

    iget-object v15, v5, Lg/cxa;->l:[C

    array-length v15, v15
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-le v14, v15, :cond_36

    :try_start_8
    invoke-virtual {v5, v14}, Lg/cxa;->u(I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_36
    :try_start_9
    iget-object v15, v5, Lg/cxa;->l:[C

    iget v3, v5, Lg/cxa;->m:I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-object/from16 v34, v8

    const/4 v8, 0x0

    :try_start_a
    invoke-static {v0, v8, v15, v3, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v14, v5, Lg/cxa;->m:I

    goto :goto_22

    :catchall_1
    move-exception v0

    :goto_20
    move-object/from16 v1, v34

    goto/16 :goto_2b

    :catch_1
    move-exception v0

    :goto_21
    move-object/from16 v1, v34

    goto/16 :goto_29

    :catchall_2
    move-exception v0

    move-object/from16 v34, v8

    goto :goto_20

    :catch_2
    move-exception v0

    move-object/from16 v34, v8

    goto :goto_21

    :cond_37
    move-object/from16 v34, v8

    move/from16 v33, v15

    invoke-virtual {v4, v2}, Lg/ekz;->g(Lg/cnu;)V

    goto :goto_22

    :cond_38
    move-object/from16 v34, v8

    move/from16 v33, v15

    :goto_22
    if-eqz v24, :cond_41

    if-nez v27, :cond_41

    if-ne v6, v12, :cond_3e

    const/high16 v0, -0x80000000

    move/from16 v9, v28

    if-ne v9, v0, :cond_39

    const-string v0, "-2147483648"

    invoke-virtual {v5, v0}, Lg/cxa;->write(Ljava/lang/String;)V

    goto :goto_1f

    :cond_39
    if-gez v9, :cond_3a

    neg-int v0, v9

    goto :goto_23

    :cond_3a
    move v0, v9

    :goto_23
    const/4 v1, 0x0

    :goto_24
    sget-object v3, Lg/cxa;->g:[I

    aget v3, v3, v1

    if-gt v0, v3, :cond_3d

    add-int/lit8 v0, v1, 0x1

    if-gez v9, :cond_3b

    add-int/lit8 v0, v1, 0x2

    :cond_3b
    iget v1, v5, Lg/cxa;->m:I

    add-int/2addr v1, v0

    iget-object v0, v5, Lg/cxa;->l:[C

    array-length v0, v0

    if-le v1, v0, :cond_3c

    invoke-virtual {v5, v1}, Lg/cxa;->u(I)V

    :cond_3c
    int-to-long v3, v9

    iget-object v0, v5, Lg/cxa;->l:[C

    invoke-static {v3, v4, v1, v0}, Lg/cxa;->n(JI[C)V

    iput v1, v5, Lg/cxa;->m:I

    goto :goto_1f

    :cond_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    :cond_3e
    if-ne v6, v11, :cond_3f

    move-wide/from16 v0, v30

    invoke-virtual {v5, v0, v1}, Lg/cxa;->w(J)V

    goto/16 :goto_1f

    :cond_3f
    if-ne v6, v10, :cond_34

    if-eqz v29, :cond_40

    sget-object v0, Lg/wt;->a:[C

    const/4 v1, 0x4

    const/4 v8, 0x0

    invoke-virtual {v5, v0, v8, v1}, Lg/cxa;->write([CII)V

    goto/16 :goto_1f

    :cond_40
    sget-object v0, Lg/wt;->c:[C

    const/4 v1, 0x5

    const/4 v8, 0x0

    invoke-virtual {v5, v0, v8, v1}, Lg/cxa;->write([CII)V

    goto/16 :goto_1f

    :cond_41
    if-nez v21, :cond_4b

    const-class v0, Ljava/lang/String;

    if-ne v6, v0, :cond_46

    if-nez v9, :cond_44

    iget v0, v5, Lg/cxa;->k:I

    sget-object v1, Lg/gar;->WriteNullStringAsEmpty:Lg/gar;

    iget v1, v1, Lg/gar;->mask:I

    and-int/2addr v0, v1

    if-nez v0, :cond_43

    iget v0, v4, Lg/ekz;->a:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_42

    goto :goto_25

    :cond_42
    invoke-virtual {v5}, Lg/cxa;->o()V

    goto/16 :goto_1f

    :cond_43
    :goto_25
    const-string v0, ""

    invoke-virtual {v5, v0}, Lg/cxa;->t(Ljava/lang/String;)V

    goto/16 :goto_1f

    :cond_44
    check-cast v9, Ljava/lang/String;

    if-eqz v32, :cond_45

    invoke-virtual {v5, v9}, Lg/cxa;->r(Ljava/lang/String;)V

    goto/16 :goto_1f

    :cond_45
    const/4 v0, 0x1

    const/4 v8, 0x0

    invoke-virtual {v5, v0, v9, v8}, Lg/cxa;->v(ZLjava/lang/String;C)V

    goto/16 :goto_1f

    :cond_46
    iget-boolean v0, v1, Lg/bnu;->f:Z

    if-eqz v0, :cond_4a

    if-eqz v9, :cond_49

    iget v0, v5, Lg/cxa;->k:I

    sget-object v1, Lg/gar;->WriteEnumUsingToString:Lg/gar;

    iget v1, v1, Lg/gar;->mask:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_48

    check-cast v9, Ljava/lang/Enum;

    invoke-virtual {v9}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, v5, Lg/cxa;->k:I

    sget-object v3, Lg/gar;->UseSingleQuotes:Lg/gar;

    iget v3, v3, Lg/gar;->mask:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_47

    invoke-virtual {v5, v0}, Lg/cxa;->r(Ljava/lang/String;)V

    goto/16 :goto_1f

    :cond_47
    const/4 v8, 0x0

    invoke-virtual {v5, v8, v0, v8}, Lg/cxa;->v(ZLjava/lang/String;C)V

    goto :goto_26

    :cond_48
    const/4 v8, 0x0

    check-cast v9, Ljava/lang/Enum;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {v5, v0}, Lg/cxa;->q(I)V

    goto :goto_26

    :cond_49
    const/4 v8, 0x0

    invoke-virtual {v5}, Lg/cxa;->o()V

    goto :goto_26

    :cond_4a
    const/4 v8, 0x0

    invoke-virtual {v4, v2, v9}, Lg/ekz;->h(Lg/cnu;Ljava/lang/Object;)V

    goto :goto_26

    :cond_4b
    const/4 v8, 0x0

    invoke-virtual {v4, v2, v9}, Lg/ekz;->h(Lg/cnu;Ljava/lang/Object;)V

    :goto_26
    const/4 v0, 0x1

    :goto_27
    add-int/lit8 v1, v20, 0x1

    move-object/from16 v3, p3

    move-object/from16 v14, v19

    move/from16 v6, v21

    move/from16 v9, v22

    move-object/from16 v10, v23

    move-object/from16 v11, v25

    move/from16 v12, v26

    move/from16 v13, v32

    move/from16 v15, v33

    move-object/from16 v8, v34

    const/16 v17, 0x1

    move/from16 v19, v0

    move-object/from16 v0, p2

    goto/16 :goto_e

    :cond_4c
    move-object/from16 v34, v8

    move/from16 v26, v12

    iget-object v0, v2, Lg/cnu;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_4e

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_4d

    goto :goto_28

    :cond_4d
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lg/awf;->e(Ljava/lang/Object;)V

    throw p4

    :cond_4e
    :goto_28
    array-length v0, v7

    if-lez v0, :cond_4f

    iget v0, v5, Lg/cxa;->k:I

    sget-object v1, Lg/gar;->PrettyFormat:Lg/gar;

    iget v1, v1, Lg/gar;->mask:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_4f

    iget v0, v2, Lg/cnu;->i:I

    const/16 v17, 0x1

    add-int/lit8 v0, v0, -0x1

    iput v0, v2, Lg/cnu;->i:I

    invoke-virtual {v2}, Lg/cnu;->p()V

    :cond_4f
    iget v0, v5, Lg/cxa;->m:I

    const/16 v17, 0x1

    add-int/lit8 v0, v0, 0x1

    iget-object v1, v5, Lg/cxa;->l:[C

    array-length v1, v1

    if-le v0, v1, :cond_50

    invoke-virtual {v5, v0}, Lg/cxa;->u(I)V

    :cond_50
    iget-object v1, v5, Lg/cxa;->l:[C

    iget v3, v5, Lg/cxa;->m:I

    aput-char v26, v1, v3

    iput v0, v5, Lg/cxa;->m:I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-object/from16 v1, v34

    iput-object v1, v2, Lg/cnu;->b:Lg/aca;

    return-void

    :goto_29
    :try_start_b
    const-string v3, "write javaBean error"

    if-eqz p3, :cond_51

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", fieldName : "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2a

    :catchall_3
    move-exception v0

    goto :goto_2b

    :cond_51
    :goto_2a
    new-instance v4, Lg/bfj;

    invoke-direct {v4, v3, v0}, Lg/bfj;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :goto_2b
    iput-object v1, v2, Lg/cnu;->b:Lg/aca;

    throw v0
.end method
