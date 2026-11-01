.class public final Lg/eln;
.super Lg/bjk;
.source "SourceFile"

# interfaces
.implements Lg/foe;


# static fields
.field public static final g:Lg/cuf;


# instance fields
.field public final h:Lg/fza;

.field public final i:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/cuf;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lg/cuf;-><init>(I)V

    sput-object v0, Lg/eln;->g:Lg/cuf;

    return-void
.end method

.method public constructor <init>(Lg/cfm;Lg/fza;)V
    .locals 0

    invoke-direct {p0, p1}, Lg/bjk;-><init>(Lg/cfm;)V

    iput-object p2, p0, Lg/eln;->h:Lg/fza;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lg/eln;->i:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SW:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lg/eln;->h:Lg/fza;

    iget v1, v1, Lg/fza;->h:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lg/fsw;Lg/eos;)V
    .locals 12

    iget-object v0, p0, Lg/eln;->h:Lg/fza;

    invoke-static {v0}, Lg/ffb;->s(Lg/cih;)Lg/eek;

    move-result-object v0

    check-cast v0, Lg/bzm;

    const-string v1, "Switch insn not found in header"

    invoke-static {v0, v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v2

    check-cast p2, Lg/grs;

    const-string v3, "switch ("

    invoke-virtual {p2, v3}, Lg/grs;->ae(Ljava/lang/String;)Lg/grs;

    invoke-virtual {p1, p2, v2, v1}, Lg/grb;->aa(Lg/eos;Lg/gsh;Z)V

    const-string v1, ") {"

    invoke-interface {p2, v1}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    invoke-static {p2, v0}, Lg/ahw;->c(Lg/eos;Lg/eek;)V

    iget-object v1, p1, Lg/grb;->m:Lg/hed;

    invoke-static {p2, v1, v0}, Lg/bzu;->d(Lg/eos;Lg/ebh;Lg/epk;)V

    invoke-virtual {p2}, Lg/grs;->aa()V

    iget-object v0, p0, Lg/eln;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/adk;

    iget-object v4, v3, Lg/adk;->a:Ljava/util/List;

    iget-object v3, v3, Lg/adk;->b:Lg/amj;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lg/eln;->g:Lg/cuf;

    if-ne v5, v6, :cond_0

    const-string v5, "default:"

    invoke-virtual {p2, v5}, Lg/grs;->ae(Ljava/lang/String;)Lg/grs;

    goto :goto_1

    :cond_0
    const-string v6, "case "

    invoke-virtual {p2, v6}, Lg/grs;->ae(Ljava/lang/String;)Lg/grs;

    instance-of v6, v5, Lg/hcd;

    if-eqz v6, :cond_1

    check-cast v5, Lg/hcd;

    iget-object v6, v5, Lg/hcd;->g:Lg/dsj;

    invoke-virtual {p1, p2, v6, v5}, Lg/fsw;->d(Lg/eos;Lg/dsj;Lg/hcd;)V

    goto :goto_2

    :cond_1
    instance-of v6, v5, Lg/dsj;

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    check-cast v5, Lg/dsj;

    invoke-virtual {p1, p2, v5, v7}, Lg/fsw;->d(Lg/eos;Lg/dsj;Lg/hcd;)V

    goto :goto_2

    :cond_2
    instance-of v6, v5, Ljava/lang/Integer;

    if-eqz v6, :cond_3

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v2}, Lg/flv;->j()Lg/cwx;

    move-result-object v8

    iget-boolean v10, p1, Lg/grb;->k:Z

    sget-object v5, Lg/pp;->a:Lg/dba;

    invoke-virtual {v1}, Lg/hed;->a()Lg/dwg;

    move-result-object v5

    iget-object v9, v5, Lg/dwg;->t:Lg/foj;

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lg/pp;->b(JLg/cwx;Lg/foj;ZZ)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v5}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    goto :goto_2

    :cond_3
    instance-of v6, v5, Ljava/lang/String;

    if-eqz v6, :cond_4

    const/16 v6, 0x22

    invoke-interface {p2, v6}, Lg/eos;->a(C)Lg/eos;

    move-result-object v7

    check-cast v5, Ljava/lang/String;

    invoke-interface {v7, v5}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    move-result-object v5

    invoke-interface {v5, v6}, Lg/eos;->a(C)Lg/eos;

    :goto_2
    const/16 v5, 0x3a

    invoke-interface {p2, v5}, Lg/eos;->a(C)Lg/eos;

    goto :goto_1

    :cond_4
    new-instance p1, Lg/gck;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unexpected key in switch: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    :cond_5
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    invoke-virtual {p1, p2, v3}, Lg/fsw;->c(Lg/eos;Lg/amj;)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p2}, Lg/grs;->ab()V

    const/16 p1, 0x7d

    invoke-virtual {p2, p1}, Lg/grs;->ad(C)Lg/grs;

    return-void
.end method

.method public final e()Ljava/util/List;
    .locals 2

    new-instance v0, Lg/coq;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lg/coq;-><init>(I)V

    iget-object v1, p0, Lg/eln;->i:Ljava/util/ArrayList;

    invoke-static {v1, v0}, Lg/evh;->g(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Switch: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lg/eln;->h:Lg/fza;

    iget v1, v1, Lg/fza;->h:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/eln;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/adk;

    iget-object v3, v2, Lg/adk;->a:Ljava/util/List;

    new-instance v4, Lg/coq;

    const/4 v5, 0x6

    invoke-direct {v4, v5}, Lg/coq;-><init>(I)V

    invoke-static {v3, v4}, Lg/evh;->g(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object v3

    const-string v4, "\n case "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-static {v4, v3}, Lg/evh;->h(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lg/adk;->b:Lg/amj;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final x()Ljava/util/List;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lg/eln;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v2, p0, Lg/eln;->h:Lg/fza;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lg/coq;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Lg/coq;-><init>(I)V

    invoke-static {v1, v2}, Lg/evh;->g(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
