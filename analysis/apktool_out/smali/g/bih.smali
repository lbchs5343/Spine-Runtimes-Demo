.class public final synthetic Lg/bih;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Lg/cci;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lg/cci;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/bih;->a:Lg/cci;

    iput-boolean p2, p0, Lg/bih;->b:Z

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
    .locals 3

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lg/bih;->a:Lg/cci;

    iget-object v1, v0, Lg/cci;->ab:Lg/dwg;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lg/cci;->ak:Lg/ve;

    invoke-virtual {v0}, Lg/ve;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lg/ve;->g(Lg/dwg;Ljava/lang/String;)Lg/ve;

    move-result-object p1

    invoke-virtual {v1, p1}, Lg/dwg;->ae(Lg/ve;)Lg/cci;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance p1, Lg/duk;

    invoke-direct {p1, v0}, Lg/duk;-><init>(Lg/cci;)V

    invoke-virtual {v0}, Lg/cci;->av()V

    iget-object v0, v0, Lg/cci;->ag:Ljava/util/List;

    new-instance v1, Lg/dti;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lg/dti;-><init>(Lg/duk;I)V

    invoke-static {v0, v1}, Lj$/lang/Iterable$b;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    return-object p1

    :cond_0
    const/16 v0, 0x19

    invoke-static {v1, p1, v0}, Lg/cci;->ao(Lg/dwg;Lg/ve;I)Lg/cci;

    move-result-object p1

    iget-boolean v0, p0, Lg/bih;->b:Z

    if-eqz v0, :cond_1

    const-string v0, "Added by JADX"

    invoke-virtual {p1, v0}, Lg/ebh;->bv(Ljava/lang/String;)V

    :cond_1
    new-instance v0, Lg/duk;

    invoke-direct {v0, p1}, Lg/duk;-><init>(Lg/cci;)V

    return-object v0
.end method

.method public final synthetic compose(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/k;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1
.end method
