.class public final Lg/yr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lg/coi;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/yr;->b:Ljava/lang/String;

    sget-object p1, Lg/coi;->d:Lg/coi;

    iput-object p1, p0, Lg/yr;->a:Lg/coi;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 3

    check-cast p1, Lg/yr;

    iget-object v0, p0, Lg/yr;->a:Lg/coi;

    invoke-virtual {v0}, Lg/coi;->b()I

    move-result v1

    iget-object v2, p1, Lg/yr;->a:Lg/coi;

    invoke-virtual {v2}, Lg/coi;->b()I

    move-result v2

    if-ge v1, v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-virtual {v0}, Lg/coi;->b()I

    move-result v0

    iget-object p1, p1, Lg/yr;->a:Lg/coi;

    invoke-virtual {p1}, Lg/coi;->b()I

    move-result p1

    if-le v0, p1, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final run()V
    .locals 3

    :try_start_0
    new-instance v0, Lg/dcq;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, Lg/dcq;-><init>(I)V

    const-string v1, "data"

    iget-object v2, p0, Lg/yr;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lg/dcq;->j(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "userdefine"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lg/dcq;->j(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lg/duw;->a:Lg/duw;

    if-eqz v1, :cond_1

    sget-object v1, Lg/duw;->a:Lg/duw;

    sget-object v2, Lg/azu;->ia:Lg/azu;

    invoke-virtual {v1, v2, v0}, Lg/duw;->t(Lg/azu;Lg/dcq;)Lg/dcq;

    move-result-object v0

    invoke-static {}, Lg/bnc;->c()Lg/bnc;

    move-result-object v1

    iget-object v0, v0, Lg/dcq;->f:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lg/dyn;

    const/16 v2, 0xb

    invoke-direct {v1, v2, v0}, Lg/dyn;-><init>(ILjava/lang/Object;)V

    new-instance v0, Lcom/bytedance/sdk/component/o/p/ox;

    const-string v2, "hreadExecutor"

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/component/o/p/ox;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/o/p/ox;->start()V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CrashContextAssembly not init"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    :goto_0
    return-void
.end method
