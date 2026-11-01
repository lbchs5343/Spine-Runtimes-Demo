.class public final Lg/bnz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/eue;


# instance fields
.field public final a:Ljava/util/EnumMap;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lg/afa;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lg/bnz;->a:Ljava/util/EnumMap;

    return-void
.end method

.method public static b(Lg/ebh;Lg/afa;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lg/acq;->bk:Lg/acq;

    iget-object v1, p0, Lg/lh;->l:Lg/sm;

    invoke-virtual {v1, v0}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v0

    check-cast v0, Lg/bnz;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lg/bnz;

    invoke-direct {v0}, Lg/bnz;-><init>()V

    invoke-virtual {p0, v0}, Lg/lh;->m(Lg/eue;)V

    :goto_0
    iget-object p0, v0, Lg/bnz;->a:Ljava/util/EnumMap;

    new-instance v0, Lg/gpn;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lg/gpn;-><init>(I)V

    invoke-static {p0, p1, v0}, Lj$/util/Map$b;->computeIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    invoke-interface {p0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lg/bnz;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lg/fky;
    .locals 1

    sget-object v0, Lg/acq;->bk:Lg/acq;

    return-object v0
.end method

.method public final synthetic e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JadxCommentsAttr{\n "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lg/bnz;->a:Ljava/util/EnumMap;

    invoke-virtual {v1}, Ljava/util/EnumMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    new-instance v2, Lg/gpn;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lg/gpn;-><init>(I)V

    const-string v3, "\n "

    invoke-static {v1, v3, v2}, Lg/evh;->d(Ljava/lang/Iterable;Ljava/lang/String;Ljava/util/function/Function;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
