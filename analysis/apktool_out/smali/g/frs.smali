.class public final Lg/frs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/eue;


# instance fields
.field public final a:Lg/acq;

.field public final b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lg/acq;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg/frs;->b:Ljava/util/ArrayList;

    iput-object p1, p0, Lg/frs;->a:Lg/acq;

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lg/frs;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lg/fky;
    .locals 1

    iget-object v0, p0, Lg/frs;->a:Lg/acq;

    return-object v0
.end method

.method public final synthetic e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    const-string v0, ", "

    iget-object v1, p0, Lg/frs;->b:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lg/evh;->h(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x12c

    if-le v2, v3, :cond_0

    const-string v0, "\n    "

    invoke-static {v0, v1}, Lg/evh;->h(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method
