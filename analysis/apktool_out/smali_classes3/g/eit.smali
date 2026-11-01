.class public abstract Lg/eit;
.super Lg/adw;
.source "SourceFile"

# interfaces
.implements Lg/cqh;


# instance fields
.field public final as:Ljava/util/Set;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;ILg/daw;Lg/fwr;Lg/dko;)V
    .locals 9

    invoke-static {p1}, Lg/bxk;->j(Landroid/content/Context;)Lg/bxk;

    move-result-object v3

    sget-object v4, Lg/awe;->a:Lg/awe;

    invoke-static {p5}, Lg/ckd;->k(Ljava/lang/Object;)V

    invoke-static {p6}, Lg/ckd;->k(Ljava/lang/Object;)V

    new-instance v6, Lg/eie;

    const/16 v0, 0x17

    invoke-direct {v6, v0, p5}, Lg/eie;-><init>(ILjava/lang/Object;)V

    new-instance v7, Lg/emr;

    const/16 p5, 0x17

    invoke-direct {v7, p5, p6}, Lg/emr;-><init>(ILjava/lang/Object;)V

    iget-object p5, p4, Lg/daw;->b:Ljava/lang/Object;

    move-object v8, p5

    check-cast v8, Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v8}, Lg/adw;-><init>(Landroid/content/Context;Landroid/os/Looper;Lg/bxk;Lg/gna;ILg/bjb;Lg/lb;Ljava/lang/String;)V

    iget-object p1, p4, Lg/daw;->f:Ljava/lang/Object;

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/common/api/Scope;

    invoke-interface {p1, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Expanding scopes is not permitted, use implied scopes instead"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iput-object p1, v0, Lg/eit;->as:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final _bd()Ljava/util/Set;
    .locals 1

    invoke-virtual {p0}, Lg/adw;->requiresSignIn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/eit;->as:Ljava/util/Set;

    return-object v0

    :cond_0
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object v0
.end method

.method public final am()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lg/eit;->as:Ljava/util/Set;

    return-object v0
.end method

.method public final getAccount()Landroid/accounts/Account;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
