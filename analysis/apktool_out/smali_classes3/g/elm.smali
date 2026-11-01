.class public final Lg/elm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcoq;
.implements Lcom/google/android/gms/internal/ads/zzdov;


# instance fields
.field public a:Lcom/google/android/gms/internal/ads/zzfbr;

.field public b:Lcom/google/android/gms/internal/ads/zzdcf;

.field public final synthetic c:I

.field public d:Lcom/google/android/gms/internal/ads/zzcvw;

.field public final e:Lg/bxr;

.field public f:Lcom/google/android/gms/internal/ads/zzfco;


# direct methods
.method public synthetic constructor <init>(Lg/bxr;I)V
    .locals 0

    iput p2, p0, Lg/elm;->c:I

    iput-object p1, p0, Lg/elm;->e:Lg/bxr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzfbr;)Lcom/google/android/gms/internal/ads/zzcvs;
    .locals 1

    iget v0, p0, Lg/elm;->c:I

    packed-switch v0, :pswitch_data_0

    iput-object p1, p0, Lg/elm;->a:Lcom/google/android/gms/internal/ads/zzfbr;

    return-object p0

    :pswitch_0
    iput-object p1, p0, Lg/elm;->a:Lcom/google/android/gms/internal/ads/zzfbr;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic zzb(Lcom/google/android/gms/internal/ads/zzfco;)Lcom/google/android/gms/internal/ads/zzcvs;
    .locals 1

    iget v0, p0, Lg/elm;->c:I

    packed-switch v0, :pswitch_data_0

    iput-object p1, p0, Lg/elm;->f:Lcom/google/android/gms/internal/ads/zzfco;

    return-object p0

    :pswitch_0
    iput-object p1, p0, Lg/elm;->f:Lcom/google/android/gms/internal/ads/zzfco;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzdcf;)Lcom/google/android/gms/internal/ads/zzcoq;
    .locals 0

    iput-object p1, p0, Lg/elm;->b:Lcom/google/android/gms/internal/ads/zzdcf;

    return-object p0
.end method

.method public bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzdcf;)Lcom/google/android/gms/internal/ads/zzdov;
    .locals 0

    iput-object p1, p0, Lg/elm;->b:Lcom/google/android/gms/internal/ads/zzdcf;

    return-object p0
.end method

.method public bridge synthetic zzd(Lcom/google/android/gms/internal/ads/zzcvw;)Lcom/google/android/gms/internal/ads/zzcoq;
    .locals 0

    iput-object p1, p0, Lg/elm;->d:Lcom/google/android/gms/internal/ads/zzcvw;

    return-object p0
.end method

.method public bridge synthetic zzd(Lcom/google/android/gms/internal/ads/zzcvw;)Lcom/google/android/gms/internal/ads/zzdov;
    .locals 0

    iput-object p1, p0, Lg/elm;->d:Lcom/google/android/gms/internal/ads/zzcvw;

    return-object p0
.end method

.method public zze()Lcom/google/android/gms/internal/ads/zzcor;
    .locals 13

    iget-object v0, p0, Lg/elm;->b:Lcom/google/android/gms/internal/ads/zzdcf;

    const-class v1, Lcom/google/android/gms/internal/ads/zzdcf;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzhgf;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lg/elm;->d:Lcom/google/android/gms/internal/ads/zzcvw;

    const-class v1, Lcom/google/android/gms/internal/ads/zzcvw;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzhgf;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v2, Lg/bhu;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzcta;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/zzcta;-><init>()V

    new-instance v5, Lcom/google/android/gms/internal/ads/zzfgu;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzfgu;-><init>()V

    new-instance v6, Lcom/google/android/gms/internal/ads/zzcuz;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzcuz;-><init>()V

    new-instance v7, Lcom/google/android/gms/internal/ads/zzdta;

    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/zzdta;-><init>()V

    iget-object v8, p0, Lg/elm;->b:Lcom/google/android/gms/internal/ads/zzdcf;

    iget-object v9, p0, Lg/elm;->d:Lcom/google/android/gms/internal/ads/zzcvw;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzejg;->zza()Lcom/google/android/gms/internal/ads/zzeje;

    move-result-object v10

    iget-object v11, p0, Lg/elm;->f:Lcom/google/android/gms/internal/ads/zzfco;

    iget-object v12, p0, Lg/elm;->a:Lcom/google/android/gms/internal/ads/zzfbr;

    iget-object v3, p0, Lg/elm;->e:Lg/bxr;

    invoke-direct/range {v2 .. v12}, Lg/bhu;-><init>(Lg/bxr;Lcom/google/android/gms/internal/ads/zzcta;Lcom/google/android/gms/internal/ads/zzfgu;Lcom/google/android/gms/internal/ads/zzcuz;Lcom/google/android/gms/internal/ads/zzdta;Lcom/google/android/gms/internal/ads/zzdcf;Lcom/google/android/gms/internal/ads/zzcvw;Lcom/google/android/gms/internal/ads/zzeje;Lcom/google/android/gms/internal/ads/zzfco;Lcom/google/android/gms/internal/ads/zzfbr;)V

    return-object v2
.end method

.method public zze()Lcom/google/android/gms/internal/ads/zzdow;
    .locals 13

    iget-object v0, p0, Lg/elm;->b:Lcom/google/android/gms/internal/ads/zzdcf;

    const-class v1, Lcom/google/android/gms/internal/ads/zzdcf;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzhgf;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lg/elm;->d:Lcom/google/android/gms/internal/ads/zzcvw;

    const-class v1, Lcom/google/android/gms/internal/ads/zzcvw;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzhgf;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/al;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzcta;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/zzcta;-><init>()V

    new-instance v5, Lcom/google/android/gms/internal/ads/zzfgu;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzfgu;-><init>()V

    new-instance v6, Lcom/google/android/gms/internal/ads/zzcuz;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzcuz;-><init>()V

    new-instance v7, Lcom/google/android/gms/internal/ads/zzdta;

    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/zzdta;-><init>()V

    iget-object v8, p0, Lg/elm;->b:Lcom/google/android/gms/internal/ads/zzdcf;

    iget-object v9, p0, Lg/elm;->d:Lcom/google/android/gms/internal/ads/zzcvw;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzejg;->zza()Lcom/google/android/gms/internal/ads/zzeje;

    move-result-object v10

    iget-object v11, p0, Lg/elm;->f:Lcom/google/android/gms/internal/ads/zzfco;

    iget-object v12, p0, Lg/elm;->a:Lcom/google/android/gms/internal/ads/zzfbr;

    iget-object v3, p0, Lg/elm;->e:Lg/bxr;

    invoke-direct/range {v2 .. v12}, Lcom/google/android/gms/internal/ads/al;-><init>(Lg/bxr;Lcom/google/android/gms/internal/ads/zzcta;Lcom/google/android/gms/internal/ads/zzfgu;Lcom/google/android/gms/internal/ads/zzcuz;Lcom/google/android/gms/internal/ads/zzdta;Lcom/google/android/gms/internal/ads/zzdcf;Lcom/google/android/gms/internal/ads/zzcvw;Lcom/google/android/gms/internal/ads/zzeje;Lcom/google/android/gms/internal/ads/zzfco;Lcom/google/android/gms/internal/ads/zzfbr;)V

    return-object v2
.end method

.method public final bridge synthetic zzh()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lg/elm;->c:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lg/elm;->zze()Lcom/google/android/gms/internal/ads/zzdow;

    move-result-object v0

    return-object v0

    :pswitch_0
    invoke-virtual {p0}, Lg/elm;->zze()Lcom/google/android/gms/internal/ads/zzcor;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
