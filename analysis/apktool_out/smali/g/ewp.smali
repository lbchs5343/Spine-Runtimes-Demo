.class public final Lg/ewp;
.super Lg/bin;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lg/aje;->a:Lg/aje;

    invoke-direct {p0, v0}, Lg/ewp;-><init>(Lg/bin;)V

    return-void
.end method

.method public constructor <init>(Lg/bin;)V
    .locals 1

    const-string v0, "initialExtras"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lg/bin;-><init>()V

    iget-object v0, p0, Lg/bin;->b:Ljava/util/LinkedHashMap;

    iget-object p1, p1, Lg/bin;->b:Ljava/util/LinkedHashMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method
