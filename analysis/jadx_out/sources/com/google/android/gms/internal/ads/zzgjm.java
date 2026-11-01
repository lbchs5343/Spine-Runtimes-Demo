package com.google.android.gms.internal.ads;

import g.tn;
import java.security.GeneralSecurityException;

/* loaded from: classes3.dex */
public final class zzgjm {

    /* renamed from: a, reason: collision with root package name */
    public zzggt f8391a;

    /* renamed from: b, reason: collision with root package name */
    public zzgjo f8392b;

    /* renamed from: c, reason: collision with root package name */
    public String f8393c;

    /* renamed from: d, reason: collision with root package name */
    public zzgjn f8394d;

    public final zzgjm zza(zzggt zzggtVar) {
        this.f8391a = zzggtVar;
        return this;
    }

    public final zzgjm zzb(zzgjn zzgjnVar) {
        this.f8394d = zzgjnVar;
        return this;
    }

    public final zzgjm zzc(String str) {
        this.f8393c = str;
        return this;
    }

    public final zzgjm zzd(zzgjo zzgjoVar) {
        this.f8392b = zzgjoVar;
        return this;
    }

    public final zzgjq zze() throws GeneralSecurityException {
        if (this.f8392b == null) {
            this.f8392b = zzgjo.zzb;
        }
        if (this.f8393c == null) {
            throw new GeneralSecurityException("kekUri must be set");
        }
        zzgjn zzgjnVar = this.f8394d;
        if (zzgjnVar == null) {
            throw new GeneralSecurityException("dekParsingStrategy must be set");
        }
        zzggt zzggtVar = this.f8391a;
        if (zzggtVar == null) {
            throw new GeneralSecurityException("dekParametersForNewKeys must be set");
        }
        if (zzggtVar.zza()) {
            throw new GeneralSecurityException("dekParametersForNewKeys must not have ID Requirements");
        }
        if ((zzgjnVar.equals(zzgjn.zza) && (zzggtVar instanceof zzgie)) || ((zzgjnVar.equals(zzgjn.zzc) && (zzggtVar instanceof zzgiv)) || ((zzgjnVar.equals(zzgjn.zzb) && (zzggtVar instanceof zzgkm)) || ((zzgjnVar.equals(zzgjn.zzd) && (zzggtVar instanceof zzghj)) || ((zzgjnVar.equals(zzgjn.zze) && (zzggtVar instanceof zzght)) || (zzgjnVar.equals(zzgjn.zzf) && (zzggtVar instanceof zzgip))))))) {
            return new zzgjq(this.f8392b, this.f8393c, this.f8394d, this.f8391a);
        }
        throw new GeneralSecurityException(tn.r("Cannot use parsing strategy ", this.f8394d.toString(), " when new keys are picked according to ", String.valueOf(this.f8391a), "."));
    }
}
