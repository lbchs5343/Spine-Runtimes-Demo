.class public final synthetic Lg/gxl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Lg/cwx;

.field public final synthetic b:Lg/dsj;

.field public final synthetic c:Lg/egl;

.field public final synthetic d:Lg/hed;

.field public final synthetic e:Lg/hed;


# direct methods
.method public synthetic constructor <init>(Lg/dwu;Lg/egl;Lg/hed;Lg/hed;Lg/cwx;Lg/dsj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lg/gxl;->c:Lg/egl;

    iput-object p3, p0, Lg/gxl;->d:Lg/hed;

    iput-object p4, p0, Lg/gxl;->e:Lg/hed;

    iput-object p5, p0, Lg/gxl;->a:Lg/cwx;

    iput-object p6, p0, Lg/gxl;->b:Lg/dsj;

    return-void
.end method


# virtual methods
.method public final synthetic andThen(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/k;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    check-cast p1, Lg/eek;

    iget-object v0, p1, Lg/eek;->ah:Lg/hay;

    sget-object v1, Lg/hay;->SGET:Lg/hay;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lg/gxl;->c:Lg/egl;

    invoke-virtual {v0, p1}, Lg/egl;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lg/gxl;->d:Lg/hed;

    iget-object v1, p0, Lg/gxl;->e:Lg/hed;

    if-nez v0, :cond_0

    iget-object v2, v1, Lg/hed;->am:Lg/cci;

    iget-object v2, v2, Lg/cci;->ab:Lg/dwg;

    iget-object v3, p0, Lg/gxl;->a:Lg/cwx;

    invoke-static {v2, v3}, Lg/ve;->h(Lg/dwg;Lg/cwx;)Lg/ve;

    move-result-object v4

    sget-object v5, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sget-object v6, Lg/cwx;->an:Lg/cff;

    new-instance v6, Lg/aoe;

    invoke-direct {v6, v3}, Lg/aoe;-><init>(Lg/cwx;)V

    const-string v3, "values"

    invoke-static {v2, v4, v3, v5, v6}, Lg/ayu;->k(Lg/dwg;Lg/ve;Ljava/lang/String;Ljava/util/List;Lg/cwx;)Lg/ayu;

    move-result-object v2

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lg/hed;->al:Lg/ayu;

    :goto_0
    new-instance v3, Lg/hdc;

    sget-object v4, Lg/eqp;->STATIC:Lg/eqp;

    const/4 v5, 0x0

    invoke-direct {v3, v2, v4, v5}, Lg/hdc;-><init>(Lg/ayu;Lg/eqp;I)V

    iget-object p1, p1, Lg/eek;->ai:Lg/gks;

    invoke-virtual {v3, p1}, Lg/eek;->ax(Lg/gks;)V

    if-nez v0, :cond_1

    sget-object p1, Lg/csv;->FORCE_RAW_NAME:Lg/csv;

    invoke-virtual {v3, p1}, Lg/lh;->w(Lg/csv;)V

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Replace access to removed values field ("

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lg/gxl;->b:Lg/dsj;

    iget-object v0, v0, Lg/dsj;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") with \'values()\' method"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lg/ebh;->bw(Ljava/lang/String;)V

    return-object v3

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public final synthetic compose(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/k;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1
.end method
