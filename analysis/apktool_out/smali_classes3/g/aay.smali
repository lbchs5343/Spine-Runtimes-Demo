.class public final Lg/aay;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lg/zs;

.field public final synthetic b:I

.field public final synthetic c:Lg/afh;


# direct methods
.method public synthetic constructor <init>(Lg/zs;Lg/afh;I)V
    .locals 0

    iput p3, p0, Lg/aay;->b:I

    iput-object p1, p0, Lg/aay;->a:Lg/zs;

    iput-object p2, p0, Lg/aay;->c:Lg/afh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget v0, p0, Lg/aay;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/aay;->a:Lg/zs;

    iget-object v0, v0, Lg/zs;->b:Lg/bsz;

    invoke-virtual {v0}, Lg/bsz;->ay()V

    iget-object v1, p0, Lg/aay;->c:Lg/afh;

    invoke-virtual {v0, v1}, Lg/bsz;->bh(Lg/afh;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lg/aay;->a:Lg/zs;

    iget-object v0, v0, Lg/zs;->b:Lg/bsz;

    invoke-virtual {v0}, Lg/bsz;->ay()V

    invoke-virtual {v0}, Lg/bsz;->zzaz()Lg/fth;

    move-result-object v1

    invoke-virtual {v1}, Lg/fth;->_e()V

    invoke-virtual {v0}, Lg/bsz;->bi()V

    iget-object v1, p0, Lg/aay;->c:Lg/afh;

    iget-object v2, v1, Lg/afh;->zza:Ljava/lang/String;

    invoke-static {v2}, Lg/ckd;->bf(Ljava/lang/String;)V

    iget-object v2, v1, Lg/afh;->zzv:Ljava/lang/String;

    invoke-static {v2}, Lg/rs;->d(Ljava/lang/String;)Lg/rs;

    move-result-object v2

    iget-object v3, v1, Lg/afh;->zza:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lg/bsz;->as(Ljava/lang/String;)Lg/rs;

    move-result-object v3

    invoke-virtual {v0}, Lg/bsz;->zzay()Lg/bgm;

    move-result-object v4

    iget-object v4, v4, Lg/bgm;->c:Lg/dvb;

    const-string v5, "Setting consent, package, consent"

    iget-object v6, v1, Lg/afh;->zza:Ljava/lang/String;

    invoke-virtual {v4, v6, v5, v2}, Lg/dvb;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v4, v1, Lg/afh;->zza:Ljava/lang/String;

    invoke-virtual {v0, v4, v2}, Lg/bsz;->at(Ljava/lang/String;Lg/rs;)V

    iget-object v4, v2, Lg/rs;->b:Ljava/util/EnumMap;

    invoke-virtual {v4}, Ljava/util/EnumMap;->keySet()Ljava/util/Set;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Lg/gxx;

    invoke-interface {v4, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lg/gxx;

    invoke-virtual {v2, v3, v4}, Lg/rs;->i(Lg/rs;[Lg/gxx;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Lg/bsz;->aw(Lg/afh;)V

    :cond_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lg/aay;->a:Lg/zs;

    iget-object v0, v0, Lg/zs;->b:Lg/bsz;

    invoke-virtual {v0}, Lg/bsz;->ay()V

    invoke-virtual {v0}, Lg/bsz;->zzaz()Lg/fth;

    move-result-object v1

    invoke-virtual {v1}, Lg/fth;->_e()V

    invoke-virtual {v0}, Lg/bsz;->bi()V

    iget-object v1, p0, Lg/aay;->c:Lg/afh;

    iget-object v2, v1, Lg/afh;->zza:Ljava/lang/String;

    invoke-static {v2}, Lg/ckd;->bf(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lg/bsz;->bp(Lg/afh;)Lg/cyo;

    return-void

    :pswitch_2
    iget-object v0, p0, Lg/aay;->a:Lg/zs;

    iget-object v0, v0, Lg/zs;->b:Lg/bsz;

    invoke-virtual {v0}, Lg/bsz;->ay()V

    iget-object v1, p0, Lg/aay;->c:Lg/afh;

    invoke-virtual {v0, v1}, Lg/bsz;->aw(Lg/afh;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
