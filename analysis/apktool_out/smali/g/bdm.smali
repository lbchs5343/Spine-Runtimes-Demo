.class public final Lg/bdm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/cx;


# instance fields
.field public final synthetic b:Lg/dqe;

.field public final synthetic c:Z

.field public final synthetic d:Z


# direct methods
.method public constructor <init>(Lg/dqe;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/bdm;->b:Lg/dqe;

    iput-boolean p2, p0, Lg/bdm;->c:Z

    iput-boolean p3, p0, Lg/bdm;->d:Z

    return-void
.end method


# virtual methods
.method public final a(Lg/dkp;)V
    .locals 1

    iget-boolean v0, p0, Lg/bdm;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lg/bdm;->b:Lg/dqe;

    invoke-static {v0}, Lg/dqe;->c(Lg/dqe;)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lg/dkp;->_ci()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lg/dkp;->_ci()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 5

    check-cast p1, Lg/fjv;

    iget-boolean v0, p0, Lg/bdm;->c:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lg/fjv;->isForce()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iget-object v3, p0, Lg/bdm;->b:Lg/dqe;

    if-nez v0, :cond_2

    invoke-static {v3}, Lg/dqe;->c(Lg/dqe;)V

    :cond_2
    iget-boolean v4, p0, Lg/bdm;->d:Z

    invoke-static {v3, v4}, Lg/dqe;->e(Lg/dqe;Z)Z

    move-result v4

    if-eqz v4, :cond_3

    return-void

    :cond_3
    invoke-virtual {v3, p1, v1, v2, v0}, Lg/dqe;->p(Lg/fjv;ZZZ)V

    return-void
.end method
