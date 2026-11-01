.class public final Lg/ggy;
.super Lg/aov;
.source "SourceFile"


# instance fields
.field public final n:Ljava/lang/Object;

.field public final o:Lg/czr;

.field public final p:Lg/fyw;

.field public final q:Lg/etn;


# direct methods
.method public constructor <init>(Lg/fyw;Lg/etn;Lg/czr;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lg/bfw;-><init>()V

    iput-object p1, p0, Lg/ggy;->p:Lg/fyw;

    iput-object p2, p0, Lg/ggy;->q:Lg/etn;

    iput-object p3, p0, Lg/ggy;->o:Lg/czr;

    iput-object p4, p0, Lg/ggy;->n:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Throwable;)V
    .locals 7

    iget-object p1, p0, Lg/ggy;->o:Lg/czr;

    invoke-static {p1}, Lg/fyw;->aa(Lg/bfw;)Lg/czr;

    move-result-object p1

    iget-object v0, p0, Lg/ggy;->p:Lg/fyw;

    iget-object v1, p0, Lg/ggy;->q:Lg/etn;

    iget-object v2, p0, Lg/ggy;->n:Ljava/lang/Object;

    if-eqz p1, :cond_2

    :cond_0
    iget-object v3, p1, Lg/czr;->n:Lg/fyw;

    new-instance v4, Lg/ggy;

    invoke-direct {v4, v0, v1, p1, v2}, Lg/ggy;-><init>(Lg/fyw;Lg/etn;Lg/czr;Ljava/lang/Object;)V

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v3, v5, v4, v6}, Lg/kj;->m(Lg/dta;ZLg/aov;I)Lg/edw;

    move-result-object v3

    sget-object v4, Lg/asb;->a:Lg/asb;

    if-eq v3, v4, :cond_1

    return-void

    :cond_1
    invoke-static {p1}, Lg/fyw;->aa(Lg/bfw;)Lg/czr;

    move-result-object p1

    if-nez p1, :cond_0

    :cond_2
    invoke-virtual {v0, v1, v2}, Lg/fyw;->ak(Lg/etn;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lg/fyw;->m(Ljava/lang/Object;)V

    return-void
.end method
