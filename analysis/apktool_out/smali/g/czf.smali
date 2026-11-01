.class public final Lg/czf;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lc/a/a;


# direct methods
.method public synthetic constructor <init>(Lc/a/a;I)V
    .locals 0

    iput p2, p0, Lg/czf;->a:I

    iput-object p1, p0, Lg/czf;->b:Lc/a/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    iget v0, p0, Lg/czf;->a:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "alternative_window_event"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "accessibility_event_simple"

    if-nez v0, :cond_0

    iget-object v0, p0, Lg/czf;->b:Lc/a/a;

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lg/ejn;

    invoke-static {v0, v3}, Lg/erl;->bb(Ljava/lang/Object;Lg/ejn;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lg/czf;->b:Lc/a/a;

    iget-boolean v3, v0, Lc/a/a;->j:Z

    if-nez v3, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-boolean v3, v0, Lg/eib;->ba:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lc/a/a;->ab()V

    const-string v0, "wv_small_window_default"

    invoke-static {p1, v0, v4}, Lg/cro;->an(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lg/czf;->b:Lc/a/a;

    sget-object v3, Lg/erl;->s:Lg/ctt;

    if-eqz v3, :cond_2

    iget-boolean v5, v3, Lg/ctt;->g:Z

    if-nez v5, :cond_2

    invoke-virtual {v3}, Lg/ctt;->l()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    iget-object v3, v0, Lg/eib;->bb:Ljava/lang/String;

    if-eqz v3, :cond_3

    invoke-static {v0, v3}, Lg/ern;->h(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    iget-object v0, p0, Lg/czf;->b:Lc/a/a;

    iget-object v0, v0, Lc/a/a;->r:Lg/drp;

    if-eqz v0, :cond_3

    iget-boolean v0, v0, Lg/drp;->i:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lg/czf;->b:Lc/a/a;

    invoke-virtual {v0, v1}, Lc/a/a;->x(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lg/czf;->b:Lc/a/a;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_3
    iget-object v0, p0, Lg/czf;->b:Lc/a/a;

    iput-boolean v1, v0, Lg/eib;->ba:Z

    :cond_4
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lg/ejn;

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Lg/ejn;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_5

    goto/16 :goto_1

    :cond_5
    invoke-virtual {p2}, Lg/ejn;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lg/eyt;->bp(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lg/ejn;->getClassName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Lg/eyt;->bp(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lg/ejn;->getWindowTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Lg/eyt;->bp(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lg/czf;->b:Lc/a/a;

    iget-object v3, v3, Lc/a/a;->s:Lg/ejn;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lg/ejn;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3, v0}, Lg/cux;->ah(Ljava/lang/CharSequence;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lg/czf;->b:Lc/a/a;

    iget-object v3, v3, Lc/a/a;->s:Lg/ejn;

    invoke-virtual {v3}, Lg/ejn;->getClassName()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3, v1}, Lg/cux;->ah(Ljava/lang/CharSequence;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lg/czf;->b:Lc/a/a;

    iget-object v3, v3, Lc/a/a;->s:Lg/ejn;

    invoke-virtual {v3}, Lg/ejn;->getEventType()I

    move-result v3

    invoke-virtual {p2}, Lg/ejn;->getEventType()I

    move-result v5

    if-ne v3, v5, :cond_6

    goto/16 :goto_1

    :cond_6
    iget-object v3, p0, Lg/czf;->b:Lc/a/a;

    iput-object p2, v3, Lc/a/a;->s:Lg/ejn;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    sget-object p2, Lc/a/a;->d:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    goto :goto_1

    :cond_7
    iget-object p2, p0, Lg/czf;->b:Lc/a/a;

    iget-object p2, p2, Lc/a/a;->g:Lg/cwz;

    invoke-virtual {p2, v0, v4}, Lg/cwz;->c(Ljava/lang/String;Z)Lg/auj;

    move-result-object p2

    if-eqz p2, :cond_9

    if-eqz v0, :cond_8

    iget-object v3, p0, Lg/czf;->b:Lc/a/a;

    iget-object v3, v3, Lc/a/a;->o:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lg/czf;->b:Lc/a/a;

    iget-object v3, v3, Lc/a/a;->m:Ljava/util/ArrayList;

    new-instance v5, Lg/gzr;

    iget-object v6, p2, Lg/auj;->j:Ljava/lang/String;

    invoke-virtual {p2, p1, v4}, Lg/auj;->l(Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const-string p2, "name"

    invoke-static {v6, p2}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v6, v5, Lg/gzr;->b:Ljava/lang/String;

    iput-object v0, v5, Lg/gzr;->c:Ljava/lang/String;

    iput-object p1, v5, Lg/gzr;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    iget-object p1, p0, Lg/czf;->b:Lc/a/a;

    iget-object p1, p1, Lc/a/a;->m:Ljava/util/ArrayList;

    new-instance p2, Lg/vc;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-string v5, "className"

    invoke-static {v1, v5}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object v1, p2, Lg/vc;->b:Ljava/lang/String;

    iput-object v2, p2, Lg/vc;->c:Ljava/lang/String;

    iput-wide v3, p2, Lg/vc;->a:J

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lg/czf;->b:Lc/a/a;

    iget-object p2, p1, Lc/a/a;->e:Lg/dbv;

    iget-object p1, p1, Lc/a/a;->m:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Lg/dbv;->h(Ljava/util/ArrayList;)V

    iget-object p1, p0, Lg/czf;->b:Lc/a/a;

    iget-object p1, p1, Lc/a/a;->e:Lg/dbv;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/m;->notifyDataSetChanged()V

    iget-object p1, p0, Lg/czf;->b:Lc/a/a;

    iput-object v0, p1, Lc/a/a;->o:Ljava/lang/String;

    :cond_9
    :goto_1
    return-void

    :pswitch_0
    iget-object p1, p0, Lg/czf;->b:Lc/a/a;

    iget-object p2, p1, Lc/a/a;->i:Lg/sd;

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Lg/sd;->g()Z

    move-result p2

    if-eqz p2, :cond_a

    iget-object p1, p1, Lc/a/a;->i:Lg/sd;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lg/cle;->ak(I)V

    :cond_a
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
