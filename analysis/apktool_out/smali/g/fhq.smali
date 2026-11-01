.class public final Lg/fhq;
.super Lg/fyw;
.source "SourceFile"


# instance fields
.field public final a:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lg/fyw;-><init>(Z)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lg/fyw;->aq(Lg/dta;)V

    sget-object v2, Lg/fyw;->z:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/fzw;

    instance-of v4, v3, Lg/czr;

    if-eqz v4, :cond_0

    check-cast v3, Lg/czr;

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    const/4 v4, 0x0

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lg/aov;->e()Lg/fyw;

    move-result-object v3

    :goto_1
    invoke-virtual {v3}, Lg/fyw;->_cm()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/fzw;

    instance-of v5, v3, Lg/czr;

    if-eqz v5, :cond_2

    check-cast v3, Lg/czr;

    goto :goto_2

    :cond_2
    move-object v3, v1

    :goto_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lg/aov;->e()Lg/fyw;

    move-result-object v3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_3
    iput-boolean v0, p0, Lg/fhq;->a:Z

    return-void
.end method


# virtual methods
.method public final _cm()Z
    .locals 1

    iget-boolean v0, p0, Lg/fhq;->a:Z

    return v0
.end method
