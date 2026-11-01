.class public final Lg/bov;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/emz;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lg/ffr;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/bov;->a:Ljava/lang/String;

    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lg/fpt;->b:Lg/ffr;

    goto :goto_0

    :cond_0
    new-instance p1, Lg/dbm;

    const/4 v0, 0x5

    invoke-direct {p1, v0}, Lg/dbm;-><init>(I)V

    invoke-static {p1}, Lj$/util/Comparator$a;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object p1

    invoke-static {p1}, Lj$/util/Comparator$b;->reversed(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object p1

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {v0, p3}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    new-instance p1, Lg/ffr;

    const/4 p3, 0x3

    invoke-direct {p1, p2, p3, v0}, Lg/ffr;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    :goto_0
    iput-object p1, p0, Lg/bov;->b:Lg/ffr;

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/bov;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Lg/ffr;
    .locals 1

    iget-object v0, p0, Lg/bov;->b:Lg/ffr;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/bov;->a:Ljava/lang/String;

    return-object v0
.end method
