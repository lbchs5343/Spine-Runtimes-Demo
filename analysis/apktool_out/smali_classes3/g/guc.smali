.class public final Lg/guc;
.super Lg/axr;
.source "SourceFile"

# interfaces
.implements Lg/cvw;


# instance fields
.field final synthetic $peerCertificatesFn:Lg/cvw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/cvw;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg/cvw;)V
    .locals 0

    iput-object p1, p0, Lg/guc;->$peerCertificatesFn:Lg/cvw;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lg/axr;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lg/guc;->$peerCertificatesFn:Lg/cvw;

    invoke-interface {v0}, Lg/cvw;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    sget-object v0, Lg/fai;->a:Lg/fai;

    return-object v0
.end method
