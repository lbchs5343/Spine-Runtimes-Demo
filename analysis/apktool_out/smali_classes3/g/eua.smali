.class public final Lg/eua;
.super Lg/axr;
.source "SourceFile"

# interfaces
.implements Lg/cvw;


# instance fields
.field final synthetic $address:Lg/cbm;

.field final synthetic $certificatePinner:Lg/bws;

.field final synthetic $unverifiedHandshake:Lg/czl;


# direct methods
.method public constructor <init>(Lg/bws;Lg/czl;Lg/cbm;)V
    .locals 0

    iput-object p1, p0, Lg/eua;->$certificatePinner:Lg/bws;

    iput-object p2, p0, Lg/eua;->$unverifiedHandshake:Lg/czl;

    iput-object p3, p0, Lg/eua;->$address:Lg/cbm;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lg/axr;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lg/eua;->$certificatePinner:Lg/bws;

    iget-object v0, v0, Lg/bws;->c:Lg/aky;

    invoke-static {v0}, Lg/bff;->d(Ljava/lang/Object;)V

    iget-object v1, p0, Lg/eua;->$unverifiedHandshake:Lg/czl;

    invoke-virtual {v1}, Lg/czl;->e()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lg/eua;->$address:Lg/cbm;

    iget-object v2, v2, Lg/cbm;->a:Lg/eyn;

    iget-object v2, v2, Lg/eyn;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lg/aky;->ap(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
