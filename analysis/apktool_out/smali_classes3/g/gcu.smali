.class public final Lg/gcu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public final synthetic c:I

.field public final d:Ljava/lang/Object;

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lg/gcu;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lg/gcu;->d:Ljava/lang/Object;

    iput-object p1, p0, Lg/gcu;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lg/hed;Lg/zf;Lg/ur;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lg/gcu;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lg/gcu;->d:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lg/gcu;->f:I

    iput-object p1, p0, Lg/gcu;->a:Ljava/lang/Object;

    iput-object p2, p0, Lg/gcu;->b:Ljava/lang/Object;

    iget p1, p1, Lg/hed;->y:I

    iget p2, p3, Lg/ur;->u:I

    mul-int p1, p1, p2

    iput p1, p0, Lg/gcu;->e:I

    return-void
.end method


# virtual methods
.method public g(Lg/gsh;)Lg/cwx;
    .locals 1

    iget-object v0, p0, Lg/gcu;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/gpf;

    if-eqz v0, :cond_0

    iget-object p1, v0, Lg/gpf;->a:Lg/cwx;

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lg/flv;->j()Lg/cwx;

    move-result-object p1

    return-object p1
.end method

.method public h(Lg/anp;Ljava/util/List;)V
    .locals 1

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lg/cer;

    iget-object v0, p2, Lg/cer;->a:Lg/bzb;

    invoke-virtual {v0}, Lg/bzb;->h()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    iget p1, p0, Lg/gcu;->f:I

    iget-object p2, p2, Lg/cer;->a:Lg/bzb;

    invoke-virtual {p2}, Lg/bzb;->g()F

    move-result p2

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lg/gtk;->g(IFI)I

    move-result p1

    int-to-float p1, p1

    iget-object p2, p0, Lg/gcu;->b:Ljava/lang/Object;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    return-void
.end method

.method public i(Lg/gsh;)V
    .locals 2

    iget-object v0, p0, Lg/gcu;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/gpf;

    if-eqz p1, :cond_0

    iget p1, p1, Lg/gpf;->b:I

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lg/agg;

    invoke-direct {v1, p1}, Lg/agg;-><init>(I)V

    invoke-static {v0, v1}, Lj$/util/Collection$b;->removeIf(Ljava/util/Collection;Ljava/util/function/Predicate;)Z

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lg/gcu;->c:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TypeUpdateInfo{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lg/gcu;->b:Ljava/lang/Object;

    check-cast v1, Lg/zf;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/gcu;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/IdentityHashMap;

    invoke-virtual {v1}, Ljava/util/IdentityHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lj$/util/Collection$b;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Lj$/util/stream/Stream;->sorted()Lj$/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
