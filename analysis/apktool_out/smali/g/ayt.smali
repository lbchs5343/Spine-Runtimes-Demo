.class public final synthetic Lg/ayt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lg/csg;

.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(Lg/csg;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/ayt;->a:Lg/csg;

    iput-wide p2, p0, Lg/ayt;->b:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lg/ayt;->a:Lg/csg;

    iget-object v0, v0, Lg/csg;->b:Ljava/lang/Object;

    check-cast v0, Lg/ark;

    iget-object v1, v0, Lg/ark;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lg/ark;->w()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_1

    const-string v1, "permission_required"

    invoke-virtual {v0, v2, v3, v1}, Lg/ark;->aa(ZLjava/lang/Throwable;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {v0}, Lg/ark;->ab()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3, v3}, Lg/ark;->aa(ZLjava/lang/Throwable;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lg/ayt;->b:J

    cmp-long v1, v3, v5

    if-ltz v1, :cond_3

    new-instance v1, Ljava/io/IOException;

    const-string v3, "Accessibility service did not bind"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    const-string v3, "accessibility_bind_timeout"

    invoke-virtual {v0, v2, v1, v3}, Lg/ark;->aa(ZLjava/lang/Throwable;Ljava/lang/String;)V

    return-void

    :cond_3
    iget-object v1, v0, Lg/ark;->m:Landroid/os/Handler;

    iget-object v0, v0, Lg/ark;->l:Lg/ayt;

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
