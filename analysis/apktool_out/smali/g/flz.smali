.class public final Lg/flz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final d:Lg/egu;

.field private final e:Lg/ccc;


# direct methods
.method public constructor <init>(Lg/egu;Lg/ccc;)V
    .locals 1

    const-string v0, "processor"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workTaskExecutor"

    invoke-static {p2, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/flz;->d:Lg/egu;

    iput-object p2, p0, Lg/flz;->e:Lg/ccc;

    return-void
.end method

.method public static synthetic a(Lg/flz;Lg/aci;Lg/dsp;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lg/flz;->f(Lg/flz;Lg/aci;Lg/dsp;)V

    return-void
.end method

.method private static final f(Lg/flz;Lg/aci;Lg/dsp;)V
    .locals 0

    iget-object p0, p0, Lg/flz;->d:Lg/egu;

    invoke-virtual {p0, p1, p2}, Lg/egu;->r(Lg/aci;Lg/dsp;)Z

    return-void
.end method


# virtual methods
.method public b(Lg/aci;I)V
    .locals 4

    const-string v0, "workSpecId"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lg/flz;->e:Lg/ccc;

    new-instance v1, Lg/gkp;

    iget-object v2, p0, Lg/flz;->d:Lg/egu;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3, p2}, Lg/gkp;-><init>(Lg/egu;Lg/aci;ZI)V

    check-cast v0, Lg/gkr;

    invoke-virtual {v0, v1}, Lg/gkr;->s(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Lg/aci;Lg/dsp;)V
    .locals 3

    const-string v0, "workSpecId"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lg/flz;->e:Lg/ccc;

    new-instance v1, Lg/gtt;

    const/4 v2, 0x7

    invoke-direct {v1, p0, p1, p2, v2}, Lg/gtt;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    check-cast v0, Lg/gkr;

    invoke-virtual {v0, v1}, Lg/gkr;->s(Ljava/lang/Runnable;)V

    return-void
.end method
