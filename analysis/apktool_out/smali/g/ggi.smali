.class public final Lg/ggi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Lg/bgn;

.field public final synthetic c:I

.field public final synthetic d:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lg/bgn;Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    iput p4, p0, Lg/ggi;->c:I

    iput-object p1, p0, Lg/ggi;->b:Lg/bgn;

    iput-object p2, p0, Lg/ggi;->d:Landroid/view/View;

    iput-object p3, p0, Lg/ggi;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lg/ggi;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/ggi;->b:Lg/bgn;

    iget-object v0, v0, Lg/bgn;->s:Landroidx/appcompat/app/AlertController$RecycleListView;

    iget-object v1, p0, Lg/ggi;->d:Landroid/view/View;

    iget-object v2, p0, Lg/ggi;->a:Landroid/view/View;

    invoke-static {v0, v1, v2}, Lg/bgn;->aj(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lg/ggi;->b:Lg/bgn;

    iget-object v0, v0, Lg/bgn;->t:Landroidx/core/widget/NestedScrollView;

    iget-object v1, p0, Lg/ggi;->d:Landroid/view/View;

    iget-object v2, p0, Lg/ggi;->a:Landroid/view/View;

    invoke-static {v0, v1, v2}, Lg/bgn;->aj(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
