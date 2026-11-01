package com.google.android.gms.internal.ads;

import android.media.metrics.LogSessionId;
import g.bmu;
import j$.util.Objects;

/* loaded from: classes3.dex */
public final class zzoj {

    /* renamed from: a, reason: collision with root package name */
    public final bmu f8822a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f8823b;
    public final String zza;

    static {
        if (zzen.zza < 31) {
            new zzoj("");
        } else {
            int i = bmu.f11841a;
        }
    }

    public zzoj(LogSessionId logSessionId, String str) {
        this.f8822a = new bmu(logSessionId);
        this.zza = str;
        this.f8823b = new Object();
    }

    public zzoj(String str) {
        zzdb.zzf(zzen.zza < 31);
        this.zza = str;
        this.f8822a = null;
        this.f8823b = new Object();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzoj)) {
            return false;
        }
        zzoj zzojVar = (zzoj) obj;
        return Objects.equals(this.zza, zzojVar.zza) && Objects.equals(this.f8822a, zzojVar.f8822a) && Objects.equals(this.f8823b, zzojVar.f8823b);
    }

    public final int hashCode() {
        return Objects.hash(this.zza, this.f8822a, this.f8823b);
    }

    public final LogSessionId zza() {
        bmu bmuVar = this.f8822a;
        bmuVar.getClass();
        return bmuVar.f11842b;
    }
}
