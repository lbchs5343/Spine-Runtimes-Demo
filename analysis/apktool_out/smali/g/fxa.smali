.class public final Lg/fxa;
.super Lg/axr;
.source "SourceFile"

# interfaces
.implements Lg/cvw;


# instance fields
.field final synthetic $name:Ljava/lang/String;

.field final synthetic $this_enqueueUniquelyNamedPeriodic:Lg/fxb;

.field final synthetic $workRequest:Lg/dze;


# direct methods
.method public constructor <init>(Lg/dze;Lg/fxb;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lg/fxa;->$workRequest:Lg/dze;

    iput-object p2, p0, Lg/fxa;->$this_enqueueUniquelyNamedPeriodic:Lg/fxb;

    iput-object p3, p0, Lg/fxa;->$name:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lg/axr;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lg/fxa;->$workRequest:Lg/dze;

    invoke-static {v0}, Lg/cro;->r(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    new-instance v1, Lg/pc;

    iget-object v2, p0, Lg/fxa;->$this_enqueueUniquelyNamedPeriodic:Lg/fxb;

    iget-object v3, p0, Lg/fxa;->$name:Ljava/lang/String;

    sget-object v4, Lg/dne;->KEEP:Lg/dne;

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lg/pc;-><init>(Lg/fxb;Ljava/lang/String;Lg/dne;Ljava/util/List;I)V

    invoke-static {v1}, Lg/dna;->b(Lg/pc;)V

    sget-object v0, Lg/dgi;->a:Lg/dgi;

    return-object v0
.end method
