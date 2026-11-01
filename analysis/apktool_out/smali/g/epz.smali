.class public final Lg/epz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public final b:Ljava/lang/String;

.field public final c:I

.field public d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lg/epz;

    invoke-static {v0}, Lg/dsr;->k(Ljava/lang/Class;)Lg/dba;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/epz;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lg/epz;->c:I

    const/4 p1, -0x1

    iput p1, p0, Lg/epz;->d:I

    const/4 p1, 0x0

    iput p1, p0, Lg/epz;->a:I

    return-void
.end method

.method public static e(Lg/ebh;)Lg/epz;
    .locals 1

    sget-object v0, Lg/ao;->s:Lg/ao;

    iget-object p0, p0, Lg/lh;->l:Lg/sm;

    invoke-virtual {p0, v0}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object p0

    check-cast p0, Lg/dfc;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    move-object p0, v0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lg/dfc;->a:Ljava/lang/String;

    :goto_0
    if-nez p0, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Lg/epz;

    invoke-direct {v0, p0}, Lg/epz;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final f()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lg/epz;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget v1, p0, Lg/epz;->d:I

    add-int/lit8 v1, v1, 0x1

    if-lt v0, v1, :cond_1

    const-string v0, ""

    return-object v0

    :cond_1
    iget-object v2, p0, Lg/epz;->b:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final g(Z)Lg/cwx;
    .locals 8

    iget v0, p0, Lg/epz;->d:I

    iput v0, p0, Lg/epz;->a:I

    :cond_0
    const/16 v0, 0x2e

    if-eqz p1, :cond_1

    invoke-virtual {p0, v0}, Lg/epz;->k(C)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lg/epz;->f()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lg/cwx;->bf(Ljava/lang/String;)Lg/cwx;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p0}, Lg/epz;->m()C

    move-result v1

    if-nez v1, :cond_2

    const/4 p1, 0x0

    return-object p1

    :cond_2
    const/16 v2, 0x3c

    const/16 v3, 0x3b

    if-eq v1, v2, :cond_3

    if-ne v1, v3, :cond_0

    :cond_3
    iget-object v2, p0, Lg/epz;->b:Ljava/lang/String;

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/16 v7, 0x2f

    if-ne v1, v3, :cond_7

    if-eqz p1, :cond_6

    iget p1, p0, Lg/epz;->a:I

    if-ne p1, v6, :cond_4

    goto :goto_0

    :cond_4
    move v5, p1

    :goto_0
    iget p1, p0, Lg/epz;->d:I

    if-lt v5, p1, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v2, v5, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v4, v7, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lg/epz;->f()Ljava/lang/String;

    move-result-object p1

    :goto_2
    invoke-static {p1}, Lg/cwx;->bf(Ljava/lang/String;)Lg/cwx;

    move-result-object p1

    return-object p1

    :cond_7
    iget v1, p0, Lg/epz;->a:I

    if-ne v1, v6, :cond_8

    goto :goto_3

    :cond_8
    move v5, v1

    :goto_3
    iget v1, p0, Lg/epz;->d:I

    if-lt v5, v1, :cond_9

    goto :goto_4

    :cond_9
    invoke-virtual {v2, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :goto_4
    if-nez p1, :cond_a

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    :cond_a
    invoke-virtual {v4, v7, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    :goto_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_b
    const/16 v2, 0x2a

    invoke-virtual {p0, v2}, Lg/epz;->k(C)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {p0}, Lg/epz;->m()C

    sget-object v2, Lg/cwx;->an:Lg/cff;

    new-instance v2, Lg/gzg;

    sget-object v4, Lg/cwx;->t:Lg/aog;

    sget-object v5, Lg/be;->UNBOUND:Lg/be;

    invoke-direct {v2, v4, v5}, Lg/gzg;-><init>(Lg/cwx;Lg/be;)V

    goto :goto_7

    :cond_c
    const/16 v2, 0x2b

    invoke-virtual {p0, v2}, Lg/epz;->k(C)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {p0}, Lg/epz;->m()C

    invoke-virtual {p0}, Lg/epz;->h()Lg/cwx;

    move-result-object v2

    sget-object v4, Lg/be;->EXTENDS:Lg/be;

    sget-object v5, Lg/cwx;->an:Lg/cff;

    new-instance v5, Lg/gzg;

    invoke-direct {v5, v2, v4}, Lg/gzg;-><init>(Lg/cwx;Lg/be;)V

    :goto_6
    move-object v2, v5

    goto :goto_7

    :cond_d
    const/16 v2, 0x2d

    invoke-virtual {p0, v2}, Lg/epz;->k(C)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {p0}, Lg/epz;->m()C

    invoke-virtual {p0}, Lg/epz;->h()Lg/cwx;

    move-result-object v2

    sget-object v4, Lg/be;->SUPER:Lg/be;

    sget-object v5, Lg/cwx;->an:Lg/cff;

    new-instance v5, Lg/gzg;

    invoke-direct {v5, v2, v4}, Lg/gzg;-><init>(Lg/cwx;Lg/be;)V

    goto :goto_6

    :cond_e
    invoke-virtual {p0}, Lg/epz;->h()Lg/cwx;

    move-result-object v2

    :goto_7
    if-eqz v2, :cond_f

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    const/16 v4, 0x3e

    if-eqz v2, :cond_10

    invoke-virtual {p0, v4}, Lg/epz;->k(C)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_10
    invoke-virtual {p0, v4}, Lg/epz;->i(C)V

    sget-object v2, Lg/cwx;->an:Lg/cff;

    new-instance v2, Lg/aaw;

    invoke-static {p1}, Lg/evh;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, v1}, Lg/aaw;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lg/epz;->k(C)Z

    move-result p1

    if-nez p1, :cond_11

    invoke-virtual {p0, v3}, Lg/epz;->i(C)V

    return-object v2

    :cond_11
    invoke-virtual {p0, v0}, Lg/epz;->i(C)V

    invoke-virtual {p0}, Lg/epz;->m()C

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lg/epz;->g(Z)Lg/cwx;

    move-result-object v1

    if-eqz v1, :cond_14

    :goto_8
    invoke-virtual {p0, v0}, Lg/epz;->k(C)Z

    move-result v3

    if-eqz v3, :cond_13

    new-instance v3, Lg/gvo;

    check-cast v1, Lg/aog;

    invoke-direct {v3, v2, v1}, Lg/gvo;-><init>(Lg/aog;Lg/aog;)V

    invoke-virtual {p0, v0}, Lg/epz;->i(C)V

    invoke-virtual {p0}, Lg/epz;->m()C

    invoke-virtual {p0, p1}, Lg/epz;->g(Z)Lg/cwx;

    move-result-object v1

    if-eqz v1, :cond_12

    move-object v2, v3

    goto :goto_8

    :cond_12
    new-instance p1, Lg/gck;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected inner type found: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lg/epz;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_13
    new-instance p1, Lg/gvo;

    check-cast v1, Lg/aog;

    invoke-direct {p1, v2, v1}, Lg/gvo;-><init>(Lg/aog;Lg/aog;)V

    return-object p1

    :cond_14
    new-instance p1, Lg/gck;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No inner type found: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lg/epz;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final h()Lg/cwx;
    .locals 5

    invoke-virtual {p0}, Lg/epz;->m()C

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    const/16 v2, 0x4c

    if-eq v0, v2, :cond_5

    const/16 v2, 0x54

    if-eq v0, v2, :cond_1

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_0

    invoke-static {v0}, Lg/cwx;->bb(C)Lg/cff;

    move-result-object v1

    if-eqz v1, :cond_6

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lg/epz;->h()Lg/cwx;

    move-result-object v0

    sget-object v1, Lg/cwx;->an:Lg/cff;

    new-instance v1, Lg/aoe;

    invoke-direct {v1, v0}, Lg/aoe;-><init>(Lg/cwx;)V

    return-object v1

    :cond_1
    invoke-virtual {p0}, Lg/epz;->m()C

    iget v2, p0, Lg/epz;->d:I

    iput v2, p0, Lg/epz;->a:I

    :cond_2
    const/16 v3, 0x3b

    invoke-virtual {p0, v3}, Lg/epz;->k(C)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lg/epz;->f()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lg/epz;->m()C

    move-result v4

    if-nez v4, :cond_2

    iput v2, p0, Lg/epz;->d:I

    :goto_0
    if-eqz v1, :cond_6

    invoke-virtual {p0, v3}, Lg/epz;->i(C)V

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lg/cwx;->an:Lg/cff;

    new-instance v0, Lg/btl;

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lg/btl;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v0

    :cond_4
    new-instance v0, Lg/gck;

    const-string v2, "Bad name for type variable: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lg/epz;->g(Z)Lg/cwx;

    move-result-object v1

    if-eqz v1, :cond_6

    return-object v1

    :cond_6
    new-instance v1, Lg/gck;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t parse type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lg/epz;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", unexpected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    return-object v1
.end method

.method public final i(C)V
    .locals 4

    invoke-virtual {p0}, Lg/epz;->m()C

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lg/gck;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Consume wrong char: \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "\' != \'"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "\', sign: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lg/epz;->j()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final j()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lg/epz;->d:I

    iget-object v1, p0, Lg/epz;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " at position "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lg/epz;->d:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " (\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lg/epz;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final k(C)Z
    .locals 3

    iget v0, p0, Lg/epz;->d:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget v2, p0, Lg/epz;->c:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lg/epz;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, p1, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final l()Ljava/util/List;
    .locals 6

    const/16 v0, 0x3c

    invoke-virtual {p0, v0}, Lg/epz;->k(C)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lg/epz;->i(C)V

    :goto_0
    const/16 v0, 0x3e

    invoke-virtual {p0, v0}, Lg/epz;->k(C)Z

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual {p0}, Lg/epz;->m()C

    move-result v2

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    iget v2, p0, Lg/epz;->d:I

    iput v2, p0, Lg/epz;->a:I

    :cond_2
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Lg/epz;->k(C)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lg/epz;->f()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lg/epz;->m()C

    move-result v3

    if-nez v3, :cond_2

    iput v2, p0, Lg/epz;->d:I

    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_a

    invoke-virtual {p0, v0}, Lg/epz;->i(C)V

    invoke-virtual {p0, v0}, Lg/epz;->k(C)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lg/epz;->m()C

    :cond_4
    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_5
    invoke-virtual {p0}, Lg/epz;->h()Lg/cwx;

    move-result-object v4

    if-eqz v4, :cond_9

    sget-object v5, Lg/cwx;->t:Lg/aog;

    invoke-virtual {v4, v5}, Lg/cwx;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_6
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-virtual {p0, v0}, Lg/epz;->k(C)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {p0, v0}, Lg/epz;->i(C)V

    :cond_8
    if-nez v4, :cond_5

    new-instance v0, Lg/btl;

    invoke-direct {v0, v2, v3}, Lg/btl;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_9
    new-instance v0, Lg/gck;

    const-string v1, "Unexpected end of signature"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Lg/gck;

    const-string v1, "Failed to parse generic types map"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    :goto_2
    invoke-virtual {p0, v0}, Lg/epz;->i(C)V

    return-object v1
.end method

.method public final m()C
    .locals 2

    iget v0, p0, Lg/epz;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lg/epz;->d:I

    iget v1, p0, Lg/epz;->c:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v1, p0, Lg/epz;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public final n(I)Ljava/util/List;
    .locals 3

    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Lg/epz;->i(C)V

    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Lg/epz;->k(C)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lg/epz;->i(C)V

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(I)V

    add-int/lit8 p1, p1, 0xa

    :cond_1
    invoke-virtual {p0}, Lg/epz;->h()Lg/cwx;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v2, p1, :cond_2

    invoke-virtual {p0, v0}, Lg/epz;->k(C)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v0}, Lg/epz;->i(C)V

    return-object v1

    :cond_2
    new-instance p1, Lg/gck;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Arguments count limit reached: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Lg/gck;

    const-string v0, "Unexpected end of signature"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lg/epz;->d:I

    const/4 v1, -0x1

    iget-object v2, p0, Lg/epz;->b:Ljava/lang/String;

    if-ne v0, v1, :cond_0

    return-object v2

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    iget v3, p0, Lg/epz;->a:I

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lg/epz;->a:I

    iget v3, p0, Lg/epz;->d:I

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lg/epz;->d:I

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
