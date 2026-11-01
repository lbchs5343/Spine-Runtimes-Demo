.class public final Lg/fgw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lg/fgw;->a:I

    iput-object p2, p0, Lg/fgw;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 10

    iget p1, p0, Lg/fgw;->a:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lg/fgw;->b:Ljava/lang/Object;

    check-cast p1, Landroid/webkit/JsPromptResult;

    invoke-virtual {p1}, Landroid/webkit/JsResult;->cancel()V

    return-void

    :pswitch_0
    iget-object p1, p0, Lg/fgw;->b:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbsh;

    const-string p2, "User canceled the download."

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzbsk;->zzh(Ljava/lang/String;)V

    return-void

    :pswitch_1
    sget-object p1, Lg/ti;->a:Lg/ti;

    iget-object p1, p1, Lg/ti;->z:Lg/esy;

    const-string p1, "https://support.google.com/dfp_premium/answer/7160685#push"

    iget-object p2, p0, Lg/fgw;->b:Ljava/lang/Object;

    check-cast p2, Lg/apf;

    iget-object p2, p2, Lg/apf;->c:Landroid/content/Context;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p2, p1}, Lg/esy;->ai(Landroid/content/Context;Landroid/net/Uri;)V

    return-void

    :pswitch_2
    iget-object p1, p0, Lg/fgw;->b:Ljava/lang/Object;

    check-cast p1, Lg/gfk;

    invoke-virtual {p1}, Lg/gfk;->p()V

    return-void

    :pswitch_3
    iget-object p1, p0, Lg/fgw;->b:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void

    :pswitch_4
    iget-object p1, p0, Lg/fgw;->b:Ljava/lang/Object;

    check-cast p1, Landroidx/appcompat/widget/SwitchCompat;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    return-void

    :pswitch_5
    iget-object p1, p0, Lg/fgw;->b:Ljava/lang/Object;

    check-cast p1, Lg/elf;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    :pswitch_6
    iget-object p1, p0, Lg/fgw;->b:Ljava/lang/Object;

    check-cast p1, Lg/fvy;

    iget-object p2, p1, Lg/fvy;->a:Landroid/app/Activity;

    const-string v0, "tt_2_3_cft_d_b"

    invoke-static {p2, v0}, Lg/dzm;->ao(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    if-eqz p2, :cond_0

    instance-of v0, p2, Lg/cgm;

    if-eqz v0, :cond_0

    check-cast p2, Lg/cgm;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_1

    iget-object p1, p1, Lg/fvy;->a:Landroid/app/Activity;

    const p2, 0x7f1203bc

    invoke-static {p1, p2}, Lg/gm;->c(Landroid/content/Context;I)V

    const-string p1, "p able is null in DVDialogFragment"

    new-instance p2, Ljava/lang/NullPointerException;

    invoke-direct {p2}, Ljava/lang/NullPointerException;-><init>()V

    invoke-static {p1, p2}, Lg/erl;->ai(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    invoke-interface {p2}, Lg/cgm;->g()V

    :goto_1
    return-void

    :pswitch_7
    const-string p1, ""

    iget-object v0, p0, Lg/fgw;->b:Ljava/lang/Object;

    check-cast v0, Lg/anh;

    iget-object v1, v0, Lg/anh;->c:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    iget-object v2, v0, Lg/anh;->a:Ljava/lang/Object;

    check-cast v2, Lg/brq;

    if-eqz p2, :cond_4

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 v3, 0x2

    if-eq p2, v3, :cond_2

    goto :goto_3

    :cond_2
    iget-object p2, v2, Lg/brq;->a:Landroid/content/pm/ComponentInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p2, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p1, p2, v0}, Lg/fso;->ae(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Z)V

    goto :goto_3

    :cond_3
    iget-object p2, v2, Lg/brq;->a:Landroid/content/pm/ComponentInfo;

    iget-object p2, p2, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-static {v1, p1, p2, v0}, Lg/fso;->ae(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Z)V

    goto :goto_3

    :cond_4
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iget-object p2, v2, Lg/brq;->a:Landroid/content/pm/ComponentInfo;

    iget-object v3, p2, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object p2, p2, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v3, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lg/fgj;->e()Lg/fgj;

    move-result-object v4

    iget-object p2, v0, Lg/anh;->c:Ljava/lang/Object;

    move-object v5, p2

    check-cast v5, Landroid/content/Context;

    const/high16 p2, 0x10000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v7, 0x0

    invoke-virtual/range {v4 .. v9}, Lg/fgj;->g(Landroid/content/Context;Landroid/content/Intent;ZZZ)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, v2, Lg/brq;->a:Landroid/content/pm/ComponentInfo;

    iget-boolean p1, p1, Landroid/content/pm/ComponentInfo;->exported:Z

    if-eqz p1, :cond_5

    const p1, 0x7f120459

    goto :goto_2

    :cond_5
    const p1, 0x7f1203a6

    :goto_2
    invoke-static {v1, p1}, Lg/gm;->f(Landroid/content/Context;I)V

    :cond_6
    :goto_3
    return-void

    :pswitch_8
    iget-object p1, p0, Lg/fgw;->b:Ljava/lang/Object;

    check-cast p1, Lg/eib;

    iget-object p1, p1, Lg/eib;->bc:Lg/eib;

    invoke-static {p1}, Lg/ern;->g(Landroid/content/Context;)Z

    const-class p1, Lg/eib;

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lg/fgw;->b:Ljava/lang/Object;

    check-cast p2, Lg/eib;

    const/4 v0, 0x1

    iput-boolean v0, p2, Lg/eib;->ay:Z

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    move-object p2, v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
