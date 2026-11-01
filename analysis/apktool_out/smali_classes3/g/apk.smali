.class public final Lg/apk;
.super Lg/bke;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lg/bkj;Lg/eem;Ljava/lang/reflect/Type;Lg/bke;Ljava/lang/reflect/Type;Lg/bke;)V
    .locals 0

    const/4 p1, 0x1

    iput p1, p0, Lg/apk;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lg/dpq;

    invoke-direct {p1, p3, p2, p4}, Lg/dpq;-><init>(Ljava/lang/reflect/Type;Lg/eem;Lg/bke;)V

    new-instance p1, Lg/dpq;

    invoke-direct {p1, p5, p2, p6}, Lg/dpq;-><init>(Ljava/lang/reflect/Type;Lg/eem;Lg/bke;)V

    iput-object p1, p0, Lg/apk;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lg/eam;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lg/apk;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/apk;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Type;Lg/eem;Lg/bke;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lg/apk;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lg/dpq;

    invoke-direct {v0, p1, p2, p3}, Lg/dpq;-><init>(Ljava/lang/reflect/Type;Lg/eem;Lg/bke;)V

    iput-object v0, p0, Lg/apk;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lg/fwg;Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lg/apk;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/apk;->c:Ljava/lang/Object;

    check-cast v0, Lg/eam;

    iget-object v0, v0, Lg/eam;->a:Lg/bke;

    invoke-virtual {v0, p1, p2}, Lg/bke;->a(Lg/fwg;Ljava/lang/Object;)V

    return-void

    :pswitch_0
    check-cast p2, Ljava/util/Map;

    iget-object v0, p0, Lg/apk;->c:Ljava/lang/Object;

    check-cast v0, Lg/dpq;

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lg/fwg;->af()Lg/fwg;

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lg/fwg;->p()V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lg/fwg;->o(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lg/dpq;->a(Lg/fwg;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lg/fwg;->ag()V

    :goto_1
    return-void

    :pswitch_1
    check-cast p2, Ljava/util/Collection;

    if-nez p2, :cond_2

    invoke-virtual {p1}, Lg/fwg;->af()Lg/fwg;

    goto :goto_3

    :cond_2
    invoke-virtual {p1}, Lg/fwg;->ae()V

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lg/apk;->c:Ljava/lang/Object;

    check-cast v1, Lg/dpq;

    invoke-virtual {v1, p1, v0}, Lg/dpq;->a(Lg/fwg;Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lg/fwg;->w()V

    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
