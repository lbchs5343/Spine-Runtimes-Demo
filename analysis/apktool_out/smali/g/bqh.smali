.class public final Lg/bqh;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lg/dlv;


# direct methods
.method public synthetic constructor <init>(Lg/dlv;I)V
    .locals 0

    iput p2, p0, Lg/bqh;->a:I

    iput-object p1, p0, Lg/bqh;->b:Lg/dlv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget p1, p0, Lg/bqh;->a:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lg/bqh;->b:Lg/dlv;

    iget-object v0, p1, Lg/dlv;->tl:Lg/cyx;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lg/dlv;->ox(Lg/dlv;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lg/dlv;->tl:Lg/cyx;

    iget-object v1, p1, Lg/dlv;->bf:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/fzc;

    invoke-interface {v0, v1, p1, p1}, Lg/cyx;->dq(Lg/fzc;Lg/dvh;Lg/eho;)V

    :cond_0
    return-void

    :pswitch_0
    iget-object p1, p0, Lg/bqh;->b:Lg/dlv;

    iget-object v0, p1, Lg/dlv;->b:Lg/f;

    if-eqz v0, :cond_1

    invoke-static {p1}, Lg/dlv;->ox(Lg/dlv;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lg/dlv;->b:Lg/f;

    invoke-interface {v0, p1}, Lg/f;->dq(Lg/dlv;)V

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
