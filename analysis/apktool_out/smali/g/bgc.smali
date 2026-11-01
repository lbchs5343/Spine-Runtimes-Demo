.class public final synthetic Lg/bgc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/BitSet;


# direct methods
.method public synthetic constructor <init>(Ljava/util/BitSet;I)V
    .locals 0

    iput p2, p0, Lg/bgc;->a:I

    iput-object p1, p0, Lg/bgc;->b:Ljava/util/BitSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lg/bgc;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lg/fza;

    iget-object p1, p1, Lg/fza;->ab:Lg/fza;

    if-eqz p1, :cond_0

    iget-object v0, p1, Lg/fza;->g:Ljava/util/BitSet;

    iget-object v1, p0, Lg/bgc;->b:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->andNot(Ljava/util/BitSet;)V

    iget p1, p1, Lg/fza;->x:I

    invoke-virtual {v1, p1}, Ljava/util/BitSet;->clear(I)V

    :cond_0
    return-void

    :pswitch_0
    check-cast p1, Lg/fza;

    iget-object p1, p1, Lg/fza;->g:Ljava/util/BitSet;

    iget-object v0, p0, Lg/bgc;->b:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->and(Ljava/util/BitSet;)V

    return-void

    :pswitch_1
    check-cast p1, Lg/fza;

    iget-object p1, p1, Lg/fza;->i:Ljava/util/BitSet;

    invoke-virtual {p1}, Ljava/util/BitSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lg/bgc;->b:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    :cond_1
    return-void

    :pswitch_2
    check-cast p1, Lg/gcv;

    iget-object p1, p1, Lg/gcv;->c:Lg/fza;

    iget p1, p1, Lg/fza;->x:I

    iget-object v0, p0, Lg/bgc;->b:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 1

    iget v0, p0, Lg/bgc;->a:I

    invoke-static {p0, p1}, Lj$/util/function/j;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method
