.class public final Lg/aem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/HashMap;

.field public final c:J

.field public final d:Ljava/util/HashMap;

.field public final e:J

.field public final f:Ljava/lang/String;

.field public final g:Lg/dla;

.field public h:Ljava/util/ArrayList;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:Lg/aem;

.field public final l:Z

.field public final m:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJLg/dla;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lg/aem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/aem;->f:Ljava/lang/String;

    iput-object p2, p0, Lg/aem;->j:Ljava/lang/String;

    iput-object p10, p0, Lg/aem;->i:Ljava/lang/String;

    iput-object p7, p0, Lg/aem;->g:Lg/dla;

    iput-object p8, p0, Lg/aem;->m:[Ljava/lang/String;

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lg/aem;->l:Z

    iput-wide p3, p0, Lg/aem;->c:J

    iput-wide p5, p0, Lg/aem;->e:J

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p9, p0, Lg/aem;->a:Ljava/lang/String;

    iput-object p11, p0, Lg/aem;->k:Lg/aem;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lg/aem;->b:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lg/aem;->d:Ljava/util/HashMap;

    return-void
.end method

.method public static n(Ljava/lang/String;Ljava/util/TreeMap;)Landroid/text/SpannableStringBuilder;
    .locals 2

    invoke-virtual {p1, p0}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcr;-><init>()V

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcr;->zzl(Ljava/lang/CharSequence;)Lcom/google/android/gms/internal/ads/zzcr;

    invoke-virtual {p1, p0, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p1, p0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzcr;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcr;->zzq()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Landroid/text/SpannableStringBuilder;

    return-object p0
.end method

.method public static o(Ljava/lang/String;JJLg/dla;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lg/aem;)Lg/aem;
    .locals 12

    new-instance v0, Lg/aem;

    const/4 v2, 0x0

    move-object v1, p0

    move-wide v3, p1

    move-wide v5, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-direct/range {v0 .. v11}, Lg/aem;-><init>(Ljava/lang/String;Ljava/lang/String;JJLg/dla;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lg/aem;)V

    return-object v0
.end method

.method public static p(Ljava/lang/String;)Lg/aem;
    .locals 12

    new-instance v0, Lg/aem;

    const-string v1, "\r\n"

    const-string v2, "\n"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, " *\n *"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, " "

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "[ \t\\x0B\u000c\r]+"

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v1, 0x0

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, ""

    move-wide v5, v3

    invoke-direct/range {v0 .. v11}, Lg/aem;-><init>(Ljava/lang/String;Ljava/lang/String;JJLg/dla;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lg/aem;)V

    return-object v0
.end method


# virtual methods
.method public final q(JLjava/lang/String;Ljava/util/ArrayList;)V
    .locals 3

    const-string v0, ""

    iget-object v1, p0, Lg/aem;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object p3, v1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lg/aem;->s(J)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lg/aem;->f:Ljava/lang/String;

    const-string v2, "div"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lg/aem;->i:Ljava/lang/String;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Landroid/util/Pair;

    invoke-direct {p1, p3, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lg/aem;->t()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-virtual {p0, v1}, Lg/aem;->r(I)Lg/aem;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lg/aem;->q(JLjava/lang/String;Ljava/util/ArrayList;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final r(I)Lg/aem;
    .locals 1

    iget-object v0, p0, Lg/aem;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/aem;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public final s(J)Z
    .locals 9

    const/4 v0, 0x1

    iget-wide v1, p0, Lg/aem;->e:J

    iget-wide v3, p0, Lg/aem;->c:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v3, v5

    if-nez v7, :cond_1

    cmp-long v3, v1, v5

    if-eqz v3, :cond_0

    move-wide v3, v5

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    cmp-long v7, v3, p1

    if-gtz v7, :cond_3

    cmp-long v8, v1, v5

    if-eqz v8, :cond_2

    goto :goto_1

    :cond_2
    return v0

    :cond_3
    :goto_1
    cmp-long v8, v3, v5

    if-nez v8, :cond_5

    cmp-long v3, p1, v1

    if-ltz v3, :cond_4

    goto :goto_2

    :cond_4
    return v0

    :cond_5
    :goto_2
    const/4 v3, 0x0

    if-gtz v7, :cond_6

    cmp-long v4, p1, v1

    if-gez v4, :cond_6

    return v0

    :cond_6
    return v3
.end method

.method public final t()I
    .locals 1

    iget-object v0, p0, Lg/aem;->h:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final u(JLjava/util/Map;Ljava/util/HashMap;Ljava/lang/String;Ljava/util/TreeMap;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v4, p3

    invoke-virtual/range {p0 .. p2}, Lg/aem;->s(J)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1b

    :cond_0
    const-string v1, ""

    iget-object v2, v0, Lg/aem;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object v6, v2

    goto :goto_0

    :cond_1
    move-object/from16 v6, p5

    :goto_0
    iget-object v1, v0, Lg/aem;->d:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v7, v0, Lg/aem;->b:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    :goto_2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v7, v2, :cond_2c

    move-object/from16 v8, p6

    invoke-virtual {v8, v5}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzcr;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v9, p4

    invoke-virtual {v9, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lg/asr;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v10, v10, Lg/asr;->h:I

    iget-object v11, v0, Lg/aem;->g:Lg/dla;

    iget-object v12, v0, Lg/aem;->m:[Ljava/lang/String;

    invoke-static {v11, v12, v4}, Lg/eyt;->at(Lg/dla;[Ljava/lang/String;Ljava/util/Map;)Lg/dla;

    move-result-object v11

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzcr;->zzq()Ljava/lang/CharSequence;

    move-result-object v12

    check-cast v12, Landroid/text/SpannableStringBuilder;

    if-nez v12, :cond_4

    new-instance v12, Landroid/text/SpannableStringBuilder;

    invoke-direct {v12}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {v5, v12}, Lcom/google/android/gms/internal/ads/zzcr;->zzl(Ljava/lang/CharSequence;)Lcom/google/android/gms/internal/ads/zzcr;

    :cond_4
    if-eqz v11, :cond_2

    iget v13, v11, Lg/dla;->a:I

    const/4 v15, -0x1

    const/4 v3, 0x1

    if-ne v13, v15, :cond_6

    iget v14, v11, Lg/dla;->m:I

    if-eq v14, v15, :cond_5

    goto :goto_3

    :cond_5
    const/4 v13, -0x1

    goto :goto_6

    :cond_6
    :goto_3
    if-ne v13, v3, :cond_7

    const/4 v13, 0x1

    goto :goto_4

    :cond_7
    const/4 v13, 0x0

    :goto_4
    iget v14, v11, Lg/dla;->m:I

    if-ne v14, v3, :cond_8

    const/4 v14, 0x2

    goto :goto_5

    :cond_8
    const/4 v14, 0x0

    :goto_5
    or-int/2addr v13, v14

    :goto_6
    if-eq v13, v15, :cond_d

    new-instance v13, Landroid/text/style/StyleSpan;

    iget v14, v11, Lg/dla;->a:I

    if-ne v14, v15, :cond_a

    iget v3, v11, Lg/dla;->m:I

    if-eq v3, v15, :cond_9

    const/4 v3, 0x1

    goto :goto_7

    :cond_9
    const/4 v3, 0x1

    const/4 v14, -0x1

    goto :goto_a

    :cond_a
    :goto_7
    if-ne v14, v3, :cond_b

    const/16 v16, 0x1

    goto :goto_8

    :cond_b
    const/16 v16, 0x0

    :goto_8
    iget v14, v11, Lg/dla;->m:I

    if-ne v14, v3, :cond_c

    const/4 v14, 0x2

    goto :goto_9

    :cond_c
    const/4 v14, 0x0

    :goto_9
    or-int v14, v16, v14

    :goto_a
    invoke-direct {v13, v14}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/16 v14, 0x21

    invoke-interface {v12, v13, v7, v2, v14}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_b

    :cond_d
    const/16 v14, 0x21

    :goto_b
    iget v13, v11, Lg/dla;->i:I

    if-ne v13, v3, :cond_e

    new-instance v13, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v13}, Landroid/text/style/StrikethroughSpan;-><init>()V

    invoke-interface {v12, v13, v7, v2, v14}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_e
    iget v13, v11, Lg/dla;->r:I

    if-ne v13, v3, :cond_f

    new-instance v3, Landroid/text/style/UnderlineSpan;

    invoke-direct {v3}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-interface {v12, v3, v7, v2, v14}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_f
    iget-boolean v3, v11, Lg/dla;->q:Z

    if-eqz v3, :cond_11

    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    iget-boolean v13, v11, Lg/dla;->q:Z

    if-eqz v13, :cond_10

    iget v13, v11, Lg/dla;->n:I

    invoke-direct {v3, v13}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-static {v12, v3, v7, v2, v14}, Lcom/google/android/gms/internal/ads/zzcy;->zzb(Landroid/text/Spannable;Ljava/lang/Object;III)V

    goto :goto_c

    :cond_10
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Font color has not been defined."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_11
    :goto_c
    iget-boolean v3, v11, Lg/dla;->g:Z

    if-eqz v3, :cond_13

    new-instance v3, Landroid/text/style/BackgroundColorSpan;

    iget-boolean v13, v11, Lg/dla;->g:Z

    if-eqz v13, :cond_12

    iget v13, v11, Lg/dla;->e:I

    invoke-direct {v3, v13}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    const/16 v14, 0x21

    invoke-static {v12, v3, v7, v2, v14}, Lcom/google/android/gms/internal/ads/zzcy;->zzb(Landroid/text/Spannable;Ljava/lang/Object;III)V

    goto :goto_d

    :cond_12
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Background color has not been defined."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_13
    :goto_d
    iget-object v3, v11, Lg/dla;->h:Ljava/lang/String;

    if-eqz v3, :cond_14

    new-instance v3, Landroid/text/style/TypefaceSpan;

    iget-object v13, v11, Lg/dla;->h:Ljava/lang/String;

    invoke-direct {v3, v13}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    const/16 v14, 0x21

    invoke-static {v12, v3, v7, v2, v14}, Lcom/google/android/gms/internal/ads/zzcy;->zzb(Landroid/text/Spannable;Ljava/lang/Object;III)V

    :cond_14
    iget-object v3, v11, Lg/dla;->s:Lg/csc;

    const/4 v13, 0x3

    if-eqz v3, :cond_19

    iget v14, v3, Lg/csc;->f:I

    if-ne v14, v15, :cond_17

    const/4 v15, 0x2

    const/16 v17, -0x1

    if-eq v10, v15, :cond_15

    const/4 v14, 0x1

    if-ne v10, v14, :cond_16

    :cond_15
    const/4 v10, 0x3

    goto :goto_e

    :cond_16
    const/4 v10, 0x1

    :goto_e
    move v14, v10

    const/4 v10, 0x1

    goto :goto_f

    :cond_17
    const/16 v17, -0x1

    iget v10, v3, Lg/csc;->g:I

    :goto_f
    iget v3, v3, Lg/csc;->h:I

    const/4 v15, -0x2

    if-ne v3, v15, :cond_18

    const/4 v3, 0x1

    :cond_18
    new-instance v15, Lcom/google/android/gms/internal/ads/zzcz;

    invoke-direct {v15, v14, v10, v3}, Lcom/google/android/gms/internal/ads/zzcz;-><init>(III)V

    const/16 v14, 0x21

    invoke-static {v12, v15, v7, v2, v14}, Lcom/google/android/gms/internal/ads/zzcy;->zzb(Landroid/text/Spannable;Ljava/lang/Object;III)V

    goto :goto_10

    :cond_19
    const/16 v17, -0x1

    :goto_10
    iget v3, v11, Lg/dla;->l:I

    const/4 v15, 0x2

    if-eq v3, v15, :cond_1b

    if-eq v3, v13, :cond_1a

    const/4 v10, 0x4

    if-eq v3, v10, :cond_1a

    goto/16 :goto_17

    :cond_1a
    new-instance v3, Lg/djq;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    const/16 v14, 0x21

    invoke-interface {v12, v3, v7, v2, v14}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_17

    :cond_1b
    iget-object v3, v0, Lg/aem;->k:Lg/aem;

    :goto_11
    if-eqz v3, :cond_1d

    iget-object v14, v3, Lg/aem;->g:Lg/dla;

    iget-object v15, v3, Lg/aem;->m:[Ljava/lang/String;

    invoke-static {v14, v15, v4}, Lg/eyt;->at(Lg/dla;[Ljava/lang/String;Ljava/util/Map;)Lg/dla;

    move-result-object v14

    if-eqz v14, :cond_1c

    iget v14, v14, Lg/dla;->l:I

    const/4 v15, 0x1

    if-eq v14, v15, :cond_1e

    :cond_1c
    iget-object v3, v3, Lg/aem;->k:Lg/aem;

    goto :goto_11

    :cond_1d
    const/4 v3, 0x0

    :cond_1e
    if-eqz v3, :cond_25

    new-instance v14, Ljava/util/ArrayDeque;

    invoke-direct {v14}, Ljava/util/ArrayDeque;-><init>()V

    invoke-virtual {v14, v3}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    :goto_12
    invoke-virtual {v14}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_21

    invoke-virtual {v14}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lg/aem;

    iget-object v10, v15, Lg/aem;->g:Lg/dla;

    iget-object v13, v15, Lg/aem;->m:[Ljava/lang/String;

    invoke-static {v10, v13, v4}, Lg/eyt;->at(Lg/dla;[Ljava/lang/String;Ljava/util/Map;)Lg/dla;

    move-result-object v10

    if-eqz v10, :cond_1f

    iget v10, v10, Lg/dla;->l:I

    const/4 v13, 0x3

    if-ne v10, v13, :cond_1f

    move-object v10, v15

    goto :goto_14

    :cond_1f
    invoke-virtual {v15}, Lg/aem;->t()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    :goto_13
    if-ltz v10, :cond_20

    invoke-virtual {v15, v10}, Lg/aem;->r(I)Lg/aem;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    add-int/lit8 v10, v10, -0x1

    goto :goto_13

    :cond_20
    const/4 v13, 0x3

    goto :goto_12

    :cond_21
    const/4 v10, 0x0

    :goto_14
    if-eqz v10, :cond_25

    invoke-virtual {v10}, Lg/aem;->t()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_24

    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Lg/aem;->r(I)Lg/aem;

    move-result-object v14

    iget-object v14, v14, Lg/aem;->j:Ljava/lang/String;

    if-eqz v14, :cond_24

    invoke-virtual {v10, v13}, Lg/aem;->r(I)Lg/aem;

    move-result-object v13

    iget-object v13, v13, Lg/aem;->j:Ljava/lang/String;

    sget v14, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    iget-object v14, v10, Lg/aem;->g:Lg/dla;

    iget-object v10, v10, Lg/aem;->m:[Ljava/lang/String;

    invoke-static {v14, v10, v4}, Lg/eyt;->at(Lg/dla;[Ljava/lang/String;Ljava/util/Map;)Lg/dla;

    move-result-object v10

    if-eqz v10, :cond_22

    iget v10, v10, Lg/dla;->d:I

    :goto_15
    const/4 v14, -0x1

    goto :goto_16

    :cond_22
    const/4 v10, -0x1

    goto :goto_15

    :goto_16
    if-ne v10, v14, :cond_23

    iget-object v14, v3, Lg/aem;->g:Lg/dla;

    iget-object v3, v3, Lg/aem;->m:[Ljava/lang/String;

    invoke-static {v14, v3, v4}, Lg/eyt;->at(Lg/dla;[Ljava/lang/String;Ljava/util/Map;)Lg/dla;

    move-result-object v3

    if-eqz v3, :cond_23

    iget v10, v3, Lg/dla;->d:I

    :cond_23
    new-instance v3, Lcom/google/android/gms/internal/ads/zzcx;

    invoke-direct {v3, v13, v10}, Lcom/google/android/gms/internal/ads/zzcx;-><init>(Ljava/lang/String;I)V

    const/16 v14, 0x21

    invoke-interface {v12, v3, v7, v2, v14}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_17

    :cond_24
    const-string v3, "TtmlRenderUtil"

    const-string v10, "Skipping rubyText node without exactly one text child."

    invoke-static {v3, v10}, Lcom/google/android/gms/internal/ads/zzdt;->zze(Ljava/lang/String;Ljava/lang/String;)V

    :cond_25
    :goto_17
    iget v3, v11, Lg/dla;->p:I

    const/4 v14, 0x1

    if-ne v3, v14, :cond_26

    new-instance v3, Lcom/google/android/gms/internal/ads/zzcw;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzcw;-><init>()V

    const/16 v10, 0x21

    invoke-static {v12, v3, v7, v2, v10}, Lcom/google/android/gms/internal/ads/zzcy;->zzb(Landroid/text/Spannable;Ljava/lang/Object;III)V

    goto :goto_18

    :cond_26
    const/16 v10, 0x21

    :goto_18
    iget v3, v11, Lg/dla;->o:I

    const/high16 v13, 0x42c80000    # 100.0f

    if-eq v3, v14, :cond_29

    const/4 v15, 0x2

    if-eq v3, v15, :cond_28

    const/4 v14, 0x3

    if-eq v3, v14, :cond_27

    goto :goto_19

    :cond_27
    iget v3, v11, Lg/dla;->b:F

    div-float/2addr v3, v13

    invoke-static {v12, v3, v7, v2, v10}, Lcom/google/android/gms/internal/ads/zzcy;->zza(Landroid/text/Spannable;FIII)V

    goto :goto_19

    :cond_28
    new-instance v3, Landroid/text/style/RelativeSizeSpan;

    iget v14, v11, Lg/dla;->b:F

    invoke-direct {v3, v14}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-static {v12, v3, v7, v2, v10}, Lcom/google/android/gms/internal/ads/zzcy;->zzb(Landroid/text/Spannable;Ljava/lang/Object;III)V

    goto :goto_19

    :cond_29
    new-instance v3, Landroid/text/style/AbsoluteSizeSpan;

    iget v14, v11, Lg/dla;->b:F

    float-to-int v14, v14

    const/4 v15, 0x1

    invoke-direct {v3, v14, v15}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-static {v12, v3, v7, v2, v10}, Lcom/google/android/gms/internal/ads/zzcy;->zzb(Landroid/text/Spannable;Ljava/lang/Object;III)V

    :goto_19
    iget-object v2, v0, Lg/aem;->f:Ljava/lang/String;

    const-string v3, "p"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, v11, Lg/dla;->j:F

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_2a

    const/high16 v3, -0x3d4c0000    # -90.0f

    mul-float v2, v2, v3

    div-float/2addr v2, v13

    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/zzcr;->zzj(F)Lcom/google/android/gms/internal/ads/zzcr;

    :cond_2a
    iget-object v2, v11, Lg/dla;->c:Landroid/text/Layout$Alignment;

    if-eqz v2, :cond_2b

    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/zzcr;->zzm(Landroid/text/Layout$Alignment;)Lcom/google/android/gms/internal/ads/zzcr;

    :cond_2b
    iget-object v2, v11, Lg/dla;->k:Landroid/text/Layout$Alignment;

    if-eqz v2, :cond_2

    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/zzcr;->zzg(Landroid/text/Layout$Alignment;)Lcom/google/android/gms/internal/ads/zzcr;

    goto/16 :goto_1

    :cond_2c
    move-object/from16 v9, p4

    move-object/from16 v8, p6

    goto/16 :goto_1

    :cond_2d
    const/4 v13, 0x0

    :goto_1a
    move-object/from16 v9, p4

    move-object/from16 v8, p6

    invoke-virtual {v0}, Lg/aem;->t()I

    move-result v1

    if-ge v13, v1, :cond_2e

    invoke-virtual {v0, v13}, Lg/aem;->r(I)Lg/aem;

    move-result-object v1

    move-wide/from16 v2, p1

    move-object v7, v8

    move-object v5, v9

    invoke-virtual/range {v1 .. v7}, Lg/aem;->u(JLjava/util/Map;Ljava/util/HashMap;Ljava/lang/String;Ljava/util/TreeMap;)V

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v4, p3

    goto :goto_1a

    :cond_2e
    :goto_1b
    return-void
.end method

.method public final v(JZLjava/lang/String;Ljava/util/TreeMap;)V
    .locals 10

    iget-object v0, p0, Lg/aem;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v6, p0, Lg/aem;->d:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    const-string v1, "metadata"

    iget-object v2, p0, Lg/aem;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_7

    :cond_0
    const-string v1, ""

    iget-object v3, p0, Lg/aem;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object v4, v3

    goto :goto_0

    :cond_1
    move-object v4, p4

    :goto_0
    iget-boolean p4, p0, Lg/aem;->l:Z

    if-eqz p4, :cond_2

    if-eqz p3, :cond_2

    invoke-static {v4, p5}, Lg/aem;->n(Ljava/lang/String;Ljava/util/TreeMap;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    iget-object p2, p0, Lg/aem;->j:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-void

    :cond_2
    const-string p4, "br"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    const/16 v7, 0xa

    if-eqz p4, :cond_4

    if-nez p3, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {v4, p5}, Lg/aem;->n(Ljava/lang/String;Ljava/util/TreeMap;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {p1, v7}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    return-void

    :cond_4
    :goto_1
    invoke-virtual/range {p0 .. p2}, Lg/aem;->s(J)Z

    move-result p4

    if-eqz p4, :cond_b

    invoke-virtual {p5}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_2
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzcr;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcr;->zzq()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    const-string p4, "p"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_3
    invoke-virtual {p0}, Lg/aem;->t()I

    move-result v0

    if-ge v9, v0, :cond_8

    invoke-virtual {p0, v9}, Lg/aem;->r(I)Lg/aem;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p3, :cond_6

    if-eqz p4, :cond_7

    :cond_6
    move-wide v1, p1

    move-object v5, p5

    const/4 v3, 0x1

    goto :goto_4

    :cond_7
    move-wide v1, p1

    move-object v5, p5

    const/4 v3, 0x0

    :goto_4
    invoke-virtual/range {v0 .. v5}, Lg/aem;->v(JZLjava/lang/String;Ljava/util/TreeMap;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_8
    if-eqz p4, :cond_a

    invoke-static {v4, p5}, Lg/aem;->n(Ljava/lang/String;Ljava/util/TreeMap;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p2

    :goto_5
    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_9

    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result p3

    const/16 p4, 0x20

    if-ne p3, p4, :cond_9

    goto :goto_5

    :cond_9
    if-ltz p2, :cond_a

    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result p2

    if-eq p2, v7, :cond_a

    invoke-virtual {p1, v7}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    :cond_a
    invoke-virtual {p5}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzcr;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzcr;->zzq()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Ljava/lang/CharSequence;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v6, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_b
    :goto_7
    return-void
.end method

.method public final w(Ljava/util/TreeSet;Z)V
    .locals 6

    const-string v0, "p"

    iget-object v1, p0, Lg/aem;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "div"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez p2, :cond_0

    if-nez v0, :cond_0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lg/aem;->i:Ljava/lang/String;

    if-eqz v1, :cond_2

    :cond_0
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iget-wide v3, p0, Lg/aem;->c:J

    cmp-long v5, v3, v1

    if-eqz v5, :cond_1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-wide v3, p0, Lg/aem;->e:J

    cmp-long v5, v3, v1

    if-eqz v5, :cond_2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v1, p0, Lg/aem;->h:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lg/aem;->h:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    iget-object v3, p0, Lg/aem;->h:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/aem;

    const/4 v4, 0x1

    if-nez p2, :cond_4

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :cond_4
    :goto_1
    invoke-virtual {v3, p1, v4}, Lg/aem;->w(Ljava/util/TreeSet;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method
