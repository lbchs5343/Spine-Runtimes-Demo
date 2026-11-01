.class public final Lg/aln;
.super Lg/axr;
.source "SourceFile"

# interfaces
.implements Lg/cvw;


# instance fields
.field final synthetic $hostname:Ljava/lang/String;

.field final synthetic $peerCertificates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lg/bws;


# direct methods
.method public constructor <init>(Lg/bws;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lg/aln;->this$0:Lg/bws;

    iput-object p2, p0, Lg/aln;->$peerCertificates:Ljava/util/List;

    iput-object p3, p0, Lg/aln;->$hostname:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lg/axr;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lg/aln;->this$0:Lg/bws;

    iget-object v0, v0, Lg/bws;->c:Lg/aky;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lg/aln;->$peerCertificates:Ljava/util/List;

    iget-object v2, p0, Lg/aln;->$hostname:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lg/aky;->ap(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lg/aln;->$peerCertificates:Ljava/util/List;

    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Lg/bkk;->a(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/Certificate;

    const-string v3, "null cannot be cast to non-null type java.security.cert.X509Certificate"

    invoke-static {v2, v3}, Lg/bff;->ag(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/security/cert/X509Certificate;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object v1
.end method
