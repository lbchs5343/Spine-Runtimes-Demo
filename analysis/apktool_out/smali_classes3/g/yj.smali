.class public final synthetic Lg/yj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgdp;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lg/exk;


# direct methods
.method public synthetic constructor <init>(Lg/exk;I)V
    .locals 0

    iput p2, p0, Lg/yj;->a:I

    iput-object p1, p0, Lg/yj;->b:Lg/exk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lg/dcy;
    .locals 4

    iget v0, p0, Lg/yj;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbli;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcao;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcao;-><init>()V

    new-instance v1, Lg/dzx;

    invoke-direct {v1, v0}, Lg/dzx;-><init>(Lcom/google/android/gms/internal/ads/zzcao;)V

    iget-object v2, p0, Lg/yj;->b:Lg/exk;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzblc;

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/ads/zzbli;->zze(Lcom/google/android/gms/internal/ads/zzblc;Lcom/google/android/gms/internal/ads/zzblh;)V

    return-object v0

    :pswitch_0
    check-cast p1, Lcom/google/android/gms/internal/ads/zzdyx;

    new-instance v0, Lg/ggs;

    new-instance v1, Landroid/util/JsonReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdyx;->zzb()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdyx;->zza()Lcom/google/android/gms/internal/ads/zzbvx;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lg/ggs;-><init>(Landroid/util/JsonReader;Lcom/google/android/gms/internal/ads/zzbvx;)V

    iget-object p1, p0, Lg/yj;->b:Lg/exk;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbvx;

    :try_start_0
    sget-object v1, Lg/cbv;->a:Lg/cbv;

    iget-object v1, v1, Lg/cbv;->d:Lg/mx;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbvx;->zza:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Lg/mx;->w(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lg/ggs;->e:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "{}"

    iput-object p1, v0, Lg/ggs;->e:Ljava/lang/String;

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgei;->zzh(Ljava/lang/Object;)Lg/dcy;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
