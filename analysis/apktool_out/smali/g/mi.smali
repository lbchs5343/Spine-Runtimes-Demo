.class public abstract Lg/mi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/exs;


# instance fields
.field public final a:Lg/big;

.field public b:Lg/fol;

.field public final c:Lg/eeh;

.field public d:I

.field public e:I

.field public final f:Lg/big;

.field public g:Lg/brh;

.field public h:Lg/dnl;

.field public i:Lg/fld;

.field public j:Z


# direct methods
.method public constructor <init>(Lg/brh;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lg/eeh;

    invoke-direct {v0, p0}, Lg/eeh;-><init>(Lg/mi;)V

    iput-object v0, p0, Lg/mi;->c:Lg/eeh;

    const/4 v0, 0x0

    iput v0, p0, Lg/mi;->e:I

    iput-boolean v0, p0, Lg/mi;->j:Z

    new-instance v0, Lg/big;

    invoke-direct {v0, p0}, Lg/big;-><init>(Lg/mi;)V

    iput-object v0, p0, Lg/mi;->a:Lg/big;

    new-instance v0, Lg/big;

    invoke-direct {v0, p0}, Lg/big;-><init>(Lg/mi;)V

    iput-object v0, p0, Lg/mi;->f:Lg/big;

    sget-object v0, Lg/dnl;->NONE:Lg/dnl;

    iput-object v0, p0, Lg/mi;->h:Lg/dnl;

    iput-object p1, p0, Lg/mi;->g:Lg/brh;

    return-void
.end method

.method public static k(Lg/hac;)Lg/big;
    .locals 2

    iget-object p0, p0, Lg/hac;->e:Lg/hac;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lg/hac;->b:Lg/brh;

    iget-object p0, p0, Lg/hac;->c:Lg/dih;

    sget-object v1, Lg/ccz;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_5

    const/4 v1, 0x2

    if-eq p0, v1, :cond_4

    const/4 v1, 0x3

    if-eq p0, v1, :cond_3

    const/4 v1, 0x4

    if-eq p0, v1, :cond_2

    const/4 v1, 0x5

    if-eq p0, v1, :cond_1

    :goto_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    iget-object p0, v0, Lg/brh;->bi:Lg/fju;

    iget-object p0, p0, Lg/mi;->f:Lg/big;

    return-object p0

    :cond_2
    iget-object p0, v0, Lg/brh;->bi:Lg/fju;

    iget-object p0, p0, Lg/fju;->w:Lg/big;

    return-object p0

    :cond_3
    iget-object p0, v0, Lg/brh;->bi:Lg/fju;

    iget-object p0, p0, Lg/mi;->a:Lg/big;

    return-object p0

    :cond_4
    iget-object p0, v0, Lg/brh;->be:Lg/dza;

    iget-object p0, p0, Lg/mi;->f:Lg/big;

    return-object p0

    :cond_5
    iget-object p0, v0, Lg/brh;->be:Lg/dza;

    iget-object p0, p0, Lg/mi;->a:Lg/big;

    return-object p0
.end method

.method public static l(Lg/hac;I)Lg/big;
    .locals 1

    iget-object p0, p0, Lg/hac;->e:Lg/hac;

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lg/hac;->b:Lg/brh;

    if-nez p1, :cond_1

    iget-object p1, v0, Lg/brh;->be:Lg/dza;

    goto :goto_0

    :cond_1
    iget-object p1, v0, Lg/brh;->bi:Lg/fju;

    :goto_0
    iget-object p0, p0, Lg/hac;->c:Lg/dih;

    sget-object v0, Lg/ccz;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_3

    const/4 v0, 0x5

    if-eq p0, v0, :cond_2

    :goto_1
    const/4 p0, 0x0

    return-object p0

    :cond_2
    iget-object p0, p1, Lg/mi;->f:Lg/big;

    return-object p0

    :cond_3
    iget-object p0, p1, Lg/mi;->a:Lg/big;

    return-object p0
.end method

.method public static m(Lg/big;Lg/big;I)V
    .locals 1

    iget-object v0, p0, Lg/big;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput p2, p0, Lg/big;->g:I

    iget-object p1, p1, Lg/big;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public abstract n()Z
.end method

.method public abstract o()V
.end method

.method public final p(Lg/hac;Lg/hac;I)V
    .locals 12

    invoke-static {p1}, Lg/mi;->k(Lg/hac;)Lg/big;

    move-result-object v0

    invoke-static {p2}, Lg/mi;->k(Lg/hac;)Lg/big;

    move-result-object v1

    iget-boolean v2, v0, Lg/big;->j:Z

    if-eqz v2, :cond_f

    iget-boolean v2, v1, Lg/big;->j:Z

    if-nez v2, :cond_0

    goto/16 :goto_5

    :cond_0
    iget v2, v0, Lg/big;->l:I

    invoke-virtual {p1}, Lg/hac;->n()I

    move-result p1

    add-int/2addr p1, v2

    iget v2, v1, Lg/big;->l:I

    invoke-virtual {p2}, Lg/hac;->n()I

    move-result p2

    sub-int/2addr v2, p2

    sub-int p2, v2, p1

    iget-object v3, p0, Lg/mi;->c:Lg/eeh;

    iget-boolean v4, v3, Lg/big;->j:Z

    const/high16 v5, 0x3f000000    # 0.5f

    if-nez v4, :cond_a

    iget-object v4, p0, Lg/mi;->b:Lg/fol;

    sget-object v6, Lg/fol;->MATCH_CONSTRAINT:Lg/fol;

    if-ne v4, v6, :cond_a

    iget v4, p0, Lg/mi;->d:I

    if-eqz v4, :cond_9

    const/4 v7, 0x1

    if-eq v4, v7, :cond_8

    const/4 v8, 0x2

    if-eq v4, v8, :cond_5

    const/4 v8, 0x3

    if-eq v4, v8, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object v4, p0, Lg/mi;->g:Lg/brh;

    iget-object v9, v4, Lg/brh;->be:Lg/dza;

    iget-object v10, v9, Lg/mi;->b:Lg/fol;

    if-ne v10, v6, :cond_2

    iget v10, v9, Lg/mi;->d:I

    if-ne v10, v8, :cond_2

    iget-object v10, v4, Lg/brh;->bi:Lg/fju;

    iget-object v11, v10, Lg/mi;->b:Lg/fol;

    if-ne v11, v6, :cond_2

    iget v6, v10, Lg/mi;->d:I

    if-ne v6, v8, :cond_2

    goto :goto_3

    :cond_2
    if-nez p3, :cond_3

    iget-object v9, v4, Lg/brh;->bi:Lg/fju;

    :cond_3
    iget-object v6, v9, Lg/mi;->c:Lg/eeh;

    iget-boolean v8, v6, Lg/big;->j:Z

    if-eqz v8, :cond_a

    iget v4, v4, Lg/brh;->bq:F

    if-ne p3, v7, :cond_4

    iget v6, v6, Lg/big;->l:I

    int-to-float v6, v6

    div-float/2addr v6, v4

    add-float/2addr v6, v5

    float-to-int v4, v6

    goto :goto_0

    :cond_4
    iget v6, v6, Lg/big;->l:I

    int-to-float v6, v6

    mul-float v4, v4, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    :goto_0
    invoke-virtual {v3, v4}, Lg/eeh;->m(I)V

    goto :goto_3

    :cond_5
    iget-object v4, p0, Lg/mi;->g:Lg/brh;

    iget-object v6, v4, Lg/brh;->bj:Lg/brh;

    if-eqz v6, :cond_a

    if-nez p3, :cond_6

    iget-object v6, v6, Lg/brh;->be:Lg/dza;

    goto :goto_1

    :cond_6
    iget-object v6, v6, Lg/brh;->bi:Lg/fju;

    :goto_1
    iget-object v6, v6, Lg/mi;->c:Lg/eeh;

    iget-boolean v7, v6, Lg/big;->j:Z

    if-eqz v7, :cond_a

    if-nez p3, :cond_7

    iget v4, v4, Lg/brh;->bu:F

    goto :goto_2

    :cond_7
    iget v4, v4, Lg/brh;->am:F

    :goto_2
    iget v6, v6, Lg/big;->l:I

    int-to-float v6, v6

    mul-float v6, v6, v4

    add-float/2addr v6, v5

    float-to-int v4, v6

    invoke-virtual {p0, v4, p3}, Lg/mi;->u(II)I

    move-result v4

    invoke-virtual {v3, v4}, Lg/eeh;->m(I)V

    goto :goto_3

    :cond_8
    iget v4, v3, Lg/eeh;->p:I

    invoke-virtual {p0, v4, p3}, Lg/mi;->u(II)I

    move-result v4

    invoke-static {v4, p2}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v3, v4}, Lg/eeh;->m(I)V

    goto :goto_3

    :cond_9
    invoke-virtual {p0, p2, p3}, Lg/mi;->u(II)I

    move-result v4

    invoke-virtual {v3, v4}, Lg/eeh;->m(I)V

    :cond_a
    :goto_3
    iget-boolean v4, v3, Lg/big;->j:Z

    if-nez v4, :cond_b

    goto :goto_5

    :cond_b
    iget v4, v3, Lg/big;->l:I

    iget-object v6, p0, Lg/mi;->f:Lg/big;

    iget-object v7, p0, Lg/mi;->a:Lg/big;

    if-ne v4, p2, :cond_c

    invoke-virtual {v7, p1}, Lg/big;->m(I)V

    invoke-virtual {v6, v2}, Lg/big;->m(I)V

    return-void

    :cond_c
    if-nez p3, :cond_d

    iget-object p2, p0, Lg/mi;->g:Lg/brh;

    iget p2, p2, Lg/brh;->cp:F

    goto :goto_4

    :cond_d
    iget-object p2, p0, Lg/mi;->g:Lg/brh;

    iget p2, p2, Lg/brh;->ct:F

    :goto_4
    if-ne v0, v1, :cond_e

    iget p1, v0, Lg/big;->l:I

    iget v2, v1, Lg/big;->l:I

    const/high16 p2, 0x3f000000    # 0.5f

    :cond_e
    sub-int/2addr v2, p1

    sub-int/2addr v2, v4

    int-to-float p1, p1

    add-float/2addr p1, v5

    int-to-float p3, v2

    mul-float p3, p3, p2

    add-float/2addr p3, p1

    float-to-int p1, p3

    invoke-virtual {v7, p1}, Lg/big;->m(I)V

    iget p1, v7, Lg/big;->l:I

    iget p2, v3, Lg/big;->l:I

    add-int/2addr p1, p2

    invoke-virtual {v6, p1}, Lg/big;->m(I)V

    :cond_f
    :goto_5
    return-void
