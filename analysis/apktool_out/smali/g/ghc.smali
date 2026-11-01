.class public final Lg/ghc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg/dba;

.field public static final b:Ljava/nio/charset/Charset;


# instance fields
.field public final c:Ljava/util/HashMap;

.field public final d:Ljava/util/HashMap;

.field public final e:Ljava/nio/file/Path;

.field public final f:Ljava/util/HashMap;

.field public final g:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lg/ghc;

    invoke-static {v0}, Lg/dsr;->k(Ljava/lang/Class;)Lg/dba;

    move-result-object v0

    sput-object v0, Lg/ghc;->a:Lg/dba;

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    sput-object v0, Lg/ghc;->b:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lg/ghc;->f:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lg/ghc;->g:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lg/ghc;->c:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lg/ghc;->d:Ljava/util/HashMap;

    iput-object p1, p0, Lg/ghc;->e:Ljava/nio/file/Path;

    return-void
.end method


# virtual methods
.method public final h(Lg/dwg;)V
    .locals 6

    iget-object v0, p1, Lg/dwg;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/hbb;

    iget-object v2, v1, Lg/hbb;->g:Ljava/util/ArrayList;

    iget-object v3, v1, Lg/hbb;->f:Lg/gxr;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lg/hbb;->c:Lg/gxr;

    const/4 v4, 0x0

    if-ne v3, v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    iget-object v5, v3, Lg/gxr;->a:Lg/gxr;

    iget-object v2, v2, Lg/gxr;->a:Lg/gxr;

    invoke-static {v5, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    :goto_1
    iget-object v5, p0, Lg/ghc;->f:Ljava/util/HashMap;

    if-eqz v2, :cond_2

    iget-object v2, v3, Lg/gxr;->b:Ljava/lang/String;

    iget-object v1, v1, Lg/hbb;->c:Lg/gxr;

    iget-object v1, v1, Lg/gxr;->b:Ljava/lang/String;

    invoke-virtual {v5, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v2, v1, Lg/hbb;->c:Lg/gxr;

    if-ne v3, v2, :cond_3

    goto :goto_2

    :cond_3
    iget-object v4, v3, Lg/gxr;->c:Ljava/lang/String;

    iget-object v2, v2, Lg/gxr;->c:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v4, v2, 0x1

    :goto_2
    if-eqz v4, :cond_0

    iget-object v2, v3, Lg/gxr;->b:Ljava/lang/String;

    iget-object v1, v1, Lg/hbb;->c:Lg/gxr;

    iget-object v1, v1, Lg/gxr;->c:Ljava/lang/String;

    invoke-virtual {v5, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    iget-object p1, p1, Lg/dwg;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/cci;

    iget-object v1, v0, Lg/cci;->ak:Lg/ve;

    invoke-virtual {v1}, Lg/ve;->j()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Lg/ve;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lg/ve;->i()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lg/ghc;->g:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    invoke-virtual {v0}, Lg/cci;->av()V

    iget-object v1, v0, Lg/cci;->ag:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/hcd;

    iget-object v3, v2, Lg/hcd;->g:Lg/dsj;

    invoke-virtual {v3}, Lg/dsj;->g()Z

    move-result v4

    if-eqz v4, :cond_7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v3, Lg/dsj;->d:Lg/ve;

    invoke-virtual {v5}, Lg/ve;->l()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lg/dsj;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lg/dsj;->a:Lg/cwx;

    invoke-static {v3}, Lg/pp;->c(Lg/cwx;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v2, v2, Lg/hcd;->g:Lg/dsj;

    iget-object v2, v2, Lg/dsj;->b:Ljava/lang/String;

    iget-object v4, p0, Lg/ghc;->c:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_8
    invoke-virtual {v0}, Lg/cci;->av()V

    iget-object v0, v0, Lg/cci;->aj:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/hed;

    iget-object v1, v1, Lg/hed;->al:Lg/ayu;

    iget-object v2, v1, Lg/ayu;->f:Ljava/lang/String;

    iget-object v3, v1, Lg/ayu;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, v1, Lg/ayu;->h:Ljava/lang/String;

    iget-object v1, v1, Lg/ayu;->a:Ljava/lang/String;

    iget-object v3, p0, Lg/ghc;->d:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_a
    return-void
.end method

.method public final i()V
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lg/ghc;->f:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v6, v5, v4

    aput-object v2, v5, v3

    const-string v2, "p %s = %s"

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lg/ghc;->g:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    new-array v7, v5, [Ljava/lang/Object;

    aput-object v6, v7, v4

    aput-object v2, v7, v3

    const-string v2, "c %s = %s"

    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lg/ghc;->c:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    new-array v7, v5, [Ljava/lang/Object;

    aput-object v6, v7, v4

    aput-object v2, v7, v3

    const-string v2, "f %s = %s"

    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lg/ghc;->d:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    new-array v7, v5, [Ljava/lang/Object;

    aput-object v6, v7, v4

    aput-object v2, v7, v3

    const-string v2, "m %s = %s"

    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    sget-object v2, Lg/ghc;->a:Lg/dba;

    if-eqz v1, :cond_5

    invoke-interface {v2}, Lg/dba;->af()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "Deobfuscation map is empty, not saving it"

    invoke-interface {v2, v0}, Lg/dba;->o(Ljava/lang/String;)V

    :cond_4
    return-void

    :cond_5
    iget-object v1, p0, Lg/ghc;->e:Ljava/nio/file/Path;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/nio/file/OpenOption;

    invoke-static {}, Lg/cnf;->x()Ljava/nio/file/StandardOpenOption;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {}, Lg/cnf;->h()Ljava/nio/file/StandardOpenOption;

    move-result-object v4

    aput-object v4, v6, v3

    invoke-static {}, Lg/cnf;->m()Ljava/nio/file/StandardOpenOption;

    move-result-object v3

    aput-object v3, v6, v5

    sget-object v3, Lg/ghc;->b:Ljava/nio/charset/Charset;

    invoke-static {v1, v0, v3, v6}, Lg/cnf;->z(Ljava/nio/file/Path;Ljava/util/ArrayList;Ljava/nio/charset/Charset;[Ljava/nio/file/OpenOption;)V

    const-string v0, "Deobfuscation map file saved as: {}"

    iget-object v1, p0, Lg/ghc;->e:Ljava/nio/file/Path;

    invoke-interface {v2, v1, v0}, Lg/dba;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
