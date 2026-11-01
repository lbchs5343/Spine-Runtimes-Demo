.class public final Lg/gkp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final synthetic d:I

.field public final e:Z


# direct methods
.method public constructor <init>(Lg/egu;Lg/aci;ZI)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lg/gkp;->d:I

    const-string v0, "processor"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/gkp;->b:Ljava/lang/Object;

    iput-object p2, p0, Lg/gkp;->c:Ljava/lang/Object;

    iput-boolean p3, p0, Lg/gkp;->e:Z

    iput p4, p0, Lg/gkp;->a:I

    return-void
.end method

.method public constructor <init>(Lg/elf;IZLg/get;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lg/gkp;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/gkp;->c:Ljava/lang/Object;

    iput p2, p0, Lg/gkp;->a:I

    iput-boolean p3, p0, Lg/gkp;->e:Z

    iput-object p4, p0, Lg/gkp;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, Lg/gkp;->d:I

    packed-switch v0, :pswitch_data_0

    iget-boolean v0, p0, Lg/gkp;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/gkp;->b:Ljava/lang/Object;

    check-cast v0, Lg/egu;

    iget-object v1, p0, Lg/gkp;->c:Ljava/lang/Object;

    check-cast v1, Lg/aci;

    iget v2, p0, Lg/gkp;->a:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Lg/aci;->a:Lg/gxm;

    iget-object v1, v1, Lg/gxm;->a:Ljava/lang/String;

    iget-object v3, v0, Lg/egu;->c:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-virtual {v0, v1}, Lg/egu;->s(Ljava/lang/String;)Lg/dly;

    move-result-object v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v2}, Lg/egu;->m(Lg/dly;I)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    iget-object v0, p0, Lg/gkp;->b:Ljava/lang/Object;

    check-cast v0, Lg/egu;

    iget-object v1, p0, Lg/gkp;->c:Ljava/lang/Object;

    check-cast v1, Lg/aci;

    iget v2, p0, Lg/gkp;->a:I

    invoke-virtual {v0, v1, v2}, Lg/egu;->t(Lg/aci;I)V

    :goto_0
    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v0

    const-string v1, "StopWorkRunnable"

    invoke-static {v1}, Lg/cyl;->g(Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lg/gkp;->c:Ljava/lang/Object;

    check-cast v1, Lg/aci;

    iget-object v1, v1, Lg/aci;->a:Lg/gxm;

    iget-object v1, v1, Lg/gxm;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mct is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lg/gkp;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", is uca "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lg/gkp;->e:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lg/erl;->y(Ljava/lang/String;)V

    iget-object v0, p0, Lg/gkp;->c:Ljava/lang/Object;

    check-cast v0, Lg/elf;

    const v3, 0x7f09030f

    invoke-virtual {v0, v3}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    const v1, 0x7f1203d0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v5, v0, Lg/elf;->aa:Lg/elf;

    invoke-static {v5, v1}, Lg/cdy;->g(Lg/elf;I)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v4

    const v1, 0x7f120201

    invoke-virtual {v0, v1, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v4, -0x2

    :goto_2
    iget-object v1, p0, Lg/gkp;->b:Ljava/lang/Object;

    check-cast v1, Lg/get;

    const v2, 0x7f120384

    invoke-static {v3, v0, v4, v2, v1}, Lg/afo;->ar(Landroid/view/View;Ljava/lang/CharSequence;IILandroid/view/View$OnClickListener;)Lg/sd;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
