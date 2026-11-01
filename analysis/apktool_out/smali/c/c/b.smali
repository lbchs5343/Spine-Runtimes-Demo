.class public Lc/c/b;
.super Lg/doq;
.source "SourceFile"


# static fields
.field public static final synthetic j:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lg/efx;-><init>()V

    return-void
.end method


# virtual methods
.method public final ab()Ljava/lang/String;
    .locals 1

    const-string v0, "apk"

    return-object v0
.end method

.method public final e(Lg/efx;Z)Lg/csm;
    .locals 3

    new-instance v0, Lg/eas;

    iget-object v1, p0, Lg/doq;->ah:Lg/eqi;

    const/4 v2, 0x0

    invoke-direct {v0, p1, p2, v1, v2}, Lg/eas;-><init>(Lg/efx;ZLg/eqi;I)V

    iput-object v0, p0, Lg/doq;->ad:Lg/eas;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/efx;->bb:Lg/efx;

    invoke-static {v0}, Lg/fml;->g(Lg/efx;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/efx;->bb:Lg/efx;

    invoke-static {v0}, Lg/fml;->b(Lg/efx;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/efx;->bb:Lg/efx;

    invoke-static {v0}, Lg/fml;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final r()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lg/efx;->bb:Lg/efx;

    invoke-static {v1}, Lg/acw;->bk(Lg/cms;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v2, "apk"

    invoke-static {v0, v1, v2}, Lg/awf;->ad(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final t()V
    .locals 2

    iget-object v0, p0, Lg/efx;->bb:Lg/efx;

    const v1, 0x7f120096

    invoke-static {v0, v1}, Lg/gm;->f(Landroid/content/Context;I)V

    return-void
.end method

.method public final u()V
    .locals 5

    iget-object v0, p0, Lg/doq;->ae:Lg/auj;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lg/auj;->h:Ljava/lang/String;

    invoke-static {v0}, Lg/hca;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lc/c/b;->t()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lg/doq;->s()V

    iget-object v0, p0, Lg/doq;->ae:Lg/auj;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lg/auj;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lg/ffb;->as()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lg/gfh;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-direct {v2, v3, p0, v0, v4}, Lg/gfh;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lg/doq;->x()V

    invoke-virtual {p0}, Lg/doq;->x()V

    iget-object v0, p0, Lg/efx;->bb:Lg/efx;

    const v1, 0x7f1203f0

    invoke-static {v0, v1}, Lg/gm;->f(Landroid/content/Context;I)V

    return-void
.end method
