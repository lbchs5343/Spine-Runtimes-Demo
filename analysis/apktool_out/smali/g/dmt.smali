.class public final synthetic Lg/dmt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lg/fza;


# direct methods
.method public synthetic constructor <init>(Lg/fza;I)V
    .locals 0

    iput p2, p0, Lg/dmt;->a:I

    iput-object p1, p0, Lg/dmt;->b:Lg/fza;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lg/dmt;->a:I

    check-cast p1, Lg/fza;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p1, Lg/fza;->d:Ljava/util/List;

    iget-object v1, p0, Lg/dmt;->b:Lg/fza;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lg/fza;->ad()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lg/dmt;->b:Lg/fza;

    iget-object v1, v0, Lg/fza;->g:Ljava/util/BitSet;

    iget v2, p1, Lg/fza;->x:I

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_0

    if-ne v0, p1, :cond_1

    :cond_0
    sget-object v1, Lg/csv;->LOOP_START:Lg/csv;

    invoke-virtual {p1, v1}, Lg/lh;->w(Lg/csv;)V

    sget-object v1, Lg/csv;->LOOP_END:Lg/csv;

    invoke-virtual {v0, v1}, Lg/lh;->w(Lg/csv;)V

    invoke-static {p1, v0}, Lg/ffb;->x(Lg/fza;Lg/fza;)Ljava/util/HashSet;

    move-result-object v1

    new-instance v2, Lg/gcv;

    invoke-direct {v2, v1, p1, v0}, Lg/gcv;-><init>(Ljava/util/HashSet;Lg/fza;Lg/fza;)V

    sget-object v1, Lg/acq;->at:Lg/acq;

    invoke-virtual {p1, v1, v2}, Lg/lh;->o(Lg/acq;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lg/lh;->o(Lg/acq;Ljava/lang/Object;)V

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 1

    iget v0, p0, Lg/dmt;->a:I

    invoke-static {p0, p1}, Lj$/util/function/j;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method
