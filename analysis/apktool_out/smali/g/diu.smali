.class public final Lg/diu;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg/dba;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lg/diu;

    invoke-static {v0}, Lg/dsr;->k(Ljava/lang/Class;)Lg/dba;

    move-result-object v0

    sput-object v0, Lg/diu;->a:Lg/dba;

    return-void
.end method

.method public static b(Lg/fza;Lg/amj;)Z
    .locals 2

    invoke-static {p1}, Lg/gs;->z(Lg/amj;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    instance-of v0, p1, Lg/fza;

    if-eqz v0, :cond_0

    check-cast p1, Lg/fza;

    invoke-static {p1}, Lg/ffb;->cf(Lg/fza;)Lg/fza;

    move-result-object p1

    if-ne p1, p0, :cond_4

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lg/cfm;

    if-eqz v0, :cond_3

    check-cast p1, Lg/cfm;

    invoke-interface {p1}, Lg/cfm;->x()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/amj;

    invoke-static {p0, v0}, Lg/diu;->b(Lg/fza;Lg/amj;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_3
    sget-object p0, Lg/diu;->a:Lg/dba;

    const-string p1, "Unexpected container type in switch"

    invoke-interface {p0, p1}, Lg/dba;->o(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return v1
.end method

.method public static c(Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/fza;

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Lg/fza;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/fza;

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
