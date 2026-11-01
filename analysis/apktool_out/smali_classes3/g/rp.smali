.class public final Lg/rp;
.super Lg/axr;
.source "SourceFile"

# interfaces
.implements Lg/cvw;


# instance fields
.field final synthetic this$0:Lg/gba;


# direct methods
.method public constructor <init>(Lg/gba;)V
    .locals 0

    iput-object p1, p0, Lg/rp;->this$0:Lg/gba;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lg/axr;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lg/rp;->this$0:Lg/gba;

    iget-object v0, v0, Lg/gba;->j:Lg/czl;

    invoke-static {v0}, Lg/bff;->d(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lg/czl;->e()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Lg/bkk;->a(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/Certificate;

    const-string v3, "null cannot be cast to non-null type java.security.cert.X509Certificate"

    invoke-static {v2, v3}, Lg/bff;->ag(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/security/cert/X509Certificate;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method
