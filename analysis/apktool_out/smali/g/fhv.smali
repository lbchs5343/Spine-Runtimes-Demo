.class public final Lg/fhv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lg/fhv;->a:I

    iput-object p2, p0, Lg/fhv;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 4

    iget v0, p0, Lg/fhv;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/fhv;->b:Ljava/lang/Object;

    check-cast v0, Lg/ctb;

    iget-object v1, v0, Lg/ctb;->i:Lg/alt;

    invoke-virtual {v0}, Lg/ctb;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, v1, Lg/cfi;->t:Z

    if-nez v2, :cond_2

    iget-object v2, v0, Lg/ctb;->z:Landroid/view/View;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lg/cfi;->show()V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {v0}, Lg/ctb;->dismiss()V

    :cond_2
    :goto_1
    return-void

    :pswitch_0
    iget-object v0, p0, Lg/fhv;->b:Ljava/lang/Object;

    check-cast v0, Lg/elf;

    iget-boolean v1, v0, Lg/elf;->o:Z

    if-eqz v1, :cond_3

    iget-boolean v1, v0, Lg/elf;->z:Z

    if-nez v1, :cond_3

    iget-boolean v1, v0, Lg/elf;->x:Z

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lg/elf;->ag()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lg/elf;->o:Z

    :cond_3
    return-void

    :pswitch_1
    iget-object v0, p0, Lg/fhv;->b:Ljava/lang/Object;

    check-cast v0, Lg/ezq;

    iget-object v1, v0, Lg/ezq;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lg/ezq;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_6

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/czb;

    iget-object v2, v2, Lg/czb;->a:Lg/alt;

    iget-boolean v2, v2, Lg/cfi;->t:Z

    if-nez v2, :cond_6

    iget-object v2, v0, Lg/ezq;->o:Landroid/view/View;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/czb;

    iget-object v1, v1, Lg/czb;->a:Lg/alt;

    invoke-virtual {v1}, Lg/cfi;->show()V

    goto :goto_2

    :cond_5
    :goto_3
    invoke-virtual {v0}, Lg/ezq;->dismiss()V

    :cond_6
    return-void

    :pswitch_2
    iget-object v0, p0, Lg/fhv;->b:Ljava/lang/Object;

    check-cast v0, Lg/cox;

    iget-object v1, v0, Lg/cox;->at:Lg/erv;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, v0, Lg/cox;->ar:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lg/cox;->av()V

    invoke-virtual {v0}, Lg/cfi;->show()V

    goto :goto_4

    :cond_7
    invoke-virtual {v0}, Lg/cfi;->dismiss()V

    :goto_4
    return-void

    :pswitch_3
    iget-object v0, p0, Lg/fhv;->b:Ljava/lang/Object;

    check-cast v0, Lg/erv;

    invoke-virtual {v0}, Lg/erv;->getInternalPopup()Lg/uw;

    move-result-object v1

    invoke-interface {v1}, Lg/uw;->isShowing()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, v0, Lg/erv;->i:Lg/uw;

    invoke-virtual {v0}, Landroid/view/View;->getTextDirection()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getTextAlignment()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lg/uw;->b(II)V

    :cond_8
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_9
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
