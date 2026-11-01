package g;

import com.google.android.gms.internal.ads.zzexq;
import com.google.android.gms.internal.ads.zzexr;
import com.google.android.gms.internal.ads.zzeyo;
import com.google.android.gms.internal.ads.zzhgf;

/* loaded from: classes3.dex */
public final class det implements zzexq {

    /* renamed from: a, reason: collision with root package name */
    public final bxr f14073a;

    /* renamed from: b, reason: collision with root package name */
    public zzeyo f14074b;

    public /* synthetic */ det(bxr bxrVar) {
        this.f14073a = bxrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzexq
    public final /* bridge */ /* synthetic */ zzexq zza(zzeyo zzeyoVar) {
        this.f14074b = zzeyoVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzexq
    public final zzexr zzb() {
        zzhgf.zzc(this.f14074b, zzeyo.class);
        return new bby(this.f14073a, this.f14074b);
    }
}
