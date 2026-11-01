.class public final synthetic Lg/apd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lg/dqu;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lg/dqu;Ljava/lang/String;I)V
    .locals 0

    iput p3, p0, Lg/apd;->a:I

    iput-object p1, p0, Lg/apd;->b:Lg/dqu;

    iput-object p2, p0, Lg/apd;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 6

    iget v0, p0, Lg/apd;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lg/auf;

    new-instance v1, Lg/apd;

    const/4 v2, 0x0

    iget-object v3, p0, Lg/apd;->b:Lg/dqu;

    iget-object v4, p0, Lg/apd;->c:Ljava/lang/String;

    invoke-direct {v1, v3, v4, v2}, Lg/apd;-><init>(Lg/dqu;Ljava/lang/String;I)V

    invoke-direct {v0, v1}, Lg/auf;-><init>(Lg/apd;)V

    return-object v0

    :pswitch_0
    new-instance v0, Lg/csn;

    new-instance v1, Lg/ffm;

    iget-object v2, p0, Lg/apd;->b:Lg/dqu;

    iget-object v3, p0, Lg/apd;->c:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lg/ffm;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v2, "internal.remoteConfig"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lg/csn;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lg/auf;

    invoke-direct {v2, v1}, Lg/auf;-><init>(Lg/ffm;)V

    iget-object v1, v0, Lg/fdk;->h:Ljava/util/HashMap;

    const-string v3, "getValue"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lg/apd;->b:Lg/dqu;

    iget-object v1, v0, Lg/af;->a:Lg/bsz;

    iget-object v1, v1, Lg/bsz;->l:Lg/ggz;

    invoke-static {v1}, Lg/bsz;->ag(Lg/aiq;)V

    iget-object v2, p0, Lg/apd;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lg/ggz;->ay(Ljava/lang/String;)Lg/cyo;

    move-result-object v1

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "platform"

    const-string v5, "android"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "package_name"

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v0, v0, Lg/cyg;->e:Lg/dsd;

    invoke-virtual {v0}, Lg/dsd;->n()V

    const-wide/32 v4, 0x11d28

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v2, "gmp_version"

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lg/cyo;->ai()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "app_version"

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v1}, Lg/cyo;->ao()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v2, "app_version_int"

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lg/cyo;->au()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "dynamite_version"

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
