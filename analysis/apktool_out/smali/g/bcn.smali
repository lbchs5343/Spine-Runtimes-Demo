.class public final Lg/bcn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public c:Z

.field public final d:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public e:Lg/fgb;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lg/bcn;->a:I

    iput-object p2, p0, Lg/bcn;->b:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lg/bcn;-><init>(Z)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;IZ)V
    .locals 0

    iput p2, p0, Lg/bcn;->a:I

    iput-object p1, p0, Lg/bcn;->b:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lg/bcn;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lg/bcn;->c:Z

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lg/bcn;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method


# virtual methods
.method public final f()V
    .locals 3

    iget v0, p0, Lg/bcn;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/bcn;->b:Ljava/lang/Object;

    check-cast v0, Lg/edx;

    invoke-virtual {v0}, Lg/edx;->as()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lg/bcn;->b:Ljava/lang/Object;

    check-cast v0, Lg/baq;

    iget-object v1, v0, Lg/baq;->x:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lg/baq;->x:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/he;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lg/baq;->ao(Lg/he;Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lg/baq;->as()V

    :goto_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lg/bcn;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/v;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/v;->ci(Z)Z

    iget-object v1, v0, Landroidx/fragment/app/v;->b:Lg/bcn;

    iget-boolean v1, v1, Lg/bcn;->c:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroidx/fragment/app/v;->au()Z

    goto :goto_1

    :cond_1
    iget-object v0, v0, Landroidx/fragment/app/v;->al:Landroidx/activity/b;

    invoke-virtual {v0}, Landroidx/activity/b;->j()V

    :goto_1
    return-void

    :pswitch_2
    iget-object v0, p0, Lg/bcn;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    :pswitch_3
    iget-object v0, p0, Lg/bcn;->b:Ljava/lang/Object;

    check-cast v0, Lg/efx;

    iget-object v1, v0, Lg/efx;->an:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lg/efx;->an:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    iget-object v1, v0, Lg/efx;->an:Landroid/widget/EditText;

    iget-object v2, v0, Lg/efx;->aq:Lg/fvi;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lg/bcn;->g(Z)V

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/b;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/activity/b;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v1}, Lg/bcn;->g(Z)V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v1}, Lg/bcn;->g(Z)V

    throw v0

    :pswitch_4
    iget-object v0, p0, Lg/bcn;->b:Ljava/lang/Object;

    check-cast v0, Lg/eso;

    invoke-virtual {v0}, Lg/eso;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lg/bcn;->g(Z)V

    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {v0}, Lg/dms;->onBackPressed()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {p0, v1}, Lg/bcn;->g(Z)V

    :goto_2
    return-void

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v1}, Lg/bcn;->g(Z)V

    throw v0

    :pswitch_5
    iget-object v0, p0, Lg/bcn;->b:Ljava/lang/Object;

    check-cast v0, Lg/fyx;

    iget-object v1, v0, Lg/fyx;->webView:La/a/ab;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, v0, Lg/fyx;->webView:La/a/ab;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lg/bcn;->g(Z)V

    invoke-virtual {v0}, Lg/dms;->onBackPressed()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lg/bcn;->g(Z)V

    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final g(Z)V
    .locals 0

    iput-boolean p1, p0, Lg/bcn;->c:Z

    iget-object p1, p0, Lg/bcn;->e:Lg/fgb;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lg/cvw;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method
