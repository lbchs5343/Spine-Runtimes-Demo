.class public final synthetic Lcom/google/android/gms/internal/ads/zzvj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lg/fkd;


# direct methods
.method public synthetic constructor <init>(Lg/fkd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvj;->zza:Lg/fkd;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvj;->zza:Lg/fkd;

    sget-object v1, Lg/fkd;->a:Ljava/util/Map;

    invoke-virtual {v0}, Lg/fkd;->aq()V

    return-void
.end method
