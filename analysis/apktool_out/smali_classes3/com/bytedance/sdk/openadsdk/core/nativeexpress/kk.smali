.class public Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kk;
.super Ljava/lang/Object;

# interfaces
.implements Lg/dbw;
.implements Lcom/bytedance/sdk/component/adexpress/d/kk;


# instance fields
.field private d:Ljava/lang/String;

.field private dq:Lcom/bytedance/sdk/openadsdk/iw/dq;

.field private iw:J

.field private mn:Lcom/bytedance/sdk/openadsdk/q/ia;

.field private ox:Lcom/bytedance/sdk/openadsdk/core/r/j;

.field private p:Ljava/lang/String;

.field private s:J


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/iw/dq;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kk;->dq:Lcom/bytedance/sdk/openadsdk/iw/dq;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kk;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kk;->p:Ljava/lang/String;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kk;->ox:Lcom/bytedance/sdk/openadsdk/core/r/j;

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kk;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kk;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kk;)Lcom/bytedance/sdk/openadsdk/core/r/j;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kk;->ox:Lcom/bytedance/sdk/openadsdk/core/r/j;

    return-object p0
.end method

.method public static synthetic ox(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kk;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kk;->p:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kk;->dq:Lcom/bytedance/sdk/openadsdk/iw/dq;

    const-string v1, "ugen_sub_analysis_end"

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/iw/p/dq;->p(Ljava/lang/String;)V

    return-void
.end method

.method public d(I)V
    .locals 1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kk;->dq:Lcom/bytedance/sdk/openadsdk/iw/dq;

    const-string v0, "dynamic_sub_analysis2_start"

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/iw/p/dq;->d(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kk;->dq:Lcom/bytedance/sdk/openadsdk/iw/dq;

    const-string v0, "dynamic_sub_analysis_start"

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/iw/p/dq;->d(Ljava/lang/String;)V

    return-void
.end method

.method public d(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kk;->dq:Lcom/bytedance/sdk/openadsdk/iw/dq;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/iw/p/p;->dq(I)V

    return-void
.end method

.method public dq()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kk;->dq:Lcom/bytedance/sdk/openadsdk/iw/dq;

    const-string v1, "ugen_render_start"

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/iw/p/dq;->p(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kk;->dq:Lcom/bytedance/sdk/openadsdk/iw/dq;

    const-string v1, "ugen_sub_analysis_start"

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/iw/p/dq;->p(Ljava/lang/String;)V

    return-void
.end method

.method public dq(I)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kk;->s:J

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kk;->dq:Lcom/bytedance/sdk/openadsdk/iw/dq;

    const-string v0, "dynamic_render2_start"

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/iw/p/dq;->dq(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kk;->dq:Lcom/bytedance/sdk/openadsdk/iw/dq;

    const-string v0, "dynamic_render_start"

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/iw/p/dq;->dq(Ljava/lang/String;)V

    return-void
.end method

.method public dq(IILjava/lang/String;Z)V
    .locals 0

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kk;->dq:Lcom/bytedance/sdk/openadsdk/iw/dq;

    const/4 p4, 0x1

    invoke-interface {p3, p4}, Lcom/bytedance/sdk/openadsdk/iw/dq;->dq(Z)V

    const/4 p3, 0x3

    if-ne p1, p3, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kk;->dq:Lcom/bytedance/sdk/openadsdk/iw/dq;

    const-string p3, "dynamic_render2_error"

    invoke-interface {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/iw/p/dq;->d(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kk;->dq:Lcom/bytedance/sdk/openadsdk/iw/dq;

    const-string p3, "dynamic_render_error"

    invoke-interface {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/iw/p/dq;->d(ILjava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kk;->d:Ljava/lang/String;

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kk;->p:Ljava/lang/String;

    iget-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kk;->ox:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {p2, p1, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ia;->dq(ILjava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    return-void
.end method

.method public dq(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kk;->dq:Lcom/bytedance/sdk/openadsdk/iw/dq;

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/iw/p/ox;->dq(ILjava/lang/String;)V

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kk;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kk;->p:Ljava/lang/String;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kk;->ox:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {p1, p2, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ia;->dq(ILjava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kk;->mn:Lcom/bytedance/sdk/openadsdk/q/ia;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kk;->ox:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x69

    const/4 v1, 0x1

    invoke-virtual {p1, v1, p2, v0}, Lcom/bytedance/sdk/openadsdk/q/ia;->dq(ZLjava/lang/String;I)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/q/ia;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kk;->mn:Lcom/bytedance/sdk/openadsdk/q/ia;

    return-void
.end method

.method public dq(Lg/tr;)V
    .locals 2

    iget p1, p1, Lg/tr;->a:I

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kk;->dq:Lcom/bytedance/sdk/openadsdk/iw/dq;

    const-string v0, "ugen_sub_render_end"

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/iw/p/dq;->p(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kk;->dq:Lcom/bytedance/sdk/openadsdk/iw/dq;

    const-string v0, "ugen_render_success"

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/iw/p/dq;->s(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kk;->dq:Lcom/bytedance/sdk/openadsdk/iw/dq;

    const-string v1, "ugen_render_error"

    invoke-interface {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/iw/p/dq;->ox(ILjava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kk;->dq:Lcom/bytedance/sdk/openadsdk/iw/dq;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/iw/dq;->dq(Z)V

    return-void
.end method

.method public dq(Z)V
    .locals 0

    return-void
.end method

.method public ia()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kk;->dq:Lcom/bytedance/sdk/openadsdk/iw/dq;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/iw/p/ox;->d()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kk;->mn:Lcom/bytedance/sdk/openadsdk/q/ia;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kk;->ox:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/q/ia;->ia(Ljava/lang/String;)V

    return-void
.end method

.method public ig()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kk;->dq:Lcom/bytedance/sdk/openadsdk/iw/dq;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/iw/p/ox;->q()V

    return-void
.end method

.method public iw()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kk;->dq:Lcom/bytedance/sdk/openadsdk/iw/dq;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/iw/p/ox;->dq()V

    return-void
.end method

.method public iw(I)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kk;->iw:J

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kk;->dq:Lcom/bytedance/sdk/openadsdk/iw/dq;

    const-string v0, "dynamic_render2_success"

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/iw/p/dq;->ox(Ljava/lang/String;)V

    const-string p1, "dynamic2_render"

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kk;->dq:Lcom/bytedance/sdk/openadsdk/iw/dq;

    const-string v0, "dynamic_render_success"

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/iw/p/dq;->ox(Ljava/lang/String;)V

    const-string p1, "dynamic_backup_native_render"

    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kk;->dq:Lcom/bytedance/sdk/openadsdk/iw/dq;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/iw/dq;->dq(Z)V

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kk$1;

    const-string v1, "dynamic_success"

    invoke-direct {v0, p0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kk$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kk;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/o/mn;->ox(Lcom/bytedance/sdk/component/o/kk;)V

    return-void
.end method

.method public kk()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kk;->dq:Lcom/bytedance/sdk/openadsdk/iw/dq;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/iw/p/d;->ox()V

    return-void
.end method

.method public mn()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kk;->mn:Lcom/bytedance/sdk/openadsdk/q/ia;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kk;->ox:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kx;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/q/ia;->mn(Ljava/lang/String;)V

    return-void
.end method

.method public mp()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kk;->dq:Lcom/bytedance/sdk/openadsdk/iw/dq;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/iw/p/ox;->d()V

    return-void
.end method

.method public no()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kk;->dq:Lcom/bytedance/sdk/openadsdk/iw/dq;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/iw/dq;->dq(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kk;->dq:Lcom/bytedance/sdk/openadsdk/iw/dq;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/iw/p/d;->mp()V

    return-void
.end method

.method public o()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kk;->dq:Lcom/bytedance/sdk/openadsdk/iw/dq;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/iw/dq;->dq(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kk;->dq:Lcom/bytedance/sdk/openadsdk/iw/dq;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/iw/p/d;->s()V

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kk$2;

    const-string v1, "native_success"

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kk$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kk;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/o/mn;->ox(Lcom/bytedance/sdk/component/o/kk;)V

    return-void
.end method

.method public ox()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kk;->dq:Lcom/bytedance/sdk/openadsdk/iw/dq;

    const-string v1, "ugen_sub_render_start"

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/iw/p/dq;->p(Ljava/lang/String;)V

    return-void
.end method

.method public ox(I)V
    .locals 1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kk;->dq:Lcom/bytedance/sdk/openadsdk/iw/dq;

    const-string v0, "dynamic_sub_analysis2_end"

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/iw/p/dq;->d(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kk;->dq:Lcom/bytedance/sdk/openadsdk/iw/dq;

    const-string v0, "dynamic_sub_analysis_end"

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/iw/p/dq;->d(Ljava/lang/String;)V

    return-void
.end method

.method public p()V
    .locals 0

    return-void
.end method

.method public p(I)V
    .locals 1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kk;->dq:Lcom/bytedance/sdk/openadsdk/iw/dq;

    const-string v0, "dynamic_sub_render2_start"

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/iw/p/dq;->d(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kk;->dq:Lcom/bytedance/sdk/openadsdk/iw/dq;

    const-string v0, "dynamic_sub_render_start"

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/iw/p/dq;->d(Ljava/lang/String;)V

    return-void
.end method

.method public q()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kk;->dq:Lcom/bytedance/sdk/openadsdk/iw/dq;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/iw/dq;->f()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kk;->dq:Lcom/bytedance/sdk/openadsdk/iw/dq;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/iw/dq;->fw()V

    return-void
.end method

.method public s()V
    .locals 0

    return-void
.end method

.method public s(I)V
    .locals 1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kk;->dq:Lcom/bytedance/sdk/openadsdk/iw/dq;

    const-string v0, "dynamic_sub_render2_end"

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/iw/p/dq;->d(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kk;->dq:Lcom/bytedance/sdk/openadsdk/iw/dq;

    const-string v0, "dynamic_sub_render_end"

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/iw/p/dq;->d(Ljava/lang/String;)V

    return-void
.end method
