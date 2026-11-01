.class public final Lcom/google/android/gms/internal/ads/zzalo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaki;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzed;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzed;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzed;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzalo;->a:Lcom/google/android/gms/internal/ads/zzed;

    return-void
.end method


# virtual methods
.method public final zza([BIILcom/google/android/gms/internal/ads/zzakh;Lcom/google/android/gms/internal/ads/zzdg;)V
    .locals 9

    add-int/2addr p3, p2

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzalo;->a:Lcom/google/android/gms/internal/ads/zzed;

    invoke-virtual {p4, p1, p3}, Lcom/google/android/gms/internal/ads/zzed;->zzJ([BI)V

    invoke-virtual {p4, p2}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzed;->zzb()I

    move-result p1

    if-lez p1, :cond_8

    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzed;->zzb()I

    move-result p1

    const/4 p2, 0x0

    const/4 p3, 0x1

    const/16 v0, 0x8

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_1
    const-string v2, "Incomplete Mp4Webvtt Top Level box header found."

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/ads/zzdb;->zze(ZLjava/lang/Object;)V

    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result p1

    add-int/lit8 p1, p1, -0x8

    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v2

    const v3, 0x76747463

    if-ne v2, v3, :cond_7

    const/4 v2, 0x0

    move-object v3, v2

    move-object v4, v3

    :goto_2
    if-lez p1, :cond_4

    if-lt p1, v0, :cond_1

    const/4 v5, 0x1

    goto :goto_3

    :cond_1
    const/4 v5, 0x0

    :goto_3
    const-string v6, "Incomplete vtt cue box header found."

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzdb;->zze(ZLjava/lang/Object;)V

    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v5

    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v6

    add-int/lit8 p1, p1, -0x8

    add-int/lit8 v5, v5, -0x8

    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v7

    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzed;->zzd()I

    move-result v8

    invoke-static {v7, v8, v5}, Lcom/google/android/gms/internal/ads/zzen;->zzC([BII)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p4, v5}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    const v8, 0x73747467

    if-ne v6, v8, :cond_2

    new-instance v4, Lg/gpt;

    invoke-direct {v4}, Lg/gpt;-><init>()V

    invoke-static {v7, v4}, Lcom/google/android/gms/internal/ads/zzaly;->g(Ljava/lang/String;Lg/gpt;)V

    invoke-virtual {v4}, Lg/gpt;->l()Lcom/google/android/gms/internal/ads/zzcr;

    move-result-object v4

    goto :goto_4

    :cond_2
    const v8, 0x7061796c

    if-ne v6, v8, :cond_3

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {v2, v3, v6}, Lcom/google/android/gms/internal/ads/zzaly;->f(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/text/SpannedString;

    move-result-object v3

    :cond_3
    :goto_4
    sub-int/2addr p1, v5

    goto :goto_2

    :cond_4
    if-nez v3, :cond_5

    const-string v3, ""

    :cond_5
    if-eqz v4, :cond_6

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzcr;->zzl(Ljava/lang/CharSequence;)Lcom/google/android/gms/internal/ads/zzcr;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzcr;->zzp()Lcom/google/android/gms/internal/ads/zzct;

    move-result-object p1

    goto :goto_5

    :cond_6
    new-instance p1, Lg/gpt;

    invoke-direct {p1}, Lg/gpt;-><init>()V

    iput-object v3, p1, Lg/gpt;->j:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Lg/gpt;->l()Lcom/google/android/gms/internal/ads/zzcr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcr;->zzp()Lcom/google/android/gms/internal/ads/zzct;

    move-result-object p1

    :goto_5
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p4, p1}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    goto/16 :goto_0

    :cond_8
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaka;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzaka;-><init>(Ljava/util/List;JJ)V

    invoke-interface {p5, v0}, Lcom/google/android/gms/internal/ads/zzdg;->zza(Ljava/lang/Object;)V

    return-void
.end method
