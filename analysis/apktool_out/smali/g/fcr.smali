.class public final synthetic Lg/fcr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/UnaryOperator;


# instance fields
.field public final synthetic a:Lg/dxg;

.field public final synthetic b:Lg/cci;


# direct methods
.method public synthetic constructor <init>(Lg/dxg;Lg/cci;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/fcr;->a:Lg/dxg;

    iput-object p2, p0, Lg/fcr;->b:Lg/cci;

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
    .locals 2

    iget-object v0, p0, Lg/fcr;->b:Lg/cci;

    check-cast p1, Lg/ghr;

    iget-object v1, p0, Lg/fcr;->a:Lg/dxg;

    invoke-virtual {v1, v0, p1}, Lg/dxg;->i(Lg/cci;Lg/ghr;)Lg/ghr;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic compose(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/k;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1
.end method
