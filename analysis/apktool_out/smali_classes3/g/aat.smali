.class public final Lg/aat;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:La/v/ScrollViewWithMaxHeight;


# direct methods
.method public synthetic constructor <init>(La/v/ScrollViewWithMaxHeight;I)V
    .locals 0

    iput p2, p0, Lg/aat;->a:I

    iput-object p1, p0, Lg/aat;->b:La/v/ScrollViewWithMaxHeight;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lg/aat;->a:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    iget-object v1, p0, Lg/aat;->b:La/v/ScrollViewWithMaxHeight;

    invoke-virtual {v1, v0}, Landroid/view/View;->setScrollbarFadingEnabled(Z)V

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    return-void

    :pswitch_0
    const/4 v0, 0x1

    iget-object v1, p0, Lg/aat;->b:La/v/ScrollViewWithMaxHeight;

    invoke-virtual {v1, v0}, Landroid/view/View;->setScrollbarFadingEnabled(Z)V

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    return-void

    :pswitch_1
    const/4 v0, 0x1

    iget-object v1, p0, Lg/aat;->b:La/v/ScrollViewWithMaxHeight;

    invoke-virtual {v1, v0}, Landroid/view/View;->setScrollbarFadingEnabled(Z)V

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    return-void

    :pswitch_2
    const/4 v0, 0x1

    iget-object v1, p0, Lg/aat;->b:La/v/ScrollViewWithMaxHeight;

    invoke-virtual {v1, v0}, Landroid/view/View;->setScrollbarFadingEnabled(Z)V

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    return-void

    :pswitch_3
    const/4 v0, 0x1

    iget-object v1, p0, Lg/aat;->b:La/v/ScrollViewWithMaxHeight;

    invoke-virtual {v1, v0}, Landroid/view/View;->setScrollbarFadingEnabled(Z)V

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    return-void

    :pswitch_4
    const/4 v0, 0x1

    iget-object v1, p0, Lg/aat;->b:La/v/ScrollViewWithMaxHeight;

    invoke-virtual {v1, v0}, Landroid/view/View;->setScrollbarFadingEnabled(Z)V

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
