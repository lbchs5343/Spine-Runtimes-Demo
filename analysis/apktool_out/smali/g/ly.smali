.class public final synthetic Lg/ly;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lg/duk;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lg/azy;


# direct methods
.method public synthetic constructor <init>(Lg/duk;Ljava/lang/String;Lg/azy;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/ly;->b:Lg/duk;

    iput-object p2, p0, Lg/ly;->c:Ljava/lang/String;

    iput-object p3, p0, Lg/ly;->d:Lg/azy;

    iput-boolean p4, p0, Lg/ly;->a:Z

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
    .locals 5

    check-cast p1, Ljava/lang/String;

    iget-object p1, p0, Lg/ly;->b:Lg/duk;

    iget-object p1, p1, Lg/duk;->a:Lg/cci;

    iget-object v0, p1, Lg/cci;->ab:Lg/dwg;

    iget-object v1, p1, Lg/cci;->ak:Lg/ve;

    sget-object v2, Lg/cwx;->an:Lg/cff;

    new-instance v3, Lg/dsj;

    iget-object v4, p0, Lg/ly;->c:Ljava/lang/String;

    invoke-direct {v3, v1, v4, v2}, Lg/dsj;-><init>(Lg/ve;Ljava/lang/String;Lg/cwx;)V

    iget-object v0, v0, Lg/dwg;->h:Lg/fzn;

    invoke-virtual {v0, v3}, Lg/fzn;->s(Lg/dsj;)Lg/dsj;

    move-result-object v0

    new-instance v1, Lg/hcd;

    const/16 v2, 0x19

    invoke-direct {v1, p1, v0, v2}, Lg/hcd;-><init>(Lg/cci;Lg/dsj;I)V

    new-instance v0, Lg/ghr;

    sget-object v2, Lg/dnd;->ENCODED_INT:Lg/dnd;

    iget-object v3, p0, Lg/ly;->d:Lg/azy;

    iget v3, v3, Lg/azy;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lg/ghr;-><init>(Lg/dnd;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Lg/lh;->m(Lg/eue;)V

    invoke-virtual {p1, v1}, Lg/cci;->be(Lg/hcd;)V

    iget-boolean p1, p0, Lg/ly;->a:Z

    if-eqz p1, :cond_0

    const-string p1, "Added by JADX"

    invoke-virtual {v1, p1}, Lg/ebh;->bv(Ljava/lang/String;)V

    :cond_0
    return-object v1
.end method

.method public final synthetic compose(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/k;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1
.end method
