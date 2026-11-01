.class public final Lg/clt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lg/edx;


# direct methods
.method public synthetic constructor <init>(Lg/edx;I)V
    .locals 0

    iput p2, p0, Lg/clt;->a:I

    iput-object p1, p0, Lg/clt;->b:Lg/edx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lg/clt;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/clt;->b:Lg/edx;

    iget-object v1, v0, Lg/eib;->bc:Lg/eib;

    const-string v2, "tc_content_reverse"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lg/cro;->an(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lg/edx;->r:La/v/ScrollViewWithMaxHeight;

    invoke-virtual {v0, v3, v3}, Landroid/view/View;->scrollTo(II)V

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lg/edx;->r:La/v/ScrollViewWithMaxHeight;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v0, v0, Lg/edx;->r:La/v/ScrollViewWithMaxHeight;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/view/View;->scrollTo(II)V

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lg/clt;->b:Lg/edx;

    invoke-virtual {v0}, Lg/edx;->au()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lg/edx;->ab()V

    goto :goto_1

    :cond_2
    iget-object v1, v0, Lg/eib;->bb:Ljava/lang/String;

    invoke-static {v0, v1}, Lg/ern;->h(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lg/edx;->ab()V

    :cond_3
    :goto_1
    return-void

    :pswitch_1
    iget-object v0, p0, Lg/clt;->b:Lg/edx;

    invoke-static {v0}, Lg/edx;->al(Lg/edx;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