.end method

.method public abstract q()V
.end method

.method public abstract r()V
.end method

.method public s()J
    .locals 2

    iget-object v0, p0, Lg/mi;->c:Lg/eeh;

    iget-boolean v1, v0, Lg/big;->j:Z

    if-eqz v1, :cond_0

    iget v0, v0, Lg/big;->l:I

    int-to-long v0, v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final t(Lg/big;Lg/big;ILg/eeh;)V
    .locals 2

    iget-object v0, p1, Lg/big;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p1, Lg/big;->d:Ljava/util/ArrayList;

    iget-object v1, p0, Lg/mi;->c:Lg/eeh;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput p3, p1, Lg/big;->a:I

    iput-object p4, p1, Lg/big;->h:Lg/eeh;

    iget-object p2, p2, Lg/big;->b:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p4, Lg/big;->b:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final u(II)I
    .locals 1

    if-nez p2, :cond_1

    iget-object p2, p0, Lg/mi;->g:Lg/brh;

    iget v0, p2, Lg/brh;->bs:I

    iget p2, p2, Lg/brh;->bl:I

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p2

    if-lez v0, :cond_0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p2

    :cond_0
    if-eq p2, p1, :cond_3

    return p2

    :cond_1
    iget-object p2, p0, Lg/mi;->g:Lg/brh;

    iget v0, p2, Lg/brh;->aw:I

    iget p2, p2, Lg/brh;->cy:I

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p2

    if-lez v0, :cond_2

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p2

    :cond_2
    if-eq p2, p1, :cond_3

    return p2

    :cond_3
    return p1
.end method
